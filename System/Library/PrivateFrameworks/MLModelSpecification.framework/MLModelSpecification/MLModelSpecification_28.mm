void static MLProgram.Value.immediateDictionary(keyType:valueType:contents:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_10_48();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  v13 = *v4;
  v14 = *v2;
  type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
  swift_allocBox();

  MLProgram.ValueType.DictionaryParameters.init(keyType:valueType:)();
  OUTLINED_FUNCTION_29_21();
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  v15 = OUTLINED_FUNCTION_18_43();
  v16 = OUTLINED_FUNCTION_46_12(v15);
  OUTLINED_FUNCTION_12_47(v16);
  OUTLINED_FUNCTION_57_4();
  v17 = OUTLINED_FUNCTION_66_6();
  OUTLINED_FUNCTION_20_27(v17);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v18 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v18, v19, v20);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v21);
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Value.hash(into:)()
{
  type metadata accessor for Proto_MILSpec_Value(0);
  OUTLINED_FUNCTION_25_29();
  sub_25771B894(v0, v1);

  return sub_2577435F4();
}

uint64_t MLProgram.Value.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_MILSpec_Value(0);
  OUTLINED_FUNCTION_25_29();
  sub_25771B894(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25771B348()
{
  sub_257743A14();
  type metadata accessor for Proto_MILSpec_Value(0);
  sub_25771B894(&qword_27F87B570, type metadata accessor for Proto_MILSpec_Value);
  sub_2577435F4();
  return sub_257743A64();
}

void MLProgram.Value.init(arrayLiteral:)()
{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_10_48();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E58, &qword_257744780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  *(inited + 32) = *(v2 + 16);
  *(inited + 40) = 0;
  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
  *v0 = v2;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  v14 = OUTLINED_FUNCTION_18_43();
  v15 = v14[5];
  v16 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_12_47(v16);
  v17 = v4 + v14[6];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v18 = v14[7];
  v19 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(v4 + v18, v20, v21, v19);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v22 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v22, v23, v24);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v25);
  OUTLINED_FUNCTION_434();
}

uint64_t type metadata accessor for MLProgram.Value()
{
  result = qword_27F881800;
  if (!qword_27F881800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25771B894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25771B904()
{
  result = type metadata accessor for Proto_MILSpec_Value(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25771B970()
{
  result = qword_27F881818;
  if (!qword_27F881818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881818);
  }

  return result;
}

uint64_t sub_25771B9C4()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

uint64_t sub_25771BA1C()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

uint64_t sub_25771BA74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

BOOL sub_25771BACC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_257743A14();
  sub_257743694();
  v9 = sub_257743A64();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_257743994() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  v19 = OUTLINED_FUNCTION_360();
  sub_25771BE70(v19, v20, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_25771BC14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881820, qword_257776EF8);
  result = sub_257743824();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_257740E08(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_257743A14();
    sub_257743694();
    result = sub_257743A64();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25771BE70(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_25771BC14(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_25771C130(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_257743A14();
      sub_257743694();
      result = sub_257743A64();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_257743994() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_25771BFD8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2577439A4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_25771BFD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881820, qword_257776EF8);
  v2 = *v0;
  v3 = sub_257743814();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25771C130(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881820, qword_257776EF8);
  result = sub_257743824();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_257743A14();

        sub_257743694();
        result = sub_257743A64();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_6_59(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701869940;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_48()
{

  return type metadata accessor for MLProgram.Value.Representation(0);
}

uint64_t OUTLINED_FUNCTION_11_46()
{

  return sub_25771BA74(v0, type metadata accessor for MLProgram.Value.ImmediateValue);
}

uint64_t OUTLINED_FUNCTION_12_47(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_13_33(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, a1);
  v4 = *(v2 + 24);
}

uint64_t OUTLINED_FUNCTION_18_43()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;

  return type metadata accessor for Proto_MILSpec_Value(0);
}

uint64_t OUTLINED_FUNCTION_20_27(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_29_21()
{

  return sub_25771B9C4();
}

uint64_t OUTLINED_FUNCTION_32_16()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_17(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v4);

  return MLProgram.Value.representation.setter(v3);
}

uint64_t OUTLINED_FUNCTION_41_16(uint64_t a1)
{
  v2 = *(a1 + 20);

  return type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
}

uint64_t OUTLINED_FUNCTION_42_16()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_46_12(uint64_t a1)
{
  v2 = *(a1 + 20);

  return type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
}

uint64_t OUTLINED_FUNCTION_50_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return MLProgram.Value.representation.setter(v4);
}

uint64_t OUTLINED_FUNCTION_51_7()
{

  return sub_25771B9C4();
}

void OUTLINED_FUNCTION_53_6()
{

  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
}

uint64_t OUTLINED_FUNCTION_54_7@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  *(v1 + 8) = a1;
  *(v1 + 16) = 0;

  return type metadata accessor for MLProgram.Value.ImmediateValue(0);
}

void OUTLINED_FUNCTION_55_8()
{

  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
}

void *OUTLINED_FUNCTION_56_6()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_57_4()
{
  v3 = v0 + *(v1 + 24);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_58_3()
{
  v2 = *(v0 + 28);

  return type metadata accessor for Proto_MILSpec_ValueType(0);
}

uint64_t OUTLINED_FUNCTION_65_6()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_66_6()
{
  v2 = *(v0 + 28);

  return type metadata accessor for Proto_MILSpec_ValueType(0);
}

void sub_25771C79C()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for SparseSupportVector.SparseNode(0);
  v2 = OUTLINED_FUNCTION_24(v1);
  v112 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  v8 = (&v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v98 = &v96 - v9;
  v10 = type metadata accessor for SparseSupportVector(0);
  v11 = OUTLINED_FUNCTION_24(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_6();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  v106 = xmmword_257743FF0;
  *(inited + 16) = xmmword_257743FF0;
  *(inited + 32) = 0x657372617053;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = xmmword_2577754B0;
  *(inited + 64) = 0;
  *(inited + 72) = 0x73726F74636556;
  *(inited + 80) = 0xE700000000000000;
  v17 = SparseSupportVectorCollection.vectors.getter();
  v18 = *(v17 + 16);
  if (v18)
  {
    v97 = inited;
    v19 = MEMORY[0x277D84F90];
    v118 = MEMORY[0x277D84F90];
    v20 = OUTLINED_FUNCTION_20_28();
    sub_257484040(v20, v21, v22);
    v104 = v118;
    v23 = *(v13 + 80);
    OUTLINED_FUNCTION_193();
    v96 = v17;
    v100 = v17 + v25;
    v99 = *(v13 + 72);
    v105 = v8;
    v102 = v0;
    v101 = v18;
    do
    {
      v103 = v24;
      OUTLINED_FUNCTION_0_106();
      sub_25771E9F0(v26, v0);
      v27 = *v0;
      v28 = *(*v0 + 16);
      if (v28)
      {
        v117 = v19;
        OUTLINED_FUNCTION_20_28();
        sub_2574853E8();
        v29 = v98;
        v30 = v117;
        v31 = type metadata accessor for Proto_SparseNode(0);
        OUTLINED_FUNCTION_24(v31);
        v33 = v27 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
        v35 = *(v34 + 72);
        do
        {
          OUTLINED_FUNCTION_6_60();
          sub_25771E9F0(v33, v29);
          v117 = v30;
          v37 = *(v30 + 16);
          v36 = *(v30 + 24);
          if (v37 >= v36 >> 1)
          {
            OUTLINED_FUNCTION_174(v36);
            OUTLINED_FUNCTION_32_17();
            sub_2574853E8();
            v29 = v98;
            v30 = v117;
          }

          *(v30 + 16) = v37 + 1;
          v38 = *(v112 + 80);
          OUTLINED_FUNCTION_193();
          v40 = *(v39 + 72);
          OUTLINED_FUNCTION_5_60();
          sub_25771EA4C(v29, v41);
          v33 += v35;
          --v28;
        }

        while (v28);
      }

      else
      {
        v30 = v19;
      }

      v42 = *(v30 + 16);
      if (v42)
      {
        v117 = v19;
        sub_257484040(0, v42, 0);
        v43 = v117;
        v44 = *(v112 + 80);
        OUTLINED_FUNCTION_193();
        v109 = v30 + v46;
        v108 = *(v47 + 72);
        v111 = v30;
        v110 = v42;
        do
        {
          v115 = v43;
          v114 = v45;
          OUTLINED_FUNCTION_11_47();
          sub_25771E9F0(v48, v8);
          v49 = swift_initStackObject();
          *(v49 + 16) = v106;
          *(v49 + 32) = 0x7865646E49;
          v50 = v49 + 32;
          *(v49 + 40) = 0xE500000000000000;
          v116 = *v8;
          *(v49 + 48) = sub_257743674();
          *(v49 + 56) = v51;
          *(v49 + 64) = 0;
          *(v49 + 72) = 0x65756C6156;
          *(v49 + 80) = 0xE500000000000000;
          v116 = *(v8 + 1);
          *(v49 + 88) = sub_257743674();
          *(v49 + 96) = v52;
          v113 = v49;
          *(v49 + 104) = 0;
          v53 = OUTLINED_FUNCTION_19_34();
          sub_257483754(v53, v54, v55);
          v56 = 0;
          v57 = 0;
          v58 = v116;
          do
          {
            v59 = v56;
            v60 = *(v50 + v57);
            v61 = *(v50 + v57 + 8);
            v116 = v58;
            v63 = *(v58 + 16);
            v62 = *(v58 + 24);

            if (v63 >= v62 >> 1)
            {
              sub_257483754((v62 > 1), v63 + 1, 1);
              v58 = v116;
            }

            *(v58 + 16) = v63 + 1;
            v64 = v58 + 16 * v63;
            *(v64 + 32) = v60;
            *(v64 + 40) = v61;
            v56 = 1;
            v57 = 40;
          }

          while ((v59 & 1) == 0);
          v65 = OUTLINED_FUNCTION_19_34();
          sub_257484040(v65, v66, v67);
          v68 = 0;
          v69 = 0;
          v70 = v116;
          do
          {
            v71 = v68;
            v73 = *(v50 + v69 + 16);
            v72 = *(v50 + v69 + 24);
            v74 = *(v50 + v69 + 32);
            sub_2576A8798(v73, v72, v74);
            v116 = v70;
            v76 = *(v70 + 16);
            v75 = *(v70 + 24);
            if (v76 >= v75 >> 1)
            {
              OUTLINED_FUNCTION_174(v75);
              OUTLINED_FUNCTION_32_17();
              sub_257484040(v78, v79, v80);
              v70 = v116;
            }

            *(v70 + 16) = v76 + 1;
            v77 = v70 + 24 * v76;
            *(v77 + 32) = v73;
            *(v77 + 40) = v72;
            *(v77 + 48) = v74;
            v68 = 1;
            v69 = 40;
          }

          while ((v71 & 1) == 0);

          OUTLINED_FUNCTION_14_32();
          v8 = v105;
          sub_25771EB2C();
          v43 = v115;
          v117 = v115;
          v82 = *(v115 + 16);
          v81 = *(v115 + 24);
          if (v82 >= v81 >> 1)
          {
            OUTLINED_FUNCTION_174(v81);
            OUTLINED_FUNCTION_32_17();
            sub_257484040(v84, v85, v86);
            v43 = v117;
          }

          v45 = v114 + 1;
          *(v43 + 16) = v82 + 1;
          v83 = v43 + 24 * v82;
          *(v83 + 32) = v58;
          *(v83 + 40) = v70;
          *(v83 + 48) = 2;
          v19 = MEMORY[0x277D84F90];
        }

        while (v45 != v110);
      }

      else
      {

        v43 = v19;
      }

      OUTLINED_FUNCTION_1_85();
      v0 = v102;
      sub_25771EB2C();
      v87 = v104;
      v118 = v104;
      v89 = *(v104 + 16);
      v88 = *(v104 + 24);
      v90 = v101;
      if (v89 >= v88 >> 1)
      {
        OUTLINED_FUNCTION_174(v88);
        OUTLINED_FUNCTION_32_17();
        sub_257484040(v92, v93, v94);
        v87 = v118;
      }

      v24 = v103 + 1;
      *(v87 + 16) = v89 + 1;
      v104 = v87;
      v91 = v87 + 24 * v89;
      *(v91 + 32) = v43;
      *(v91 + 40) = 0;
      *(v91 + 48) = 1;
    }

    while (v24 != v90);

    inited = v97;
    v95 = v104;
  }

  else
  {

    v95 = MEMORY[0x277D84F90];
  }

  *(inited + 88) = v95;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t SparseSupportVectorCollection.vectors.getter()
{
  v4 = type metadata accessor for SparseSupportVector(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  v10 = *v0;
  v11 = *(*v0 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    OUTLINED_FUNCTION_17_2();
    sub_257483674();
    v12 = v23;
    v13 = type metadata accessor for Proto_SparseVector(0);
    OUTLINED_FUNCTION_24(v13);
    v15 = v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v16 + 72);
    do
    {
      OUTLINED_FUNCTION_2_71();
      sub_25771E9F0(v15, v1);
      OUTLINED_FUNCTION_24_2();
      if (v19)
      {
        OUTLINED_FUNCTION_174(v18);
        sub_257483674();
        v12 = v23;
      }

      *(v12 + 16) = v2;
      v20 = *(v7 + 80);
      OUTLINED_FUNCTION_9_44();
      sub_25771EA4C(v1, v21 + *(v7 + 72) * v3);
      v15 += v17;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_25771D02C(uint64_t *a1)
{
  v1 = *a1;

  SparseSupportVectorCollection.vectors.setter();
}

void SparseSupportVectorCollection.vectors.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for SparseSupportVector(v2);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for Proto_SparseVector(0);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = *(v0 + 16);
  if (v21)
  {
    OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257483FE8();
    v22 = v32;
    v23 = *(v6 + 80);
    OUTLINED_FUNCTION_193();
    v25 = v0 + v24;
    v26 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_0_106();
      sub_25771E9F0(v25, v11);
      OUTLINED_FUNCTION_2_71();
      sub_25771E9F0(v11, v20);
      OUTLINED_FUNCTION_1_85();
      sub_25771EB2C();
      OUTLINED_FUNCTION_27_2();
      if (v28)
      {
        OUTLINED_FUNCTION_174(v27);
        sub_257483FE8();
        v22 = v32;
      }

      *(v22 + 16) = v6;
      v29 = *(v15 + 80);
      OUTLINED_FUNCTION_193();
      sub_25771EA4C(v20, v22 + v30 + *(v15 + 72) * v0);
      v25 += v26;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v31 = *v1;

  *v1 = v22;
  OUTLINED_FUNCTION_35();
}

uint64_t (*SparseSupportVectorCollection.vectors.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = SparseSupportVectorCollection.vectors.getter();
  return sub_25771D288;
}

uint64_t SparseSupportVectorCollection.startIndex.getter()
{
  SparseSupportVectorCollection.vectors.getter();

  return 0;
}

uint64_t SparseSupportVectorCollection.count.getter()
{
  v0 = *(SparseSupportVectorCollection.vectors.getter() + 16);

  return v0;
}

Swift::Int __swiftcall SparseSupportVectorCollection.index(after:)(Swift::Int after)
{
  SparseSupportVectorCollection.vectors.getter();

  result = after + 1;
  if (__OFADD__(after, 1))
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall SparseSupportVectorCollection.index(before:)(Swift::Int before)
{
  SparseSupportVectorCollection.vectors.getter();

  result = before - 1;
  if (__OFSUB__(before, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t SparseSupportVectorCollection.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = SparseSupportVectorCollection.vectors.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  if (*(result + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = type metadata accessor for SparseSupportVector(0);
  OUTLINED_FUNCTION_24(v6);
  v8 = v7;
  v10 = v9;
  v11 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12 = *(v10 + 72);
  OUTLINED_FUNCTION_0_106();
  sub_25771E9F0(v13, a2);
}

void sub_25771D470(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = type metadata accessor for SparseSupportVector(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  sub_25771E9F0(a1, v8);
  SparseSupportVectorCollection.subscript.setter(v8, v9);
}

void SparseSupportVectorCollection.subscript.setter(uint64_t a1, unint64_t a2)
{
  v4 = SparseSupportVectorCollection.vectors.getter();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_25767A120(v4);
  v4 = v8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v4 + 16) > a2)
  {
    v5 = type metadata accessor for SparseSupportVector(0);
    OUTLINED_FUNCTION_24(v5);
    sub_25771EAA8(a1, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v7 + 72) * a2);
    SparseSupportVectorCollection.vectors.setter();
    OUTLINED_FUNCTION_1_85();
    sub_25771EB2C();
    return;
  }

LABEL_7:
  __break(1u);
}

void (*SparseSupportVectorCollection.subscript.modify(unint64_t *a1, unint64_t a2))(unint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  v5 = type metadata accessor for SparseSupportVector(0);
  OUTLINED_FUNCTION_24(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  a1[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  a1[3] = v10;
  result = SparseSupportVectorCollection.vectors.getter();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 2) > a2)
  {
    v12 = *(v7 + 80);
    OUTLINED_FUNCTION_9_44();
    v13 = *(v7 + 72);
    OUTLINED_FUNCTION_0_106();
    sub_25771E9F0(v14, v10);

    return sub_25771D6E8;
  }

  __break(1u);
  return result;
}

void sub_25771D6E8(unint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    sub_25771E9F0(a1[3], v2);
    SparseSupportVectorCollection.subscript.setter(v2, v5);
    OUTLINED_FUNCTION_1_85();
    sub_25771EB2C();
  }

  else
  {
    SparseSupportVectorCollection.subscript.setter(a1[3], v5);
  }

  free(v3);

  free(v2);
}

void (*sub_25771D784(void *a1, uint64_t *a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v5[1] = v2;
  v6 = *(type metadata accessor for SparseSupportVector(0) - 8);
  v7 = *(v6 + 64);
  v5[2] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = *a2;
  v5[3] = v8;
  v5[4] = v9;
  v10 = SparseSupportVectorCollection.vectors.getter();
  v11 = j__OUTLINED_FUNCTION_289();
  sub_2576C2B8C(v9, v11 & 1, v10);
  if (v11)
  {
    sub_25771E9F0(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v8);
LABEL_3:

    return sub_25771D910;
  }

  result = sub_2576A87F4();
  if (v7 == 8)
  {
    *v5 = result;
    sub_25771E9F0(v5, v8);
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void sub_25771D910(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    sub_25771E9F0(*(*a1 + 24), v6);
    SparseSupportVectorCollection.subscript.setter(v6, v4);
    OUTLINED_FUNCTION_1_85();
    sub_25771EB2C();
  }

  else
  {
    SparseSupportVectorCollection.subscript.setter(*(*a1 + 24), v4);
  }

  free(v3);
  free(v6);

  free(v2);
}

void (*sub_25771D9C4(void *a1, uint64_t *a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v5 = *a2;
  v6 = a2[1];
  v4[4] = sub_25771F7A4();
  return sub_257679C40;
}

void sub_25771DA28(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_25771FD98(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

void sub_25771DA54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_25771FEF8();
}

uint64_t sub_25771DA60@<X0>(void *a1@<X8>)
{
  result = SparseSupportVectorCollection.startIndex.getter();
  *a1 = 0;
  return result;
}

uint64_t sub_25771DA88@<X0>(uint64_t *a1@<X8>)
{
  result = SparseSupportVectorCollection.count.getter();
  *a1 = result;
  return result;
}

void (*sub_25771DAB0(uint64_t a1, uint64_t *a2))(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_376();
  v5 = type metadata accessor for SparseSupportVector(v4);
  OUTLINED_FUNCTION_24(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v2[1] = v10;
  v11 = *a2;
  v12 = SparseSupportVectorCollection.vectors.getter();
  v13 = j__OUTLINED_FUNCTION_289();
  sub_2576C2B8C(v11, v13 & 1, v12);
  if (v13)
  {
    v14 = *(v7 + 80);
    OUTLINED_FUNCTION_9_44();
    v15 = *(v7 + 72);
    OUTLINED_FUNCTION_0_106();
    sub_25771E9F0(v16, v10);
LABEL_3:

    return sub_25771DBE0;
  }

  result = sub_2576A87F4();
  if (v9 == 8)
  {
    *v2 = result;
    OUTLINED_FUNCTION_0_106();
    sub_25771E9F0(v2, v10);
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void sub_25771DBE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_1_85();
  sub_25771EB2C();

  free(v1);
}

uint64_t sub_25771DC2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257720478();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_25771DC5C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = SparseSupportVectorCollection.index(after:)(v2);
  *v1 = result;
  return result;
}

void sub_25771DC84()
{
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_376();
  v4 = type metadata accessor for SparseSupportVector(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  v8 = *v0;
  v9 = *v1;
  v11 = j__OUTLINED_FUNCTION_32(*v1, v10);
  if (!v11)
  {
LABEL_10:
    if (__OFADD__(v8, 1))
    {
      goto LABEL_13;
    }

    *v0 = v8 + 1;
    OUTLINED_FUNCTION_35();
    return;
  }

  v12 = v11;
  v30 = sub_2576C1F20();
  sub_257695CB0(v12);
  if (v12 < 0)
  {
    goto LABEL_14;
  }

  v13 = j__OUTLINED_FUNCTION_289();
  v14 = 0;
  while ((v13 & 1) != 0)
  {
    v15 = type metadata accessor for Proto_SparseVector(0);
    OUTLINED_FUNCTION_24(v15);
    v17 = v16;
    v19 = v18;
    v20 = v9 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v21 = *(v19 + 72);
    OUTLINED_FUNCTION_2_71();
    sub_25771E9F0(v22, v2);
LABEL_8:
    ++v14;
    sub_2576C1F2C();
    v26 = *(v30 + 16);
    sub_2576C1FB8(v26);
    v27 = sub_2576C2020(v26, v2);
    nullsub_6(v27, v28);
    if (v12 == v14)
    {

      goto LABEL_10;
    }
  }

  sub_2576A8420();
  v23 = OUTLINED_FUNCTION_30();
  v24 = type metadata accessor for Proto_SparseVector(v23);
  OUTLINED_FUNCTION_13(v24);
  if (*(v25 + 64) == 8)
  {
    v29 = &v30;
    OUTLINED_FUNCTION_2_71();
    sub_25771E9F0(&v29, v2);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

Swift::Int sub_25771DE2C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = SparseSupportVectorCollection.index(before:)(v2);
  *v1 = result;
  return result;
}

void sub_25771DE54()
{
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_376();
  v4 = type metadata accessor for SparseSupportVector(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  v8 = *v0;
  v9 = *v1;
  v11 = j__OUTLINED_FUNCTION_32(*v1, v10);
  if (!v11)
  {
LABEL_10:
    if (__OFSUB__(v8, 1))
    {
      goto LABEL_13;
    }

    *v0 = v8 - 1;
    OUTLINED_FUNCTION_35();
    return;
  }

  v12 = v11;
  v30 = sub_2576C1F20();
  sub_257695CB0(v12);
  if (v12 < 0)
  {
    goto LABEL_14;
  }

  v13 = j__OUTLINED_FUNCTION_289();
  v14 = 0;
  while ((v13 & 1) != 0)
  {
    v15 = type metadata accessor for Proto_SparseVector(0);
    OUTLINED_FUNCTION_24(v15);
    v17 = v16;
    v19 = v18;
    v20 = v9 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v21 = *(v19 + 72);
    OUTLINED_FUNCTION_2_71();
    sub_25771E9F0(v22, v2);
LABEL_8:
    ++v14;
    sub_2576C1F2C();
    v26 = *(v30 + 16);
    sub_2576C1FB8(v26);
    v27 = sub_2576C2020(v26, v2);
    nullsub_6(v27, v28);
    if (v12 == v14)
    {

      goto LABEL_10;
    }
  }

  sub_2576A8420();
  v23 = OUTLINED_FUNCTION_30();
  v24 = type metadata accessor for Proto_SparseVector(v23);
  OUTLINED_FUNCTION_13(v24);
  if (*(v25 + 64) == 8)
  {
    v29 = &v30;
    OUTLINED_FUNCTION_2_71();
    sub_25771E9F0(&v29, v2);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_25771DFFC@<X0>(uint64_t a1@<X8>)
{
  sub_25771E9F0(v1, a1);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E10, &qword_257771B60) + 36);
  SparseSupportVectorCollection.vectors.getter();

  result = sub_25771EB2C();
  *(a1 + v3) = 0;
  return result;
}

uint64_t SparseSupportVector.nodes.getter()
{
  v3 = type metadata accessor for SparseSupportVector.SparseNode(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  v9 = *v0;
  v10 = *(*v0 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    OUTLINED_FUNCTION_17_2();
    sub_2574853E8();
    v11 = v23;
    v12 = type metadata accessor for Proto_SparseNode(0);
    OUTLINED_FUNCTION_24(v12);
    v14 = v9 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v16 = *(v15 + 72);
    do
    {
      OUTLINED_FUNCTION_6_60();
      sub_25771E9F0(v14, v1);
      OUTLINED_FUNCTION_24_2();
      if (v18)
      {
        OUTLINED_FUNCTION_174(v17);
        sub_2574853E8();
        v11 = v23;
      }

      *(v11 + 16) = v2;
      v19 = *(v6 + 80);
      OUTLINED_FUNCTION_9_44();
      v20 = *(v6 + 72);
      OUTLINED_FUNCTION_5_60();
      sub_25771EA4C(v1, v21);
      v14 += v16;
      --v10;
    }

    while (v10);
  }

  return v11;
}

void sub_25771E1FC(uint64_t *a1)
{
  v1 = *a1;

  SparseSupportVector.nodes.setter();
}

void SparseSupportVector.nodes.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for SparseSupportVector.SparseNode(v2);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for Proto_SparseNode(0);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = *(v0 + 16);
  if (v21)
  {
    OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257485440();
    v22 = v32;
    v23 = *(v6 + 80);
    OUTLINED_FUNCTION_193();
    v25 = v0 + v24;
    v26 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_11_47();
      sub_25771E9F0(v25, v11);
      OUTLINED_FUNCTION_6_60();
      sub_25771E9F0(v11, v20);
      OUTLINED_FUNCTION_14_32();
      sub_25771EB2C();
      OUTLINED_FUNCTION_27_2();
      if (v28)
      {
        OUTLINED_FUNCTION_174(v27);
        sub_257485440();
        v22 = v32;
      }

      *(v22 + 16) = v6;
      v29 = *(v15 + 80);
      OUTLINED_FUNCTION_193();
      sub_25771EA4C(v20, v22 + v30 + *(v15 + 72) * v0);
      v25 += v26;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v31 = *v1;

  *v1 = v22;
  OUTLINED_FUNCTION_35();
}

uint64_t (*SparseSupportVector.nodes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = SparseSupportVector.nodes.getter();
  return sub_25771E458;
}

uint64_t sub_25771E470(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_25771E50C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  *a4 = MEMORY[0x277D84F90];
  v6 = a4 + *(a2(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  return a3(a1);
}

BOOL sub_25771E59C(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  result = 0;
  if (a3(*a1, *a2))
  {
    v5 = *(a4(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_12_48();
    sub_25771EBC8(v6);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

void SparseSupportVector.init(dictionaryLiteral:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SparseSupportVector.SparseNode(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v26 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_20_28();
    sub_2574853E8();
    v15 = 0;
    v16 = (a1 + 40);
    while (v15 < *(a1 + 16))
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      *v12 = 0;
      *(v12 + 8) = 0;
      v19 = v12 + *(type metadata accessor for Proto_SparseNode(0) + 24);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (v17 < 0xFFFFFFFF80000000)
      {
        goto LABEL_13;
      }

      if (v17 > 0x7FFFFFFF)
      {
        goto LABEL_14;
      }

      *v12 = v17;
      *(v12 + 8) = v18;
      v21 = *(v26 + 16);
      v20 = *(v26 + 24);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_174(v20);
        sub_2574853E8();
      }

      ++v15;
      *(v26 + 16) = v21 + 1;
      v22 = *(v7 + 80);
      OUTLINED_FUNCTION_9_44();
      v23 = *(v7 + 72);
      OUTLINED_FUNCTION_5_60();
      sub_25771EA4C(v12, v24);
      v16 += 2;
      if (v13 == v15)
      {

        v14 = MEMORY[0x277D84F90];
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {

LABEL_11:
    *a2 = v14;
    v25 = a2 + *(type metadata accessor for Proto_SparseVector(0) + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    SparseSupportVector.nodes.setter();
  }
}

uint64_t SparseSupportVector.SparseNode.init(index:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = a2 + *(type metadata accessor for Proto_SparseNode(0) + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    *a2 = a1;
    *(a2 + 8) = a3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t SparseSupportVector.SparseNode.index.setter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *v1 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*SparseSupportVector.SparseNode.index.modify(void *a1))(uint64_t result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2576D5E3C;
}

double (*SparseSupportVector.SparseNode.value.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_2576C6434;
}

BOOL static SparseSupportVector.SparseNode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v2 = *(type metadata accessor for Proto_SparseNode(0) + 24);
    sub_2577431B4();
    OUTLINED_FUNCTION_12_48();
    sub_25771EBC8(v3);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_25771E9F0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_25771EA4C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_25771EAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SparseSupportVector(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_25771EB2C()
{
  v1 = OUTLINED_FUNCTION_376();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_25771EBC8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_23(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_25771EDF0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_23(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F881838, &unk_2577775F0);
    OUTLINED_FUNCTION_13_34();
    sub_25771EBC8(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_25771F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25771F1B0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_257484040(0, v2, 0);
    v3 = v13;
    v4 = (v1 + 32);
    do
    {
      v12 = *v4;
      v5 = sub_257743674();
      v7 = v6;
      v9 = *(v13 + 16);
      v8 = *(v13 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257484040((v8 > 1), v9 + 1, 1);
      }

      *(v13 + 16) = v9 + 1;
      v10 = v13 + 24 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      *(v10 + 48) = 0;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_25771F2B0(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  sub_2577215B8(v5, a4, a5, a1, a2, a3);
}

void (*sub_25771F448(void (**a1)(uint64_t **a1, char a2), uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  result = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = result;
  *(result + 4) = a3;
  *(result + 5) = v3;
  *(result + 3) = a2;
  if (a2 < 0 || (v8 = result, result = *v3, *(*v3 + 2) < a3))
  {
    __break(1u);
  }

  else
  {
    *(v8 + 1) = a3;
    *(v8 + 2) = result;
    *v8 = a2;

    return sub_25771F4E0;
  }

  return result;
}

void sub_25771F4E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  if (a2)
  {
    v9 = (*a1)[2];

    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    OUTLINED_FUNCTION_11_48();
  }

  v10 = v2[2];

  free(v2);
}

void (*sub_25771F560())()
{
  v3 = OUTLINED_FUNCTION_26_21();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_21_33(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881098, &qword_257777600);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  *(v2 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  *(v2 + 32) = v8;
  DenseSupportVectorCollection.vectors.getter();

  v9 = *(DenseSupportVectorCollection.vectors.getter() + 16);

  if (v1 < 0 || v9 < v0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v5 + 40);
    sub_257724438();
    *v8 = v1;
    v8[1] = v0;
    return sub_25771F658;
  }

  return result;
}

void (*sub_25771F680(void *a1, uint64_t a2, uint64_t a3))(unint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881118, &qword_257773490);
  v7[3] = v8;
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  v7[4] = __swift_coroFrameAllocStub(v10);
  result = __swift_coroFrameAllocStub(v10);
  v7[5] = result;
  v12 = *v3;
  v7[6] = *v3;
  if (a2 < 0 || *(v12 + 16) < a3)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    *(v7 + 14) = *(v8 + 40);
    sub_257724438();
    *v13 = a2;
    *(v13 + 1) = a3;
    return sub_25771F790;
  }

  return result;
}

void (*sub_25771F7A4())()
{
  v3 = OUTLINED_FUNCTION_26_21();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_21_33(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881838, &unk_2577775F0);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  *(v2 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  *(v2 + 32) = v8;
  SparseSupportVectorCollection.vectors.getter();

  v9 = *(SparseSupportVectorCollection.vectors.getter() + 16);

  if (v1 < 0 || v9 < v0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v5 + 40);
    sub_257724438();
    *v8 = v1;
    v8[1] = v0;
    return sub_25771F89C;
  }

  return result;
}

void sub_25771F8C4()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v7 = (*v0)[3];
  v8 = (*v0)[4];
  v9 = (*v0)[1];
  v10 = (*v0)[2];
  v11 = **v0;
  if (v12)
  {
    sub_2574AD5D8((*v0)[4], v7, v1, v2);
    v13 = OUTLINED_FUNCTION_311();
    v6(v13);
    sub_2574695E4(v7, v4, v3);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_311();
    v6(v14);
  }

  sub_2574695E4(v8, v4, v3);
  free(v8);
  free(v7);
  OUTLINED_FUNCTION_35();

  free(v15);
}

void (*sub_25771F994(void *a1, uint64_t a2, uint64_t a3))(unint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8818C0, &qword_257777348);
  v7[3] = v8;
  v9 = *(*(v8 - 8) + 64);
  v7[4] = __swift_coroFrameAllocStub(v9);
  result = __swift_coroFrameAllocStub(v9);
  v7[5] = result;
  v11 = *v3;
  v7[6] = *v3;
  if (a2 < 0 || *(v11 + 16) < a3)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    *(v7 + 14) = *(v8 + 40);
    sub_257724438();
    *v12 = a2;
    *(v12 + 1) = a3;
    return sub_25771FAAC;
  }

  return result;
}

void sub_25771FAC0(unint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = (*a1)[6];
  if (a2)
  {
    v8 = v6[1];
    sub_2574AD5D8(v6[5], v6[4], a3, a4);
    if (*(v7 + 16) >= v8)
    {
      v9 = v6[4];
      v11 = *v9;
      v10 = v9[1];
      v12 = v6[6];
      v13 = *v6;
      for (i = *v9; ; ++i)
      {
        v15 = v6[1];
        if (v13 == v15 || v10 == i)
        {
          break;
        }

        if (i >= v10)
        {
          __break(1u);
          goto LABEL_38;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v17 = *(v6[4] + *(v6[3] + 40));
        if (i >= *(v17 + 16))
        {
          goto LABEL_41;
        }

        v18 = *(v17 + 8 * i + 32);

        v19 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A0F0(v12);
          v19 = v21;
        }

        if (v13 >= *(v19 + 16))
        {
          goto LABEL_43;
        }

        v20 = v6[2];
        *(v19 + 8 * v13 + 32) = v18;

        *v20 = v19;
        ++v13;
        v12 = v19;
      }

      if (v13 != v15)
      {
        goto LABEL_47;
      }

      if (v10 == i)
      {
        v34 = v6[4];
        v35 = v6[5];
        sub_2574695E4(v34, a3, a4);
        goto LABEL_34;
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v22 = v6[1];
  if (*(v7 + 16) < v22)
  {
    goto LABEL_46;
  }

  v23 = v6[5];
  v25 = *v23;
  v24 = v23[1];
  v26 = *v6;
  for (j = *v23; v26 != v22 && v24 != j; ++j)
  {
    if (j >= v24)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    v29 = *(v6[5] + *(v6 + 14));
    if (j >= *(v29 + 16))
    {
      goto LABEL_42;
    }

    v30 = *(v29 + 8 * j + 32);

    v31 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25767A0F0(v7);
      v31 = v33;
    }

    if (v26 >= *(v31 + 16))
    {
      goto LABEL_44;
    }

    v32 = v6[2];
    *(v31 + 8 * v26 + 32) = v30;

    *v32 = v31;
    ++v26;
    v22 = v6[1];
    v7 = v31;
  }

  if (v26 != v22)
  {
    goto LABEL_48;
  }

  if (v24 != j)
  {
    goto LABEL_50;
  }

  v34 = v6[4];
  v35 = v6[5];
LABEL_34:
  sub_2574695E4(v35, a3, a4);
  free(v35);
  free(v34);

  free(v6);
}

unint64_t sub_25771FDF4(unint64_t result, unint64_t a2, void (*a3)(double))
{
  if (result == a2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(*v3 + 16);
  if (v4 <= result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 <= a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *v3 + 32;
  v7 = *(v6 + 8 * result);
  a3(*(v6 + 8 * a2));
  v8.n128_u64[0] = v7;

  return (a3)(a2, v8);
}

void sub_25771FF4C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v10 = OUTLINED_FUNCTION_24(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v27 - v19;
  if (v7 == v5)
  {
    goto LABEL_7;
  }

  v21 = v3(v18);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v21 + 16) <= v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v28 = v1;
  v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v23 = *(v12 + 72);
  sub_257724438();

  v25 = v3(v24);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(v25 + 16) > v5)
  {
    sub_257724438();

    v26 = v28;
    v28(v17, v7);
    v26(v20, v5);
LABEL_7:
    OUTLINED_FUNCTION_35();
    return;
  }

LABEL_11:
  __break(1u);
}

unint64_t sub_2577200E0(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v10 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *v3;
      v11 = *(*v3 + 16);
      if (v11 > result)
      {
        v4 = a2;
        if (v11 > a2)
        {
          v12 = v2 + 32 + 48 * result;
          v30 = *v12;
          v13 = *(v12 + 24);
          v14 = *(v12 + 40);
          v15 = v2 + 32 + 48 * a2;
          v34 = *v15;
          v8 = *(v15 + 8);
          v9 = *(v15 + 16);
          v5 = *(v15 + 24);
          v6 = *(v15 + 40);
          v32 = *(v12 + 32);
          v33 = *(v15 + 32);
          v28 = *(v12 + 16);
          v29 = *(v12 + 8);
          sub_257466F40(v29, v28, v13);
          v31 = v14;

          sub_257466F40(v8, v9, v5);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v3 = v2;
          v7 = v13;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        sub_25767A138(v2);
        v2 = v27;
        *v3 = v27;
LABEL_6:
        v17 = v2 + 32 + 48 * v10;
        v18 = *(v17 + 8);
        v19 = *(v17 + 16);
        v20 = *(v17 + 40);
        *v17 = v34;
        *(v17 + 8) = v8;
        *(v17 + 16) = v9;
        v21 = *(v17 + 24);
        *(v17 + 24) = v5;
        *(v17 + 32) = v33;
        *(v17 + 40) = v6;
        sub_257467018(v18, v19, v21);

        *v3 = v2;
        if (*(v2 + 16) <= v4)
        {
          __break(1u);
        }

        else
        {
          v22 = v2 + 32 + 48 * v4;
          v23 = *(v22 + 8);
          v24 = *(v22 + 16);
          v25 = *(v22 + 40);
          *v22 = v30;
          *(v22 + 8) = v29;
          *(v22 + 16) = v28;
          v26 = *(v22 + 24);
          *(v22 + 24) = v7;
          *(v22 + 32) = v32;
          *(v22 + 40) = v31;
          sub_257467018(v23, v24, v26);

          *v3 = v2;
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_2577202AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  if (result < 0 || *(*v5 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) + 40);
    result = sub_257724438();
    *a5 = v8;
    a5[1] = a2;
  }

  return result;
}

uint64_t sub_25772039C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  a3();

  v13 = *((a3)(v12) + 16);

  if (a1 < 0 || v13 < a2)
  {
    __break(1u);
  }

  else
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) + 40);
    result = sub_257724438();
    *a6 = a1;
    a6[1] = a2;
  }

  return result;
}

uint64_t sub_25772043C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0 || *(a3 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    a4[1] = a2;
    a4[2] = a3;
    *a4 = result;
  }

  return result;
}

uint64_t sub_257720490(void (*a1)(void))
{
  a1();

  v3 = *((a1)(v2) + 16);

  return 0;
}

unint64_t sub_2577204D8(uint64_t a1, uint64_t a2)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > *(*v2 + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_25772052C(uint64_t result, uint64_t a2, void (*a3)(void))
{
  v3 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    a3();

    v6 = *((a3)(v5) + 16);

    if (v3 <= v6)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_257720590(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_257720EC4(a1, a3);
  if (a2 < 1)
  {
    if (v6 <= 0 && v6 > a2)
    {
      return 0;
    }
  }

  else if ((v6 & 0x8000000000000000) == 0 && v6 < a2)
  {
    return 0;
  }

  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result > *(*v3 + 16))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_25772066C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v8 = a4(a1, a3);
  if (a2 < 1)
  {
    if (v8 <= 0 && v8 > a2)
    {
      return 0;
    }
  }

  else if ((v8 & 0x8000000000000000) == 0 && v8 < a2)
  {
    return 0;
  }

  return sub_25772052C(a1, a2, a5);
}

void sub_2577206E8()
{
  OUTLINED_FUNCTION_31();
  v45 = v3;
  v46 = v4;
  v5 = type metadata accessor for SparseSupportVector(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_45(v9, v43);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v44);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_30();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_33();
  if (!v2)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_65();
  sub_257483674();
  v21 = OUTLINED_FUNCTION_17_31();
  v22 = type metadata accessor for Proto_SparseVector(v21);
  OUTLINED_FUNCTION_24(v22);
  v0 = v1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v47 = *(v24 + 72);
  v25 = v0;
  do
  {
    OUTLINED_FUNCTION_311();
    sub_257724438();
    OUTLINED_FUNCTION_6_61();
    if (v27)
    {
      OUTLINED_FUNCTION_2_72(v26);
      sub_257483674();
    }

    OUTLINED_FUNCTION_8_46();
    OUTLINED_FUNCTION_16_33();
    OUTLINED_FUNCTION_0_107();
    sub_257724538();
    v25 += v47;
    --v2;
  }

  while (v2);

  v28 = *(v1 + 16);
  if (v28)
  {
    OUTLINED_FUNCTION_4_65();
    sub_257483674();
    v29 = v48;
    v30 = v46;
    do
    {
      sub_257724438();
      OUTLINED_FUNCTION_6_61();
      if (v27)
      {
        OUTLINED_FUNCTION_2_72(v31);
        sub_257483674();
        v29 = v48;
      }

      *(v29 + 16) = v1;
      OUTLINED_FUNCTION_0_107();
      sub_257724538();
      v0 += v47;
      --v28;
    }

    while (v28);
  }

  else
  {
LABEL_12:
    v30 = v46;
  }

  OUTLINED_FUNCTION_29_22();
  if (v0 < v30)
  {
    __break(1u);
  }

  else
  {
    v32 = *(v1 + 16);
    if (v32)
    {
      OUTLINED_FUNCTION_4_65();
      sub_257483674();
      v33 = OUTLINED_FUNCTION_17_31();
      v34 = type metadata accessor for Proto_SparseVector(v33);
      OUTLINED_FUNCTION_24(v34);
      v36 = v1 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
      v38 = *(v37 + 72);
      v0 = v36;
      do
      {
        sub_257724438();
        OUTLINED_FUNCTION_13_35();
        if (v27)
        {
          OUTLINED_FUNCTION_2_72(v39);
          sub_257483674();
        }

        OUTLINED_FUNCTION_8_46();
        OUTLINED_FUNCTION_23_30();
        OUTLINED_FUNCTION_0_107();
        sub_257724538();
        v0 += v38;
        --v32;
      }

      while (v32);

      v40 = *(v1 + 16);
      if (v40)
      {
        OUTLINED_FUNCTION_4_65();
        sub_257483674();
        v41 = v48;
        do
        {
          sub_257724438();
          OUTLINED_FUNCTION_18_44();
          if (v27)
          {
            OUTLINED_FUNCTION_12_49(v42);
            sub_257483674();
            v41 = v48;
          }

          *(v41 + 16) = v0;
          OUTLINED_FUNCTION_0_107();
          sub_257724538();
          v36 += v38;
          --v40;
        }

        while (v40);
      }
    }

    OUTLINED_FUNCTION_29_22();
    if (v0 >= v45)
    {
      OUTLINED_FUNCTION_35();
      return;
    }
  }

  __break(1u);
}

void sub_257720AD4()
{
  OUTLINED_FUNCTION_31();
  v45 = v3;
  v46 = v4;
  v5 = type metadata accessor for DenseSupportVector(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_45(v9, v43);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v44);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_30();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_33();
  if (!v2)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_65();
  sub_2574836CC();
  v21 = OUTLINED_FUNCTION_17_31();
  v22 = type metadata accessor for Proto_DenseVector(v21);
  OUTLINED_FUNCTION_24(v22);
  v0 = v1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v47 = *(v24 + 72);
  v25 = v0;
  do
  {
    OUTLINED_FUNCTION_311();
    sub_257724438();
    OUTLINED_FUNCTION_6_61();
    if (v27)
    {
      OUTLINED_FUNCTION_2_72(v26);
      sub_2574836CC();
    }

    OUTLINED_FUNCTION_8_46();
    OUTLINED_FUNCTION_16_33();
    OUTLINED_FUNCTION_1_86();
    sub_257724538();
    v25 += v47;
    --v2;
  }

  while (v2);

  v28 = *(v1 + 16);
  if (v28)
  {
    OUTLINED_FUNCTION_4_65();
    sub_2574836CC();
    v29 = v48;
    v30 = v46;
    do
    {
      sub_257724438();
      OUTLINED_FUNCTION_6_61();
      if (v27)
      {
        OUTLINED_FUNCTION_2_72(v31);
        sub_2574836CC();
        v29 = v48;
      }

      *(v29 + 16) = v1;
      OUTLINED_FUNCTION_1_86();
      sub_257724538();
      v0 += v47;
      --v28;
    }

    while (v28);
  }

  else
  {
LABEL_12:
    v30 = v46;
  }

  OUTLINED_FUNCTION_29_22();
  if (v0 < v30)
  {
    __break(1u);
  }

  else
  {
    v32 = *(v1 + 16);
    if (v32)
    {
      OUTLINED_FUNCTION_4_65();
      sub_2574836CC();
      v33 = OUTLINED_FUNCTION_17_31();
      v34 = type metadata accessor for Proto_DenseVector(v33);
      OUTLINED_FUNCTION_24(v34);
      v36 = v1 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
      v38 = *(v37 + 72);
      v0 = v36;
      do
      {
        sub_257724438();
        OUTLINED_FUNCTION_13_35();
        if (v27)
        {
          OUTLINED_FUNCTION_2_72(v39);
          sub_2574836CC();
        }

        OUTLINED_FUNCTION_8_46();
        OUTLINED_FUNCTION_23_30();
        OUTLINED_FUNCTION_1_86();
        sub_257724538();
        v0 += v38;
        --v32;
      }

      while (v32);

      v40 = *(v1 + 16);
      if (v40)
      {
        OUTLINED_FUNCTION_4_65();
        sub_2574836CC();
        v41 = v48;
        do
        {
          sub_257724438();
          OUTLINED_FUNCTION_18_44();
          if (v27)
          {
            OUTLINED_FUNCTION_12_49(v42);
            sub_2574836CC();
            v41 = v48;
          }

          *(v41 + 16) = v0;
          OUTLINED_FUNCTION_1_86();
          sub_257724538();
          v36 += v38;
          --v40;
        }

        while (v40);
      }
    }

    OUTLINED_FUNCTION_29_22();
    if (v0 >= v45)
    {
      OUTLINED_FUNCTION_35();
      return;
    }
  }

  __break(1u);
}

unint64_t sub_257720EC4(unint64_t result, unint64_t a2)
{
  v3 = *(*v2 + 16);
  if (v3 >= result && v3 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_257720EEC(uint64_t *a1)
{
  v1 = *a1;

  return SupportVectorCoefficients.values.setter(v2);
}

uint64_t SupportVectorCoefficients.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*SupportVectorCoefficients.values.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25749D854;
}

BOOL static SupportVectorCoefficients.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  if (sub_257479D04(*a1, *a2))
  {
    v2 = *(type metadata accessor for Proto_Coefficients(0) + 20);
    sub_2577431B4();
    sub_257722C24(&qword_27F879B68);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_25772104C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + *(type metadata accessor for Proto_Coefficients(0) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  return result;
}

Swift::Int __swiftcall SupportVectorCoefficients.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall SupportVectorCoefficients.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t SupportVectorCoefficients.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v1 + 16) > result)
  {
    v2 = *(*v1 + 8 * result + 32);
    return result;
  }

  __break(1u);
  return result;
}

void SupportVectorCoefficients.subscript.setter(unint64_t a1, double a2)
{
  v5 = *v2;

  v6 = v5;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_25767A0F0(v5);
  v6 = v7;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v6 + 16) > a1)
  {
    *(v6 + 8 * a1 + 32) = a2;

    *v2 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void (*SupportVectorCoefficients.subscript.modify(void (*result)(uint64_t a1), unint64_t a2))(uint64_t a1)
{
  *(result + 1) = a2;
  *(result + 2) = v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > a2)
  {
    *result = *(*v2 + 8 * a2 + 32);
    return sub_2577211FC;
  }

  __break(1u);
  return result;
}

void (*sub_257721234(uint64_t *a1, unint64_t *a2))(uint64_t a1)
{
  v4 = *a2;
  a1[1] = v2;
  a1[2] = v4;
  v5 = SupportVectorCoefficients.values.getter();
  v6 = j__OUTLINED_FUNCTION_289();
  sub_2576C2B8C(v4, v6 & 1, v5);
  if (v6)
  {
    v7 = *(v5 + 8 * v4 + 32);
  }

  else
  {
    v7 = sub_2576A852C(v4, v5);
    swift_unknownObjectRelease();
  }

  *a1 = v7;
  return sub_2577212D0;
}

void (*sub_257721308(void *a1, uint64_t *a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_25771F994(v4, *a2, a2[1]);
  return sub_257679C40;
}

unint64_t sub_25772136C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_25771FDB0(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2577213CC@<X0>(uint64_t *a1@<X8>)
{
  result = SupportVectorCoefficients.count.getter();
  *a1 = result;
  return result;
}

uint64_t (*sub_2577213F4(uint64_t *a1, unint64_t *a2))(void, void)
{
  v3 = *a2;
  v4 = SupportVectorCoefficients.values.getter();
  v5 = j__OUTLINED_FUNCTION_289();
  sub_2576C2B8C(v3, v5 & 1, v4);
  if (v5)
  {
    v6 = *(v4 + 8 * v3 + 32);
  }

  else
  {
    v6 = sub_2576A852C(v3, v4);
    swift_unknownObjectRelease();
  }

  *a1 = v6;
  return nullsub_6;
}

uint64_t sub_2577214D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257464990();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_2577214FC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = SupportVectorCoefficients.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_257721528@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = SupportVectorCoefficients.index(before:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_257721554@<X0>(uint64_t a1@<X8>)
{
  sub_257724538();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E00, &qword_257771B50);
  *(a1 + *(result + 36)) = 0;
  return result;
}

void sub_2577215B8(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  if ((a2 & 0x8000000000000000) != 0 || (v9 = a3, v8 = a1, v10 = *a1, *(*a1 + 16) < a3))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = a5;
  v6 = a2;
  v11 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_24:
    sub_25767A138(v10);
    v10 = v28;
  }

  v13 = 0;
  v36 = v10;
  *v8 = v10;
  v29 = v8;
  v30 = 48 * v6;
  v8 = a4;
  v31 = a6 + 48 * a4;
  while (v9 != v6 && v7 != v8)
  {
    v15 = v36;
    if (v8 >= v7)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    if (v8 >= *(a6 + 16))
    {
      goto LABEL_21;
    }

    v34 = *(v31 + v13 + 32);
    v16 = *(v31 + v13 + 40);
    v10 = *(v31 + v13 + 48);
    v17 = *(v31 + v13 + 56);
    v18 = *(v31 + v13 + 72);
    v35 = *(v31 + v13 + 64);
    sub_257466F40(v16, v10, v17);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25767A138(v36);
      v15 = v27;
    }

    if (v6 >= *(v15 + 16))
    {
      goto LABEL_22;
    }

    v36 = v15;
    v19 = v15 + v30 + v13;
    v20 = *(v19 + 40);
    v21 = *(v19 + 48);
    v22 = v6;
    v23 = v9;
    v24 = v7;
    v25 = *(v19 + 72);
    *(v19 + 32) = v34;
    *(v19 + 40) = v16;
    *(v19 + 48) = v10;
    v26 = *(v19 + 56);
    *(v19 + 56) = v17;
    *(v19 + 64) = v35;
    *(v19 + 72) = v18;
    sub_257467018(v20, v21, v26);
    v7 = v24;
    v9 = v23;

    v6 = v22 + 1;
    v8 = (v8 + 1);
    v13 += 48;
  }

  *v29 = v36;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v7 != v8)
  {
LABEL_26:
    __break(1u);
  }
}

void sub_257721798(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v78 = a4;
  v7 = type metadata accessor for Proto_DenseVector(0);
  v85 = *(v7 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v73[1] = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DenseSupportVector(0);
  v88 = *(v10 - 8);
  v11 = *(v88 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v73[0] = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v73 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v87 = v73 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v73[2] = v73 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v73 - v22;
  MEMORY[0x28223BE20](v21);
  v86 = v73 - v24;
  DenseSupportVectorCollection.vectors.getter();

  v82 = a1;
  v25 = *(DenseSupportVectorCollection.vectors.getter() + 16);

  if ((a2 & 0x8000000000000000) != 0 || v25 < a3)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v26 = a2;
  v27 = *v78;
  v28 = v78[1];
  v76 = a3;
  v77 = v27;
  v29 = v27;
  v79 = v16;
  v74 = v28;
  v75 = v23;
  while (v26 != a3 && v29 != v28)
  {
    if (v29 >= v28)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881098, &qword_257777600);
    v32 = *(v78 + *(v31 + 40));
    v33 = *(v32 + 16);
    v84 = v29;
    v81 = v32;
    if (v33)
    {
      v89 = MEMORY[0x277D84F90];
      sub_2574836CC();
      v34 = v89;
      v35 = v32 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v36 = *(v85 + 72);
      do
      {
        sub_257724438();
        v89 = v34;
        v37 = *(v34 + 16);
        if (v37 >= *(v34 + 24) >> 1)
        {
          sub_2574836CC();
          v34 = v89;
        }

        *(v34 + 16) = v37 + 1;
        v38 = v34 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
        v39 = *(v88 + 72);
        sub_257724538();
        v35 += v36;
        --v33;
      }

      while (v33);
      v29 = v84;
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

    if ((v77 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v29 >= *(v34 + 16))
    {
      goto LABEL_56;
    }

    v40 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v41 = *(v88 + 72);
    sub_257724438();

    v42 = *v82;
    v43 = *(*v82 + 16);
    v83 = v26;
    v80 = v42;
    if (v43)
    {
      v89 = MEMORY[0x277D84F90];
      sub_2574836CC();
      v44 = v89;
      v45 = v85;
      v46 = v42 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v47 = *(v85 + 72);
      do
      {
        sub_257724438();
        v89 = v44;
        v48 = *(v44 + 16);
        if (v48 >= *(v44 + 24) >> 1)
        {
          sub_2574836CC();
          v45 = v85;
          v44 = v89;
        }

        *(v44 + 16) = v48 + 1;
        sub_257724538();
        v46 += v47;
        --v43;
      }

      while (v43);
      v49 = v83;
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
      v45 = v85;
      v49 = v26;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25767A108(v44);
      v44 = v72;
    }

    if (v49 >= *(v44 + 16))
    {
      goto LABEL_57;
    }

    v50 = v44 + v40;
    sub_2577244E4();
    v51 = *(v44 + 16);
    if (v51)
    {
      v89 = MEMORY[0x277D84F90];
      sub_257483F90();
      v45 = v85;
      v52 = v89;
      do
      {
        v53 = v87;
        sub_257724438();
        sub_257724438();
        sub_25772448C(v53, type metadata accessor for DenseSupportVector);
        v89 = v52;
        v54 = *(v52 + 16);
        if (v54 >= *(v52 + 24) >> 1)
        {
          sub_257483F90();
          v45 = v85;
          v52 = v89;
        }

        *(v52 + 16) = v54 + 1;
        v55 = v52 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v56 = *(v45 + 72);
        sub_257724538();
        v50 += v41;
        --v51;
      }

      while (v51);

      v49 = v83;
    }

    else
    {

      v52 = MEMORY[0x277D84F90];
    }

    *v82 = v52;
    sub_25772448C(v86, type metadata accessor for DenseSupportVector);
    v57 = *(v52 + 16);
    if (v57)
    {
      v89 = MEMORY[0x277D84F90];
      v58 = v45;
      sub_2574836CC();
      v59 = v89;
      v60 = v52 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
      v61 = *(v58 + 72);
      do
      {
        sub_257724438();
        v89 = v59;
        v62 = *(v59 + 16);
        if (v62 >= *(v59 + 24) >> 1)
        {
          sub_2574836CC();
          v59 = v89;
        }

        *(v59 + 16) = v62 + 1;
        sub_257724538();
        v60 += v61;
        --v57;
      }

      while (v57);

      v45 = v85;
    }

    v63 = __OFADD__(v49, 1);
    v64 = v49 + 1;
    if (v63)
    {
      goto LABEL_58;
    }

    v65 = v81;
    v66 = *(v81 + 16);
    if (v66)
    {
      v89 = MEMORY[0x277D84F90];
      v67 = v45;
      sub_2574836CC();
      v68 = v89;
      v69 = v65 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v70 = *(v67 + 72);
      do
      {
        sub_257724438();
        v89 = v68;
        v71 = *(v68 + 16);
        if (v71 >= *(v68 + 24) >> 1)
        {
          sub_2574836CC();
          v68 = v89;
        }

        *(v68 + 16) = v71 + 1;
        sub_257724538();
        v69 += v70;
        --v66;
      }

      while (v66);
    }

    v26 = v64;
    v29 = v84 + 1;
    a3 = v76;
    v28 = v74;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_59;
    }
  }

  if (v26 != a3)
  {
    goto LABEL_61;
  }

  if (v29 != v28)
  {
    goto LABEL_62;
  }
}

void sub_257722018(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v78 = a4;
  v7 = type metadata accessor for Proto_SparseVector(0);
  v85 = *(v7 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v73[1] = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SparseSupportVector(0);
  v88 = *(v10 - 8);
  v11 = *(v88 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v73[0] = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v73 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v87 = v73 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v73[2] = v73 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v73 - v22;
  MEMORY[0x28223BE20](v21);
  v86 = v73 - v24;
  SparseSupportVectorCollection.vectors.getter();

  v82 = a1;
  v25 = *(SparseSupportVectorCollection.vectors.getter() + 16);

  if ((a2 & 0x8000000000000000) != 0 || v25 < a3)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v26 = a2;
  v27 = *v78;
  v28 = v78[1];
  v76 = a3;
  v77 = v27;
  v29 = v27;
  v79 = v16;
  v74 = v28;
  v75 = v23;
  while (v26 != a3 && v29 != v28)
  {
    if (v29 >= v28)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881838, &unk_2577775F0);
    v32 = *(v78 + *(v31 + 40));
    v33 = *(v32 + 16);
    v84 = v29;
    v81 = v32;
    if (v33)
    {
      v89 = MEMORY[0x277D84F90];
      sub_257483674();
      v34 = v89;
      v35 = v32 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v36 = *(v85 + 72);
      do
      {
        sub_257724438();
        v89 = v34;
        v37 = *(v34 + 16);
        if (v37 >= *(v34 + 24) >> 1)
        {
          sub_257483674();
          v34 = v89;
        }

        *(v34 + 16) = v37 + 1;
        v38 = v34 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
        v39 = *(v88 + 72);
        sub_257724538();
        v35 += v36;
        --v33;
      }

      while (v33);
      v29 = v84;
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

    if ((v77 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v29 >= *(v34 + 16))
    {
      goto LABEL_56;
    }

    v40 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v41 = *(v88 + 72);
    sub_257724438();

    v42 = *v82;
    v43 = *(*v82 + 16);
    v83 = v26;
    v80 = v42;
    if (v43)
    {
      v89 = MEMORY[0x277D84F90];
      sub_257483674();
      v44 = v89;
      v45 = v85;
      v46 = v42 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v47 = *(v85 + 72);
      do
      {
        sub_257724438();
        v89 = v44;
        v48 = *(v44 + 16);
        if (v48 >= *(v44 + 24) >> 1)
        {
          sub_257483674();
          v45 = v85;
          v44 = v89;
        }

        *(v44 + 16) = v48 + 1;
        sub_257724538();
        v46 += v47;
        --v43;
      }

      while (v43);
      v49 = v83;
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
      v45 = v85;
      v49 = v26;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25767A120(v44);
      v44 = v72;
    }

    if (v49 >= *(v44 + 16))
    {
      goto LABEL_57;
    }

    v50 = v44 + v40;
    sub_2577244E4();
    v51 = *(v44 + 16);
    if (v51)
    {
      v89 = MEMORY[0x277D84F90];
      sub_257483FE8();
      v45 = v85;
      v52 = v89;
      do
      {
        v53 = v87;
        sub_257724438();
        sub_257724438();
        sub_25772448C(v53, type metadata accessor for SparseSupportVector);
        v89 = v52;
        v54 = *(v52 + 16);
        if (v54 >= *(v52 + 24) >> 1)
        {
          sub_257483FE8();
          v45 = v85;
          v52 = v89;
        }

        *(v52 + 16) = v54 + 1;
        v55 = v52 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v56 = *(v45 + 72);
        sub_257724538();
        v50 += v41;
        --v51;
      }

      while (v51);

      v49 = v83;
    }

    else
    {

      v52 = MEMORY[0x277D84F90];
    }

    *v82 = v52;
    sub_25772448C(v86, type metadata accessor for SparseSupportVector);
    v57 = *(v52 + 16);
    if (v57)
    {
      v89 = MEMORY[0x277D84F90];
      v58 = v45;
      sub_257483674();
      v59 = v89;
      v60 = v52 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
      v61 = *(v58 + 72);
      do
      {
        sub_257724438();
        v89 = v59;
        v62 = *(v59 + 16);
        if (v62 >= *(v59 + 24) >> 1)
        {
          sub_257483674();
          v59 = v89;
        }

        *(v59 + 16) = v62 + 1;
        sub_257724538();
        v60 += v61;
        --v57;
      }

      while (v57);

      v45 = v85;
    }

    v63 = __OFADD__(v49, 1);
    v64 = v49 + 1;
    if (v63)
    {
      goto LABEL_58;
    }

    v65 = v81;
    v66 = *(v81 + 16);
    if (v66)
    {
      v89 = MEMORY[0x277D84F90];
      v67 = v45;
      sub_257483674();
      v68 = v89;
      v69 = v65 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v70 = *(v67 + 72);
      do
      {
        sub_257724438();
        v89 = v68;
        v71 = *(v68 + 16);
        if (v71 >= *(v68 + 24) >> 1)
        {
          sub_257483674();
          v68 = v89;
        }

        *(v68 + 16) = v71 + 1;
        sub_257724538();
        v69 += v70;
        --v66;
      }

      while (v66);
    }

    v26 = v64;
    v29 = v84 + 1;
    a3 = v76;
    v28 = v74;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_59;
    }
  }

  if (v26 != a3)
  {
    goto LABEL_61;
  }

  if (v29 != v28)
  {
    goto LABEL_62;
  }
}

void sub_257722898(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if ((a2 & 0x8000000000000000) != 0 || (v8 = *a1, *(*a1 + 16) < a3))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v11 = a2;
  v12 = *a4;
  v13 = a4[1];
  for (i = *a4; a3 != v11 && v13 != i; ++i)
  {
    if (i >= v13)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    v17 = *(a4 + *(v16 + 40));
    if (i >= *(v17 + 16))
    {
      goto LABEL_20;
    }

    v18 = *(v17 + 8 * i + 32);

    v19 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25767A0F0(v8);
      v19 = v20;
    }

    if (v11 >= *(v19 + 16))
    {
      goto LABEL_21;
    }

    *(v19 + 8 * v11 + 32) = v18;

    *a1 = v19;
    ++v11;
    v8 = v19;
  }

  if (a3 != v11)
  {
    goto LABEL_23;
  }

  if (v13 != i)
  {
    goto LABEL_24;
  }
}

uint64_t type metadata accessor for SupportVectorCoefficients()
{
  result = qword_27F881908;
  if (!qword_27F881908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_257722B54(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_23(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8818C0, &qword_257777348);
    OUTLINED_FUNCTION_7_49();
    sub_257722C24(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_257722C24(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_23(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_257722D68()
{
  result = type metadata accessor for Proto_Coefficients(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_257722DD4(unint64_t result, uint64_t a2)
{
  v33 = a2;
  v4 = result;
  v5 = 0;
  v6 = *(*v2 + 16);
  v7 = 72;
LABEL_2:
  v8 = v7 + 48 * v5;
  for (i = v5; ; ++i)
  {
    if (i >= v6)
    {
      return i;
    }

    if (v5 < 0)
    {
      break;
    }

    v10 = *v26;
    if (i >= *(*v26 + 16))
    {
      goto LABEL_17;
    }

    v11 = *(v10 + v8 - 32);
    v12 = *(v10 + v8 - 24);
    v13 = *(v10 + v8 - 8);
    v14 = *(v10 + v8);
    v15 = *(v10 + v8 - 16);
    v27[0] = *(v10 + v8 - 40);
    v28 = v11;
    v29 = v12;
    v30 = v15;
    v31 = v13;
    v32 = v14;
    sub_257466F40(v11, v12, v15);

    v16 = v4(v27);
    sub_257467018(v28, v29, v30);

    if (v3)
    {
      return i;
    }

    if (v16)
    {
      v17 = v10 + 48 * v6;
      while (1)
      {
        v18 = v6 - 1;
        if (i >= v6 - 1)
        {
          return i;
        }

        if (v6 > *(v10 + 16))
        {
          goto LABEL_18;
        }

        v19 = *(v17 - 8);
        v20 = *v17;
        v21 = *(v17 + 16);
        v22 = *(v17 + 24);
        v23 = *(v17 + 8);
        v27[0] = *(v17 - 16);
        v28 = v19;
        v29 = v20;
        v30 = v23;
        v31 = v21;
        v32 = v22;
        sub_257466F40(v19, v20, v23);

        v24 = v4(v27);
        sub_257467018(v28, v29, v30);

        v17 -= 48;
        --v6;
        if ((v24 & 1) == 0)
        {
          result = sub_2577200E0(i, v18);
          v5 = i + 1;
          v6 = v18;
          v7 = v25;
          goto LABEL_2;
        }
      }
    }

    v8 += 48;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_257722F9C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v4 = v3;
  v78 = a1;
  v79 = a2;
  v5 = type metadata accessor for DenseSupportVector(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v72[0] = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v75 = v72 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v77 = v72 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v76 = v72 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v72 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v72 - v20;
  MEMORY[0x28223BE20](v19);
  v73 = v72 - v22;
  DenseSupportVectorCollection.vectors.getter();

  v74 = v2;
  v23 = *(DenseSupportVectorCollection.vectors.getter() + 16);

  v24 = 0;
  if (v23)
  {
    v80 = v6;
    v72[1] = v18;
    v72[2] = v21;
    while (1)
    {
      v84 = v23;
      v25 = *v74;
      v26 = *(*v74 + 16);
      v81 = v24;
      v82 = v25;
      if (v26)
      {
        v83 = v4;
        v86 = MEMORY[0x277D84F90];
        sub_2574836CC();
        v27 = v86;
        v28 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v29 = v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
        v30 = *(v28 + 72);
        do
        {
          sub_257724438();
          v86 = v27;
          v31 = *(v27 + 16);
          if (v31 >= *(v27 + 24) >> 1)
          {
            sub_2574836CC();
            v27 = v86;
          }

          *(v27 + 16) = v31 + 1;
          v32 = v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
          v33 = *(v6 + 72);
          sub_257724538();
          v29 += v30;
          --v26;
        }

        while (v26);
        v4 = v83;
        v24 = v81;
      }

      else
      {
        v27 = MEMORY[0x277D84F90];
      }

      v23 = v84;
      if (v24 < 0)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }

      if (v24 >= *(v27 + 16))
      {
        goto LABEL_55;
      }

      v34 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v35 = *(v6 + 72);
      v36 = v73;
      sub_257724438();

      v37 = v78(v36);
      if (v4)
      {
        v58 = v36;
LABEL_51:
        sub_25772448C(v58, type metadata accessor for DenseSupportVector);
        return;
      }

      v38 = v37;
      sub_25772448C(v36, type metadata accessor for DenseSupportVector);
      v39 = *(v82 + 16);
      v85 = v39;
      if (v38)
      {
        break;
      }

      if (v39)
      {
        v86 = MEMORY[0x277D84F90];
        sub_2574836CC();
        v66 = v86;
        v67 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v68 = v82 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
        v69 = *(v67 + 72);
        do
        {
          sub_257724438();
          v86 = v66;
          v70 = *(v66 + 16);
          if (v70 >= *(v66 + 24) >> 1)
          {
            sub_2574836CC();
            v66 = v86;
          }

          *(v66 + 16) = v70 + 1;
          sub_257724538();
          v68 += v69;
          --v85;
        }

        while (v85);

        v6 = v80;
        v24 = v81;
        v23 = v84;
      }

      if (__OFADD__(v24++, 1))
      {
        goto LABEL_56;
      }

LABEL_47:
      if (v24 >= v23)
      {
        return;
      }
    }

    while (1)
    {
      v40 = v85;
      v83 = 0;
      if (v85)
      {
        v84 = v23;
        v86 = MEMORY[0x277D84F90];
        sub_2574836CC();
        v41 = v86;
        v42 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v43 = v82 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v44 = *(v42 + 72);
        v45 = v40;
        do
        {
          sub_257724438();
          v86 = v41;
          v46 = *(v41 + 16);
          if (v46 >= *(v41 + 24) >> 1)
          {
            sub_2574836CC();
            v41 = v86;
          }

          *(v41 + 16) = v46 + 1;
          sub_257724538();
          v43 += v44;
          --v45;
        }

        while (v45);

        v6 = v80;
        v24 = v81;
        v23 = v84;
      }

      v47 = v82;
      if (v24 >= --v23)
      {
        break;
      }

      v48 = *(v82 + 16);
      if (v48)
      {
        v84 = v23;
        v86 = MEMORY[0x277D84F90];
        sub_2574836CC();
        v49 = v86;
        v50 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v51 = v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
        v52 = *(v50 + 72);
        do
        {
          sub_257724438();
          v86 = v49;
          v53 = *(v49 + 16);
          if (v53 >= *(v49 + 24) >> 1)
          {
            sub_2574836CC();
            v49 = v86;
          }

          *(v49 + 16) = v53 + 1;
          sub_257724538();
          v51 += v52;
          --v48;
        }

        while (v48);
        v6 = v80;
        v24 = v81;
        v54 = v77;
        v23 = v84;
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
        v54 = v77;
      }

      v55 = v83;
      if (v23 >= *(v49 + 16))
      {
        __break(1u);
        goto LABEL_54;
      }

      sub_257724438();

      v56 = v55;
      v57 = v78(v54);
      v58 = v54;
      if (v56)
      {
        goto LABEL_51;
      }

      sub_25772448C(v54, type metadata accessor for DenseSupportVector);
      if ((v57 & 1) == 0)
      {
        v83 = 0;
        v59 = v74;
        sub_25771FF4C();
        v60 = *v59;
        v61 = *(*v59 + 16);
        if (v61)
        {
          v84 = v23;
          v86 = MEMORY[0x277D84F90];
          sub_2574836CC();
          v62 = v86;
          v63 = *(type metadata accessor for Proto_DenseVector(0) - 8);
          v64 = v60 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
          v85 = *(v63 + 72);
          do
          {
            sub_257724438();
            v86 = v62;
            v65 = *(v62 + 16);
            if (v65 >= *(v62 + 24) >> 1)
            {
              sub_2574836CC();
              v62 = v86;
            }

            *(v62 + 16) = v65 + 1;
            sub_257724538();
            v64 += v85;
            --v61;
          }

          while (v61);

          v6 = v80;
          v24 = v81;
          v23 = v84;
        }

        ++v24;
        v4 = v83;
        goto LABEL_47;
      }
    }
  }
}

void sub_257723958(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v4 = v3;
  v78 = a1;
  v79 = a2;
  v5 = type metadata accessor for SparseSupportVector(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v72[0] = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v75 = v72 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v77 = v72 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v76 = v72 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v72 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v72 - v20;
  MEMORY[0x28223BE20](v19);
  v73 = v72 - v22;
  SparseSupportVectorCollection.vectors.getter();

  v74 = v2;
  v23 = *(SparseSupportVectorCollection.vectors.getter() + 16);

  v24 = 0;
  if (v23)
  {
    v80 = v6;
    v72[1] = v18;
    v72[2] = v21;
    while (1)
    {
      v84 = v23;
      v25 = *v74;
      v26 = *(*v74 + 16);
      v81 = v24;
      v82 = v25;
      if (v26)
      {
        v83 = v4;
        v86 = MEMORY[0x277D84F90];
        sub_257483674();
        v27 = v86;
        v28 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v29 = v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
        v30 = *(v28 + 72);
        do
        {
          sub_257724438();
          v86 = v27;
          v31 = *(v27 + 16);
          if (v31 >= *(v27 + 24) >> 1)
          {
            sub_257483674();
            v27 = v86;
          }

          *(v27 + 16) = v31 + 1;
          v32 = v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
          v33 = *(v6 + 72);
          sub_257724538();
          v29 += v30;
          --v26;
        }

        while (v26);
        v4 = v83;
        v24 = v81;
      }

      else
      {
        v27 = MEMORY[0x277D84F90];
      }

      v23 = v84;
      if (v24 < 0)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }

      if (v24 >= *(v27 + 16))
      {
        goto LABEL_55;
      }

      v34 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v35 = *(v6 + 72);
      v36 = v73;
      sub_257724438();

      v37 = v78(v36);
      if (v4)
      {
        v58 = v36;
LABEL_51:
        sub_25772448C(v58, type metadata accessor for SparseSupportVector);
        return;
      }

      v38 = v37;
      sub_25772448C(v36, type metadata accessor for SparseSupportVector);
      v39 = *(v82 + 16);
      v85 = v39;
      if (v38)
      {
        break;
      }

      if (v39)
      {
        v86 = MEMORY[0x277D84F90];
        sub_257483674();
        v66 = v86;
        v67 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v68 = v82 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
        v69 = *(v67 + 72);
        do
        {
          sub_257724438();
          v86 = v66;
          v70 = *(v66 + 16);
          if (v70 >= *(v66 + 24) >> 1)
          {
            sub_257483674();
            v66 = v86;
          }

          *(v66 + 16) = v70 + 1;
          sub_257724538();
          v68 += v69;
          --v85;
        }

        while (v85);

        v6 = v80;
        v24 = v81;
        v23 = v84;
      }

      if (__OFADD__(v24++, 1))
      {
        goto LABEL_56;
      }

LABEL_47:
      if (v24 >= v23)
      {
        return;
      }
    }

    while (1)
    {
      v40 = v85;
      v83 = 0;
      if (v85)
      {
        v84 = v23;
        v86 = MEMORY[0x277D84F90];
        sub_257483674();
        v41 = v86;
        v42 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v43 = v82 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v44 = *(v42 + 72);
        v45 = v40;
        do
        {
          sub_257724438();
          v86 = v41;
          v46 = *(v41 + 16);
          if (v46 >= *(v41 + 24) >> 1)
          {
            sub_257483674();
            v41 = v86;
          }

          *(v41 + 16) = v46 + 1;
          sub_257724538();
          v43 += v44;
          --v45;
        }

        while (v45);

        v6 = v80;
        v24 = v81;
        v23 = v84;
      }

      v47 = v82;
      if (v24 >= --v23)
      {
        break;
      }

      v48 = *(v82 + 16);
      if (v48)
      {
        v84 = v23;
        v86 = MEMORY[0x277D84F90];
        sub_257483674();
        v49 = v86;
        v50 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v51 = v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
        v52 = *(v50 + 72);
        do
        {
          sub_257724438();
          v86 = v49;
          v53 = *(v49 + 16);
          if (v53 >= *(v49 + 24) >> 1)
          {
            sub_257483674();
            v49 = v86;
          }

          *(v49 + 16) = v53 + 1;
          sub_257724538();
          v51 += v52;
          --v48;
        }

        while (v48);
        v6 = v80;
        v24 = v81;
        v54 = v77;
        v23 = v84;
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
        v54 = v77;
      }

      v55 = v83;
      if (v23 >= *(v49 + 16))
      {
        __break(1u);
        goto LABEL_54;
      }

      sub_257724438();

      v56 = v55;
      v57 = v78(v54);
      v58 = v54;
      if (v56)
      {
        goto LABEL_51;
      }

      sub_25772448C(v54, type metadata accessor for SparseSupportVector);
      if ((v57 & 1) == 0)
      {
        v83 = 0;
        v59 = v74;
        sub_25771FF4C();
        v60 = *v59;
        v61 = *(*v59 + 16);
        if (v61)
        {
          v84 = v23;
          v86 = MEMORY[0x277D84F90];
          sub_257483674();
          v62 = v86;
          v63 = *(type metadata accessor for Proto_SparseVector(0) - 8);
          v64 = v60 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
          v85 = *(v63 + 72);
          do
          {
            sub_257724438();
            v86 = v62;
            v65 = *(v62 + 16);
            if (v65 >= *(v62 + 24) >> 1)
            {
              sub_257483674();
              v62 = v86;
            }

            *(v62 + 16) = v65 + 1;
            sub_257724538();
            v64 += v85;
            --v61;
          }

          while (v61);

          v6 = v80;
          v24 = v81;
          v23 = v84;
        }

        ++v24;
        v4 = v83;
        goto LABEL_47;
      }
    }
  }
}

unint64_t sub_257724314(unint64_t result, uint64_t a2, void (*a3)(double))
{
  v6 = result;
  v7 = 0;
  v8 = *(*v3 + 16);
LABEL_2:
  for (i = v7; ; ++i)
  {
    if (i >= v8)
    {
      return i;
    }

    if (v7 < 0)
    {
      break;
    }

    v10 = *v15;
    if (i >= *(*v15 + 16))
    {
      goto LABEL_17;
    }

    v11 = *(v10 + 8 * i + 32);
    OUTLINED_FUNCTION_19_35();
    result = v6();
    if (v4)
    {
      return i;
    }

    if (result)
    {
      v14 = a3;
      while (1)
      {
        v12 = v8 - 1;
        if (i >= v8 - 1)
        {
          return i;
        }

        if (v8 > *(v10 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(v10 + 24 + 8 * v8);
        OUTLINED_FUNCTION_19_35();
        result = v6();
        --v8;
        if ((result & 1) == 0)
        {
          result = sub_25771FDF4(i, v12, v14);
          v7 = i + 1;
          v8 = v12;
          a3 = v14;
          goto LABEL_2;
        }
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_257724438()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t sub_25772448C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2577244E4()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 24);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t sub_257724538()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

void OUTLINED_FUNCTION_6_61()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_11_48()
{

  sub_2577215B8(v4, v5, v3, v0, v1, v2);
}

void OUTLINED_FUNCTION_13_35()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_18_44()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void *OUTLINED_FUNCTION_21_33(void *result)
{
  *v3 = result;
  result[1] = v1;
  result[2] = v2;
  *result = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_22()
{
  v2 = *(v0 + 16);
}

double NeuralNetwork.Layer.FlattenParameters.propertyDescriptions.getter()
{
  v1 = 0xED00007473726946;
  if (*(v0 + 8) == 1 && *v0)
  {
    v1 = 0xEC0000007473614CLL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_2577442B0;
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = 0x80000002577814F0;
  *(v2 + 48) = 0x206C656E6E616843;
  *(v2 + 56) = v1;
  return result;
}

uint64_t static NeuralNetwork.Layer.flatten(name:inputName:outputName:targetChannelLayout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a1;
  v31 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  v29 = *a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v23 = swift_allocObject();
  v28 = xmmword_2577442B0;
  *(v23 + 16) = xmmword_2577442B0;
  *(v23 + 32) = a3;
  *(v23 + 40) = a4;
  v24 = swift_allocObject();
  *(v24 + 16) = v28;
  *(v24 + 32) = a5;
  *(v24 + 40) = a6;
  *v22 = 0;
  *(v22 + 8) = 1;
  LODWORD(a5) = *(type metadata accessor for Proto_FlattenLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v22 = v29;
  *(v22 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a8 + v25) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v24);
  sub_2574897E0(v17);
  v26 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v26);
  sub_25752846C();
  return sub_257634BB4(v22);
}

uint64_t static NeuralNetwork.Layer.Kind.flatten(targetChannelLayout:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + *(OUTLINED_FUNCTION_1_87(a1, a2) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v3;
  *(v2 + 8) = v4;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.FlattenParameters.init(targetChannelLayout:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + *(OUTLINED_FUNCTION_1_87(a1, a2) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

unsigned __int8 *NeuralNetwork.Layer.FlattenParameters.targetChannelLayout.setter(unsigned __int8 *result)
{
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.FlattenParameters.targetChannelLayout.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 8) == 1 && *v1 != 0;
  *(a1 + 8) = v2;
  return sub_2576BFAD8;
}

BOOL static NeuralNetwork.Layer.FlattenParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
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

  v4 = *(type metadata accessor for Proto_FlattenLayerParams(0) + 20);
  sub_2577431B4();
  sub_257725074(&qword_27F879B68, MEMORY[0x277D216C8]);
  return (sub_257743644() & 1) != 0;
}

uint64_t NeuralNetwork.Layer.FlattenParameters.customMirror.getter()
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
  v11 = &v20 - v10;
  v12 = type metadata accessor for NeuralNetwork.Layer.FlattenParameters();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  sub_257724F94(v1, v15 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2577442B0;
  *(v16 + 32) = 0xD000000000000013;
  *(v16 + 40) = 0x8000000257781910;
  *(v16 + 72) = &type metadata for NeuralNetwork.Layer.FlattenParameters.ChannelLayout;
  v17 = *(v1 + 8) == 1 && *v1 != 0;
  *(v16 + 48) = v17;
  v18 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.FlattenParameters()
{
  result = qword_27F881930;
  if (!qword_27F881930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257724F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.FlattenParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NeuralNetwork.Layer.FlattenParameters.ChannelLayout.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_257725074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2577250C4@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.FlattenParameters.ChannelLayout.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2577250F0()
{
  result = qword_27F881918;
  if (!qword_27F881918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F881920, &qword_2577776D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881918);
  }

  return result;
}

unint64_t sub_257725168()
{
  result = qword_27F881928;
  if (!qword_27F881928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881928);
  }

  return result;
}

uint64_t sub_2577251E4()
{
  result = type metadata accessor for Proto_FlattenLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s17FlattenParametersV13ChannelLayoutOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_87@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 0;
  *(a2 + 8) = 1;

  return type metadata accessor for Proto_FlattenLayerParams(0);
}

uint64_t sub_257725354()
{
  v2 = v0;
  v3 = type metadata accessor for Proto_StringVector(0);
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_17_3();
  v8 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = v34 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257744E70;
  *(inited + 32) = 0x6E6F697369766552;
  *(inited + 40) = 0xE800000000000000;
  v35 = *v0;
  *(inited + 48) = sub_257743674();
  *(inited + 56) = v22;
  *(inited + 64) = 0;
  *(inited + 72) = 0x65676175676E614CLL;
  *(inited + 80) = 0xE800000000000000;
  v23 = *(v0 + 1);
  v24 = *(v0 + 2);
  v35 = 34;
  v36 = 0xE100000000000000;
  MEMORY[0x259C64E90](v23, v24);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  v25 = v36;
  *(inited + 88) = v35;
  *(inited + 96) = v25;
  *(inited + 104) = 0;
  strcpy((inited + 112), "Class Labels");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v26 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  sub_257725954(v0 + *(v26 + 28), v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v8) == 1)
  {
    v27 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    sub_2577259C4(v20, v14, v28);
    OUTLINED_FUNCTION_0_108();
    sub_2577259C4(v14, v1, v29);
    v27 = *v1;

    sub_25767EE20(v1);
  }

  v34[1] = v27;
  v30 = sub_257689088();

  *(inited + 128) = v30;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 0xD000000000000014;
  *(inited + 160) = 0x8000000257780DA0;
  v31 = *(v2 + 4);
  v35 = *(v2 + 3);
  v36 = v31;
  sub_257486740(v35, v31);
  *(inited + 168) = sub_257743674();
  *(inited + 176) = v32;
  *(inited + 184) = 0;
  return sub_2576A6964(inited);
}

uint64_t GazetteerConfiguration.language.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_25772564C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return GazetteerConfiguration.language.setter(v1, v2);
}

uint64_t GazetteerConfiguration.language.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t (*GazetteerConfiguration.language.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25764FF90;
}

uint64_t GazetteerConfiguration.modelParameterData.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_205();
  sub_257486740(v3, v4);
  return OUTLINED_FUNCTION_205();
}

uint64_t sub_257725740(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_257486740(*a1, v2);
  return GazetteerConfiguration.modelParameterData.setter(v1, v2);
}

uint64_t GazetteerConfiguration.modelParameterData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_257486798(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t (*GazetteerConfiguration.modelParameterData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;
  a1[1] = v4;
  sub_257486740(v3, v4);
  return sub_257688698;
}

uint64_t GazetteerConfiguration.classLabels.getter@<X0>(void *a1@<X8>)
{
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_17_3();
  v10 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(v9);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_64();
  v22 = type metadata accessor for Proto_CoreMLModels_Gazetteer(v21);
  sub_257725954(v1 + *(v22 + 28), v3);
  result = __swift_getEnumTagSinglePayload(v3, 1, v10);
  if (result == 1)
  {
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    sub_2577259C4(v3, v16, v25);
    OUTLINED_FUNCTION_0_108();
    sub_2577259C4(v16, v2, v26);
    v24 = *v2;

    result = sub_25767EE20(v2);
  }

  *a1 = v24;
  return result;
}

uint64_t sub_257725954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2577259C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_257725A20@<X0>(void *a1@<X8>)
{
  result = GazetteerConfiguration.classLabels.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_257725A5C(uint64_t *a1)
{
  v2 = *a1;

  return GazetteerConfiguration.classLabels.setter(&v2);
}

uint64_t GazetteerConfiguration.classLabels.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = (&v14 - v7);
  v9 = *a1;
  v10 = &v14 + *(type metadata accessor for Proto_StringVector(0) + 20) - v7;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v8 = v9;
  v11 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  v12 = OUTLINED_FUNCTION_12_50(v11);
  return sub_257725B40(v8, v1 + *(v12 + 28));
}

uint64_t sub_257725B40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*GazetteerConfiguration.classLabels.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_18_20(v1);
  v0[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[3] = v4;
  v5 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  v0[4] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v0[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[7] = v11;
  v12 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  OUTLINED_FUNCTION_11_49(v12);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    sub_2577259C4(v11, v7, v14);
    OUTLINED_FUNCTION_0_108();
    sub_2577259C4(v7, v4, v15);
    v13 = *v4;

    sub_25767EE20(v4);
  }

  *v0 = v13;
  return sub_257725D18;
}

uint64_t GazetteerConfiguration.stringClassLabels.getter()
{
  v1 = type metadata accessor for Proto_StringVector(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  v8 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  v21 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  sub_257725954(v0 + *(v21 + 28), v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v8) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_1_88();
  sub_2577259C4(v20, v14, v23);
  OUTLINED_FUNCTION_0_108();
  sub_2577259C4(v14, v7, v24);
  v22 = *v7;

  sub_25767EE20(v7);
  return v22;
}

uint64_t sub_257725E78(uint64_t *a1)
{
  v1 = *a1;

  return GazetteerConfiguration.stringClassLabels.setter(v2);
}

uint64_t GazetteerConfiguration.stringClassLabels.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17_3();
  v9 = v2 + *(type metadata accessor for Proto_StringVector(v8) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = a1;
  v10 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  v11 = OUTLINED_FUNCTION_12_50(v10);
  return sub_257725B40(v2, v1 + *(v11 + 28));
}

uint64_t (*GazetteerConfiguration.stringClassLabels.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_18_20(v1);
  v0[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[3] = v4;
  v5 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  v0[4] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v0[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[7] = v11;
  v12 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  OUTLINED_FUNCTION_11_49(v12);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    sub_2577259C4(v11, v7, v14);
    OUTLINED_FUNCTION_0_108();
    sub_2577259C4(v7, v4, v15);
    v13 = *v4;

    sub_25767EE20(v4);
  }

  *v0 = v13;
  return sub_257726738;
}

void sub_2577260A8(uint64_t **a1, char a2)
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
    OUTLINED_FUNCTION_7_50();
    v12 = *v2;
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_7_50();
  }

  free(v7);
  free(v6);
  free(v8);
  free(v3);

  free(v2);
}

uint64_t GazetteerConfiguration.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t GazetteerConfiguration.customMirror.getter()
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
  v12 = type metadata accessor for GazetteerConfiguration();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_2577264BC(v0, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257744E70;
  *(v18 + 32) = 0x6E6F697369766572;
  *(v18 + 40) = 0xE800000000000000;
  v19 = MEMORY[0x277D83B88];
  *(v18 + 48) = *v0;
  *(v18 + 72) = v19;
  *(v18 + 80) = 0x65676175676E616CLL;
  v21 = v0[1];
  v20 = v0[2];
  v22 = MEMORY[0x277D837D0];
  *(v18 + 88) = 0xE800000000000000;
  *(v18 + 96) = v21;
  *(v18 + 104) = v20;
  *(v18 + 120) = v22;
  *(v18 + 128) = 0xD000000000000012;
  v23 = MEMORY[0x277CC9318];
  v24 = v0[3];
  v25 = v0[4];
  *(v18 + 136) = 0x800000025777AB50;
  *(v18 + 144) = v24;
  *(v18 + 152) = v25;
  *(v18 + 168) = v23;
  *(v18 + 176) = 0x62614C7373616C63;
  *(v18 + 184) = 0xEB00000000736C65;
  *(v18 + 216) = &type metadata for GazetteerConfiguration.Labels;

  sub_257486740(v24, v25);
  GazetteerConfiguration.classLabels.getter((v18 + 192));
  v26 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v26);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for GazetteerConfiguration()
{
  result = qword_281537C18;
  if (!qword_281537C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2577264BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GazetteerConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void GazetteerConfiguration.Labels.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  MEMORY[0x259C651F0](0);

  sub_2576679DC(a1, v3);
}

uint64_t GazetteerConfiguration.Labels.hashValue.getter()
{
  v1 = *v0;
  sub_257743A14();
  MEMORY[0x259C651F0](0);
  sub_2576679DC(v3, v1);
  return sub_257743A64();
}

unint64_t sub_2577265E4()
{
  result = qword_27F87ACE8;
  if (!qword_27F87ACE8)
  {
    type metadata accessor for Proto_CoreMLModels_Gazetteer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ACE8);
  }

  return result;
}

unint64_t sub_257726640()
{
  result = qword_27F881940;
  if (!qword_27F881940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881940);
  }

  return result;
}

uint64_t sub_2577266BC()
{
  result = type metadata accessor for Proto_CoreMLModels_Gazetteer(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_50()
{
  *v0 = v2;
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_257725B40(v0, v4 + v3);
}

uint64_t OUTLINED_FUNCTION_11_49(uint64_t a1)
{
  v5 = *(a1 + 28);
  *(v2 + 64) = v5;

  return sub_257725954(v1 + v5, v3);
}

uint64_t OUTLINED_FUNCTION_12_50(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
}

uint64_t NeuralNetwork.Layer.EmbeddingParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = OUTLINED_FUNCTION_85_4();
  *(v1 + 16) = xmmword_257743FF0;
  *(v1 + 32) = 0x6953207475706E49;
  *(v1 + 40) = 0xEA0000000000657ALL;
  v2 = *(v0 + *(type metadata accessor for Proto_EmbeddingLayerParams(0) + 20));
  OUTLINED_FUNCTION_296();
  v7 = *(v2 + 16);
  OUTLINED_FUNCTION_263();
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v3;
  *(v1 + 64) = 0x432074757074754FLL;
  *(v1 + 72) = 0xEF736C656E6E6168;
  OUTLINED_FUNCTION_296();
  v6 = *(v2 + 24);
  OUTLINED_FUNCTION_263();
  *(v1 + 80) = sub_257743974();
  *(v1 + 88) = v4;
  return v1;
}

uint64_t NeuralNetwork.Layer.EmbeddingNDParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = OUTLINED_FUNCTION_85_4();
  *(v1 + 16) = xmmword_257743FF0;
  *(v1 + 32) = 0x616C756261636F56;
  *(v1 + 40) = 0xEF657A6953207972;
  v2 = *(v0 + *(type metadata accessor for Proto_EmbeddingNDLayerParams(0) + 20));
  OUTLINED_FUNCTION_296();
  v7 = *(v2 + 16);
  OUTLINED_FUNCTION_263();
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v3;
  strcpy((v1 + 64), "Embedding Size");
  *(v1 + 79) = -18;
  OUTLINED_FUNCTION_296();
  v6 = *(v2 + 24);
  OUTLINED_FUNCTION_263();
  *(v1 + 80) = sub_257743974();
  *(v1 + 88) = v4;
  return v1;
}

uint64_t NeuralNetwork.Layer.BiasParameters.propertyDescriptions.getter()
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

uint64_t NeuralNetwork.Layer.OneHotParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744E70;
  *(v1 + 32) = 0x5320726F74636556;
  *(v1 + 40) = 0xEB00000000657A69;
  v9 = *v0;
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v2;
  *(v1 + 64) = 1936291905;
  *(v1 + 72) = 0xE400000000000000;
  v10 = v0[1];
  *(v1 + 80) = sub_257743974();
  *(v1 + 88) = v3;
  *(v1 + 96) = 0x65756C6156206E4FLL;
  *(v1 + 104) = 0xE800000000000000;
  v4 = *(v0 + 4);
  *(v1 + 112) = sub_257743794();
  *(v1 + 120) = v5;
  *(v1 + 128) = 0x756C61562066664FLL;
  *(v1 + 136) = 0xE900000000000065;
  v6 = *(v0 + 5);
  *(v1 + 144) = sub_257743794();
  *(v1 + 152) = v7;
  return v1;
}

__n128 *NeuralNetwork.Layer.TopKParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_5_20(v2, xmmword_2577442C0);
  v2[3].n128_u64[0] = sub_257743974();
  v2[3].n128_u64[1] = v3;
  v2[4].n128_u64[0] = 107;
  v2[4].n128_u64[1] = 0xE100000000000000;
  v8 = *(v0 + 8);
  v2[5].n128_u64[0] = sub_257743974();
  v2[5].n128_u64[1] = v4;
  v2[6].n128_u64[0] = 0x6B206D6F74746F42;
  v2[6].n128_u64[1] = 0xE800000000000000;
  v5 = 1702195828;
  if (!*(v0 + 16))
  {
    v5 = 0x65736C6166;
  }

  v6 = 0xE500000000000000;
  if (*(v0 + 16))
  {
    v6 = v1;
  }

  v2[7].n128_u64[0] = v5;
  v2[7].n128_u64[1] = v6;
  return v2;
}

__n128 *NeuralNetwork.Layer.ArgSortParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = OUTLINED_FUNCTION_85_4();
  OUTLINED_FUNCTION_5_20(v2, xmmword_257743FF0);
  v2[3].n128_u64[0] = sub_257743974();
  v2[3].n128_u64[1] = v3;
  v2[4].n128_u64[0] = 0x69646E6563736544;
  v2[4].n128_u64[1] = 0xEA0000000000676ELL;
  v4 = 1702195828;
  if (!*(v0 + 8))
  {
    v4 = 0x65736C6166;
  }

  v5 = 0xE500000000000000;
  if (*(v0 + 8))
  {
    v5 = v1;
  }

  v2[5].n128_u64[0] = v4;
  v2[5].n128_u64[1] = v5;
  return v2;
}

uint64_t NeuralNetwork.Layer.NonMaximumSuppressionParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744E70;
  strcpy((v1 + 32), "IoU Threshold");
  *(v1 + 46) = -4864;
  v2 = *v0;
  *(v1 + 48) = sub_257743794();
  *(v1 + 56) = v3;
  *(v1 + 64) = 0x68542065726F6353;
  *(v1 + 72) = 0xEF646C6F68736572;
  v4 = v0[1];
  *(v1 + 80) = sub_257743794();
  *(v1 + 88) = v5;
  *(v1 + 96) = 0x786F42202E78614DLL;
  *(v1 + 104) = 0xEA00000000007365;
  v10 = *(v0 + 1);
  *(v1 + 112) = sub_257743974();
  *(v1 + 120) = v6;
  *(v1 + 128) = 0xD000000000000015;
  *(v1 + 136) = 0x80000002577820B0;
  v7 = 1702195828;
  if (!*(v0 + 16))
  {
    v7 = 0x65736C6166;
  }

  v8 = 0xE500000000000000;
  if (*(v0 + 16))
  {
    v8 = 0xE400000000000000;
  }

  *(v1 + 144) = v7;
  *(v1 + 152) = v8;
  return v1;
}

uint64_t NeuralNetwork.Layer.CustomParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = OUTLINED_FUNCTION_85_4();
  *(v1 + 16) = xmmword_257743FF0;
  *(v1 + 32) = 0x614E207373616C43;
  *(v1 + 40) = 0xEA0000000000656DLL;
  v2 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v2;
  *(v1 + 64) = 0x7470697263736544;
  *(v1 + 72) = 0xEB000000006E6F69;
  v3 = v0[4];
  v4 = v0[5];
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;

  return v1;
}

void sub_257727114()
{
  OUTLINED_FUNCTION_31();
  v56 = v2;
  v52 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v51 = (v16 - v17);
  MEMORY[0x28223BE20](v18);
  v20 = (&v51 - v19);
  v55 = type metadata accessor for NeuralNetwork.WeightParameters();
  v21 = OUTLINED_FUNCTION_4(v55);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11();
  v53 = v24 - v25;
  MEMORY[0x28223BE20](v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v31 = OUTLINED_FUNCTION_12_51();
  v32 = *(v0 + *(v7(v31) + 20));
  v33 = *v5;
  OUTLINED_FUNCTION_296();
  sub_2574DA900();
  v34 = type metadata accessor for Proto_WeightParams(0);
  LODWORD(v33) = __swift_getEnumTagSinglePayload(v1, 1, v34);
  v35 = sub_2574695E4(v1, &qword_27F87A1A0, &qword_257745750);
  if (v33 == 1)
  {
    v36 = MEMORY[0x277D84F90];
  }

  else
  {
    v52(v35);
    v37 = *(v14 + 48);
    *v20 = 0x73746867696557;
    v20[1] = 0xE700000000000000;
    OUTLINED_FUNCTION_4_26();
    sub_2577290B0();
    sub_257469D34();
    v36 = v38;
    v39 = *(v38 + 16);
    if (v39 >= *(v38 + 24) >> 1)
    {
      sub_257469D34();
      v36 = v48;
    }

    OUTLINED_FUNCTION_17_32();
    v35 = sub_25749E9A8(v20, v40 + v41 * v39);
  }

  v56(v35);
  if (__swift_getEnumTagSinglePayload(v13, 1, v55) == 1)
  {
    sub_2574695E4(v13, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    v42 = v53;
    sub_2577290B0();
    OUTLINED_FUNCTION_296();
    if (*(v32 + 32) == 1)
    {
      v43 = *(v14 + 48);
      v44 = v51;
      *v51 = 1935763778;
      *(v44 + 8) = 0xE400000000000000;
      OUTLINED_FUNCTION_4_26();
      sub_25772910C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = *(v36 + 16);
        sub_257469D34();
        v36 = v50;
      }

      v45 = *(v36 + 16);
      if (v45 >= *(v36 + 24) >> 1)
      {
        sub_257469D34();
      }

      sub_25763A188(v42);
      OUTLINED_FUNCTION_17_32();
      sub_25749E9A8(v44, v46 + v47 * v45);
    }

    else
    {
      sub_25763A188(v42);
    }
  }

  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.BiasParameters.namedWeights.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v20;
  a20 = v21;
  v22 = type metadata accessor for Proto_WeightParams(0);
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v30 = OUTLINED_FUNCTION_13(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  v39 = *(type metadata accessor for Proto_BiasLayerParams(0) + 24);
  sub_2574DA900();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v22);
  sub_2574695E4(v38, &qword_27F87A1A0, &qword_257745750);
  v41 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F90, &unk_257775F60);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
    v43 = *(*(v42 - 8) + 72);
    v44 = (*(*(v42 - 8) + 80) + 32) & ~*(*(v42 - 8) + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_2577442B0;
    v46 = (v45 + v44);
    *v46 = 1935763778;
    v46[1] = 0xE400000000000000;
    sub_2574DA900();
    OUTLINED_FUNCTION_35_0(v35);
    if (v47)
    {
      *v28 = v41;
      *(v28 + 8) = xmmword_257745740;
      *(v28 + 24) = xmmword_257745740;
      *(v28 + 40) = xmmword_257745740;
      *(v28 + 56) = 0;
      v48 = v28 + *(v22 + 36);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v49 = *(v22 + 40);
      type metadata accessor for Proto_QuantizationParams(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
      OUTLINED_FUNCTION_35_0(v35);
      if (!v47)
      {
        sub_2574695E4(v35, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      sub_2577290B0();
    }

    sub_2576FF45C(v28, (v46 + *(v42 + 48)));
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.EmbeddingParameters.weights.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = type metadata accessor for NeuralNetwork.WeightParameters();
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.EmbeddingParameters.weights.getter();
  return OUTLINED_FUNCTION_15_10();
}

void NeuralNetwork.Layer.EmbeddingParameters.bias.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_12_51();
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
  v23 = OUTLINED_FUNCTION_32_18();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_25_31();
  sub_2574DA900();
  if (__swift_getEnumTagSinglePayload(v3, 1, v23) == 1)
  {
    sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);
    v27 = *(type metadata accessor for Proto_EmbeddingLayerParams(0) + 20);
    v28 = *(v4 + v27);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
      v29 = *(v4 + v27);
    }

    else
    {
      v31 = *(v4 + v27);
      v32 = type metadata accessor for Proto_EmbeddingLayerParams._StorageClass(0);
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();

      sub_2575A3534();
      v29 = v35;
      sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);

      *(v4 + v27) = v29;
    }

    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v12);
    v39 = OBJC_IVAR____TtCV20MLModelSpecification26Proto_EmbeddingLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
    OUTLINED_FUNCTION_20_29();
    sub_25763A1E4(v1, v29 + v39);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    sub_2577290B0();
    v30 = *(v23 + 20);
    OUTLINED_FUNCTION_1_5();
    sub_25772910C();
    sub_257531764(v18);
    sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
    sub_25763A188(v2);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.EmbeddingParameters.bias.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.EmbeddingParameters.bias.getter();
  return OUTLINED_FUNCTION_15_10();
}

void sub_257727BD8(uint64_t *a1, char a2, void (*a3)(void *))
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (a2)
  {
    v7 = a1[2];
    sub_2574DA900();
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

void sub_257727CE0()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Proto_WeightParams(0);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = *(v0 + *(v4(0) + 20));
  v21 = *v2;
  OUTLINED_FUNCTION_296();
  sub_2574DA900();
  OUTLINED_FUNCTION_35_0(v12);
  if (v22)
  {
    *v19 = MEMORY[0x277D84F90];
    *(v19 + 8) = xmmword_257745740;
    *(v19 + 24) = xmmword_257745740;
    *(v19 + 40) = xmmword_257745740;
    *(v19 + 56) = 0;
    v23 = v19 + *(v13 + 36);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v24 = *(v13 + 40);
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    OUTLINED_FUNCTION_35_0(v12);
    if (!v22)
    {
      sub_2574695E4(v12, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    sub_2577290B0();
  }

  sub_2576FF45C(v19, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_296();
  v30 = *(v20 + 24);
  if (v30 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 32) = v30;
    OUTLINED_FUNCTION_296();
    v31 = *(v20 + 16);
    if ((v31 & 0x8000000000000000) == 0)
    {
      *(v29 + 40) = v31;
      v32 = *v6;

      *v6 = v29;
      OUTLINED_FUNCTION_35();
      return;
    }
  }

  __break(1u);
}

void sub_257727F20()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v47 = v5;
  v6 = type metadata accessor for Proto_WeightParams(0);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for NeuralNetwork.WeightParameters();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v46 = (v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v20 = OUTLINED_FUNCTION_13(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v46 - v27;
  v29 = *(v0 + *(v4(0) + 20));
  v30 = *v2;
  OUTLINED_FUNCTION_296();
  sub_2574DA900();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v6);
  sub_2574695E4(v28, &qword_27F87A1A0, &qword_257745750);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v13);
LABEL_9:
    OUTLINED_FUNCTION_35();
    return;
  }

  v35 = v47;
  sub_2574DA900();
  if (__swift_getEnumTagSinglePayload(v25, 1, v6) == 1)
  {
    *v12 = MEMORY[0x277D84F90];
    *(v12 + 8) = xmmword_257745740;
    *(v12 + 24) = xmmword_257745740;
    *(v12 + 40) = xmmword_257745740;
    *(v12 + 56) = 0;
    v36 = v12 + *(v6 + 36);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v37 = *(v6 + 40);
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    if (__swift_getEnumTagSinglePayload(v25, 1, v6) != 1)
    {
      sub_2574695E4(v25, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    sub_2577290B0();
  }

  v42 = v46;
  sub_2576FF45C(v12, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_296();
  v44 = *(v29 + 24);
  if ((v44 & 0x8000000000000000) == 0)
  {
    *(v43 + 32) = v44;
    v45 = *v42;

    *v42 = v43;
    OUTLINED_FUNCTION_4_26();
    sub_25772910C();
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v13);
    sub_25763A188(v42);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_25772822C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = type metadata accessor for NeuralNetwork.WeightParameters();
  v7 = OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_4_26();
  OUTLINED_FUNCTION_263();
  sub_25772910C();
  return a5(v12);
}

void sub_2577282F8()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v31 = v3;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v17 = type metadata accessor for Proto_WeightParams(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = *(type metadata accessor for NeuralNetwork.WeightParameters() + 20);
  OUTLINED_FUNCTION_1_5();
  sub_25772910C();
  v22 = *(v7(0) + 20);
  v23 = *(v0 + v22);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_25763A188(v10);
    v24 = *(v0 + v22);
  }

  else
  {
    v25 = *(v0 + v22);
    v26 = v5(0);
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();

    v24 = v31(v29);
    sub_25763A188(v10);

    *(v8 + v22) = v24;
  }

  sub_2577290B0();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  v30 = *v2;
  OUTLINED_FUNCTION_20_29();
  sub_25763A1E4(v16, v24 + v30);
  swift_endAccess();
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.EmbeddingNDParameters.weights.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = type metadata accessor for NeuralNetwork.WeightParameters();
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.EmbeddingNDParameters.weights.getter();
  return OUTLINED_FUNCTION_15_10();
}

void sub_257728538(uint64_t *a1, char a2, void (*a3)(void *))
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (a2)
  {
    v7 = a1[2];
    sub_25772910C();
    a3(v4);
    sub_25763A188(v5);
  }

  else
  {
    a3(a1[2]);
  }

  free(v5);

  free(v4);
}

uint64_t sub_2577285CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_31();
  sub_2574DA900();
  return a5(v5);
}

void NeuralNetwork.Layer.EmbeddingNDParameters.bias.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_12_51();
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
  v23 = OUTLINED_FUNCTION_32_18();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_25_31();
  sub_2574DA900();
  if (__swift_getEnumTagSinglePayload(v3, 1, v23) == 1)
  {
    sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);
    v27 = *(type metadata accessor for Proto_EmbeddingNDLayerParams(0) + 20);
    v28 = *(v4 + v27);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
      v29 = *(v4 + v27);
    }

    else
    {
      v31 = *(v4 + v27);
      v32 = type metadata accessor for Proto_EmbeddingNDLayerParams._StorageClass(0);
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();

      sub_2575A4548();
      v29 = v35;
      sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);

      *(v4 + v27) = v29;
    }

    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v12);
    v39 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_EmbeddingNDLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
    OUTLINED_FUNCTION_20_29();
    sub_25763A1E4(v1, v29 + v39);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    sub_2577290B0();
    v30 = *(v23 + 20);
    OUTLINED_FUNCTION_1_5();
    sub_25772910C();
    sub_2575317A0(v18);
    sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
    sub_25763A188(v2);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.EmbeddingNDParameters.bias.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.EmbeddingNDParameters.bias.getter();
  return OUTLINED_FUNCTION_15_10();
}

uint64_t sub_2577289B0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t NeuralNetwork.Layer.BiasParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_BiasLayerParams(0);
  v3 = a1 + *(v2 + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v4 = *(v2 + 24);
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t NeuralNetwork.Layer.TopKParameters.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_TopKLayerParams(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a1 + *(v2 + 28);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.TopKParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_104_0(a1, a2);
  result = 0;
  if (v4)
  {
    OUTLINED_FUNCTION_267();
    if (*(v5 + 8) == *(v6 + 8) && *(v3 + 16) == *(v2 + 16))
    {
      v7 = *(type metadata accessor for Proto_TopKLayerParams(0) + 28);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_89();
      sub_2577293A8(v8, v9);
      if (OUTLINED_FUNCTION_4_2())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.CustomParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue(0);
  a1[3] = sub_2577435D4();
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  v2 = a1 + *(type metadata accessor for Proto_CustomLayerParams(0) + 32);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

float (*NeuralNetwork.Layer.NonMaximumSuppressionParameters.iouThreshold.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_25749D2A8;
}

float (*NeuralNetwork.Layer.NonMaximumSuppressionParameters.scoreThreshold.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return sub_25749D38C;
}

uint64_t NeuralNetwork.Layer.NonMaximumSuppressionParameters.maximumBoxCount.getter()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.NonMaximumSuppressionParameters.maximumBoxCount.setter(uint64_t result)
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

uint64_t *(*NeuralNetwork.Layer.NonMaximumSuppressionParameters.maximumBoxCount.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
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

_BYTE *(*NeuralNetwork.Layer.NonMaximumSuppressionParameters.perClassSuppression.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_25769EA14;
}

uint64_t NeuralNetwork.Layer.NonMaximumSuppressionParameters.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_NonMaximumSuppressionLayerParams(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a1 + *(v2 + 32);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.NonMaximumSuppressionParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    if (*(v4 + 4) == *(v5 + 4) && *(v3 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16))
    {
      v6 = *(type metadata accessor for Proto_NonMaximumSuppressionLayerParams(0) + 32);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_89();
      sub_2577293A8(v7, v8);
      if (OUTLINED_FUNCTION_4_2())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.OneHotParameters.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Proto_OneHotLayerParams(0);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v3 = a1 + *(v2 + 32);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.OneHotParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_104_0(a1, a2);
  result = 0;
  if (v4)
  {
    OUTLINED_FUNCTION_267();
    if (*(v5 + 8) == *(v6 + 8) && *(v3 + 16) == *(v2 + 16) && *(v3 + 20) == *(v2 + 20))
    {
      v7 = *(type metadata accessor for Proto_OneHotLayerParams(0) + 32);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_89();
      sub_2577293A8(v8, v9);
      if (OUTLINED_FUNCTION_4_2())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ArgSortParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for Proto_ArgSortLayerParams(0) + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.ArgSortParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_104_0(a1, a2);
  result = 0;
  if (v2)
  {
    OUTLINED_FUNCTION_267();
    if (*(v3 + 8) == *(v4 + 8))
    {
      v5 = *(type metadata accessor for Proto_ArgSortLayerParams(0) + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_89();
      sub_2577293A8(v6, v7);
      if (OUTLINED_FUNCTION_4_2())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2577290B0()
{
  OUTLINED_FUNCTION_267();
  v3 = v2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_25772910C()
{
  OUTLINED_FUNCTION_267();
  v3 = v2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2577293A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2577296F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_17_32()
{
  *(v1 + 16) = v0;
  v3 = *(v2 - 152);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v3 + 72);
}

uint64_t OUTLINED_FUNCTION_20_29()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_32_18()
{

  return type metadata accessor for NeuralNetwork.WeightParameters();
}

uint64_t static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11)
{
  v51 = a1;
  v52 = a2;
  v48 = a9;
  *&v59 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v53 = &v47 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v50 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v47 - v24;
  v49 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v26 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *a7;
  v30 = *a8;
  v29 = a8[1];
  v31 = a10[1];
  v55 = *a10;
  v56 = v29;
  v54 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  OUTLINED_FUNCTION_24_22();
  v32 = swift_allocObject();
  v57 = xmmword_2577442B0;
  *(v32 + 16) = xmmword_2577442B0;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  OUTLINED_FUNCTION_24_22();
  v33 = swift_allocObject();
  *(v33 + 16) = v57;
  *(v33 + 32) = a5;
  *(v33 + 40) = a6;
  v34 = a6;
  sub_257729E24(v59, v25);
  *v28 = 0;
  v28[8] = 1;
  v35 = MEMORY[0x277D84F90];
  *(v28 + 2) = MEMORY[0x277D84F90];
  *(v28 + 3) = v35;
  v36 = type metadata accessor for Proto_PoolingLayerParams(0);
  v37 = v36[7];
  v38 = type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType(0);
  __swift_storeEnumTagSinglePayload(&v28[v37], 1, 1, v38);
  v28[v36[8]] = 0;
  v28[v36[9]] = 0;
  v39 = v36[10];

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v28 = v58;
  v28[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  OUTLINED_FUNCTION_24_22();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_257743FF0;
  if (v30 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v40 + 32) = v30;
  if (v56 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v40 + 40) = v56;
  *(v28 + 2) = v40;
  OUTLINED_FUNCTION_24_22();
  v59 = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = v59;
  if (v55 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v42 + 32) = v55;
  if (v54 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v42 + 40) = v54;
  *(v28 + 3) = v42;
  v43 = v50;
  sub_257729E24(v25, v50);
  NeuralNetwork.Layer.PoolParameters.padding.setter(v43);
  sub_257729E94(v25);
  swift_storeEnumTagMultiPayload();
  v34 = v48;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v39 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
LABEL_11:
    swift_once();
  }

  *(v34 + v39) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v33);
  v44 = v53;
  sub_2574897E0(v53);
  v45 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
  sub_25752846C();
  return sub_257634BB4(v28);
}

uint64_t static NeuralNetwork.Layer.Kind.pool(kind:kernelSize:strides:padding:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = *a1;
  v19 = *a2;
  v18 = a2[1];
  v20 = *a3;
  v29 = a3[1];
  sub_257729E24(a4, &v28 - v15);
  *a5 = 0;
  *(a5 + 8) = 1;
  v21 = MEMORY[0x277D84F90];
  *(a5 + 16) = MEMORY[0x277D84F90];
  *(a5 + 24) = v21;
  v22 = type metadata accessor for Proto_PoolingLayerParams(0);
  v23 = v22[7];
  v24 = type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType(0);
  __swift_storeEnumTagSinglePayload(a5 + v23, 1, 1, v24);
  *(a5 + v22[8]) = 0;
  *(a5 + v22[9]) = 0;
  v25 = a5 + v22[10];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a5 = v17;
  *(a5 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  OUTLINED_FUNCTION_24_22();
  result = swift_allocObject();
  *(result + 16) = xmmword_257743FF0;
  if (v19 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(result + 32) = v19;
  if (v18 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(result + 40) = v18;
  *(a5 + 16) = result;
  OUTLINED_FUNCTION_24_22();
  v28 = v27;
  result = swift_allocObject();
  *(result + 16) = v28;
  if (v20 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(result + 32) = v20;
  if ((v29 & 0x8000000000000000) == 0)
  {
    *(result + 40) = v29;
    *(a5 + 24) = result;
    sub_257729E24(v16, v14);
    NeuralNetwork.Layer.PoolParameters.padding.setter(v14);
    sub_257729E94(v16);
    type metadata accessor for NeuralNetwork.Layer.Kind();
    return swift_storeEnumTagMultiPayload();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_257729E24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257729E94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NeuralNetwork.Layer.SplitParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  result = swift_allocObject();
  *(result + 16) = xmmword_2577442B0;
  *(result + 32) = 0x7374757074754FLL;
  *(result + 40) = 0xE700000000000000;
  if (*v0 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v4 = *v0;
    *(result + 48) = sub_257743974();
    *(v2 + 56) = v3;
    return v2;
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SplitNDParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442C0;
  *(v1 + 32) = 1936291905;
  *(v1 + 40) = 0xE400000000000000;
  v8 = *v0;
  result = sub_257743974();
  *(v1 + 48) = result;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0x7374696C7053;
  *(v1 + 72) = 0xE600000000000000;
  if (v0[1] < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[1];
    *(v1 + 80) = sub_257743974();
    *(v1 + 88) = v4;
    *(v1 + 96) = 0x69532074696C7053;
    *(v1 + 104) = 0xEB0000000073657ALL;
    NeuralNetwork.Layer.SplitNDParameters.splitSizes.getter();
    v5 = MEMORY[0x259C64F20]();
    v7 = v6;

    *(v1 + 112) = v5;
    *(v1 + 120) = v7;
    return v1;
  }

  return result;
}

void static NeuralNetwork.Layer.split(name:inputName:outputNames:outputCount:)()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_12_13();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = v7;
  *(v18 + 40) = v5;
  LODWORD(v7) = *(type metadata accessor for Proto_SplitLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  *v1 = v3;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v14 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
LABEL_5:
    OUTLINED_FUNCTION_3_22();
  }

  *(v9 + v14) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();

  sub_25752842C(v19);
  sub_2574897E0(v0);
  v20 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v20);
  sub_257634BB4(v1);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.split(outputCount:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for Proto_SplitLayerParams(0) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = a1;
    type metadata accessor for NeuralNetwork.Layer.Kind();

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void static NeuralNetwork.Layer.splitND(name:inputName:outputNames:axis:splitCount:)()
{
  OUTLINED_FUNCTION_31();
  v6 = v5;
  OUTLINED_FUNCTION_11_50(v7, v8, v9, v10, v11);
  v13 = v12;
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
  *(v22 + 16) = xmmword_2577442B0;
  *(v22 + 32) = v1;
  *(v22 + 40) = v4;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = MEMORY[0x277D84F90];
  v23 = *(type metadata accessor for Proto_SplitNDLayerParams(0) + 28);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v3;
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2[1] = v6;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v23 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
LABEL_5:
    OUTLINED_FUNCTION_3_22();
  }

  *(v13 + v23) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();

  sub_25752842C(v24);
  sub_2574897E0(v0);
  v25 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v25);
  sub_257634BB4(v2);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.splitND(axis:splitCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = MEMORY[0x277D84F90];
  v6 = a3 + *(type metadata accessor for Proto_SplitNDLayerParams(0) + 28);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    a3[1] = a2;
    type metadata accessor for NeuralNetwork.Layer.Kind();

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void static NeuralNetwork.Layer.splitND(name:inputName:outputNames:axis:splitSizes:)()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_50(v5, v6, v7, v8, v9);
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
  OUTLINED_FUNCTION_12_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2577442B0;
  *(v20 + 32) = v1;
  *(v20 + 40) = v4;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = MEMORY[0x277D84F90];
  v21 = *(type metadata accessor for Proto_SplitNDLayerParams(0) + 28);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v3;

  NeuralNetwork.Layer.SplitNDParameters.splitSizes.setter(v22);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v23 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(v11 + v23) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();

  sub_25752842C(v24);
  sub_2574897E0(v0);
  v25 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v25);
  sub_257634BB4(v2);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.splitND(axis:splitSizes:)()
{
  OUTLINED_FUNCTION_267();
  v2 = v1;
  *v1 = 0;
  v1[1] = 0;
  v1[2] = MEMORY[0x277D84F90];
  v3 = v1 + *(type metadata accessor for Proto_SplitNDLayerParams(0) + 28);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v0;

  NeuralNetwork.Layer.SplitNDParameters.splitSizes.setter(v4);
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.SplitParameters.init(outputCount:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for Proto_SplitLayerParams(0) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = a1;
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SplitNDParameters.init(axis:splitCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = MEMORY[0x277D84F90];
  v6 = a3 + *(type metadata accessor for Proto_SplitNDLayerParams(0) + 28);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    a3[1] = a2;
  }

  return result;
}

void NeuralNetwork.Layer.SplitNDParameters.init(axis:splitSizes:)()
{
  OUTLINED_FUNCTION_267();
  v3 = v2;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = MEMORY[0x277D84F90];
  v4 = v2 + *(type metadata accessor for Proto_SplitNDLayerParams(0) + 28);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v3 = v1;
  NeuralNetwork.Layer.SplitNDParameters.splitSizes.setter(v0);
}

uint64_t NeuralNetwork.Layer.SplitParameters.outputCount.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SplitParameters.outputCount.setter(uint64_t result)
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

uint64_t *(*NeuralNetwork.Layer.SplitParameters.outputCount.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
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

BOOL static NeuralNetwork.Layer.SplitParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    v2 = *(type metadata accessor for Proto_SplitLayerParams(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_2_73();
    sub_25772ACAC(v3, v4);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SplitNDParameters.splitCount.getter()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SplitNDParameters.splitSizes.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
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

uint64_t (*NeuralNetwork.Layer.SplitNDParameters.axis.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257636A44;
}

uint64_t NeuralNetwork.Layer.SplitNDParameters.splitCount.setter(uint64_t result)
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

uint64_t *(*NeuralNetwork.Layer.SplitNDParameters.splitCount.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
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

void sub_25772AB88(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.SplitNDParameters.splitSizes.setter(v2);
}

void NeuralNetwork.Layer.SplitNDParameters.splitSizes.setter(uint64_t a1)
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
    v9 = *(v2 + 16);

    *(v2 + 16) = v6;
  }
}

uint64_t sub_25772ACAC(unint64_t *a1, void (*a2)(uint64_t))
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

void (*NeuralNetwork.Layer.SplitNDParameters.splitSizes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.SplitNDParameters.splitSizes.getter();
  return sub_25772AD3C;
}

void sub_25772AD3C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    NeuralNetwork.Layer.SplitNDParameters.splitSizes.setter(v5);
  }

  else
  {
    NeuralNetwork.Layer.SplitNDParameters.splitSizes.setter(*a1);
  }
}

BOOL static NeuralNetwork.Layer.SplitNDParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    if (*(v4 + 8) == *(v5 + 8) && (sub_257487374(*(v3 + 16), *(v2 + 16)) & 1) != 0)
    {
      v6 = *(type metadata accessor for Proto_SplitNDLayerParams(0) + 28);
      sub_2577431B4();
      OUTLINED_FUNCTION_2_73();
      sub_25772ACAC(v7, v8);
      if (OUTLINED_FUNCTION_4_2())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_25772AE84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8_47();

  return sub_2577435F4();
}

uint64_t sub_25772AF38(void (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_8_47();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25772B004(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_8_47();
  sub_2577435F4();
  return sub_257743A64();
}

void NeuralNetwork.Layer.SplitNDParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
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
  OUTLINED_FUNCTION_12_6();
  v12 = type metadata accessor for NeuralNetwork.Layer.SplitNDParameters(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_25772B2E8(v0, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 32) = 1936291937;
  *(v18 + 40) = 0xE400000000000000;
  v19 = MEMORY[0x277D83B88];
  v20 = v0[1];
  *(v18 + 48) = *v0;
  *(v18 + 72) = v19;
  *(v18 + 80) = 0x756F4374696C7073;
  *(v18 + 88) = 0xEA0000000000746ELL;
  *(v18 + 16) = xmmword_2577442C0;
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    v21 = v18;
    *(v18 + 96) = v20;
    *(v18 + 120) = v19;
    *(v18 + 128) = 0x7A695374696C7073;
    *(v18 + 136) = 0xEA00000000007365;
    v22 = NeuralNetwork.Layer.SplitNDParameters.splitSizes.getter();
    *(v21 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
    *(v21 + 144) = v22;
    v23 = sub_257743A74();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v23);
    (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
    sub_257743AA4();
    OUTLINED_FUNCTION_35();
  }
}

uint64_t sub_25772B2E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.SplitNDParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25772B50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_47()
{

  return sub_25772ACAC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_11_50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 96) = result;
  *(v5 - 88) = a5;
  return result;
}

uint64_t sub_25772B5C4()
{
  v2 = type metadata accessor for SizeRange();
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  if (*v0 == 1)
  {
    MEMORY[0x259C64E90](63, 0xE100000000000000);
  }

  FeatureType.SequenceParameters.elementType.getter(v1);
  v13 = sub_25772C548();
  v15 = v14;
  OUTLINED_FUNCTION_2_74();
  sub_25772C4F0(v1, v16);
  MEMORY[0x259C64E90](v13, v15);

  MEMORY[0x259C64E90](8236, 0xE200000000000000);
  FeatureType.SequenceParameters.sizeRange.getter();
  SizeRange.description.getter();
  MEMORY[0x259C64E90]();

  OUTLINED_FUNCTION_15_32();
  sub_25772C4F0(v8, v17);
  MEMORY[0x259C64E90](62, 0xE100000000000000);
  MEMORY[0x259C64E90](60, 0xE100000000000000);

  return 0x65636E6575716553;
}

uint64_t FeatureType.SequenceParameters.init(elementType:optional:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  OUTLINED_FUNCTION_16_34();
  v7 = &a3[v6];
  v8 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = type metadata accessor for Proto_SequenceFeatureType(0);
  v10 = v7 + *(v9 + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Proto_SizeRange(0);
  __swift_storeEnumTagSinglePayload(v7 + v11, 1, 1, v12);
  sub_2574695E4(v7, &qword_27F87A898, &unk_257777D20);
  sub_25772BD08();
  OUTLINED_FUNCTION_2_74();
  sub_25772C4F0(a1, v13);
  OUTLINED_FUNCTION_21();
  result = __swift_storeEnumTagSinglePayload(v14, v15, v16, v8);
  *a3 = a2;
  return result;
}

uint64_t FeatureType.SequenceParameters.sizeRange.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  OUTLINED_FUNCTION_13(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for Proto_SizeRange(v5);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v12 = (v11 - v10);
  OUTLINED_FUNCTION_16_34();
  v13 = *(type metadata accessor for Proto_SequenceFeatureType(0) + 24);
  sub_2574DA900();
  v14 = OUTLINED_FUNCTION_197();
  if (__swift_getEnumTagSinglePayload(v14, v15, v6) == 1)
  {
    *v12 = 0;
    v12[1] = 0;
    v16 = v12 + *(v6 + 24);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v17 = OUTLINED_FUNCTION_197();
    if (__swift_getEnumTagSinglePayload(v17, v18, v6) != 1)
    {
      sub_2574695E4(v0, &qword_27F87A8A0, &unk_2577487A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_72();
    OUTLINED_FUNCTION_360();
    sub_25772BE98();
  }

  OUTLINED_FUNCTION_3_72();
  return sub_25772BE98();
}

uint64_t FeatureType.SequenceParameters.elementType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40();
  v7 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = OUTLINED_FUNCTION_38();
  v12 = *(type metadata accessor for FeatureType.SequenceParameters(v11) + 20);
  sub_2574DA900();
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_360();
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v1, 1, v7) != 1)
    {
      sub_2574695E4(v1, &qword_27F87A898, &unk_257777D20);
    }
  }

  else
  {
    sub_25772BE98();
  }

  OUTLINED_FUNCTION_360();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for FeatureType.StringParameters(0);
  }

  else
  {
    v13 = type metadata accessor for FeatureType.IntParameters(0);
  }

  v14 = *(v13 + 20);
  sub_25772BE98();
  *a1 = 0;
  type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t FeatureType.SequenceParameters.elementType.setter()
{
  v1 = type metadata accessor for FeatureType.StringParameters(0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for FeatureType.IntParameters(v5);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = type metadata accessor for FeatureType.SequenceParameters(0);
  sub_2574695E4(v0 + *(v10 + 20), &qword_27F87A898, &unk_257777D20);
  type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_62();
    sub_25772BE98();
    OUTLINED_FUNCTION_12_52();
    v6 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_5_61();
    sub_25772BE98();
    OUTLINED_FUNCTION_11_51();
  }

  v11 = *(v6 + 20);
  sub_25772BE98();
  v12 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
}

uint64_t sub_25772BD08()
{
  v0 = type metadata accessor for FeatureType.StringParameters(0);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v4 = type metadata accessor for FeatureType.IntParameters(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_38();
  v9 = type metadata accessor for FeatureType.SequenceParameters.ElementType(v8);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_66();
  sub_25772C494();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_62();
    sub_25772BE98();
    OUTLINED_FUNCTION_12_52();
    v4 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_5_61();
    sub_25772BE98();
    OUTLINED_FUNCTION_11_51();
  }

  v13 = *(v4 + 20);
  sub_25772BE98();
  type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25772BE98()
{
  OUTLINED_FUNCTION_267();
  v3 = v2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

void (*FeatureType.SequenceParameters.elementType.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  FeatureType.SequenceParameters.elementType.getter(v6);
  return sub_25772BF80;
}

void sub_25772BF80(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_25772C494();
    FeatureType.SequenceParameters.elementType.setter();
    OUTLINED_FUNCTION_2_74();
    sub_25772C4F0(v3, v5);
  }

  else
  {
    FeatureType.SequenceParameters.elementType.setter();
  }

  free(v3);

  free(v2);
}

uint64_t sub_25772C00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_25772C494();
  return a7(v13);
}

uint64_t FeatureType.SequenceParameters.sizeRange.setter()
{
  v1 = type metadata accessor for Proto_SizeRange(0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  sub_25772BE98();
  OUTLINED_FUNCTION_16_34();
  v6 = v0 + v5;
  v7 = type metadata accessor for Proto_SequenceFeatureType(0);
  sub_2574695E4(v6 + *(v7 + 24), &qword_27F87A8A0, &unk_2577487A0);
  sub_25772BE98();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
}

void FeatureType.SequenceParameters.sizeRange.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Proto_SizeRange(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_4(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for SizeRange();
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v3[5] = __swift_coroFrameAllocStub(v13);
  v3[6] = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_34();
  *(v3 + 14) = v14;
  *(v3 + 15) = *(type metadata accessor for Proto_SequenceFeatureType(0) + 24);
  sub_2574DA900();
  v15 = OUTLINED_FUNCTION_197();
  if (__swift_getEnumTagSinglePayload(v15, v16, v7) == 1)
  {
    *v10 = 0;
    v10[1] = 0;
    v17 = v10 + *(v7 + 24);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v18 = OUTLINED_FUNCTION_197();
    if (__swift_getEnumTagSinglePayload(v18, v19, v7) != 1)
    {
      sub_2574695E4(v6, &qword_27F87A8A0, &unk_2577487A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_72();
    OUTLINED_FUNCTION_360();
    sub_25772BE98();
  }

  OUTLINED_FUNCTION_3_72();
  sub_25772BE98();
  OUTLINED_FUNCTION_35();
}

void sub_25772C344()
{
  OUTLINED_FUNCTION_31();
  v1 = *(*v0 + 60);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 8);
  v7 = *(*v0 + 16);
  v8 = **v0 + *(*v0 + 56);
  if (v9)
  {
    v10 = *(*v0 + 48);
    sub_25772C494();
    OUTLINED_FUNCTION_13_36();
    sub_25772BE98();
    sub_2574695E4(v8 + v1, &qword_27F87A8A0, &unk_2577487A0);
    sub_25772BE98();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
    OUTLINED_FUNCTION_15_32();
    sub_25772C4F0(v3, v14);
  }

  else
  {
    OUTLINED_FUNCTION_13_36();
    sub_25772BE98();
    sub_2574695E4(v8 + v1, &qword_27F87A8A0, &unk_2577487A0);
    sub_25772BE98();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v7);
  }

  free(v3);
  free(v2);
  free(v5);
  free(v4);
  free(v6);
  OUTLINED_FUNCTION_35();

  free(v18);
}

uint64_t sub_25772C494()
{
  OUTLINED_FUNCTION_267();
  v3 = v2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_25772C4F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25772C548()
{
  v0 = type metadata accessor for FeatureType.StringParameters(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = (v5 - v4);
  v7 = type metadata accessor for FeatureType.IntParameters(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = (v12 - v11);
  v14 = type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_4_66();
  sub_25772C494();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_62();
    sub_25772BE98();
    v18 = *v6;
    OUTLINED_FUNCTION_1_90();
    sub_25772C4F0(v6, v19);
    if (v18)
    {
      return 0x3F676E69727453;
    }

    else
    {
      return 0x676E69727453;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_61();
    sub_25772BE98();
    v21 = *v13;
    OUTLINED_FUNCTION_0_109();
    sub_25772C4F0(v13, v22);
    if (v21)
    {
      return 1064595017;
    }

    else
    {
      return 7630409;
    }
  }
}

void static FeatureType.SequenceParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    OUTLINED_FUNCTION_16_34();

    sub_2574C4598();
  }
}

void FeatureType.SequenceParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_38();
  v10 = type metadata accessor for FeatureType.SequenceParameters(v9);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_25772C494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2577442C0;
  *(v14 + 32) = 0x54746E656D656C65;
  *(v14 + 40) = 0xEB00000000657079;
  *(v14 + 72) = type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v14 + 48));
  FeatureType.SequenceParameters.elementType.getter(boxed_opaque_existential_0);
  *(v14 + 80) = 0x676E6152657A6973;
  *(v14 + 88) = 0xE900000000000065;
  *(v14 + 120) = type metadata accessor for SizeRange();
  __swift_allocate_boxed_opaque_existential_0((v14 + 96));
  FeatureType.SequenceParameters.sizeRange.getter();
  *(v14 + 128) = 0x6E6F6974704F7369;
  *(v14 + 136) = 0xEA00000000006C61;
  v16 = *v0;
  *(v14 + 168) = MEMORY[0x277D839B0];
  *(v14 + 144) = v16;
  sub_257743A74();
  v17 = OUTLINED_FUNCTION_197();
  __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
  (*(v3 + 104))(v1, *MEMORY[0x277D84C38], v2);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void static FeatureType.SequenceParameters.ElementType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_31();
  v43 = type metadata accessor for FeatureType.StringParameters(0);
  v0 = OUTLINED_FUNCTION_4(v43);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  v5 = (v4 - v3);
  v42 = type metadata accessor for FeatureType.IntParameters(0);
  v6 = OUTLINED_FUNCTION_4(v42);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  v12 = type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8819F8, &qword_257777D30);
  OUTLINED_FUNCTION_13(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_29();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v28 = *(v25 + 56);
  sub_25772C494();
  sub_25772C494();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_66();
    sub_25772C494();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_6_62();
      sub_25772BE98();
      if (*v18 == *v5)
      {
        v33 = *(v43 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_14_34();
        sub_25772CD80(v34, v35);
        sub_257743644();
      }

      OUTLINED_FUNCTION_1_90();
      sub_25772C4F0(v5, v29);
      OUTLINED_FUNCTION_1_90();
      v37 = v18;
LABEL_15:
      sub_25772C4F0(v37, v36);
      OUTLINED_FUNCTION_2_74();
      sub_25772C4F0(v27, v41);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_1_90();
    v31 = v18;
  }

  else
  {
    OUTLINED_FUNCTION_4_66();
    sub_25772C494();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_5_61();
      sub_25772BE98();
      if (*v20 == *v11)
      {
        v38 = *(v42 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_14_34();
        sub_25772CD80(v39, v40);
        sub_257743644();
      }

      OUTLINED_FUNCTION_0_109();
      sub_25772C4F0(v11, v32);
      OUTLINED_FUNCTION_0_109();
      v37 = v20;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_0_109();
    v31 = v20;
  }

  sub_25772C4F0(v31, v30);
  sub_2574695E4(v27, &qword_27F8819F8, &qword_257777D30);
LABEL_16:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25772CD80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25772CDF4()
{
  result = type metadata accessor for Proto_SequenceFeatureType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25772CE70()
{
  result = type metadata accessor for FeatureType.IntParameters(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeatureType.StringParameters(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_34()
{
  result = type metadata accessor for FeatureType.SequenceParameters(0);
  v1 = *(result + 20);
  return result;
}

void sub_25772D020(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A8, &qword_257777E20);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_14();
  v9 = type metadata accessor for FeatureType.DictionaryParameters(v8);
  sub_25772D888(v1 + *(v9 + 20), v2);
  v10 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v10);
  sub_2574695E4(v2, &qword_27F87A8A8, &qword_257777E20);
  v12 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    v13 = sub_257743604();
    v15 = v14;
    *a1 = v12;
    sub_25767A064();
    v16 = *(*a1 + 16);
    sub_25767A0B0(v16);
    v12 = *a1;
    *(v12 + 16) = v16 + 1;
    v17 = v12 + 48 * v16;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0xD00000000000002BLL;
    *(v17 + 48) = 0x80000002577820D0;
    *(v17 + 56) = 2;
    *(v17 + 64) = v13;
    *(v17 + 72) = v15;
  }

  *a1 = v12;
}

uint64_t sub_25772D19C()
{
  v1 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  if (*v0 == 1)
  {
    MEMORY[0x259C64E90](63, 0xE100000000000000);
  }

  FeatureType.DictionaryParameters.keyType.getter(v7);
  v8 = sub_25772DBD8();
  v10 = v9;
  OUTLINED_FUNCTION_2_75();
  sub_25772DA68(v7, v11);
  MEMORY[0x259C64E90](v8, v10);

  MEMORY[0x259C64E90](62, 0xE100000000000000);
  MEMORY[0x259C64E90](60, 0xE100000000000000);

  return 0x616E6F6974636944;
}

uint64_t FeatureType.DictionaryParameters.init(keyType:optional:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = &a3[*(type metadata accessor for FeatureType.DictionaryParameters(0) + 20)];
  v11 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  OUTLINED_FUNCTION_15_7(v11);
  v12 = &v10[*(type metadata accessor for Proto_DictionaryFeatureType(0) + 20)];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a2;
  OUTLINED_FUNCTION_3_73();
  sub_25772D950();
  FeatureType.DictionaryParameters.keyType.setter();
  OUTLINED_FUNCTION_2_75();
  return sub_25772DA68(a1, v13);
}

uint64_t FeatureType.DictionaryParameters.keyType.getter@<X0>(_BYTE *a1@<X8>)
{
  v4 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A8, &qword_257777E20);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A10, &qword_257777E28);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_14();
  v22 = type metadata accessor for FeatureType.DictionaryParameters(v21);
  sub_25772D888(v1 + *(v22 + 20), v16);
  v23 = 1;
  if (__swift_getEnumTagSinglePayload(v16, 1, v4) != 1)
  {
    sub_25772D8F8();
    sub_25772D950();
    sub_25772D9A8(v2);
    sub_25772DA68(v10, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType);
    v23 = 0;
  }

  v24 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  __swift_storeEnumTagSinglePayload(v2, v23, 1, v24);
  if (__swift_getEnumTagSinglePayload(v2, 1, v24) != 1)
  {
    return sub_25772D8F8();
  }

  v25 = &a1[*(type metadata accessor for FeatureType.IntParameters(0) + 20)];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a1 = 0;
  swift_storeEnumTagMultiPayload();
  result = __swift_getEnumTagSinglePayload(v2, 1, v24);
  if (result != 1)
  {
    return sub_2574695E4(v2, &qword_27F881A10, &qword_257777E28);
  }

  return result;
}

uint64_t sub_25772D664()
{
  v0 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_25772D950();
  return FeatureType.DictionaryParameters.keyType.setter();
}

uint64_t FeatureType.DictionaryParameters.keyType.setter()
{
  v1 = type metadata accessor for FeatureType.StringParameters(0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = type metadata accessor for FeatureType.IntParameters(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_14();
  v10 = *(type metadata accessor for FeatureType.DictionaryParameters(v9) + 20);
  sub_2574695E4(v0 + v10, &qword_27F87A8A8, &qword_257777E20);
  type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_7_51();
    sub_25772D8F8();
    v5 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_6_63();
    sub_25772D8F8();
  }

  v11 = *(v5 + 20);
  sub_25772D8F8();
  v12 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v0 + v10, 0, 1, v12);
}

uint64_t sub_25772D888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A8, &qword_257777E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25772D8F8()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_25772D950()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_25772D9A8@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for FeatureType.StringParameters(0);
  }

  else
  {
    v2 = type metadata accessor for FeatureType.IntParameters(0);
  }

  v3 = *(v2 + 20);
  sub_25772D8F8();
  *a1 = 0;
  type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25772DA68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void (*FeatureType.DictionaryParameters.keyType.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  FeatureType.DictionaryParameters.keyType.getter(v6);
  return sub_25772DB4C;
}

void sub_25772DB4C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_25772D950();
    FeatureType.DictionaryParameters.keyType.setter();
    OUTLINED_FUNCTION_2_75();
    sub_25772DA68(v3, v5);
  }

  else
  {
    FeatureType.DictionaryParameters.keyType.setter();
  }

  free(v3);

  free(v2);
}

uint64_t sub_25772DBD8()
{
  v0 = type metadata accessor for FeatureType.StringParameters(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = (v5 - v4);
  v7 = type metadata accessor for FeatureType.IntParameters(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = (v12 - v11);
  v14 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_73();
  sub_25772D950();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_7_51();
    sub_25772D8F8();
    v18 = *v6;
    OUTLINED_FUNCTION_1_91();
    sub_25772DA68(v6, v19);
    if (v18)
    {
      return 0x3F676E69727453;
    }

    else
    {
      return 0x676E69727453;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_63();
    sub_25772D8F8();
    v21 = *v13;
    OUTLINED_FUNCTION_0_110();
    sub_25772DA68(v13, v22);
    if (v21)
    {
      return 1064595017;
    }

    else
    {
      return 7630409;
    }
  }
}

void static FeatureType.DictionaryParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = OUTLINED_FUNCTION_0_0();
    v4 = *(type metadata accessor for FeatureType.DictionaryParameters(v3) + 20);

    sub_2574C2CDC();
  }
}

uint64_t FeatureType.DictionaryParameters.customMirror.getter()
{
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
  v11 = type metadata accessor for FeatureType.DictionaryParameters(0);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  sub_25772D950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_257743FF0;
  *(v15 + 32) = 0x6570795479656BLL;
  *(v15 + 40) = 0xE700000000000000;
  *(v15 + 72) = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v15 + 48));
  FeatureType.DictionaryParameters.keyType.getter(boxed_opaque_existential_0);
  *(v15 + 80) = 0x6E6F6974704F7369;
  *(v15 + 88) = 0xEA00000000006C61;
  v17 = *v0;
  *(v15 + 120) = MEMORY[0x277D839B0];
  *(v15 + 96) = v17;
  v18 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v18);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t static FeatureType.DictionaryParameters.KeyType.== infix(_:_:)()
{
  v50 = type metadata accessor for FeatureType.StringParameters(0);
  v1 = OUTLINED_FUNCTION_4(v50);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = (v5 - v4);
  v49 = type metadata accessor for FeatureType.IntParameters(0);
  v7 = OUTLINED_FUNCTION_4(v49);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = OUTLINED_FUNCTION_14();
  v11 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(v10);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A18, &qword_257777E30);
  OUTLINED_FUNCTION_13(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_29();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v49 - v25;
  v27 = *(v24 + 56);
  sub_25772D950();
  sub_25772D950();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_73();
    sub_25772D950();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_7_51();
      sub_25772D8F8();
      if (*v17 != *v6)
      {
        OUTLINED_FUNCTION_1_91();
        sub_25772DA68(v6, v28);
LABEL_13:
        OUTLINED_FUNCTION_1_91();
        v40 = v17;
LABEL_18:
        sub_25772DA68(v40, v39);
        OUTLINED_FUNCTION_2_75();
        sub_25772DA68(v26, v48);
        return 0;
      }

      v32 = *(v50 + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_8_48();
      sub_25772E3F4(v33, v34);
      v35 = sub_257743644();
      OUTLINED_FUNCTION_1_91();
      sub_25772DA68(v6, v36);
      if ((v35 & 1) == 0)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_1_91();
      v38 = v17;
LABEL_16:
      sub_25772DA68(v38, v37);
      OUTLINED_FUNCTION_2_75();
      sub_25772DA68(v26, v46);
      return 1;
    }

    OUTLINED_FUNCTION_1_91();
    v30 = v17;
  }

  else
  {
    OUTLINED_FUNCTION_3_73();
    sub_25772D950();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_6_63();
      sub_25772D8F8();
      if (*v19 == *v0)
      {
        v41 = *(v49 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_8_48();
        sub_25772E3F4(v42, v43);
        v44 = sub_257743644();
        OUTLINED_FUNCTION_0_110();
        sub_25772DA68(v0, v45);
        if (v44)
        {
          OUTLINED_FUNCTION_0_110();
          v38 = v19;
          goto LABEL_16;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_110();
        sub_25772DA68(v0, v31);
      }

      OUTLINED_FUNCTION_0_110();
      v40 = v19;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_0_110();
    v30 = v19;
  }

  sub_25772DA68(v30, v29);
  sub_2574695E4(v26, &qword_27F881A18, &qword_257777E30);
  return 0;
}

uint64_t sub_25772E3F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25772E464()
{
  result = type metadata accessor for Proto_DictionaryFeatureType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25772E588(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  sub_2577435D4();
  v5 = a2 + *(type metadata accessor for Proto_Int64ToDoubleMap(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (*(a1 + 16))
  {
    v29 = a2;
    v30 = *(a1 + 16);
    sub_257484E08();
    v7 = sub_25774107C(a1);
    v9 = v8;
    v10 = 0;
    v11 = a1 + 64;
    v12 = 1;
    v13 = -2;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < v12 << *(a1 + 32))
      {
        v14 = v7 >> 6;
        v15 = v12 << v7;
        if ((*(v11 + 8 * (v7 >> 6)) & (v12 << v7)) == 0)
        {
          goto LABEL_25;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_26;
        }

        v16 = *(*(a1 + 48) + 8 * v7);
        v17 = *(*(a1 + 56) + 8 * v7);
        v18 = *(v4 + 16);
        if (v18 >= *(v4 + 24) >> 1)
        {
          sub_257484E08();
          OUTLINED_FUNCTION_1_92();
        }

        *(v4 + 16) = v18 + 1;
        v19 = v4 + 16 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v17;
        v20 = v12 << *(a1 + 32);
        if (v7 >= v20)
        {
          goto LABEL_27;
        }

        v21 = *(v11 + 8 * v14);
        if ((v21 & v15) == 0)
        {
          goto LABEL_28;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_29;
        }

        if ((v21 & (v13 << (v7 & 0x3F))) != 0)
        {
          OUTLINED_FUNCTION_3_74();
        }

        else
        {
          v23 = v14 << 6;
          v24 = v14 + 1;
          v25 = (a1 + 72 + 8 * v14);
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              sub_257653FC0(v7, v9, v6 & 1);
              OUTLINED_FUNCTION_1_92();
              v20 = __clz(__rbit64(v26)) + v23;
              goto LABEL_18;
            }
          }

          sub_257653FC0(v7, v9, v6 & 1);
          OUTLINED_FUNCTION_1_92();
        }

LABEL_18:
        if (++v10 == v22)
        {

          a2 = v29;
          goto LABEL_23;
        }

        v6 = 0;
        v9 = *(a1 + 36);
        v7 = v20;
        if (v20 < 0)
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
  }

  else
  {

LABEL_23:
    v28 = sub_25772E85C(v4, &qword_27F881A58, &qword_257777F60, sub_25772F398);

    *a2 = v28;
  }
}

uint64_t sub_25772E85C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_257743904();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_25772E910@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2577435D4();
  v4 = a2 + *(type metadata accessor for Proto_StringToInt64Map(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A20, &qword_257777F28);
  result = sub_2577438E4();
  v6 = result;
  v7 = 0;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = result + 64;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v18 = OUTLINED_FUNCTION_2_76(v13 | (v7 << 6));
      *(v12 + v20) |= 1 << v19;
      result = OUTLINED_FUNCTION_0_111(v18, v19);
      if (v22)
      {
        break;
      }

      *(v6 + 16) = v21;

      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        *a2 = v6;
        return result;
      }

      v15 = *(a1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25772EA84(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  sub_2577435D4();
  v5 = a2 + *(type metadata accessor for Proto_Int64ToStringMap(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v6 = *(a1 + 16);
  if (v6)
  {
    v29 = a2;
    sub_2574852B8();
    v9 = sub_25774107C(a1);
    v10 = 0;
    v11 = a1 + 64;
    v30 = a1 + 72;
    v31 = v6;
    v32 = a1 + 64;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(a1 + 32))
      {
        v12 = v9 >> 6;
        if ((*(v11 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_25;
        }

        if (*(a1 + 36) != v7)
        {
          goto LABEL_26;
        }

        v33 = v8;
        v34 = v10;
        v35 = v7;
        v36 = *(*(a1 + 48) + 8 * v9);
        v13 = (*(a1 + 56) + 16 * v9);
        v14 = *v13;
        v15 = v13[1];
        v16 = a1;
        v18 = *(v4 + 16);
        v17 = *(v4 + 24);

        if (v18 >= v17 >> 1)
        {
          sub_2574852B8();
        }

        *(v4 + 16) = v18 + 1;
        v19 = (v4 + 24 * v18);
        v19[4] = v36;
        v19[5] = v14;
        v19[6] = v15;
        v20 = 1 << *(v16 + 32);
        if (v9 >= v20)
        {
          goto LABEL_27;
        }

        a1 = v16;
        v11 = v32;
        v21 = *(v32 + 8 * v12);
        if ((v21 & (1 << v9)) == 0)
        {
          goto LABEL_28;
        }

        if (*(a1 + 36) != v35)
        {
          goto LABEL_29;
        }

        if ((v21 & (-2 << (v9 & 0x3F))) != 0)
        {
          OUTLINED_FUNCTION_3_74();
          v22 = v31;
        }

        else
        {
          v23 = v12 << 6;
          v24 = v12 + 1;
          v22 = v31;
          v25 = (v30 + 8 * v12);
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              sub_257653FC0(v9, v35, v33 & 1);
              v20 = __clz(__rbit64(v26)) + v23;
              goto LABEL_18;
            }
          }

          sub_257653FC0(v9, v35, v33 & 1);
        }

LABEL_18:
        v10 = v34 + 1;
        if (v34 + 1 == v22)
        {

          a2 = v29;
          goto LABEL_23;
        }

        v8 = 0;
        v7 = *(a1 + 36);
        v9 = v20;
        if (v20 < 0)
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
  }

  else
  {

LABEL_23:
    v28 = sub_25772E85C(v4, &qword_27F881A28, &qword_257777F30, sub_25772F66C);

    *a2 = v28;
  }
}

uint64_t sub_25772ED48()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A40, &qword_257777F48);
  result = sub_2577438E4();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = *(v1 + 48);
      v14 = *(v1 + 56);
      v15 = OUTLINED_FUNCTION_2_76(v10 | (v4 << 6));
      *(v9 + v17) |= 1 << v16;
      result = OUTLINED_FUNCTION_0_111(v15, v16);
      if (v19)
      {
        break;
      }

      *(v3 + 16) = v18;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(v1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25772EE64()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v29 = MEMORY[0x277D84F90];
    sub_2574852F8();
    v3 = v29;
    v6 = sub_25774107C(v1);
    v7 = 0;
    v8 = v1 + 64;
    v24 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v1 + 32))
      {
        v9 = v6 >> 6;
        if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_23;
        }

        if (*(v1 + 36) != v4)
        {
          goto LABEL_24;
        }

        v25 = v5;
        v26 = v7;
        v27 = v4;
        v28 = *(*(v1 + 48) + 8 * v6);
        v10 = (*(v1 + 56) + 16 * v6);
        v12 = *v10;
        v11 = v10[1];
        v13 = *(v29 + 16);
        v14 = *(v29 + 24);

        if (v13 >= v14 >> 1)
        {
          sub_2574852F8();
        }

        *(v29 + 16) = v13 + 1;
        v15 = (v29 + 24 * v13);
        v15[4] = v28;
        v15[5] = v12;
        v15[6] = v11;
        v16 = 1 << *(v1 + 32);
        if (v6 >= v16)
        {
          goto LABEL_25;
        }

        v8 = v1 + 64;
        v17 = *(v1 + 64 + 8 * v9);
        if ((v17 & (1 << v6)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v1 + 36) != v27)
        {
          goto LABEL_27;
        }

        v18 = v17 & (-2 << (v6 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v9 << 6;
          v20 = v9 + 1;
          v21 = (v1 + 72 + 8 * v9);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_257653FC0(v6, v27, v25 & 1);
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_18;
            }
          }

          sub_257653FC0(v6, v27, v25 & 1);
        }

LABEL_18:
        v7 = v26 + 1;
        if (v26 + 1 == v24)
        {
          goto LABEL_21;
        }

        v5 = 0;
        v4 = *(v1 + 36);
        v6 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_25772E85C(v3, &qword_27F881A48, &qword_257777F50, sub_25772F93C);
  }
}

uint64_t sub_25772F0C4(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2577439B4();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;
    v12 = sub_25765407C(v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A70, &qword_257777F78);
      sub_2577438A4();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v20[6] + 8 * v12) = v8;
    *(v20[7] + 8 * v12) = v9;
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v6;
    v20[2] = v23;
    a2 = 1;
    if (v26 == v6)
    {
    }
  }

  sub_2577409E0(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_25765407C(v8);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  MEMORY[0x259C65590](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A38, &qword_257777F40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x259C65580](v24);
  }

LABEL_22:
  sub_257743834();
  MEMORY[0x259C64E90](0xD00000000000001BLL, 0x8000000257782140);
  sub_257743884();
  MEMORY[0x259C64E90](39, 0xE100000000000000);
  result = sub_2577438C4();
  __break(1u);
  return result;
}

uint64_t sub_25772F398(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2577439B4();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;
    v12 = sub_25765407C(v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A60, &qword_257777F68);
      sub_2577438A4();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v20[6] + 8 * v12) = v8;
    *(v20[7] + 8 * v12) = v9;
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v6;
    v20[2] = v23;
    a2 = 1;
    if (v26 == v6)
    {
    }
  }

  sub_2577409F4(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_25765407C(v8);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  MEMORY[0x259C65590](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A38, &qword_257777F40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x259C65580](v24);
  }

LABEL_22:
  sub_257743834();
  MEMORY[0x259C64E90](0xD00000000000001BLL, 0x8000000257782140);
  sub_257743884();
  MEMORY[0x259C64E90](39, 0xE100000000000000);
  result = sub_2577438C4();
  __break(1u);
  return result;
}

uint64_t sub_25772F66C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v28 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2577439B4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    v10 = sub_25765407C(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A30, &qword_257777F38);
      sub_2577438A4();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v21[6] + 8 * v15) = v7;
    v22 = (v21[7] + 16 * v15);
    *v22 = v6;
    v22[1] = v8;
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v21[2] = v25;
    ++v4;
    a2 = 1;
  }

  sub_257740BE4(v14, a2 & 1);
  v18 = *a3;
  v19 = sub_25765407C(v7);
  if ((v16 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v15 = v19;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  MEMORY[0x259C65590](v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A38, &qword_257777F40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x259C65580](v26);
  }

LABEL_22:
  sub_257743834();
  MEMORY[0x259C64E90](0xD00000000000001BLL, 0x8000000257782140);
  sub_257743884();
  MEMORY[0x259C64E90](39, 0xE100000000000000);
  result = sub_2577438C4();
  __break(1u);
  return result;
}

uint64_t sub_25772F93C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v28 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2577439B4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    v10 = sub_25765407C(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A50, &qword_257777F58);
      sub_2577438A4();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v21[6] + 8 * v15) = v7;
    v22 = (v21[7] + 16 * v15);
    *v22 = v6;
    v22[1] = v8;
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v21[2] = v25;
    ++v4;
    a2 = 1;
  }

  sub_257740BF8(v14, a2 & 1);
  v18 = *a3;
  v19 = sub_25765407C(v7);
  if ((v16 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v15 = v19;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  MEMORY[0x259C65590](v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A38, &qword_257777F40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x259C65580](v26);
  }

LABEL_22:
  sub_257743834();
  MEMORY[0x259C64E90](0xD00000000000001BLL, 0x8000000257782140);
  sub_257743884();
  MEMORY[0x259C64E90](39, 0xE100000000000000);
  result = sub_2577438C4();
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_111@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v5 = (v4[6] + 16 * a2);
  *v5 = v3;
  v5[1] = result;
  *(v4[7] + 8 * a2) = v2;
  v6 = v4[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_76@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + 16 * a1);
  v4 = *(v2 + 8 * a1);
  v6 = *v3;
  return v3[1];
}

void NeuralNetwork.Layer.ConvolutionParameters.init(outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)()
{
  OUTLINED_FUNCTION_31();
  v40 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811F8, &unk_257777F90);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_32_3();
  v18 = *v5;
  v19 = v5[1];
  v21 = *v3;
  v20 = v3[1];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v22 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
  if (qword_27F879358 != -1)
  {
    swift_once();
  }

  *(v13 + v22) = qword_27F87BEF0;
  if (v11 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = v20;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v13 + v22);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v25);
    OUTLINED_FUNCTION_1_63();
    v24 = v26;
    *(v13 + v22) = v26;
  }

  OUTLINED_FUNCTION_447();
  *(v24 + 16) = v11;
  if (v9 < 0)
  {
    goto LABEL_18;
  }

  v27 = *(v13 + v22);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v13 + v22);
  if ((v28 & 1) == 0)
  {
    v30 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v30);
    OUTLINED_FUNCTION_1_63();
    v29 = v31;
    *(v13 + v22) = v31;
  }

  OUTLINED_FUNCTION_447();
  *(v29 + 24) = v9;
  if (v7 < 0)
  {
    goto LABEL_19;
  }

  v32 = *(v13 + v22);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v13 + v22);
  if ((v33 & 1) == 0)
  {
    v35 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v35);
    OUTLINED_FUNCTION_1_63();
    v34 = v36;
    *(v13 + v22) = v36;
  }

  OUTLINED_FUNCTION_447();
  *(v34 + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  v37 = OUTLINED_FUNCTION_13_6();
  *(v37 + 16) = xmmword_257743FF0;
  if (v18 < 0)
  {
    goto LABEL_20;
  }

  *(v37 + 32) = v18;
  if (v19 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v37 + 40) = v19;
  sub_257531098(v37);
  v38 = OUTLINED_FUNCTION_13_6();
  *(v38 + 16) = xmmword_257743FF0;
  if (v21 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v38 + 32) = v21;
  if ((v39 & 0x8000000000000000) == 0)
  {
    *(v38 + 40) = v39;
    sub_257531170();
    OUTLINED_FUNCTION_72_4();
    NeuralNetwork.Layer.ConvolutionParameters.padding.setter(v0);
    sub_2574695E4(v40, &qword_27F8811F8, &unk_257777F90);
    OUTLINED_FUNCTION_35();
    return;
  }

LABEL_23:
  __break(1u);
}

void NeuralNetwork.Layer.ConvolutionParameters.propertyDescriptions.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v3 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v88[2] = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v88[1] = v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = v88 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811F8, &unk_257777F90);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_28_31();
  v22 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(v21);
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v88[3] = v88 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v31 = swift_allocObject();
  v32 = OUTLINED_FUNCTION_54_8(v31, xmmword_257745520);
  v32[2].n128_u64[0] = v33;
  v32[2].n128_u64[1] = 0xEF736C656E6E6168;
  v34 = *(v2 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  OUTLINED_FUNCTION_296();
  v35 = v34[1].n128_i64[0];
  if (v35 < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v88[0] = v28;
  v96 = v35;
  v31[3].n128_u64[0] = sub_257743974();
  v31[3].n128_u64[1] = v36;
  OUTLINED_FUNCTION_47_8();
  v31[4].n128_u64[0] = v37 & 0xFFFFFFFFFFFFLL | 0x4320000000000000;
  v31[4].n128_u64[1] = 0xEF736C656E6E6168;
  OUTLINED_FUNCTION_296();
  if ((v34[1].n128_u64[1] & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v95 = v34[1].n128_i64[1];
  v31[5].n128_u64[0] = sub_257743974();
  v31[5].n128_u64[1] = v38;
  OUTLINED_FUNCTION_63_6();
  v31[6].n128_u64[0] = v39;
  v31[6].n128_u64[1] = v40;
  OUTLINED_FUNCTION_296();
  v41 = v34[2].n128_i64[0];
  if (v41 < 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    v84 = v34[1].n128_i64[0];
    sub_257469388();
    v34 = v85;
    goto LABEL_21;
  }

  v89 = v3;
  v92 = v41;
  v31[7].n128_u64[0] = sub_257743974();
  v31[7].n128_u64[1] = v42;
  OUTLINED_FUNCTION_47_8();
  v31[8].n128_u64[0] = v43 & 0xFFFFFFFFFFFFLL | 0x5320000000000000;
  v31[8].n128_u64[1] = 0xEB00000000657A69;
  OUTLINED_FUNCTION_38_12();
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
  v92 = OUTLINED_FUNCTION_14_35(v90);
  v93 = v44;
  v45 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v45);
  OUTLINED_FUNCTION_38_12();
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
  v46 = OUTLINED_FUNCTION_14_35(v91);
  MEMORY[0x259C64E90](v46);

  v47 = v93;
  v31[9].n128_u64[0] = v92;
  v31[9].n128_u64[1] = v47;
  OUTLINED_FUNCTION_28_23();
  v31[10].n128_u64[0] = v48;
  v31[10].n128_u64[1] = 0xE700000000000000;
  OUTLINED_FUNCTION_38_12();
  NeuralNetwork.Layer.ConvolutionParameters.strides.getter();
  v92 = OUTLINED_FUNCTION_14_35(v90);
  v93 = v49;
  v50 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v50);
  OUTLINED_FUNCTION_38_12();
  NeuralNetwork.Layer.ConvolutionParameters.strides.getter();
  v51 = OUTLINED_FUNCTION_14_35(v91);
  MEMORY[0x259C64E90](v51);

  v52 = v93;
  v31[11].n128_u64[0] = v92;
  v31[11].n128_u64[1] = v52;
  OUTLINED_FUNCTION_32_19();
  v31[12].n128_u64[0] = v53;
  v31[12].n128_u64[1] = v54;
  OUTLINED_FUNCTION_38_12();
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.getter();
  v92 = OUTLINED_FUNCTION_14_35(v90);
  v93 = v55;
  v56 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v56);
  OUTLINED_FUNCTION_38_12();
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.getter();
  v57 = OUTLINED_FUNCTION_14_35(v91);
  MEMORY[0x259C64E90](v57);

  v58 = v93;
  v31[13].n128_u64[0] = v92;
  v31[13].n128_u64[1] = v58;
  v97 = v31;
  NeuralNetwork.Layer.ConvolutionParameters.outputShape.getter();
  if (v94 != 1)
  {
    v59 = v93;
    v90 = v92;
    v92 = sub_257743974();
    v93 = v60;
    v61 = OUTLINED_FUNCTION_20_30();
    MEMORY[0x259C64E90](v61);
    v90 = v59;
    v62 = sub_257743974();
    MEMORY[0x259C64E90](v62);

    v63 = v93;
    sub_257469388();
    v31 = v64;
    v64[1].n128_u64[0] = 7;
    OUTLINED_FUNCTION_30_19();
    v67 = OUTLINED_FUNCTION_56_7(v65, v66);
    v67[15].n128_u64[1] = v63;
    v97 = v67;
  }

  v68 = v89;
  OUTLINED_FUNCTION_296();
  sub_257487308();
  v69 = 1;
  OUTLINED_FUNCTION_155(v16, 1, v68);
  if (!v70)
  {
    sub_257734A28();
    OUTLINED_FUNCTION_23_31();
    sub_257734A80();
    sub_257732934();
    OUTLINED_FUNCTION_22_28();
    sub_257734AD8();
    v69 = 0;
  }

  __swift_storeEnumTagSinglePayload(v1, v69, 1, v22);
  v71 = OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_155(v71, v72, v22);
  if (v70)
  {
    sub_2574695E4(v1, &qword_27F8811F8, &unk_257777F90);
  }

  else
  {
    sub_257734A28();
    OUTLINED_FUNCTION_3_75();
    sub_257734A80();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v74 = 1701667155;
    }

    else
    {
      v74 = 0x64696C6156;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v75 = 0xE400000000000000;
    }

    else
    {
      v75 = 0xE500000000000000;
    }

    sub_257734AD8();
    v76 = v31[1].n128_u64[0];
    if (v76 >= v31[1].n128_u64[1] >> 1)
    {
      sub_257469388();
      v31 = v87;
    }

    v31[1].n128_u64[0] = v76 + 1;
    v77 = &v31[2 * v76];
    v77[2].n128_u64[0] = 0x676E6964646150;
    v77[2].n128_u64[1] = 0xE700000000000000;
    v77[3].n128_u64[0] = v74;
    v77[3].n128_u64[1] = v75;
    v97 = v31;
    v78 = NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.propertyDescriptions.getter();
    sub_25763CEB8(v78);
    OUTLINED_FUNCTION_2_77();
    sub_257734AD8();
  }

  v79 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
  OUTLINED_FUNCTION_296();
  LODWORD(v31) = v34->n128_u8[v79];
  v34 = v97;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v80 = v34[1].n128_u64[0];
  if (v80 >= v34[1].n128_u64[1] >> 1)
  {
    sub_257469388();
    v34 = v86;
  }

  v81 = 0xE500000000000000;
  if (v31)
  {
    v81 = 0xE400000000000000;
  }

  v82 = 1702195828;
  v34[1].n128_u64[0] = v80 + 1;
  v83 = &v34[2 * v80];
  strcpy(v83 + 32, "Deconvolution");
  *(v83 + 23) = -4864;
  if (!v31)
  {
    v82 = 0x65736C6166;
  }

  *(v83 + 6) = v82;
  *(v83 + 7) = v81;
  OUTLINED_FUNCTION_35();
}

__n128 *NeuralNetwork.Layer.Convolution3DParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_54_8(v1, xmmword_257745520);
  v2[2].n128_u64[0] = v3;
  v2[2].n128_u64[1] = 0xEF736C656E6E6168;
  v4 = *(v0 + *(type metadata accessor for Proto_Convolution3DLayerParams(0) + 20));
  OUTLINED_FUNCTION_296();
  v64 = v4[4];
  OUTLINED_FUNCTION_263();
  v1[3].n128_u64[0] = sub_257743974();
  v1[3].n128_u64[1] = v5;
  strcpy(&v1[4], "Input Channels");
  v1[4].n128_u8[15] = -18;
  OUTLINED_FUNCTION_296();
  v63 = v4[5];
  OUTLINED_FUNCTION_263();
  v1[5].n128_u64[0] = sub_257743974();
  v1[5].n128_u64[1] = v6;
  OUTLINED_FUNCTION_63_6();
  v1[6].n128_u64[0] = v7;
  v1[6].n128_u64[1] = v8;
  OUTLINED_FUNCTION_296();
  v62 = v4[6];
  OUTLINED_FUNCTION_263();
  v1[7].n128_u64[0] = sub_257743974();
  v1[7].n128_u64[1] = v9;
  OUTLINED_FUNCTION_47_8();
  v1[8].n128_u64[0] = v10 & 0xFFFFFFFFFFFFLL | 0x5320000000000000;
  v1[8].n128_u64[1] = 0xEB00000000657A69;
  OUTLINED_FUNCTION_296();
  v61 = v4[7];
  OUTLINED_FUNCTION_263();
  v58 = sub_257743974();
  v59 = v11;
  v12 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v12);
  OUTLINED_FUNCTION_296();
  v60 = v4[8];
  OUTLINED_FUNCTION_263();
  v13 = sub_257743974();
  MEMORY[0x259C64E90](v13);

  v14 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v14);
  OUTLINED_FUNCTION_296();
  v56 = v4[9];
  OUTLINED_FUNCTION_263();
  v15 = sub_257743974();
  MEMORY[0x259C64E90](v15);

  v1[9].n128_u64[0] = v58;
  v1[9].n128_u64[1] = v59;
  OUTLINED_FUNCTION_28_23();
  v1[10].n128_u64[0] = v16;
  v1[10].n128_u64[1] = 0xE700000000000000;
  OUTLINED_FUNCTION_296();
  v57 = v4[10];
  OUTLINED_FUNCTION_263();
  v53 = sub_257743974();
  v54 = v17;
  v18 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v18);
  OUTLINED_FUNCTION_296();
  v55 = v4[11];
  OUTLINED_FUNCTION_263();
  v19 = sub_257743974();
  MEMORY[0x259C64E90](v19);

  v20 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v20);
  OUTLINED_FUNCTION_296();
  v51 = v4[12];
  OUTLINED_FUNCTION_263();
  v21 = sub_257743974();
  MEMORY[0x259C64E90](v21);

  v1[11].n128_u64[0] = v53;
  v1[11].n128_u64[1] = v54;
  OUTLINED_FUNCTION_32_19();
  v1[12].n128_u64[0] = v22;
  v1[12].n128_u64[1] = v23;
  OUTLINED_FUNCTION_296();
  v52 = v4[13];
  OUTLINED_FUNCTION_263();
  v48 = sub_257743974();
  v49 = v24;
  v25 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v25);
  OUTLINED_FUNCTION_296();
  v50 = v4[14];
  OUTLINED_FUNCTION_263();
  v26 = sub_257743974();
  MEMORY[0x259C64E90](v26);

  v27 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v27);
  OUTLINED_FUNCTION_296();
  v46 = v4[15];
  OUTLINED_FUNCTION_263();
  v28 = sub_257743974();
  MEMORY[0x259C64E90](v28);

  v1[13].n128_u64[0] = v48;
  v1[13].n128_u64[1] = v49;
  v29 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
  OUTLINED_FUNCTION_296();
  v30 = *(v4 + v29);
  v31 = *(v30 + 16);
  if (v31)
  {
    v47 = MEMORY[0x277D84F90];

    sub_257483754(0, v31, 0);
    v32 = 32;
    do
    {
      v45 = *(v30 + v32);
      v33 = sub_257743974();
      v35 = v34;
      v37 = *(v47 + 16);
      v36 = *(v47 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_257483754((v36 > 1), v37 + 1, 1);
      }

      *(v47 + 16) = v37 + 1;
      v38 = v47 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      v32 += 8;
      --v31;
    }

    while (v31);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    OUTLINED_FUNCTION_20_30();
    sub_257743604();
    v40 = v39;

    sub_257469388();
    v1 = v41;
    v41[1].n128_u64[0] = 7;
    OUTLINED_FUNCTION_30_19();
    OUTLINED_FUNCTION_56_7(v42, v43)[31] = v40;
  }

  return v1;
}

void NeuralNetwork.Layer.ConvolutionParameters.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v52 = (&v50 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_64();
  v54 = type metadata accessor for NeuralNetwork.WeightParameters();
  v11 = OUTLINED_FUNCTION_4(v54);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v53 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_28_31();
  v21 = type metadata accessor for Proto_WeightParams(v20);
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v27 = (v26 - v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F90, &unk_257775F60);
  v28 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v51 = *(v3 + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2577442B0;
  v50 = v28;
  v30 = (v29 + v28);
  OUTLINED_FUNCTION_48_8();
  *v30 = v31;
  v30[1] = 0xE700000000000000;
  v32 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  OUTLINED_FUNCTION_296();
  sub_257487308();
  v33 = OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_155(v33, v34, v21);
  if (v35)
  {
    *v27 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_65_7(xmmword_257745740);
    v36 = v27 + *(v21 + 36);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v37 = *(v21 + 40);
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    v42 = OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_155(v42, v43, v21);
    if (!v35)
    {
      sub_2574695E4(v2, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_257734A28();
  }

  v44 = v55;
  sub_2576FF45C(v27, (v30 + *(v55 + 48)));
  NeuralNetwork.Layer.ConvolutionParameters.bias.getter();
  OUTLINED_FUNCTION_155(v1, 1, v54);
  if (v35)
  {
    sub_2574695E4(v1, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    OUTLINED_FUNCTION_10_50();
    sub_257734A28();
    v45 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
    OUTLINED_FUNCTION_296();
    if (*(v32 + v45) == 1)
    {
      v46 = *(v44 + 48);
      v47 = v52;
      *v52 = 1935763778;
      *(v47 + 8) = 0xE400000000000000;
      sub_257734A80();
      sub_257469D34();
      v49 = v48;
      OUTLINED_FUNCTION_1_93();
      sub_257734AD8();
      *(v49 + 16) = 2;
      sub_25749E9A8(v47, v49 + v50 + v51);
    }

    else
    {
      OUTLINED_FUNCTION_1_93();
      sub_257734AD8();
    }
  }

  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.Convolution3DParameters.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v1 = *(v65 - 8);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v64 = (&v59 - v4);
  v5 = type metadata accessor for NeuralNetwork.WeightParameters();
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v63 = (v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v62 = v15 - v16;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  v23 = type metadata accessor for Proto_WeightParams(0);
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_11();
  v59 = (v27 - v28);
  MEMORY[0x28223BE20](v29);
  v31 = (&v59 - v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F90, &unk_257775F60);
  v32 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v61 = *(v1 + 72);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2577442B0;
  v60 = v32;
  v34 = (v33 + v32);
  OUTLINED_FUNCTION_48_8();
  *v34 = v35;
  v34[1] = 0xE700000000000000;
  v36 = *(v0 + *(type metadata accessor for Proto_Convolution3DLayerParams(0) + 20));
  OUTLINED_FUNCTION_296();
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    *v31 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    v37 = v31 + *(v23 + 36);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v38 = *(v23 + 40);
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    OUTLINED_FUNCTION_155(v22, 1, v23);
    if (!v43)
    {
      sub_2574695E4(v22, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_257734A28();
  }

  v44 = v65;
  sub_2576FF45C(v31, (v34 + *(v65 + 48)));
  OUTLINED_FUNCTION_296();
  sub_257487308();
  v45 = OUTLINED_FUNCTION_171_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, v46, v23);
  sub_2574695E4(v20, &qword_27F87A1A0, &qword_257745750);
  if (EnumTagSinglePayload != 1)
  {
    OUTLINED_FUNCTION_296();
    if (*(v36 + 64) == 1)
    {
      v48 = v62;
      sub_257487308();
      OUTLINED_FUNCTION_155(v48, 1, v23);
      if (v43)
      {
        v55 = v59;
        *v59 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_3_24(xmmword_257745740);
        v49 = v55 + *(v23 + 36);
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        v50 = *(v23 + 40);
        type metadata accessor for Proto_QuantizationParams(0);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
        OUTLINED_FUNCTION_155(v48, 1, v23);
        if (!v43)
        {
          sub_2574695E4(v48, &qword_27F87A1A0, &qword_257745750);
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_112();
        v55 = v59;
        sub_257734A28();
      }

      sub_2576FF45C(v55, v63);
      v56 = *(v44 + 48);
      v57 = v64;
      *v64 = 1935763778;
      *(v57 + 8) = 0xE400000000000000;
      OUTLINED_FUNCTION_10_50();
      sub_257734A28();
      sub_257469D34();
      *(v58 + 16) = 2;
      sub_25749E9A8(v57, v58 + v60 + v61);
    }
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  OUTLINED_FUNCTION_18_45();
  result = *(v1 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.kernelChannelCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  OUTLINED_FUNCTION_18_45();
  result = *(v1 + 24);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.groupCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  OUTLINED_FUNCTION_18_45();
  result = *(v1 + 32);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter()
{
  v2 = OUTLINED_FUNCTION_16_1();
  v3 = type metadata accessor for Proto_ConvolutionLayerParams(v2);
  OUTLINED_FUNCTION_206(v3);
  result = OUTLINED_FUNCTION_18_45();
  v5 = *(v1 + 40);
  if (v5[2] != 2)
  {
    goto LABEL_5;
  }

  v6 = v5[4];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v5[5];
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_6:
      *v0 = v6;
      v0[1] = v7;
      return result;
    }

    __break(1u);
LABEL_5:
    v6 = 3;
    v7 = 3;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.strides.getter()
{
  v2 = OUTLINED_FUNCTION_16_1();
  v3 = type metadata accessor for Proto_ConvolutionLayerParams(v2);
  OUTLINED_FUNCTION_206(v3);
  result = OUTLINED_FUNCTION_18_45();
  v5 = *(v1 + 48);
  if (v5[2] != 2)
  {
    goto LABEL_5;
  }

  v6 = v5[4];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v5[5];
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_6:
      *v0 = v6;
      v0[1] = v7;
      return result;
    }

    __break(1u);
LABEL_5:
    v6 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.getter()
{
  v2 = OUTLINED_FUNCTION_16_1();
  v3 = type metadata accessor for Proto_ConvolutionLayerParams(v2);
  OUTLINED_FUNCTION_206(v3);
  result = OUTLINED_FUNCTION_18_45();
  v5 = *(v1 + 56);
  if (v5[2] != 2)
  {
    goto LABEL_5;
  }

  v6 = v5[4];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v5[5];
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_6:
      *v0 = v6;
      v0[1] = v7;
      return result;
    }

    __break(1u);
LABEL_5:
    v6 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.outputShape.getter()
{
  v2 = OUTLINED_FUNCTION_16_1();
  v3 = type metadata accessor for Proto_ConvolutionLayerParams(v2);
  OUTLINED_FUNCTION_206(v3);
  v4 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
  result = OUTLINED_FUNCTION_18_45();
  v6 = *(v1 + v4);
  if (v6[2] == 2)
  {
    v7 = v6[4];
    if (v7 < 0)
    {
      __break(1u);
    }

    else
    {
      v8 = v6[5];
      if ((v8 & 0x8000000000000000) == 0)
      {
        *v0 = v7;
        *(v0 + 8) = v8;
        *(v0 + 16) = 0;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 1;
  }

  return result;
}

void NeuralNetwork.Layer.ConvolutionParameters.padding.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_16_1();
  v3 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_64();
  v13 = type metadata accessor for Proto_ConvolutionLayerParams(v12);
  OUTLINED_FUNCTION_206(v13);
  OUTLINED_FUNCTION_296();
  sub_257487308();
  v14 = 1;
  OUTLINED_FUNCTION_155(v1, 1, v3);
  if (!v15)
  {
    OUTLINED_FUNCTION_9_47();
    sub_257734A28();
    OUTLINED_FUNCTION_23_31();
    sub_257734A80();
    sub_257732934();
    OUTLINED_FUNCTION_22_28();
    sub_257734AD8();
    v14 = 0;
  }

  v16 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  __swift_storeEnumTagSinglePayload(v0, v14, 1, v16);
  OUTLINED_FUNCTION_35();
}

void *NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.propertyDescriptions.getter()
{
  v1 = type metadata accessor for NeuralNetwork.SamePaddingParameters();
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_35_15();
  valid = type metadata accessor for NeuralNetwork.ValidPaddingParameters();
  v6 = OUTLINED_FUNCTION_13(valid);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_17_3();
  v10 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(v9);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_75();
  sub_257734A80();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_8_49();
    sub_257734A28();
    if (*v0)
    {
      v14 = &unk_2868B32C0;
    }

    else
    {
      v14 = &unk_2868B3300;
    }

    if (*(v0 + 8))
    {
      v15 = v14;
    }

    else
    {
      v15 = &unk_2868B3300;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_52();
    sub_257734A28();
    v15 = NeuralNetwork.ValidPaddingParameters.propertyDescriptions.getter();
    OUTLINED_FUNCTION_19_36();
  }

  sub_257734AD8();
  return v15;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.weights.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_211();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_19_30();
  v11 = type metadata accessor for Proto_WeightParams(v10);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = OUTLINED_FUNCTION_17_3();
  v16 = type metadata accessor for Proto_ConvolutionLayerParams(v15);
  OUTLINED_FUNCTION_206(v16);
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_72_4();
  v17 = OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_155(v17, v18, v11);
  if (v19)
  {
    *v1 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    v20 = v1 + *(v11 + 36);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v21 = *(v11 + 40);
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    v26 = OUTLINED_FUNCTION_50_3();
    OUTLINED_FUNCTION_155(v26, v27, v11);
    if (!v19)
    {
      sub_2574695E4(v2, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_257734A28();
  }

  return sub_2576FF45C(v1, a1);
}

void NeuralNetwork.Layer.ConvolutionParameters.bias.getter()
{
  OUTLINED_FUNCTION_31();
  v31 = v2;
  v3 = type metadata accessor for Proto_WeightParams(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_211();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v19 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_72_4();
  v20 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v3);
  sub_2574695E4(v18, &qword_27F87A1A0, &qword_257745750);
  v22 = EnumTagSinglePayload == 1;
  v23 = v31;
  if (!v22)
  {
    sub_257487308();
    OUTLINED_FUNCTION_155(v1, 1, v3);
    if (v22)
    {
      *v9 = MEMORY[0x277D84F90];
      *(v9 + 8) = xmmword_257745740;
      *(v9 + 24) = xmmword_257745740;
      *(v9 + 40) = xmmword_257745740;
      *(v9 + 56) = 0;
      v24 = v9 + *(v3 + 36);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v25 = *(v3 + 40);
      type metadata accessor for Proto_QuantizationParams(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
      OUTLINED_FUNCTION_155(v1, 1, v3);
      if (!v22)
      {
        sub_2574695E4(v1, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_112();
      sub_257734A28();
    }

    sub_2576FF45C(v9, v23);
    v20 = 0;
  }

  v30 = type metadata accessor for NeuralNetwork.WeightParameters();
  __swift_storeEnumTagSinglePayload(v23, v20, 1, v30);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257731C9C()
{
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for Proto_ConvolutionLayerParams(v2);
  OUTLINED_FUNCTION_206(v3);
  v4 = *v0;
  OUTLINED_FUNCTION_18_45();
  return *(v1 + v4);
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = OUTLINED_FUNCTION_376();
    v5 = *(type metadata accessor for Proto_ConvolutionLayerParams(v4) + 20);
    v6 = *(v2 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v9);
      OUTLINED_FUNCTION_1_63();
      v8 = v10;
      *(v3 + v5) = v10;
    }

    result = OUTLINED_FUNCTION_237_0();
    *(v8 + 16) = v1;
  }

  return result;
}

void (*NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.modify())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = OUTLINED_FUNCTION_37_16(v2);
  OUTLINED_FUNCTION_49_9(v3);
  result = OUTLINED_FUNCTION_296();
  v5 = *(v0 + 16);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v5;
    return sub_257731DC8;
  }

  return result;
}

void sub_257731DC8(uint64_t a1)
{
  OUTLINED_FUNCTION_46_13(a1);
  if (v6)
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
  v7 = OUTLINED_FUNCTION_58_4();
  v8 = *(v4 + v2);
  if ((v7 & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_448(v9);
    OUTLINED_FUNCTION_1_63();
    v8 = v10;
    *(v5 + v4) = v10;
  }

  OUTLINED_FUNCTION_447();
  *(v8 + 16) = v3;

  free(v1);
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.kernelChannelCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = OUTLINED_FUNCTION_376();
    v5 = *(type metadata accessor for Proto_ConvolutionLayerParams(v4) + 20);
    v6 = *(v2 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v9);
      OUTLINED_FUNCTION_1_63();
      v8 = v10;
      *(v3 + v5) = v10;
    }

    result = OUTLINED_FUNCTION_237_0();
    *(v8 + 24) = v1;
  }

  return result;
}

void (*NeuralNetwork.Layer.ConvolutionParameters.kernelChannelCount.modify())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = OUTLINED_FUNCTION_37_16(v2);
  OUTLINED_FUNCTION_49_9(v3);
  result = OUTLINED_FUNCTION_296();
  v5 = *(v0 + 24);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v5;
    return sub_257731F48;
  }

  return result;
}

void sub_257731F48(uint64_t a1)
{
  OUTLINED_FUNCTION_46_13(a1);
  if (v6)
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
  v7 = OUTLINED_FUNCTION_58_4();
  v8 = *(v4 + v2);
  if ((v7 & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_448(v9);
    OUTLINED_FUNCTION_1_63();
    v8 = v10;
    *(v5 + v4) = v10;
  }

  OUTLINED_FUNCTION_447();
  *(v8 + 24) = v3;

  free(v1);
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.groupCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = OUTLINED_FUNCTION_376();
    v5 = *(type metadata accessor for Proto_ConvolutionLayerParams(v4) + 20);
    v6 = *(v2 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v9);
      OUTLINED_FUNCTION_1_63();
      v8 = v10;
      *(v3 + v5) = v10;
    }

    result = OUTLINED_FUNCTION_237_0();
    *(v8 + 32) = v1;
  }

  return result;
}

void (*NeuralNetwork.Layer.ConvolutionParameters.groupCount.modify())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = OUTLINED_FUNCTION_37_16(v2);
  OUTLINED_FUNCTION_49_9(v3);
  result = OUTLINED_FUNCTION_296();
  v5 = *(v0 + 32);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v5;
    return sub_2577320C8;
  }

  return result;
}

void sub_2577320C8(uint64_t a1)
{
  OUTLINED_FUNCTION_46_13(a1);
  if (v6)
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
  v7 = OUTLINED_FUNCTION_58_4();
  v8 = *(v4 + v2);
  if ((v7 & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_448(v9);
    OUTLINED_FUNCTION_1_63();
    v8 = v10;
    *(v5 + v4) = v10;
  }

  OUTLINED_FUNCTION_447();
  *(v8 + 32) = v3;

  free(v1);
}

double sub_25773215C@<D0>(_OWORD *a1@<X8>)
{
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.kernelSize.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_12(a1);
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
  return OUTLINED_FUNCTION_43();
}

double sub_25773223C@<D0>(uint64_t a1@<X8>)
{
  NeuralNetwork.Layer.ConvolutionParameters.outputShape.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_257732280(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return NeuralNetwork.Layer.ConvolutionParameters.outputShape.setter(&v3);
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.outputShape.setter(uint64_t *a1)
{
  v2 = v1;
  if (a1[2])
  {
    v3 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
    v4 = *(v1 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v7);
      OUTLINED_FUNCTION_1_63();
      v6 = v8;
      *(v2 + v3) = v8;
    }

    v9 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
    OUTLINED_FUNCTION_237_0();
    v10 = *(v6 + v9);
    *(v6 + v9) = MEMORY[0x277D84F90];
  }

  v13 = *a1;
  v12 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  result = OUTLINED_FUNCTION_13_6();
  *(result + 16) = xmmword_257743FF0;
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(result + 32) = v13;
  if (v12 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(result + 40) = v12;

  return sub_257531298();
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.outputShape.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  NeuralNetwork.Layer.ConvolutionParameters.outputShape.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2577323F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5[0] = *a1;
  v5[1] = v1;
  v6 = v2;
  return NeuralNetwork.Layer.ConvolutionParameters.outputShape.setter(v5);
}

double sub_257732438@<D0>(_OWORD *a1@<X8>)
{
  NeuralNetwork.Layer.ConvolutionParameters.strides.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.strides.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_12(a1);
  NeuralNetwork.Layer.ConvolutionParameters.strides.getter();
  return OUTLINED_FUNCTION_43();
}

double sub_257732518@<D0>(_OWORD *a1@<X8>)
{
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2577325A4(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  result = OUTLINED_FUNCTION_13_6();
  *(result + 16) = xmmword_257743FF0;
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(result + 32) = v3;
  if (v2 < 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(result + 40) = v2;

  return a2();
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_12(a1);
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257732680(uint64_t *a1, char a2, uint64_t (*a3)(void))
{
  v7 = *a1;
  v6 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  result = OUTLINED_FUNCTION_13_6();
  *(result + 16) = xmmword_257743FF0;
  if (a2)
  {
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    *(result + 32) = v7;
    if ((v6 & 0x8000000000000000) == 0)
    {
LABEL_7:
      v9 = a1[2];
      *(result + 40) = v6;
      return a3();
    }

    __break(1u);
  }

  if (v7 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(result + 32) = v7;
  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.padding.setter(uint64_t a1)
{
  v3 = v1;
  v5 = OUTLINED_FUNCTION_211();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_421();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_72_4();
  v15 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  OUTLINED_FUNCTION_155(v1, 1, v15);
  if (v16)
  {
    sub_2574695E4(v1, &qword_27F8811F8, &unk_257777F90);
    v17 = 1;
  }

  else
  {
    sub_2577329D0();
    OUTLINED_FUNCTION_2_77();
    sub_257734AD8();
    v17 = 0;
  }

  v18 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  __swift_storeEnumTagSinglePayload(v2, v17, 1, v18);
  v19 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
  v20 = *(v3 + v19);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_2574695E4(a1, &qword_27F8811F8, &unk_257777F90);
    v21 = *(v3 + v19);
  }

  else
  {
    v22 = *(v3 + v19);
    v23 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v23);

    sub_25759AD38();
    v25 = v24;
    sub_2574695E4(a1, &qword_27F8811F8, &unk_257777F90);

    *(v3 + v19) = v25;
  }

  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257732934()
{
  type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_205();
  sub_257734A28();
  type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2577329D0()
{
  OUTLINED_FUNCTION_16_1();
  v0 = type metadata accessor for NeuralNetwork.SamePaddingParameters();
  v1 = OUTLINED_FUNCTION_13(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_421();
  valid = type metadata accessor for NeuralNetwork.ValidPaddingParameters();
  v5 = OUTLINED_FUNCTION_13(valid);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_75();
  sub_257734A80();
  OUTLINED_FUNCTION_211();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_8_49();
  }

  else
  {
    OUTLINED_FUNCTION_7_52();
  }

  sub_257734A28();
  sub_257734A28();
  type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.ConvolutionParameters.padding.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  OUTLINED_FUNCTION_4(v4);
  v3[4] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  OUTLINED_FUNCTION_13(v6);
  v3[5] = __swift_coroFrameAllocStub(*(v7 + 64));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811F8, &unk_257777F90);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v3[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v3[7] = v11;
  v12 = type metadata accessor for Proto_ConvolutionLayerParams(0);
  OUTLINED_FUNCTION_206(v12);
  OUTLINED_FUNCTION_296();
  sub_257487308();
  v13 = 1;
  v14 = OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_155(v14, v15, v4);
  if (!v16)
  {
    OUTLINED_FUNCTION_9_47();
    sub_257734A28();
    sub_257732934();
    v13 = 0;
  }

  v17 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  __swift_storeEnumTagSinglePayload(v11, v13, 1, v17);
  OUTLINED_FUNCTION_35();
}

void sub_257732CE8(uint64_t a1)
{
  OUTLINED_FUNCTION_64_7(a1);
  if (v6)
  {
    sub_257487308();
    NeuralNetwork.Layer.ConvolutionParameters.padding.setter(v4);
    sub_2574695E4(v5, &qword_27F8811F8, &unk_257777F90);
  }

  else
  {
    NeuralNetwork.Layer.ConvolutionParameters.padding.setter(v5);
  }

  free(v5);
  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

void (*NeuralNetwork.Layer.ConvolutionParameters.isDeconvolution.modify())(uint64_t *a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  v3 = *(OUTLINED_FUNCTION_71_5(v2) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
  OUTLINED_FUNCTION_296();
  *(v1 + 84) = *(v4 + v5);
  return sub_257732E28;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.weightsShape.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  v2 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
  OUTLINED_FUNCTION_296();
  v3 = *(v1 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  if (v3 != 1)
  {
    result = OUTLINED_FUNCTION_296();
    v10 = v1[2];
    if ((v10 & 0x8000000000000000) == 0)
    {
      *(v4 + 32) = v10;
      result = OUTLINED_FUNCTION_296();
      v11 = v1[3];
      if ((v11 & 0x8000000000000000) == 0)
      {
        *(v4 + 40) = v11;
        NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
        *(v4 + 48) = v13;
        NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
        v9 = v15;
        goto LABEL_10;
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  result = OUTLINED_FUNCTION_296();
  v6 = v1[3];
  if (v6 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v4 + 32) = v6;
  result = OUTLINED_FUNCTION_296();
  v7 = v1[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = OUTLINED_FUNCTION_296();
  v8 = v1[4];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    *(v4 + 40) = v7 / v8;
    NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
    *(v4 + 48) = v14;
    NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
    v9 = v12;
LABEL_10:
    *(v4 + 56) = v9;
    return v4;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_257732F98()
{
  v0 = type metadata accessor for NeuralNetwork.WeightParameters();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_257734A80();
  return NeuralNetwork.Layer.ConvolutionParameters.weights.setter();
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.weights.setter()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_35_15();
  v8 = type metadata accessor for Proto_WeightParams(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v12 = *(type metadata accessor for NeuralNetwork.WeightParameters() + 20);
  OUTLINED_FUNCTION_21_34();
  sub_257734A80();
  v13 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
  v14 = *(v1 + v13);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    OUTLINED_FUNCTION_1_93();
    sub_257734AD8();
    v15 = *(v1 + v13);
  }

  else
  {
    v16 = *(v1 + v13);
    v17 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v17);

    sub_25759AD38();
    v19 = v18;
    OUTLINED_FUNCTION_1_93();
    sub_257734AD8();

    *(v2 + v13) = v19;
  }

  OUTLINED_FUNCTION_0_112();
  sub_257734A28();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v8);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

void NeuralNetwork.Layer.ConvolutionParameters.weights.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v3[5] = v9;
  v10 = type metadata accessor for NeuralNetwork.WeightParameters();
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  v3[6] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v3[7] = v13;
  v14 = type metadata accessor for Proto_ConvolutionLayerParams(0);
  OUTLINED_FUNCTION_206(v14);
  OUTLINED_FUNCTION_296();
  sub_257487308();
  OUTLINED_FUNCTION_155(v6, 1, v7);
  if (v15)
  {
    *v9 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    v16 = v9 + *(v7 + 36);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v17 = *(v7 + 40);
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_155(v6, 1, v7);
    if (!v15)
    {
      sub_2574695E4(v6, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_257734A28();
  }

  sub_2576FF45C(v9, v13);
  OUTLINED_FUNCTION_35();
}

void sub_2577333B0(uint64_t a1)
{
  OUTLINED_FUNCTION_64_7(a1);
  if (v6)
  {
    sub_257734A80();
    NeuralNetwork.Layer.ConvolutionParameters.weights.setter();
    OUTLINED_FUNCTION_1_93();
    sub_257734AD8();
  }

  else
  {
    NeuralNetwork.Layer.ConvolutionParameters.weights.setter();
  }

  free(v5);
  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t sub_257733458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_211();
  sub_257487308();
  return a7(v7);
}

void NeuralNetwork.Layer.ConvolutionParameters.bias.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_3();
  v9 = type metadata accessor for Proto_WeightParams(0);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_421();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_30();
  v17 = type metadata accessor for NeuralNetwork.WeightParameters();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  sub_257487308();
  v21 = OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_155(v21, v22, v17);
  if (v23)
  {
    sub_2574695E4(v1, &qword_27F880938, &unk_25776E510);
    v24 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
    v25 = *(v0 + v24);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2574695E4(v4, &qword_27F880938, &unk_25776E510);
      v26 = *(v0 + v24);
    }

    else
    {
      v28 = *(v0 + v24);
      v29 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v29);

      sub_25759AD38();
      v31 = v30;
      sub_2574695E4(v4, &qword_27F880938, &unk_25776E510);

      *(v2 + v24) = v31;
    }

    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v9);
    swift_beginAccess();
    sub_25751BB28();
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_10_50();
    sub_257734A28();
    v27 = *(v17 + 20);
    OUTLINED_FUNCTION_21_34();
    sub_257734A80();
    sub_257531250(v0);
    sub_2574695E4(v4, &qword_27F880938, &unk_25776E510);
    OUTLINED_FUNCTION_1_93();
    sub_257734AD8();
  }

  OUTLINED_FUNCTION_35();
}

void (*NeuralNetwork.Layer.ConvolutionParameters.bias.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  NeuralNetwork.Layer.ConvolutionParameters.bias.getter();
  return sub_257733818;
}

void sub_257733818(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_257487308();
    NeuralNetwork.Layer.ConvolutionParameters.bias.setter();
    v5 = OUTLINED_FUNCTION_263();
    sub_2574695E4(v5, v6, &unk_25776E510);
  }

  else
  {
    NeuralNetwork.Layer.ConvolutionParameters.bias.setter();
  }

  free(v3);

  free(v2);
}

uint64_t sub_2577338BC(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v10);
    OUTLINED_FUNCTION_1_63();
    v9 = v11;
    *(v4 + v6) = v11;
  }

  v12 = *a2;
  result = OUTLINED_FUNCTION_237_0();
  *(v9 + v12) = a1 & 1;
  return result;
}

void (*NeuralNetwork.Layer.ConvolutionParameters.hasBias.modify())(uint64_t *a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  v3 = *(OUTLINED_FUNCTION_71_5(v2) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
  OUTLINED_FUNCTION_296();
  *(v1 + 84) = *(v4 + v5);
  return sub_2577339C0;
}

void sub_2577339CC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v13);
    OUTLINED_FUNCTION_1_63();
    v10 = v14;
    *(v12 + v11) = v14;
  }

  v15 = *a3;
  OUTLINED_FUNCTION_447();
  *(v10 + v15) = v7;

  free(v4);
}

uint64_t sub_257733AF8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void NeuralNetwork.Layer.ConvolutionParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = sub_257743A84();
  v82 = *(v5 - 8);
  v6 = *(v82 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v81 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v80 = v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_28_31();
  v77 = type metadata accessor for Proto_WeightParams(v18);
  v19 = OUTLINED_FUNCTION_4(v77);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v24 = (v23 - v22);
  v25 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v75[1] = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  OUTLINED_FUNCTION_13(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_32_3();
  v79 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters(0);
  v35 = OUTLINED_FUNCTION_4(v79);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v78 = v39 - v38;
  sub_257734A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_257777F80;
  *(v40 + 32) = 0xD000000000000012;
  *(v40 + 40) = 0x8000000257781DA0;
  v41 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  OUTLINED_FUNCTION_296();
  v42 = v41[2];
  if (v42 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v76 = v5;
  v43 = MEMORY[0x277D83B88];
  *(v40 + 48) = v42;
  *(v40 + 72) = v43;
  *(v40 + 80) = 0xD000000000000012;
  *(v40 + 88) = 0x8000000257782160;
  OUTLINED_FUNCTION_296();
  v44 = v41[3];
  if (v44 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v40 + 96) = v44;
  *(v40 + 120) = v43;
  *(v40 + 128) = 0x756F4370756F7267;
  *(v40 + 136) = 0xEA0000000000746ELL;
  OUTLINED_FUNCTION_296();
  v45 = v41[4];
  if (v45 < 0)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v75[2] = v4;
  *(v40 + 144) = v45;
  *(v40 + 168) = v43;
  *(v40 + 176) = 0x69536C656E72656BLL;
  *(v40 + 184) = 0xEA0000000000657ALL;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881238, &unk_257773F10);
  *(v40 + 216) = v46;
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
  OUTLINED_FUNCTION_30_19();
  *(v40 + 224) = v47;
  *(v40 + 232) = 0xEB00000000657061;
  *(v40 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A78, &qword_257777FA8);
  NeuralNetwork.Layer.ConvolutionParameters.outputShape.getter();
  OUTLINED_FUNCTION_28_23();
  *(v40 + 272) = v48;
  *(v40 + 280) = 0xE700000000000000;
  *(v40 + 312) = v46;
  NeuralNetwork.Layer.ConvolutionParameters.strides.getter();
  strcpy((v40 + 320), "dilationFactor");
  *(v40 + 335) = -18;
  *(v40 + 360) = v46;
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.getter();
  *(v40 + 368) = 0x676E6964646170;
  *(v40 + 376) = 0xE700000000000000;
  *(v40 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811F8, &unk_257777F90);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v40 + 384));
  OUTLINED_FUNCTION_296();
  sub_257487308();
  v50 = 1;
  OUTLINED_FUNCTION_155(v1, 1, v25);
  if (!v51)
  {
    OUTLINED_FUNCTION_9_47();
    sub_257734A28();
    sub_257732934();
    v50 = 0;
  }

  v52 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_0, v50, 1, v52);
  *(v40 + 416) = 0x766E6F6365447369;
  *(v40 + 424) = 0xEF6E6F6974756C6FLL;
  v53 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
  OUTLINED_FUNCTION_296();
  v54 = *(v41 + v53);
  v55 = MEMORY[0x277D839B0];
  *(v40 + 432) = v54;
  OUTLINED_FUNCTION_48_8();
  *(v40 + 456) = v55;
  *(v40 + 464) = v56;
  *(v40 + 472) = 0xE700000000000000;
  *(v40 + 504) = type metadata accessor for NeuralNetwork.WeightParameters();
  v57 = __swift_allocate_boxed_opaque_existential_0((v40 + 480));
  OUTLINED_FUNCTION_296();
  sub_257487308();
  v58 = OUTLINED_FUNCTION_171_1();
  v59 = v77;
  OUTLINED_FUNCTION_155(v58, v60, v77);
  if (v51)
  {
    *v24 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_65_7(xmmword_257745740);
    v61 = v24 + *(v59 + 36);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v62 = *(v59 + 40);
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    v67 = OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_155(v67, v68, v59);
    if (!v51)
    {
      sub_2574695E4(v2, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_257734A28();
  }

  sub_2576FF45C(v24, v57);
  *(v40 + 512) = 1935763810;
  *(v40 + 520) = 0xE400000000000000;
  *(v40 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  __swift_allocate_boxed_opaque_existential_0((v40 + 528));
  NeuralNetwork.Layer.ConvolutionParameters.bias.getter();
  *(v40 + 560) = 0x73616942736168;
  *(v40 + 568) = 0xE700000000000000;
  v69 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
  OUTLINED_FUNCTION_296();
  v70 = *(v41 + v69);
  *(v40 + 600) = v55;
  *(v40 + 576) = v70;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  (*(v82 + 104))(v81, *MEMORY[0x277D84C38], v76);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)()
{
  OUTLINED_FUNCTION_31();
  v51 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Proto_BorderAmounts(0);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = OUTLINED_FUNCTION_35_15();
  v16 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(v15);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v20);
  v49 = v47 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_4(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_21_1();
  v26 = type metadata accessor for NeuralNetwork.Border(0);
  v27 = OUTLINED_FUNCTION_13(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v32 = (v31 - v30);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v50 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v11);
  *v32 = MEMORY[0x277D84F90];
  v36 = *(v11 + 20);
  v48 = v32;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v37 = type metadata accessor for Proto_BorderAmounts.EdgeSizes(0);
  *v1 = 0;
  v1[1] = 0;
  v38 = v1 + *(v37 + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  *v1 = v8;
  if (v6 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v1[1] = v6;
  v39 = (v1 + *(v22 + 36));
  *v39 = 0;
  v39[1] = 0;
  v40 = v39 + *(v37 + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v4 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *v39 = v4;
  if ((v51 & 0x8000000000000000) == 0)
  {
    v39[1] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD8, &unk_257744020);
    v41 = *(v37 - 8);
    v47[1] = v0;
    v42 = v10;
    v43 = *(v41 + 72);
    v44 = *(v41 + 80);
    v51 = v11;
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_257743FF0;
    sub_257734A80();
    sub_257734A28();
    sub_257734A80();
    sub_257734A28();
    sub_2574695E4(v1, &qword_27F879AD0, &qword_257777FB0);
    *v48 = v45;
    sub_257734A28();
    v46 = v50;
    sub_2574695E4(v42 + v50, &qword_27F879AC8, &unk_257744010);
    sub_257734A28();
    __swift_storeEnumTagSinglePayload(v42 + v46, 0, 1, v51);
    type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_35();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.same(asymmetryMode:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(type metadata accessor for Proto_SamePadding(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = v3;
  *(a2 + 8) = 1;
  type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);

  return swift_storeEnumTagMultiPayload();
}

void static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v24 = type metadata accessor for NeuralNetwork.SamePaddingParameters();
  v25 = OUTLINED_FUNCTION_13(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_17_3();
  valid = type metadata accessor for NeuralNetwork.ValidPaddingParameters();
  v29 = OUTLINED_FUNCTION_13(valid);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_421();
  v32 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A80, &qword_257777FB8);
  OUTLINED_FUNCTION_13(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_29();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &a9 - v42;
  v44 = *(v41 + 56);
  sub_257734A80();
  sub_257734A80();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_75();
    sub_257734A80();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_8_49();
      sub_257734A28();
      v45 = *v21;
      v46 = *v20;
      if (*(v21 + 8))
      {
        v45 = *v21 != 0;
      }

      if (*(v20 + 8) == 1)
      {
        if (v46)
        {
          if (v45 != 1)
          {
LABEL_8:
            OUTLINED_FUNCTION_4_67();
            sub_257734AD8();
LABEL_16:
            OUTLINED_FUNCTION_4_67();
            sub_257734AD8();
            OUTLINED_FUNCTION_2_77();
            sub_257734AD8();
            goto LABEL_17;
          }
        }

        else if (v45)
        {
          goto LABEL_8;
        }
      }

      else if (v45 != v46)
      {
        goto LABEL_8;
      }

      v47 = *(type metadata accessor for Proto_SamePadding(0) + 20);
      sub_2577431B4();
      sub_257734BDC(&qword_27F879B68, MEMORY[0x277D216C8]);
      sub_257743644();
      OUTLINED_FUNCTION_4_67();
      sub_257734AD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_4_67();
  }

  else
  {
    OUTLINED_FUNCTION_3_75();
    sub_257734A80();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_7_52();
      sub_257734A28();
      _s20MLModelSpecification13NeuralNetworkV22ValidPaddingParametersV2eeoiySbAE_AEtFZ_0();
      sub_257734AD8();
      sub_257734AD8();
      OUTLINED_FUNCTION_2_77();
      sub_257734AD8();
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_19_36();
  }

  sub_257734AD8();
  sub_2574695E4(v43, &qword_27F881A80, &qword_257777FB8);
LABEL_17:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257734A28()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

uint64_t sub_257734A80()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

uint64_t sub_257734AD8()
{
  v1 = OUTLINED_FUNCTION_376();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_257734BDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257734CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257734D34()
{
  result = type metadata accessor for NeuralNetwork.ValidPaddingParameters();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NeuralNetwork.SamePaddingParameters();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_35@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  return sub_257743974();
}

uint64_t OUTLINED_FUNCTION_18_45()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_37_16(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 80) = v2;

  return type metadata accessor for Proto_ConvolutionLayerParams(0);
}

uint64_t OUTLINED_FUNCTION_49_9(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 + 88) = v3;
  v4 = *(v1 + v3);
  return result;
}

void *OUTLINED_FUNCTION_56_7@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[28] = a2;
  result[29] = 0xEB00000000657061;
  result[30] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_5()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 80);

  return type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
}

uint64_t OUTLINED_FUNCTION_58_4()
{
  v2 = *(*(v0 + 80) + *(v0 + 88));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_64_7(uint64_t result)
{
  v1 = *(*result + 48);
  v2 = *(*result + 56);
  v3 = *(*result + 32);
  v4 = *(*result + 40);
  v5 = *(*result + 24);
  return result;
}

void OUTLINED_FUNCTION_65_7(__n128 a1)
{
  *(v1 + 8) = a1;
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = 0;
}

uint64_t OUTLINED_FUNCTION_71_5(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;

  return type metadata accessor for Proto_ConvolutionLayerParams(0);
}

uint64_t OUTLINED_FUNCTION_72_4()
{

  return sub_257487308();
}

double NeuralNetwork.Layer.GELUParameters.propertyDescriptions.getter()
{
  v1 = 0x7463617845;
  if (*(v0 + 8) == 1)
  {
    v2 = 0x80000002577814C0;
    v3 = 0xD000000000000020;
    if (*v0 != 1)
    {
      v3 = 0xD000000000000015;
      v2 = 0x80000002577814A0;
    }

    if (*v0)
    {
      v1 = v3;
      v4 = v2;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_2577442B0;
  *(v5 + 32) = 1701080909;
  *(v5 + 40) = 0xE400000000000000;
  *(v5 + 48) = v1;
  *(v5 + 56) = v4;
  return result;
}

uint64_t static NeuralNetwork.Layer.gelu(name:inputName:outputName:mode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a1;
  v31 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  v29 = *a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v23 = swift_allocObject();
  v28 = xmmword_2577442B0;
  *(v23 + 16) = xmmword_2577442B0;
  *(v23 + 32) = a3;
  *(v23 + 40) = a4;
  v24 = swift_allocObject();
  *(v24 + 16) = v28;
  *(v24 + 32) = a5;
  *(v24 + 40) = a6;
  *v22 = 0;
  *(v22 + 8) = 1;
  LODWORD(a5) = *(type metadata accessor for Proto_GeluLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v22 = v29;
  *(v22 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a8 + v25) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v24);
  sub_2574897E0(v17);
  v26 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v26);
  sub_25752846C();
  return sub_257634BB4(v22);
}

uint64_t static NeuralNetwork.Layer.Kind.gelu(mode:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + *(OUTLINED_FUNCTION_2_78(a1, a2) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v3;
  *(v2 + 8) = v4;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.GELUParameters.init(mode:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + *(OUTLINED_FUNCTION_2_78(a1, a2) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

void NeuralNetwork.Layer.GELUParameters.mode.getter(_BYTE *a1@<X8>)
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

unsigned __int8 *NeuralNetwork.Layer.GELUParameters.mode.setter(unsigned __int8 *result)
{
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.GELUParameters.mode.modify(uint64_t a1))(uint64_t *result)
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

BOOL static NeuralNetwork.Layer.GELUParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
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

  v4 = *(type metadata accessor for Proto_GeluLayerParams(0) + 20);
  sub_2577431B4();
  sub_257735B40(&qword_27F879B68, MEMORY[0x277D216C8]);
  return (sub_257743644() & 1) != 0;
}

uint64_t NeuralNetwork.Layer.GELUParameters.hash(into:)()
{
  type metadata accessor for Proto_GeluLayerParams(0);
  OUTLINED_FUNCTION_0_113();
  sub_257735B40(v0, v1);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.GELUParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_GeluLayerParams(0);
  OUTLINED_FUNCTION_0_113();
  sub_257735B40(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257735758()
{
  sub_257743A14();
  type metadata accessor for Proto_GeluLayerParams(0);
  sub_257735B40(&qword_27F87D5F8, type metadata accessor for Proto_GeluLayerParams);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.GELUParameters.customMirror.getter()
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
  v10 = &v18 - v9;
  v11 = type metadata accessor for NeuralNetwork.Layer.GELUParameters();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_257735A2C(v0, v14 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2577442B0;
  *(v15 + 32) = 1701080941;
  *(v15 + 40) = 0xE400000000000000;
  *(v15 + 72) = &type metadata for NeuralNetwork.Layer.GELUParameters.Mode;
  NeuralNetwork.Layer.GELUParameters.mode.getter((v15 + 48));
  v16 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v16);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.GELUParameters()
{
  result = qword_27F881AC8;
  if (!qword_27F881AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257735A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.GELUParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t NeuralNetwork.Layer.GELUParameters.Mode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_257735B40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257735B90@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.GELUParameters.Mode.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_257735BBC()
{
  result = qword_27F881AC0;
  if (!qword_27F881AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881AC0);
  }

  return result;
}

uint64_t sub_257735C38()
{
  result = type metadata accessor for Proto_GeluLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s14GELUParametersV4ModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_2_78@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 0;
  *(a2 + 8) = 1;

  return type metadata accessor for Proto_GeluLayerParams(0);
}

uint64_t static IdentityModelConfiguration.== infix(_:_:)()
{
  sub_2577431B4();
  sub_2577362F8(&qword_27F879B68, MEMORY[0x277D216C8]);
  return sub_257743644() & 1;
}

uint64_t IdentityModelConfiguration.hash(into:)()
{
  type metadata accessor for Proto_Identity();
  OUTLINED_FUNCTION_0_114();
  sub_2577362F8(v0, v1);

  return sub_2577435F4();
}

uint64_t IdentityModelConfiguration.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_Identity();
  OUTLINED_FUNCTION_0_114();
  sub_2577362F8(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257735F40()
{
  sub_257743A14();
  type metadata accessor for Proto_Identity();
  sub_2577362F8(&qword_27F87AE78, type metadata accessor for Proto_Identity);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t IdentityModelConfiguration.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v16 - v9;
  v11 = type metadata accessor for IdentityModelConfiguration();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  sub_257736200(v1, v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16[1] = MEMORY[0x277D84F90];
  v14 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  return sub_257743A94();
}

uint64_t type metadata accessor for IdentityModelConfiguration()
{
  result = qword_281537970;
  if (!qword_281537970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257736200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityModelConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2577362F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257736368()
{
  result = type metadata accessor for Proto_Identity();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_257736400(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_257736440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25773648C(uint64_t a1)
{
  v3 = type metadata accessor for FeatureDescription();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v92 = (&v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v99 = &v91 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v93 = (&v91 - v11);
  MEMORY[0x28223BE20](v10);
  v97 = (&v91 - v12);
  v91 = a1;
  Model.inputs.getter();
  v14 = *(v13 + 16);
  v98 = v4;
  v96 = v14;
  if (v14)
  {
    v15 = 0;
    OUTLINED_FUNCTION_6_64();
    v17 = MEMORY[0x277D84F98];
    v94 = v16;
    v95 = v16 + v18;
    while (v15 < *(v16 + 16))
    {
      v19 = v97;
      sub_2577179F4(v95 + *(v4 + 72) * v15, v97);
      OUTLINED_FUNCTION_14_36();
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);

      OUTLINED_FUNCTION_0_115();
      sub_2577376DC(v19, v22);
      swift_isUniquelyReferenced_nonNull_native();
      v100 = v17;
      v23 = OUTLINED_FUNCTION_292();
      v25 = sub_25765368C(v23, v24);
      if (__OFADD__(v17[2], (v26 & 1) == 0))
      {
        goto LABEL_46;
      }

      v27 = v25;
      v28 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881B20, &qword_2577783E0);
      OUTLINED_FUNCTION_8_50();
      if (sub_257743894())
      {
        v29 = OUTLINED_FUNCTION_292();
        sub_25765368C(v29, v30);
        OUTLINED_FUNCTION_7_53();
        if (!v32)
        {
          goto LABEL_54;
        }

        v27 = v31;
      }

      if (v28)
      {

        v17 = v100;
        v33 = (v100[7] + 16 * v27);
        v34 = v33[1];
        *v33 = v20;
        v33[1] = v21;
      }

      else
      {
        v17 = v100;
        OUTLINED_FUNCTION_5_62(&v100[v27 >> 6]);
        v35 = (v17[6] + 16 * v27);
        *v35 = v1;
        v35[1] = v4;
        v36 = (v17[7] + 16 * v27);
        *v36 = v20;
        v36[1] = v21;
        v37 = v17[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_51;
        }

        v17[2] = v39;
      }

      ++v15;
      v4 = v98;
      v16 = v94;
      if (v96 == v15)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v17 = MEMORY[0x277D84F98];
LABEL_16:
  v97 = v17;
  Model.outputs.getter();
  v96 = *(v40 + 16);
  if (!v96)
  {
    v43 = MEMORY[0x277D84F98];
LABEL_31:

    Model.trainingInput.getter();
    v65 = v97;
    v96 = *(v64 + 16);
    if (!v96)
    {
LABEL_44:

      sub_2577376DC(v91, type metadata accessor for Model);
      return v65;
    }

    v66 = 0;
    OUTLINED_FUNCTION_6_64();
    v68 = MEMORY[0x277D84F98];
    v94 = v67;
    v95 = v67 + v69;
    v93 = v43;
    while (1)
    {
      if (v66 >= *(v67 + 16))
      {
        goto LABEL_49;
      }

      v70 = v95 + *(v4 + 72) * v66;
      v71 = v92;
      sub_2577179F4(v70, v92);
      v72 = *v71;
      v73 = v71[1];
      v74 = v71;
      v75 = v99;
      sub_257737678(v74, v99);
      v76 = *(v75 + 16);
      v77 = *(v75 + 24);

      OUTLINED_FUNCTION_0_115();
      sub_2577376DC(v75, v78);
      swift_isUniquelyReferenced_nonNull_native();
      v100 = v68;
      v79 = sub_25765368C(v72, v73);
      if (__OFADD__(v68[2], (v80 & 1) == 0))
      {
        goto LABEL_50;
      }

      v81 = v79;
      v82 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881B20, &qword_2577783E0);
      OUTLINED_FUNCTION_8_50();
      if (sub_257743894())
      {
        sub_25765368C(v72, v73);
        OUTLINED_FUNCTION_7_53();
        v65 = v97;
        if (!v32)
        {
          goto LABEL_54;
        }

        v81 = v83;
        if ((v82 & 1) == 0)
        {
LABEL_39:
          v68 = v100;
          OUTLINED_FUNCTION_5_62(&v100[v81 >> 6]);
          v84 = (v68[6] + 16 * v81);
          *v84 = v72;
          v84[1] = v73;
          v85 = (v68[7] + 16 * v81);
          *v85 = v76;
          v85[1] = v77;
          v86 = v68[2];
          v38 = __OFADD__(v86, 1);
          v87 = v86 + 1;
          if (v38)
          {
            goto LABEL_53;
          }

          v68[2] = v87;
          goto LABEL_43;
        }
      }

      else
      {
        v65 = v97;
        if ((v82 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      v68 = v100;
      v88 = (v100[7] + 16 * v81);
      v89 = v88[1];
      *v88 = v76;
      v88[1] = v77;

LABEL_43:
      ++v66;
      v4 = v98;
      v67 = v94;
      if (v96 == v66)
      {
        goto LABEL_44;
      }
    }
  }

  v41 = 0;
  OUTLINED_FUNCTION_6_64();
  v43 = MEMORY[0x277D84F98];
  v94 = v42;
  v95 = v42 + v44;
  while (v41 < *(v42 + 16))
  {
    v45 = v93;
    sub_2577179F4(v95 + *(v4 + 72) * v41, v93);
    OUTLINED_FUNCTION_14_36();
    v46 = *(v45 + 16);
    v47 = *(v45 + 24);

    OUTLINED_FUNCTION_0_115();
    sub_2577376DC(v45, v48);
    swift_isUniquelyReferenced_nonNull_native();
    v100 = v43;
    v49 = OUTLINED_FUNCTION_292();
    v51 = sub_25765368C(v49, v50);
    if (__OFADD__(v43[2], (v52 & 1) == 0))
    {
      goto LABEL_48;
    }

    v53 = v51;
    v54 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881B20, &qword_2577783E0);
    OUTLINED_FUNCTION_8_50();
    if (sub_257743894())
    {
      v55 = OUTLINED_FUNCTION_292();
      sub_25765368C(v55, v56);
      OUTLINED_FUNCTION_7_53();
      if (!v32)
      {
        goto LABEL_54;
      }

      v53 = v57;
    }

    if (v54)
    {

      v43 = v100;
      v58 = (v100[7] + 16 * v53);
      v59 = v58[1];
      *v58 = v46;
      v58[1] = v47;
    }

    else
    {
      v43 = v100;
      OUTLINED_FUNCTION_5_62(&v100[v53 >> 6]);
      v60 = (v43[6] + 16 * v53);
      *v60 = v1;
      v60[1] = v4;
      v61 = (v43[7] + 16 * v53);
      *v61 = v46;
      v61[1] = v47;
      v62 = v43[2];
      v38 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v38)
      {
        goto LABEL_52;
      }

      v43[2] = v63;
    }

    ++v41;
    v4 = v98;
    v42 = v94;
    if (v96 == v41)
    {
      goto LABEL_31;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
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
LABEL_54:
  result = sub_2577439B4();
  __break(1u);
  return result;
}

uint64_t sub_257736AAC()
{
  v0 = sub_257743914();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_257736AF8(char a1)
{
  if (!a1)
  {
    return 0x737475706E49;
  }

  if (a1 == 1)
  {
    return 0x7374757074754FLL;
  }

  return 0x676E696E69617254;
}

uint64_t sub_257736B58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881AE0, &qword_2577783C8);
  OUTLINED_FUNCTION_63(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2577370A4();
  sub_257743AC4();
  v20 = a2;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881AF0, &qword_2577783D0);
  sub_25773714C(&qword_27F881AF8, sub_2577370F8);
  OUTLINED_FUNCTION_3_76();
  if (!v4)
  {
    v20 = v18;
    v19 = 1;
    OUTLINED_FUNCTION_3_76();
    v20 = a4;
    v19 = 2;
    OUTLINED_FUNCTION_3_76();
  }

  return (*(v10 + 8))(v15, v8);
}

uint64_t sub_257736D10(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881B08, &qword_2577783D8);
  OUTLINED_FUNCTION_63(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2577370A4();
  OUTLINED_FUNCTION_10_51();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881AF0, &qword_2577783D0);
    sub_25773714C(&qword_27F881B10, sub_2577371D0);
    OUTLINED_FUNCTION_1_94();
    v9 = v14;
    OUTLINED_FUNCTION_1_94();
    OUTLINED_FUNCTION_1_94();
    v11 = *(v5 + 8);
    v12 = OUTLINED_FUNCTION_322();
    v13(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_257736F44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_257736AAC();
  *a2 = result;
  return result;
}

uint64_t sub_257736F74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257736AF8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_257736FA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257736AAC();
  *a1 = result;
  return result;
}

uint64_t sub_257736FDC(uint64_t a1)
{
  v2 = sub_2577370A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257737018(uint64_t a1)
{
  v2 = sub_2577370A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257737054@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_257736D10(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_2577370A4()
{
  result = qword_27F881AE8;
  if (!qword_27F881AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881AE8);
  }

  return result;
}

unint64_t sub_2577370F8()
{
  result = qword_27F881B00;
  if (!qword_27F881B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B00);
  }

  return result;
}

uint64_t sub_25773714C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F881AF0, &qword_2577783D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2577371D0()
{
  result = qword_27F881B18;
  if (!qword_27F881B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B18);
  }

  return result;
}

BOOL sub_257737224()
{
  v0 = sub_257743914();

  return v0 != 0;
}

uint64_t sub_257737288(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881B40, &qword_2577785B8);
  OUTLINED_FUNCTION_63(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2577379A4();
  sub_257743AC4();
  sub_257743944();
  return (*(v4 + 8))(v9, v2);
}

uint64_t sub_2577373B8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881B50, &qword_2577785C0);
  OUTLINED_FUNCTION_63(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2577379A4();
  OUTLINED_FUNCTION_10_51();
  if (!v1)
  {
    v10 = sub_257743924();
    v11 = *(v5 + 8);
    v12 = OUTLINED_FUNCTION_322();
    v13(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

BOOL sub_2577374FC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_257737224();
  *a2 = result;
  return result;
}

unint64_t sub_257737530@<X0>(void *a1@<X8>)
{
  result = sub_25773726C();
  *a1 = 0xD000000000000019;
  a1[1] = v3;
  return result;
}

BOOL sub_257737580@<W0>(_BYTE *a1@<X8>)
{
  result = sub_257737224();
  *a1 = result;
  return result;
}

uint64_t sub_2577375B8(uint64_t a1)
{
  v2 = sub_2577379A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2577375F4(uint64_t a1)
{
  v2 = sub_2577379A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257737630@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2577373B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_25773765C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_257737288(a1);
}

uint64_t sub_257737678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureDescription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2577376DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *sub_25773773C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_257737814(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_257737854(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2577378A0()
{
  result = qword_27F881B28;
  if (!qword_27F881B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B28);
  }

  return result;
}

unint64_t sub_2577378F8()
{
  result = qword_27F881B30;
  if (!qword_27F881B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B30);
  }

  return result;
}

unint64_t sub_257737950()
{
  result = qword_27F881B38;
  if (!qword_27F881B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B38);
  }

  return result;
}

unint64_t sub_2577379A4()
{
  result = qword_27F881B48;
  if (!qword_27F881B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B48);
  }

  return result;
}

_BYTE *sub_2577379F8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_257737AA4()
{
  result = qword_27F881B58;
  if (!qword_27F881B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B58);
  }

  return result;
}

unint64_t sub_257737AFC()
{
  result = qword_27F881B60;
  if (!qword_27F881B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B60);
  }

  return result;
}

unint64_t sub_257737B54()
{
  result = qword_27F881B68;
  if (!qword_27F881B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_94()
{

  return sub_257743934();
}

uint64_t OUTLINED_FUNCTION_3_76()
{

  return sub_257743954();
}

uint64_t OUTLINED_FUNCTION_10_51()
{

  return sub_257743AB4();
}

uint64_t OUTLINED_FUNCTION_14_36()
{
  v4 = *v0;
  v3 = v0[1];
  v5 = *(v1 - 96);

  return sub_257737678(v0, v5);
}

void sub_257737CA0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = 0xD000000000000012;
  v3 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v72.i8[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v72.i8[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v72.i8[-v16];
  v18 = LinearClassifierConfiguration.weights.getter();
  v19 = v18;
  if (*(v18 + 16))
  {
    v20 = *(v18 + 32);

    v21 = *(LinearClassifierConfiguration.weights.getter() + 16);

    v73 = v21;
    v74 = sub_257743974();
    v75 = v22;
    MEMORY[0x259C64E90](38851, 0xA200000000000000);
    v23 = *(v20 + 16);

    v73 = v23;
    v24 = sub_257743974();
    MEMORY[0x259C64E90](v24);

    v25 = v74;
    v26 = v75;
    sub_257469AE0();
    v28 = v27;
    v2 = *(v27 + 16);
    v29 = *(v27 + 24);
    v19 = (v2 + 1);
    if (v2 >= v29 >> 1)
    {
      OUTLINED_FUNCTION_174(v29);
      OUTLINED_FUNCTION_8_51();
      sub_257469AE0();
      v28 = v68;
    }

    OUTLINED_FUNCTION_23_7();
    *(v28 + 16) = v19;
    OUTLINED_FUNCTION_19_37();
    *(v31 + 32) = v2 + 2;
    *(v31 + 40) = v30;
    *(v31 + 48) = v25;
    *(v31 + 56) = v26;
    *(v31 + 64) = 0;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  if (*(*(v1 + 8) + 16))
  {
    v74 = *(*(v1 + 8) + 16);
    v19 = sub_257743674();
    v33 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = *(v28 + 16);
      OUTLINED_FUNCTION_8_51();
      sub_257469AE0();
      v28 = v70;
    }

    v2 = *(v28 + 16);
    v34 = *(v28 + 24);
    if (v2 >= v34 >> 1)
    {
      OUTLINED_FUNCTION_174(v34);
      OUTLINED_FUNCTION_8_51();
      sub_257469AE0();
      v28 = v71;
    }

    OUTLINED_FUNCTION_23_7();
    *(v28 + 16) = v2 + 1;
    OUTLINED_FUNCTION_19_37();
    *(v36 + 32) = v2;
    *(v36 + 40) = v35;
    *(v36 + 48) = v19;
    *(v36 + 56) = v33;
    *(v36 + 64) = 0;
  }

  v37 = type metadata accessor for Proto_GLMClassifier(0);
  sub_2577395B4(v1 + *(v37 + 32), v17);
  OUTLINED_FUNCTION_65(v17);
  if (v38)
  {
    v40 = 0;
    v39 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_95();
    sub_2577399E4(v17, v11);
    OUTLINED_FUNCTION_0_116();
    sub_2577396E0(v11, v9);
    sub_257738900();
    v39 = v74;
    v40 = v75;
    sub_257739A40(v11, v19);
  }

  v74 = v39;
  LOBYTE(v75) = v40;
  v41 = sub_2576603F8();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v61 = *(v28 + 16);
    OUTLINED_FUNCTION_8_51();
    sub_257469AE0();
    v28 = v62;
  }

  v43 = *(v28 + 16);
  v42 = *(v28 + 24);
  v44 = v43 + 1;
  if (v43 >= v42 >> 1)
  {
    OUTLINED_FUNCTION_174(v42);
    OUTLINED_FUNCTION_8_51();
    sub_257469AE0();
    v28 = v63;
  }

  *(v28 + 16) = v44;
  v45 = v28 + 40 * v43;
  strcpy((v45 + 32), "Class Labels");
  *(v45 + 45) = 0;
  *(v45 + 46) = -5120;
  *(v45 + 48) = v41;
  *(v45 + 56) = 0;
  *(v45 + 64) = 1;
  if (*(v1 + 40) == 1)
  {
    v46 = *(v1 + 32);
    *v47.i64 = OUTLINED_FUNCTION_9_48();
    v49 = vbslq_s8(v47, v48[113], xmmword_257778720);
  }

  else
  {
    v49 = xmmword_257778710;
  }

  v50 = *(v28 + 24);
  v51 = v43 + 2;
  if ((v43 + 2) > (v50 >> 1))
  {
    OUTLINED_FUNCTION_174(v50);
    OUTLINED_FUNCTION_8_51();
    v72 = v64;
    sub_257469AE0();
    v49 = v72;
    v28 = v65;
  }

  *(v28 + 16) = v51;
  v52 = (v28 + 40 * v44);
  strcpy(v52[2].i8, "Class Encoding");
  v52[2].i8[15] = -18;
  v52[3] = v49;
  v52[4].i8[0] = 0;
  if (*(v1 + 24) == 1)
  {
    v53 = *(v1 + 16);
    *v54.i64 = OUTLINED_FUNCTION_9_48();
    v56 = vbslq_s8(v54, v55[115], xmmword_257778740);
  }

  v57 = *(v28 + 24);
  if ((v43 + 3) > (v57 >> 1))
  {
    OUTLINED_FUNCTION_174(v57);
    OUTLINED_FUNCTION_8_51();
    v72 = v66;
    sub_257469AE0();
    v28 = v67;
  }

  OUTLINED_FUNCTION_23_7();
  *(v28 + 16) = v43 + 3;
  v58 = v28 + 40 * v51;
  *(v58 + 32) = v2 + 6;
  *(v58 + 40) = v59;
  *(v58 + 48) = v60;
  *(v58 + 64) = 0;
  sub_2576AACFC(v28);
  OUTLINED_FUNCTION_35();
}

uint64_t LinearClassifierConfiguration.weights.getter()
{
  v1 = type metadata accessor for Proto_GLMClassifier.DoubleArray(0);
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
      sub_2577396E0(v10, v6);
      v12 = *v6;

      sub_257739A40(v6, type metadata accessor for Proto_GLMClassifier.DoubleArray);
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

void sub_257738308(uint64_t *a1)
{
  v1 = *a1;

  LinearClassifierConfiguration.weights.setter();
}

void LinearClassifierConfiguration.weights.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for Proto_GLMClassifier.DoubleArray(0);
  v4 = OUTLINED_FUNCTION_63(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  v12 = *(v2 + 16);
  if (v12)
  {
    v20 = v0;
    OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257485498();
    v13 = 32;
    v14 = v21;
    do
    {
      v15 = *(v2 + v13);
      v16 = *(v3 + 20);

      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v11 = v15;
      v18 = *(v21 + 16);
      v17 = *(v21 + 24);
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_174(v17);
        sub_257485498();
      }

      *(v21 + 16) = v18 + 1;
      sub_2577399E4(v11, v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18);
      v13 += 8;
      --v12;
    }

    while (v12);

    v0 = v20;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v19 = *v0;

  *v0 = v14;
  OUTLINED_FUNCTION_35();
}

void (*LinearClassifierConfiguration.weights.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = LinearClassifierConfiguration.weights.getter();
  return sub_2577384FC;
}

void sub_2577384FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    LinearClassifierConfiguration.weights.setter();
  }

  else
  {
    v5 = *a1;
    LinearClassifierConfiguration.weights.setter();
  }
}

uint64_t sub_25773855C(uint64_t *a1)
{
  v1 = *a1;

  return LinearClassifierConfiguration.offset.setter(v2);
}

uint64_t LinearClassifierConfiguration.offset.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*LinearClassifierConfiguration.offset.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25763F698;
}

uint64_t LinearClassifierConfiguration.classLabels.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  v18 = type metadata accessor for Proto_GLMClassifier(0);
  sub_2577395B4(v1 + *(v18 + 32), v17);
  result = OUTLINED_FUNCTION_65(v17);
  if (v20)
  {
    v22 = 0;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_95();
    sub_2577399E4(v17, v11);
    OUTLINED_FUNCTION_0_116();
    sub_2577396E0(v11, v9);
    sub_257738900();
    v21 = v23;
    v22 = v24;
    result = sub_257739A40(v11, v1);
  }

  *a1 = v21;
  *(a1 + 8) = v22;
  return result;
}

uint64_t sub_257738764@<X0>(uint64_t a1@<X8>)
{
  result = LinearClassifierConfiguration.classLabels.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_2577387A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return LinearClassifierConfiguration.classLabels.setter(&v3);
}

uint64_t LinearClassifierConfiguration.classLabels.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = (&v18 - v7);
  v9 = *a1;
  if (a1[1])
  {
    v10 = v8 + *(type metadata accessor for Proto_StringVector(0) + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v8 = v9;
    v11 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v12 = *a1;

    sub_25764CFE8();
    v11 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  v16 = type metadata accessor for Proto_GLMClassifier(0);
  return sub_257739624(v8, v1 + *(v16 + 32));
}

void sub_257738900()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Proto_StringVector(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = (v9 - v8);
  v11 = type metadata accessor for Proto_Int64Vector(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_0_116();
  sub_2577396E0(v1, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2577399E4(v24, v17);
    v27 = *v17;
    v28 = *(*v17 + 16);
    if (v28)
    {
      OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
      sub_257483724();
      v26 = v34;
      v29 = (v27 + 32);
      v30 = *(v34 + 16);
      do
      {
        v32 = *v29++;
        v31 = v32;
        v33 = *(v34 + 24);
        if (v30 >= v33 >> 1)
        {
          OUTLINED_FUNCTION_174(v33);
          sub_257483724();
        }

        *(v34 + 16) = v30 + 1;
        *(v34 + 8 * v30++ + 32) = v31;
        --v28;
      }

      while (v28);
      OUTLINED_FUNCTION_2_79();
      OUTLINED_FUNCTION_5_63();
    }

    else
    {
      OUTLINED_FUNCTION_2_79();
      OUTLINED_FUNCTION_5_63();
      v26 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_79();
    sub_2577399E4(v24, v10);
    v26 = *v10;

    sub_257739A40(v10, type metadata accessor for Proto_StringVector);
  }

  *v3 = v26;
  *(v3 + 8) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_35();
}

void (*LinearClassifierConfiguration.classLabels.modify(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  v3[3] = v4;
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  v8 = __swift_coroFrameAllocStub(v6);
  v3[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  v3[6] = __swift_coroFrameAllocStub(v11);
  v3[7] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[8] = v12;
  v13 = *(type metadata accessor for Proto_GLMClassifier(0) + 32);
  *(v3 + 3) = v13;
  sub_2577395B4(v1 + v13, v12);
  OUTLINED_FUNCTION_65(v12);
  if (v14)
  {
    v16 = 0;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_95();
    sub_2577399E4(v12, v8);
    OUTLINED_FUNCTION_0_116();
    sub_2577396E0(v8, v7);
    sub_257738900();
    v15 = v18;
    v16 = v19;
    sub_257739A40(v8, v1);
  }

  *v3 = v15;
  *(v3 + 8) = v16;
  return sub_257738CB8;
}

void sub_257738CB8(void ***a1, char a2)
{
  v6 = *a1;
  v7 = **a1;
  v8 = *(*a1 + 8);
  v9 = (*a1)[3];
  if (a2)
  {
    v10 = v6[6];
    if ((*a1)[1])
    {
      v11 = v10 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v10 = v7;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v13 = **a1;

      sub_25764CFE8();
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    sub_257739624(v10, v5 + v4);
    v18 = *v6;
  }

  else
  {
    v10 = v6[7];
    if ((*a1)[1])
    {
      v12 = v10 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v10 = v7;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v19 = **a1;

      sub_25764CFE8();
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    sub_257739624(v9, v5 + v4);
  }

  free(v7);
  free(v9);
  free(v10);
  free(v2);
  free(v3);

  free(v6);
}

void LinearClassifierConfiguration.postEvaluationFunction.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
  }

  OUTLINED_FUNCTION_18_2(a1);
}

unsigned __int8 *LinearClassifierConfiguration.postEvaluationFunction.setter(unsigned __int8 *result)
{
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *(*LinearClassifierConfiguration.postEvaluationFunction.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24) == 1 && *(v1 + 16) != 0;
  *(a1 + 8) = v2;
  return sub_257498D04;
}

void LinearClassifierConfiguration.classEncoding.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_18_2(a1);
}

unsigned __int8 *LinearClassifierConfiguration.classEncoding.setter(unsigned __int8 *result)
{
  *(v1 + 32) = *result;
  *(v1 + 40) = 1;
  return result;
}

uint64_t *(*LinearClassifierConfiguration.classEncoding.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 40) == 1 && *(v1 + 32) != 0;
  *(a1 + 8) = v2;
  return sub_257739010;
}

uint64_t *sub_257739010(uint64_t *result)
{
  v1 = *result;
  *(v1 + 32) = *(result + 8);
  *(v1 + 40) = 1;
  return result;
}

uint64_t LinearClassifierConfiguration.init()@<X0>(uint64_t a1@<X8>)
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

void LinearClassifierConfiguration.init(weights:offset:classLabels:postEvaluationFunction:classEncoding:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - v14);
  v16 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  v28 = *v3;
  v17 = *v1;
  v18 = MEMORY[0x277D84F90];
  *v9 = MEMORY[0x277D84F90];
  *(v9 + 8) = v18;
  *(v9 + 16) = 0;
  *(v9 + 24) = 1;
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  v19 = type metadata accessor for Proto_GLMClassifier(0);
  v20 = *(v19 + 32);
  v21 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(v9 + v20, 1, 1, v21);
  v22 = v9 + *(v19 + 36);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  LinearClassifierConfiguration.weights.setter();
  *(v9 + 8) = v7;
  if (v5)
  {
    v23 = v15 + *(type metadata accessor for Proto_StringVector(0) + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v15 = v16;
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    sub_25764CFE8();
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v21);
  sub_257739624(v15, v9 + v20);
  *(v9 + 16) = v28;
  *(v9 + 24) = 1;
  *(v9 + 32) = v17;
  *(v9 + 40) = 1;
  OUTLINED_FUNCTION_35();
}

void LinearClassifierConfiguration.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v21;
  a20 = v22;
  v23 = sub_257743A84();
  v24 = OUTLINED_FUNCTION_63(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  v38 = type metadata accessor for LinearClassifierConfiguration();
  v39 = OUTLINED_FUNCTION_4(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3();
  sub_2577396E0(v20, v43 - v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_257744000;
  *(v44 + 32) = 0x73746867696577;
  *(v44 + 40) = 0xE700000000000000;
  v45 = LinearClassifierConfiguration.weights.getter();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880430, &unk_25776C040);
  *(v44 + 48) = v45;
  *(v44 + 72) = v46;
  *(v44 + 80) = 0x74657366666FLL;
  *(v44 + 88) = 0xE600000000000000;
  v47 = *(v20 + 8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F68, &qword_257744890);
  *(v44 + 96) = v47;
  *(v44 + 120) = v48;
  *(v44 + 128) = 0x62614C7373616C63;
  *(v44 + 136) = 0xEB00000000736C65;
  *(v44 + 168) = &type metadata for LinearClassifierConfiguration.ClassLabels;

  LinearClassifierConfiguration.classLabels.getter(v44 + 144);
  OUTLINED_FUNCTION_23_7();
  *(v44 + 176) = 0xD000000000000016;
  *(v44 + 184) = v49;
  *(v44 + 216) = &type metadata for LinearClassifierConfiguration.PostEvaluationFunction;
  v50 = *(v20 + 24) == 1 && *(v20 + 16) != 0;
  *(v44 + 192) = v50;
  strcpy((v44 + 224), "classEncoding");
  *(v44 + 238) = -4864;
  *(v44 + 264) = &type metadata for LinearClassifierConfiguration.ClassEncoding;
  v51 = *(v20 + 40) == 1 && *(v20 + 32) != 0;
  *(v44 + 240) = v51;
  v52 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v52);
  (*(v26 + 104))(v31, *MEMORY[0x277D84C38], v23);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t static LinearClassifierConfiguration.ClassLabels.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_257479C78(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_257487374(v4, v5);
}

uint64_t sub_2577395B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257739624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LinearClassifierConfiguration()
{
  result = qword_281537760;
  if (!qword_281537760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2577396E0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_257739740()
{
  result = qword_281537D78;
  if (!qword_281537D78)
  {
    type metadata accessor for Proto_GLMClassifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537D78);
  }

  return result;
}

unint64_t sub_25773979C()
{
  result = qword_27F881B70;
  if (!qword_27F881B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B70);
  }

  return result;
}

unint64_t sub_2577397F4()
{
  result = qword_27F881B78;
  if (!qword_27F881B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B78);
  }

  return result;
}

uint64_t sub_257739870()
{
  result = type metadata accessor for Proto_GLMClassifier(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_2577398EC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2577399E4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_257739A40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_79()
{

  return sub_257739A40(v0, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
}

uint64_t OUTLINED_FUNCTION_5_63()
{

  return sub_257739A40(v0, type metadata accessor for Proto_Int64Vector);
}

double OUTLINED_FUNCTION_9_48()
{
  v1 = vdup_n_s32(v0 == 0);
  v2.i64[0] = v1.u32[0];
  v2.i64[1] = v1.u32[1];
  *&result = vcltzq_s64(vshlq_n_s64(v2, 0x3FuLL)).u64[0];
  return result;
}

uint64_t NeuralNetwork.Layer.MultiplyParameters.propertyDescriptions.getter()
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

uint64_t static NeuralNetwork.Layer.multiply(name:inputName:outputName:scalar:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, float a6@<S0>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = OUTLINED_FUNCTION_12_13();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v21 = (v20 - v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2577442B0;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2577442B0;
  *(v23 + 32) = a3;
  *(v23 + 40) = a4;
  v24 = *(type metadata accessor for Proto_MultiplyLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v21 = a6;
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
  return sub_257634BB4(v21);
}

uint64_t static NeuralNetwork.Layer.Kind.multiply(scalar:)@<X0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  if ((a1 & 0x100000000) != 0)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = *&a1;
  }

  v4 = a2 + *(type metadata accessor for Proto_MultiplyLayerParams(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = v3;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static NeuralNetwork.Layer.multiply(name:inputNames:outputName:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = OUTLINED_FUNCTION_12_13();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v21 = (v20 - v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_257743FF0;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  *(v22 + 48) = a3;
  *(v22 + 56) = a4;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2577442B0;
  *(v23 + 32) = a5;
  *(v23 + 40) = a6;
  LODWORD(a1) = *(type metadata accessor for Proto_MultiplyLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v21 = 1065353216;
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
  return sub_257634BB4(v21);
}

uint64_t NeuralNetwork.Layer.MultiplyParameters.init(scalar:)@<X0>(float *a1@<X8>, float a2@<S0>)
{
  v4 = a1 + *(type metadata accessor for Proto_MultiplyLayerParams(0) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a1 = a2;
  return result;
}

float (*NeuralNetwork.Layer.MultiplyParameters.scalar.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_25749D2A8;
}

BOOL static NeuralNetwork.Layer.MultiplyParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = *(type metadata accessor for Proto_MultiplyLayerParams(0) + 20);
    sub_2577431B4();
    sub_25773A640(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.MultiplyParameters.hash(into:)()
{
  type metadata accessor for Proto_MultiplyLayerParams(0);
  OUTLINED_FUNCTION_0_117();
  sub_25773A640(v0, v1);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.MultiplyParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_MultiplyLayerParams(0);
  OUTLINED_FUNCTION_0_117();
  sub_25773A640(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25773A284()
{
  sub_257743A14();
  type metadata accessor for Proto_MultiplyLayerParams(0);
  sub_25773A640(&qword_27F87E0D8, type metadata accessor for Proto_MultiplyLayerParams);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.MultiplyParameters.customMirror.getter()
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
  v11 = &v23 - v10;
  v12 = type metadata accessor for NeuralNetwork.Layer.MultiplyParameters();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_25773A54C(v1, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442B0;
  v19 = OUTLINED_FUNCTION_14_6(v18, 25459);
  v20 = *v1;
  *(v19 + 72) = MEMORY[0x277D83A90];
  *(v19 + 48) = v20;
  v21 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v21);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.MultiplyParameters()
{
  result = qword_27F881B88;
  if (!qword_27F881B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25773A54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.MultiplyParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25773A640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25773A6B4()
{
  result = type metadata accessor for Proto_MultiplyLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t MLProgram.DataType.debugDescription.getter()
{
  result = 1819242306;
  switch(*v0)
  {
    case 1:
      return 0x676E69727453;
    case 2:
      return 0x363174616F6C46;
    case 3:
      return 0x323374616F6C46;
    case 4:
      return 0x343674616F6C46;
    case 5:
      return 0x363174616F6C4642;
    case 6:
      return 947154505;
    case 7:
      v4 = 829713993;
      goto LABEL_21;
    case 8:
      v2 = 863268425;
      goto LABEL_24;
    case 9:
      v3 = 913600073;
      goto LABEL_11;
    case 0xA:
      return 880045641;
    case 0xB:
      return 0x38746E4955;
    case 0xC:
      return 0x3631746E4955;
    case 0xD:
      return 0x3233746E4955;
    case 0xE:
      return 0x3436746E4955;
    case 0xF:
      v3 = 1953384789;
LABEL_11:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x3400000000;
      break;
    case 0x10:
      v2 = 1953384789;
LABEL_24:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x3200000000;
      break;
    case 0x11:
      result = 0x31746E4955;
      break;
    case 0x12:
      v4 = 1953384789;
LABEL_21:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x3600000000;
      break;
    case 0x13:
      result = 0x33746E4955;
      break;
    case 0x14:
      result = 0x34453874616F6C46;
      break;
    case 0x15:
      result = 0x35453874616F6C46;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MLProgram.DataType.size.getter()
{
  result = 1;
  switch(*v0)
  {
    case 1:
    case 0xA:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
      result = 0;
      break;
    case 2:
    case 5:
    case 7:
    case 0xC:
      result = 2;
      break;
    case 3:
    case 8:
    case 0xD:
      result = 4;
      break;
    case 4:
    case 9:
    case 0xE:
      result = 8;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25773ABB0@<X0>(uint64_t *a1@<X8>)
{
  result = MLProgram.DataType.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_25773ABDC()
{
  result = qword_27F881B98;
  if (!qword_27F881B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B98);
  }

  return result;
}

uint64_t _s8DataTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8DataTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

uint64_t SizeRange.lowerBound.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

void sub_25773ADC0(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_6:
    *a1 = v4;
    return;
  }

  if ((*v1 & 0x8000000000000000) == 0)
  {
    v4 = MEMORY[0x277D84F90];
    if (v3 < *v1)
    {
      sub_257743834();
      MEMORY[0x259C64E90](0xD00000000000001FLL, 0x8000000257782180);
      v5 = sub_257743974();
      MEMORY[0x259C64E90](v5);

      MEMORY[0x259C64E90](0xD000000000000025, 0x80000002577821A0);
      v6 = sub_257743974();
      MEMORY[0x259C64E90](v6);

      MEMORY[0x259C64E90](46, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
      sub_2574A16C8();
      v7 = sub_257743604();
      v9 = v8;
      *a1 = v4;
      sub_25767A064();
      v10 = *(*a1 + 16);
      sub_25767A0B0(v10);
      v4 = *a1;
      *(v4 + 16) = v10 + 1;
      v11 = v4 + 48 * v10;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0xE000000000000000;
      *(v11 + 56) = 2;
      *(v11 + 64) = v7;
      *(v11 + 72) = v9;
    }

    goto LABEL_6;
  }

  __break(1u);
}

void SizeRange.description.getter()
{
  if (v0[1] < 0)
  {
    if ((*v0 & 0x8000000000000000) == 0)
    {
      v3 = *v0;
      sub_257743974();
      OUTLINED_FUNCTION_1_96();
      return;
    }
  }

  else
  {
    if ((*v0 & 0x8000000000000000) == 0)
    {
      v2 = *v0;
      sub_257743974();
      OUTLINED_FUNCTION_1_96();
      v1 = sub_257743974();
      MEMORY[0x259C64E90](v1);

      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t SizeRange.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for Proto_SizeRange(0) + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = a1;
    a2[1] = -1;
  }

  return result;
}

uint64_t SizeRange.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for Proto_SizeRange(0) + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = a1;
    a3[1] = a2;
  }

  return result;
}

uint64_t SizeRange.lowerBound.setter(uint64_t result)
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

uint64_t *(*SizeRange.lowerBound.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
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

uint64_t SizeRange.upperBound.setter(uint64_t result, char a2)
{
  if (a2)
  {
    v3 = -1;
  }

  else
  {
    v3 = result;
  }

  *(v2 + 8) = v3;
  return result;
}

uint64_t (*SizeRange.upperBound.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 8);
  *a1 = v2 & ~(v2 >> 63);
  *(a1 + 8) = v2 < 0;
  return sub_25773B1C4;
}

uint64_t sub_25773B1C4(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = -1;
  }

  else
  {
    v1 = *result;
  }

  *(*(result + 16) + 8) = v1;
  return result;
}

uint64_t SizeRange.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Proto_SizeRange(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static SizeRange.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v2 = *(type metadata accessor for Proto_SizeRange(0) + 24);
    sub_2577431B4();
    sub_25773B950(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t SizeRange.hash(into:)()
{
  type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_0_118();
  sub_25773B950(v0, v1);

  return sub_2577435F4();
}

uint64_t SizeRange.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_0_118();
  sub_25773B950(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25773B3D8()
{
  sub_257743A14();
  type metadata accessor for Proto_SizeRange(0);
  sub_25773B950(&qword_27F87AAA8, type metadata accessor for Proto_SizeRange);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t SizeRange.relative<A>(to:)()
{
  v1 = v0[1];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if ((*v0 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 >= *v0)
    {
      v4 = *v0;
      v5 = v0[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881BA0, &qword_257778D90);
      sub_257743634();
      return v6;
    }

    __break(1u);
    goto LABEL_10;
  }

  v2 = *v0;
  if ((*v0 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2577437A4();
  if (v6 >= v2)
  {
    return v2;
  }

LABEL_11:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall SizeRange.contains(_:)(Swift::Int a1)
{
  v2 = *v1;
  v3 = v1[1];
  if ((v3 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 >= v2)
    {
      if (v3 >= a1)
      {
        v6 = __OFSUB__(v2, a1);
        v4 = v2 == a1;
        v5 = (v2 - a1) < 0;
      }

      else
      {
        v6 = 0;
        v4 = 0;
        v5 = 0;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return a1;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v6 = __OFSUB__(v2, a1);
  v4 = v2 == a1;
  v5 = (v2 - a1) < 0;
LABEL_9:
  if (v5 ^ v6 | v4)
  {
    LOBYTE(a1) = 1;
  }

  else
  {
    LOBYTE(a1) = 0;
  }

  return a1;
}

uint64_t sub_25773B56C@<X0>(uint64_t *a1@<X8>)
{
  result = SizeRange.relative<A>(to:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SizeRange.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for SizeRange();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  sub_25773B858(v1, &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  result = swift_allocObject();
  *(result + 16) = xmmword_257743FF0;
  *(result + 32) = 0x756F427265776F6CLL;
  *(result + 40) = 0xEA0000000000646ELL;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v16 = MEMORY[0x277D83B88];
    *(result + 48) = *v1;
    *(result + 72) = v16;
    *(result + 80) = 0x756F427265707075;
    *(result + 88) = 0xEA0000000000646ELL;
    v17 = v1[1];
    v18 = v17 < 0;
    v19 = v17 & ~(v17 >> 63);
    *(result + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881BA8, &qword_257778D98);
    *(v15 + 96) = v19;
    *(v15 + 104) = v18;
    v20 = sub_257743A74();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
    (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
    return sub_257743AA4();
  }

  return result;
}

uint64_t type metadata accessor for SizeRange()
{
  result = qword_27F881BB8;
  if (!qword_27F881BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25773B858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeRange();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25773B950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25773B9C0()
{
  result = type metadata accessor for Proto_SizeRange(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_1_96()
{

  JUMPOUT(0x259C64E90);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.init()@<X0>(uint64_t a1@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v2 = *(type metadata accessor for Proto_BatchedMatMulLayerParams(0) + 20);
  if (qword_27F8795D0 != -1)
  {
    OUTLINED_FUNCTION_13_37();
  }

  *(a1 + v2) = qword_27F87BF40;
}

void static NeuralNetwork.Layer.batchedMatrixMultiply(name:inputNames:outputName:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v32 = v2;
  v33 = v3;
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
  v19 = &v32 - v18;
  v20 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v26 = v25 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_257743FF0;
  *(v27 + 32) = v9;
  *(v27 + 40) = v7;
  *(v27 + 48) = v32;
  *(v27 + 56) = v5;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2577442B0;
  *(v28 + 32) = v33;
  *(v28 + 40) = v1;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v29 = *(type metadata accessor for Proto_BatchedMatMulLayerParams(0) + 20);
  if (qword_27F8795D0 != -1)
  {
    OUTLINED_FUNCTION_13_37();
  }

  *(v26 + v29) = qword_27F87BF40;
  swift_storeEnumTagMultiPayload();

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v30 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v13 + v30) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v28);
  sub_2574897E0(v19);
  v31 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v31);
  sub_25752846C();
  sub_25766E598(v26, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744E70;
  strcpy((v1 + 32), "Transpose Left");
  *(v1 + 47) = -18;
  v2 = *(v0 + *(type metadata accessor for Proto_BatchedMatMulLayerParams(0) + 20));
  OUTLINED_FUNCTION_296();
  if (*(v2 + 16))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v2 + 16))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = 0x736F70736E617254;
  *(v1 + 72) = 0xEF74686769522065;
  OUTLINED_FUNCTION_296();
  if (*(v2 + 17))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v2 + 17))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  *(v1 + 80) = v5;
  *(v1 + 88) = v6;
  OUTLINED_FUNCTION_23_7();
  *(v1 + 96) = 0xD00000000000001DLL;
  *(v1 + 104) = v7;
  result = OUTLINED_FUNCTION_296();
  if ((*(v2 + 24) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v2 + 24);
    *(v1 + 112) = sub_257743974();
    *(v1 + 120) = v9;
    OUTLINED_FUNCTION_23_7();
    *(v1 + 128) = 0xD00000000000001ELL;
    *(v1 + 136) = v10;
    result = OUTLINED_FUNCTION_296();
    if ((*(v2 + 32) & 0x8000000000000000) == 0)
    {
      v12 = *(v2 + 32);
      *(v1 + 144) = sub_257743974();
      *(v1 + 152) = v11;
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeLeft.getter()
{
  v1 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  OUTLINED_FUNCTION_18_45();
  return *(v0 + 16);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeRight.getter()
{
  v1 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  OUTLINED_FUNCTION_18_45();
  return *(v0 + 17);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixFirstDimension.getter()
{
  v1 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  OUTLINED_FUNCTION_18_45();
  result = *(v0 + 24);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixSecondDimension.getter()
{
  v1 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  OUTLINED_FUNCTION_18_45();
  result = *(v0 + 32);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

void NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v2 = OUTLINED_FUNCTION_63(v1);
  v54 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = (&v52 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  v22 = type metadata accessor for NeuralNetwork.WeightParameters();
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v52 - v30;
  NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.getter();
  OUTLINED_FUNCTION_155(v21, 1, v22);
  if (v32)
  {
    sub_2574695E4(v21, &qword_27F880938, &unk_25776E510);
    v33 = MEMORY[0x277D84F90];
  }

  else
  {
    v53 = v8;
    OUTLINED_FUNCTION_4_26();
    sub_2576A16F4(v21, v31);
    v34 = *(v1 + 48);
    *v11 = 0x73746867696557;
    v11[1] = 0xE700000000000000;
    OUTLINED_FUNCTION_3_77();
    sub_25773D9D8(v31, v11 + v35);
    sub_257469D34();
    v33 = v36;
    v37 = *(v36 + 16);
    v0 = v37 + 1;
    if (v37 >= *(v36 + 24) >> 1)
    {
      OUTLINED_FUNCTION_31_19();
      v33 = v49;
    }

    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v31, v38);
    OUTLINED_FUNCTION_8_29();
    sub_25749E9A8(v11, v39 + v40 * v37);
    v8 = v53;
  }

  sub_25773C678();
  OUTLINED_FUNCTION_155(v18, 1, v22);
  if (v32)
  {
    sub_2574695E4(v18, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    sub_2576A16F4(v18, v28);
    v41 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
    OUTLINED_FUNCTION_328(v41);
    OUTLINED_FUNCTION_296();
    if (*(v0 + 40) == 1)
    {
      v42 = *(v1 + 48);
      *v8 = 1935763778;
      v8[1] = 0xE400000000000000;
      OUTLINED_FUNCTION_3_77();
      sub_25773D9D8(v28, v8 + v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = *(v33 + 16);
        sub_257469D34();
        v33 = v51;
      }

      v44 = *(v33 + 16);
      if (v44 >= *(v33 + 24) >> 1)
      {
        OUTLINED_FUNCTION_31_19();
      }

      OUTLINED_FUNCTION_0_50();
      sub_25766E598(v28, v45);
      OUTLINED_FUNCTION_8_29();
      sub_25749E9A8(v8, v46 + v47 * v44);
    }

    else
    {
      OUTLINED_FUNCTION_0_50();
      sub_25766E598(v28, v48);
    }
  }

  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.getter()
{
  OUTLINED_FUNCTION_31();
  v49 = v1;
  v2 = type metadata accessor for Proto_WeightParams(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for NeuralNetwork.WeightParameters();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v48 = (v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - v23;
  v25 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328(v25);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  OUTLINED_FUNCTION_296();
  sub_2574A172C(v0 + v26, v24, &qword_27F87A1A0, &qword_257745750);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v2);
  sub_2574695E4(v24, &qword_27F87A1A0, &qword_257745750);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v9);
LABEL_10:
    OUTLINED_FUNCTION_35();
    return;
  }

  v31 = v49;
  sub_2574A172C(v0 + v26, v21, &qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_155(v21, 1, v2);
  if (v32)
  {
    *v8 = MEMORY[0x277D84F90];
    *(v8 + 8) = xmmword_257745740;
    *(v8 + 24) = xmmword_257745740;
    *(v8 + 40) = xmmword_257745740;
    *(v8 + 56) = 0;
    v33 = v8 + *(v2 + 36);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v34 = *(v2 + 40);
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    OUTLINED_FUNCTION_155(v21, 1, v2);
    v39 = v31;
    v40 = v9;
    if (!v32)
    {
      sub_2574695E4(v21, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    sub_2576A16F4(v21, v8);
    v39 = v31;
    v40 = v9;
  }

  v41 = v48;
  sub_2576FF45C(v8, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_296();
  v43 = *(v0 + 24);
  if (v43 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v42 + 32) = v43;
    OUTLINED_FUNCTION_296();
    v44 = *(v0 + 32);
    if ((v44 & 0x8000000000000000) == 0)
    {
      *(v42 + 40) = v44;
      v45 = *v41;

      *v41 = v42;
      OUTLINED_FUNCTION_3_77();
      sub_25773D9D8(v41, v39);
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v40);
      OUTLINED_FUNCTION_0_50();
      sub_25766E598(v41, v46);
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_25773C678()
{
  OUTLINED_FUNCTION_31();
  v32 = v1;
  v2 = type metadata accessor for Proto_WeightParams(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = *(v0 + *(type metadata accessor for Proto_BatchedMatMulLayerParams(0) + 20));
  v20 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
  OUTLINED_FUNCTION_296();
  sub_2574A172C(v19 + v20, v18, &qword_27F87A1A0, &qword_257745750);
  v21 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v2);
  sub_2574695E4(v18, &qword_27F87A1A0, &qword_257745750);
  v23 = EnumTagSinglePayload == 1;
  v24 = v32;
  if (!v23)
  {
    sub_2574A172C(v19 + v20, v15, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_155(v15, 1, v2);
    if (v23)
    {
      *v8 = MEMORY[0x277D84F90];
      *(v8 + 8) = xmmword_257745740;
      *(v8 + 24) = xmmword_257745740;
      *(v8 + 40) = xmmword_257745740;
      *(v8 + 56) = 0;
      v25 = v8 + *(v2 + 36);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v26 = *(v2 + 40);
      type metadata accessor for Proto_QuantizationParams(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
      OUTLINED_FUNCTION_155(v15, 1, v2);
      if (!v23)
      {
        sub_2574695E4(v15, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      sub_2576A16F4(v15, v8);
    }

    sub_2576FF45C(v8, v24);
    v21 = 0;
  }

  v31 = type metadata accessor for NeuralNetwork.WeightParameters();
  __swift_storeEnumTagSinglePayload(v24, v21, 1, v31);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.hasBias.getter()
{
  v1 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  OUTLINED_FUNCTION_18_45();
  return *(v0 + 40);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeLeft.setter()
{
  v3 = OUTLINED_FUNCTION_23_32();
  v4 = OUTLINED_FUNCTION_376_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v6);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_355_0(v7);
  }

  result = OUTLINED_FUNCTION_237_0();
  *(v5 + 16) = v0 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeLeft.modify()
{
  v2 = OUTLINED_FUNCTION_38_13();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_9_49(v3);
  OUTLINED_FUNCTION_12_53(v4);
  OUTLINED_FUNCTION_10_52();
  *(v1 + 84) = *(v0 + 16);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25773C9A8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_21_13(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_448(v7);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_25_26(v8);
  }

  OUTLINED_FUNCTION_447();
  *(v6 + 16) = v3;

  free(v1);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeRight.setter()
{
  v3 = OUTLINED_FUNCTION_23_32();
  v4 = OUTLINED_FUNCTION_376_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v6);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_355_0(v7);
  }

  result = OUTLINED_FUNCTION_237_0();
  *(v5 + 17) = v0 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeRight.modify()
{
  v2 = OUTLINED_FUNCTION_38_13();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_9_49(v3);
  OUTLINED_FUNCTION_12_53(v4);
  OUTLINED_FUNCTION_10_52();
  *(v1 + 84) = *(v0 + 17);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25773CAE4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_21_13(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_448(v7);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_25_26(v8);
  }

  OUTLINED_FUNCTION_447();
  *(v6 + 17) = v3;

  free(v1);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixFirstDimension.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
    v5 = OUTLINED_FUNCTION_376_0(v4);
    v6 = *(v1 + v2);
    if ((v5 & 1) == 0)
    {
      v7 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v7);
      OUTLINED_FUNCTION_6_65();
      OUTLINED_FUNCTION_355_0(v8);
    }

    result = OUTLINED_FUNCTION_237_0();
    *(v6 + 24) = v3;
  }

  return result;
}

void (*NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixFirstDimension.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = *(OUTLINED_FUNCTION_39_15(v2) + 20);
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  result = OUTLINED_FUNCTION_10_52();
  v6 = *(v4 + 24);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v6;
    return sub_25773CC48;
  }

  return result;
}

void sub_25773CC48(uint64_t *a1, char a2)
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
    v11 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v11);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_25_26(v12);
  }

  OUTLINED_FUNCTION_447();
  *(v8 + 24) = v3;

  free(v2);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixSecondDimension.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
    v5 = OUTLINED_FUNCTION_376_0(v4);
    v6 = *(v1 + v2);
    if ((v5 & 1) == 0)
    {
      v7 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v7);
      OUTLINED_FUNCTION_6_65();
      OUTLINED_FUNCTION_355_0(v8);
    }

    result = OUTLINED_FUNCTION_237_0();
    *(v6 + 32) = v3;
  }

  return result;
}

void (*NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixSecondDimension.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = *(OUTLINED_FUNCTION_39_15(v2) + 20);
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  result = OUTLINED_FUNCTION_10_52();
  v6 = *(v4 + 32);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v6;
    return sub_25773CDE0;
  }

  return result;
}

void sub_25773CDE0(uint64_t *a1, char a2)
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
    v11 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v11);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_25_26(v12);
  }

  OUTLINED_FUNCTION_447();
  *(v8 + 32) = v3;

  free(v2);
}

void sub_25773CE90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2574A172C(a1, &v5 - v4, &qword_27F880938, &unk_25776E510);
  NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.setter();
}

void NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.setter()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v42[-v8];
  v10 = type metadata accessor for Proto_WeightParams(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v42[-v21];
  v23 = type metadata accessor for NeuralNetwork.WeightParameters();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v29 = v28 - v27;
  sub_2574A172C(v3, v22, &qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_155(v22, 1, v23);
  if (v30)
  {
    sub_2574695E4(v22, &qword_27F880938, &unk_25776E510);
    v31 = *(type metadata accessor for Proto_BatchedMatMulLayerParams(0) + 20);
    v32 = *(v1 + v31);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);
      v33 = *(v1 + v31);
    }

    else
    {
      v35 = *(v1 + v31);
      v36 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v36);

      sub_2575CB67C();
      v33 = v37;
      sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);

      *(v1 + v31) = v33;
    }

    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v10);
    v41 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
    swift_beginAccess();
    sub_25763A1E4(v9, v33 + v41);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    sub_2576A16F4(v22, v29);
    sub_25773D9D8(v29 + *(v23 + 20), v16);
    sub_257533178(v16);
    sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);
    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v29, v34);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.modify(void *a1)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.getter();
  return OUTLINED_FUNCTION_15_10();
}

void sub_25773D278(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_2574A172C(a1[2], v2, &qword_27F880938, &unk_25776E510);
    NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.setter();
    sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    v5 = a1[2];
    NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.setter();
  }

  free(v3);

  free(v2);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.hasBias.setter()
{
  v3 = OUTLINED_FUNCTION_23_32();
  v4 = OUTLINED_FUNCTION_376_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v6);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_355_0(v7);
  }

  result = OUTLINED_FUNCTION_237_0();
  *(v5 + 40) = v0 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.hasBias.modify()
{
  v2 = OUTLINED_FUNCTION_38_13();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_9_49(v3);
  OUTLINED_FUNCTION_12_53(v4);
  OUTLINED_FUNCTION_10_52();
  *(v1 + 84) = *(v0 + 40);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25773D3D4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_21_13(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_448(v7);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_25_26(v8);
  }

  OUTLINED_FUNCTION_447();
  *(v6 + 40) = v3;

  free(v1);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.int8DynamicQuantize.getter()
{
  v1 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  v2 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  OUTLINED_FUNCTION_18_45();
  return *(v0 + v2);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.int8DynamicQuantize.setter()
{
  v3 = OUTLINED_FUNCTION_23_32();
  v4 = OUTLINED_FUNCTION_376_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v6);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_355_0(v7);
  }

  v8 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  result = OUTLINED_FUNCTION_237_0();
  *(v5 + v8) = v0 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.int8DynamicQuantize.modify()
{
  v2 = OUTLINED_FUNCTION_38_13();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_9_49(v3);
  OUTLINED_FUNCTION_12_53(v4);
  v5 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  OUTLINED_FUNCTION_10_52();
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25773D564(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_21_13(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_448(v7);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_25_26(v8);
  }

  v9 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  OUTLINED_FUNCTION_447();
  *(v6 + v9) = v3;

  free(v1);
}

void NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v39 = v2;
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
  v41 = &v39 - v16;
  v40 = type metadata accessor for NeuralNetwork.Layer.BatchedMatrixMultiplyParameters();
  v17 = OUTLINED_FUNCTION_4(v40);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  sub_25773D9D8(v1, v21 - v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2577503A0;
  strcpy((v22 + 32), "transposeLeft");
  *(v22 + 46) = -4864;
  v23 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328(v23);
  OUTLINED_FUNCTION_296();
  v24 = MEMORY[0x277D839B0];
  *(v22 + 48) = *(v0 + 16);
  *(v22 + 72) = v24;
  strcpy((v22 + 80), "transposeRight");
  *(v22 + 95) = -18;
  OUTLINED_FUNCTION_296();
  *(v22 + 96) = *(v0 + 17);
  OUTLINED_FUNCTION_23_7();
  *(v22 + 120) = v24;
  *(v22 + 128) = 0xD00000000000001ALL;
  *(v22 + 136) = v25;
  OUTLINED_FUNCTION_296();
  v26 = *(v0 + 24);
  if (v26 < 0)
  {
    __break(1u);
  }

  else
  {
    v27 = MEMORY[0x277D83B88];
    *(v22 + 144) = v26;
    OUTLINED_FUNCTION_23_7();
    *(v22 + 168) = v27;
    *(v22 + 176) = 0xD00000000000001BLL;
    *(v22 + 184) = v28;
    OUTLINED_FUNCTION_296();
    v29 = *(v0 + 32);
    if ((v29 & 0x8000000000000000) == 0)
    {
      *(v22 + 192) = v29;
      *(v22 + 216) = v27;
      *(v22 + 224) = 0x73746867696577;
      *(v22 + 232) = 0xE700000000000000;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
      *(v22 + 264) = v30;
      __swift_allocate_boxed_opaque_existential_0((v22 + 240));
      NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.getter();
      *(v22 + 272) = 1935763810;
      *(v22 + 280) = 0xE400000000000000;
      *(v22 + 312) = v30;
      __swift_allocate_boxed_opaque_existential_0((v22 + 288));
      sub_25773C678();
      *(v22 + 320) = 0x73616942736168;
      *(v22 + 328) = 0xE700000000000000;
      OUTLINED_FUNCTION_296();
      *(v22 + 336) = *(v0 + 40);
      OUTLINED_FUNCTION_23_7();
      v31 = MEMORY[0x277D839B0];
      *(v22 + 360) = MEMORY[0x277D839B0];
      *(v22 + 368) = 0xD000000000000013;
      *(v22 + 376) = v32;
      v33 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
      OUTLINED_FUNCTION_296();
      v34 = *(v0 + v33);
      *(v22 + 408) = v31;
      *(v22 + 384) = v34;
      sub_257743A74();
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
      (*(v6 + 104))(v11, *MEMORY[0x277D84C38], v3);
      sub_257743AA4();
      OUTLINED_FUNCTION_35();
      return;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for NeuralNetwork.Layer.BatchedMatrixMultiplyParameters()
{
  result = qword_27F881BC8;
  if (!qword_27F881BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25773D9D8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_25773DA38()
{
  result = qword_27F87DE30;
  if (!qword_27F87DE30)
  {
    type metadata accessor for Proto_BatchedMatMulLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87DE30);
  }

  return result;
}

uint64_t sub_25773DAB8()
{
  result = type metadata accessor for Proto_BatchedMatMulLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_6_65()
{

  sub_2575CB67C();
}

uint64_t OUTLINED_FUNCTION_9_49(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;

  return type metadata accessor for Proto_BatchedMatMulLayerParams(0);
}

uint64_t OUTLINED_FUNCTION_10_52()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_53(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 + 80) = v3;
  v4 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_32()
{

  return type metadata accessor for Proto_BatchedMatMulLayerParams(0);
}

uint64_t OUTLINED_FUNCTION_25_32()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);

  return type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
}

void OUTLINED_FUNCTION_31_19()
{

  sub_257469D34();
}

uint64_t OUTLINED_FUNCTION_39_15(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 80) = v2;

  return type metadata accessor for Proto_BatchedMatMulLayerParams(0);
}

__n128 *sub_25773DCAC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_3_78(v10, xmmword_257744E70);
  v10[3].n128_u64[0] = sub_257743974();
  v10[3].n128_u64[1] = v11;
  v10[4].n128_u64[0] = a1;
  v10[4].n128_u64[1] = a2;
  v12 = *(v4 + 8);
  v10[5].n128_u64[0] = sub_257743794();
  v10[5].n128_u64[1] = v13;
  v10[6].n128_u64[0] = a3;
  v10[6].n128_u64[1] = a4;
  v14 = *(v4 + 12);
  v10[7].n128_u64[0] = sub_257743794();
  v10[7].n128_u64[1] = v15;
  OUTLINED_FUNCTION_8_52();
  v10[8].n128_u64[0] = v16;
  v10[8].n128_u64[1] = v17;
  if (*(*(v4 + 16) + 16))
  {
    OUTLINED_FUNCTION_12_54();
    do
    {
      OUTLINED_FUNCTION_14_37();
      OUTLINED_FUNCTION_10_53();
      if (v19)
      {
        sub_257483754((v18 > 1), v5, 1);
      }

      OUTLINED_FUNCTION_16_35();
    }

    while (!v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v21 = OUTLINED_FUNCTION_13_38();
  v23 = v22;

  v10[9].n128_u64[0] = v21;
  v10[9].n128_u64[1] = v23;
  return v10;
}

__n128 *sub_25773DE28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_3_78(v9, xmmword_2577442C0);
  v9[3].n128_u64[0] = sub_257743974();
  v9[3].n128_u64[1] = v10;
  v9[4].n128_u64[0] = a1;
  v9[4].n128_u64[1] = a2;
  v11 = *(v4 + 8);
  v9[5].n128_u64[0] = sub_257743794();
  v9[5].n128_u64[1] = v12;
  v9[6].n128_u64[0] = a3;
  v9[6].n128_u64[1] = a4;
  v13 = *(v4 + 12);
  v9[7].n128_u64[0] = sub_257743794();
  v9[7].n128_u64[1] = v14;
  return v9;
}

__n128 *NeuralNetwork.Layer.RandomBernoulliStaticParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_3_78(v2, xmmword_2577442C0);
  v2[3].n128_u64[0] = sub_257743974();
  v2[3].n128_u64[1] = v3;
  OUTLINED_FUNCTION_9_50();
  v2[4].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v5;
  v6 = *(v0 + 8);
  v2[5].n128_u64[0] = sub_257743794();
  v2[5].n128_u64[1] = v7;
  OUTLINED_FUNCTION_8_52();
  v2[6].n128_u64[0] = v8;
  v2[6].n128_u64[1] = v9;
  if (*(*(v0 + 16) + 16))
  {
    OUTLINED_FUNCTION_12_54();
    do
    {
      OUTLINED_FUNCTION_14_37();
      OUTLINED_FUNCTION_10_53();
      if (v11)
      {
        sub_257483754((v10 > 1), v1, 1);
      }

      OUTLINED_FUNCTION_16_35();
    }

    while (!v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v13 = OUTLINED_FUNCTION_13_38();
  v15 = v14;

  v2[7].n128_u64[0] = v13;
  v2[7].n128_u64[1] = v15;
  return v2;
}

__n128 *_s20MLModelSpecification13NeuralNetworkV5LayerV29RandomBernoulliLikeParametersV20propertyDescriptionsSaySS4name_SS5valuetGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_3_78(v1, xmmword_257743FF0);
  v1[3].n128_u64[0] = sub_257743974();
  v1[3].n128_u64[1] = v2;
  OUTLINED_FUNCTION_9_50();
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v5 = *(v0 + 8);
  v1[5].n128_u64[0] = sub_257743794();
  v1[5].n128_u64[1] = v6;
  return v1;
}

uint64_t NeuralNetwork.Layer.CategoricalDistributionParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744000;
  *(v1 + 32) = 1684366675;
  *(v1 + 40) = 0xE400000000000000;
  v11 = *v0;
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v2;
  strcpy((v1 + 64), "Sample Count");
  *(v1 + 77) = 0;
  *(v1 + 78) = -5120;
  v12 = v0[1];
  *(v1 + 80) = sub_257743974();
  *(v1 + 88) = v3;
  *(v1 + 96) = 0x737469676F4CLL;
  *(v1 + 104) = 0xE600000000000000;
  v4 = 1702195828;
  if (!*(v0 + 16))
  {
    v4 = 0x65736C6166;
  }

  v5 = 0xE500000000000000;
  if (*(v0 + 16))
  {
    v5 = 0xE400000000000000;
  }

  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 128) = 0x6E6F6C69737045;
  *(v1 + 136) = 0xE700000000000000;
  v6 = *(v0 + 5);
  *(v1 + 144) = sub_257743794();
  *(v1 + 152) = v7;
  *(v1 + 160) = 0x74617265706D6554;
  *(v1 + 168) = 0xEB00000000657275;
  v8 = *(v0 + 6);
  *(v1 + 176) = sub_257743794();
  *(v1 + 184) = v9;
  return v1;
}

BOOL sub_25773E2F4(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_104_0(a1, a2);
  result = 0;
  if (v6)
  {
    OUTLINED_FUNCTION_119_0(v4, v5);
    if (v6)
    {
      if (*(v3 + 12) == *(v2 + 12))
      {
        v8 = *(v7(0) + 28);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_119();
        sub_25773EA90(v9, v10);
        if (OUTLINED_FUNCTION_4_2())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25773E3DC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 32);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL sub_25773E440(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_104_0(a1, a2);
  result = 0;
  if (v6)
  {
    OUTLINED_FUNCTION_119_0(v4, v5);
    if (v6)
    {
      if (*(v3 + 12) == *(v2 + 12))
      {
        v8 = v7;
        if (sub_257487374(*(v3 + 16), *(v2 + 16)))
        {
          v9 = *(v8(0) + 32);
          sub_2577431B4();
          OUTLINED_FUNCTION_0_119();
          sub_25773EA90(v10, v11);
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

uint64_t sub_25773E508@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1(0);
  *a2 = 0;
  a2[1] = 0;
  v4 = a2 + *(v3 + 28);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t NeuralNetwork.Layer.RandomBernoulliStaticParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_RandomBernoulliStaticLayerParams(0) + 28);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.RandomBernoulliStaticParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_104_0(a1, a2);
  result = 0;
  if (v6)
  {
    OUTLINED_FUNCTION_119_0(v4, v5);
    if (v6)
    {
      if (sub_257487374(*(v3 + 16), *(v2 + 16)))
      {
        v7 = *(type metadata accessor for Proto_RandomBernoulliStaticLayerParams(0) + 28);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_119();
        sub_25773EA90(v8, v9);
        if (OUTLINED_FUNCTION_4_2())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25773E690@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1(0) + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL sub_25773E6EC(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_104_0(a1, a2);
  result = 0;
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_119_0(v2, v3);
    if (v4)
    {
      v7 = *(v5(0, v6) + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_119();
      sub_25773EA90(v8, v9);
      if (OUTLINED_FUNCTION_4_2())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.CategoricalDistributionParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  v2 = type metadata accessor for Proto_CategoricalDistributionLayerParams(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a1 + *(v2 + 36);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25773EA90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25773EE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_3_78(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1684366675;
  result[2].n128_u64[1] = 0xE400000000000000;
  v3 = *v2;
  return result;
}

char *OUTLINED_FUNCTION_12_54()
{

  return sub_257483754(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_13_38()
{

  return sub_257743604();
}

uint64_t OUTLINED_FUNCTION_14_37()
{
  v3 = *v0;

  return sub_257743974();
}

void OUTLINED_FUNCTION_16_35()
{
  *(v1 + 16) = v4;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t sub_25773F080(uint64_t a1)
{
  v3 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v31[1] = v1;
  v39 = MEMORY[0x277D84F90];
  v37 = v5;
  sub_2574854F0();
  v9 = v39;
  result = sub_25770BCC0(v37);
  v12 = result;
  v13 = v37;
  v15 = v14;
  v16 = 0;
  v38 = v37 + 64;
  v32 = v37 + 72;
  v33 = v8;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v12 < 1 << *(v13 + 32))
    {
      v17 = v12 >> 6;
      if ((*(v38 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v13 + 36) != v15)
      {
        goto LABEL_25;
      }

      v36 = v11;
      v18 = *(*(v13 + 48) + 8 * v12);
      v19 = *(*(v13 + 56) + 8 * v12);
      v20 = v7 + *(v35 + 24);
      result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (v18 < 0)
      {
        goto LABEL_26;
      }

      *v7 = v18;
      v7[1] = v19;
      v39 = v9;
      v21 = *(v9 + 16);
      if (v21 >= *(v9 + 24) >> 1)
      {
        sub_2574854F0();
        v9 = v39;
      }

      *(v9 + 16) = v21 + 1;
      result = sub_257741018(v7, v9 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v21);
      v13 = v37;
      v22 = 1 << *(v37 + 32);
      if (v12 >= v22)
      {
        goto LABEL_27;
      }

      v23 = *(v38 + 8 * v17);
      if ((v23 & (1 << v12)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v37 + 36) != v15)
      {
        goto LABEL_29;
      }

      v24 = v23 & (-2 << (v12 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v25 = v33;
      }

      else
      {
        v26 = v17 << 6;
        v27 = v17 + 1;
        v25 = v33;
        v28 = (v32 + 8 * v17);
        while (v27 < (v22 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_257653FC0(v12, v15, v36 & 1);
            v13 = v37;
            v22 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_257653FC0(v12, v15, v36 & 1);
        v13 = v37;
      }

LABEL_19:
      if (++v16 == v25)
      {
        return v9;
      }

      v11 = 0;
      v15 = *(v13 + 36);
      v12 = v22;
      if (v22 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
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
  return result;
}

uint64_t sub_25773F384()
{
  v60[45] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577503A0;
  v6 = 0xE700000000000000;
  *(inited + 32) = 0x44492065657254;
  *(inited + 40) = 0xE700000000000000;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = inited;
  v60[0] = *v0;
  *(inited + 48) = sub_257743674();
  *(v7 + 56) = v8;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0x44492065646F4ELL;
  *(v7 + 80) = 0xE700000000000000;
  if ((*(v0 + 8) & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v60[0] = *(v0 + 8);
  *(v7 + 88) = sub_257743674();
  *(v7 + 96) = v9;
  *(v7 + 104) = 0;
  strcpy((v7 + 112), "Node Behavior");
  *(v7 + 126) = -4864;
  if (*(v0 + 24) == 1)
  {
    v10 = *(v0 + 16);
    v11 = qword_257779510[v10];
    v12 = qword_2577794D8[v10];
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  *(v7 + 128) = v11;
  *(v7 + 136) = v12;
  *(v7 + 144) = 0;
  strcpy((v7 + 152), "Feature Index");
  *(v7 + 166) = -4864;
  if ((*(v0 + 32) & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  v4 = 0xD000000000000011;
  v60[0] = *(v0 + 32);
  *(v7 + 168) = sub_257743674();
  *(v7 + 176) = v13;
  *(v7 + 184) = 0;
  strcpy((v7 + 192), "Branch Value");
  *(v7 + 205) = 0;
  *(v7 + 206) = -5120;
  v60[0] = *(v0 + 40);
  *(v7 + 208) = sub_257743674();
  *(v7 + 216) = v14;
  *(v7 + 224) = 0;
  OUTLINED_FUNCTION_23_7();
  *(v7 + 232) = 0xD000000000000012;
  *(v7 + 240) = v15;
  if ((*(v0 + 48) & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v60[0] = *(v0 + 48);
  *(v7 + 248) = sub_257743674();
  *(v7 + 256) = v16;
  *(v7 + 264) = 0;
  OUTLINED_FUNCTION_23_7();
  *(v7 + 272) = 0xD000000000000013;
  *(v7 + 280) = v17;
  if ((*(v0 + 56) & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    sub_257469AE0();
    v47 = v53;
    goto LABEL_17;
  }

  v60[0] = *(v0 + 56);
  *(v7 + 288) = sub_257743674();
  *(v7 + 296) = v18;
  *(v7 + 304) = 0;
  OUTLINED_FUNCTION_23_7();
  *(v7 + 312) = 0xD000000000000021;
  *(v7 + 320) = v19;
  LOBYTE(v60[0]) = *(v0 + 64);
  *(v7 + 328) = sub_257743674();
  *(v7 + 336) = v20;
  *(v7 + 344) = 0;
  v21 = TreeEnsemble.TreeNode.leafValue.getter();
  sub_2576A8AF8(v21, v22, v23, v24, v25, v26, v27, v28, v54, v55, v56, v57, v59, v60[0], v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7], v60[8], v60[9], v60[10], v60[11], v60[12]);
  v60[0] = v29;
  sub_257740870(v60);

  v30 = v60[0];
  v31 = *(v60[0] + 16);
  if (v31)
  {
    v60[0] = MEMORY[0x277D84F90];
    sub_257484060();
    v32 = v60[0];
    v33 = (v30 + 40);
    do
    {
      v34 = *v33;
      v58 = *(v33 - 1);
      v35 = sub_257743974();
      v37 = v36;
      v38 = sub_257743674();
      v40 = v39;
      v60[0] = v32;
      v41 = *(v32 + 16);
      if (v41 >= *(v32 + 24) >> 1)
      {
        sub_257484060();
        v32 = v60[0];
      }

      *(v32 + 16) = v41 + 1;
      v42 = v32 + 40 * v41;
      *(v42 + 32) = v35;
      *(v42 + 40) = v37;
      *(v42 + 48) = v38;
      *(v42 + 56) = v40;
      *(v42 + 64) = 0;
      v33 += 2;
      --v31;
    }

    while (v31);

    v4 = 0xD000000000000011;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v43 = sub_2576AACFC(v32);
  v45 = v44;
  sub_257469AE0();
  v47 = v46;
  *(v46 + 16) = 9;
  *(v46 + 352) = 0x6C6156206661654CLL;
  *(v46 + 360) = 0xEB00000000736575;
  *(v46 + 368) = v43;
  *(v46 + 376) = v45;
  *(v46 + 384) = 2;
  v60[0] = *(v0 + 80);
  v6 = sub_257743674();
  v1 = v48;
  v3 = *(v47 + 16);
  v2 = v3 + 1;
  if (v3 >= *(v47 + 24) >> 1)
  {
    goto LABEL_23;
  }

LABEL_17:
  OUTLINED_FUNCTION_23_7();
  *(v47 + 16) = v2;
  v49 = v47 + 40 * v3;
  *(v49 + 32) = v4;
  *(v49 + 40) = v50;
  *(v49 + 48) = v6;
  *(v49 + 56) = v1;
  *(v49 + 64) = 0;
  result = sub_2576AACFC(v47);
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TreeEnsemble.TreeNode.treeID.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t TreeEnsemble.TreeNode.treeID.setter(uint64_t result)
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

uint64_t *(*TreeEnsemble.TreeNode.treeID.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
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

uint64_t TreeEnsemble.TreeNode.nodeID.getter()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t TreeEnsemble.TreeNode.nodeID.setter(uint64_t result)
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

uint64_t *(*TreeEnsemble.TreeNode.nodeID.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
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

void TreeEnsemble.TreeNode.nodeBehavior.getter(char *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 6;
  }

  *a1 = v2;
}

unsigned __int8 *TreeEnsemble.TreeNode.nodeBehavior.setter(unsigned __int8 *result)
{
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *(*TreeEnsemble.TreeNode.nodeBehavior.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 6;
  }

  *(a1 + 8) = v2;
  return sub_25763F7F4;
}

uint64_t TreeEnsemble.TreeNode.featureIndex.getter()
{
  result = *(v0 + 32);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t TreeEnsemble.TreeNode.featureIndex.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = result;
  }

  return result;
}

uint64_t *(*TreeEnsemble.TreeNode.featureIndex.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 32);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25773FA48;
  }

  return result;
}

uint64_t *sub_25773FA48(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *(result[1] + 32) = v2;
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

double (*TreeEnsemble.TreeNode.branchValue.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_25773FAA8;
}

double sub_25773FAA8(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 40) = *a1;
  return result;
}

uint64_t TreeEnsemble.TreeNode.trueChildNodeID.getter()
{
  result = *(v0 + 48);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t TreeEnsemble.TreeNode.trueChildNodeID.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 48) = result;
  }

  return result;
}

uint64_t *(*TreeEnsemble.TreeNode.trueChildNodeID.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 48);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25773FB0C;
  }

  return result;
}

uint64_t *sub_25773FB0C(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *(result[1] + 48) = v2;
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

uint64_t TreeEnsemble.TreeNode.falseChildNodeID.getter()
{
  result = *(v0 + 56);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t TreeEnsemble.TreeNode.falseChildNodeID.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 56) = result;
  }

  return result;
}

uint64_t *(*TreeEnsemble.TreeNode.falseChildNodeID.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 56);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25773FB84;
  }

  return result;
}

uint64_t *sub_25773FB84(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *(result[1] + 56) = v2;
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

_BYTE *(*TreeEnsemble.TreeNode.missingValueFollowsTrueBranch.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 64);
  return sub_25773FBE4;
}

uint64_t TreeEnsemble.TreeNode.leafValue.getter()
{
  v1 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3();
  v6 = (v5 - v4);
  v7 = *(v0 + 72);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return sub_25773FDF8(v9);
  }

  v17 = MEMORY[0x277D84F90];
  sub_257484D60();
  v9 = v17;
  v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v11 = *(v2 + 72);
  while (1)
  {
    result = sub_2577405E4(v10, v6, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo);
    v13 = *v6;
    if (*v6 < 0)
    {
      break;
    }

    v14 = v6[1];
    sub_25774053C(v6);
    v15 = *(v17 + 16);
    if (v15 >= *(v17 + 24) >> 1)
    {
      sub_257484D60();
    }

    *(v17 + 16) = v15 + 1;
    v16 = v17 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v14;
    v10 += v11;
    if (!--v8)
    {
      return sub_25773FDF8(v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25773FD7C(uint64_t *a1)
{
  v1 = *a1;

  return TreeEnsemble.TreeNode.leafValue.setter(v2);
}

uint64_t TreeEnsemble.TreeNode.leafValue.setter(uint64_t a1)
{
  v2 = sub_25773F080(a1);

  v3 = *(v1 + 72);

  *(v1 + 72) = v2;
  return result;
}

uint64_t sub_25773FDF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A68, &qword_257777F70);
    v3 = sub_257743904();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_257740E6C(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t (*TreeEnsemble.TreeNode.leafValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = TreeEnsemble.TreeNode.leafValue.getter();
  return sub_25773FED8;
}

uint64_t sub_25773FED8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    v5 = sub_25773F080(v4);

    v6 = *(v2 + 72);

    *(v2 + 72) = v5;
  }

  else
  {
    v8 = sub_25773F080(v3);

    v9 = *(v2 + 72);

    *(v2 + 72) = v8;
  }

  return result;
}

double (*TreeEnsemble.TreeNode.relativeHitRate.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 80);
  return sub_25773FFB8;
}

double sub_25773FFB8(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 80) = *a1;
  return result;
}

uint64_t TreeEnsemble.TreeNode.init(treeID:nodeID:nodeBehavior:featureIndex:branchValue:trueChildNodeID:falseChildNodeID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v15 = *a3;
  result = _s20MLModelSpecification12TreeEnsembleV0C4NodeVAEycfC_0(a7);
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  *a7 = a1;
  if (a2 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(a7 + 8) = a2;
  *(a7 + 16) = v15;
  *(a7 + 24) = 1;
  if (a4 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(a7 + 32) = a4;
  *(a7 + 40) = a8;
  if (a5 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(a7 + 48) = a5;
  if ((a6 & 0x8000000000000000) == 0)
  {
    *(a7 + 56) = a6;
    *(a7 + 64) = *(a7 + 64);
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t TreeEnsemble.TreeNode.init(treeID:nodeID:leafValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = _s20MLModelSpecification12TreeEnsembleV0C4NodeVAEycfC_0(a4);
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = a1;
    if ((a2 & 0x8000000000000000) == 0)
    {
      *(a4 + 8) = a2;
      v9 = sub_25773F080(a3);

      v10 = *(a4 + 72);

      *(a4 + 72) = v9;
      *(a4 + 16) = 6;
      *(a4 + 24) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t TreeEnsemble.TreeNode.customMirror.getter()
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
  v10 = &v28 - v9;
  v11 = type metadata accessor for TreeEnsemble.TreeNode();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_2577405E4(v0, v14 - v13, type metadata accessor for TreeEnsemble.TreeNode);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  result = swift_allocObject();
  *(result + 16) = xmmword_257748730;
  *(result + 32) = 0x444965657274;
  *(result + 40) = 0xE600000000000000;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = result;
  v17 = MEMORY[0x277D83B88];
  *(result + 48) = *v0;
  *(result + 72) = v17;
  *(result + 80) = 0x444965646F6ELL;
  *(result + 88) = 0xE600000000000000;
  v18 = *(v0 + 8);
  if (v18 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(result + 96) = v18;
  *(result + 120) = v17;
  strcpy((result + 128), "featureIndex");
  *(result + 141) = 0;
  *(result + 142) = -5120;
  v19 = *(v0 + 32);
  if (v19 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(result + 144) = v19;
  *(result + 168) = v17;
  *(result + 176) = 0x615668636E617262;
  *(result + 184) = 0xEB0000000065756CLL;
  v20 = MEMORY[0x277D839F8];
  *(result + 192) = *(v0 + 40);
  *(result + 216) = v20;
  *(result + 224) = 0x6C69684365757274;
  *(result + 232) = 0xEF444965646F4E64;
  v21 = *(v0 + 48);
  if (v21 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(result + 240) = v21;
  *(result + 264) = v17;
  *(result + 272) = 0xD000000000000010;
  *(result + 280) = 0x8000000257782210;
  v22 = *(v0 + 56);
  if ((v22 & 0x8000000000000000) == 0)
  {
    *(result + 288) = v22;
    *(result + 312) = v17;
    *(result + 320) = 0xD00000000000001DLL;
    *(result + 328) = 0x8000000257782230;
    v23 = MEMORY[0x277D839B0];
    *(result + 336) = *(v0 + 64);
    *(result + 360) = v23;
    *(result + 368) = 0x756C61566661656CLL;
    *(result + 376) = 0xE900000000000065;
    v24 = TreeEnsemble.TreeNode.leafValue.getter();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881C78, &qword_257779388);
    v16[48] = v24;
    v16[51] = v25;
    v16[52] = 0x65766974616C6572;
    v16[53] = 0xEF65746152746948;
    v26 = *(v0 + 80);
    v16[57] = MEMORY[0x277D839F8];
    v16[54] = v26;
    v27 = sub_257743A74();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v27);
    (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
    return sub_257743AA4();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t TreeEnsemble.BranchCondition.operatorString.getter()
{
  v1 = *v0;
  result = qword_257779510[v1];
  v3 = qword_257779548[v1];
  return result;
}

unint64_t TreeEnsemble.BranchCondition.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_257740514@<X0>(uint64_t *a1@<X8>)
{
  result = TreeEnsemble.BranchCondition.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25774053C(uint64_t a1)
{
  v2 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TreeEnsemble.TreeNode()
{
  result = qword_27F881C88;
  if (!qword_27F881C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2577405E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_257740650()
{
  result = qword_27F880198;
  if (!qword_27F880198)
  {
    type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880198);
  }

  return result;
}

unint64_t sub_2577406AC()
{
  result = qword_27F881C80;
  if (!qword_27F881C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881C80);
  }

  return result;
}

uint64_t sub_257740728()
{
  result = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s15BranchConditionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_257740870(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC214(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2577408DC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2577408DC(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880B68, &unk_25776F930);
        v6 = sub_257743764();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_257682550(v7, v8, a1, v4);
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
    return sub_2576823FC(0, v2, 1, a1);
  }

  return result;
}

void sub_257740A08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_97(a1, a2, a3, a4);
  v8 = sub_2577438F4();
  if (!v5[2])
  {

LABEL_30:
    *v4 = v8;
    return;
  }

  v34 = v4;
  v9 = 0;
  OUTLINED_FUNCTION_3_79();
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v15 = v8 + 64;
  if ((v12 & v10) == 0)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v7[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    if (v6)
    {
      OUTLINED_FUNCTION_10_54();
      if (v32 != v33)
      {
        *v7 = -1 << v31;
      }

      else
      {
        OUTLINED_FUNCTION_11_53(v31);
      }

      v5[2] = 0;
    }

    v4 = v34;
    goto LABEL_30;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = v16 | (v9 << 6);
    v20 = *(v5[6] + 8 * v19);
    v21 = *(v5[7] + 8 * v19);
    v22 = *(v8 + 40);
    v23 = sub_257743A04() & ~(-1 << *(v8 + 32));
    if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_8_53();
LABEL_21:
    OUTLINED_FUNCTION_5_64();
    *(v15 + v28) |= v29;
    *(*(v8 + 48) + 8 * v30) = v20;
    *(*(v8 + 56) + 8 * v30) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_7_54();
  while (++v24 != v26 || (v25 & 1) == 0)
  {
    v27 = v24 == v26;
    if (v24 == v26)
    {
      v24 = 0;
    }

    v25 |= v27;
    if (*(v15 + 8 * v24) != -1)
    {
      OUTLINED_FUNCTION_6_66();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_257740C0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_97(a1, a2, a3, a4);
  v38 = v6;
  v8 = sub_2577438F4();
  if (!v5[2])
  {
LABEL_31:

LABEL_32:
    *v4 = v8;
    return;
  }

  v37 = v4;
  v9 = 0;
  OUTLINED_FUNCTION_3_79();
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v15 = v8 + 64;
  if ((v12 & v10) == 0)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v7[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    if ((v38 & 1) == 0)
    {

      v4 = v37;
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_10_54();
    v4 = v37;
    if (v35 != v36)
    {
      *v7 = -1 << v34;
    }

    else
    {
      OUTLINED_FUNCTION_11_53(v34);
    }

    v5[2] = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = v16 | (v9 << 6);
    v20 = *(v5[6] + 8 * v19);
    v21 = (v5[7] + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    if ((v38 & 1) == 0)
    {
    }

    v24 = *(v8 + 40);
    v25 = sub_257743A04() & ~(-1 << *(v8 + 32));
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_8_53();
LABEL_23:
    OUTLINED_FUNCTION_5_64();
    *(v15 + v30) |= v31;
    *(*(v8 + 48) + 8 * v32) = v20;
    v33 = (*(v8 + 56) + 16 * v32);
    *v33 = v22;
    v33[1] = v23;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_7_54();
  while (++v26 != v28 || (v27 & 1) == 0)
  {
    v29 = v26 == v28;
    if (v26 == v28)
    {
      v26 = 0;
    }

    v27 |= v29;
    if (*(v15 + 8 * v26) != -1)
    {
      OUTLINED_FUNCTION_6_66();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_257740E08(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_257774CB0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_257740E6C(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {
  }

  v6 = 0;
  v7 = (a1 + 40);
  while (v6 < *(a1 + 16))
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = *a3;
    v12 = sub_25765407C(v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A70, &qword_257777F78);
        sub_2577438A4();
      }
    }

    else
    {
      sub_257740A08(v15, a2 & 1, &qword_27F881A68, &qword_257777F70);
      v17 = *a3;
      v18 = sub_25765407C(v8);
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v12 = v18;
    }

    v20 = *a3;
    if (v16)
    {
      *(v20[7] + 8 * v12) = v9;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      *(v20[6] + 8 * v12) = v8;
      *(v20[7] + 8 * v12) = v9;
      v21 = v20[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_18;
      }

      v20[2] = v23;
    }

    ++v6;
    v7 += 2;
    a2 = 1;
    if (v25 == v6)
    {
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2577439B4();
  __break(1u);
  return result;
}

uint64_t sub_257741018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_97(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (*(*v4 + 24) > a1)
  {
    v6 = *(*v4 + 24);
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_11_53@<X0>(uint64_t a1@<X8>)
{

  return sub_257740E08(0, (a1 + 63) >> 6, v1);
}

uint64_t sub_257741150()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_16_36(v1, 26707);
  v2 = *v0;
  v3 = *(*v0 + 16);
  if (v3)
  {
    v16 = MEMORY[0x277D84F90];
    sub_257483754(0, v3, 0);
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      v6 = sub_257743974();
      v8 = v7;
      v10 = *(v16 + 16);
      v9 = *(v16 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257483754((v9 > 1), v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      v11 = v16 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v12 = sub_257743604();
  v14 = v13;

  *(v1 + 48) = v12;
  *(v1 + 56) = v14;
  return v1;
}

void sub_257741304(void (*a1)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  OUTLINED_FUNCTION_63(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_342_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_157_0();
  v14 = type metadata accessor for NeuralNetwork.WeightParameters();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  a1();
  if (__swift_getEnumTagSinglePayload(v2, 1, v14) == 1)
  {
    sub_2574695E4(v2, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    sub_2577290B0();
    v21 = *(v4 + 48);
    *v1 = 0x7365756C6156;
    v1[1] = 0xE600000000000000;
    OUTLINED_FUNCTION_1_98();
    sub_257742BD8();
    sub_257469D34();
    v23 = v22;
    v24 = *(v22 + 16);
    if (v24 >= *(v22 + 24) >> 1)
    {
      sub_257469D34();
      v23 = v25;
    }

    sub_257706ADC(v20, type metadata accessor for NeuralNetwork.WeightParameters);
    *(v23 + 16) = v24 + 1;
    sub_25749E9A8(v1, v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24);
  }

  OUTLINED_FUNCTION_434();
}

uint64_t static NeuralNetwork.Layer.constant(name:outputName:shape:values:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47[1] = a6;
  v47[2] = a1;
  v47[3] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_342_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = v47 - v20;
  v22 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v28 = (v27 - v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2577442B0;
  *(v29 + 32) = a3;
  *(v29 + 40) = a4;
  *v28 = MEMORY[0x277D84F90];
  ConstantLayerParams = type metadata accessor for Proto_LoadConstantLayerParams(0);
  v31 = *(ConstantLayerParams + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v32 = *(ConstantLayerParams + 24);
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  NeuralNetwork.Layer.ConstantParameters.shape.setter(a5);
  NeuralNetwork.WeightParameters.init(_:updatable:)();
  type metadata accessor for NeuralNetwork.WeightParameters();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  NeuralNetwork.Layer.ConstantParameters.values.setter(v21);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v41 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a7 + v41) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v29);
  sub_2574897E0(v7);
  type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  sub_25752846C();
  return sub_257706ADC(v28, type metadata accessor for NeuralNetwork.Layer.Kind);
}

uint64_t static NeuralNetwork.Layer.Kind.constant(shape:values:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_342_0();
  *a2 = MEMORY[0x277D84F90];
  ConstantLayerParams = type metadata accessor for Proto_LoadConstantLayerParams(0);
  v10 = *(ConstantLayerParams + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v11 = *(ConstantLayerParams + 24);
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  NeuralNetwork.Layer.ConstantParameters.shape.setter(a1);
  NeuralNetwork.WeightParameters.init(_:updatable:)();
  type metadata accessor for NeuralNetwork.WeightParameters();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  NeuralNetwork.Layer.ConstantParameters.values.setter(v2);
  type metadata accessor for NeuralNetwork.Layer.Kind();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static NeuralNetwork.Layer.Kind.loadConstant(shape:values:)()
{
  OUTLINED_FUNCTION_267();
  v1 = v0;
  v2 = type metadata accessor for NeuralNetwork.WeightParameters();
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_1_98();
  sub_257742BD8();

  NeuralNetwork.Layer.ConstantParameters.init(shape:values:)(v9, v8, v1);
  type metadata accessor for NeuralNetwork.Layer.Kind();
  return swift_storeEnumTagMultiPayload();
}

uint64_t (*NeuralNetwork.Layer.ConstantParameters.shape.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.ConstantParameters.shape.getter();
  return sub_257741AB8;
}

void (*NeuralNetwork.Layer.ConstantParameters.values.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_68_3(v1);
  v0[1] = v2;
  OUTLINED_FUNCTION_13(v2);
  v0[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  v0[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v0[4] = v7;
  NeuralNetwork.Layer.ConstantParameters.values.getter(v7);
  return sub_257741BAC;
}

uint64_t sub_257741C0C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v48 = a3;
  v4 = type metadata accessor for Proto_WeightParams(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v45 = (v9 - v8);
  v10 = type metadata accessor for NeuralNetwork.WeightParameters();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v46 = (v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - v23;
  v25 = *(a1(0) + 24);
  sub_2574DA900();
  LODWORD(a1) = OUTLINED_FUNCTION_18_46(v24);
  sub_2574695E4(v24, &qword_27F87A1A0, &qword_257745750);
  if (a1 == 1)
  {
    OUTLINED_FUNCTION_44();
    return __swift_storeEnumTagSinglePayload(v26, v27, v28, v10);
  }

  else
  {
    sub_2574DA900();
    if (OUTLINED_FUNCTION_18_46(v22) == 1)
    {
      v30 = v45;
      *v45 = MEMORY[0x277D84F90];
      *(v30 + 8) = xmmword_257745740;
      *(v30 + 24) = xmmword_257745740;
      *(v30 + 40) = xmmword_257745740;
      *(v30 + 56) = 0;
      v31 = v30 + *(v4 + 36);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v32 = *(v4 + 40);
      type metadata accessor for Proto_QuantizationParams(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
      if (OUTLINED_FUNCTION_18_46(v22) != 1)
      {
        sub_2574695E4(v22, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      v30 = v45;
      sub_2577290B0();
    }

    v37 = v46;
    v38 = sub_2576FF45C(v30, v46);
    v39 = v47(v38);
    v40 = *v37;

    *v37 = v39;
    OUTLINED_FUNCTION_1_98();
    sub_257742BD8();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v10);
    OUTLINED_FUNCTION_0_97();
    return sub_257706ADC(v37, v44);
  }
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV18ConstantParametersV5shapeSaySiGvg_0()
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

void _s20MLModelSpecification13NeuralNetworkV5LayerV18ConstantParametersV5shapeSaySiGvs_0(uint64_t a1)
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

uint64_t (*NeuralNetwork.Layer.ConstantNDParameters.shape.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.ConstantParameters.shape.getter();
  return sub_2577420E0;
}

uint64_t sub_2577420F8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_257742168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_2574DA900();
  return a5(v11);
}

void sub_257742228(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for Proto_WeightParams(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = type metadata accessor for NeuralNetwork.WeightParameters();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  if (OUTLINED_FUNCTION_18_46(a1) == 1)
  {
    sub_2574695E4(a1, &qword_27F880938, &unk_25776E510);
    v16 = a2(0);
    sub_2574695E4(v2 + *(v16 + 24), &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_434();

    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  else
  {
    sub_2577290B0();
    v22 = *(v9 + 20);
    OUTLINED_FUNCTION_6_67();
    sub_257742BD8();
    OUTLINED_FUNCTION_0_97();
    sub_257706ADC(v15, v23);
    v24 = a2(0);
    sub_2574695E4(v2 + *(v24 + 24), &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_1_5();
    sub_2577290B0();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v5);
    OUTLINED_FUNCTION_434();
  }
}

void (*NeuralNetwork.Layer.ConstantNDParameters.values.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_68_3(v1);
  v0[1] = v2;
  OUTLINED_FUNCTION_13(v2);
  v0[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  v0[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v0[4] = v7;
  NeuralNetwork.Layer.ConstantNDParameters.values.getter(v7);
  return sub_2577424AC;
}

void sub_2577424D8(uint64_t **a1, char a2, uint64_t (*a3)(void), void (*a4)(void *))
{
  v4 = *a1;
  v5 = (*a1)[4];
  if (a2)
  {
    v8 = v4[2];
    v7 = v4[3];
    v9 = *v4;
    v10 = (*a1)[4];
    sub_2574DA900();
    a4(v7);
    sub_2574695E4(v5, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    v12 = type metadata accessor for NeuralNetwork.WeightParameters();
    if (__swift_getEnumTagSinglePayload(v5, 1, v12) == 1)
    {
      v13 = *v4;
      sub_2574695E4(v5, &qword_27F880938, &unk_25776E510);
      v14 = v13 + *(a3(0) + 24);
      sub_2574695E4(v14, &qword_27F87A1A0, &qword_257745750);
      v15 = 1;
    }

    else
    {
      v16 = v4[2];
      v17 = *v4;
      v18 = *(v12 + 20);
      OUTLINED_FUNCTION_6_67();
      sub_257742BD8();
      OUTLINED_FUNCTION_0_97();
      sub_257706ADC(v5, v19);
      v14 = v17 + *(a3(0) + 24);
      sub_2574695E4(v14, &qword_27F87A1A0, &qword_257745750);
      OUTLINED_FUNCTION_1_5();
      sub_2577290B0();
      v15 = 0;
    }

    v7 = v4[3];
    v5 = v4[4];
    v8 = v4[2];
    __swift_storeEnumTagSinglePayload(v14, v15, 1, v4[1]);
  }

  free(v5);
  free(v7);
  free(v8);
  OUTLINED_FUNCTION_434();

  free(v20);
}

uint64_t NeuralNetwork.Layer.ConstantNDParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  ConstantNDLayerParams = type metadata accessor for Proto_LoadConstantNDLayerParams(0);
  v3 = a1 + *(ConstantNDLayerParams + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v4 = *(ConstantNDLayerParams + 24);
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_257742730(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, void (*a3)(uint64_t)@<X3>, void (*a4)(uint64_t)@<X4>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_157_0();
  *a5 = MEMORY[0x277D84F90];
  v15 = a2(0);
  v16 = a5 + *(v15 + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v17 = *(v15 + 24);
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  a3(a1);
  NeuralNetwork.WeightParameters.init(_:updatable:)();
  type metadata accessor for NeuralNetwork.WeightParameters();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  a4(v5);
  OUTLINED_FUNCTION_434();
}

void sub_25774287C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t)@<X3>, void (*a5)(uint64_t)@<X4>, void *a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_157_0();
  *a6 = MEMORY[0x277D84F90];
  v17 = a3(0);
  v18 = a6 + *(v17 + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v19 = *(v17 + 24);
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  a4(a1);
  OUTLINED_FUNCTION_1_98();
  sub_257742BD8();
  type metadata accessor for NeuralNetwork.WeightParameters();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  a5(v6);
  OUTLINED_FUNCTION_0_97();
  sub_257706ADC(a2, v28);
  OUTLINED_FUNCTION_434();
}

uint64_t NeuralNetwork.Layer.ConstantParameters.customMirror.getter()
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
  v13 = type metadata accessor for NeuralNetwork.Layer.ConstantParameters(0);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  sub_257742BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_257743FF0;
  v18 = OUTLINED_FUNCTION_16_36(v17, 26739);
  v19 = NeuralNetwork.Layer.ConstantParameters.shape.getter(v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v17 + 48) = v19;
  *(v17 + 72) = v20;
  *(v17 + 80) = 0x7365756C6176;
  *(v17 + 88) = 0xE600000000000000;
  *(v17 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v17 + 96));
  NeuralNetwork.Layer.ConstantParameters.values.getter(boxed_opaque_existential_0);
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  (*(v3 + 104))(v8, *MEMORY[0x277D84C38], v0);
  return sub_257743AA4();
}

uint64_t sub_257742BD8()
{
  OUTLINED_FUNCTION_267();
  v3 = v2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_257742CE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257742DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_36@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFF00000000FFFFLL | 0x6570610000;
  *(result + 40) = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_46(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}