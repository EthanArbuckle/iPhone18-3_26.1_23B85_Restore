size_t sub_197A1F224(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_197A1F420(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_197A1F688(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_197A1F32C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_197A1F420(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A188, &qword_197A96708);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_197A1F528(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_12_8(a3, result);
  }

  return result;
}

uint64_t sub_197A1F58C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_71();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_6(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_36_5();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_36_5();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_197A1F648(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_12_8(a3, result);
  }

  return result;
}

uint64_t sub_197A1F688(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_71();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_102_3(), v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), result = OUTLINED_FUNCTION_6(v10), v4 + *(v12 + 72) * v3 <= a3))
  {
    v13 = OUTLINED_FUNCTION_102_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_36_5();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_36_5();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_197A1F750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_197945EF8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_197A1F7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, char a14)
{
  v15 = (a9 + *a12);
  v15[3] = a10;
  v15[4] = a11;
  __swift_allocate_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_36_0(a10);
  (*(v16 + 32))();
  *(a9 + 16) = a2;
  v17 = (a9 + *a13);
  v18 = type metadata accessor for RequestMetadata(0);
  v19 = v18[7];
  v20 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v21 = sub_197A87298();
  OUTLINED_FUNCTION_70(v21);
  v23 = v22;
  v24 = *(v22 + 16);
  v24(&v17[v19], a2 + v20, v21);
  v25 = *(a2 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v26 = *(a2 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID + 8);
  v32 = v25;
  *v17 = a3;
  *(v17 + 1) = a4;
  v27 = v18[5];
  OUTLINED_FUNCTION_1_12();
  sub_197958DFC();
  v28 = v18[6];
  (*(v23 + 32))(&v17[v28], a8, v21);
  *&v17[v18[8]] = a7;
  v17[v18[9]] = a6;
  v17[v18[10]] = a14;
  v17[v18[11]] = 0;
  *&v17[v18[12]] = 0;
  v17[v18[13]] = 0;
  v29 = &v17[v18[14]];
  v24(v29, &v17[v28], v21);
  *&v29[*(type metadata accessor for RequestKey(0) + 20)] = 0;
  v30 = &v17[v18[15]];
  *v30 = v32;
  *(v30 + 1) = v26;
  sub_197A878A8();
  return a9;
}

uint64_t sub_197A1F9E8()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_97();
  v2 = type metadata accessor for Request(v1);
  OUTLINED_FUNCTION_28(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_8_0(v7);
  *v8 = v9;
  v8[1] = sub_197960FB0;
  OUTLINED_FUNCTION_69_6();

  return sub_197A180A0(v10, v11, v6, v12);
}

uint64_t sub_197A1FAC0()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_23_8(v4);

  return OUTLINED_FUNCTION_5_2();
}

uint64_t sub_197A1FB54()
{
  OUTLINED_FUNCTION_18();
  v1 = OUTLINED_FUNCTION_97();
  v2 = type metadata accessor for ClientData(v1);
  OUTLINED_FUNCTION_28(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  *v7 = v8;
  v7[1] = sub_197960FB0;
  OUTLINED_FUNCTION_69_6();

  return sub_197A19E0C(v9, v10, v11);
}

uint64_t sub_197A1FC20()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_43(v1);

  return sub_197A1A1EC();
}

uint64_t sub_197A1FCC4()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_81_5();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_14_10(v4);
  OUTLINED_FUNCTION_158_0();

  return sub_197A1CAEC(v6, v7, v8, v9, v10, v11, v12);
}

unint64_t sub_197A1FD5C()
{
  result = qword_1ED87D950;
  if (!qword_1ED87D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D950);
  }

  return result;
}

unint64_t sub_197A1FDB0()
{
  result = qword_1EAF4A120;
  if (!qword_1EAF4A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A120);
  }

  return result;
}

unint64_t sub_197A1FE04()
{
  result = qword_1EAF4A128;
  if (!qword_1EAF4A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A128);
  }

  return result;
}

unint64_t sub_197A1FE58()
{
  result = qword_1ED87D928;
  if (!qword_1ED87D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D928);
  }

  return result;
}

unint64_t sub_197A1FEAC()
{
  result = qword_1ED87D4C0;
  if (!qword_1ED87D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D4C0);
  }

  return result;
}

unint64_t sub_197A1FF00()
{
  result = qword_1EAF4A130;
  if (!qword_1EAF4A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A130);
  }

  return result;
}

uint64_t sub_197A1FF74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_197A1FFC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ResponseIterator(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ResponseIterator(uint64_t result, int a2, int a3)
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

uint64_t sub_197A20164(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_197A201A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of OneShotRequest.execute()()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 104);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of OneShotRequest.cancel_async()()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 160);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_43(v4);

  return v7();
}

uint64_t sub_197A20518()
{
  result = type metadata accessor for RequestMetadata(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of StreamingRequest.cancel_async()()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 160);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_43(v4);

  return v7();
}

void sub_197A207DC()
{
  sub_197A208A8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Session(319);
    if (v1 <= 0x3F)
    {
      sub_197973688();
      if (v2 <= 0x3F)
      {
        sub_197A87298();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_197A208A8()
{
  result = qword_1ED87DF48;
  if (!qword_1ED87DF48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED87DF48);
  }

  return result;
}

uint64_t sub_197A2090C()
{
  result = sub_197A87298();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_197A20A38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20ModelManagerServices24CombinedResponseIteratorC10SetupStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_197A20AC4(uint64_t a1, unsigned int a2)
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

uint64_t sub_197A20B04(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_197A20B48(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RequestCancellationReason.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RequestCancellationReason.SpecificPolicyChangeCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for RequestMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_197A20E28()
{
  result = qword_1EAF4A168;
  if (!qword_1EAF4A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A168);
  }

  return result;
}

unint64_t sub_197A20E80()
{
  result = qword_1EAF4A170;
  if (!qword_1EAF4A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A170);
  }

  return result;
}

unint64_t sub_197A20ED8()
{
  result = qword_1EAF4A178;
  if (!qword_1EAF4A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A178);
  }

  return result;
}

unint64_t sub_197A20F30()
{
  result = qword_1EAF4A180;
  if (!qword_1EAF4A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A180);
  }

  return result;
}

unint64_t sub_197A20F88()
{
  result = qword_1ED87D930;
  if (!qword_1ED87D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D930);
  }

  return result;
}

unint64_t sub_197A20FE0()
{
  result = qword_1ED87D938;
  if (!qword_1ED87D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D938);
  }

  return result;
}

unint64_t sub_197A21038()
{
  result = qword_1ED87D8F8;
  if (!qword_1ED87D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D8F8);
  }

  return result;
}

unint64_t sub_197A21090()
{
  result = qword_1ED87D900;
  if (!qword_1ED87D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D900);
  }

  return result;
}

unint64_t sub_197A210E8()
{
  result = qword_1ED87D918;
  if (!qword_1ED87D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D918);
  }

  return result;
}

unint64_t sub_197A21140()
{
  result = qword_1ED87D920;
  if (!qword_1ED87D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D920);
  }

  return result;
}

unint64_t sub_197A21198()
{
  result = qword_1ED87D908;
  if (!qword_1ED87D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D908);
  }

  return result;
}

unint64_t sub_197A211F0()
{
  result = qword_1ED87D910;
  if (!qword_1ED87D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D910);
  }

  return result;
}

unint64_t sub_197A21248()
{
  result = qword_1ED87D958;
  if (!qword_1ED87D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D958);
  }

  return result;
}

unint64_t sub_197A212A0()
{
  result = qword_1ED87D960;
  if (!qword_1ED87D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D960);
  }

  return result;
}

unint64_t sub_197A212F8()
{
  result = qword_1ED87D940;
  if (!qword_1ED87D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D940);
  }

  return result;
}

unint64_t sub_197A21350()
{
  result = qword_1ED87D948;
  if (!qword_1ED87D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D948);
  }

  return result;
}

unint64_t sub_197A213A8()
{
  result = qword_1ED87FA28;
  if (!qword_1ED87FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FA28);
  }

  return result;
}

unint64_t sub_197A21400()
{
  result = qword_1ED87FA30;
  if (!qword_1ED87FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FA30);
  }

  return result;
}

unint64_t sub_197A21458()
{
  result = qword_1ED87FDA8;
  if (!qword_1ED87FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FDA8);
  }

  return result;
}

unint64_t sub_197A214B0()
{
  result = qword_1ED87FDB0;
  if (!qword_1ED87FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FDB0);
  }

  return result;
}

void sub_197A21504(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_197A21524()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_81_5();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_14_10(v4);
  OUTLINED_FUNCTION_158_0();

  return sub_197A1C638(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_197A215BC()
{
  OUTLINED_FUNCTION_49_0();
  v2 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_10(v2);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 48) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_197960FB0;
  OUTLINED_FUNCTION_69_6();

  return sub_197A1C138(v11, v12, v6, v7, v8, v13, v9);
}

uint64_t sub_197A216E4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_43(v4);
  v6 = OUTLINED_FUNCTION_22();

  return sub_197A1C384(v6, v7);
}

uint64_t sub_197A2176C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_81_5();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_10(v3);

  return sub_197A1B54C(v5, v6, v7, v8, v9, v1);
}

uint64_t objectdestroy_47Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  OUTLINED_FUNCTION_34_4();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_197A2185C()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_1(v2);

  return sub_197A12BDC(v4, v0);
}

uint64_t sub_197A218E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OUTLINED_FUNCTION_27_8()
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_163_0()
{
  v2 = *(v0 + 488);
  v3 = *(v0 + 472);
}

uint64_t sub_197A21A78()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED87FB48);
  v1 = OUTLINED_FUNCTION_22();
  __swift_project_value_buffer(v1, v2);
  return sub_197A875F8();
}

uint64_t IPCCachedSession.CancellationHandlerHandle.hashValue.getter()
{
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](v0);
  return sub_197A88358();
}

uint64_t sub_197A21BC4()
{
  v1 = *v0;
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](v1);
  return sub_197A88358();
}

uint64_t IPCCachedSession.__allocating_init(initSession:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  IPCCachedSession.init(initSession:)(a1, a2);
  return v7;
}

void *IPCCachedSession.init(initSession:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  type metadata accessor for IPCCachedSession.CancellationHandlerHandle();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C0, &qword_197A967F0);
  sub_197A25358(&unk_1ED880388, v5, type metadata accessor for IPCCachedSession.CancellationHandlerHandle);
  v2[16] = sub_197A87898();
  v2[17] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C8, qword_197A967F8);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v2[14] = a1;
  v2[15] = a2;
  return v2;
}

uint64_t sub_197A21D80()
{
  v3 = *MEMORY[0x1E69E9840];
  type metadata accessor for _OSActivity();
  swift_initStackObject();
  v0 = sub_1979489D4("modelmanagerd connection cancellation", 37, 2);
  sub_197A21F90();
  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v0 + 3));
  swift_endAccess();

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_197A21E3C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D0, &qword_197A96818);
  v3 = OUTLINED_FUNCTION_28(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult;
  OUTLINED_FUNCTION_95();
  sub_197944580(v0 + v9, v8, &qword_1EAF4A1D0, &qword_197A96818);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C8, qword_197A967F8);
  v11 = 1;
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    sub_197944580(v8, v1, &qword_1EAF4A1D0, &qword_197A96818);
    v11 = swift_getEnumCaseMultiPayload() != 1;
    sub_197947A40(v1, &qword_1EAF4A1C8, qword_197A967F8);
  }

  sub_197947A40(v8, &qword_1EAF4A1D0, &qword_197A96818);
  return v11;
}

void sub_197A21F90()
{
  OUTLINED_FUNCTION_67();
  v2 = v0;
  v3 = OUTLINED_FUNCTION_54_4();
  v4 = type metadata accessor for IPCSessionWrapper(v3);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D0, &qword_197A96818);
  v12 = OUTLINED_FUNCTION_28(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44_7();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v47[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47[-v19];
  v21 = OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult;
  OUTLINED_FUNCTION_95();
  sub_197944580(v0 + v21, v20, &qword_1EAF4A1D0, &qword_197A96818);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C8, qword_197A967F8);
  if (__swift_getEnumTagSinglePayload(v20, 1, v22) == 1)
  {
    goto LABEL_2;
  }

  sub_197944580(v20, v18, &qword_1EAF4A1D0, &qword_197A96818);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_197947A40(v18, &qword_1EAF4A1C8, qword_197A967F8);
  }

  else
  {
    OUTLINED_FUNCTION_8_8();
    sub_19794B22C(v18, v10);
    v23 = *(v4 + 20);
    if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_9();
      sub_197962A70(v10, v46);
LABEL_2:
      sub_197947A40(v20, &qword_1EAF4A1D0, &qword_197A96818);
      goto LABEL_21;
    }

    v24 = v10[3];
    v25 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v24);
    (*(v25 + 16))(0xD00000000000001ALL, 0x8000000197AA3DB0, v24, v25);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
    OUTLINED_FUNCTION_46();
    sub_197A25D14(v1, v0 + v21);
    swift_endAccess();
    OUTLINED_FUNCTION_3_9();
    sub_197962A70(v10, v29);
  }

  sub_197947A40(v20, &qword_1EAF4A1D0, &qword_197A96818);
  if (qword_1ED87FC08 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_7_7();
  }

  v30 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v30, qword_1ED87FB48);
  v31 = sub_197A875E8();
  v32 = sub_197A87D78();
  if (OUTLINED_FUNCTION_68_3(v32))
  {
    v33 = OUTLINED_FUNCTION_204();
    *v33 = 0;
    _os_log_impl(&dword_197941000, v31, v32, "Running connection cancellation handlers...", v33, 2u);
    OUTLINED_FUNCTION_44();
  }

  v34 = sub_197A21E3C();
  OUTLINED_FUNCTION_95();
  v2 = *(v2 + 128);
  v35 = 1 << *(v2 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v2 + 64);
  v38 = (v35 + 63) >> 6;
  v39 = v34;
  sub_197A878A8();
  v40 = 0;
  if (v37)
  {
    while (1)
    {
      v41 = v40;
LABEL_18:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = *(v2 + 56) + ((v41 << 10) | (16 * v42));
      v45 = *v43;
      v44 = *(v43 + 8);
      v48 = v39;

      v45(&v48);

      if (!v37)
      {
        goto LABEL_14;
      }
    }
  }

  while (1)
  {
LABEL_14:
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v41 >= v38)
    {
      break;
    }

    v37 = *(v2 + 64 + 8 * v41);
    ++v40;
    if (v37)
    {
      v40 = v41;
      goto LABEL_18;
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197A2237C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = v1[15];
  v3 = v1[14];
  v4 = v1[7];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  return MEMORY[0x1EEE6DFA0](sub_197A22498, v4, 0);
}

uint64_t sub_197A22498()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[8];
  v2 = v0[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[16];
    v0[5] = *v2;
    swift_willThrowTypedImpl();
LABEL_9:
    v24 = v0[12];
    v23 = v0[13];
    v25 = v0[11];
    v26 = v0[9];

    OUTLINED_FUNCTION_13();
    goto LABEL_11;
  }

  v4 = v0[11];
  v5 = OUTLINED_FUNCTION_63();
  sub_19794BDF8(v5, v6, v7, v8);
  v9 = type metadata accessor for IPCSessionWrapper(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v9);
  v11 = v0[11];
  if (EnumTagSinglePayload == 1)
  {
    sub_197947A40(v0[11], &qword_1EAF499F0, &qword_197A92358);
    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v12 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v12, qword_1ED87FB48);
    v13 = sub_197A875E8();
    v14 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v14))
    {
      v15 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v15);
      OUTLINED_FUNCTION_53();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_4_8();
    sub_197A25358(v21, 255, v22);
    OUTLINED_FUNCTION_88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_9;
  }

  v29 = v0[12];
  v28 = v0[13];
  v30 = v0[9];
  v31 = v0[6];
  OUTLINED_FUNCTION_8_8();
  sub_19794B22C(v11, v32);

  OUTLINED_FUNCTION_15();
LABEL_11:

  return v27();
}

uint64_t sub_197A226BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_197A2275C;

  return sub_197A2294C();
}

uint64_t sub_197A2275C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 40) = v0;

  if (v0)
  {
    v10 = sub_197A228E8;
  }

  else
  {
    v10 = sub_197A22870;
  }

  return MEMORY[0x1EEE6DFA0](v10, v6, 0);
}

uint64_t sub_197A22870()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for IPCSessionWrapper(0);
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = *(v1 + 136);
  *(v1 + 136) = 0;

  OUTLINED_FUNCTION_15();

  return v8();
}

uint64_t sub_197A228E8()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 24);
  v2 = *(v1 + 136);
  *(v1 + 136) = 0;

  OUTLINED_FUNCTION_13();
  v4 = *(v0 + 40);

  return v3();
}

uint64_t sub_197A2294C()
{
  OUTLINED_FUNCTION_9();
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D0, &qword_197A96818);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  v1[15] = OUTLINED_FUNCTION_78_0();
  v6 = type metadata accessor for IPCSessionWrapper(0);
  v1[16] = v6;
  OUTLINED_FUNCTION_10(v6);
  v1[17] = v7;
  v1[18] = *(v8 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197A22A38()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 112);
  v2 = *(v1 + 120);
  v6 = (*(v1 + 112) + **(v1 + 112));
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_197A22B28;

  return v6(v0 + 16);
}

uint64_t sub_197A22B28()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = *(v2 + 168);
  *v4 = *v1;
  *(v3 + 176) = v0;

  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_197A22FD4;
  }

  else
  {
    v7 = sub_197A22C4C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_197A22C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v64 = v14[22];
  v15 = v14[19];
  v16 = v14[20];
  v17 = v14[17];
  v18 = v14[18];
  v19 = v14[16];
  v20 = v14[14];
  sub_197947C44((v14 + 2), v16);
  v21 = v16 + *(v19 + 20);
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  v22 = v14[5];
  v23 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v22);
  v24 = swift_allocObject();
  swift_weakInit();
  sub_197A25C5C(v16, v15);
  v25 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  sub_19794B22C(v15, v26 + v25);
  v27 = *(v23 + 24);

  v27(sub_197A25CB4, v26, v22, v23);

  v28 = v14[5];
  v29 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v28);
  (*(v29 + 8))(v28, v29);
  v30 = v14[20];
  if (v64)
  {
    v32 = v14[14];
    v31 = v14[15];
    MEMORY[0x19A8EBBD0](v64);
    ModelManagerError.init(wrapping:)(v64, v31);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C8, qword_197A967F8);
    OUTLINED_FUNCTION_58_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
    v37 = OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult;
    OUTLINED_FUNCTION_46();
    sub_197A25D14(v31, v32 + v37);
    swift_endAccess();
    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_4_8();
    sub_197A25358(v38, 255, v39);
    OUTLINED_FUNCTION_88();
    v41 = v40;
    MEMORY[0x19A8EBBD0](v64);
    ModelManagerError.init(wrapping:)(v64, v41);
    swift_willThrow();

    OUTLINED_FUNCTION_3_9();
    sub_197962A70(v30, v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v14 + 2);
    v44 = v14[19];
    v43 = v14[20];
    v45 = v14[15];

    OUTLINED_FUNCTION_13();
  }

  else
  {
    v46 = v14[19];
    v48 = v14[14];
    v47 = v14[15];
    v49 = v14[13];
    sub_197A25C5C(v14[20], v47);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C8, qword_197A967F8);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v50);
    v54 = OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult;
    OUTLINED_FUNCTION_46();
    sub_197A25D14(v47, v48 + v54);
    swift_endAccess();
    sub_19794B22C(v30, v49);
    __swift_destroy_boxed_opaque_existential_1Tm(v14 + 2);

    OUTLINED_FUNCTION_15();
  }

  OUTLINED_FUNCTION_142();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, v64, a11, a12, a13, a14);
}

uint64_t sub_197A22FD4()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[15];

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_197A2304C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IPCSessionWrapper(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_197A25C5C(a2, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  sub_19794B22C(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_1979864D0();
}

uint64_t sub_197A23240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_197A23264, 0, 0);
}

uint64_t sub_197A23264()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_95();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_54_4();
    *(v0 + 72) = *(type metadata accessor for IPCSessionWrapper(v3) + 20);
    v4 = OUTLINED_FUNCTION_1_3();

    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_13();

    return v7();
  }
}

uint64_t sub_197A23320()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 64);
  v2 = *(v0 + 56) + *(v0 + 72);
  sub_197A21D80();

  return MEMORY[0x1EEE6DFA0](sub_197A23394, 0, 0);
}

uint64_t sub_197A23394()
{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_13();
  return v1();
}

uint64_t sub_197A233C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for IPCCachedSession.CancellationHandlerHandle();
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  OUTLINED_FUNCTION_46();

  v8 = *(v3 + 128);
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 128);
  sub_197A25238(sub_197A234D4, v7, v6);
  *(v3 + 128) = v10;

  swift_endAccess();
  return v6;
}

uint64_t sub_197A234D4(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_197A23500()
{
  OUTLINED_FUNCTION_33();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_197A87298();
  v1[13] = v6;
  OUTLINED_FUNCTION_10(v6);
  v1[14] = v7;
  v9 = *(v8 + 64);
  v1[15] = OUTLINED_FUNCTION_78_0();
  v10 = type metadata accessor for ModelManagerError();
  v1[16] = v10;
  OUTLINED_FUNCTION_6(v10);
  v12 = *(v11 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_68_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[21] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_10(AssociatedTypeWitness);
  v1[22] = v14;
  v16 = *(v15 + 64);
  v1[23] = OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_68_1();
  v1[24] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_8();
  v1[25] = sub_197A25358(v17, 255, v18);
  v19 = type metadata accessor for IPCResult();
  v1[26] = v19;
  OUTLINED_FUNCTION_10(v19);
  v1[27] = v20;
  v22 = *(v21 + 64);
  v1[28] = OUTLINED_FUNCTION_78_0();
  v23 = type metadata accessor for IPCSessionWrapper(0);
  v1[29] = v23;
  OUTLINED_FUNCTION_28(v23);
  v25 = *(v24 + 64);
  v1[30] = OUTLINED_FUNCTION_78_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_28(v26);
  v28 = *(v27 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v29 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_197A23784()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[32];
  v2 = v0[13];
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = swift_task_alloc();
  v0[33] = v7;
  *v7 = v0;
  v7[1] = sub_197A23828;
  v8 = v0[30];
  v9 = v0[12];

  return sub_19794ECC8();
}

uint64_t sub_197A23828()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = *(v2 + 264);
  *v4 = *v1;
  *(v3 + 272) = v0;

  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_197A24510;
  }

  else
  {
    v7 = sub_197A2394C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_197A2394C()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v27 = v0[26];
  v23 = v0[23];
  v24 = v0[24];
  v4 = v0[21];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[9];
  sub_197947A40(v1, &qword_1EAF499A8, &qword_197A92B00);
  (*(v6 + 16))(v1, &v2[*(v3 + 20)], v5);
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  v25 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
  (*(v8 + 72))(v7, v8);
  v13 = swift_task_alloc();
  v0[35] = v13;
  OUTLINED_FUNCTION_133();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_133();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_133();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_133();
  v15 = swift_getAssociatedConformanceWitness();
  v16 = sub_197A25358(&qword_1ED8813C8, 255, type metadata accessor for ModelManagerError);
  v17 = sub_197A25358(&qword_1ED8813D0, 255, type metadata accessor for ModelManagerError);
  v0[2] = AssociatedConformanceWitness;
  v0[3] = v15;
  v0[4] = v16;
  v0[5] = v17;
  swift_getWitnessTable();
  *v13 = v0;
  v13[1] = sub_197A23BE8;
  v18 = v0[28];
  v19 = v0[26];
  v20 = v0[23];
  v21 = v0[21];

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_197A23BE8()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = v2[35];
  *v4 = *v1;
  *(v3 + 288) = v0;

  v6 = v2[23];
  v7 = v2[22];
  v8 = v2[21];
  v9 = v2[12];
  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v10 = sub_197A24B48;
  }

  else
  {
    v10 = sub_197A23D5C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_197A23D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_121();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_122();
  a20 = v22;
  v25 = *(v22 + 288);
  v26 = *(v22 + 224);
  v27 = *(v22 + 208);
  v28 = *(v22 + 160);
  v29 = *(v22 + 64);
  _s20ModelManagerServices9IPCResultO3getxyq_YKF();
  if (!v25)
  {
    v53 = *(v22 + 248);
    v52 = *(v22 + 256);
    v54 = *(v22 + 240);
    v55 = *(v22 + 184);
    v57 = *(v22 + 152);
    v56 = *(v22 + 160);
    v58 = *(v22 + 136);
    v59 = *(v22 + 144);
    v127 = *(v22 + 120);
    (*(*(v22 + 216) + 8))(*(v22 + 224), *(v22 + 208));
    sub_197947A40(v52, &qword_1EAF499A8, &qword_197A92B00);
    OUTLINED_FUNCTION_3_9();
    sub_197962A70(v54, v60);

    OUTLINED_FUNCTION_15();
    goto LABEL_40;
  }

  v30 = *(v22 + 240);
  v32 = *(v22 + 216);
  v31 = *(v22 + 224);
  v33 = *(v22 + 200);
  v34 = *(v22 + 208);
  v35 = *(v22 + 160);
  v36 = *(v22 + 128);
  v37 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_0_17();
  sub_19794B22C(v35, v38);
  v39 = *(v32 + 8);
  v40 = OUTLINED_FUNCTION_58_6();
  v41(v40);
  OUTLINED_FUNCTION_3_9();
  sub_197962A70(v30, v42);
  OUTLINED_FUNCTION_74_6();
  *(v22 + 48) = v37;
  MEMORY[0x19A8EBBD0](v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if ((swift_dynamicCast() & 1) == 0)
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v61 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v61, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v37);
    v62 = sub_197A875E8();
    v63 = sub_197A87D68();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_56();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      MEMORY[0x19A8EBBD0](v37);
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v64 + 4) = v66;
      *v65 = v66;
      _os_log_impl(&dword_197941000, v62, v63, "Unexpected non ModelManagerError from the daemon %@", v64, 0xCu);
      sub_197947A40(v65, &qword_1EAF48A90, &qword_197A891A0);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_44();
    }

    v67 = *(v22 + 256);
    v68 = *(v22 + 200);
    v69 = *(v22 + 128);

    OUTLINED_FUNCTION_25_7();
    OUTLINED_FUNCTION_38_8();
    v127 = v68;
    swift_willThrow();

    sub_197947A40(v67, &qword_1EAF499A8, &qword_197A92B00);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_74_6();

  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_41_6();
    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v80 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v80, qword_1ED87FB48);
    sub_197A878A8();
    v49 = sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_203();
    if (OUTLINED_FUNCTION_202())
    {
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_119_1();
      *(v35 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v81);
      OUTLINED_FUNCTION_73_5(&dword_197941000, v82, v83, "ModelManager received unentitled request. Expected entitlement %s");
      OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_37();
    }

    v84 = OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_9_7(v84, v85);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 31)
  {
    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v70 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v70, qword_1ED87FB48);
    v71 = sub_197A875E8();
    v72 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v72))
    {
      v73 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v73);
      OUTLINED_FUNCTION_53();
      _os_log_impl(v74, v75, v76, v77, v78, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    OUTLINED_FUNCTION_62_5();
    v79 = *(v22 + 128);

    OUTLINED_FUNCTION_25_7();
    OUTLINED_FUNCTION_39_7();
    v127 = v31;
    swift_willThrow();
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 5)
  {
    v87 = *(v22 + 144);
    v86 = *(v22 + 152);
    OUTLINED_FUNCTION_0_17();
    sub_19794B22C(v88, v89);
    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v90 = *(v22 + 136);
    v91 = *(v22 + 144);
    v92 = sub_197A87608();
    __swift_project_value_buffer(v92, qword_1ED87FB48);
    OUTLINED_FUNCTION_0_17();
    v93 = OUTLINED_FUNCTION_63();
    sub_197A25C5C(v93, v94);
    v95 = sub_197A875E8();
    v96 = sub_197A87D58();
    if (OUTLINED_FUNCTION_68_3(v96))
    {
      v97 = *(v22 + 200);
      v99 = *(v22 + 128);
      v98 = *(v22 + 136);
      v100 = *(v22 + 80);
      v37 = swift_slowAlloc();
      swift_slowAlloc();
      v34 = OUTLINED_FUNCTION_115_0();
      a10 = v34;
      *v37 = 138412546;
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_0_17();
      sub_197A25C5C(v98, v101);
      v102 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_1_13();
      sub_197962A70(v98, v103);
      *(v37 + 1) = v102;
      *v35 = v102;
      *(v37 + 6) = 2080;
      *(v22 + 56) = v100;
      swift_getMetatypeMetadata();
      v104 = sub_197A87988();
      v106 = sub_197948834(v104, v105, &a10);

      *(v37 + 14) = v106;
      _os_log_impl(&dword_197941000, v95, v96, "Passing along %@ in response to %s", v37, 0x16u);
      sub_197947A40(v35, &qword_1EAF48A90, &qword_197A891A0);
      OUTLINED_FUNCTION_37();
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_44();
    }

    else
    {
      v37 = *(v22 + 136);

      OUTLINED_FUNCTION_1_13();
      sub_197962A70(v37, v114);
    }

    v115 = OUTLINED_FUNCTION_19_11();
    OUTLINED_FUNCTION_0_17();
    sub_197A25C5C(v34, v116);
    v127 = v115;
    swift_willThrow();
    OUTLINED_FUNCTION_1_13();
    sub_197962A70(v34, v117);
LABEL_37:
    v113 = v37;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_41_6();
  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v44 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v44, qword_1ED87FB48);
  sub_197A878A8();
  v45 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_203();
  if (OUTLINED_FUNCTION_202())
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_119_1();
    *(v35 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v46);
    OUTLINED_FUNCTION_73_5(&dword_197941000, v47, v48, "IPC Connection errors, evict session to create new session on next connection %s");
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_37();
  }

  v49 = *(v22 + 248);
  v34 = *(v22 + 104);
  sub_197944580(*(v22 + 256), v49, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_37_7();
  if (v51)
  {
    sub_197947A40(v50, &qword_1EAF499A8, &qword_197A92B00);
  }

  else
  {
    v107 = OUTLINED_FUNCTION_10_12();
    v108(v107);
    sub_197A21F90();
    v109 = OUTLINED_FUNCTION_42();
    v110(v109);
  }

  v111 = OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_9_7(v111, v112);
LABEL_34:
  swift_storeEnumTagMultiPayload();
  v127 = v49;
  swift_willThrow();
  v113 = v34;
LABEL_38:
  sub_197947A40(v113, &qword_1EAF499A8, &qword_197A92B00);

LABEL_39:
  OUTLINED_FUNCTION_15_7();

  OUTLINED_FUNCTION_13();
LABEL_40:
  OUTLINED_FUNCTION_142();

  return v119(v118, v119, v120, v121, v122, v123, v124, v125, v127, a10, a11, a12, a13, a14);
}

uint64_t sub_197A24510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_121();
  a21 = v27;
  a22 = v28;
  OUTLINED_FUNCTION_122();
  a20 = v24;
  v29 = *(v24 + 272);
  OUTLINED_FUNCTION_67_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  OUTLINED_FUNCTION_63();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_74_6();

    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 31)
      {
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v50 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v50, qword_1ED87FB48);
        v51 = sub_197A875E8();
        v52 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v52))
        {
          v53 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v53);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v54, v55, v56, v57, v58, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_62_5();
        v59 = *(v24 + 128);

        OUTLINED_FUNCTION_25_7();
        OUTLINED_FUNCTION_39_7();
        v105 = v23;
        swift_willThrow();
      }

      else
      {
        if (EnumCaseMultiPayload == 5)
        {
          OUTLINED_FUNCTION_41_6();
          if (qword_1ED87FC08 != -1)
          {
            OUTLINED_FUNCTION_7_7();
          }

          v31 = sub_197A87608();
          OUTLINED_FUNCTION_66_5(v31, qword_1ED87FB48);
          sub_197A878A8();
          v32 = sub_197A875E8();
          sub_197A87D78();
          OUTLINED_FUNCTION_203();
          if (OUTLINED_FUNCTION_202())
          {
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_115_0();
            OUTLINED_FUNCTION_119_1();
            *(v25 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v33);
            OUTLINED_FUNCTION_73_5(&dword_197941000, v34, v35, "IPC Connection errors, evict session to create new session on next connection %s");
            OUTLINED_FUNCTION_33_5();
            OUTLINED_FUNCTION_37();
          }

          v36 = *(v24 + 248);
          v29 = *(v24 + 104);
          sub_197944580(*(v24 + 256), v36, &qword_1EAF499A8, &qword_197A92B00);
          OUTLINED_FUNCTION_37_7();
          if (v38)
          {
            sub_197947A40(v37, &qword_1EAF499A8, &qword_197A92B00);
          }

          else
          {
            v85 = OUTLINED_FUNCTION_10_12();
            v86(v85);
            sub_197A21F90();
            v87 = OUTLINED_FUNCTION_42();
            v88(v87);
          }

          v89 = OUTLINED_FUNCTION_7_9();
          OUTLINED_FUNCTION_9_7(v89, v90);
LABEL_32:
          swift_storeEnumTagMultiPayload();
          v105 = v36;
          swift_willThrow();
          v91 = v29;
LABEL_36:
          sub_197947A40(v91, &qword_1EAF499A8, &qword_197A92B00);

          goto LABEL_37;
        }

        v67 = *(v24 + 144);
        v66 = *(v24 + 152);
        OUTLINED_FUNCTION_0_17();
        sub_19794B22C(v68, v69);
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v71 = *(v24 + 136);
        v70 = *(v24 + 144);
        v72 = sub_197A87608();
        __swift_project_value_buffer(v72, qword_1ED87FB48);
        OUTLINED_FUNCTION_0_17();
        v73 = OUTLINED_FUNCTION_116();
        sub_197A25C5C(v73, v74);
        v75 = sub_197A875E8();
        v76 = sub_197A87D58();
        if (OUTLINED_FUNCTION_68_3(v76))
        {
          OUTLINED_FUNCTION_66_8();
          v77 = OUTLINED_FUNCTION_113();
          v106 = swift_slowAlloc();
          a10 = v106;
          *v71 = 138412546;
          OUTLINED_FUNCTION_88();
          OUTLINED_FUNCTION_0_17();
          sub_197A25C5C(v26, v78);
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_13();
          sub_197962A70(v26, v79);
          OUTLINED_FUNCTION_53_8();
          v80 = sub_197A87988();
          v82 = sub_197948834(v80, v81, &a10);

          *(v71 + 14) = v82;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v83, v84, "Passing along %@ in response to %s");
          sub_197947A40(v77, &qword_1EAF48A90, &qword_197A891A0);
          OUTLINED_FUNCTION_44();
          v22 = v106;
          __swift_destroy_boxed_opaque_existential_1Tm(v106);
          OUTLINED_FUNCTION_44();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
          v22 = *(v24 + 136);

          OUTLINED_FUNCTION_1_13();
          sub_197962A70(v22, v92);
        }

        v93 = OUTLINED_FUNCTION_19_11();
        OUTLINED_FUNCTION_0_17();
        sub_197A25C5C(v76, v94);
        v105 = v93;
        swift_willThrow();
        OUTLINED_FUNCTION_1_13();
        sub_197962A70(v76, v95);
      }

      v91 = v22;
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_41_6();
    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v60 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v60, qword_1ED87FB48);
    sub_197A878A8();
    v36 = sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_203();
    if (OUTLINED_FUNCTION_202())
    {
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_119_1();
      *(v25 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v61);
      OUTLINED_FUNCTION_73_5(&dword_197941000, v62, v63, "ModelManager received unentitled request. Expected entitlement %s");
      OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_37();
    }

    v64 = OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_9_7(v64, v65);
    goto LABEL_32;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v39 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v39, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v29);
  v40 = sub_197A875E8();
  v41 = sub_197A87D68();

  if (os_log_type_enabled(v40, v41))
  {
    OUTLINED_FUNCTION_56();
    v42 = OUTLINED_FUNCTION_113();
    *v23 = 138412290;
    MEMORY[0x19A8EBBD0](v29);
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 1) = v43;
    *v42 = v43;
    OUTLINED_FUNCTION_53();
    _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    sub_197947A40(v42, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_62_5();
  v49 = *(v24 + 128);

  OUTLINED_FUNCTION_25_7();
  OUTLINED_FUNCTION_38_8();
  v105 = v23;
  swift_willThrow();

  sub_197947A40(v41, &qword_1EAF499A8, &qword_197A92B00);
LABEL_37:
  OUTLINED_FUNCTION_15_7();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_142();

  return v97(v96, v97, v98, v99, v100, v101, v102, v103, v105, a10, a11, a12, a13, a14);
}

uint64_t sub_197A24B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_121();
  a21 = v27;
  a22 = v28;
  OUTLINED_FUNCTION_122();
  a20 = v24;
  v29 = *(v24 + 240);
  OUTLINED_FUNCTION_3_9();
  sub_197962A70(v30, v31);
  v32 = *(v24 + 288);
  OUTLINED_FUNCTION_67_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  OUTLINED_FUNCTION_63();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_74_6();

    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 31)
      {
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v53 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v53, qword_1ED87FB48);
        v54 = sub_197A875E8();
        v55 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v55))
        {
          v56 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v56);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v57, v58, v59, v60, v61, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_62_5();
        v62 = *(v24 + 128);

        OUTLINED_FUNCTION_25_7();
        OUTLINED_FUNCTION_39_7();
        v108 = v23;
        swift_willThrow();
      }

      else
      {
        if (EnumCaseMultiPayload == 5)
        {
          OUTLINED_FUNCTION_41_6();
          if (qword_1ED87FC08 != -1)
          {
            OUTLINED_FUNCTION_7_7();
          }

          v34 = sub_197A87608();
          OUTLINED_FUNCTION_66_5(v34, qword_1ED87FB48);
          sub_197A878A8();
          v35 = sub_197A875E8();
          sub_197A87D78();
          OUTLINED_FUNCTION_203();
          if (OUTLINED_FUNCTION_202())
          {
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_115_0();
            OUTLINED_FUNCTION_119_1();
            *(v25 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v36);
            OUTLINED_FUNCTION_73_5(&dword_197941000, v37, v38, "IPC Connection errors, evict session to create new session on next connection %s");
            OUTLINED_FUNCTION_33_5();
            OUTLINED_FUNCTION_37();
          }

          v39 = *(v24 + 248);
          v32 = *(v24 + 104);
          sub_197944580(*(v24 + 256), v39, &qword_1EAF499A8, &qword_197A92B00);
          OUTLINED_FUNCTION_37_7();
          if (v41)
          {
            sub_197947A40(v40, &qword_1EAF499A8, &qword_197A92B00);
          }

          else
          {
            v88 = OUTLINED_FUNCTION_10_12();
            v89(v88);
            sub_197A21F90();
            v90 = OUTLINED_FUNCTION_42();
            v91(v90);
          }

          v92 = OUTLINED_FUNCTION_7_9();
          OUTLINED_FUNCTION_9_7(v92, v93);
LABEL_32:
          swift_storeEnumTagMultiPayload();
          v108 = v39;
          swift_willThrow();
          v94 = v32;
LABEL_36:
          sub_197947A40(v94, &qword_1EAF499A8, &qword_197A92B00);

          goto LABEL_37;
        }

        v70 = *(v24 + 144);
        v69 = *(v24 + 152);
        OUTLINED_FUNCTION_0_17();
        sub_19794B22C(v71, v72);
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v74 = *(v24 + 136);
        v73 = *(v24 + 144);
        v75 = sub_197A87608();
        __swift_project_value_buffer(v75, qword_1ED87FB48);
        OUTLINED_FUNCTION_0_17();
        v76 = OUTLINED_FUNCTION_116();
        sub_197A25C5C(v76, v77);
        v78 = sub_197A875E8();
        v79 = sub_197A87D58();
        if (OUTLINED_FUNCTION_68_3(v79))
        {
          OUTLINED_FUNCTION_66_8();
          v80 = OUTLINED_FUNCTION_113();
          v109 = swift_slowAlloc();
          a10 = v109;
          *v74 = 138412546;
          OUTLINED_FUNCTION_88();
          OUTLINED_FUNCTION_0_17();
          sub_197A25C5C(v26, v81);
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_13();
          sub_197962A70(v26, v82);
          OUTLINED_FUNCTION_53_8();
          v83 = sub_197A87988();
          v85 = sub_197948834(v83, v84, &a10);

          *(v74 + 14) = v85;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v86, v87, "Passing along %@ in response to %s");
          sub_197947A40(v80, &qword_1EAF48A90, &qword_197A891A0);
          OUTLINED_FUNCTION_44();
          v22 = v109;
          __swift_destroy_boxed_opaque_existential_1Tm(v109);
          OUTLINED_FUNCTION_44();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
          v22 = *(v24 + 136);

          OUTLINED_FUNCTION_1_13();
          sub_197962A70(v22, v95);
        }

        v96 = OUTLINED_FUNCTION_19_11();
        OUTLINED_FUNCTION_0_17();
        sub_197A25C5C(v79, v97);
        v108 = v96;
        swift_willThrow();
        OUTLINED_FUNCTION_1_13();
        sub_197962A70(v79, v98);
      }

      v94 = v22;
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_41_6();
    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v63 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v63, qword_1ED87FB48);
    sub_197A878A8();
    v39 = sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_203();
    if (OUTLINED_FUNCTION_202())
    {
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_119_1();
      *(v25 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v64);
      OUTLINED_FUNCTION_73_5(&dword_197941000, v65, v66, "ModelManager received unentitled request. Expected entitlement %s");
      OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_37();
    }

    v67 = OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_9_7(v67, v68);
    goto LABEL_32;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v42 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v42, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v32);
  v43 = sub_197A875E8();
  v44 = sub_197A87D68();

  if (os_log_type_enabled(v43, v44))
  {
    OUTLINED_FUNCTION_56();
    v45 = OUTLINED_FUNCTION_113();
    *v23 = 138412290;
    MEMORY[0x19A8EBBD0](v32);
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 1) = v46;
    *v45 = v46;
    OUTLINED_FUNCTION_53();
    _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
    sub_197947A40(v45, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_62_5();
  v52 = *(v24 + 128);

  OUTLINED_FUNCTION_25_7();
  OUTLINED_FUNCTION_38_8();
  v108 = v23;
  swift_willThrow();

  sub_197947A40(v44, &qword_1EAF499A8, &qword_197A92B00);
LABEL_37:
  OUTLINED_FUNCTION_15_7();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_142();

  return v100(v99, v100, v101, v102, v103, v104, v105, v106, v108, a10, a11, a12, a13, a14);
}

void *IPCCachedSession.deinit()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  sub_197947A40(v0 + OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult, &qword_1EAF4A1D0, &qword_197A96818);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t IPCCachedSession.__deallocating_deinit()
{
  IPCCachedSession.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_197A25238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_197A408A8();
  OUTLINED_FUNCTION_5_8(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A208, &unk_197A969F0);
  if ((sub_197A87EB8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_197A408A8();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    type metadata accessor for IPCCachedSession.CancellationHandlerHandle();
    result = sub_197A88288();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 16 * v14);
    v21 = v20[1];
    *v20 = a1;
    v20[1] = a2;
    OUTLINED_FUNCTION_165();
  }

  else
  {
    sub_197A25B20(v14, a3, a1, a2, v19);
    OUTLINED_FUNCTION_165();
  }
}

uint64_t sub_197A25358(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_197A25410()
{
  sub_197A25664();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of IPCCachedSession.sendAsync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 264);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_8_0(v11);
  *v12 = v13;
  v12[1] = sub_197960FB0;

  return v15(a1, a2, a3, a4);
}

void sub_197A25664()
{
  if (!qword_1ED880468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF4A1C8, qword_197A967F8);
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED880468);
    }
  }
}

unint64_t sub_197A25708()
{
  result = sub_197A2578C();
  if (v1 <= 0x3F)
  {
    result = sub_197A87298();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_197A2578C()
{
  result = qword_1ED880608;
  if (!qword_1ED880608)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED880608);
  }

  return result;
}

void sub_197A257E8()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_24_8();
  v1 = type metadata accessor for RequestKey(0);
  v2 = OUTLINED_FUNCTION_6(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_28_7();
  v5 = sub_197A40900();
  OUTLINED_FUNCTION_5_8(v5, v6);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_197A88288();
    __break(1u);
    return;
  }

  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1E0, &qword_197A96990);
  OUTLINED_FUNCTION_29_6();
  if (sub_197A87EB8())
  {
    OUTLINED_FUNCTION_78_6();
    sub_197A40900();
    OUTLINED_FUNCTION_47_5();
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  v11 = *v0;
  if (v9)
  {
    OUTLINED_FUNCTION_77_7();
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_58_6();
    sub_197A25C5C(v13, v14);
    OUTLINED_FUNCTION_51_7();
    sub_197A25B68(v15, v16, v17, v18);
    OUTLINED_FUNCTION_66();
  }
}

void sub_197A25908()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_24_8();
  v1 = type metadata accessor for RequestKey(0);
  v2 = OUTLINED_FUNCTION_6(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_28_7();
  v5 = sub_197A40900();
  OUTLINED_FUNCTION_5_8(v5, v6);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_197A88288();
    __break(1u);
    return;
  }

  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1E8, &unk_197A96998);
  OUTLINED_FUNCTION_29_6();
  if (sub_197A87EB8())
  {
    OUTLINED_FUNCTION_78_6();
    sub_197A40900();
    OUTLINED_FUNCTION_47_5();
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  v11 = *v0;
  if (v9)
  {
    OUTLINED_FUNCTION_77_7();
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_58_6();
    sub_197A25C5C(v13, v14);
    OUTLINED_FUNCTION_51_7();
    sub_197A25B68(v15, v16, v17, v18);
    OUTLINED_FUNCTION_66();
  }
}

void sub_197A25A28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_197A4099C();
  OUTLINED_FUNCTION_5_8(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D8, &qword_197A96988);
  if ((OUTLINED_FUNCTION_85_5() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v3;
  v15 = sub_197A4099C();
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    sub_197A88288();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  if (v13)
  {
    v17 = (*(*v3 + 56) + 16 * v12);
    v18 = v17[1];
    *v17 = a1;
    v17[1] = a2;
    OUTLINED_FUNCTION_165();
  }

  else
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_165();

    sub_197A25C1C(v21, v22, v23, v24);
  }
}

unint64_t sub_197A25B20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_197A25B68(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for RequestKey(0);
  result = sub_19794B22C(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_197A25C1C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (result >> 6) + 64) |= 1 << result;
  v4 = (*(a4 + 56) + 16 * result);
  *v4 = a2;
  v4[1] = a3;
  v5 = *(a4 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v7;
  }

  return result;
}

uint64_t sub_197A25C5C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_54_4();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

uint64_t sub_197A25CB4()
{
  v1 = type metadata accessor for IPCSessionWrapper(0);
  OUTLINED_FUNCTION_28(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_197A2304C(v3, v4);
}

uint64_t sub_197A25D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D0, &qword_197A96818);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_197A25D84()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for IPCSessionWrapper(0);
  OUTLINED_FUNCTION_28(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_8_0(v7);
  *v8 = v9;
  v8[1] = sub_197960E38;
  v10 = OUTLINED_FUNCTION_81();

  return sub_197A23240(v10, v11, v12, v6, v13);
}

uint64_t sub_197A25EBC()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v5[1] = sub_197960E38;
  v7 = OUTLINED_FUNCTION_81();

  return sub_197A226BC(v7, v8, v9, v3);
}

void sub_197A25F58(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  v7 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_19798E660(*v1, &v9 - v5);
  v8 = type metadata accessor for ClientData(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    sub_197A26D18(v6, a1);
    if (*(v7 + 16))
    {
      sub_197A433BC();
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void sub_197A26034(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_197999C48(*v1, &v4);
  if (v5)
  {
    sub_197945EF8(&v4, a1);
    if (*(v3 + 16))
    {
      sub_197A433FC(0, 1);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_197A260B0()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);

    sub_197A434F4(0, 1);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t InputStreamSequence.clientDataArray.getter()
{
  OUTLINED_FUNCTION_95();
  v1 = *(v0 + 112);
  return sub_197A878A8();
}

uint64_t InputStreamSequence.clientDataArray.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_4_9();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t InputStreamSequence.inputFinished.setter(char a1)
{
  result = OUTLINED_FUNCTION_4_9();
  *(v1 + 120) = a1;
  return result;
}

uint64_t InputStreamSequence.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = 0;
  return v0;
}

uint64_t InputStreamSequence.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = 0;
  return v0;
}

uint64_t InputStreamSequence.addNext(data:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_197A1ECA8();
  v4 = *(*(v1 + 112) + 16);
  sub_197A1ED34(v4);
  v5 = *(v1 + 112);
  *(v5 + 16) = v4 + 1;
  v6 = *(type metadata accessor for ClientData(0) - 8);
  sub_197A26B28(a1, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4);
  *(v2 + 112) = v5;
  return swift_endAccess();
}

uint64_t InputStreamSequence.next()(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_197A26410, v1, 0);
}

uint64_t sub_197A26410()
{
  OUTLINED_FUNCTION_9();
  if (sub_197A87C68())
  {
    goto LABEL_2;
  }

  v6 = v1[12];
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_3_10();
  if (v8)
  {
    if (!v7)
    {
LABEL_2:
      v2 = v1[11];
      v3 = type metadata accessor for ClientData(0);
      v4 = v2;
      v5 = 1;
LABEL_9:
      __swift_storeEnumTagSinglePayload(v4, v5, 1, v3);
      OUTLINED_FUNCTION_13();

      return v9();
    }

LABEL_8:
    OUTLINED_FUNCTION_5_9();
    sub_197A25F58(v0);
    swift_endAccess();
    v3 = type metadata accessor for ClientData(0);
    v4 = v0;
    v5 = 0;
    goto LABEL_9;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  v11 = *(MEMORY[0x1E69E86E0] + 4);
  v12 = swift_task_alloc();
  v1[13] = v12;
  *v12 = v1;
  v13 = OUTLINED_FUNCTION_0_18(v12);

  return MEMORY[0x1EEE6DA78](v13);
}

uint64_t sub_197A26530()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_197A26634, v2, 0);
}

uint64_t sub_197A26634()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_10();
  if (v3)
  {
    if (!v2)
    {
      v4 = *(v1 + 88);
      v5 = type metadata accessor for ClientData(0);
      v6 = v4;
      v7 = 1;
LABEL_7:
      __swift_storeEnumTagSinglePayload(v6, v7, 1, v5);
      OUTLINED_FUNCTION_13();

      return v8();
    }

LABEL_6:
    OUTLINED_FUNCTION_5_9();
    sub_197A25F58(v0);
    swift_endAccess();
    v5 = type metadata accessor for ClientData(0);
    v6 = v0;
    v7 = 0;
    goto LABEL_7;
  }

  if (v2)
  {
    goto LABEL_6;
  }

  v10 = *(MEMORY[0x1E69E86E0] + 4);
  v11 = swift_task_alloc();
  *(v1 + 104) = v11;
  *v11 = v1;
  v12 = OUTLINED_FUNCTION_0_18();

  return MEMORY[0x1EEE6DA78](v12);
}

uint64_t InputStreamSequence.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InputStreamSequence.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_197A267BC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  InputStreamSequence.makeAsyncIterator()();

  *a1 = v3;
  return result;
}

uint64_t sub_197A267F0()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *v0;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_197A26888;

  return InputStreamSequence.next()(v3);
}

uint64_t sub_197A26888()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_197A26970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_197A26A3C;

  return (sub_19799E02C)(a1, a2, a3, v3 + 16);
}

uint64_t sub_197A26A3C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*v0 + 24);
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_197A26B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_197A26BE4(uint64_t a1)
{
  result = sub_197A26C6C(&qword_1EAF4A218);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197A26C28(uint64_t a1)
{
  result = sub_197A26C6C(&qword_1EAF4A220);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197A26C6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InputStreamSequence();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197A26D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CustomAssetConfiguration.description.getter()
{
  v1 = v0;
  sub_197A87E58();
  MEMORY[0x19A8EAC80](0x636E6174736E693CLL, 0xEE00203A44492065);
  MEMORY[0x19A8EAC80](*v1, v1[1]);
  MEMORY[0x19A8EAC80](0x616C706D6574202CLL, 0xEF203A4449206574);
  MEMORY[0x19A8EAC80](v1[2], v1[3]);
  MEMORY[0x19A8EAC80](0x69746E656469202CLL, 0xEE00203A72656966);
  v2 = type metadata accessor for CustomAssetConfiguration(0);
  MEMORY[0x19A8EAC80](*(v1 + *(v2 + 32)), *(v1 + *(v2 + 32) + 8));
  MEMORY[0x19A8EAC80](0x203A646970202CLL, 0xE700000000000000);
  v3 = (v0 + *(v2 + 28));
  if (v3[8])
  {
    v4 = sub_197A88148();
    MEMORY[0x19A8EAC80](v4);

    MEMORY[0x19A8EAC80](0x726556646970202CLL, 0xEE00203A6E6F6973);
  }

  else
  {
    v6 = v3[6];
    v5 = v3[7];
    v8 = v3[4];
    v7 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v12 = *v3;
    v11 = v3[1];
    OUTLINED_FUNCTION_41_7();
    audit_token_to_pid(v13);
    v14 = sub_197A88148();
    MEMORY[0x19A8EAC80](v14);

    MEMORY[0x19A8EAC80](0x726556646970202CLL, 0xEE00203A6E6F6973);
    OUTLINED_FUNCTION_41_7();
    audit_token_to_pidversion(v15);
  }

  v16 = sub_197A88148();
  MEMORY[0x19A8EAC80](v16);

  MEMORY[0x19A8EAC80](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_197A27004()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED87D2E8);
  v1 = OUTLINED_FUNCTION_22();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1ED880370 != -1)
  {
    OUTLINED_FUNCTION_50();
  }

  v4 = __swift_project_value_buffer(v0, qword_1ED880520);
  v5 = *(*(v0 - 8) + 16);

  return v5(v3, v4, v0);
}

uint64_t ModelInstance.assetBundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t ModelInstance.inferenceProviderID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t ModelInstance.inferenceProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  sub_197A878A8();

  return sub_197A878A8();
}

uint64_t ModelInstance.init(assetBundleIdentifier:inferenceProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = *(a3 + 32);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  *(a4 + 24) = v4;
  *(a4 + 32) = v5;
  *(a4 + 40) = v4;
  *(a4 + 48) = *(a3 + 1);
  *(a4 + 64) = v6;
  return sub_197A878A8();
}

uint64_t static ModelInstance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 32);
  v5 = *(a1 + 56);
  v17 = *(a1 + 64);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  v16 = *(a2 + 32);
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v11 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v12 = *(a2 + 64);
  if (v11 || (sub_197A88218()) && (v2 == v6 ? (v13 = v3 == v7) : (v13 = 0), v13 || (sub_197A88218()))
  {
    v22[0] = v19;
    v22[1] = v4;
    v22[2] = v18;
    v22[3] = v5;
    v23 = v17;
    v20[0] = v16;
    v20[1] = v8;
    v20[2] = v10;
    v20[3] = v9;
    v21 = v12;
    sub_197A878A8();
    sub_197A878A8();
    sub_197A878A8();
    sub_197A878A8();
    v14 = static InferenceProviderDescriptor.== infix(_:_:)(v22, v20);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_197A272D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000197AA25D0 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000197AA3F70 == a2;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000197AA33F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_197A88218();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_197A273EC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000011;
}

uint64_t sub_197A27448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A272D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A27470(uint64_t a1)
{
  v2 = sub_197A29F30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A274AC(uint64_t a1)
{
  v2 = sub_197A29F30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelInstance.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A228, &qword_197A96B60);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66_0();
  v11 = *v0;
  v12 = v0[1];
  v18 = v0[3];
  v19 = v0[2];
  v16 = v0[5];
  v17 = v0[4];
  v14 = v0[7];
  v15 = v0[6];
  v20 = *(v0 + 64);
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_197A29F30();
  sub_197A883D8();
  sub_197A880B8();
  if (!v1)
  {
    OUTLINED_FUNCTION_55();
    sub_197A880B8();
    sub_1979518CC();
    sub_197A878A8();
    sub_197A878A8();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_93();
}

void ModelInstance.hash(into:)()
{
  OUTLINED_FUNCTION_67();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 64);
  sub_197A879B8();
  sub_197A879B8();
  sub_197A879B8();
  if (v8)
  {
    MEMORY[0x19A8EB5D0](1);
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  sub_197A88328();
  OUTLINED_FUNCTION_66();
}

uint64_t ModelInstance.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 64);
  OUTLINED_FUNCTION_145();
  sub_197A879B8();
  sub_197A879B8();
  sub_197A879B8();
  if (v8)
  {
    MEMORY[0x19A8EB5D0](1);
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  sub_197A88328();
  return sub_197A88358();
}

void ModelInstance.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A238, &qword_197A96B68);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_197A29F30();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_60_4();
    v12 = v11;
    v23 = v10;
    LOBYTE(v25[0]) = 1;
    v21 = OUTLINED_FUNCTION_60_4();
    v22 = v13;
    sub_19795F8C8();
    sub_197A87FD8();
    v14 = OUTLINED_FUNCTION_25_8();
    v15(v14);
    v20 = v27;
    v19 = v28;
    v16 = v30;
    v18 = v29;
    v17 = v31;
    v24[0] = v23;
    v24[1] = v12;
    v24[2] = v21;
    v24[3] = v22;
    v24[4] = v27;
    v24[5] = v28;
    v24[6] = v29;
    v24[7] = v30;
    LOBYTE(v24[8]) = v31;
    memcpy(v4, v24, 0x41uLL);
    sub_197A29F84(v24, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v25[0] = v23;
    v25[1] = v12;
    v25[2] = v21;
    v25[3] = v22;
    v25[4] = v20;
    v25[5] = v19;
    v25[6] = v18;
    v25[7] = v16;
    v26 = v17;
    sub_197A29FBC(v25);
  }

  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A27B18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v9 = *(v0 + 2);
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(v0 + 64);
  sub_197A882F8();
  sub_197A879B8();
  sub_197A879B8();
  InferenceProviderDescriptor.hash(into:)();
  return sub_197A88358();
}

uint64_t CustomAssetConfiguration.instanceID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t CustomAssetConfiguration.templateID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_197A27C18()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for CustomAssetConfiguration(v0) + 24);
  v2 = sub_197A877A8();
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_77();

  return v6(v5);
}

__n128 sub_197A27C84()
{
  v2 = OUTLINED_FUNCTION_58_0();
  v3 = v1 + *(type metadata accessor for CustomAssetConfiguration(v2) + 28);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = v6;
  *(v0 + 32) = v4;
  return result;
}

uint64_t CustomAssetConfiguration.secureIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for CustomAssetConfiguration(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return sub_1979844F4(v2, v3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static CustomAssetConfiguration.getCustomAssetConfigurationIdentifer(instanceID:templateID:clientProcessID:appBundleID:executablePath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a7)
  {
    v9 = a7;
    sub_197A878A8();
    OUTLINED_FUNCTION_28_8();
    OUTLINED_FUNCTION_49_8();
    OUTLINED_FUNCTION_28_8();
    v11 = a6;
  }

  else
  {
    v9 = a9;
    if (!a9)
    {
      sub_197A878A8();
      OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_28_8();
      v13 = sub_197A88148();
      MEMORY[0x19A8EAC80](v13);

      return;
    }

    sub_197A878A8();
    OUTLINED_FUNCTION_28_8();
    OUTLINED_FUNCTION_49_8();
    OUTLINED_FUNCTION_28_8();
    v11 = a8;
  }

  MEMORY[0x19A8EAC80](v11, v9);
}

uint64_t CustomAssetConfiguration.init(instanceID:templateID:assetData:auditToken:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v50 = a6[1];
  v51 = *a6;
  HIDWORD(v46) = *(a6 + 32);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v12 = type metadata accessor for CustomAssetConfiguration(0);
  v13 = v12[6];
  v14 = sub_197A877A8();
  OUTLINED_FUNCTION_70(v14);
  v16 = v15;
  (*(v15 + 16))(&a9[v13], a5, v14);
  sub_1979CAD9C();
  v17 = sub_197A878A8();
  if (OUTLINED_FUNCTION_23_9(v17, MEMORY[0x1E69E6158], v18, v19, v20, v21, v22, v23, v43, v46) & 1) != 0 || (OUTLINED_FUNCTION_54_6(), (OUTLINED_FUNCTION_23_9(v24, MEMORY[0x1E69E6158], v25, v26, v27, v28, v29, v30, v44, v47)))
  {

    result = (*(v16 + 8))(a5, v14);
  }

  else
  {
    OUTLINED_FUNCTION_44_8();
    v42 = OUTLINED_FUNCTION_23_9(v35, MEMORY[0x1E69E6158], v36, v37, v38, v39, v40, v41, v45, v48);
    (*(v16 + 8))(a5, v14);

    if ((v42 & 1) == 0)
    {
      v32 = &a9[v12[7]];
      *v32 = v51;
      *(v32 + 1) = v50;
      v33 = v49;
      goto LABEL_5;
    }
  }

  v32 = &a9[v12[7]];
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v33 = 1;
LABEL_5:
  v32[32] = v33;
  v34 = &a9[v12[8]];
  *v34 = a7;
  *(v34 + 1) = a8;
  return result;
}

void CustomAssetConfiguration.copyWithAuditToken(auditToken:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v5 = sub_197A877A8();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_0();
  v13 = (v12 - v11);
  v32 = v2[1];
  v33 = *v2;
  v14 = *(v0 + 1);
  v35 = *v0;
  v15 = *(v0 + 2);
  v16 = *(v0 + 3);
  v17 = type metadata accessor for CustomAssetConfiguration(0);
  v18 = *(v8 + 16);
  v18(v13, &v0[v17[6]], v5);
  v19 = &v0[v17[8]];
  v20 = v19[1];
  v34 = *v19;
  *v4 = v35;
  *(v4 + 1) = v14;
  *(v4 + 2) = v15;
  *(v4 + 3) = v16;
  v18(&v4[v17[6]], v13, v5);
  v21 = v20;
  v38 = v15;
  v39 = v16;
  v36 = 2037278052;
  v37 = 0xE400000000000000;
  sub_1979CAD9C();
  sub_197A878A8();
  sub_197A878A8();
  sub_197A878A8();
  if (OUTLINED_FUNCTION_47_6(&v36, MEMORY[0x1E69E6158]) & 1) != 0 || (v38 = v15, v39 = v16, OUTLINED_FUNCTION_54_6(), v36 = v22, v37 = v23, (OUTLINED_FUNCTION_47_6(&v36, MEMORY[0x1E69E6158])))
  {
    (*(v8 + 8))(v13, v5);
  }

  else
  {
    v38 = v15;
    v39 = v16;
    OUTLINED_FUNCTION_44_8();
    v36 = v28;
    v37 = v29;
    v30 = OUTLINED_FUNCTION_47_6(&v36, MEMORY[0x1E69E6158]);
    (*(v8 + 8))(v13, v5);
    if ((v30 & 1) == 0)
    {
      v25 = v17;
      v24 = v4;
      v31 = &v4[v17[7]];
      *v31 = v33;
      *(v31 + 1) = v32;
      v31[32] = 0;
      goto LABEL_5;
    }
  }

  v25 = v17;
  v24 = v4;
  v26 = &v4[v17[7]];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v26[32] = 1;
LABEL_5:
  v27 = (v24 + v25[8]);
  *v27 = v34;
  v27[1] = v21;
  OUTLINED_FUNCTION_66();
}

uint64_t static CustomAssetConfiguration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_71();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_197A88218() & 1) == 0)
  {
    goto LABEL_26;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_197A88218() & 1) == 0)
  {
    goto LABEL_26;
  }

  v5 = type metadata accessor for CustomAssetConfiguration(0);
  v6 = *(v5 + 28);
  v7 = *(v1 + v6 + 32);
  if (v7 != 1)
  {
    OUTLINED_FUNCTION_20_9();
    v11 = audit_token_to_pid(v10);
    v8 = v0 + *(v5 + 28);
    if (v8[32])
    {
      goto LABEL_26;
    }

    v9 = v11;
LABEL_16:
    v13 = *(v8 + 6);
    v12 = *(v8 + 7);
    v15 = *(v8 + 4);
    v14 = *(v8 + 5);
    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    v19 = *v8;
    v18 = *(v8 + 1);
    atoken.val[0] = *v8;
    atoken.val[1] = v18;
    atoken.val[2] = v17;
    atoken.val[3] = v16;
    v30 = v15;
    v31 = v14;
    atoken.val[4] = v15;
    atoken.val[5] = v14;
    v32 = v13;
    v33 = v12;
    atoken.val[6] = v13;
    atoken.val[7] = v12;
    if (v9 == audit_token_to_pid(&atoken))
    {
      v20 = v7;
    }

    else
    {
      v20 = 1;
    }

    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_9();
      v22 = audit_token_to_pidversion(v21);
      atoken.val[0] = v19;
      atoken.val[1] = v18;
      atoken.val[2] = v17;
      atoken.val[3] = v16;
      atoken.val[4] = v30;
      atoken.val[5] = v31;
      atoken.val[6] = v32;
      atoken.val[7] = v33;
      if (v22 == audit_token_to_pidversion(&atoken))
      {
        goto LABEL_21;
      }
    }

LABEL_26:
    v28 = 0;
    return v28 & 1;
  }

  v8 = v0 + v6;
  if ((v8[32] & 1) == 0)
  {
    v9 = 0;
    goto LABEL_16;
  }

LABEL_21:
  v23 = *(v5 + 32);
  v24 = *(v1 + v23);
  v25 = *(v1 + v23 + 8);
  v26 = (v0 + v23);
  if (v24 == *v26 && v25 == v26[1])
  {
    v28 = 1;
  }

  else
  {
    v28 = sub_197A88218();
  }

  return v28 & 1;
}

uint64_t CustomAssetConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197A879B8();
  v3 = v0[2];
  v4 = v0[3];
  sub_197A879B8();
  v5 = type metadata accessor for CustomAssetConfiguration(0);
  v6 = (v0 + *(v5 + 32));
  v7 = *v6;
  v8 = v6[1];
  sub_197A879B8();
  v9 = (v0 + *(v5 + 28));
  if (v9[8])
  {
    sub_197A88338();
  }

  else
  {
    v11 = v9[6];
    v10 = v9[7];
    v13 = v9[4];
    v12 = v9[5];
    v15 = v9[2];
    v14 = v9[3];
    v17 = *v9;
    v16 = v9[1];
    OUTLINED_FUNCTION_43_7();
    audit_token_to_pid(v18);
    sub_197A88338();
    OUTLINED_FUNCTION_43_7();
    audit_token_to_pidversion(v19);
  }

  return sub_197A88338();
}

uint64_t sub_197A28454(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000197AA3F90 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000197AA3FB0 == a2;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000197AA3FD0 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000197AA3FF0 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x8000000197AA3370 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_197A88218();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_197A28600(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_197A28684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A28454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A286AC(uint64_t a1)
{
  v2 = sub_197A29FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A286E8(uint64_t a1)
{
  v2 = sub_197A29FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CustomAssetConfiguration.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A240, &qword_197A96B70);
  OUTLINED_FUNCTION_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_66_0();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A29FEC();
  OUTLINED_FUNCTION_39_0();
  v13 = *v4;
  v14 = v4[1];
  OUTLINED_FUNCTION_33_8();
  if (!v2)
  {
    v15 = v4[2];
    v16 = v4[3];
    OUTLINED_FUNCTION_33_8();
    v17 = type metadata accessor for CustomAssetConfiguration(0);
    v18 = v17[6];
    sub_197A877A8();
    OUTLINED_FUNCTION_16_9();
    sub_1979548FC(v19, v20);
    sub_197A880E8();
    v21 = v4 + v17[7];
    v26 = *v21;
    v27 = *(v21 + 1);
    v28 = v21[32];
    sub_1979741F8();
    sub_197A88098();
    v22 = (v4 + v17[8]);
    v23 = *v22;
    v24 = v22[1];
    OUTLINED_FUNCTION_33_8();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t CustomAssetConfiguration.hashValue.getter()
{
  OUTLINED_FUNCTION_145();
  CustomAssetConfiguration.hash(into:)();
  return sub_197A88358();
}

void CustomAssetConfiguration.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = sub_197A877A8();
  v4 = OUTLINED_FUNCTION_2(v3);
  v34 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A248, &unk_197A96B78);
  OUTLINED_FUNCTION_2(v36);
  v35 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_57_5();
  v16 = type metadata accessor for CustomAssetConfiguration(v15);
  v17 = OUTLINED_FUNCTION_6(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  v22 = (v21 - v20);
  v23 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_197A29FEC();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    *v22 = sub_197A87FA8();
    v22[1] = v24;
    v22[2] = sub_197A87FA8();
    v22[3] = v25;
    LOBYTE(v37) = 2;
    OUTLINED_FUNCTION_16_9();
    sub_1979548FC(v26, v27);
    sub_197A87FD8();
    (*(v34 + 32))(v22 + v16[6], v10, v3);
    sub_1979705E8();
    sub_197A87F88();
    v28 = v22 + v16[7];
    *v28 = v37;
    *(v28 + 1) = v38;
    v28[32] = v39;
    v29 = sub_197A87FA8();
    v33 = v30;
    v31 = v29;
    (*(v35 + 8))(0, v36);
    v32 = (v22 + v16[8]);
    *v32 = v31;
    v32[1] = v33;
    sub_19795F818();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_19795F870(v22, type metadata accessor for CustomAssetConfiguration);
  }

  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A28D94()
{
  sub_197A882F8();
  CustomAssetConfiguration.hash(into:)();
  return sub_197A88358();
}

uint64_t Session.Metadata.sessionSetID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Session.Metadata(v0) + 40);
  v2 = sub_197A87298();
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_77();

  return v6(v5);
}

double Session.Metadata.inferenceInterfaceVersion.getter()
{
  v2 = OUTLINED_FUNCTION_58_0();
  v3 = v1 + *(type metadata accessor for Session.Metadata(v2) + 44);
  v4 = *(v3 + 8);
  result = *v3;
  *v0 = *v3;
  *(v0 + 8) = v4;
  return result;
}

uint64_t Session.Metadata.init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPID:loggingIdentifier:id:sessionSetID:inferenceInterfaceVersion:customAssetConfigurations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v32 = *(a11 + 2);
  v21 = sub_197A87118();
  OUTLINED_FUNCTION_6(v21);
  v23 = *a11;
  (*(v22 + 32))(a9, a1);
  v24 = type metadata accessor for Session.Metadata(0);
  v25 = (a9 + v24[5]);
  *v25 = a2;
  v25[1] = a3;
  *(a9 + v24[6]) = a4;
  *(a9 + v24[7]) = a5;
  v26 = (a9 + v24[8]);
  *v26 = a6;
  v26[1] = a7;
  sub_19795EE70(a8, a9 + v24[9]);
  v27 = v24[10];
  v28 = sub_197A87298();
  OUTLINED_FUNCTION_6(v28);
  result = (*(v29 + 32))(a9 + v27, a10);
  v31 = a9 + v24[11];
  *v31 = v23;
  *(v31 + 8) = v32;
  *(a9 + v24[12]) = a12;
  return result;
}

void Session.Metadata.init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPID:loggingIdentifier:id:sessionSetID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_67();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = sub_197A87118();
  OUTLINED_FUNCTION_6(v39);
  (*(v40 + 32))(v38, v36);
  v41 = type metadata accessor for Session.Metadata(0);
  v42 = (v38 + v41[5]);
  *v42 = v34;
  v42[1] = v32;
  *(v38 + v41[6]) = v30;
  *(v38 + v41[7]) = v28;
  v43 = (v38 + v41[8]);
  *v43 = v26;
  v43[1] = v24;
  sub_19795EE70(v22, v38 + v41[9]);
  v44 = v41[10];
  v45 = sub_197A87298();
  OUTLINED_FUNCTION_6(v45);
  (*(v46 + 32))(v38 + v44, a21);
  v47 = v38 + v41[11];
  *v47 = 0;
  *(v47 + 8) = 0;
  *(v38 + v41[12]) = 0;
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197A2911C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E75427465737361 && a2 == 0xEE00495255656C64;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4965736143657375 && a2 == 0xE900000000000044;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x666C616865426E6FLL && a2 == 0xED0000444950664FLL;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000197AA2570 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000197AA3B30 == a2;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 25705 && a2 == 0xE200000000000000;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x536E6F6973736573 && a2 == 0xEC00000044497465;
              if (v11 || (sub_197A88218() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000019 && 0x8000000197AA3F30 == a2;
                if (v12 || (sub_197A88218() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000019 && 0x8000000197AA3F50 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_197A88218();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_197A29400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A2911C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A29428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197A293F8();
  *a1 = result;
  return result;
}

uint64_t sub_197A29450(uint64_t a1)
{
  v2 = sub_1979548A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A2948C(uint64_t a1)
{
  v2 = sub_1979548A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A29500()
{
  OUTLINED_FUNCTION_33();
  if (qword_1ED87D2E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_197A87608();
  __swift_project_value_buffer(v2, qword_1ED87D2E8);
  MEMORY[0x19A8EBBD0](v1);
  v3 = sub_197A875E8();
  v4 = sub_197A87D58();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x19A8EBBD0](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_197941000, v3, v4, "establishment of session failed with %@", v7, 0xCu);
    sub_197947A40(v8, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_44();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v10();
}

uint64_t _s20ModelManagerServices7SessionC2idAA14UUIDIdentifierVyACGvg_0()
{
  v0 = sub_197A87298();
  OUTLINED_FUNCTION_6(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_77();

  return v4(v3);
}

double Session.inferenceInterfaceVersion.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion + 8);
  result = *(v1 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion);
  *a1 = result;
  *(a1 + 8) = v2;
  return result;
}

uint64_t Session.sessionSetID.getter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Session.Metadata(v1);
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  Session.metadata.getter();
  v9 = *(v2 + 40);
  v10 = sub_197A87298();
  OUTLINED_FUNCTION_6(v10);
  (*(v11 + 16))(v0, v8 + v9);
  return sub_19795F870(v8, type metadata accessor for Session.Metadata);
}

uint64_t Session.fetchModelInfo()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return sub_197A878A8();
}

uint64_t Session.fetchModelInstance()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_197A298A8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_6_10(*(v0 + 24)) + 40);
  OUTLINED_FUNCTION_26();
  v12 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_75(v5);
  *v6 = v7;
  v6[1] = sub_19796D708;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  OUTLINED_FUNCTION_113_1();

  return v10();
}

void static Session.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v27 = OUTLINED_FUNCTION_28(v26);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &a9 - v33;
  v35 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v36 = sub_197A87298();
  OUTLINED_FUNCTION_6(v36);
  v38 = *(v37 + 16);
  v38(v34, v25 + v35, v36);
  v38(v32, v23 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v36);
  _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
  sub_197947A40(v32, &qword_1EAF49130, &qword_197A969C0);
  sub_197947A40(v34, &qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_66();
}

uint64_t Session.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v8 = sub_197A87298();
  OUTLINED_FUNCTION_6(v8);
  (*(v9 + 16))(v6, v0 + v7, v8);
  OUTLINED_FUNCTION_3_11();
  sub_1979548FC(v10, v11);
  sub_197A878F8();
  return sub_197947A40(v6, &qword_1EAF49130, &qword_197A969C0);
}

uint64_t Session.requestPrewarm_async(metadata:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_197A29C10()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_6_10(*(v0 + 24)) + 32);
  OUTLINED_FUNCTION_26();
  v12 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_75(v5);
  *v6 = v7;
  v6[1] = sub_197976F2C;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  OUTLINED_FUNCTION_113_1();

  return v10();
}

uint64_t sub_197A29D28()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_6_10(*(v0 + 16)) + 24);
  OUTLINED_FUNCTION_26();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_19796E1D4;
  v6 = OUTLINED_FUNCTION_5(*(v0 + 16));

  return v7(v6);
}

uint64_t Session.hashValue.getter()
{
  OUTLINED_FUNCTION_145();
  Session.hash(into:)();
  return sub_197A88358();
}

uint64_t sub_197A29ECC()
{
  v1 = *v0;
  sub_197A882F8();
  Session.hash(into:)();
  return sub_197A88358();
}

unint64_t sub_197A29F30()
{
  result = qword_1EAF4A230;
  if (!qword_1EAF4A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A230);
  }

  return result;
}

unint64_t sub_197A29FEC()
{
  result = qword_1ED87E690;
  if (!qword_1ED87E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E690);
  }

  return result;
}

unint64_t sub_197A2A044()
{
  result = qword_1EAF4A260;
  if (!qword_1EAF4A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A260);
  }

  return result;
}

uint64_t sub_197A2A130(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_197A2A170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomAssetConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ModelInstance.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_197A2A3C0()
{
  result = qword_1EAF4A278;
  if (!qword_1EAF4A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A278);
  }

  return result;
}

unint64_t sub_197A2A418()
{
  result = qword_1EAF4A280;
  if (!qword_1EAF4A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A280);
  }

  return result;
}

unint64_t sub_197A2A470()
{
  result = qword_1EAF4A288;
  if (!qword_1EAF4A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A288);
  }

  return result;
}

unint64_t sub_197A2A4C8()
{
  result = qword_1ED87FC48;
  if (!qword_1ED87FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FC48);
  }

  return result;
}

unint64_t sub_197A2A520()
{
  result = qword_1ED87FC50;
  if (!qword_1ED87FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FC50);
  }

  return result;
}

unint64_t sub_197A2A578()
{
  result = qword_1ED87E9B8;
  if (!qword_1ED87E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E9B8);
  }

  return result;
}

unint64_t sub_197A2A5D0()
{
  result = qword_1ED87E698;
  if (!qword_1ED87E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E698);
  }

  return result;
}

unint64_t sub_197A2A628()
{
  result = qword_1EAF4A290;
  if (!qword_1EAF4A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A290);
  }

  return result;
}

unint64_t sub_197A2A680()
{
  result = qword_1EAF4A298;
  if (!qword_1EAF4A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF4A298);
  }

  return result;
}

uint64_t RunningBoardSelfAssertionType.hashValue.getter()
{
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](0);
  return sub_197A88358();
}

uint64_t sub_197A2A7BC()
{
  v1 = *(v0[2] + 56);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));
  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[2];
    v6 = v5[5];
    v7 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
    v8 = *(v7 + 16);
    v12 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[3] = v10;
    *v10 = v0;
    v10[1] = sub_197A2A94C;
    v11 = v0[2];

    return v12(v11, v6, v7);
  }
}

uint64_t sub_197A2A94C()
{
  v1 = *(*v0 + 24);
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t RunningBoardSelfAssertionToken.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t RunningBoardSelfAssertionToken.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

unint64_t sub_197A2AAA4()
{
  result = qword_1ED880238;
  if (!qword_1ED880238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED880238);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunningBoardSelfAssertionType(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of RunningBoardSelfAsserting.acquire(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (OUTLINED_FUNCTION_37_0(a1, a2, a3) + 8);
  v10 = *v9 + **v9;
  v4 = (*v9)[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v6 = OUTLINED_FUNCTION_10_0(v5);

  return v7(v6);
}

uint64_t sub_197A2ACE8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t dispatch thunk of RunningBoardSelfAsserting.relinquish(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (OUTLINED_FUNCTION_37_0(a1, a2, a3) + 16);
  v10 = *v9 + **v9;
  v4 = (*v9)[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v6 = OUTLINED_FUNCTION_10_0(v5);

  return v7(v6);
}

uint64_t sub_197A2AEE4()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

id sub_197A2B034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR___MMAssertion_assertion;
  *(v4 + OBJC_IVAR___MMAssertion_assertion) = 0;
  v6 = (v4 + OBJC_IVAR___MMAssertion_policy);
  *v6 = a1;
  v6[1] = a2;
  v7 = (v4 + OBJC_IVAR___MMAssertion_desc);
  *v7 = a3;
  v7[1] = a4;
  *(v4 + v5) = 0;
  v9.super_class = MMAssertion;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_197A2B108()
{
  v1 = *(v0 + 16);
  type metadata accessor for Assertion(0);
  v2 = *&v1[OBJC_IVAR___MMAssertion_policy];
  v3 = *&v1[OBJC_IVAR___MMAssertion_policy + 8];
  sub_197A878A8();
  v4 = [v1 description];
  v5 = sub_197A87938();
  v7 = v6;

  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_197A2B20C;

  return Assertion.__allocating_init(policy:description:)(v2, v3, v5, v7);
}

uint64_t sub_197A2B20C()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_24();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;

    return MEMORY[0x1EEE6DFA0](sub_197A2B340, 0, 0);
  }
}

uint64_t sub_197A2B340()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___MMAssertion_assertion);
  *(v1 + OBJC_IVAR___MMAssertion_assertion) = *(v0 + 32);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A2B3D0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_197A2B478;

  return sub_197A2B0F4();
}

uint64_t sub_197A2B478()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = v5[4];
  v7 = v5[3];
  v8 = v5[2];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;

  if (v0)
  {
    if (v7)
    {
      v11 = *(v3 + 24);
      v12 = sub_197A870D8();

      (v11)[2](v11, v12);
      _Block_release(v11);
    }

    else
    {
    }
  }

  else if (v7)
  {
    v13 = *(v3 + 24);
    v13[2](v13, 0);
    _Block_release(v13);
  }

  OUTLINED_FUNCTION_13();

  return v14();
}

uint64_t sub_197A2B5F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_197A97460;
  v10[5] = v9;
  sub_197A2C030(0, 0, v7, &unk_197A97470, v10);
}

uint64_t sub_197A2B71C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0[2] + OBJC_IVAR___MMAssertion_assertion);
  v0[3] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_197A2B7F8;

    return Assertion.invalidate()();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

uint64_t sub_197A2B7F8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t sub_197A2B914(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_10_13();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return sub_197A2B5F8(a5, v8);
}

uint64_t sub_197A2B97C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_197A2BA24;

  return sub_197A2B708();
}

uint64_t sub_197A2BA24()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  v5 = v4[4];
  v6 = v4[3];
  v7 = v4[2];
  v8 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;

  if (v6)
  {
    v10 = *(v2 + 24);
    v10[2](v10);
    _Block_release(v10);
  }

  OUTLINED_FUNCTION_13();

  return v11();
}

void __swiftcall MMAssertion.init()(MMAssertion *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for MMAssertion()
{
  result = qword_1EAF4A2B8;
  if (!qword_1EAF4A2B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF4A2B8);
  }

  return result;
}

uint64_t sub_197A2BC0C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_9(v4);

  return v7(v6);
}

uint64_t sub_197A2BC9C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_197960FB0;

  return v7();
}

uint64_t sub_197A2BD84()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  v6[1] = sub_197960FB0;

  return sub_197A2BC9C(v1, v2, v4);
}

uint64_t sub_197A2BE40(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_197960E38;

  return v8();
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_197A2BF68(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v8[1] = sub_197960E38;

  return sub_197A2BE40(a1, v3, v4, v6);
}

uint64_t sub_197A2C030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_19795C4DC(a3, v25 - v11);
  v13 = sub_197A87C08();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_19795C88C(v12);
  }

  else
  {
    sub_197A87BF8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_197A87B58();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_197A879A8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_19795C88C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19795C88C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_197A2C2CC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19795BD18;

  return v7(a1);
}

uint64_t sub_197A2C3C4()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_0(v4);

  return v7(v6);
}

uint64_t sub_197A2C45C()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_0(v4);

  return v7(v6);
}

uint64_t sub_197A2C4F4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_9(v4);

  return v7(v6);
}

uint64_t GreedyBufferResult.isTerminal.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2(a1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_27();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = *(v4 + 16);
  v13(&v24 - v11);
  OUTLINED_FUNCTION_63();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_4;
  }

  (v13)(v9, v12, a1);
  v15 = *(a1 + 16);
  sub_197A87448();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v17 = *(v9 + *(TupleTypeMetadata3 + 48));

  LOBYTE(TupleTypeMetadata3) = *(v9 + *(TupleTypeMetadata3 + 64));
  OUTLINED_FUNCTION_36_0(v15);
  (*(v18 + 8))(v9, v15);
  if (TupleTypeMetadata3)
  {
LABEL_4:
    v19 = 1;
  }

  else
  {
LABEL_5:
    v19 = 0;
  }

  v20 = *(v4 + 8);
  v21 = OUTLINED_FUNCTION_63();
  v22(v21);
  return v19;
}

uint64_t GreedyBufferResult.count.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2(a1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  (*(v4 + 16))(v8 - v7);
  OUTLINED_FUNCTION_22();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v19 = *(v4 + 8);
    v20 = OUTLINED_FUNCTION_22();
    v21(v20);
    return 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v22 = *(v4 + 8);
    v23 = OUTLINED_FUNCTION_22();
    v24(v23);
    return 0;
  }

  v11 = *(a1 + 16);
  sub_197A87448();
  OUTLINED_FUNCTION_47_7();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  sub_197A334F4(sub_197A334E8, 0, *(v9 + *(TupleTypeMetadata3 + 48)), MEMORY[0x1E6995658], v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v25);

  v14 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    OUTLINED_FUNCTION_36_0(v11);
    v16 = *(v15 + 8);
    v17 = OUTLINED_FUNCTION_22();
    v18(v17);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t GreedyBufferResult.allElements.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_34_0();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  (*(v14 + 16))(v18 - v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_197A87448();
      OUTLINED_FUNCTION_43_8();
      v21 = *(v19 + *(swift_getTupleTypeMetadata3() + 48));
      (*(v4 + 32))(v10, v19, v2);
      v22 = sub_197A3347C(v2, v2);
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      v25 = *(v4 + 72);
      v26 = *(v4 + 80);
      OUTLINED_FUNCTION_49_9();
      v27 = sub_197A87B08();
      (*(v4 + 16))(v28, v10, v2);
      sub_19799A980(v27);

      swift_getWitnessTable();
      sub_197A87B48();
      OUTLINED_FUNCTION_68_1();
      v29 = sub_197A87B18();

      v30 = *(v4 + 8);
      v31 = OUTLINED_FUNCTION_63();
      v32(v31);
    }

    else
    {
      OUTLINED_FUNCTION_43_8();
      v29 = sub_197A87B28();
      (*(v14 + 8))(v19, a1);
    }
  }

  else
  {
    v34 = *(v4 + 32);
    v33 = v4 + 32;
    v34(v10, v19, v2);
    v35 = sub_197A3347C(v2, v2);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    v38 = *(v33 + 40);
    v39 = *(v33 + 48);
    OUTLINED_FUNCTION_49_9();
    sub_197A87B08();
    v34(v40, v10, v2);
    v41 = OUTLINED_FUNCTION_100();
    return sub_19799A980(v41);
  }

  return v29;
}

void GreedyBufferResult.concat(_:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v126 = *(v1 + 24);
  v131 = sub_197A87DB8();
  v5 = OUTLINED_FUNCTION_2(v131);
  v127 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_5();
  v123 = v9;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_4();
  v125 = v11;
  v135 = *(v2 + 16);
  OUTLINED_FUNCTION_34_0();
  v133 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_5();
  v122 = v16;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v17);
  v124 = &v120 - v18;
  OUTLINED_FUNCTION_134();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v120 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v120 - v23;
  OUTLINED_FUNCTION_34_0();
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3_5();
  v130 = v30;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_33_4();
  v129 = v32;
  OUTLINED_FUNCTION_43_8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2(TupleTypeMetadata2);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v120 - v39;
  if ((GreedyBufferResult.isTerminal.getter(v2) & 1) == 0)
  {
    v132 = v22;
    v134 = v24;
    v41 = &v40[*(TupleTypeMetadata2 + 48)];
    v42 = *(v26 + 16);
    v136 = v0;
    OUTLINED_FUNCTION_68_1();
    v42();
    v121 = v4;
    (v42)(v41, v4, v2);
    v43 = v40;
    OUTLINED_FUNCTION_63();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v45 = *(v26 + 8);
        v128 = v26 + 8;
        v129 = v45;
        v45(v136, v2);
        v46 = v130;
        OUTLINED_FUNCTION_68_1();
        v42();
        sub_197A87448();
        OUTLINED_FUNCTION_47_7();
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v48 = *(TupleTypeMetadata3 + 48);
        v49 = *&v46[v48];
        v50 = swift_getEnumCaseMultiPayload();
        v120 = v40;
        if (v50)
        {
          if (v50 != 1)
          {
            v134 = v49;
            v97 = v133;
            v98 = v122;
            v99 = v135;
            v132 = *(v133 + 32);
            v132(v122, v46, v135);
            v100 = v127;
            v101 = v123;
            (*(v127 + 32))();
            OUTLINED_FUNCTION_64_0(v101, 1, v126);
            if (v102)
            {
              v103 = v100;
              v104 = *(TupleTypeMetadata3 + 48);
              v105 = *(TupleTypeMetadata3 + 64);
              v106 = v101;
              v107 = v136;
              v132(v136, v98, v99);
              *&v107[v104] = v134;
              (*(v103 + 8))(v106, v131);
              v107[v105] = 1;
              OUTLINED_FUNCTION_74_7();
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              (*(v97 + 8))(v98, v99);

              (*(v100 + 8))(v101, v131);
              (v42)(v136, v121, v2);
            }

            v129(v120, v2);
            goto LABEL_22;
          }

          v127 = *&v41[v48];
          LODWORD(v131) = v41[*(TupleTypeMetadata3 + 64)];
          v51 = v133;
          v52 = *(v133 + 32);
          v53 = v46;
          v54 = v135;
          v52(v134, v53, v135);
          v55 = OUTLINED_FUNCTION_82_7();
          (v52)(v55);
          OUTLINED_FUNCTION_93_5();
          v56 = v127;
          v137 = v127;
          OUTLINED_FUNCTION_27_10();
          swift_getWitnessTable();
          sub_197A873C8();
          (*(v51 + 8))(v40, v54);

          v57 = OUTLINED_FUNCTION_57_6();
          (v52)(v57);
          *&v49[v56] = v138;
          *(v56 + TupleTypeMetadata3) = v131;
        }

        else
        {
          v73 = v133;
          v74 = *(v133 + 32);
          v75 = v46;
          v76 = v135;
          v74(v134, v75, v135);
          v77 = OUTLINED_FUNCTION_82_7();
          (v74)(v77);
          OUTLINED_FUNCTION_93_5();
          (*(v73 + 8))(v40, v76);
          v78 = OUTLINED_FUNCTION_57_6();
          (v74)(v78);
          *&v49[v41] = v138;
          v41[TupleTypeMetadata3] = 0;
        }

        OUTLINED_FUNCTION_74_7();
        swift_storeEnumTagMultiPayload();
        v129(v120, v2);
      }

      else
      {
        (*(v35 + 8))(v40, TupleTypeMetadata2);
      }
    }

    else
    {
      v58 = *(v26 + 8);
      v59 = v136;
      v128 = v26 + 8;
      (v58)(v136, v2);
      v60 = v129;
      v61 = v40;
      OUTLINED_FUNCTION_68_1();
      v42();
      v62 = swift_getEnumCaseMultiPayload();
      if (v62)
      {
        if (v62 != 1)
        {
          v108 = v133;
          v109 = v135;
          (*(v133 + 32))(v124, v60, v135);
          v110 = v127;
          v111 = v125;
          v112 = v41;
          v113 = v131;
          (*(v127 + 32))(v125, v112, v131);
          OUTLINED_FUNCTION_64_0(v111, 1, v126);
          if (v102)
          {
            sub_197A87448();
            OUTLINED_FUNCTION_87_6();
            v114 = swift_getTupleTypeMetadata3();
            v130 = v58;
            v115 = *(v114 + 48);
            v116 = v110;
            v134 = *(v114 + 64);
            v117 = v136;
            v118 = v124;
            (*(v108 + 16))(v136, v124, v109);
            OUTLINED_FUNCTION_87_6();
            v138 = sub_197A87B28();
            OUTLINED_FUNCTION_87_6();
            sub_197A87B38();
            OUTLINED_FUNCTION_29_7();
            v119 = sub_197A87458();
            (*(v108 + 8))(v118, v109);
            *&v117[v115] = v119;
            v58 = v130;
            (*(v116 + 8))(v125, v113);
            v134[v117] = 1;
            OUTLINED_FUNCTION_74_7();
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            (*(v108 + 8))(v124, v109);
            (*(v110 + 8))(v125, v113);
            (v42)(v136, v121, v2);
          }

          (v58)(v61, v2);
          goto LABEL_22;
        }

        v63 = v135;
        v127 = sub_197A87448();
        OUTLINED_FUNCTION_53_9();
        v64 = swift_getTupleTypeMetadata3();
        v120 = v43;
        v65 = v64;
        v66 = v60;
        v67 = *&v41[*(v64 + 48)];
        LODWORD(v131) = v41[*(v64 + 64)];
        v130 = v58;
        v68 = v133;
        v69 = *(v133 + 32);
        v69(v134, v66, v63);
        v70 = v132;
        v69(v132, v41, v63);
        v138 = v67;
        sub_197A873E8();
        (*(v68 + 8))(v70, v63);
        v71 = *(v65 + 48);
        v72 = *(v65 + 64);
        v69(v59, v134, v63);
        *&v59[v71] = v138;
        v59[v72] = v131;
      }

      else
      {
        v80 = v133;
        v79 = v134;
        v130 = v58;
        v120 = v61;
        v81 = *(v133 + 32);
        v82 = v135;
        v81(v134, v60, v135);
        v81(v132, v41, v82);
        sub_197A87448();
        v83 = swift_getTupleTypeMetadata3();
        v84 = *(v83 + 48);
        v131 = *(v83 + 64);
        v85 = *(v80 + 16);
        v86 = v79;
        v85(v59, v79, v82);
        v87 = sub_197A3347C(v82, v82);
        v88 = *(v87 + 48);
        v89 = *(v87 + 52);
        v90 = *(v80 + 72);
        v91 = *(v80 + 80);
        OUTLINED_FUNCTION_49_9();
        v92 = sub_197A87B08();
        v93 = v132;
        v85(v94, v132, v82);
        v138 = sub_19799A980(v92);
        sub_197A87B38();
        OUTLINED_FUNCTION_29_7();
        v95 = sub_197A87458();
        v96 = *(v80 + 8);
        v96(v93, v82);
        v96(v86, v82);
        *&v59[v84] = v95;
        v59[v131] = 0;
      }

      OUTLINED_FUNCTION_74_7();
      swift_storeEnumTagMultiPayload();
      (v130)(v120, v2);
    }

LABEL_22:
    OUTLINED_FUNCTION_66();
    return;
  }

  __break(1u);
}

void GreedyBufferResult.erasingErrorType()()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 24);
  OUTLINED_FUNCTION_34_0();
  v58 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_87_6();
  v14 = sub_197A87DB8();
  v15 = OUTLINED_FUNCTION_2(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  OUTLINED_FUNCTION_34_0();
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1_0();
  v31 = v30 - v29;
  (*(v32 + 16))(v30 - v29, v1, v3);
  OUTLINED_FUNCTION_140();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = *(v3 + 16);
      sub_197A87448();
      OUTLINED_FUNCTION_47_7();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v36 = *(TupleTypeMetadata3 + 48);
      v37 = *(v31 + v36);
      v38 = *(TupleTypeMetadata3 + 64);
      v39 = *(v31 + v38);
      OUTLINED_FUNCTION_36_0(v34);
      v41 = *(v40 + 32);
      OUTLINED_FUNCTION_72_6();
      v42();
      *(v5 + v36) = v37;
      *(v5 + v38) = v39;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
      OUTLINED_FUNCTION_47_7();
      type metadata accessor for GreedyBufferResult();
      OUTLINED_FUNCTION_46_5();
    }

    else
    {
      (*(v17 + 32))(v25, v31, v14);
      (*(v17 + 16))(v22, v25, v14);
      OUTLINED_FUNCTION_64_0(v22, 1, v6);
      if (v46)
      {
        v47 = *(v17 + 8);
        v47(v25, v14);
        v47(v22, v14);
        v52 = 0;
      }

      else
      {
        v48 = v58;
        v49 = *(v58 + 16);
        v50 = OUTLINED_FUNCTION_50_8();
        v51(v50);
        v57 = *(v3 + 32);
        v52 = sub_197A88208();
        v53 = v13;
        v54 = *(v48 + 8);
        v54(v53, v6);
        if (v52)
        {
          (*(v17 + 8))(v25, v14);
          v54(v22, v6);
        }

        else
        {
          v52 = OUTLINED_FUNCTION_88();
          (*(v58 + 32))(v55, v22, v6);
          (*(v17 + 8))(v25, v14);
        }
      }

      *v5 = v52;
      v56 = *(v3 + 16);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
      OUTLINED_FUNCTION_47_7();
      type metadata accessor for GreedyBufferResult();
      OUTLINED_FUNCTION_46_5();
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0(*(v3 + 16));
    v44 = *(v43 + 32);
    OUTLINED_FUNCTION_72_6();
    v45();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
    OUTLINED_FUNCTION_47_7();
    type metadata accessor for GreedyBufferResult();
    OUTLINED_FUNCTION_46_5();
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66();
}

void GreedyBufferResult.wrappingErrorType<A>(_:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v57 = v7;
  v58 = v6;
  v9 = v8;
  v10 = *(v4 + 24);
  OUTLINED_FUNCTION_34_0();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v53 - v19;
  OUTLINED_FUNCTION_34_0();
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_0();
  v26 = v25 - v24;
  (*(v27 + 16))(v25 - v24, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = *(v5 + 16);
      sub_197A87448();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v32 = *(TupleTypeMetadata3 + 48);
      v33 = *(v26 + v32);
      v34 = *(TupleTypeMetadata3 + 64);
      v35 = *(v26 + v34);
      OUTLINED_FUNCTION_36_0(v30);
      v37 = *(v36 + 32);
      v38 = OUTLINED_FUNCTION_22();
      v39(v38);
      *(v9 + v32) = v33;
      *(v9 + v34) = v35;
    }

    else
    {
      OUTLINED_FUNCTION_64_0(v26, 1, v10);
      if (v44)
      {
        OUTLINED_FUNCTION_41();
      }

      else
      {
        v55 = v3;
        v56 = v1;
        v54 = *(v12 + 32);
        v54(v20, v26, v10);
        (*(v12 + 16))(v18, v20, v10);
        v48 = *(v5 + 32);
        v49 = sub_197A88208();
        if (v49)
        {
          v50 = v49;
          (*(v12 + 8))(v18, v10);
        }

        else
        {
          v50 = OUTLINED_FUNCTION_88();
          v54(v51, v18, v10);
        }

        v58(v50);

        (*(v12 + 8))(v20, v10);
        v45 = OUTLINED_FUNCTION_58_8();
        v3 = v55;
      }

      __swift_storeEnumTagSinglePayload(v45, v46, v47, v3);
      v52 = *(v5 + 16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0(*(v5 + 16));
    v41 = *(v40 + 32);
    v42 = OUTLINED_FUNCTION_22();
    v43(v42);
  }

  type metadata accessor for GreedyBufferResult();
  OUTLINED_FUNCTION_46_5();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66();
}

void static GreedyBufferResult<>.== infix(_:_:)()
{
  OUTLINED_FUNCTION_67();
  v118 = v0;
  v2 = v1;
  v4 = v3;
  v124 = v5;
  v125 = v6;
  OUTLINED_FUNCTION_34_0();
  v110[1] = v7;
  v111 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_0();
  v110[0] = v13 - v12;
  v14 = sub_197A87DB8();
  OUTLINED_FUNCTION_2(v14);
  v119 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_30();
  v113 = v19;
  v120 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2(TupleTypeMetadata2);
  v112 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_30();
  v116 = v25;
  OUTLINED_FUNCTION_34_0();
  v123 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3_5();
  v114 = v30;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v110 - v32;
  v126 = v4;
  v115 = v2;
  v34 = type metadata accessor for GreedyBufferResult();
  v35 = OUTLINED_FUNCTION_2(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_27();
  v42 = v40 - v41;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = v110 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = v110 - v47;
  OUTLINED_FUNCTION_43_8();
  v49 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2(v49);
  v122 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_50_0();
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = v110 - v55;
  v57 = v110 + *(v54 + 48) - v55;
  v121 = v37;
  v58 = *(v37 + 16);
  (v58)(v110 - v55, v124, v34);
  (v58)(v57, v125, v34);
  OUTLINED_FUNCTION_100();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_68_1();
    v58();
    if (!swift_getEnumCaseMultiPayload())
    {
      v89 = v123;
      (*(v123 + 32))(v33, v57, v126);
      OUTLINED_FUNCTION_72_6();
      sub_197A87918();
      v90 = *(v89 + 8);
      v91 = OUTLINED_FUNCTION_140();
      v90(v91);
      v92 = OUTLINED_FUNCTION_83_5();
      v90(v92);
      v93 = *(v121 + 8);
      v94 = OUTLINED_FUNCTION_100();
      v95(v94);
      goto LABEL_20;
    }

    (*(v123 + 8))(v48, v126);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_68_1();
    v58();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v84 = v120;
      v85 = *(v119 + 8);
      v83 = v42;
      goto LABEL_17;
    }

    v75 = v116;
    v76 = *(TupleTypeMetadata2 + 48);
    v78 = v119;
    v77 = v120;
    v79 = *(v119 + 32);
    v79(v116, v42, v120);
    v79(v75 + v76, v57, v77);
    v80 = v115;
    OUTLINED_FUNCTION_64_0(v75, 1, v115);
    if (v99)
    {
      OUTLINED_FUNCTION_64_0(v75 + v76, 1, v80);
      v81 = v121;
      if (v99)
      {
        (*(v78 + 8))(v75, v77);
LABEL_30:
        v107 = *(v81 + 8);
        v108 = OUTLINED_FUNCTION_100();
        v109(v108);
        goto LABEL_20;
      }
    }

    else
    {
      v98 = v113;
      (*(v78 + 16))(v113, v75, v77);
      OUTLINED_FUNCTION_64_0(v75 + v76, 1, v80);
      v81 = v121;
      if (!v99)
      {
        v103 = v75;
        v104 = v111;
        v105 = v110[0];
        (*(v111 + 32))(v110[0], v103 + v76, v80);
        LODWORD(v126) = sub_197A87918();
        v106 = *(v104 + 8);
        v106(v105, v80);
        v106(v98, v80);
        (*(v78 + 8))(v116, v77);
        if (v126)
        {
          goto LABEL_30;
        }

LABEL_28:
        v100 = *(v81 + 8);
        v101 = OUTLINED_FUNCTION_100();
        v102(v101);
        goto LABEL_20;
      }

      (*(v111 + 8))(v98, v80);
    }

    (*(v112 + 8))(v75, TupleTypeMetadata2);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_68_1();
  v58();
  v60 = v126;
  sub_197A87448();
  OUTLINED_FUNCTION_47_7();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v62 = *(TupleTypeMetadata3 + 48);
  v63 = *&v46[v62];
  v64 = *(TupleTypeMetadata3 + 64);
  v65 = v46[v64];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v82 = *(v123 + 8);
    v83 = OUTLINED_FUNCTION_140();
LABEL_17:
    v85(v83, v84);
LABEL_18:
    v86 = *(v122 + 8);
    v87 = v56;
    v88 = v49;
LABEL_19:
    v86(v87, v88);
    goto LABEL_20;
  }

  LODWORD(v124) = v65;
  v125 = *&v57[v62];
  LODWORD(v122) = v57[v64];
  v66 = v123;
  (*(v123 + 32))(v114, v57, v60);
  v67 = sub_197A87918();
  v68 = *(v66 + 8);
  v69 = OUTLINED_FUNCTION_140();
  v68(v69);
  if ((v67 & 1) == 0)
  {
    v96 = OUTLINED_FUNCTION_83_5();
    v68(v96);

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_72_6();
  v70 = sub_197A87428();

  v71 = OUTLINED_FUNCTION_83_5();
  v68(v71);
  if ((v70 & 1) == 0)
  {
LABEL_23:
    v97 = *(v121 + 8);
    v87 = OUTLINED_FUNCTION_100();
    goto LABEL_19;
  }

  v72 = *(v121 + 8);
  v73 = OUTLINED_FUNCTION_100();
  v74(v73);
LABEL_20:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197A2E618(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_79() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E696D726574 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_79() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_79();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_197A2E708(char a1)
{
  if (!a1)
  {
    return 0x73746E656D656C65;
  }

  if (a1 == 1)
  {
    return 0x6C616E696D726574;
  }

  return 0x726F727265;
}

void sub_197A2E75C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(a4 - 16);
  v4 = *(a4 - 8);
  v7 = a3[2];
  v6 = a3[3];
  v8 = a3[4];
  static GreedyBufferResult<>.== infix(_:_:)();
}

uint64_t sub_197A2E7C0()
{
  sub_197A882F8();
  sub_197984424(v2, *v0);
  return sub_197A88358();
}

uint64_t sub_197A2E808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A2E618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A2E844(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_197A2E898(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t GreedyBufferResult<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v96 = a5;
  v11 = *(a2 + 24);
  OUTLINED_FUNCTION_34_0();
  v87 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_34(v17 - v16);
  v19 = *(v18 + 16);
  OUTLINED_FUNCTION_53_9();
  v20 = *(*(sub_197A87DB8() - 8) + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_30();
  v98 = v22;
  OUTLINED_FUNCTION_34_0();
  v90 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3_5();
  v97 = v27;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v28);
  v99 = v86 - v29;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v31);
  OUTLINED_FUNCTION_34_0();
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1_0();
  v39 = v38 - v37;
  v40 = *(a2 + 32);
  v89 = v19;
  v103[0] = v19;
  v103[1] = v11;
  v92 = v11;
  v103[2] = a3;
  v104 = a4;
  v108 = a4;
  v105 = v96;
  v106 = a6;
  v86[1] = a6;
  v107 = v40;
  _s10CodingKeysOMa();
  OUTLINED_FUNCTION_24_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43_8();
  v93 = sub_197A88138();
  OUTLINED_FUNCTION_2(v93);
  v91 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v86 - v45;
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v96 = v46;
  sub_197A883D8();
  (*(v33 + 16))(v39, v95, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v60 = v90;
    (*(v90 + 32))(v88, v39, v89);
    LOBYTE(v100) = 0;
    v61 = v93;
    v62 = v96;
    sub_197A88048();
    __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
    OUTLINED_FUNCTION_70_6();
    sub_197A881E8();
    v63 = *(v60 + 8);
    v64 = OUTLINED_FUNCTION_70_6();
    v65(v64);
    OUTLINED_FUNCTION_67_9();
    v58 = v62;
    v59 = v61;
LABEL_6:
    v57(v58, v59);
    return __swift_destroy_boxed_opaque_existential_1Tm(v103);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v49 = v89;
    sub_197A87448();
    OUTLINED_FUNCTION_53_9();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v88 = *(v39 + *(TupleTypeMetadata3 + 48));
    LODWORD(v87) = *(v39 + *(TupleTypeMetadata3 + 64));
    v51 = v90 + 32;
    v95 = *(v90 + 32);
    v95(v99, v39, v49);
    LOBYTE(v100) = 0;
    v52 = v93;
    sub_197A88048();
    __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
    OUTLINED_FUNCTION_70_6();
    v53 = v94;
    sub_197A881E8();
    if (v53)
    {

      v54 = *(v90 + 8);
      v55 = OUTLINED_FUNCTION_70_6();
      v56(v55);
      OUTLINED_FUNCTION_67_9();
      v58 = v96;
      v59 = v52;
    }

    else
    {
      v92 = v51;
      OUTLINED_FUNCTION_50_8();
      v100 = sub_197A873B8();
      v101 = v74;
      v102 = v75;
      OUTLINED_FUNCTION_53_9();
      v94 = sub_197A87408();
      v76 = (v90 + 8);
      while (1)
      {
        v77 = v98;
        sub_197A873F8();
        if (__swift_getEnumTagSinglePayload(v77, 1, v49) == 1)
        {
          break;
        }

        v95(v97, v77, v49);
        __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
        OUTLINED_FUNCTION_50_8();
        sub_197A881E8();
        v78 = *v76;
        v79 = OUTLINED_FUNCTION_50_8();
        v80(v79);
      }

      LOBYTE(v100) = 1;
      v81 = v93;
      v82 = v96;
      sub_197A880C8();

      v83 = *v76;
      v84 = OUTLINED_FUNCTION_70_6();
      v85(v84);
      OUTLINED_FUNCTION_67_9();
      v58 = v82;
      v59 = v81;
    }

    goto LABEL_6;
  }

  v67 = v92;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v92);
  v69 = v93;
  if (EnumTagSinglePayload == 1)
  {
    LOBYTE(v103[0]) = 1;
    v70 = v96;
    sub_197A880C8();
  }

  else
  {
    v71 = v87;
    v72 = v86[0];
    (*(v87 + 32))(v86[0], v39, v67);
    LOBYTE(v103[0]) = 2;
    v70 = v96;
    sub_197A880E8();
    (*(v71 + 8))(v72, v67);
  }

  OUTLINED_FUNCTION_67_9();
  return v73(v70, v69);
}

uint64_t GreedyBufferResult<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v102 = a1;
  v93 = a9;
  OUTLINED_FUNCTION_34_0();
  v87 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3_5();
  v86 = v20;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v22);
  v95 = sub_197A87DB8();
  OUTLINED_FUNCTION_2(v95);
  v94 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_30();
  v100 = v27;
  OUTLINED_FUNCTION_34_0();
  v91 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_34(v33 - v32);
  v104[0] = a2;
  v104[1] = a3;
  v88 = a4;
  v104[2] = a4;
  v105 = a5;
  v97 = a6;
  v106 = a6;
  v107 = a7;
  v108 = a8;
  _s10CodingKeysOMa();
  OUTLINED_FUNCTION_24_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_53_9();
  v34 = sub_197A88038();
  v35 = OUTLINED_FUNCTION_2(v34);
  v98 = v36;
  v99 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v85 - v40;
  v89 = a2;
  v96 = a3;
  v42 = type metadata accessor for GreedyBufferResult();
  OUTLINED_FUNCTION_2(v42);
  v92 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v85 - v47;
  v49 = v102;
  v50 = v102[4];
  __swift_project_boxed_opaque_existential_1(v102, v102[3]);
  v51 = v101;
  sub_197A883A8();
  if (v51)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  v52 = v94;
  v53 = v95;
  v101 = v48;
  v85[1] = v42;
  LOBYTE(v104[0]) = 2;
  v54 = v96;
  sub_197A87F88();
  if (__swift_getEnumTagSinglePayload(v100, 1, v54) != 1)
  {
    v55 = OUTLINED_FUNCTION_59_7();
    v56(v55);
    v64 = *(v91 + 32);
    (v64)(v90, v100, v54);
    v57 = v101;
    v58 = OUTLINED_FUNCTION_50_8();
    (v64)(v58);
    OUTLINED_FUNCTION_34_6();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
    OUTLINED_FUNCTION_11_7();
    swift_storeEnumTagMultiPayload();
LABEL_5:
    v49 = v102;
    (*(v92 + 32))(v93, v57, v64);
    return __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  (*(v52 + 8))(v100, v53);
  LOBYTE(v104[0]) = 1;
  LODWORD(v100) = sub_197A87F58();
  v109 = 0;
  sub_197A87F18();
  v97 = v41;
  sub_197945EF8(&v103, v104);
  v64 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
  sub_197A881B8();
  v57 = v100;
  if (v100 == 2)
  {
    v65 = OUTLINED_FUNCTION_65_6();
    v66(v65);
    v67 = *(v87 + 32);
    v68 = OUTLINED_FUNCTION_68_6();
    v69(v68);
    OUTLINED_FUNCTION_11_7();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1Tm(v104);
    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1(v104, v105);
  v70 = sub_197A88198();
  if (v71)
  {
    v72 = 0;
  }

  else
  {
    v72 = v70;
  }

  result = sub_197A87438();
  *&v103 = result;
  v73 = v72 - 1;
  if (v72 >= 1)
  {
    v74 = v87;
    v75 = (v87 + 8);
    if (v72 != 1)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
        v76 = v86;
        v77 = v89;
        sub_197A881B8();
        sub_197A87448();
        sub_197A873D8();
        (*v75)(v76, v77);
        --v73;
        v74 = v87;
      }

      while (v73);
    }

    v78 = OUTLINED_FUNCTION_65_6();
    v79(v78);
    sub_197A87448();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v81 = *(TupleTypeMetadata3 + 48);
    v64 = *(TupleTypeMetadata3 + 64);
    v82 = *(v74 + 32);
    v83 = OUTLINED_FUNCTION_68_6();
    v84(v83);
    *(v57 + v81) = v103;
    *(v57 + v64) = v57 & 1;
    OUTLINED_FUNCTION_11_7();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_197A2F7EC(uint64_t a1)
{
  v1 = 0x74616E696D726554;
  if (a1 != 1)
  {
    v1 = 0x6E69726566667542;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6666756220746F4ELL;
  }
}

uint64_t sub_197A2F858(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return MEMORY[0x1EEE6DA00]();
}

uint64_t sub_197A2F8C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = *a2;
  return sub_197A2FA04(v7);
}

uint64_t sub_197A2F980@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_37_8();
  v4 = *(v3 + 120);
  OUTLINED_FUNCTION_86_4();
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_36_0(*(v5 + 88));
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t sub_197A2FA04(uint64_t a1)
{
  OUTLINED_FUNCTION_37_8();
  v4 = *(v3 + 120);
  OUTLINED_FUNCTION_86_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_36_0(*(v5 + 88));
  (*(v6 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_197A2FA98())()
{
  OUTLINED_FUNCTION_23_4();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_48_7();
  return j_j__swift_endAccess;
}

unint64_t sub_197A2FAEC()
{
  OUTLINED_FUNCTION_7_2();
  v2 = *(v0 + *(v1 + 128));
  sub_197A3466C(v2);
  return v2;
}

unint64_t sub_197A2FB28()
{
  OUTLINED_FUNCTION_7_2();
  v2 = *(v1 + 128);
  v3 = *(v0 + v2);
  *(v0 + v2) = v4;
  return sub_197A33628(v3);
}

uint64_t sub_197A2FB58@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_37_8();
  v4 = *(v3 + 144);
  OUTLINED_FUNCTION_86_4();
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_42_6();
  v6 = *(v5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  type metadata accessor for GreedyBufferResult();
  v7 = sub_197A87DB8();
  OUTLINED_FUNCTION_36_0(v7);
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t sub_197A2FC18(uint64_t a1)
{
  OUTLINED_FUNCTION_37_8();
  v4 = *(v3 + 144);
  OUTLINED_FUNCTION_86_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_6();
  v6 = *(v5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  type metadata accessor for GreedyBufferResult();
  v7 = sub_197A87DB8();
  OUTLINED_FUNCTION_36_0(v7);
  (*(v8 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_197A2FCE8())()
{
  OUTLINED_FUNCTION_23_4();
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_48_7();
  return j_j__swift_endAccess;
}

uint64_t sub_197A2FD3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_197A3000C();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = &unk_197A97A00;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_197A2FDAC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_197960E38;

  return v6();
}

uint64_t sub_197A2FE94(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_197A979F0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_197948F1C(v3);
  return sub_197A30060(v6, v5);
}

uint64_t sub_197A2FF24(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return v5();
}

uint64_t sub_197A3000C()
{
  OUTLINED_FUNCTION_7_2();
  v2 = (v0 + *(v1 + 152));
  OUTLINED_FUNCTION_95();
  v4 = *v2;
  v3 = v2[1];
  v5 = OUTLINED_FUNCTION_63();
  sub_197948F1C(v5);
  return OUTLINED_FUNCTION_63();
}

uint64_t sub_197A30060(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_2();
  v6 = (v2 + *(v5 + 152));
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_197956214(v7);
}

uint64_t (*sub_197A300C8())()
{
  OUTLINED_FUNCTION_23_4();
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_48_7();
  return j__swift_endAccess;
}

uint64_t GreedyBufferingAsyncSequence.invalidator.getter()
{
  OUTLINED_FUNCTION_7_2();
  v2 = (v0 + *(v1 + 160));
  v3 = *v2;
  v4 = v2[1];
  v5 = OUTLINED_FUNCTION_22();
  sub_197948F1C(v5);
  return OUTLINED_FUNCTION_22();
}

uint64_t GreedyBufferingAsyncSequence.__allocating_init(backing:fillBuffer:onTermination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  GreedyBufferingAsyncSequence.init(backing:fillBuffer:onTermination:)(a1, a2, a3, a4, a5);
  return v13;
}

char *GreedyBufferingAsyncSequence.init(backing:fillBuffer:onTermination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v6;
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_26_6();
  *&v6[*(v13 + 128)] = 0;
  OUTLINED_FUNCTION_26_6();
  v15 = *(v14 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF4A2C8, &unk_197A974C0);
  v16 = swift_allocObject();
  *(v16 + 20) = 0;
  *&v6[v15] = v16;
  *(v16 + 16) = 0;
  OUTLINED_FUNCTION_26_6();
  v18 = *(v17 + 144);
  v19 = v12[10];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  type metadata accessor for GreedyBufferResult();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  OUTLINED_FUNCTION_26_6();
  v25 = &v6[*(v24 + 152)];
  *v25 = 0;
  *(v25 + 1) = 0;
  OUTLINED_FUNCTION_26_6();
  v27 = v12[11];
  v28 = *(v27 - 8);
  (*(v28 + 16))(&v6[*(v26 + 120)], a1, v27);
  *(v6 + 14) = a2;
  *(v6 + 15) = a3;
  swift_beginAccess();
  *v25 = a4;
  *(v25 + 1) = a5;
  v29 = (*(v12[12] + 8))(v27);
  v31 = v30;
  (*(v28 + 8))(a1, v27);
  OUTLINED_FUNCTION_26_6();
  v33 = &v6[*(v32 + 160)];
  *v33 = v29;
  v33[1] = v31;
  return v6;
}

uint64_t GreedyBufferingAsyncSequence.deinit()
{
  v1 = v0;
  OUTLINED_FUNCTION_14_7();
  v3 = v2;
  v5 = (v0 + *(v4 + 160));
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];

    v6(v8);
    sub_197956214(v6);
  }

  v9 = *(v1 + 120);

  OUTLINED_FUNCTION_26_6();
  (*(*(*(v3 + 88) - 8) + 8))(v1 + *(v10 + 120));
  OUTLINED_FUNCTION_26_6();
  sub_197A33628(*(v1 + *(v11 + 128)));
  OUTLINED_FUNCTION_26_6();
  v13 = *(v1 + *(v12 + 136));

  OUTLINED_FUNCTION_26_6();
  v15 = *(v14 + 144);
  v16 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  type metadata accessor for GreedyBufferResult();
  v17 = sub_197A87DB8();
  OUTLINED_FUNCTION_36_0(v17);
  (*(v18 + 8))(v1 + v15);
  OUTLINED_FUNCTION_26_6();
  v20 = (v1 + *(v19 + 152));
  v21 = v20[1];
  sub_197956214(*v20);
  v22 = v5[1];
  sub_197956214(*v5);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t GreedyBufferingAsyncSequence.__deallocating_deinit()
{
  GreedyBufferingAsyncSequence.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_197A305EC()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[2];
  sub_197A2FB28();
  OUTLINED_FUNCTION_7_2();
  v3 = v1 + *(v2 + 160);
  if (*v3)
  {
    v4 = *(v3 + 8);
    (*v3)();
  }

  v5 = v0[2];
  v6 = sub_197A3000C();
  v0[3] = v6;
  if (v6)
  {
    v8 = v6;
    v9 = v0[2];
    v0[4] = v7;
    sub_197A30060(0, 0);
    v14 = (v8 + *v8);
    v10 = v8[1];
    v11 = swift_task_alloc();
    v0[5] = v11;
    *v11 = v0;
    v11[1] = sub_197A30768;

    return v14();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v13();
  }
}

uint64_t sub_197A30768()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 40);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A30860()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);
  sub_197956214(*(v0 + 24));
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A308B8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_34_0();
  v84 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_5();
  v83 = v8;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33_4();
  v85 = v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v11 = type metadata accessor for GreedyBufferResult();
  OUTLINED_FUNCTION_43_8();
  v12 = sub_197A87DB8();
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_5();
  v82 = v18;
  OUTLINED_FUNCTION_134();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v74 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v74 - v23;
  sub_197A2FB58(&v74 - v23);
  v25 = v12;
  v26 = v15;
  if (__swift_getEnumTagSinglePayload(v24, 1, v11) == 1)
  {
    goto LABEL_2;
  }

  v81 = a1;
  v31 = *(v15 + 16);
  OUTLINED_FUNCTION_72_6();
  v32();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v48 = v22;
    v49 = v3;
    v50 = *(v84 + 32);
    v50(v85, v48, v3);
    v51 = v82;
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v11);
    sub_197A2FC18(v51);
    v50(v81, v85, v49);
    v27 = OUTLINED_FUNCTION_58_8();
    v30 = v49;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v80 = v15;
    v77 = v25;
    v34 = sub_197A87448();
    OUTLINED_FUNCTION_53_9();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v36 = *(v22 + *(TupleTypeMetadata3 + 48));
    v75 = TupleTypeMetadata3;
    v78 = *(v22 + *(TupleTypeMetadata3 + 64));
    v79 = *(v84 + 32);
    v79(v83, v22, v3);
    v88 = v36;
    v37 = v82;
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v11);

    sub_197A2FC18(v37);
    v87 = v36;
    OUTLINED_FUNCTION_27_10();
    swift_getWitnessTable();
    v76 = v34;
    v41 = sub_197A87D28();

    if (v41)
    {
      if (v78)
      {
        *v37 = 0;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_34_6();
        __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
        sub_197A2FC18(v37);
      }

      v46 = v81;
      v47 = v83;
    }

    else
    {
      v64 = v85;
      sub_197A873A8();
      v65 = *(v75 + 48);
      v66 = v84;
      v76 = *(v75 + 64);
      (*(v84 + 16))(v37, v64, v3);
      *(v37 + v65) = v88;
      *(v37 + v76) = v78;
      OUTLINED_FUNCTION_74_7();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_34_6();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);

      sub_197A2FC18(v37);
      (*(v66 + 8))(v85, v3);
      v46 = v81;
      v47 = v83;
    }

    v79(v46, v47, v3);
    v71 = OUTLINED_FUNCTION_58_8();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v3);
    v26 = v80;
    goto LABEL_11;
  }

  v59 = *v22;
  if (!*v22)
  {
LABEL_2:
    OUTLINED_FUNCTION_41();
    v30 = v3;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
LABEL_11:
    v55 = *(v26 + 8);
    v56 = OUTLINED_FUNCTION_140();
    return v57(v56);
  }

  v60 = *v22;
  swift_willThrow();
  v61 = *(v15 + 8);
  v62 = OUTLINED_FUNCTION_140();
  result = v63(v62);
  v86 = v59;
  return result;
}

uint64_t sub_197A30D90()
{
  OUTLINED_FUNCTION_9();
  v1[6] = v2;
  v1[7] = v0;
  OUTLINED_FUNCTION_7_2();
  v4 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v1[8] = type metadata accessor for GreedyBufferResult();
  v5 = sub_197A87DB8();
  v1[9] = v5;
  OUTLINED_FUNCTION_10(v5);
  v1[10] = v6;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197A30E8C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  sub_197A2FB58(v1);
  v6 = OUTLINED_FUNCTION_40_6();
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v6, v7, v5);
  (*(v3 + 8))(v1, v2);
  if (v4 == 1)
  {
    v8 = v0[11];
    v9 = v0[7];
    v10 = v0[6];
    OUTLINED_FUNCTION_36_0(v0[8]);
    (*(v11 + 16))(v8);
    OUTLINED_FUNCTION_34_6();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    sub_197A2FC18(v8);
  }

  else
  {
    v16 = v0[7];
    v17 = v0[8];
    v18 = sub_197A2FCE8();
    if (!__swift_getEnumTagSinglePayload(v19, 1, v17))
    {
      v20 = v0[8];
      v21 = v0[6];
      GreedyBufferResult.concat(_:)();
    }

    (v18)(v0 + 2, 0);
  }

  v23 = v0[11];
  v22 = v0[12];

  OUTLINED_FUNCTION_13();

  return v24();
}

uint64_t sub_197A30FDC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197A30FF8, v1);
}

uint64_t sub_197A30FF8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0[3] + *(*v0[3] + 136));
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AE0, &qword_197A92780);
    sub_197A87F08();
  }

  v3 = v0[3];
  v4 = *(v3 + 120);
  v10 = (*(v3 + 112) + **(v3 + 112));
  v5 = *(*(v3 + 112) + 4);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_19796D708;
  v7 = v0[2];
  v8 = v0[3];

  return v10(v7, v8);
}

uint64_t sub_197A31164@<X0>(BOOL *a1@<X8>)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A50, &qword_197A979E0) - 8) + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  v6 = OUTLINED_FUNCTION_83_5();
  sub_1979D9354(v6, v7);
  v8 = sub_197A87CE8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v8);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_19795B378(v5, &qword_1EAF49A50, &qword_197A979E0);
  }

  else
  {
    sub_197A87CD8();
    OUTLINED_FUNCTION_36_0(v8);
    result = (*(v11 + 8))(v5, v8);
  }

  *a1 = EnumTagSinglePayload == 1;
  return result;
}

uint64_t sub_197A31274(char a1)
{
  OUTLINED_FUNCTION_7_2();
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150) - 8) + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  result = sub_197A2FAEC();
  if (!result || result != 1 && (result = sub_197A33628(result), (a1 & 1) != 0))
  {
    sub_197A87C08();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = *(v3 + 80);
    *(v12 + 48) = *(v3 + 96);
    *(v12 + 56) = v11;
    sub_19795CB2C();

    sub_197A2FB28();
  }

  return result;
}

uint64_t sub_197A313DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v5 = type metadata accessor for GreedyBufferResult();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A314C4, 0, 0);
}

uint64_t sub_197A314C4()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[14];
  OUTLINED_FUNCTION_95();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_197A315AC;
    v4 = v0[17];

    return sub_197A30FDC(v4);
  }

  else
  {
    v6 = v0[17];

    OUTLINED_FUNCTION_13();

    return v7();
  }
}

uint64_t sub_197A315AC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_197A31690()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[18];
  v2 = v0[14];

  OUTLINED_FUNCTION_95();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v4 = swift_task_alloc();
    v0[21] = v4;
    *v4 = v0;
    v4[1] = sub_197A3184C;
    v5 = v0[17];

    return sub_197A30D90();
  }

  v7 = v0[17];
  v8 = GreedyBufferResult.isTerminal.getter(v0[15]);
  v9 = v0[14];
  if (v8)
  {
    OUTLINED_FUNCTION_95();
    v10 = swift_weakLoadStrong();
    v0[22] = v10;
    if (v10)
    {
      v11 = swift_task_alloc();
      v0[23] = v11;
      *v11 = v0;
      OUTLINED_FUNCTION_17_8(v11);

      return sub_197A305D0();
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_95();
  v12 = swift_weakLoadStrong();
  v0[24] = v12;
  if (!v12)
  {
LABEL_14:
    v16 = OUTLINED_FUNCTION_64_7();
    v17(v16);
    v18 = v0[17];

    OUTLINED_FUNCTION_13();

    return v19();
  }

  v13 = OUTLINED_FUNCTION_19_12();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_197A3184C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 168);
  v3 = *(v1 + 160);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A3194C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[17];
  v2 = GreedyBufferResult.isTerminal.getter(v0[15]);
  v3 = v0[14];
  if (v2)
  {
    OUTLINED_FUNCTION_95();
    Strong = swift_weakLoadStrong();
    v0[22] = Strong;
    if (Strong)
    {
      v5 = swift_task_alloc();
      v0[23] = v5;
      *v5 = v0;
      OUTLINED_FUNCTION_17_8(v5);

      return sub_197A305D0();
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_95();
  v7 = swift_weakLoadStrong();
  v0[24] = v7;
  if (!v7)
  {
LABEL_10:
    v11 = OUTLINED_FUNCTION_64_7();
    v12(v11);
    v13 = v0[17];

    OUTLINED_FUNCTION_13();

    return v14();
  }

  v8 = OUTLINED_FUNCTION_19_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A31A70()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A31B70()
{
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_64_7();
  v2(v1);
  v3 = *(v0 + 136);

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_197A31BD8()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 192);
  sub_197A31274(1);

  v2 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

unint64_t sub_197A31C40()
{
  result = sub_197A2FAEC();
  if (result <= 1)
  {
    sub_197A33628(result);
    return 0;
  }

  return result;
}

unint64_t sub_197A31C68()
{
  OUTLINED_FUNCTION_7_2();
  v2 = *(v0 + *(v1 + 136));
  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 1;
  os_unfair_lock_unlock((v2 + 20));
  result = sub_197A31C40();
  if (result)
  {
    sub_197A87C38();
  }

  return result;
}

uint64_t sub_197A31CFC()
{
  *(v1 + 24) = v0;
  OUTLINED_FUNCTION_7_2();
  *(v1 + 32) = v2;
  return OUTLINED_FUNCTION_32_0(sub_197A31D4C, v3);
}

uint64_t sub_197A31D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_0();
  v58 = v17;
  if (qword_1ED880370 != -1)
  {
    OUTLINED_FUNCTION_50();
  }

  v18 = sub_197A87608();
  v17[5] = __swift_project_value_buffer(v18, qword_1ED880520);
  v19 = sub_197A875E8();
  v20 = sub_197A87D78();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_137(v21);
    _os_log_impl(&dword_197941000, v19, v20, "Cancelling sequence buffering and waiting for upstream sequence termination", v16, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v22 = v17[3];

  sub_197A31C68();
  v23 = sub_197A2FAEC();
  if (v23)
  {
    sub_197A33628(v23);
  }

  else
  {
    v24 = v17[3];
    v25 = default argument 0 of GreedyBufferingAsyncSequence.startBuffering(fromBufferingTask:)(*(v17[4] + 80), *(v17[4] + 88), *(v17[4] + 96));
    sub_197A31274(v25 & 1);
  }

  v26 = v17[3];
  v27 = sub_197A31C40();
  v17[6] = v27;
  if (!v27)
  {
    v38 = v17[5];
    v39 = v17[3];

    v40 = sub_197A875E8();
    v41 = sub_197A87D78();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v17[3];
      v43 = v17[4];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v57 = v45;
      *v44 = 136315138;
      v17[2] = sub_197A2FAEC();
      v46 = v43[10];
      v47 = v43[11];
      v48 = v43[12];
      type metadata accessor for GreedyBufferingAsyncSequence.State();
      OUTLINED_FUNCTION_28_9();
      v49 = sub_197A87998();
      v51 = sub_197948834(v49, v50, &v57);

      *(v44 + 4) = v51;
      OUTLINED_FUNCTION_31(&dword_197941000, v52, v53, "Sequence buffering terminated post-cancellation in state: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_44();
    }

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  v28 = *(MEMORY[0x1E69E86C0] + 4);
  v29 = swift_task_alloc();
  v17[7] = v29;
  *v29 = v17;
  OUTLINED_FUNCTION_21_8(v29);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DA40](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A31FC0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 56);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A320B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_0();
  v50 = v16;
  v17 = v16[6];

  v18 = v16[3];
  v19 = sub_197A31C40();
  v16[6] = v19;
  if (!v19)
  {
    v30 = v16[5];
    v31 = v16[3];

    v32 = sub_197A875E8();
    v33 = sub_197A87D78();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v16[3];
      v35 = v16[4];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136315138;
      v16[2] = sub_197A2FAEC();
      v38 = v35[10];
      v39 = v35[11];
      v40 = v35[12];
      type metadata accessor for GreedyBufferingAsyncSequence.State();
      OUTLINED_FUNCTION_28_9();
      v41 = sub_197A87998();
      v43 = sub_197948834(v41, v42, &v49);

      *(v36 + 4) = v43;
      OUTLINED_FUNCTION_31(&dword_197941000, v44, v45, "Sequence buffering terminated post-cancellation in state: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_44();
    }

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  v20 = *(MEMORY[0x1E69E86C0] + 4);
  v21 = swift_task_alloc();
  v16[7] = v21;
  *v21 = v16;
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DA40](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A32274()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_14_7();
  v1[4] = v3;
  v1[5] = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v1[6] = type metadata accessor for GreedyBufferResult();
  v5 = sub_197A87DB8();
  v1[7] = v5;
  OUTLINED_FUNCTION_10(v5);
  v1[8] = v6;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197A32390()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[3];
  v2 = sub_197A2FAEC();
  if (v2)
  {
    sub_197A33628(v2);
  }

  else
  {
    v3 = v0[3];
    v4 = default argument 0 of GreedyBufferingAsyncSequence.startBuffering(fromBufferingTask:)(v0[5], *(v0[4] + 88), *(v0[4] + 96));
    sub_197A31274(v4 & 1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = sub_197A2FAEC();
  v8 = *(v5 + 88);
  v9 = *(v5 + 96);
  sub_197A33628(v7);
  if (v7 == 1)
  {
    goto LABEL_11;
  }

  v10 = v0[6];
  v11 = v0[3];
  sub_197A2FB58(v0[9]);
  v12 = OUTLINED_FUNCTION_40_6();
  __swift_getEnumTagSinglePayload(v12, v13, v10);
  v14 = OUTLINED_FUNCTION_92_5();
  if (!v16)
  {
    (*(v15 + 8))(v14);
LABEL_11:
    v29 = v0[3];
    sub_197A308B8(v0[2]);
LABEL_12:
    v30 = v0[9];

    OUTLINED_FUNCTION_13();

    return v31();
  }

  OUTLINED_FUNCTION_85_6();
  v17();
  v18 = sub_197A31C40();
  v0[10] = v18;
  if (!v18)
  {
    if (qword_1ED880370 != -1)
    {
      OUTLINED_FUNCTION_50();
    }

    v32 = sub_197A87608();
    __swift_project_value_buffer(v32, qword_1ED880520);
    v33 = sub_197A875E8();
    v34 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v34))
    {
      v35 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v35);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v36, v37, "GreedyBufferAyncSequence tried to buffer with no buffering task");
      OUTLINED_FUNCTION_42_0();
    }

    type metadata accessor for ModelManagerError();
    sub_19795E388();
    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_95_5();
    swift_willThrow();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_84_5();
  type metadata accessor for GreedyBufferingAsyncSequence();
  OUTLINED_FUNCTION_32_6();
  v19 = *(MEMORY[0x1E69E88F0] + 4);
  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  OUTLINED_FUNCTION_18_10(v20);
  OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_76_6();

  return MEMORY[0x1EEE6DE18](v21, v22, v23, v24, v25, v26, v27, v28);
}

void sub_197A325CC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *(v2 + 88);
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 24);

    MEMORY[0x1EEE6DFA0](sub_197A326F4, v7, 0);
  }
}

uint64_t sub_197A326F4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[10];

  v2 = v0[12];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_197A2FAEC();
  v7 = *(v3 + 88);
  v6 = *(v3 + 96);
  sub_197A33628(v5);
  if (v5 == 1)
  {
    goto LABEL_8;
  }

  v8 = v0[6];
  v9 = v0[3];
  sub_197A2FB58(v0[9]);
  v10 = OUTLINED_FUNCTION_40_6();
  __swift_getEnumTagSinglePayload(v10, v11, v8);
  v12 = OUTLINED_FUNCTION_92_5();
  if (!v14)
  {
    (*(v13 + 8))(v12);
LABEL_8:
    v27 = v0[3];
    sub_197A308B8(v0[2]);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_85_6();
  v15();
  v16 = sub_197A31C40();
  v0[10] = v16;
  if (!v16)
  {
    if (qword_1ED880370 != -1)
    {
      OUTLINED_FUNCTION_50();
    }

    v31 = sub_197A87608();
    __swift_project_value_buffer(v31, qword_1ED880520);
    v32 = sub_197A875E8();
    v33 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v33))
    {
      v34 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v34);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v35, v36, "GreedyBufferAyncSequence tried to buffer with no buffering task");
      OUTLINED_FUNCTION_42_0();
    }

    type metadata accessor for ModelManagerError();
    sub_19795E388();
    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_95_5();
    swift_willThrow();
LABEL_9:
    v28 = v0[9];

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_84_5();
  type metadata accessor for GreedyBufferingAsyncSequence();
  OUTLINED_FUNCTION_32_6();
  v17 = *(MEMORY[0x1E69E88F0] + 4);
  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DE18](v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_197A32908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_9();
  v17 = v16;
  v19 = v18;
  v20 = *(MEMORY[0x1E69E86C0] + 4);
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_8_0(v21);
  *v22 = v28;
  v22[1] = sub_19795BD18;
  v29 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v19, v17, v29, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A329AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_19795CB2C();
}

uint64_t sub_197A32AC4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  sub_197A31C68();
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A32B1C()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_14_7();
  v1[4] = v3;
  v1[5] = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  OUTLINED_FUNCTION_43_8();
  v5 = type metadata accessor for GreedyBufferResult();
  v1[6] = v5;
  OUTLINED_FUNCTION_2(v5);
  v1[7] = v6;
  v8 = *(v7 + 64) + 15;
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_43_8();
  v9 = sub_197A87DB8();
  v1[9] = v9;
  OUTLINED_FUNCTION_10(v9);
  v1[10] = v10;
  v12 = *(v11 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_197A32C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_33();
  v20 = v17[3];
  v21 = sub_197A2FAEC();
  if (v21)
  {
    sub_197A33628(v21);
  }

  else
  {
    v22 = v17[3];
    v23 = default argument 0 of GreedyBufferingAsyncSequence.startBuffering(fromBufferingTask:)(v17[5], *(v17[4] + 88), *(v17[4] + 96));
    sub_197A31274(v23 & 1);
  }

  v24 = v17[3];
  v25 = sub_197A2FAEC();
  sub_197A33628(v25);
  if (v25 == 1)
  {
    goto LABEL_11;
  }

  v26 = v17[13];
  OUTLINED_FUNCTION_52_7();
  v27 = OUTLINED_FUNCTION_40_6();
  __swift_getEnumTagSinglePayload(v27, v28, v16);
  v29 = OUTLINED_FUNCTION_91_6();
  if (!v31)
  {
    (*(v30 + 8))(v29);
LABEL_11:
    v44 = v17[12];
    OUTLINED_FUNCTION_52_7();
    v45 = OUTLINED_FUNCTION_40_6();
    if (__swift_getEnumTagSinglePayload(v45, v46, v16) != 1)
    {
      v49 = OUTLINED_FUNCTION_36_6();
      v50(v49);
      v51 = OUTLINED_FUNCTION_77_8();
      v52(v51);
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v16);
      sub_197A2FC18(v18);
      (*(v19 + 8))(v44, v16);
      goto LABEL_15;
    }

    v47 = OUTLINED_FUNCTION_71_7(v17[12]);
    v48(v47);
    *v44 = 0;
    OUTLINED_FUNCTION_22();
LABEL_13:
    swift_storeEnumTagMultiPayload();
LABEL_15:
    v57 = v17[12];
    v56 = v17[13];
    v58 = v17[11];
    v59 = v17[8];

    OUTLINED_FUNCTION_13();

    return v60();
  }

  OUTLINED_FUNCTION_85_6();
  v32();
  v33 = sub_197A31C40();
  v17[14] = v33;
  if (!v33)
  {
    if (qword_1ED880370 != -1)
    {
      OUTLINED_FUNCTION_50();
    }

    v61 = sub_197A87608();
    __swift_project_value_buffer(v61, qword_1ED880520);
    v62 = sub_197A875E8();
    v63 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v63))
    {
      v64 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v64);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v65, v66, "GreedyBufferAyncSequence tried to buffer with no buffering task");
      OUTLINED_FUNCTION_42_0();
    }

    v67 = v17[6];
    v68 = v17[2];

    type metadata accessor for ModelManagerError();
    sub_19795E388();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_96_4();
    *v68 = v18;
    OUTLINED_FUNCTION_100();
    goto LABEL_13;
  }

  v34 = *(MEMORY[0x1E69E86C0] + 4);
  v35 = swift_task_alloc();
  v17[15] = v35;
  *v35 = v17;
  OUTLINED_FUNCTION_20_10(v35);
  OUTLINED_FUNCTION_38_9();

  return MEMORY[0x1EEE6DA40](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A32F44()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 120);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A3303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_33();
  v20 = v17[14];

  v21 = v17[3];
  v22 = sub_197A2FAEC();
  sub_197A33628(v22);
  if (v22 == 1)
  {
    goto LABEL_8;
  }

  v23 = v17[13];
  OUTLINED_FUNCTION_52_7();
  v24 = OUTLINED_FUNCTION_40_6();
  __swift_getEnumTagSinglePayload(v24, v25, v16);
  v26 = OUTLINED_FUNCTION_91_6();
  if (!v28)
  {
    (*(v27 + 8))(v26);
LABEL_8:
    v41 = v17[12];
    OUTLINED_FUNCTION_52_7();
    v42 = OUTLINED_FUNCTION_40_6();
    if (__swift_getEnumTagSinglePayload(v42, v43, v16) != 1)
    {
      v46 = OUTLINED_FUNCTION_36_6();
      v47(v46);
      v48 = OUTLINED_FUNCTION_77_8();
      v49(v48);
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v16);
      sub_197A2FC18(v18);
      (*(v19 + 8))(v41, v16);
      goto LABEL_12;
    }

    v44 = OUTLINED_FUNCTION_71_7(v17[12]);
    v45(v44);
    *v41 = 0;
    OUTLINED_FUNCTION_22();
LABEL_10:
    swift_storeEnumTagMultiPayload();
LABEL_12:
    v54 = v17[12];
    v53 = v17[13];
    v55 = v17[11];
    v56 = v17[8];

    OUTLINED_FUNCTION_13();

    return v57();
  }

  OUTLINED_FUNCTION_85_6();
  v29();
  v30 = sub_197A31C40();
  v17[14] = v30;
  if (!v30)
  {
    if (qword_1ED880370 != -1)
    {
      OUTLINED_FUNCTION_50();
    }

    v58 = sub_197A87608();
    __swift_project_value_buffer(v58, qword_1ED880520);
    v59 = sub_197A875E8();
    v60 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v60))
    {
      v61 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v61);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v62, v63, "GreedyBufferAyncSequence tried to buffer with no buffering task");
      OUTLINED_FUNCTION_42_0();
    }

    v64 = v17[6];
    v65 = v17[2];

    type metadata accessor for ModelManagerError();
    sub_19795E388();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_96_4();
    *v65 = v18;
    OUTLINED_FUNCTION_100();
    goto LABEL_10;
  }

  v31 = *(MEMORY[0x1E69E86C0] + 4);
  v32 = swift_task_alloc();
  v17[15] = v32;
  *v32 = v17;
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_38_9();

  return MEMORY[0x1EEE6DA40](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A332F0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960E38;

  return sub_197A32274();
}

uint64_t sub_197A3338C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  v14 = a5[10];
  v15 = a5[11];
  v16 = a5[12];
  v17 = type metadata accessor for GreedyBufferingAsyncSequence();
  *v13 = v6;
  v13[1] = sub_19799C7FC;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, v17, a6, v6 + 16);
}

uint64_t sub_197A3347C(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A350, &qword_197A97A18);
  }

  else
  {

    return sub_197A88158();
  }
}

uint64_t sub_197A334F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16 + ((*(*(v15 - 8) + 80) + 16) & ~*(*(v15 - 8) + 80)), v14);
  if (v9)
  {
    return (*(v11 + 32))(a9, v14, a6);
  }

  return result;
}

unint64_t sub_197A33628(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_197A33638()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_8_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_8_1(v8);

  return sub_197A313DC(v10, v3, v4, v5);
}

uint64_t sub_197A3374C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197A33788(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197A337F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  TupleTypeMetadata3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    sub_197A87448();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      TupleTypeMetadata3 = sub_197A87DB8();
      if (v7 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return TupleTypeMetadata3;
}

uint64_t sub_197A338BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > v3)
  {
    v3 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  }

  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!v5)
  {
    ++v6;
  }

  if (v6 > v3)
  {
    v3 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_26;
  }

  v7 = v3 + 1;
  v8 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v11 < 2)
    {
LABEL_26:
      v13 = *(a1 + v3);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_26;
  }

LABEL_18:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v12) + 254;
}

void sub_197A33A38(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v6 <= v5)
  {
    v6 = *(*(*(a4 + 16) - 8) + 64);
  }

  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 64);
  if (!*(v7 + 84))
  {
    ++v8;
  }

  if (v8 <= v6)
  {
    v8 = v6;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v9 <= 3)
  {
    v14 = ((a3 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v9 < 4)
    {
      v13 = (v12 >> v10) + 1;
      if (v8 != -1)
      {
        v16 = v12 & ~(-1 << v10);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v9 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v9] = v13;
        break;
      case 2:
        *&a1[v9] = v13;
        break;
      case 3:
LABEL_41:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = v13;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *&a1[v9] = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_41;
      case 4:
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          a1[v8] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_197A33C54(uint64_t a1)
{
  v2 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
    type metadata accessor for GreedyBufferResult();
    result = sub_197A87DB8();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of GreedyBufferingAsyncSequence.cancelBufferingAndWait()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v5 = (*(v1 + 344) + **(v1 + 344));
  v2 = *(*(v1 + 344) + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_197960FB0;

  return v5();
}

uint64_t dispatch thunk of GreedyBufferingAsyncSequence.next()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v7 = (*(v0 + 360) + **(v0 + 360));
  v1 = *(*(v0 + 360) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_1(v3);

  return v7(v5);
}

uint64_t dispatch thunk of GreedyBufferingAsyncSequence.nextBufferResult()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v7 = (*(v0 + 368) + **(v0 + 368));
  v1 = *(*(v0 + 368) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_1(v3);

  return v7(v5);
}

uint64_t sub_197A34250()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_20ModelManagerServices28GreedyBufferingAsyncSequenceC5StateOyxq__G(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_197A342A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}