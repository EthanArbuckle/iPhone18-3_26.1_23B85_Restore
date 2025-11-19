uint64_t sub_193487D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_193487DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_19393BE60();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void (*GenerativeFunctionsInstrumentationEvent.identifierSet.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x228uLL);
  *a1 = v3;
  v3[65] = v1;
  v4 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  v3[66] = v4;
  v3[67] = __swift_coroFrameAllocStub(*(*(v4 - 8) + 64));
  static Buildable.with(_:)(sub_1934880E0, &type metadata for GenerativeFunctionsInstrumentationEvent.IdentifierSet, &protocol witness table for GenerativeFunctionsInstrumentationEvent.IdentifierSet, (v3 + 26));
  v3[68] = 0;
  return sub_193487F20;
}

void sub_193487F20(uint64_t *a1, char a2)
{
  v5 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_1_14();
    v7 = memcpy(v5, v6, 0x68uLL);
    MEMORY[0x1EEE9AC00](v7);
    sub_19344FABC(v5, v5 + 416);
    static Buildable.with(_:)(sub_1934880F8, v2, &protocol witness table for GenerativeFunctionsInstrumentationEvent.Identifiers, v3);
    sub_1934500D8(v5);
    v8 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
    sub_193487D44(v3, v4 + *(v8 + 28));
    memcpy((v5 + 312), (v5 + 208), 0x68uLL);
    sub_1934500D8(v5 + 312);
  }

  else
  {
    OUTLINED_FUNCTION_1_14();
    v10 = memcpy((v5 + 104), v9, 0x68uLL);
    MEMORY[0x1EEE9AC00](v10);
    static Buildable.with(_:)(sub_1934880F8, v2, &protocol witness table for GenerativeFunctionsInstrumentationEvent.Identifiers, v3);
    sub_1934500D8(v5 + 104);
    v11 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
    sub_193487D44(v3, v4 + *(v11 + 28));
  }

  free(v3);
  free(v5);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_193488110()
{
  v0 = sub_19393BE60();
  __swift_allocate_value_buffer(v0, qword_1ED50F7E8);
  v1 = __swift_project_value_buffer(v0, qword_1ED50F7E8);
  return static MonotonicTimestamp.currentBootSessionUUID()(v1);
}

uint64_t static MonotonicTimestamp.currentBootSessionUUID()@<X0>(uint64_t a1@<X8>)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v4 = v20 - v3;
  v5 = *(*(sub_19393C600() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_5_1();
  v8 = (v7 - v6);
  v20[0] = 37;
  v9 = sub_19393C700();
  *(v9 + 16) = 37;
  *(v9 + 48) = 0u;
  *(v9 + 61) = 0;
  *(v9 + 32) = 0u;
  if (!sysctlbyname("kern.bootsessionuuid", (v9 + 32), v20, 0, 0))
  {
    sub_19393C5E0();
    sub_193488704(v9, v8);
    if (v18)
    {
      sub_19393BE10();

      v19 = sub_19393BE60();
      if (__swift_getEnumTagSinglePayload(v4, 1, v19) != 1)
      {
        result = (*(*(v19 - 8) + 32))(a1, v4, v19);
        goto LABEL_9;
      }

      sub_193458FEC(v4);
      v14 = 0x8000000193A12BC0;
      v15 = 0xD000000000000017;
    }

    else
    {
      v14 = 0xEE00676E69727473;
      v15 = 0x2064696C61766E49;
    }

LABEL_8:
    sub_19348842C();
    swift_allocError();
    *v16 = v15;
    v16[1] = v14;
    result = swift_willThrow();
LABEL_9:
    v17 = *MEMORY[0x1E69E9840];
    return result;
  }

  v10 = MEMORY[0x193B179D0]();
  result = strerror(v10);
  if (result)
  {
    v12 = sub_19393C560();
    v14 = v13;

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0x6E776F6E6B6E55;
    }

    if (!v14)
    {
      v14 = 0xE700000000000000;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_19348842C()
{
  result = qword_1EAE3AAE8;
  if (!qword_1EAE3AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AAE8);
  }

  return result;
}

uint64_t static MonotonicTimestamp.bootSessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED50F7D8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = sub_19393BE60();
  v3 = __swift_project_value_buffer(v2, qword_1ED50F7E8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static MonotonicTimestamp.bootSessionUUID.setter(uint64_t a1)
{
  if (qword_1ED50F7D8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = sub_19393BE60();
  v3 = __swift_project_value_buffer(v2, qword_1ED50F7E8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static MonotonicTimestamp.bootSessionUUID.modify())()
{
  if (qword_1ED50F7D8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v0 = sub_19393BE60();
  __swift_project_value_buffer(v0, qword_1ED50F7E8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_19348869C()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0x100000001;
  result = mach_timebase_info(v2);
  _MergedGlobals = v2[0];
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_193488704(uint64_t a1, char *a2)
{
  v4 = sub_19393C600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19393C5D0();
  v9 = sub_19393C5C0();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9 & 1) != 0 || (sub_19393C5E0(), v11 = sub_19393C5C0(), v10(v8, v4), (v11) || (sub_19393C5B0(), v12 = sub_19393C5C0(), v10(v8, v4), (v12))
  {

    v14 = sub_193488B20(v13);
    if (v15)
    {
      v16 = v14;
      sub_19393C5D0();
      v17 = sub_19393C5C0();
      v10(v8, v4);
      if (v17)
      {

LABEL_16:
        v10(a2, v4);
        return v16;
      }

      if (sub_19393C8F0())
      {
        v10(a2, v4);

        return v16;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    if (*(a1 + 16) == i)
    {
      result = sub_19393C990();
      __break(1u);
      return result;
    }

    if (!*(a1 + i + 32))
    {
      break;
    }
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithBytes:a1 + 32 length:i encoding:sub_19393C5F0()];

  if (v19)
  {
    v16 = sub_19393C580();

    goto LABEL_16;
  }

  v10(a2, v4);
  return 0;
}

uint64_t static MonotonicTimestamp.nowForContinuousClock()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393BE60();
  v4 = OUTLINED_FUNCTION_2_17(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = mach_continuous_time();
  v8 = static MonotonicTimestamp.nanoseconds(fromTicks:)(v7);
  MonotonicTimestamp.init()(a1);
  if (qword_1ED50F7D8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  __swift_project_value_buffer(v1, qword_1ED50F7E8);
  OUTLINED_FUNCTION_5_13();
  v9 = OUTLINED_FUNCTION_3_13();
  v10(v9);
  v11 = OUTLINED_FUNCTION_4_13();
  v12(v11);
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v14 = v13 | 0x8000000000000000;
  v15 = *(type metadata accessor for MonotonicTimestamp() + 20);
  v16 = *(a1 + v15);

  *(a1 + v15) = v14;
  return result;
}

uint64_t sub_193488B20(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  if (*(result + 32))
  {
    result = 0;
    v3 = v1 - 1;
    while (v3 != result)
    {
      if (!*(v2 + 33 + result++))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  result = 0;
LABEL_8:
  result = sub_193488BC4(result, v2);
  if (!__OFSUB__(v5 >> 1, v6))
  {
    v7 = sub_19393C620();
    swift_unknownObjectRelease();
    return v7;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_193488BC4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_193488C08(uint64_t a1, int a2)
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

uint64_t sub_193488C48(uint64_t result, int a2, int a3)
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

uint64_t GenerativeFunctionsInstrumentationEvent.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 28);
  v4 = v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 36);

  return sub_193458F7C(v4, a1);
}

uint64_t GenerativeFunctionsInstrumentationEvent.spanId.getter()
{
  v1 = v0 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 28);
  v2 = (v1 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 40));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.clientSessionId.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v1 + *(OUTLINED_FUNCTION_0_4() + 28));
  v6 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  sub_193458F7C(v5 + *(v6 + 36), v0);
  v7 = sub_19393BE60();
  OUTLINED_FUNCTION_1_15(v7);
  v8 = 0;
  if (v2 != 1)
  {
    v8 = *v5;
    v9 = v5[1];
  }

  return v8;
}

uint64_t GenerativeFunctionsInstrumentationEvent.clientRequestId.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v1 + *(OUTLINED_FUNCTION_0_4() + 28);
  v6 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  sub_193458F7C(v5 + *(v6 + 36), v0);
  v7 = sub_19393BE60();
  OUTLINED_FUNCTION_1_15(v7);
  v8 = 0;
  if (v2 != 1)
  {
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  return v8;
}

uint64_t sub_193488ECC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FAF8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_193489040(uint64_t a1, void (*a2)(void), uint64_t a3, unsigned int *a4)
{
  a2(0);
  OUTLINED_FUNCTION_104_2();
  __swift_allocate_value_buffer(v7, v8);
  __swift_project_value_buffer(v4, a3);
  v9 = *a4;
  OUTLINED_FUNCTION_80_3();
  v11 = *(v10 + 104);

  return v11();
}

unint64_t sub_193489134()
{
  result = sub_193434A38();
  qword_1ED50FA08 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FA10 = result;
  return result;
}

uint64_t sub_193489188()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FB58);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_1934892F4()
{
  OUTLINED_FUNCTION_62_2();
  sub_193490C74();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_193489398()
{
  result = sub_193434A38();
  qword_1ED50FA18 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FA20 = result;
  return result;
}

uint64_t sub_1934893C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FB88);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_1934894F8()
{
  OUTLINED_FUNCTION_62_2();
  sub_193490C20();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_19348959C()
{
  result = sub_193434A38();
  qword_1ED50FA28 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FA30 = result;
  return result;
}

uint64_t sub_1934895CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FBB8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_1934896FC()
{
  OUTLINED_FUNCTION_62_2();
  sub_193490BCC();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_1934897A0()
{
  result = sub_193434A38();
  qword_1ED50FA38 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FA40 = result;
  return result;
}

uint64_t sub_1934897D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FBE8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_193489900()
{
  OUTLINED_FUNCTION_62_2();
  sub_193490B78();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_1934899A4()
{
  result = sub_193434A38();
  qword_1ED50FA48 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FA50 = result;
  return result;
}

uint64_t sub_1934899D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FC18);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_193489B04()
{
  OUTLINED_FUNCTION_62_2();
  sub_193490B24();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_193489BA8()
{
  result = sub_193434A38();
  qword_1ED50FA58 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FA60 = result;
  return result;
}

uint64_t sub_193489BFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FC48);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_193489D68()
{
  OUTLINED_FUNCTION_62_2();
  sub_193490AD0();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_193489E0C()
{
  result = sub_193434A38();
  qword_1ED50FA68 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FA70 = result;
  return result;
}

uint64_t sub_193489E3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FC78);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_193489F6C()
{
  OUTLINED_FUNCTION_62_2();
  sub_193490A7C();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_19348A018()
{
  result = sub_193434A38();
  qword_1ED50FA78 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FA80 = result;
  return result;
}

uint64_t sub_19348A06C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FCA8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_19348A1D8()
{
  OUTLINED_FUNCTION_62_2();
  sub_193490A28();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_19348A284()
{
  result = sub_193434A38();
  qword_1ED50FA88 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FA90 = result;
  return result;
}

uint64_t sub_19348A2B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FCD8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_19348A3E4()
{
  OUTLINED_FUNCTION_62_2();
  sub_1934909D4();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_19348A488()
{
  result = sub_193434A38();
  qword_1ED50FA98 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FAA0 = result;
  return result;
}

uint64_t sub_19348A4DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FD08);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_19348A648()
{
  OUTLINED_FUNCTION_62_2();
  sub_193490980();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_19348A6EC()
{
  result = sub_193434A38();
  qword_1ED50FAA8 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FAB0 = result;
  return result;
}

uint64_t sub_19348A740()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FD38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_19348A8AC()
{
  OUTLINED_FUNCTION_62_2();
  sub_19349092C();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_19348A950()
{
  result = sub_193434A38();
  qword_1ED50FAB8 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FAC0 = result;
  return result;
}

uint64_t sub_19348A9A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FD68);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_19348AB10()
{
  OUTLINED_FUNCTION_62_2();
  sub_1934908D8();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_19348ABBC()
{
  result = sub_193434A38();
  qword_1ED50FAC8 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FAD0 = result;
  return result;
}

uint64_t sub_19348AC10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FD98);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_19348ADB4()
{
  OUTLINED_FUNCTION_62_2();
  sub_193490884();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_19348AE58()
{
  result = sub_193434A38();
  qword_1ED50FAD8 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FAE0 = result;
  return result;
}

uint64_t sub_19348AEAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FDC8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_19348B018()
{
  OUTLINED_FUNCTION_62_2();
  sub_193490830();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19348B088(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_14();
  v7 = sub_19393BE60();
  __swift_allocate_value_buffer(v7, a2);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_22_9();
    return v13(v12);
  }

  return result;
}

unint64_t sub_19348B174()
{
  result = sub_193434A38();
  qword_1ED50FAE8 = &type metadata for Library.Databases.ApplePay.Security.Features;
  unk_1ED50FAF0 = result;
  return result;
}

uint64_t sub_19348B1C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FDF8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_19348B2B8@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_98_1(a1);
  if (!v5)
  {
    swift_once();
  }

  a2(0);
  OUTLINED_FUNCTION_104_2();
  __swift_project_value_buffer(v6, v7);
  OUTLINED_FUNCTION_80_3();
  v9 = *(v8 + 16);

  return v9(a3);
}

uint64_t sub_19348B3C4()
{
  OUTLINED_FUNCTION_62_2();
  sub_1934907DC();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19348B428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_98_1(a1);
  if (!v4)
  {
    swift_once();
  }

  sub_19393BF10();
  OUTLINED_FUNCTION_104_2();
  v7 = __swift_project_value_buffer(v5, v6);
  OUTLINED_FUNCTION_52_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_80_3();
  return (*(v8 + 16))(a2, v7, v2);
}

unint64_t sub_19348B4BC()
{
  v0 = sub_193490E70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = OUTLINED_FUNCTION_36_2(v1);
  }

  v3 = sub_193490C74();
  *(v0 + 2) = v2 + 1;
  v4 = &v0[16 * v2];
  *(v4 + 4) = &type metadata for Library.Databases.ApplePay.Security.Features.AlarmActivitiesMatView;
  *(v4 + 5) = v3;
  v5 = *(v0 + 3);
  if ((v2 + 2) > (v5 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v5);
  }

  v6 = sub_193490C20();
  *(v0 + 2) = v2 + 2;
  OUTLINED_FUNCTION_50_4(v6, &type metadata for Library.Databases.ApplePay.Security.Features.AppOpeningsMatView);
  if ((v2 + 3) > (v7 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v7);
  }

  v8 = sub_193490BCC();
  *(v0 + 2) = v2 + 3;
  OUTLINED_FUNCTION_56_1(v8, &type metadata for Library.Databases.ApplePay.Security.Features.AppOpeningsRawMatView);
  if ((v2 + 4) > (v9 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v9);
  }

  v10 = sub_193490B78();
  *(v0 + 2) = v2 + 4;
  OUTLINED_FUNCTION_50_4(v10, &type metadata for Library.Databases.ApplePay.Security.Features.AudioRouteMatView);
  if ((v2 + 5) > (v11 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v11);
  }

  v12 = sub_193490B24();
  *(v0 + 2) = v2 + 5;
  OUTLINED_FUNCTION_56_1(v12, &type metadata for Library.Databases.ApplePay.Security.Features.BacklightMatView);
  if ((v2 + 6) > (v13 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v13);
  }

  v14 = sub_193490AD0();
  *(v0 + 2) = v2 + 6;
  OUTLINED_FUNCTION_50_4(v14, &type metadata for Library.Databases.ApplePay.Security.Features.BacklightRawMatView);
  if ((v2 + 7) > (v15 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v15);
  }

  v16 = sub_193490A7C();
  *(v0 + 2) = v2 + 7;
  OUTLINED_FUNCTION_56_1(v16, &type metadata for Library.Databases.ApplePay.Security.Features.ButtonClickMatView);
  if ((v2 + 8) > (v17 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v17);
  }

  v18 = sub_193490A28();
  *(v0 + 2) = v2 + 8;
  OUTLINED_FUNCTION_50_4(v18, &type metadata for Library.Databases.ApplePay.Security.Features.CarPlayMatView);
  if ((v2 + 9) > (v19 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v19);
  }

  v20 = sub_1934909D4();
  *(v0 + 2) = v2 + 9;
  OUTLINED_FUNCTION_56_1(v20, &type metadata for Library.Databases.ApplePay.Security.Features.LastCallMatView);
  if ((v2 + 10) > (v21 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v21);
  }

  v22 = sub_193490980();
  *(v0 + 2) = v2 + 10;
  OUTLINED_FUNCTION_50_4(v22, &type metadata for Library.Databases.ApplePay.Security.Features.LastScreenShareMatView);
  if ((v2 + 11) > (v23 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v23);
  }

  v24 = sub_19349092C();
  *(v0 + 2) = v2 + 11;
  OUTLINED_FUNCTION_56_1(v24, &type metadata for Library.Databases.ApplePay.Security.Features.LocationHashedCoordinatesMatView);
  if ((v2 + 12) > (v25 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v25);
  }

  v26 = sub_1934908D8();
  *(v0 + 2) = v2 + 12;
  OUTLINED_FUNCTION_50_4(v26, &type metadata for Library.Databases.ApplePay.Security.Features.MinBatteryMatView);
  if ((v2 + 13) > (v27 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v27);
  }

  v28 = sub_193490884();
  *(v0 + 2) = v2 + 13;
  OUTLINED_FUNCTION_56_1(v28, &type metadata for Library.Databases.ApplePay.Security.Features.PluginMatView);
  v30 = v2 + 14;
  if ((v2 + 14) > (v29 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v29);
  }

  v31 = sub_193490830();
  *(v0 + 2) = v30;
  OUTLINED_FUNCTION_50_4(v31, &type metadata for Library.Databases.ApplePay.Security.Features.PluginRawMatView);
  if ((v2 + 15) > (v32 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v32);
  }

  result = sub_1934907DC();
  *(v0 + 2) = v2 + 15;
  v34 = &v0[16 * v30];
  *(v34 + 4) = &type metadata for Library.Databases.ApplePay.Security.Features.ScreenShareMatView;
  *(v34 + 5) = result;
  qword_1ED50F988 = v0;
  return result;
}

void sub_19348B800()
{
  OUTLINED_FUNCTION_117();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_70_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_53_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_43_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_12_5();
  __swift_allocate_value_buffer(v23, qword_1ED50FE10);
  __swift_project_value_buffer(v23, qword_1ED50FE10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v24 = OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_30(v24);
  v73 = *(v25 + 72);
  *(OUTLINED_FUNCTION_78_3() + 16) = xmmword_19394FBB0;
  v26 = *MEMORY[0x1E698F190];
  v74 = *(v19 + 104);
  v27 = OUTLINED_FUNCTION_76_2();
  v28(v27);
  v72 = sub_19393BF40();
  v29 = OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_63_0(v29, v30, v31, v32);
  v71 = sub_19393BEF0();
  v33 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_63_0(v37, v38, v39, v40);
  v41 = sub_19393BEB0();
  v42 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  OUTLINED_FUNCTION_1_16();
  sub_19393BF20();
  v70 = *MEMORY[0x1E698F1A0];
  v45 = OUTLINED_FUNCTION_76_2();
  v74(v45);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v72);
  v49 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v71);
  v52 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v23);
  v55 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v41);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_2(18);
  OUTLINED_FUNCTION_91_1();
  (v74)(v0, v70, v17);
  v58 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v72);
  v61 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v71);
  v64 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v23);
  v67 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v41);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.AlarmActivitiesMatView.metadata.modify()
{
  if (qword_1ED50F990 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FE10);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348BCE8()
{
  OUTLINED_FUNCTION_117();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  v109 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_43_0();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v102 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_1_0();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_12_5();
  __swift_allocate_value_buffer(v29, qword_1ED50FE28);
  v30 = v29;
  v31 = __swift_project_value_buffer(v29, qword_1ED50FE28);
  v112 = "AlarmActivitiesMatView";
  v113 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v32 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v32);
  v118 = *(v33 + 72);
  OUTLINED_FUNCTION_54();
  v34 = OUTLINED_FUNCTION_95_1();
  v111 = v34;
  *(v34 + 16) = xmmword_19394FBC0;
  v35 = v34 + v29;
  v36 = *MEMORY[0x1E698F190];
  v37 = *(v25 + 104);
  v115 = v25 + 104;
  v116 = v23;
  v38 = OUTLINED_FUNCTION_76_2();
  v37(v38);
  v117 = sub_19393BF40();
  v39 = OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_63_0(v39, v40, v41, v42);
  v108 = sub_19393BEF0();
  v43 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  v47 = v12;
  v48 = OUTLINED_FUNCTION_19_6();
  v107 = v30;
  OUTLINED_FUNCTION_63_0(v48, v49, v50, v30);
  v114 = sub_19393BEB0();
  v51 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  OUTLINED_FUNCTION_14_3();
  v110 = v35;
  OUTLINED_FUNCTION_52_7();
  v55 = v1;
  v103 = v0;
  v102[0] = v18;
  sub_19393BF20();
  v56 = *MEMORY[0x1E698F198];
  v106 = v37;
  (v37)(v1, v56, v23);
  v57 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v117);
  v60 = OUTLINED_FUNCTION_20_1();
  v61 = v108;
  __swift_storeEnumTagSinglePayload(v60, v62, v63, v108);
  v102[1] = v47;
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  v68 = OUTLINED_FUNCTION_35_0();
  v69 = v114;
  __swift_storeEnumTagSinglePayload(v68, v70, v71, v114);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_101_2();
  v72 = v118;
  OUTLINED_FUNCTION_52_7();
  v104 = v55;
  OUTLINED_FUNCTION_92_0();
  v105 = v35 + 2 * v72;
  v73 = *MEMORY[0x1E698F1A0];
  (v37)(v55, v73, v116);
  OUTLINED_FUNCTION_45();
  v74 = v117;
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v117);
  v78 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v61);
  v81 = OUTLINED_FUNCTION_15_7();
  v82 = v107;
  __swift_storeEnumTagSinglePayload(v81, v83, v84, v107);
  v85 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v69);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_99_1();
  v88 = v104;
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_92_0();
  v106(v88, v73, v116);
  v89 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v74);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
  v96 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v82);
  v99 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v114);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_44_4(18);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.AppOpeningsMatView.metadata.modify()
{
  if (qword_1ED50F998 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FE28);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348C288()
{
  OUTLINED_FUNCTION_117();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_37_3(v4, v94[0]);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_43_0();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_14();
  v19 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_19393BF10();
  __swift_allocate_value_buffer(v27, qword_1ED50FE40);
  v28 = __swift_project_value_buffer(v27, qword_1ED50FE40);
  v102 = "AppOpeningsMatView";
  v103 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v29 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v29);
  v109 = *(v30 + 72);
  OUTLINED_FUNCTION_54();
  v31 = OUTLINED_FUNCTION_95_1();
  v101 = v31;
  *(v31 + 16) = xmmword_19394FBC0;
  v32 = v31 + v27;
  v33 = *MEMORY[0x1E698F198];
  v107 = *(v21 + 104);
  v108 = v21 + 104;
  v97 = v19;
  v107(v26, v33, v19);
  v34 = sub_19393BF40();
  v35 = OUTLINED_FUNCTION_28_0();
  v99 = v34;
  OUTLINED_FUNCTION_63_0(v35, v36, v37, v34);
  v38 = sub_19393BEF0();
  v39 = OUTLINED_FUNCTION_39_4();
  v98 = v38;
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  v104 = v10;
  v42 = OUTLINED_FUNCTION_20_1();
  v96 = v27;
  OUTLINED_FUNCTION_63_0(v42, v43, v44, v27);
  v106 = sub_19393BEB0();
  v45 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_101_2();
  v100 = v32;
  OUTLINED_FUNCTION_52_7();
  v105 = v26;
  sub_19393BF20();
  v49 = v107;
  v107(v26, *MEMORY[0x1E698F188], v19);
  v50 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v34);
  v53 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v38);
  v56 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v27);
  v59 = OUTLINED_FUNCTION_16();
  v60 = v106;
  __swift_storeEnumTagSinglePayload(v59, v61, v62, v106);
  OUTLINED_FUNCTION_14_3();
  v63 = v109;
  OUTLINED_FUNCTION_52_7();
  v64 = v105;
  sub_19393BF20();
  v94[1] = v32 + 2 * v63;
  v95 = *MEMORY[0x1E698F1A0];
  v65 = v97;
  v49(v64);
  OUTLINED_FUNCTION_45();
  v66 = v99;
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v99);
  v70 = OUTLINED_FUNCTION_35_0();
  v71 = v98;
  __swift_storeEnumTagSinglePayload(v70, v72, v73, v98);
  v74 = OUTLINED_FUNCTION_15_7();
  v75 = v96;
  __swift_storeEnumTagSinglePayload(v74, v76, v77, v96);
  v78 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v60);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_52_7();
  v81 = v105;
  OUTLINED_FUNCTION_106_3();
  v109 *= 3;
  v107(v81, v95, v65);
  v82 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v66);
  v85 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v71);
  v88 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v75);
  v91 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v106);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_44_4(21);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.AppOpeningsRawMatView.metadata.modify()
{
  if (qword_1ED50F9A0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FE40);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348C83C()
{
  OUTLINED_FUNCTION_117();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_37_3(v5, v98);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_43_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_12_5();
  __swift_allocate_value_buffer(v24, qword_1ED50FE58);
  __swift_project_value_buffer(v24, qword_1ED50FE58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v25 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v25);
  v100 = *(v26 + 72);
  OUTLINED_FUNCTION_54();
  *(OUTLINED_FUNCTION_93_0() + 16) = xmmword_19394FBD0;
  v27 = *MEMORY[0x1E698F190];
  v28 = *(v20 + 104);
  v29 = OUTLINED_FUNCTION_76_2();
  v30(v29);
  v101 = sub_19393BF40();
  v31 = OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_63_0(v31, v32, v33, v34);
  v35 = sub_19393BEF0();
  v36 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  v39 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_63_0(v39, v40, v41, v24);
  v42 = sub_19393BEB0();
  v43 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_92_0();
  v99 = *MEMORY[0x1E698F1A0];
  v28(v0);
  v46 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v101);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v53 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v24);
  v56 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v42);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_97_0();
  (v28)(v0, v99, v18);
  v59 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v101);
  v62 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v35);
  v65 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v24);
  v68 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v42);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_97_0();
  (v28)(v0, v99, v18);
  v71 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v101);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  v78 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v24);
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_2(17);
  OUTLINED_FUNCTION_105_3();
  (v28)(v0, v99, v18);
  v85 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v101);
  v88 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v35);
  v91 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v24);
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_44_4(17);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.AudioRouteMatView.metadata.modify()
{
  if (qword_1ED50F9A8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FE58);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348CE5C()
{
  OUTLINED_FUNCTION_117();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_37_3(v6, v56);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_55_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_49_3();
  sub_19393BEC0();
  OUTLINED_FUNCTION_75_5();
  v58 = v19;
  OUTLINED_FUNCTION_1_0();
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_12_5();
  __swift_allocate_value_buffer(v23, qword_1ED50FE70);
  OUTLINED_FUNCTION_89_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v24 = OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_30(v24);
  v59 = *(v25 + 72);
  v60 = OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_77_5(v60, xmmword_19394FBE0);
  v26 = *MEMORY[0x1E698F190];
  v27 = OUTLINED_FUNCTION_67_4();
  v0(v27);
  v28 = sub_19393BF40();
  v29 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_63_0(v29, v30, v31, v28);
  v32 = sub_19393BEF0();
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_63_0(v37, v38, v39, v23);
  v40 = sub_19393BEB0();
  v41 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_60_5();
  (v0)(v1, *MEMORY[0x1E698F1A0], v58);
  v44 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v28);
  v47 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v32);
  v50 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v57);
  v53 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v40);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_100_4();
  OUTLINED_FUNCTION_44_4(16);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.BacklightMatView.metadata.modify()
{
  if (qword_1ED50F9B0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FE70);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348D238()
{
  OUTLINED_FUNCTION_117();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_37_3(v6, v56);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_55_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_49_3();
  sub_19393BEC0();
  OUTLINED_FUNCTION_75_5();
  v58 = v19;
  OUTLINED_FUNCTION_1_0();
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_12_5();
  __swift_allocate_value_buffer(v23, qword_1ED50FE88);
  OUTLINED_FUNCTION_89_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v24 = OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_30(v24);
  v59 = *(v25 + 72);
  v60 = OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_77_5(v60, xmmword_19394FBE0);
  v26 = *MEMORY[0x1E698F188];
  v27 = OUTLINED_FUNCTION_67_4();
  v0(v27);
  v28 = sub_19393BF40();
  v29 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_63_0(v29, v30, v31, v28);
  v32 = sub_19393BEF0();
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_63_0(v37, v38, v39, v23);
  v40 = sub_19393BEB0();
  v41 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_60_5();
  (v0)(v1, *MEMORY[0x1E698F1A0], v58);
  v44 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v28);
  v47 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v32);
  v50 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v57);
  v53 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v40);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_100_4();
  OUTLINED_FUNCTION_44_4(19);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.BacklightRawMatView.metadata.modify()
{
  if (qword_1ED50F9B8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FE88);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348D620()
{
  OUTLINED_FUNCTION_117();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_103_2(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_43_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_43_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_12_5();
  __swift_allocate_value_buffer(v24, qword_1ED50FEA0);
  __swift_project_value_buffer(v24, qword_1ED50FEA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v25 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v25);
  v71 = *(v26 + 72);
  OUTLINED_FUNCTION_54();
  *(OUTLINED_FUNCTION_93_0() + 16) = xmmword_19394FBB0;
  v27 = *MEMORY[0x1E698F190];
  v70 = *(v20 + 104);
  v28 = OUTLINED_FUNCTION_76_2();
  v29(v28);
  v72 = sub_19393BF40();
  v30 = OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_63_0(v30, v31, v32, v33);
  v73 = sub_19393BEF0();
  v34 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v38 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_63_0(v38, v39, v40, v24);
  v69 = sub_19393BEB0();
  v41 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_92_0();
  v70(v0, *MEMORY[0x1E698F1A0], v18);
  v45 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v72);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v73);
  v51 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v24);
  v54 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v69);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_2(16);
  sub_19393BF20();
  v70(v0, *MEMORY[0x1E698F198], v18);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v72);
  v60 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v73);
  v63 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v24);
  v66 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  sub_19393BF20();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.ButtonClickMatView.metadata.modify()
{
  if (qword_1ED50F9C0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FEA0);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348DB14()
{
  OUTLINED_FUNCTION_117();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_37_3(v6, v57);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_55_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_49_3();
  sub_19393BEC0();
  OUTLINED_FUNCTION_75_5();
  v59 = v19;
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_12_5();
  __swift_allocate_value_buffer(v25, qword_1ED50FEB8);
  OUTLINED_FUNCTION_89_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v26 = OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_30(v26);
  v60 = *(v27 + 72);
  v61 = OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_77_5(v61, xmmword_19394FBE0);
  v28 = *(v21 + 104);
  v28(v0, *MEMORY[0x1E698F190], v1);
  v29 = sub_19393BF40();
  v30 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_63_0(v30, v31, v32, v29);
  sub_19393BEF0();
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_63_0(v37, v38, v39, v25);
  v40 = sub_19393BEB0();
  v41 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_96_5();
  v28(v0, *MEMORY[0x1E698F1A0], v59);
  v44 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v29);
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  v51 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v58);
  v54 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v40);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.CarPlayMatView.metadata.modify()
{
  if (qword_1ED50F9C8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FEB8);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348DF00()
{
  OUTLINED_FUNCTION_117();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_55_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_3();
  sub_19393BEC0();
  OUTLINED_FUNCTION_75_5();
  v57 = v18;
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_12_5();
  __swift_allocate_value_buffer(v24, qword_1ED50FED0);
  v56 = v24;
  __swift_project_value_buffer(v24, qword_1ED50FED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v25 = OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_30(v25);
  v58 = *(v26 + 72);
  v59 = OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_77_5(v59, xmmword_19394FBE0);
  v27 = *(v20 + 104);
  v27(v0, *MEMORY[0x1E698F1A0], v1);
  v28 = sub_19393BF40();
  v29 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_63_0(v29, v30, v31, v28);
  v32 = sub_19393BEF0();
  v33 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_63_0(v36, v37, v38, v39);
  v40 = sub_19393BEB0();
  v41 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_96_5();
  v27(v0, *MEMORY[0x1E698F188], v57);
  v44 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v28);
  v47 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v32);
  v50 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v56);
  v53 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v40);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_83_3();
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.LastCallMatView.metadata.modify()
{
  if (qword_1ED50F9D0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FED0);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348E300()
{
  OUTLINED_FUNCTION_117();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_53_1();
  v90 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53_1();
  v89 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_49_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v79 - v19;
  v20 = sub_19393BEC0();
  v86 = v20;
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_19393BF10();
  __swift_allocate_value_buffer(v28, qword_1ED50FEE8);
  v29 = __swift_project_value_buffer(v28, qword_1ED50FEE8);
  v92 = "ButtonClickMatView";
  v93 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v30 = OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_30(v30);
  v88 = *(v31 + 72);
  v32 = OUTLINED_FUNCTION_78_3();
  v91 = v32;
  *(v32 + 16) = xmmword_19394FBB0;
  v82 = v32 + v0;
  v33 = *MEMORY[0x1E698F1A0];
  v87 = *(v22 + 104);
  v94 = v22 + 104;
  v87(v27, v33, v20);
  v34 = sub_19393BF40();
  OUTLINED_FUNCTION_27_6();
  v85 = v34;
  OUTLINED_FUNCTION_63_0(v35, v36, v37, v38);
  v39 = sub_19393BEF0();
  v40 = OUTLINED_FUNCTION_16();
  v83 = v39;
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  v43 = OUTLINED_FUNCTION_19_6();
  v84 = v28;
  OUTLINED_FUNCTION_63_0(v43, v44, v45, v28);
  v46 = sub_19393BEB0();
  v47 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  v80 = v27;
  OUTLINED_FUNCTION_60_5();
  v50 = v33;
  v52 = v86;
  v51 = v87;
  v87(v27, v50, v86);
  v53 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v34);
  v56 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v39);
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  v63 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v46);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_32_8();
  v66 = v80;
  OUTLINED_FUNCTION_60_5();
  v51(v66, *MEMORY[0x1E698F188], v52);
  v67 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v85);
  v70 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v83);
  v73 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v84);
  v76 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v46);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_51_2(18);
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.LastScreenShareMatView.metadata.modify()
{
  if (qword_1ED50F9D8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FEE8);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348E7FC()
{
  OUTLINED_FUNCTION_117();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_70_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_37_3(v10, v116);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_43_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v116 - v19;
  v20 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v26 = OUTLINED_FUNCTION_12_5();
  __swift_allocate_value_buffer(v26, qword_1ED50FF00);
  v27 = __swift_project_value_buffer(v26, qword_1ED50FF00);
  v121 = "LastScreenShareMatView";
  v122 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v28 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v28);
  v132 = *(v29 + 72);
  OUTLINED_FUNCTION_54();
  v30 = OUTLINED_FUNCTION_93_0();
  v120 = v30;
  *(v30 + 16) = xmmword_19394FBD0;
  v131 = v30 + v26;
  v31 = *MEMORY[0x1E698F190];
  v130 = *(v22 + 104);
  v125 = v20;
  v130(v1, v31, v20);
  v127 = v22 + 104;
  v129 = sub_19393BF40();
  v32 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_63_0(v32, v33, v34, v35);
  v36 = sub_19393BEF0();
  v37 = OUTLINED_FUNCTION_15_7();
  v126 = v36;
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
  v40 = v134;
  v41 = OUTLINED_FUNCTION_28_0();
  v133 = v26;
  OUTLINED_FUNCTION_63_0(v41, v42, v43, v26);
  v128 = sub_19393BEB0();
  v123 = v0;
  v44 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  OUTLINED_FUNCTION_88();
  v48 = v40;
  OUTLINED_FUNCTION_1_16();
  v49 = v1;
  OUTLINED_FUNCTION_92_0();
  v118 = "01-b3c2-6dec692bd895";
  v124 = *MEMORY[0x1E698F1A0];
  v50 = v1;
  v51 = v130;
  (v130)(v50);
  v52 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v129);
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  v59 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v26);
  v62 = v123;
  v63 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v128);
  v117 = v48;
  v118 = v62;
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_52_7();
  v117 = v49;
  OUTLINED_FUNCTION_97_0();
  v116 = "locationHashAt300Meters";
  v66 = v49;
  v67 = v124;
  v68 = v125;
  v51(v66, v124, v125);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  v73 = OUTLINED_FUNCTION_19_6();
  v74 = v126;
  __swift_storeEnumTagSinglePayload(v73, v75, v76, v126);
  v77 = v134;
  v78 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  v82 = v123;
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
  v117 = v77;
  v118 = v82;
  OUTLINED_FUNCTION_14_3();
  v87 = v117;
  OUTLINED_FUNCTION_52_7();
  sub_19393BF20();
  v116 = "locationHashAt2500Meters";
  v51(v87, v67, v68);
  v88 = OUTLINED_FUNCTION_39_4();
  v89 = v129;
  __swift_storeEnumTagSinglePayload(v88, v90, v91, v129);
  v92 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v74);
  v95 = v134;
  v96 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
  v100 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v128);
  v117 = v95;
  v118 = v82;
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_91_1();
  v130(v87, v124, v125);
  v103 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v89);
  v106 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v126);
  v109 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v133);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
  v117 = v95;
  v118 = v82;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_51_2(17);
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.LocationHashedCoordinatesMatView.metadata.modify()
{
  if (qword_1ED50F9E0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FF00);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348EE6C()
{
  OUTLINED_FUNCTION_117();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_53_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_53_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_70_1();
  v57 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_12_5();
  __swift_allocate_value_buffer(v22, qword_1ED50FF18);
  __swift_project_value_buffer(v22, qword_1ED50FF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v23 = OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_30(v23);
  v58 = *(v24 + 72);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_19394FBE0;
  v27 = *MEMORY[0x1E698F190];
  v28 = *(v18 + 104);
  v28(v0, v27, v57);
  v29 = sub_19393BF40();
  v30 = OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_63_0(v30, v31, v32, v29);
  sub_19393BEF0();
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_63_0(v37, v38, v39, v22);
  v40 = sub_19393BEB0();
  v41 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_97_0();
  v28(v0, v27, v57);
  v44 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v29);
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  v51 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v22);
  v54 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v40);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_44_4(17);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.MinBatteryMatView.metadata.modify()
{
  if (qword_1ED50F9E8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FF18);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348F2BC()
{
  OUTLINED_FUNCTION_117();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_103_2(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_55_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_49_3();
  sub_19393BEC0();
  OUTLINED_FUNCTION_75_5();
  v56 = v19;
  OUTLINED_FUNCTION_1_0();
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_12_5();
  __swift_allocate_value_buffer(v23, qword_1ED50FF30);
  __swift_project_value_buffer(v23, qword_1ED50FF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v24 = OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_30(v24);
  v57 = *(v25 + 72);
  v58 = OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_77_5(v58, xmmword_19394FBE0);
  v26 = *MEMORY[0x1E698F190];
  v27 = OUTLINED_FUNCTION_67_4();
  v0(v27);
  v28 = sub_19393BF40();
  v29 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_63_0(v29, v30, v31, v28);
  v32 = sub_19393BEF0();
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_63_0(v37, v38, v39, v23);
  v40 = sub_19393BEB0();
  v41 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_60_5();
  (v0)(v1, *MEMORY[0x1E698F1A0], v56);
  v44 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v28);
  v47 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v32);
  v50 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v23);
  v53 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v40);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.PluginMatView.metadata.modify()
{
  if (qword_1ED50F9F0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FF30);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348F6AC()
{
  OUTLINED_FUNCTION_117();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_103_2(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_43_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_55_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_49_3();
  sub_19393BEC0();
  OUTLINED_FUNCTION_75_5();
  v56 = v19;
  OUTLINED_FUNCTION_1_0();
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_12_5();
  __swift_allocate_value_buffer(v23, qword_1ED50FF48);
  v55 = v23;
  __swift_project_value_buffer(v23, qword_1ED50FF48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v24 = OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_30(v24);
  v57 = *(v25 + 72);
  v58 = OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_77_5(v58, xmmword_19394FBE0);
  v26 = *MEMORY[0x1E698F188];
  v27 = OUTLINED_FUNCTION_67_4();
  v0(v27);
  v28 = sub_19393BF40();
  v29 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_63_0(v29, v30, v31, v28);
  v32 = sub_19393BEF0();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  v36 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_63_0(v36, v37, v38, v23);
  v39 = sub_19393BEB0();
  v40 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_60_5();
  (v0)(v1, *MEMORY[0x1E698F1A0], v56);
  v43 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v28);
  v46 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v32);
  v49 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v55);
  v52 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v39);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_44_4(16);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.ApplePay.Security.Features.PluginRawMatView.metadata.modify()
{
  if (qword_1ED50F9F8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FF48);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19348FAA0()
{
  OUTLINED_FUNCTION_117();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_70_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_103_2(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_12_5();
  __swift_allocate_value_buffer(v24, qword_1ED50FF60);
  __swift_project_value_buffer(v24, qword_1ED50FF60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v25 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v25);
  v84 = *(v26 + 72);
  OUTLINED_FUNCTION_54();
  *(OUTLINED_FUNCTION_95_1() + 16) = xmmword_19394FBC0;
  v83 = *(v20 + 104);
  (v83)(v0, *MEMORY[0x1E698F190], v18);
  v82 = sub_19393BF40();
  v27 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_63_0(v27, v28, v29, v30);
  v81 = sub_19393BEF0();
  v31 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v35 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_63_0(v35, v36, v37, v24);
  v80 = sub_19393BEB0();
  v38 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_96_5();
  v79 = *MEMORY[0x1E698F1A0];
  v42 = OUTLINED_FUNCTION_76_2();
  v83(v42);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v82);
  v46 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v81);
  v49 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v24);
  v52 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v80);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_96_5();
  (v83)(v0, v79, v18);
  v55 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v82);
  v58 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v81);
  v61 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v24);
  v64 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v80);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_96_5();
  (v83)(v0, v79, v18);
  v67 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v82);
  v70 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v81);
  v73 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v24);
  v76 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v80);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_96_5();
  OUTLINED_FUNCTION_44_4(18);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t sub_19348FFA0(uint64_t a1, void *a2)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_19393BF10();
  OUTLINED_FUNCTION_104_2();
  v6 = __swift_project_value_buffer(v4, v5);
  swift_beginAccess();
  v7 = *(v2 - 8);
  (*(v7 + 24))(v6, a1, v2);
  swift_endAccess();
  return (*(v7 + 8))(a1, v2);
}

uint64_t static Library.Databases.ApplePay.Security.Features.ScreenShareMatView.metadata.modify()
{
  if (qword_1ED50FA00 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED50FF60);
  return OUTLINED_FUNCTION_64_0();
}

unint64_t sub_1934900FC()
{
  result = qword_1ED502AA0;
  if (!qword_1ED502AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AA0);
  }

  return result;
}

unint64_t sub_193490154()
{
  result = qword_1ED502A10;
  if (!qword_1ED502A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A10);
  }

  return result;
}

unint64_t sub_1934901AC()
{
  result = qword_1ED502AA8;
  if (!qword_1ED502AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AA8);
  }

  return result;
}

unint64_t sub_193490204()
{
  result = qword_1ED502A20;
  if (!qword_1ED502A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A20);
  }

  return result;
}

unint64_t sub_19349025C()
{
  result = qword_1ED502A30;
  if (!qword_1ED502A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A30);
  }

  return result;
}

unint64_t sub_1934902B4()
{
  result = qword_1ED5029F8;
  if (!qword_1ED5029F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5029F8);
  }

  return result;
}

unint64_t sub_19349030C()
{
  result = qword_1ED502A08;
  if (!qword_1ED502A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A08);
  }

  return result;
}

unint64_t sub_193490364()
{
  result = qword_1ED502A40;
  if (!qword_1ED502A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A40);
  }

  return result;
}

unint64_t sub_1934903BC()
{
  result = qword_1ED502A38;
  if (!qword_1ED502A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A38);
  }

  return result;
}

unint64_t sub_193490414()
{
  result = qword_1ED5029F0;
  if (!qword_1ED5029F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5029F0);
  }

  return result;
}

unint64_t sub_19349046C()
{
  result = qword_1ED5029E8;
  if (!qword_1ED5029E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5029E8);
  }

  return result;
}

unint64_t sub_1934904C4()
{
  result = qword_1ED502A18;
  if (!qword_1ED502A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A18);
  }

  return result;
}

unint64_t sub_19349051C()
{
  result = qword_1ED502A48;
  if (!qword_1ED502A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A48);
  }

  return result;
}

unint64_t sub_193490574()
{
  result = qword_1ED502A28;
  if (!qword_1ED502A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A28);
  }

  return result;
}

unint64_t sub_1934905CC()
{
  result = qword_1ED502A00;
  if (!qword_1ED502A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A00);
  }

  return result;
}

unint64_t sub_193490624()
{
  result = qword_1ED502BD8;
  if (!qword_1ED502BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502BD8);
  }

  return result;
}

_BYTE *_s8FeaturesO13PluginMatViewOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1934907DC()
{
  result = qword_1ED502AE8;
  if (!qword_1ED502AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AE8);
  }

  return result;
}

unint64_t sub_193490830()
{
  result = qword_1ED502B10;
  if (!qword_1ED502B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B10);
  }

  return result;
}

unint64_t sub_193490884()
{
  result = qword_1ED502B30;
  if (!qword_1ED502B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B30);
  }

  return result;
}

unint64_t sub_1934908D8()
{
  result = qword_1ED502B00;
  if (!qword_1ED502B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B00);
  }

  return result;
}

unint64_t sub_19349092C()
{
  result = qword_1ED502AD0;
  if (!qword_1ED502AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AD0);
  }

  return result;
}

unint64_t sub_193490980()
{
  result = qword_1ED502AD8;
  if (!qword_1ED502AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AD8);
  }

  return result;
}

unint64_t sub_1934909D4()
{
  result = qword_1ED502B20;
  if (!qword_1ED502B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B20);
  }

  return result;
}

unint64_t sub_193490A28()
{
  result = qword_1ED502B28;
  if (!qword_1ED502B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B28);
  }

  return result;
}

unint64_t sub_193490A7C()
{
  result = qword_1ED502AF0;
  if (!qword_1ED502AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AF0);
  }

  return result;
}

unint64_t sub_193490AD0()
{
  result = qword_1ED502BA0;
  if (!qword_1ED502BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502BA0);
  }

  return result;
}

unint64_t sub_193490B24()
{
  result = qword_1ED502B18;
  if (!qword_1ED502B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B18);
  }

  return result;
}

unint64_t sub_193490B78()
{
  result = qword_1ED502B08;
  if (!qword_1ED502B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B08);
  }

  return result;
}

unint64_t sub_193490BCC()
{
  result = qword_1ED502B98;
  if (!qword_1ED502B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B98);
  }

  return result;
}

unint64_t sub_193490C20()
{
  result = qword_1ED502AF8;
  if (!qword_1ED502AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AF8);
  }

  return result;
}

unint64_t sub_193490C74()
{
  result = qword_1ED502AE0;
  if (!qword_1ED502AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AE0);
  }

  return result;
}

char *sub_193490E70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF0, &unk_19396E3A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t OUTLINED_FUNCTION_60_5()
{

  return sub_19393BF20();
}

uint64_t sub_193491328(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE15928](a1, WitnessTable);
}

void sub_19349140C(uint64_t a1@<X8>)
{
  sub_1934913B0();
  *a1 = v2;
  *(a1 + 8) = 0;
}

void sub_193491444(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1934913B0();
  *a2 = v4;
  *(a2 + 8) = 0;
}

uint64_t sub_19349149C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_6();
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1934914F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE15710](a1, a2, WitnessTable);
}

uint64_t sub_193491558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_6();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1934915CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19349163C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *_s8ApplePayOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s7StreamsOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934917D0()
{
  OUTLINED_FUNCTION_91_0();
  v2 = v1 == 0x4E746E656D676573 && v0 == 0xEB00000000656D61;
  if (v2 || (sub_19393CA30() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x74657366666FLL && v0 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_19393CA30();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_193491894(char a1)
{
  if (a1)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 0x4E746E656D676573;
  }
}

uint64_t sub_1934918D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1934917D0();
  *a1 = result;
  return result;
}

uint64_t sub_19349190C()
{
  sub_193491AD4();
  v0 = OUTLINED_FUNCTION_31_8();

  return MEMORY[0x1EEE6BB70](v0);
}

uint64_t sub_193491944()
{
  sub_193491AD4();
  v0 = OUTLINED_FUNCTION_31_8();

  return MEMORY[0x1EEE6BB78](v0);
}

void sub_19349197C()
{
  OUTLINED_FUNCTION_26();
  v13[1] = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB20, &qword_193950B40);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_193491AD4();
  sub_19393CB50();
  sub_19393C9F0();
  if (!v0)
  {
    sub_19393CA00();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_27();
}

unint64_t sub_193491AD4()
{
  result = qword_1EAE46870;
  if (!qword_1EAE46870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE46870);
  }

  return result;
}

uint64_t sub_193491B28(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB28, &qword_193950B48);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_193491AD4();
  sub_19393CB40();
  if (!v1)
  {
    v7 = sub_19393C9D0();
    sub_19393C9E0();
    v9 = OUTLINED_FUNCTION_18_10();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_193491CD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_193491B28(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_193491D08()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_19349197C();
}

double static StreamResource.publisher(useCase:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(a2 + 32))(a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_22_10();
  sub_1934763E8(v4, v5, v6, v7, 0, v8);
  v9 = type metadata accessor for _Publisher();
  *(a3 + 32) = OUTLINED_FUNCTION_2_19(v9);
  OUTLINED_FUNCTION_28_1();
  v10 = swift_allocObject();
  *&result = OUTLINED_FUNCTION_4_14(v10, v11, v12, v13, v14, v15, v16, v17, v20, v18, v21, v22).n128_u64[0];
  return result;
}

double static StreamResource.publisher(useCase:bmOptions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(a5 + 32))(a4, a5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = a3;

  v11 = OUTLINED_FUNCTION_12_6();
  sub_1934763E8(v11, a1, a2, v12, a3, v13);
  OUTLINED_FUNCTION_34_1();
  v14 = type metadata accessor for _Publisher();
  *(a6 + 32) = OUTLINED_FUNCTION_2_19(v14);
  OUTLINED_FUNCTION_28_1();
  v15 = swift_allocObject();
  *&result = OUTLINED_FUNCTION_4_14(v15, v16, v17, v18, v19, v20, v21, v22, v25, v23, v26, v27).n128_u64[0];
  return result;
}

uint64_t static StreamResource.source(user:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_19343CF40(a2, a3);
  v9 = [v8 sourceWithUser_];

  v10 = nullsub_1(v9, a2, a3);
  a4[3] = type metadata accessor for _Source();
  result = swift_getWitnessTable();
  a4[4] = result;
  *a4 = v10;
  return result;
}

double static StreamResource.publisher(useCase:user:bmOptions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = (*(a6 + 32))(a5, a6);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = a4;

  LOBYTE(v25) = 0;
  sub_1934763E8(v11, a1, a2, a3, a4, &v25);
  v13 = type metadata accessor for _Publisher();
  *(a7 + 32) = OUTLINED_FUNCTION_2_19(v13);
  OUTLINED_FUNCTION_28_1();
  v14 = swift_allocObject();
  *&result = OUTLINED_FUNCTION_4_14(v14, v15, v16, v17, v18, v19, v20, v21, a1, v22, v25, v26).n128_u64[0];
  return result;
}

void static StreamResource._liveUpdates(useCase:scheduler:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  v11 = sub_19393C770();
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v17 - v15;
  v17[2] = v4;
  v17[3] = v2;
  v18 = v0;
  v19 = v10;
  v20 = v8;
  v21 = v6;
  swift_checkMetadataState();
  sub_193492B3C(v16);
  sub_19393C7B0();
  OUTLINED_FUNCTION_116();
}

void sub_193492298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a1;
  v35 = a6;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  v9 = sub_19393C7A0();
  OUTLINED_FUNCTION_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = OUTLINED_FUNCTION_23_10();
  v18 = a7;
  v32 = a7;
  v20 = sub_19343CF40(v17, v19);
  v37 = v20;
  v38 = sub_19393C570();
  v21 = [v20 DSLPublisherWithUseCase_];
  v36 = [v21 subscribeOn_];

  v33 = *(v11 + 16);
  v33(v16, v39, v9);
  v22 = *(v11 + 80);
  v23 = swift_allocObject();
  v24 = v35;
  *(v23 + 16) = v35;
  *(v23 + 24) = v18;
  v25 = *(v11 + 32);
  OUTLINED_FUNCTION_22_10();
  v25();
  v44 = sub_193497114;
  v45 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1934925F4;
  v43 = &block_descriptor_0;
  v34 = _Block_copy(&aBlock);

  v33(v16, v39, v9);
  v26 = swift_allocObject();
  v27 = v32;
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  OUTLINED_FUNCTION_22_10();
  v25();
  v44 = sub_1934972F4;
  v45 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_193492ADC;
  v43 = &block_descriptor_25;
  v28 = _Block_copy(&aBlock);

  v29 = v36;
  v30 = v34;
  v31 = [v36 sinkWithCompletion:v34 receiveInput:v28];
  _Block_release(v28);
  _Block_release(v30);
}

void sub_1934925F4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_19349265C()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  OUTLINED_FUNCTION_35_6();
  v47 = v3;
  v4 = sub_19393C760();
  v5 = OUTLINED_FUNCTION_0(v4);
  v49 = v6;
  v50 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v41 - v10;
  OUTLINED_FUNCTION_35_6();
  v11 = sub_19393C860();
  OUTLINED_FUNCTION_0(v11);
  v45 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  OUTLINED_FUNCTION_1_0();
  v46 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v41 - v26;
  swift_unknownObjectRetain();
  objc_opt_self();
  OUTLINED_FUNCTION_31_8();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = v28;
    v44 = v1;
    v30 = [v28 eventBodyData];
    if (v30)
    {
      v31 = v30;
      v42 = v27;
      v43 = v11;
      v32 = sub_19393BD40();
      v34 = v33;

      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_35_6();
      type metadata accessor for EventWrapper();
      v35 = sub_193492A68(v32, v34, [v29 eventBodyDataVersion]);
      if (v35)
      {
        v36 = v35;
        (*((*MEMORY[0x1E69E7D40] & *v35) + 0xB8))(v29);
        if (__swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness) == 1)
        {
          swift_unknownObjectRelease();
          sub_193446A6C(v32, v34);

          (*(v45 + 8))(v17, v43);
        }

        else
        {
          v38 = v46;
          v39 = v42;
          (*(v46 + 32))(v42, v17, AssociatedTypeWitness);
          (*(v38 + 16))(v24, v39, AssociatedTypeWitness);
          OUTLINED_FUNCTION_35_6();
          sub_19393C7A0();
          v40 = v48;
          sub_19393C780();
          swift_unknownObjectRelease();
          sub_193446A6C(v32, v34);

          (*(v49 + 8))(v40, v50);
          (*(v38 + 8))(v39, AssociatedTypeWitness);
        }

        OUTLINED_FUNCTION_116();
        return;
      }

      sub_193446A6C(v32, v34);
    }
  }

  OUTLINED_FUNCTION_116();

  swift_unknownObjectRelease();
}

uint64_t sub_193492A68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(OUTLINED_FUNCTION_21_7() + 168);
  sub_193450688(v3, a2);

  return v7(v3, a2, a3);
}

uint64_t sub_193492ADC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_193492B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  v3 = sub_19393C770();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_193492C08(int a1)
{
  v3 = qword_1EAE3AB48;
  OUTLINED_FUNCTION_20_4();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_193492CA4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EAE3AB50);
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_19345012C(v6, v7);
}

id sub_193492D98(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = (v3 + qword_1EAE3AB50);
  *(v3 + qword_1EAE3AB50) = xmmword_193950B20;
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = a1;
  v9[1] = a2;
  v12 = OUTLINED_FUNCTION_23_10();
  sub_193450688(v12, v13);
  sub_19345012C(v10, v11);
  *(v3 + qword_1EAE3AB48) = a3;
  v14 = *((v8 & v7) + 0x50);
  v15 = *((v8 & v7) + 0x58);
  v20.receiver = v3;
  v20.super_class = type metadata accessor for EventWrapper();
  v16 = objc_msgSendSuper2(&v20, sel_init);
  v17 = OUTLINED_FUNCTION_23_10();
  sub_193446A6C(v17, v18);
  return v16;
}

id sub_193492E9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  OUTLINED_FUNCTION_21_7();
  v7 = sub_19393BD40();
  v9 = v8;

  swift_getObjCClassMetadata();
  v10 = sub_193492A68(v7, v9, a4);
  sub_193446A6C(v7, v9);

  return v10;
}

void sub_193492F2C()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v8 = v7;
  v9 = sub_19393C450();
  v10 = OUTLINED_FUNCTION_0(v9);
  v72 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v71 = v14 - v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_19393BE00();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_1();
  v26 = v25 - v24;
  (*(v8 + 136))();
  OUTLINED_FUNCTION_29_7();
  if (!v30 & v29)
  {
    sub_19393C440();
    v31 = sub_19393C430();
    v32 = sub_19393C800();
    if (OUTLINED_FUNCTION_25_10(v32))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_7(&dword_193432000, v33, v34, "Unable to unwrap event with nil data");
      OUTLINED_FUNCTION_6_5();
    }

    v35 = OUTLINED_FUNCTION_19_15();
    goto LABEL_11;
  }

  v69 = v27;
  v70 = v28;
  v37 = [v2 bookmark];
  if (!v37)
  {
    sub_19393C440();
    v57 = sub_19393C430();
    v58 = sub_19393C800();
    if (OUTLINED_FUNCTION_25_10(v58))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_7(&dword_193432000, v59, v60, "Unable to unwrap event with nil bookmark");
      OUTLINED_FUNCTION_6_5();
    }

    sub_19345012C(v69, v70);

    v35 = OUTLINED_FUNCTION_33_3();
LABEL_11:
    v36(v35, v9);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, *(v8 + 80));
    goto LABEL_12;
  }

  v38 = v37;
  v63 = v9;
  v68 = v4;
  v39 = *(v8 + 80);
  v40 = dynamic_cast_existential_1_unconditional(v39);
  v65 = v41;
  v42 = v38;
  v43 = [v38 segmentName];
  v44 = sub_19393C580();
  v64 = v45;

  v67 = v42;
  v46 = [v42 offset];
  v66 = &v63;
  OUTLINED_FUNCTION_9_10(v40);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v49);
  v50 = *v0;
  v51 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v53 = (*(v52 + 112))();
  [v2 timestamp];
  sub_19393BD70();
  v73[3] = &type metadata for _StreamBookmark;
  v54 = sub_193495E3C();
  v73[0] = v44;
  v73[1] = v64;
  v73[4] = v54;
  v73[2] = v46;
  v56 = v69;
  v55 = v70;
  (*(v65 + 48))(v69, v70, v53, v26, v73, v40);
  (*(v21 + 8))(v26, v18);

  sub_19345012C(v56, v55);
  __swift_destroy_boxed_opaque_existential_1(v73);
  v61 = v68;
  v62 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v61, v62 ^ 1u, 1, v39);
LABEL_12:
  OUTLINED_FUNCTION_116();
}

void sub_1934935E8()
{
  OUTLINED_FUNCTION_117();
  v1 = MEMORY[0x1E69E7D40];
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v5 = v4;
  v6 = sub_19393C450();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = sub_19393C600();
  v19 = OUTLINED_FUNCTION_0(v18);
  v61 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_1();
  v60 = v24 - v23;
  v62 = sub_19393BE00();
  v25 = OUTLINED_FUNCTION_0(v62);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_1();
  v32 = v31 - v30;
  (*(v5 + 136))();
  OUTLINED_FUNCTION_29_7();
  if (!v36 & v35)
  {
    sub_19393C440();
    v37 = sub_19393C430();
    v38 = sub_19393C800();
    if (OUTLINED_FUNCTION_25_10(v38))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_7(&dword_193432000, v39, v40, "Failed to encode event as json with error: nil data");
      OUTLINED_FUNCTION_6_5();
    }

    (*(v9 + 8))(v17, v6);
  }

  else
  {
    v54 = v18;
    v55 = v14;
    v56 = v9;
    v57 = v6;
    v41 = v33;
    v42 = v34;
    v43 = dynamic_cast_existential_1_unconditional(*(v5 + 80));
    v45 = v44;
    v46 = *v0;
    v47 = *v1;
    OUTLINED_FUNCTION_8_12();
    v49 = (*(v48 + 112))();
    sub_19393BD70();
    v63[3] = &type metadata for _StreamBookmark;
    v50 = sub_193495E3C();
    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    v63[4] = v50;
    v63[2] = 0;
    v51 = *(v45 + 48);
    v64[3] = v43;
    v64[4] = v45;
    __swift_allocate_boxed_opaque_existential_1Tm(v64);
    v58 = v41;
    v59 = v42;
    v51(v41, v42, v49, v32, v63, v43, v45);
    (*(v27 + 8))(v32, v62);
    __swift_destroy_boxed_opaque_existential_1(v63);
    (*(*(v45 + 8) + 8))(v43);
    v52 = v60;
    sub_19393C5D0();
    sub_19393C590();
    OUTLINED_FUNCTION_32_3();

    sub_19345012C(v58, v59);
    (*(v61 + 8))(v52, v54);
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_116();
}

id sub_193493B1C()
{
  v16[5] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  (*(v3 + 192))();
  OUTLINED_FUNCTION_29_7();
  if (!v5 & v4)
  {
    v6 = *MEMORY[0x1E69E9840];

    return sub_19393C510();
  }

  else
  {
    OUTLINED_FUNCTION_32_3();
    v8 = objc_opt_self();
    OUTLINED_FUNCTION_13_0();
    v9 = sub_19393BD20();
    v16[0] = 0;
    v10 = [v8 JSONObjectWithData:v9 options:0 error:v16];

    v11 = v16[0];
    if (v10)
    {
      sub_19393C880();
      v12 = OUTLINED_FUNCTION_13_0();
      sub_19345012C(v12, v13);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB60, &qword_193950B78);
      swift_dynamicCast();
      result = v16[0];
      v14 = *MEMORY[0x1E69E9840];
    }

    else
    {
      v15 = v11;
      sub_19393BCF0();

      swift_willThrow();
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  return result;
}

id sub_193493CF4(void *a1)
{
  v1 = a1;
  sub_193493B1C();

  v2 = sub_19393C4F0();

  return v2;
}

void sub_193493DA8()
{
  OUTLINED_FUNCTION_26();
  v38[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = sub_19393C600();
  v4 = OUTLINED_FUNCTION_47(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = &v0[qword_1EAE3AB50];
  *&v0[qword_1EAE3AB50] = xmmword_193950B20;
  v8 = objc_opt_self();
  v9 = sub_19393C4F0();
  v38[0] = 0;
  v10 = [v8 dataWithJSONObject:v9 options:0 error:v38];

  v11 = v38[0];
  if (!v10)
  {
    v24 = v11;

    sub_19393BCF0();

    swift_willThrow();
    goto LABEL_7;
  }

  v36 = v0;
  v12 = sub_19393BD40();
  v14 = v13;

  sub_19393C5D0();
  v15 = sub_19393C5A0();
  if (v16)
  {
    v17 = v15;
    v18 = v16;

    v35 = v2;
    v19 = dynamic_cast_existential_1_unconditional(*(v2 + 80));
    v21 = v20;
    v22 = v20[1];
    v23 = *(v22 + 16);
    v38[3] = v19;
    v38[4] = v20;
    __swift_allocate_boxed_opaque_existential_1Tm(v38);
    v23(v17, v18, v19, v22);
    if (!v1)
    {

      v28 = (v21[7])(v19, v21);
      v30 = v29;
      OUTLINED_FUNCTION_20_4();
      swift_beginAccess();
      v31 = *v7;
      v32 = *(v7 + 1);
      *v7 = v28;
      *(v7 + 1) = v30;
      sub_19345012C(v31, v32);
      v33 = (v21[4])(v19, v21);
      sub_193446A6C(v12, v14);
      *&v36[qword_1EAE3AB48] = v33;
      __swift_destroy_boxed_opaque_existential_1(v38);
      v34 = *(v35 + 88);
      v37.receiver = v36;
      v37.super_class = type metadata accessor for EventWrapper();
      objc_msgSendSuper2(&v37, sel_init);
LABEL_8:
      v27 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_27();
      return;
    }

    sub_193446A6C(v12, v14);

    __swift_deallocate_boxed_opaque_existential_1(v38);
LABEL_7:
    sub_19345012C(*v7, *(v7 + 1));
    v25 = *(v2 + 80);
    v26 = *(v2 + 88);
    type metadata accessor for EventWrapper();
    swift_deallocPartialClassInstance();
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1934941C4()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  v49 = v5;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v0;
  v48 = sub_19393C450();
  v8 = OUTLINED_FUNCTION_0(v48);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = sub_19393BE00();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = v4 == 0x7A696C6169726573 && v2 == 0xE900000000000065;
  if (v18 || (OUTLINED_FUNCTION_24_8() & 1) != 0 || (v4 == 1852797802 ? (v19 = v2 == 0xE400000000000000) : (v19 = 0), v19 || (OUTLINED_FUNCTION_24_8() & 1) != 0 || (v4 == 0x746369446E6F736ALL ? (v20 = v2 == 0xEE007972616E6F69) : (v20 = 0), v20 || (OUTLINED_FUNCTION_24_8() & 1) != 0)))
  {
    v21 = sub_19393C570();
    v22 = *(v7 + 80);
    v23 = *(v7 + 88);
    v50.receiver = v0;
    v50.super_class = type metadata accessor for EventWrapper();
    v24 = objc_msgSendSuper2(&v50, sel_valueForKey_, v21);

    if (v24)
    {
      sub_19393C880();
      swift_unknownObjectRelease();
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
    }

    v25 = v58;
    *v49 = v57;
    v49[1] = v25;
    goto LABEL_20;
  }

  v26 = *v0;
  v27 = *v6;
  OUTLINED_FUNCTION_8_12();
  (*(v28 + 136))();
  OUTLINED_FUNCTION_29_7();
  if (!v18 & v31)
  {
    *v49 = 0u;
    v49[1] = 0u;
LABEL_20:
    OUTLINED_FUNCTION_116();
    return;
  }

  v47 = v29;
  v32 = *(v7 + 80);
  v33 = v30;
  v34 = dynamic_cast_existential_1_unconditional(v32);
  v36 = v35;
  v37 = *v0;
  v38 = *v6;
  OUTLINED_FUNCTION_8_12();
  v40 = (*(v39 + 112))();
  sub_19393BD70();
  *(&v55 + 1) = &type metadata for _StreamBookmark;
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  v56 = sub_193495E3C();
  *&v55 = 0;
  v46 = *(v36 + 48);
  *(&v58 + 1) = v34;
  v59 = v36;
  __swift_allocate_boxed_opaque_existential_1Tm(&v57);
  v46(v47, v33, v40, v17, &v54, v34, v36);
  v41 = OUTLINED_FUNCTION_33_3();
  v42(v41, v11);
  __swift_destroy_boxed_opaque_existential_1(&v54);
  sub_193494798(v34, *(v36 + 16), &v52);
  if (v53)
  {
    sub_193495EE0(&v52, &v54);
    sub_19343CF00(0, &qword_1EAE3AB68, 0x1E69E58C0);
    swift_dynamicCast();
    v43 = sub_19393C570();
    v44 = [v51 valueForKey_];

    if (v44)
    {
      sub_19393C880();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5_15();
    }

    else
    {
      OUTLINED_FUNCTION_5_15();
      v54 = 0u;
      v55 = 0u;
    }

    v45 = v55;
    *v49 = v54;
    v49[1] = v45;
    __swift_destroy_boxed_opaque_existential_1(&v57);
    goto LABEL_20;
  }

  __break(1u);
}

id sub_193494798@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v9[3] = a1;
  v9[4] = a2;
  __swift_allocate_boxed_opaque_existential_1Tm(v9);
  OUTLINED_FUNCTION_9_10(a1);
  (*(v5 + 16))();
  v6 = type metadata accessor for KeyValueCodingWrapper();
  v7 = objc_allocWithZone(v6);
  result = sub_193494A9C(v9);
  if (!result)
  {
    v6 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = result;
  a3[3] = v6;
  return result;
}

id sub_19349488C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EventWrapper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1934948FC()
{
  OUTLINED_FUNCTION_91_0();
  v2[3] = v1;
  __swift_allocate_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_9_10(v0);
  v4 = *(v3 + 16);

  return v4();
}

uint64_t sub_193494960@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB70, &qword_193950B80);
  v8 = sub_19345180C(sub_193494A10, 0, a1, v6, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB78, &qword_193950B88);
  a3[3] = result;
  *a3 = v8;
  return result;
}

id sub_193494A10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1934970B0(a1, v5);
  v3 = objc_allocWithZone(type metadata accessor for KeyValueCodingWrapper());
  result = sub_193494A9C(v5);
  *a2 = result;
  return result;
}

id sub_193494A9C(uint64_t a1)
{
  sub_193496100();
  if (v7)
  {
    sub_193495F74(&v6, v8);
    sub_193495F74(v8, v1 + OBJC_IVAR____TtC27IntelligencePlatformLibrary21KeyValueCodingWrapper_object);
    v5.receiver = v1;
    v5.super_class = type metadata accessor for KeyValueCodingWrapper();
    v3 = objc_msgSendSuper2(&v5, sel_init);
    sub_19344E680(a1, &qword_1EAE3AB80, &qword_193950B90);
  }

  else
  {
    sub_19344E680(a1, &qword_1EAE3AB80, &qword_193950B90);
    sub_19344E680(&v6, &qword_1EAE3AB80, &qword_193950B90);
    type metadata accessor for KeyValueCodingWrapper();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

void sub_193494B94()
{
  OUTLINED_FUNCTION_117();
  v16 = sub_19393CB30();
  v1 = OUTLINED_FUNCTION_0(v16);
  v15 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = (v0 + OBJC_IVAR____TtC27IntelligencePlatformLibrary21KeyValueCodingWrapper_object);
  v9 = *(v0 + OBJC_IVAR____TtC27IntelligencePlatformLibrary21KeyValueCodingWrapper_object + 24);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  *(&v23 + 1) = v9;
  __swift_allocate_boxed_opaque_existential_1Tm(&v22);
  OUTLINED_FUNCTION_9_10(v9);
  (*(v10 + 16))();
  sub_19393CB10();
  sub_19393CB20();
  sub_19393C970();

  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_19393C9C0();
    if (!v24)
    {
      break;
    }

    v20 = v22;
    sub_193495EE0(&v23, &v21);
    sub_193496100();
    if (v18)
    {
      __swift_destroy_boxed_opaque_existential_1(v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_193484F78(0, *(v11 + 2) + 1, 1, v11);
      }

      v13 = *(v11 + 2);
      v12 = *(v11 + 3);
      if (v13 >= v12 >> 1)
      {
        v11 = sub_193484F78((v12 > 1), v13 + 1, 1, v11);
      }

      sub_19344E680(&v20, &qword_1EAE3AB90, &qword_193950B98);
      *(v11 + 2) = v13 + 1;
      v14 = &v11[16 * v13];
      *(v14 + 4) = v17;
      *(v14 + 5) = v18;
    }

    else
    {
      sub_19344E680(&v20, &qword_1EAE3AB90, &qword_193950B98);
      __swift_destroy_boxed_opaque_existential_1(v19);
    }
  }

  *&v22 = v11;

  sub_193496094(&v22);

  (*(v15 + 8))(v7, v16);
  OUTLINED_FUNCTION_116();
}

void sub_193494E34()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC27IntelligencePlatformLibrary21KeyValueCodingWrapper_object + 24);
  v7 = *(v1 + OBJC_IVAR____TtC27IntelligencePlatformLibrary21KeyValueCodingWrapper_object + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27IntelligencePlatformLibrary21KeyValueCodingWrapper_object), v6);
  (*(v7 + 8))(v5, v3, v6, v7);
  OUTLINED_FUNCTION_116();
}

id sub_193495234(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v6 = sub_19393C580();
  v8 = v7;
  v9 = a1;
  a4(v22, v6, v8);

  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(v22, v23);
    OUTLINED_FUNCTION_1_0();
    v11 = v10;
    v13 = *(v12 + 64);
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_5_1();
    (*(v11 + 16))(v16 - v15);
    OUTLINED_FUNCTION_23_10();
    v17 = sub_19393CA20();
    v18 = *(v11 + 8);
    v19 = OUTLINED_FUNCTION_23_10();
    v20(v19);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_1934953C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeyValueCodingWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_19349541C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v33 = v6;
  v7 = sub_19393C860();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  OUTLINED_FUNCTION_1_0();
  v32 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v32 - v23;
  v36[0] = v5;
  v36[1] = v3;

  sub_19393C530();

  if (__swift_getEnumTagSinglePayload(v14, 1, v1) == 1)
  {
    (*(v9 + 8))(v14, v7);
    v25 = v33;
    *v33 = 0u;
    v25[1] = 0u;
  }

  else
  {
    v27 = v32;
    v26 = v33;
    v28 = *(v32 + 32);
    v28(v24, v14, v1);
    (*(v27 + 16))(v21, v24, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB8, &qword_193950BC0);
    if (swift_dynamicCast())
    {
      sub_193495F74(v34, v36);
      v29 = v37;
      v30 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      sub_193494798(v29, v30, v26);
      (*(v27 + 8))(v24, v1);
      __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else
    {
      v35 = 0;
      memset(v34, 0, sizeof(v34));
      sub_19344E680(v34, &qword_1EAE3AB80, &qword_193950B90);
      v26[3] = v1;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
      v28(boxed_opaque_existential_1Tm, v24, v1);
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934956D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 24);
  sub_19349541C();
}

id sub_1934956F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_19393C570();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_19393C4F0();

LABEL_6:
  v9 = [v4 initWithName:a1 reason:v7 userInfo:v8];

  return v9;
}

char *sub_1934957BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AC20, &qword_193950F68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1934958BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_193495980(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_19349618C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_193495980(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_193495A80(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_19393C920();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_193495A80(uint64_t a1, unint64_t a2)
{
  v4 = sub_193495ACC(a1, a2);
  sub_193495BE4(&unk_1F07BD2A8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_193495ACC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_19393C650())
  {
    result = sub_193495CC8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_19393C8E0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_19393C920();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_193495BE4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_193495D38(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_193495CC8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE3AC28, &qword_193950F70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_193495D38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE3AC28, &qword_193950F70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_193495E3C()
{
  result = qword_1EAE3A9B0;
  if (!qword_1EAE3A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A9B0);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x193B18A90);
  }

  return result;
}

_OWORD *sub_193495EE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_193495F74(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_193495F8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA90, &qword_193950F60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_193496094(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19349709C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1934966D4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_193496100()
{
  OUTLINED_FUNCTION_91_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9_10(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_13_0();
  v7(v6);
  return v0;
}

uint64_t sub_19349618C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1934961E8(uint64_t a1)
{
  *(a1 + 8) = sub_193496218();
  result = sub_19349626C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_193496218()
{
  result = qword_1ED502890;
  if (!qword_1ED502890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502890);
  }

  return result;
}

unint64_t sub_19349626C()
{
  result = qword_1EAE3A9B8;
  if (!qword_1EAE3A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A9B8);
  }

  return result;
}

uint64_t sub_1934962C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_193496300(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1934963F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19349642C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_19349647C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for _StreamBookmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1934965D0()
{
  result = qword_1EAE46A00[0];
  if (!qword_1EAE46A00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAE46A00);
  }

  return result;
}

unint64_t sub_193496628()
{
  result = qword_1EAE46B10;
  if (!qword_1EAE46B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE46B10);
  }

  return result;
}

unint64_t sub_193496680()
{
  result = qword_1EAE46B18[0];
  if (!qword_1EAE46B18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAE46B18);
  }

  return result;
}

uint64_t sub_1934966D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_19393CA10();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_19393C700();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_193496890(v7, v8, a1, v4);
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
    return sub_1934967C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1934967C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_19393CA30();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
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

uint64_t sub_193496890(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v83 = result;
  v89 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        result = *v11;
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          result = sub_19393CA30();
          v14 = result;
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_19393CA30();
            if ((v14 ^ result))
            {
              break;
            }
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = (v9 + a4);
          }

          if (v27 < v9)
          {
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
            return result;
          }

          if (v10 != v27)
          {
            v84 = v5;
            v86 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = (v9 - v10);
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              result = *v32;
              v33 = v32[1];
              v34 = v30;
              v35 = v29;
              do
              {
                if (result == *(v35 - 2) && v33 == *(v35 - 1))
                {
                  break;
                }

                result = sub_19393CA30();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                result = *v35;
                v33 = v35[1];
                *v35 = *(v35 - 1);
                *(v35 - 1) = v33;
                *(v35 - 2) = result;
                v35 -= 2;
              }

              while (!__CFADD__(v34++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while ((v31 + 1) != v27);
            v10 = v27;
            v5 = v84;
            v9 = v86;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v10;
      if ((result & 1) == 0)
      {
        result = sub_1934957BC(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v39 = *(v8 + 16);
      v38 = *(v8 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_1934957BC((v38 > 1), v39 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v40;
      v41 = v8 + 32;
      v42 = (v8 + 32 + 16 * v39);
      *v42 = v9;
      v42[1] = v85;
      v87 = *v83;
      if (!*v83)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = (v41 + 16 * (v40 - 1));
          v45 = (v8 + 16 * v40);
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = *(v8 + 32);
            v47 = *(v8 + 40);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = (v41 + 16 * (v43 - 1));
          v76 = *v75;
          v77 = (v41 + 16 * v43);
          v78 = v77[1];
          result = sub_193496EC4((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = *(v8 + 16);
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          result = memmove((v41 + 16 * v43), v77 + 2, 16 * (v80 - 1 - v43));
          *(v79 + 16) = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = v41 + 16 * v40;
        v51 = *(v50 - 64);
        v52 = *(v50 - 56);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 48);
        v54 = *(v50 - 40);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v85;
      if (v85 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*v83)
  {
    goto LABEL_128;
  }

  sub_193496D98(&v89, *v83, a3);
}

uint64_t sub_193496D98(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_193497088(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_193496EC4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_193496EC4(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_19393CA30() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_19393CA30() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_1934970B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_193497114(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  OUTLINED_FUNCTION_34_1();
  v5 = sub_19393C7A0();
  OUTLINED_FUNCTION_47(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  [a1 error];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  OUTLINED_FUNCTION_34_1();
  sub_19393C7A0();
  return sub_19393C790();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_18Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  OUTLINED_FUNCTION_34_1();
  v3 = sub_19393C7A0();
  OUTLINED_FUNCTION_9_10(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

void sub_1934972F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AB40, &qword_193950B60);
  v3 = sub_19393C7A0();
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 80);

  sub_19349265C();
}

uint64_t OUTLINED_FUNCTION_39_8()
{
  v2 = *(*(v0 - 72) + 88);

  return type metadata accessor for EventWrapper();
}

void sub_1934973F8()
{
  OUTLINED_FUNCTION_117();
  v38 = v2;
  v39 = v3;
  v37 = v4;
  OUTLINED_FUNCTION_91_0();
  v40 = v5;
  v41 = v6;
  v42 = v7;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = OUTLINED_FUNCTION_4_1(TupleTypeMetadata3);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v33 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v32 = v31 - v15;
  v35 = v1;
  v16 = sub_19393C730();
  v36 = v0;
  v34 = TupleTypeMetadata3;
  v17 = sub_19393C730();
  v44 = v16;
  if (v16 != v17)
  {
    v43 = 0;
LABEL_9:
    OUTLINED_FUNCTION_116();
    return;
  }

  if ((v44 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v19 = v41;
    v31[1] = v41 - 8;
    v31[2] = v42 - 8;
    v31[0] = v40 - 8;
    v20 = v32;
    while (1)
    {
      v43 = v44 == v18;
      if (v44 == v18)
      {
        goto LABEL_9;
      }

      if (__OFADD__(v18, 1))
      {
        __break(1u);
        break;
      }

      v21 = v34;
      sub_19393C750();
      v22 = *(v21 + 48);
      v47 = *(v21 + 64);
      v48 = v22;
      v23 = v33;
      sub_19393C750();
      v24 = *(v21 + 48);
      v25 = *(v21 + 64);
      v26 = v42;
      v27 = v40;
      v49 = sub_19393CA40();
      v28 = *(v26 - 8);
      v45 = *(v28 + 8);
      v46 = v28 + 8;
      v45(v23 + v25, v26);
      v29 = *(*(v19 - 8) + 8);
      v29(v23 + v24, v19);
      v30 = *(*(v27 - 8) + 8);
      v30(v23, v27);
      v45(&v20[v47], v26);
      v29(&v20[v48], v19);
      v30(v20, v27);
      ++v18;
      if (v49)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
}

BOOL sub_1934977B8(uint64_t a1, unint64_t a2)
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

uint64_t sub_19349780C(uint64_t a1)
{
  sub_19393C210();
  if (!v1)
  {
    sub_19344E6DC(a1, &qword_1EAE3ACA0, &qword_193972420);
    sub_19393BD00();
  }
}

uint64_t sub_193497890(uint64_t a1)
{
  sub_19393C150();
  if (!v1 && !sub_1934977B8(0, 0xC000000000000000))
  {
    sub_193497A04(0, 0xC000000000000000, a1);
  }

  return sub_193446A6C(0, 0xC000000000000000);
}

uint64_t sub_193497918()
{
  OUTLINED_FUNCTION_91_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
  v9 = [v8 UUIDString];

  sub_19393C580();
  sub_19393BE10();

  return sub_19345461C(v7, v0);
}

uint64_t sub_193497A04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  switch(a2 >> 62)
  {
    case 1uLL:
      v14 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      v13 = a1;
      goto LABEL_7;
    case 2uLL:
      v13 = *(a1 + 16);
      v14 = *(a1 + 24);
LABEL_7:
      result = sub_193499330(v13, v14);
      break;
    case 3uLL:
      result = sub_193499174(0, 0, a3);
      break;
    default:
      v17 = a1;
      v18 = a2;
      v19 = BYTE2(a2);
      v20 = BYTE3(a2);
      v21 = BYTE4(a2);
      v22 = BYTE5(a2);
      v10 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
      v11 = [v10 UUIDString];

      sub_19393C580();
      sub_19393BE10();

      result = sub_19345461C(v9, a3);
      break;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_193497C1C(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      result = sub_1934993B0(a1, v4);
      break;
    case 3uLL:
      result = sub_1934992B8(0, 0);
      break;
    default:
      v7 = a1;
      v8 = a2;
      v9 = BYTE2(a2);
      v10 = BYTE3(a2);
      v11 = BYTE4(a2);
      v12 = BYTE5(a2);
      result = sub_193497DF4(&v7);
      break;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_193497D68()
{
  v10 = MEMORY[0x1E69E7CC0];
  sub_19393C110();
  if (!v0 && v10[2])
  {
    v1 = v10[4];
    v2 = v10[5];
    v3 = OUTLINED_FUNCTION_32_4();
    sub_193450688(v3, v4);
    v5 = OUTLINED_FUNCTION_32_4();
    sub_193497C1C(v5, v6);
    v7 = OUTLINED_FUNCTION_32_4();
    sub_193446A6C(v7, v8);
  }
}

uint64_t sub_193497DF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = sub_19393BE60();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
  v18 = [v17 UUIDString];

  sub_19393C580();
  sub_19393BE10();

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_19344E6DC(v7, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  (*(v11 + 32))(v16, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAE0, &qword_19394FAE0);
  v20 = *(v11 + 72);
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_19394FAC0;
  (*(v11 + 16))(v22 + v21, v16, v8);
  sub_193498C60(v22);
  return (*(v11 + 8))(v16, v8);
}

void sub_193498018()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v28 = v4;
  v6 = OUTLINED_FUNCTION_28_2(v5);
  OUTLINED_FUNCTION_0(v6);
  v27 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  type metadata accessor for ProtobufMessageSerializer();
  OUTLINED_FUNCTION_22_11();
  v13 = sub_19393C860();
  OUTLINED_FUNCTION_0(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v26 - v19;
  __swift_storeEnumTagSinglePayload(v26 - v19, 1, 1, v3);
  OUTLINED_FUNCTION_8_13();
  swift_getWitnessTable();
  sub_19393C240();
  if (!v0)
  {
    (*(v27 + 8))(v26[1], v6);
    v21 = 1;
    if (!__swift_getEnumTagSinglePayload(v20, 1, v3))
    {
      OUTLINED_FUNCTION_9_10(v1);
      (*(v22 + 16))(v12, v20, v1);
      v21 = 0;
    }

    __swift_storeEnumTagSinglePayload(v12, v21, 1, v1);
    v23 = *(v27 + 32);
    v24 = OUTLINED_FUNCTION_32_4();
    v25(v24);
  }

  (*(v15 + 8))(v20, v13);
  OUTLINED_FUNCTION_27();
}

void sub_1934982A8()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v6 = OUTLINED_FUNCTION_28_2(v5);
  v7 = OUTLINED_FUNCTION_0(v6);
  v22 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v24 = 0;
  v25 = 1;
  type metadata accessor for ProtobufEnumSerializer();
  OUTLINED_FUNCTION_7_7();
  swift_getWitnessTable();
  sub_19393C100();
  if (!v0)
  {
    v14 = v4;
    v16 = v22;
    v15 = v23;
    v26 = *(v22 + 8);
    v26(v23, v6);
    if (v25)
    {
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v1);
    }

    else
    {
      (*(v14 + 24))(v24, v1, v14);
      OUTLINED_FUNCTION_5_3(v2);
      if (v17)
      {
        (*(v14 + 16))(v1, v14);
        OUTLINED_FUNCTION_5_3(v2);
        if (!v17)
        {
          v26(v2, v6);
        }
      }

      else
      {
        OUTLINED_FUNCTION_9_10(v1);
        (*(v18 + 32))(v13, v2, v1);
      }

      OUTLINED_FUNCTION_29_8();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v1);
      (*(v16 + 32))(v23, v13, v6);
    }
  }

  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_27();
}

void sub_193498544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(char *, char *), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(char *, char *))
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v43[2] = v34;
  v36 = v35(0, v30, v26);
  a10 = sub_19393C6F0();
  WitnessTable = swift_getWitnessTable();
  v38 = v25(&a10, v36, WitnessTable, v33, v29);
  if (!v21)
  {
    v43[1] = v43;
    v43[0] = a21;
    v43[3] = a10;
    MEMORY[0x1EEE9AC00](v38);
    v42[2] = v33;
    v42[3] = v31;
    v42[4] = v29;
    v42[5] = v27;
    v39 = sub_19393C740();
    OUTLINED_FUNCTION_9_21();
    v40 = swift_getWitnessTable();
    sub_19345180C(v43[0], v42, v39, v31, MEMORY[0x1E69E73E0], v40, MEMORY[0x1E69E7410], v41);

    OUTLINED_FUNCTION_25_11();
    sub_19393C710();
  }

  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934986B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_19393C860();
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  (*(a3 + 24))(*a1, a2, a3);
  if (__swift_getEnumTagSinglePayload(v15, 1, a2) == 1)
  {
    (*(a3 + 16))(a2, a3);
    result = __swift_getEnumTagSinglePayload(v15, 1, a2);
    if (result != 1)
    {
      return (*(v10 + 8))(v15, v8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_10(a2);
    return (*(v17 + 32))(a4, v15, a2);
  }

  return result;
}

void sub_193498848()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v51 = *MEMORY[0x1E69E9840];
  v10 = sub_19393BE60();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v49 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v48 = v44 - v19;
  v45 = v9;
  v20 = *(v9 + 16);
  if (v20)
  {
    v44[0] = v7;
    v44[1] = v0;
    v44[2] = v5;
    v44[3] = v1;
    v44[4] = v3;
    v50 = MEMORY[0x1E69E7CC0];
    v21 = OUTLINED_FUNCTION_19_16();
    sub_193499430(v21, v22, v23);
    v24 = v50;
    v26 = *(v13 + 16);
    v25 = v13 + 16;
    v27 = *(v25 + 64);
    OUTLINED_FUNCTION_34_2();
    v29 = (v45 + v28);
    v45 = *(v25 + 56);
    v46 = v30;
    v31 = (v25 - 8);
    v47 = v25;
    do
    {
      v32 = v48;
      v33 = v46;
      v46(v48, v29, v10);
      v34 = v49;
      v33(v49, v32, v10);
      v35 = sub_19393BCD0();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      v38 = sub_19393BC90();
      v39 = *v31;
      (*v31)(v34, v10);
      v39(v32, v10);
      v50 = v24;
      v41 = *(v24 + 16);
      v40 = *(v24 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_193499430((v40 > 1), v41 + 1, 1);
        v24 = v50;
      }

      *(v24 + 16) = v41 + 1;
      v42 = v24 + 16 * v41;
      *(v42 + 32) = 0x1000000000;
      *(v42 + 40) = v38 | 0x4000000000000000;
      v29 += v45;
      --v20;
    }

    while (v20);
  }

  sub_19393C300();

  v43 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193498AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();
  sub_19393C3C0();
}

uint64_t sub_193498BB4@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_1_0();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v6 = OUTLINED_FUNCTION_23_14(v5);
  v7(v6);
  OUTLINED_FUNCTION_25_11();
  result = sub_19344CC50(v8, v9, v10);
  *a1 = result;
  return result;
}

int64_t sub_193498C60(uint64_t a1)
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

  sub_193498E14(result, 1, &qword_1EAE3AAE0, &qword_19394FAE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
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
  result = sub_19393BE60();
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

uint64_t sub_193498E14(int64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v13 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v13;
  if (!result || a1 > *(v13 + 24) >> 1)
  {
    if (*(v13 + 16) <= a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = *(v13 + 16);
    }

    result = sub_193498EAC(result, v15, a2 & 1, v13, a3, a4, a5, a6);
    *v6 = result;
  }

  return result;
}

uint64_t sub_193498EAC(uint64_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(uint64_t))
{
  v12 = result;
  if (a3)
  {
    v13 = *(a4 + 24);
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = *(a4 + 16);
  sub_193498FB4(v15, v14, a5, a6, a7);
  v16 = OUTLINED_FUNCTION_22_11();
  v17 = *(*(a8(v16) - 8) + 80);
  OUTLINED_FUNCTION_34_2();
  if (v12)
  {
    sub_1934990A8(a4 + v18, v15, v8 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v8;
}

size_t sub_193498FB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  OUTLINED_FUNCTION_30(v8);
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

uint64_t sub_1934990A8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_91_0();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_4_1(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_25_11();

    return MEMORY[0x1EEE6BD00](v17, v18, v19, v20);
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_25_11();

    return MEMORY[0x1EEE6BCF8](v13, v14, v15, v16);
  }

  return result;
}

uint64_t sub_193499174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  v15 = a1;
  v17 = WORD2(a2);
  v16 = a2;
  v10 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
  v11 = [v10 UUIDString];

  sub_19393C580();
  sub_19393BE10();

  result = sub_19345461C(v9, a3);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1934992B8(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v6 = WORD2(a2);
  v5 = a2;
  result = sub_193497DF4(&v4);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_193499330(uint64_t a1, uint64_t a2)
{
  result = sub_19393BCA0();
  if (!result || (result = sub_19393BCC0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_19393BCB0();
      return sub_193497918();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1934993B0(uint64_t a1, uint64_t a2)
{
  result = sub_19393BCA0();
  v5 = result;
  if (result)
  {
    result = sub_19393BCC0();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v5 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_19393BCB0();
    return sub_193497DF4(v5);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

char *sub_193499430(char *a1, int64_t a2, char a3)
{
  result = sub_193499478(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_193499478(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA8, &qword_193950F90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_19349958C(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_19393C580();

  return v2;
}

void sub_1934995E0(double a1, uint64_t a2, void *a3)
{
  v16 = sub_19393C450();
  v5 = OUTLINED_FUNCTION_0(v16);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_7();
  v8 = OUTLINED_FUNCTION_11_11();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_8_14();
  v12 = OUTLINED_FUNCTION_6_10();
  v13(v12);
  sub_1934468E4();
  v15 = v14;
  [a3 sendEvent:v14 timestamp:a1];
}

void sub_19349985C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_19393C450();
  v6 = OUTLINED_FUNCTION_0(v5);
  v21 = v7;
  v22 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v21 - v16;
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_8_14();
  (*(v13 + 16))(v17, a1, AssociatedTypeWitness);
  sub_1934468E4();
  v19 = v18;
  v20 = sub_19393BDB0();
  [a3 sendEvent:v19 date:{v20, v21, v22}];
}

void sub_193499B14(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1934995E0(a3, a1, *v3);
}

void sub_193499B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  sub_19349985C(a1, a2, *v3);
}

uint64_t sub_193499B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E0, &qword_193950B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_193499BD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *_s6DeviceOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_193499D88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED50FF98);
  v5 = __swift_project_value_buffer(v4, qword_1ED50FF98);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_193499F50(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_19349A010@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

id static Library.Streams.Device.Metadata.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x20000 maxStreamSize:10000 maxEventCount:*MEMORY[0x1E698F100]];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_1 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED50FF98);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACB0, &qword_1939510E8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.Device.Metadata.attribute(_:)(void (*a1)(void))
{
  result = sub_19349A2D4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19349A31C(void (*a1)(void))
{
  result = sub_19349A2D4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19349A34C(uint64_t a1)
{
  result = sub_19349A374();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19349A374()
{
  result = qword_1ED506E40;
  if (!qword_1ED506E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506E40);
  }

  return result;
}

_BYTE *_s8MetadataOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceMetadata.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for DeviceMetadata();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACB8, &qword_193951160);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_19349A660(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3ACB8, &qword_193951160);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3ACB8, &qword_193951160);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_19349A660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static DeviceMetadata.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACB8, &qword_193951160);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3ACB8, &qword_193951160);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_19349A804(v10, a1);
  }

  return result;
}

uint64_t sub_19349A804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static DeviceMetadata.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACB8, &qword_193951160);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_19349C790() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_19349A804(v14, v40);
      v33 = type metadata accessor for DeviceMetadata();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

unint64_t sub_19349AB64()
{
  result = qword_1EAE3ACC8;
  if (!qword_1EAE3ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ACC8);
  }

  return result;
}

uint64_t DeviceMetadata.serialize()()
{
  v1 = type metadata accessor for DeviceMetadata();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACB8, &qword_193951160);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_19349A660(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3ACB8, &qword_193951160);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3ACB8, &qword_193951160);
  return v15;
}

id static DeviceMetadata.columns.getter()
{
  v95 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(1701667182, 0xE400000000000000);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(inited, v12, v13, v14, v15, v16, v17, v18, v19);
  v20 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v20[2].n128_u64[0] = sub_19393C850();
  v29 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0x646C697562, 0xE500000000000000);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_2(result);
  v30 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v30, v31, v32, v33, v34, v35, v36, v37, v38);
  v39 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v39[2].n128_u64[0] = sub_19393C850();
  v48 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_9_23();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v49, v50, v51, v52, v39, 4, 0);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_2(result);
  v53 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v53, v54, v55, v56, v57, v58, v59, v60, v61);
  v62 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v62, v63, v64, v65, v66, v67, v68, v69, v70);
  v62[2].n128_u64[0] = sub_19393C850();
  v71 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000011, 0x8000000193A14140);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  v72 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v72, v73, v74, v75, v76, v77, v78, v79, v80);
  v81 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v81, v82, v83, v84, v85, v86, v87, v88, v89);
  v81[2].n128_u64[0] = sub_19393C850();
  v90 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v91, v92, v93, v94, v81, 12, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v95;
  }

LABEL_11:
  __break(1u);
  return result;
}

int *sub_19349AFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for DeviceMetadata();
    v9 = result[7];
    goto LABEL_7;
  }

  v10 = a1 == 0x646C697562 && a2 == 0xE500000000000000;
  if (v10 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for DeviceMetadata();
    v9 = result[8];
    goto LABEL_7;
  }

  v11 = a1 == OUTLINED_FUNCTION_9_23() && a2 == 0xE800000000000000;
  if (v11 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v12 = v3 + *(type metadata accessor for DeviceMetadata() + 36);
    v19 = *v12;
    v20 = *(v12 + 8);
    return sub_1934948FC();
  }

  v13 = a1 == 0xD000000000000011 && 0x8000000193A14140 == a2;
  if (v13 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for DeviceMetadata();
    v9 = result[10];
LABEL_7:
    if (*(v3 + v9 + 8))
    {
      v18 = *(v3 + v9);
      return sub_1934948FC();
    }

    goto LABEL_34;
  }

  v14 = a1 == 0xD00000000000001ELL && 0x8000000193A14160 == a2;
  if (v14 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for DeviceMetadata();
    if (*(v3 + result[11]) != 2)
    {
      return sub_1934948FC();
    }

LABEL_34:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v16 = v15;
  *v15 = a1;
  v15[1] = a2;
  v15[5] = type metadata accessor for DeviceMetadata();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v16 + 2);
  sub_19349A660(v3, boxed_opaque_existential_1Tm);
  *(v16 + 48) = 1;
  swift_willThrow();
}

uint64_t DeviceMetadata.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for DeviceMetadata();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = v2[11];
  OUTLINED_FUNCTION_7_9();
  *a1 = *sub_19349C790();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  v10 = a1 + v2[9];
  *v10 = 0;
  v10[8] = 0;
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v11) = 2;
  return result;
}

BOOL static DeviceMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceMetadata();
  v5 = v4[7];
  OUTLINED_FUNCTION_3();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v7);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v12 = v4[8];
  OUTLINED_FUNCTION_3();
  if (v15)
  {
    if (!v13)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v14);
    v18 = v11 && v16 == v17;
    if (!v18 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v19 = v4[9];
  v31 = *(a1 + v19);
  v32 = *(a1 + v19 + 8);
  OUTLINED_FUNCTION_9_24((a2 + v19));
  sub_19349B4D4();
  if ((sub_19393C550() & 1) == 0)
  {
    return 0;
  }

  v20 = v4[10];
  OUTLINED_FUNCTION_3();
  if (v23)
  {
    if (!v21)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v22);
    v26 = v11 && v24 == v25;
    if (!v26 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v27 = v4[11];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 != 2)
  {
    return v29 != 2 && ((v28 ^ v29) & 1) == 0;
  }

  return v29 == 2;
}

unint64_t sub_19349B4D4()
{
  result = qword_1EAE3ACD0;
  if (!qword_1EAE3ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ACD0);
  }

  return result;
}

uint64_t DeviceMetadata.hash(into:)()
{
  v1 = type metadata accessor for DeviceMetadata();
  v2 = (v0 + v1[7]);
  if (v2[1])
  {
    OUTLINED_FUNCTION_7_1(v2);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_19393CAD0();
  }

  v3 = (v0 + v1[8]);
  if (v3[1])
  {
    OUTLINED_FUNCTION_7_1(v3);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_19393CAD0();
  }

  OUTLINED_FUNCTION_9_24((v0 + v1[9]));
  sub_19349B640();
  sub_19393C540();
  v4 = (v0 + v1[10]);
  if (v4[1])
  {
    OUTLINED_FUNCTION_7_1(v4);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_19393CAD0();
  }

  if (*(v0 + v1[11]) != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

unint64_t sub_19349B640()
{
  result = qword_1EAE3ACD8;
  if (!qword_1EAE3ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ACD8);
  }

  return result;
}

uint64_t DeviceMetadata.DevicePlatform.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  result = 0;
  v4 = 1;
  switch(v2)
  {
    case 0:
      break;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    default:
      v4 = 0;
      break;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t DeviceMetadata.DevicePlatform.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_193951218[result];
  }

  return result;
}

char *static DeviceMetadata.DevicePlatform.allCases.getter()
{
  v0 = sub_19349BCD4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = OUTLINED_FUNCTION_2_21(v0, v1);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = OUTLINED_FUNCTION_1_18(v0, v1);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v0 = sub_19349BCD4((v1 > 1), v2 + 3, 1, v0);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v0 = OUTLINED_FUNCTION_2_21(v0, v10);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  v14 = v2 + 5;
  if ((v2 + 5) > (v13 >> 1))
  {
    v0 = OUTLINED_FUNCTION_1_18(v0, v13);
  }

  *(v0 + 2) = v14;
  OUTLINED_FUNCTION_4(v0, &v0[16 * v11]);
  v17 = v2 + 6;
  if ((v2 + 6) > (v16 >> 1))
  {
    v15 = OUTLINED_FUNCTION_2_21(v15, v16);
  }

  *(v15 + 2) = v17;
  OUTLINED_FUNCTION_4(v15, &v15[16 * v14]);
  v20 = v2 + 7;
  if ((v2 + 7) > (v19 >> 1))
  {
    v18 = OUTLINED_FUNCTION_1_18(v18, v19);
  }

  *(v18 + 2) = v20;
  OUTLINED_FUNCTION_4(v18, &v18[16 * v17]);
  v23 = v2 + 8;
  if ((v2 + 8) > (v22 >> 1))
  {
    v21 = OUTLINED_FUNCTION_2_21(v21, v22);
  }

  *(v21 + 2) = v23;
  OUTLINED_FUNCTION_4(v21, &v21[16 * v20]);
  if ((v2 + 9) > (v25 >> 1))
  {
    v24 = OUTLINED_FUNCTION_1_18(v24, v25);
  }

  *(v24 + 2) = v2 + 9;
  v26 = &v24[16 * v23];
  *(v26 + 4) = 7;
  v26[40] = 1;
  return v24;
}

uint64_t DeviceMetadata.DevicePlatform.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  result = 1684099177;
  switch(*v0)
  {
    case 1:
    case 9:
      result = 0x656E6F685069;
      break;
    case 2:
      result = 0x746B73654463614DLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_8_15();
      break;
    case 4:
      result = 22100;
      break;
    case 5:
      result = 0x6863746157;
      break;
    case 6:
      result = 0x646F50656D6F48;
      break;
    case 7:
      result = 0x6E6F69736956;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t DeviceMetadata.DevicePlatform.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (!v6 && (OUTLINED_FUNCTION_0_9() & 1) == 0)
  {
    v10 = a1 == 1684099177 && a2 == 0xE400000000000000;
    if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {
LABEL_12:

      v8 = 0;
LABEL_13:
      v9 = 1;
      goto LABEL_14;
    }

    v11 = a1 == 0x656E6F685069 && a2 == 0xE600000000000000;
    if (!v11 && (OUTLINED_FUNCTION_0_9() & 1) == 0)
    {
      v12 = a1 == 0x746B73654463614DLL && a2 == 0xEA0000000000706FLL;
      if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v9 = 1;
        v8 = 2;
        goto LABEL_14;
      }

      v14 = a1 == OUTLINED_FUNCTION_8_15() && a2 == v13;
      if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v9 = 1;
        v8 = 3;
        goto LABEL_14;
      }

      v15 = a1 == 22100 && a2 == 0xE200000000000000;
      if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v9 = 1;
        v8 = 4;
        goto LABEL_14;
      }

      v16 = a1 == 0x6863746157 && a2 == 0xE500000000000000;
      if (v16 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v9 = 1;
        v8 = 5;
        goto LABEL_14;
      }

      v17 = a1 == 0x646F50656D6F48 && a2 == 0xE700000000000000;
      if (v17 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v9 = 1;
        v8 = 6;
        goto LABEL_14;
      }

      v18 = a1 == 0x6E6F69736956 && a2 == 0xE600000000000000;
      if (v18 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v9 = 1;
        v8 = 7;
        goto LABEL_14;
      }

      v19 = a1 == 0xD000000000000012 && 0x8000000193A14180 == a2;
      if (v19 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {
        goto LABEL_12;
      }

      if (a1 != 0xD000000000000014 || 0x8000000193A141A0 != a2)
      {
        v9 = OUTLINED_FUNCTION_0_9();

        v8 = v9 & 1;
        goto LABEL_14;
      }
    }

    v8 = 1;
    goto LABEL_13;
  }

  v8 = 0;
  v9 = 0;
LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_19349BCD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACE8, &qword_193951210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_19349BDD4()
{
  result = qword_1EAE3ACE0;
  if (!qword_1EAE3ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ACE0);
  }

  return result;
}

uint64_t sub_19349BE28()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8720);
  __swift_project_value_buffer(v2, qword_1EAEA8720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_9_8(v8, xmmword_19394FBD0);
  *v1 = 1;
  *v0 = "name";
  *(v0 + 8) = 4;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v14 = 2;
  *v13 = "build";
  v13[1] = 5;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v17 = 3;
  v18 = OUTLINED_FUNCTION_0_0(v16, "platform");
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v20 = 4;
  v21 = OUTLINED_FUNCTION_0_0(v19, "supplementalBuild");
  (v12)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v23 = 5;
  *v22 = "rapidSecurityResponsePreReboot";
  *(v22 + 8) = 30;
  *(v22 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  return sub_19393C410();
}

void sub_19349C04C()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = *(type metadata accessor for DeviceMetadata() + 28);
        goto LABEL_10;
      case 2:
        v5 = *(type metadata accessor for DeviceMetadata() + 32);
        goto LABEL_10;
      case 3:
        sub_1934982A8();
        v7 = v0 + *(type metadata accessor for DeviceMetadata() + 36);
        *v7 = 0;
        *(v7 + 8) = 0;
        continue;
      case 4:
        v5 = *(type metadata accessor for DeviceMetadata() + 40);
LABEL_10:
        OUTLINED_FUNCTION_8_2(v5);
        sub_19393C200();
        goto LABEL_11;
      case 5:
        v6 = type metadata accessor for DeviceMetadata();
        OUTLINED_FUNCTION_8_2(*(v6 + 44));
        sub_19393C0F0();
LABEL_11:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_19349C1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  result = type metadata accessor for DeviceMetadata();
  v9 = result;
  v10 = (v3 + *(result + 28));
  if (v10[1])
  {
    v11 = *v10;
    result = OUTLINED_FUNCTION_4_7();
    v5 = v4;
  }

  if (!v5)
  {
    v12 = (v3 + v9[8]);
    if (!v12[1] || (v13 = *v12, result = OUTLINED_FUNCTION_4_7(), (v5 = v4) == 0))
    {
      v14 = (v3 + v9[9]);
      v15 = *v14;
      v16 = *(v14 + 8);
      v19 = *v14;
      v20 = v16;
      sub_19349B4D4();
      result = sub_19393C550();
      if ((result & 1) != 0 || (v19 = v15, v20 = v16, v4 = v5, result = sub_193447324(&v19, 3, a2, &type metadata for DeviceMetadata.DevicePlatform, a3, &off_1F07BD820), !v5))
      {
        v17 = (v3 + v9[10]);
        if (!v17[1] || (v18 = *v17, result = OUTLINED_FUNCTION_4_7(), !v4))
        {
          if (*(v3 + v9[11]) != 2)
          {
            return sub_19393C2E0();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_19349C344()
{
  OUTLINED_FUNCTION_12();
  v0 = *aDevicemetadata_0;

  return v0;
}

uint64_t sub_19349C3EC()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8738);
  __swift_project_value_buffer(v2, qword_1EAEA8738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_9_8(v8, xmmword_193951270);
  *v1 = 0;
  *v0 = "DevicePlatformUnknown";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v14 = 1;
  v15 = OUTLINED_FUNCTION_0_0(v13, "DevicePlatformiPad");
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v17 = 2;
  *v16 = "DevicePlatformiPhone";
  v16[1] = 20;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v20 = 3;
  v21 = OUTLINED_FUNCTION_0_0(v19, "DevicePlatformMacDesktop");
  (v12)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v23 = 4;
  v24 = OUTLINED_FUNCTION_0_0(v22, "DevicePlatformMacPortable");
  (v12)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 5 * v5);
  *v26 = 5;
  v27 = OUTLINED_FUNCTION_0_0(v25, "DevicePlatformTV");
  (v12)(v27);
  v28 = (v1 + 6 * v5);
  v29 = v28 + dword_1EAEA8770;
  *v28 = 6;
  v30 = OUTLINED_FUNCTION_0_0(v29, "DevicePlatformWatch");
  (v12)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v1 + 7 * v5);
  *v32 = 7;
  *v31 = "DevicePlatformHomePod";
  v31[1] = 21;
  v33 = OUTLINED_FUNCTION_1_3(v31);
  (v12)(v33);
  v34 = OUTLINED_FUNCTION_3_1(&v1[v5]);
  *v35 = 8;
  *v34 = "DevicePlatformVision";
  *(v34 + 8) = 20;
  *(v34 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  return sub_19393C410();
}

uint64_t sub_19349C6F4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_19393C420();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_10();
  v7 = *(v6 + 16);

  return v7(a3);
}

uint64_t sub_19349C79C()
{
  OUTLINED_FUNCTION_8_4();
  v1 = sub_19393BE00();

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t DeviceMetadata.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for DeviceMetadata();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for DeviceMetadata()
{
  result = qword_1ED50E4B0;
  if (!qword_1ED50E4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeviceMetadata.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for DeviceMetadata();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t DeviceMetadata.name.getter()
{
  v0 = type metadata accessor for DeviceMetadata();
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceMetadata.name.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_5_16() + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t DeviceMetadata.build.getter()
{
  v0 = type metadata accessor for DeviceMetadata();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceMetadata.build.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_5_16() + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t DeviceMetadata.platform.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for DeviceMetadata();
  v3 = (v1 + *(result + 36));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t DeviceMetadata.platform.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DeviceMetadata();
  v5 = v1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DeviceMetadata.supplementalBuild.getter()
{
  v0 = type metadata accessor for DeviceMetadata();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceMetadata.supplementalBuild.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_5_16() + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t DeviceMetadata.rapidSecurityResponsePreReboot.setter(char a1)
{
  result = type metadata accessor for DeviceMetadata();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_19349CCF8@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceMetadata.DevicePlatform.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19349CD20@<X0>(char **a1@<X8>)
{
  result = static DeviceMetadata.DevicePlatform.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19349CD48()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_19349CD54();
}

uint64_t sub_19349CD54()
{
  sub_19393CAB0();
  v0 = DeviceMetadata.DevicePlatform.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_19349CDB0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_19349CDBC();
}

uint64_t sub_19349CE00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_19349CE0C();
}

uint64_t sub_19349CE0C()
{
  sub_19393CAB0();
  v0 = DeviceMetadata.DevicePlatform.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_19349CE64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_19349CE80();
}

uint64_t DeviceMetadata.hashValue.getter()
{
  sub_19393CAB0();
  DeviceMetadata.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19349CF20()
{
  sub_19393CAB0();
  DeviceMetadata.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19349CF60()
{
  result = qword_1EAE3AD10;
  if (!qword_1EAE3AD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AD18, &qword_1939512F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AD10);
  }

  return result;
}

unint64_t sub_19349CFCC()
{
  result = qword_1EAE3AD20;
  if (!qword_1EAE3AD20)
  {
    type metadata accessor for DeviceMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AD20);
  }

  return result;
}

void sub_19349D050()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED506698);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19349D140()
{
  if (!qword_1ED5082C0)
  {
    sub_19393BE00();
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED5082C0);
    }
  }
}

void sub_19349D198()
{
  if (!qword_1ED5082B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AA08, &qword_193951470);
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED5082B8);
    }
  }
}

void sub_19349D1FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_19393C860();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *static ToolKitToolToolDefinition.Version1.fromSerializedBytes(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = a3;
  v5 = sub_19393C0C0();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_19393C0B0();
  sub_19393C0A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD28, &qword_1939514B8);
  v25 = a1;
  v26 = a2;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  (*(v8 + 16))(v13, v16, v5);
  sub_193450688(a1, a2);
  sub_19349DAF4(&qword_1EAE3A798, &qword_1EAE3AD28, &qword_1939514B8);
  v17 = v28;
  sub_19393C2A0();
  v18 = (v8 + 8);
  if (v17)
  {
    return (*v18)(v16, v5);
  }

  (*v18)(v16, v5);
  return memcpy(v21, v27, 0x278uLL);
}

uint64_t ToolKitToolToolDefinition.Version1.toSerializedBytes()()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v3, v0, sizeof(v3));
  sub_19349D51C(__dst, v2);
  sub_1934470C8(v3, &type metadata for ToolKitToolToolDefinition.Version1, __src);
  memcpy(v3, __src, sizeof(v3));
  OUTLINED_FUNCTION_9_25();
  OUTLINED_FUNCTION_8_16(&qword_1EAE3A798);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_1_19();
  memcpy(v2, v3, sizeof(v2));
  sub_19349D578(v2);
  return OUTLINED_FUNCTION_2_23();
}

uint64_t sub_19349D578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD28, &qword_1939514B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ToolKitToolTypeDefinition.Version1.toSerializedBytes()()
{
  OUTLINED_FUNCTION_7_10();
  sub_1934470C8(&v1, &type metadata for ToolKitToolTypeDefinition.Version1, &v2);
  v1 = v2;
  OUTLINED_FUNCTION_9_25();
  OUTLINED_FUNCTION_8_16(&qword_1EAE3AD38);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_1_19();

  return OUTLINED_FUNCTION_2_23();
}

uint64_t sub_19349D6D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X4>, void *a6@<X8>)
{
  v11 = sub_19393C0C0();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_11();
  sub_19393C0A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(v14 + 16))(v19, v6, v11);
  sub_193450688(a1, a2);
  sub_19349DAF4(a5, a3, a4);
  sub_19393C2A0();
  if (v30)
  {
    v21 = *(v14 + 8);
    v22 = OUTLINED_FUNCTION_5_7();
    return v23(v22);
  }

  else
  {
    v25 = *(v14 + 8);
    v26 = OUTLINED_FUNCTION_5_7();
    result = v27(v26);
    *a6 = v31;
  }

  return result;
}

uint64_t ToolKitToolTypedValue.toSerializedBytes()()
{
  OUTLINED_FUNCTION_7_10();
  sub_1934470C8(&v1, &type metadata for ToolKitToolTypedValue, &v2);
  v1 = v2;
  OUTLINED_FUNCTION_9_25();
  OUTLINED_FUNCTION_8_16(&qword_1EAE3A7A0);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_1_19();

  return OUTLINED_FUNCTION_2_23();
}

double static ToolKitToolTypedValue.ID.fromSerializedBytes(_:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_19393C0C0();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_11();
  sub_19393C0A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD48, &qword_1939514D0);
  (*(v9 + 16))(v14, v3, v6);
  sub_193450688(a1, a2);
  sub_19349DAF4(&qword_1EAE3AD50, &qword_1EAE3AD48, &qword_1939514D0);
  sub_19393C2A0();
  if (v27)
  {
    v16 = *(v9 + 8);
    v17 = OUTLINED_FUNCTION_5_7();
    v18(v17);
  }

  else
  {
    v20 = *(v9 + 8);
    v21 = OUTLINED_FUNCTION_5_7();
    v22(v21);
    result = *&v24;
    *a3 = v24;
    *(a3 + 16) = v25;
    *(a3 + 32) = v26;
  }

  return result;
}

uint64_t sub_19349DAF4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t ToolKitToolTypedValue.ID.toSerializedBytes()()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  *&v5 = *v0;
  *(&v5 + 1) = v1;
  v6 = *(v0 + 16);
  v7 = v2;
  sub_193450268(v5, v1);
  sub_193437C90(v6);

  sub_1934470C8(&v5, &type metadata for ToolKitToolTypedValue.ID, v8);
  v5 = v8[0];
  v6 = v8[1];
  v7 = v9;
  OUTLINED_FUNCTION_9_25();
  OUTLINED_FUNCTION_8_16(&qword_1EAE3AD50);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_1_19();
  v3 = v6;
  sub_19345012C(v5, *(&v5 + 1));
  sub_193444060(v3);

  return OUTLINED_FUNCTION_2_23();
}

uint64_t sub_19349DC38(uint64_t a1, uint64_t a2)
{
  v5 = a1 == 0x6973736553776172 && a2 == 0xEC00000064496E6FLL;
  if (v5 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    sub_19393BE60();
    return sub_1934948FC();
  }

  v6 = a1 == (OUTLINED_FUNCTION_1_20() & 0xFFFFFFFFFFFFLL | 0x6449000000000000) && a2 == 0xE800000000000000;
  if (v6 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v7 = *(type metadata accessor for SageMetadata() + 20);
LABEL_13:
    v8 = (v2 + v7);
    v17 = *v8;
    v18 = v8[1];
    return sub_1934948FC();
  }

  v11 = a1 == (OUTLINED_FUNCTION_1_20() & 0xFFFFFFFFFFFFLL | 0x6552000000000000) && a2 == v10;
  if (v11 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v7 = *(type metadata accessor for SageMetadata() + 24);
    goto LABEL_13;
  }

  v13 = a1 == (OUTLINED_FUNCTION_1_20() & 0xFFFFFFFFFFFFLL | 0x6553000000000000) && a2 == v12;
  if (v13 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v7 = *(type metadata accessor for SageMetadata() + 28);
    goto LABEL_13;
  }

  sub_19349AB64();
  swift_allocError();
  v15 = v14;
  *v14 = a1;
  v14[1] = a2;
  v14[5] = type metadata accessor for SageMetadata();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v15 + 2);
  sub_19349DDEC(v2, boxed_opaque_existential_1Tm);
  *(v15 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_19349DDEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SageMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19349DE68()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8750);
  __swift_project_value_buffer(v0, qword_1EAEA8750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rawSessionId";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = *(*(sub_19393C400() - 8) + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  v9 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v9 = "clientId";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v10 = (v5 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "clientRequestId";
  *(v11 + 1) = 15;
  v11[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v12 = (v5 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "clientSessionId";
  *(v13 + 1) = 15;
  v13[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  return sub_19393C410();
}

uint64_t sub_19349E098()
{
  v1 = v0;
  v2 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - v17;
  v32 = "etion8";
  v33 = (v5 + 40);
  v34 = (v5 + 32);
  v36 = v16;
  v37 = v9;
  while (2)
  {
    result = sub_19393C0E0();
    if (v1 || (v20 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        __swift_storeEnumTagSinglePayload(v18, 1, 1, v2);
        sub_193497890(v18);
        v21 = v35;
        sub_193458F7C(v18, v16);
        OUTLINED_FUNCTION_9_14(v16);
        if (!v22)
        {
          sub_193458FEC(v18);
          (*v34)(v9, v16, v2);
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_7_11();
        result = OUTLINED_FUNCTION_9_14(v21);
        if (!v22)
        {
          sub_193458FEC(v18);
          (*v34)(v9, v21, v2);
          OUTLINED_FUNCTION_9_14(v16);
          if (!v22)
          {
            sub_193458FEC(v16);
          }

LABEL_32:
          (*v33)(v40, v9, v2);
          continue;
        }

        __break(1u);
        return result;
      case 2:
        OUTLINED_FUNCTION_1_21();
        v1 = 0;
        if (v39)
        {
          v28 = v38;
        }

        else
        {
          v28 = 0;
        }

        if (v39)
        {
          v29 = v39;
        }

        else
        {
          v29 = 0xE000000000000000;
        }

        v30 = (v40 + *(type metadata accessor for SageMetadata() + 20));
        v31 = v30[1];

        *v30 = v28;
        v30[1] = v29;
        v16 = v36;
        v9 = v37;
        continue;
      case 3:
        OUTLINED_FUNCTION_1_21();
        v1 = 0;
        if (v39)
        {
          v23 = v38;
        }

        else
        {
          v23 = 0;
        }

        if (v39)
        {
          v24 = v39;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        v25 = *(type metadata accessor for SageMetadata() + 24);
        goto LABEL_24;
      case 4:
        OUTLINED_FUNCTION_1_21();
        v1 = 0;
        if (v39)
        {
          v23 = v38;
        }

        else
        {
          v23 = 0;
        }

        if (v39)
        {
          v24 = v39;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        v25 = *(type metadata accessor for SageMetadata() + 28);
LABEL_24:
        v26 = (v40 + v25);
        v27 = *(v40 + v25 + 8);

        *v26 = v23;
        v26[1] = v24;
        v16 = v36;
        v9 = v37;
        continue;
      default:
        continue;
    }
  }
}