void sub_19349E428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19349E564(v3, a1, a2, a3);
  if (!v4)
  {
    v5 = type metadata accessor for SageMetadata();
    v6 = (v3 + v5[5]);
    if (*v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6[1] == 0xE000000000000000;
    }

    if (!v7 && (OUTLINED_FUNCTION_3_18() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_7();
    }

    v8 = (v3 + v5[6]);
    if (*v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8[1] == 0xE000000000000000;
    }

    if (!v9 && (OUTLINED_FUNCTION_3_18() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_7();
    }

    v10 = (v3 + v5[7]);
    if (*v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10[1] == 0xE000000000000000;
    }

    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_7();
    }
  }
}

void sub_19349E564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = a4;
  v19[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v19 - v7;
  v9 = sub_19393BE60();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v9);
  OUTLINED_FUNCTION_7_11();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_19344F8E0();
    v17 = sub_19393C550();
    v18 = *(v12 + 8);
    v18(v16, v9);
    v18(v8, v9);
    if ((v17 & 1) == 0)
    {
      sub_19344652C();
    }
  }
}

uint64_t sub_19349E730()
{
  OUTLINED_FUNCTION_12();
  v0 = *aSagemetadata_3;

  return v0;
}

uint64_t sub_19349E774@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE46FB0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEA8750);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t SageMetadata.rawSessionId.getter()
{
  v0 = *(*(sub_19393BE60() - 8) + 16);
  v1 = OUTLINED_FUNCTION_13_0();

  return v2(v1);
}

uint64_t SageMetadata.rawSessionId.setter()
{
  OUTLINED_FUNCTION_3_4();
  v2 = sub_19393BE60();
  v3 = *(*(v2 - 8) + 40);

  return v3(v1, v0, v2);
}

uint64_t SageMetadata.clientId.getter()
{
  v0 = type metadata accessor for SageMetadata();
  OUTLINED_FUNCTION_4_4(*(v0 + 20));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t type metadata accessor for SageMetadata()
{
  result = qword_1ED50E4C0;
  if (!qword_1ED50E4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SageMetadata.clientId.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_6_12() + 20));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t (*SageMetadata.clientId.modify())(void, void, void)
{
  OUTLINED_FUNCTION_3_4();
  v0 = *(type metadata accessor for SageMetadata() + 20);
  return nullsub_1;
}

uint64_t SageMetadata.clientRequestId.getter()
{
  v0 = type metadata accessor for SageMetadata();
  OUTLINED_FUNCTION_4_4(*(v0 + 24));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SageMetadata.clientRequestId.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_6_12() + 24));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t (*SageMetadata.clientRequestId.modify())(void, void, void)
{
  OUTLINED_FUNCTION_3_4();
  v0 = *(type metadata accessor for SageMetadata() + 24);
  return nullsub_1;
}

uint64_t SageMetadata.clientSessionId.getter()
{
  v0 = type metadata accessor for SageMetadata();
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SageMetadata.clientSessionId.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_6_12() + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t (*SageMetadata.clientSessionId.modify())(void, void, void)
{
  OUTLINED_FUNCTION_3_4();
  v0 = *(type metadata accessor for SageMetadata() + 28);
  return nullsub_1;
}

int *SageMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  sub_19393BE10();
  v6 = sub_19393BE60();
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(*(v6 - 8) + 32);
    v9 = OUTLINED_FUNCTION_13_0();
    v10(v9);
    result = type metadata accessor for SageMetadata();
    v11 = (a1 + result[5]);
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v12 = (a1 + result[6]);
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v13 = (a1 + result[7]);
    *v13 = 0;
    v13[1] = 0xE000000000000000;
  }

  return result;
}

uint64_t static SageMetadata.== infix(_:_:)()
{
  if ((sub_19393BE40() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for SageMetadata();
  OUTLINED_FUNCTION_1_9(v0[5]);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_9(v0[6]);
  v6 = v3 && v4 == v5;
  if (!v6 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_9(v0[7]);
  if (v3 && v7 == v8)
  {
    return 1;
  }

  return sub_19393CA30();
}

uint64_t SageMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_3_4();
  sub_19393BE60();
  OUTLINED_FUNCTION_0_11();
  sub_19349EFC4(v0, v1);
  sub_19393C540();
  v2 = type metadata accessor for SageMetadata();
  OUTLINED_FUNCTION_2_24(v2[5]);
  sub_19393C640();
  OUTLINED_FUNCTION_2_24(v2[6]);
  sub_19393C640();
  OUTLINED_FUNCTION_2_24(v2[7]);

  return sub_19393C640();
}

uint64_t SageMetadata.hashValue.getter()
{
  sub_19393CAB0();
  sub_19393BE60();
  OUTLINED_FUNCTION_0_11();
  sub_19349EFC4(v0, v1);
  sub_19393C540();
  v2 = type metadata accessor for SageMetadata();
  OUTLINED_FUNCTION_2_24(v2[5]);
  sub_19393C640();
  OUTLINED_FUNCTION_2_24(v2[6]);
  sub_19393C640();
  OUTLINED_FUNCTION_2_24(v2[7]);
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t sub_19349EECC(uint64_t a1, int *a2)
{
  sub_19393CAB0();
  sub_19393BE60();
  OUTLINED_FUNCTION_0_11();
  sub_19349EFC4(v3, v4);
  sub_19393C540();
  OUTLINED_FUNCTION_2_24(a2[5]);
  sub_19393C640();
  OUTLINED_FUNCTION_2_24(a2[6]);
  sub_19393C640();
  OUTLINED_FUNCTION_2_24(a2[7]);
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t sub_19349EFC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19349F038()
{
  result = sub_19393BE60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19349F0B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = a1 == 0xD00000000000001ELL && 0x8000000193A14310 == a2;
  if (v6 || (OUTLINED_FUNCTION_0_12() & 1) != 0)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v7 = *(v5 + 16);
      return sub_1934948FC();
    }
  }

  else
  {
    v9 = a1 == 0xD00000000000001ELL && 0x8000000193A14330 == a2;
    if (v9 || (OUTLINED_FUNCTION_0_12()) && v5 < 0)
    {
      v11 = *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      return sub_1934948FC();
    }
  }

  sub_19349AB64();
  swift_allocError();
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 40) = &type metadata for MonotonicTimestampValue;
  *(v10 + 16) = v5;
  *(v10 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_19349F1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = a1 == 0x73736553746F6F62 && a2 == 0xEF444955556E6F69;
  if (v7 || (sub_19393CA30() & 1) != 0)
  {
    sub_19393BE60();
    return sub_1934948FC();
  }

  else
  {
    v9 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v9 || (sub_19393CA30() & 1) != 0)
    {
      v13 = *(v3 + *(type metadata accessor for MonotonicTimestamp() + 20));

      sub_193494798(&type metadata for MonotonicTimestampValue, &off_1F07BD948, a3);
    }

    else
    {
      sub_19349AB64();
      swift_allocError();
      v11 = v10;
      *v10 = a1;
      v10[1] = a2;
      v10[5] = type metadata accessor for MonotonicTimestamp();
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v11 + 2);
      sub_19349F368(v3, boxed_opaque_existential_1Tm);
      *(v11 + 48) = 1;
      swift_willThrow();
    }
  }
}

uint64_t sub_19349F368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTimestamp();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19349F418()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEA8768);
  __swift_project_value_buffer(v2, &qword_1EAEA8768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v6, xmmword_19394FBE0);
  *v0 = "suspendingNanosecondsSinceBoot";
  *(v0 + 8) = 30;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_9_10(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = v1 + v5 + dword_1EAEA87A0;
  *(v1 + v5) = 2;
  *v11 = "continuousNanosecondsSinceBoot";
  *(v11 + 8) = 30;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  return sub_19393C410();
}

uint64_t sub_19349F59C()
{
  v3 = v1;
  while (1)
  {
    result = sub_19393C0E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_5_17();
      v3 = 0;
      v8 = *v0;

      v9 = OUTLINED_FUNCTION_3_19();
      *(v9 + 16) = v2;
      *v0 = v9 | 0x8000000000000000;
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_17();
      v3 = 0;
      v6 = *v0;

      v7 = OUTLINED_FUNCTION_3_19();
      *(v7 + 16) = v2;
      *v0 = v7;
    }
  }

  return result;
}

uint64_t sub_19349F6C8()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8780);
  __swift_project_value_buffer(v2, qword_1EAEA8780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v6, xmmword_19394FBE0);
  *v0 = "bootSessionUUID";
  *(v0 + 8) = 15;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_9_10(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = v1 + v5 + dword_1EAEA87B8;
  *(v1 + v5) = 2;
  *v11 = "value";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  return sub_19393C410();
}

uint64_t sub_19349F84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_19393BE60();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v38 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v37 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v37 - v22;
  v37[1] = "etion8";
  v39 = (v10 + 40);
  v40 = (v10 + 32);
  v41 = v37 - v22;
  v42 = a1;
  while (1)
  {
    result = sub_19393C0E0();
    if (v3 || (v25 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v44 = 0xF000000000000007;
      sub_193498018();
      v28 = v44;
      v29 = v21;
      v30 = v7;
      v31 = a2;
      v32 = a3;
      v33 = v14;
      if ((~v44 & 0xF000000000000007) == 0)
      {
        v28 = swift_allocObject();
        *(v28 + 16) = 0;
      }

      v34 = *(type metadata accessor for MonotonicTimestamp() + 20);
      v35 = v43;
      v36 = *(v43 + v34);

      *(v35 + v34) = v28;
      v14 = v33;
      a3 = v32;
      a2 = v31;
      v7 = v30;
      v21 = v29;
      v23 = v41;
    }

    else if (result == 1)
    {
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v7);
      sub_193497890(v23);
      sub_193458F7C(v23, v21);
      OUTLINED_FUNCTION_9_14(v21);
      if (v26)
      {
        v27 = v38;
        OUTLINED_FUNCTION_7_11();
        result = OUTLINED_FUNCTION_9_14(v27);
        if (v26)
        {
          __break(1u);
          return result;
        }

        sub_193458FEC(v23);
        (*v40)(v14, v27, v7);
        OUTLINED_FUNCTION_9_14(v21);
        if (!v26)
        {
          sub_193458FEC(v21);
        }
      }

      else
      {
        sub_193458FEC(v23);
        (*v40)(v14, v21, v7);
      }

      (*v39)(v43, v14, v7);
    }
  }

  return result;
}

uint64_t sub_19349FBB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v6 = *a3;
  v7 = *a4;

  return OUTLINED_FUNCTION_13_5();
}

uint64_t sub_19349FC30@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_19393C420();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_9_10(v5);
  v7 = *(v6 + 16);

  return v7(a3);
}

uint64_t MonotonicTimestampValue.hashValue.getter()
{
  v2 = *v0;
  sub_19393CAB0();
  MonotonicTimestampValue.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19349FD38()
{
  v2 = *v0;
  sub_19393CAB0();
  MonotonicTimestampValue.hash(into:)();
  return sub_19393CB00();
}

uint64_t MonotonicTimestamp.bootSessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393BE60();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MonotonicTimestamp.bootSessionUUID.setter()
{
  OUTLINED_FUNCTION_3_4();
  v2 = sub_19393BE60();
  v3 = *(*(v2 - 8) + 40);

  return v3(v1, v0, v2);
}

uint64_t MonotonicTimestamp.value.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for MonotonicTimestamp() + 20));
}

uint64_t MonotonicTimestamp.value.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for MonotonicTimestamp() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = v2;
  return result;
}

uint64_t (*MonotonicTimestamp.value.modify())(void, void, void)
{
  OUTLINED_FUNCTION_3_4();
  v0 = *(type metadata accessor for MonotonicTimestamp() + 20);
  return nullsub_1;
}

uint64_t MonotonicTimestamp.hash(into:)()
{
  OUTLINED_FUNCTION_3_4();
  sub_19393BE60();
  OUTLINED_FUNCTION_0_13();
  sub_1934A012C(v1, v2);
  sub_19393C540();
  v4 = *(v0 + *(type metadata accessor for MonotonicTimestamp() + 20));
  return MonotonicTimestampValue.hash(into:)();
}

uint64_t MonotonicTimestamp.hashValue.getter()
{
  sub_19393CAB0();
  sub_19393BE60();
  OUTLINED_FUNCTION_0_13();
  sub_1934A012C(v0, v1);
  sub_19393C540();
  v2 = type metadata accessor for MonotonicTimestamp();
  OUTLINED_FUNCTION_3_20(*(v2 + 20));
  return sub_19393CB00();
}

uint64_t sub_1934A0058(uint64_t a1, uint64_t a2)
{
  sub_19393CAB0();
  sub_19393BE60();
  OUTLINED_FUNCTION_0_13();
  sub_1934A012C(v3, v4);
  sub_19393C540();
  OUTLINED_FUNCTION_3_20(*(a2 + 20));
  return sub_19393CB00();
}

uint64_t sub_1934A012C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1934A0174(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
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

void *sub_1934A01C8(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      return OUTLINED_FUNCTION_2_11(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

uint64_t sub_1934A0240()
{
  result = sub_19393BE60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s16GenerativeModelsOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s19GenerativeFunctionsOwst(_BYTE *result, int a2, int a3)
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

unint64_t static Library.Streams.GenerativeModels.GenerativeFunctions.Instrumentation.attribute(_:)(void (*a1)(void))
{
  result = sub_1934A0544(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934A057C(void (*a1)(void))
{
  result = sub_1934A0544(a1);
  if (!v1)
  {
  }

  return result;
}

_BYTE *_s15InstrumentationOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenerativeFunctionsInstrumentationEvent.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v29 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v29);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADA0, &qword_193951890);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  OUTLINED_FUNCTION_10_9();
  sub_19344A4A0(v1, v16, v23);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v24, &qword_1EAE3ADA0, &qword_193951890);
  sub_19393C250();
  (*(v4 + 8))(v9, v29);
  sub_19344E6DC(v22, &qword_1EAE3ADA0, &qword_193951890);
  OUTLINED_FUNCTION_27();
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

void static GenerativeFunctionsInstrumentationEvent.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADA0, &qword_193951890);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE3ADA0, &qword_193951890);
  sub_19393C260();
  if (!v20)
  {
    sub_1934A0974(v32, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934A0974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static GenerativeFunctionsInstrumentationEvent.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v40 = v2;
  v41 = v1;
  v39 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADA0, &qword_193951890);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = sub_19393C0C0();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v38 - v26;
  if (*sub_193443894() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v19 + 16))(v24, v27, v16);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v28, v29, v30);
    sub_19393C280();
    (*(v19 + 8))(v27, v16);
    if (!v0)
    {
      v32 = v40;
      sub_1934A0974(v15, v40);
      v33 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v31 = v5;
    *(v31 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934A0D04(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = a1 == OUTLINED_FUNCTION_105() && a2 == v7;
  if (v8 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v9 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 28);
    v10 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
    v11 = &off_1F07BE078;
LABEL_7:
    sub_193494798(v10, v11, a3);
    return;
  }

  v12 = a1 == OUTLINED_FUNCTION_96_6() && a2 == 0xE900000000000065;
  if (v12 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
  {
    v13 = (v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 32));
    v15 = *v13;
    v14 = v13[1];
    v38[0] = v15;
    v38[1] = v14;
LABEL_14:
    sub_1934948FC();
    return;
  }

  v16 = a1 == OUTLINED_FUNCTION_115_1() && a2 == 0xE700000000000000;
  if (v16 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v17 = v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 36);
    if ((*(v17 + 9) & 1) == 0)
    {
      v18 = *(v17 + 8);
      v38[0] = *v17;
      LOBYTE(v38[1]) = v18 & 1;
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  v19 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v19 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v20 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 40);
    v10 = type metadata accessor for MonotonicTimestamp();
    v11 = &off_1F07BD958;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v22 = a1 == 0xD000000000000016 && v21 == a2;
  if (v22 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v38[0] = *(v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 44));
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_84_1();
  v24 = a1 == OUTLINED_FUNCTION_111_3() && a2 == v23;
  if (v24 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v38[0] = *(v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 48));
    goto LABEL_14;
  }

  v25 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v25 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v26 = *(v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 52));
    if ((~v26 & 0xF000000000000007) != 0)
    {
      v38[0] = v26;
      v10 = &type metadata for GenerativeFunctionsInstrumentationMetadata;
      v11 = &off_1F07BE0A8;
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  v27 = a1 == (OUTLINED_FUNCTION_97() & 0xFFFF0000FFFFFFFFLL | 0x7200000000) && a2 == 0xE500000000000000;
  if (v27 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v28 = *(v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 56));
    if ((~v28 & 0xF000000000000007) != 0)
    {
      v38[0] = v28;
      v10 = &type metadata for GenerativeFunctionsInstrumentationError;
      v11 = &off_1F07BE238;
      goto LABEL_7;
    }

LABEL_21:
    OUTLINED_FUNCTION_104();
    return;
  }

  OUTLINED_FUNCTION_38();
  v30 = a1 == 0xD000000000000014 && v29 == a2;
  if (v30 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v38[0] = *(v3 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 60));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADA8, &qword_193951898);
    goto LABEL_14;
  }

  v31 = a1 == 0x6669746E6564695FLL && a2 == 0xEE00746553726569;
  if (v31 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v32 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 64);
    memcpy(__dst, (v3 + v32), sizeof(__dst));
    memcpy(__src, (v3 + v32), sizeof(__src));
    sub_19344FABC(__dst, v38);
    sub_193494798(&type metadata for GenerativeFunctionsInstrumentationEvent.IdentifierSet, &off_1F07BE098, a3);
    memcpy(v38, __src, sizeof(v38));
    sub_1934500D8(v38);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    OUTLINED_FUNCTION_106_0();
    *v33 = a1;
    v33[1] = a2;
    a3[5] = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
    __swift_allocate_boxed_opaque_existential_1Tm(a3 + 2);
    OUTLINED_FUNCTION_10_9();
    sub_19344A4A0(v3, v34, v35);
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }
}

void sub_1934A115C()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_105();
  v7 = *v0;
  v6 = v0[1];
  v8 = v2 == v3 && v4 == v5;
  if (v8 || (v9 = v4, v11 = v0[2], v10 = v0[3], (OUTLINED_FUNCTION_92_1() & 1) != 0) || (v2 == OUTLINED_FUNCTION_112_2() ? (v12 = v9 == 0xE700000000000000) : (v12 = 0), v12 || (OUTLINED_FUNCTION_92_1() & 1) != 0))
  {
    sub_1934948FC();
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    v14 = v13;
    *v13 = v2;
    v13[1] = v9;
    v13[5] = &type metadata for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion;
    OUTLINED_FUNCTION_95();
    v15 = swift_allocObject();
    v14[2] = v15;
    v15[2] = v7;
    v15[3] = v6;
    v15[4] = v11;
    v15[5] = v10;
    OUTLINED_FUNCTION_90_3();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1934A129C()
{
  OUTLINED_FUNCTION_26();
  v126 = v0;
  v127 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_6();
  v122 = v8 - v9;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v120 - v11;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v120 - v13;
  OUTLINED_FUNCTION_47_3();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v120 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v120 - v18;
  v20 = sub_19393BE60();
  v21 = OUTLINED_FUNCTION_0(v20);
  v124 = v22;
  v125 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v120 = (v25 - v26);
  OUTLINED_FUNCTION_47_3();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v120 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v120 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v120 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v120 - v37;
  OUTLINED_FUNCTION_38();
  v40 = v5 == 0xD000000000000017 && v39 == v3;
  if (v40 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v41 = v126;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_21();
  v46 = v5 == v45 && v44 == v3;
  if (v46 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v42 = v126[3];
    if (v42)
    {
      v43 = v126[2];
      goto LABEL_9;
    }

LABEL_47:
    v64 = v127;
    *v127 = 0u;
    *(v64 + 1) = 0u;
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_3_21();
  v49 = v48 + 4;
  v50 = v5 == v48 + 4 && v47 == v3;
  if (v50 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v42 = v126[5];
    if (v42)
    {
      v43 = v126[4];
      goto LABEL_9;
    }

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_3_21();
  v53 = v5 == v52 - 1 && v51 == v3;
  if (v53 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v42 = v126[7];
    if (v42)
    {
      v43 = v126[6];
      goto LABEL_9;
    }

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_3_21();
  v56 = v5 == v55 + 8 && v54 == v3;
  if (v56 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v42 = v126[9];
    if (v42)
    {
      v43 = v126[8];
      goto LABEL_9;
    }

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_3_21();
  v59 = v5 == v58 + 10 && v57 == v3;
  if (v59 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v60 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
    v61 = OUTLINED_FUNCTION_83_4(*(v60 + 36));
    sub_193458F7C(v61, v19);
    v62 = v125;
    if (__swift_getEnumTagSinglePayload(v19, 1, v125) != 1)
    {
      OUTLINED_FUNCTION_75_6();
      v65(v38, v19, v62);
      sub_1934948FC();
      (*(v36 + 1))(v38, v62);
      goto LABEL_48;
    }

    v63 = v19;
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_3_21();
  v68 = v5 == v67 + 7 && v66 == v3;
  if (v68 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v69 = v126 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 40);
    if ((v69[8] & 1) == 0)
    {
      v128 = *v69;
      goto LABEL_10;
    }

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_3_21();
  v72 = v5 == v71 - 6 && v70 == v3;
  if (!v72 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_21();
    v76 = v5 == v75 + 5 && v74 == v3;
    if (v76 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      v73 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 48);
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_3_21();
    v79 = v5 == v78 + 15 && v77 == v3;
    if (v79 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      v80 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
      v81 = OUTLINED_FUNCTION_83_4(*(v80 + 52));
      sub_193458F7C(v81, v17);
      OUTLINED_FUNCTION_65_4(v17);
      if (!v40)
      {
        v83 = v124;
        v82 = v125;
        (*(v124 + 32))(v36, v17, v125);
        sub_1934948FC();
        (*(v83 + 8))(v36, v82);
        goto LABEL_48;
      }

      v63 = v17;
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_3_21();
    v86 = v5 == v85 + 2 && v84 == v3;
    if (v86 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      v87 = (v126 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 56));
      v88 = v87[1];
      if (v88)
      {
        v90 = v87[2];
        v89 = v87[3];
        v128 = *v87;
        v129 = v88;
        v130 = v90;
        v131 = v89;
        sub_193494798(&type metadata for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion, &off_1F07BE068, v127);
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    OUTLINED_FUNCTION_3_21();
    v93 = v92 + 6;
    v94 = v5 == v92 + 6 && v91 == v3;
    if (v94 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      v95 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
      v96 = OUTLINED_FUNCTION_83_4(*(v95 + 60));
      v97 = v123;
      sub_193458F7C(v96, v123);
      OUTLINED_FUNCTION_65_4(v97);
      if (!v40)
      {
        v98 = v124;
        v99 = v125;
        (*(v124 + 32))(v33, v123, v125);
        sub_1934948FC();
        (*(v98 + 8))(v33, v99);
        goto LABEL_48;
      }

      v63 = v123;
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_38();
    v101 = v5 == v93 && v100 == v3;
    if (v101 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      v102 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
      v103 = OUTLINED_FUNCTION_83_4(*(v102 + 64));
      v104 = v121;
      sub_193458F7C(v103, v121);
      OUTLINED_FUNCTION_65_4(v104);
      if (!v40)
      {
        OUTLINED_FUNCTION_75_6();
        v106 = v30;
        v107 = v121;
LABEL_109:
        v114 = v125;
        v105(v106, v107, v125);
        sub_1934948FC();
        (*(v93 + 8))(v30, v114);
        goto LABEL_48;
      }

      v63 = v121;
    }

    else
    {
      OUTLINED_FUNCTION_3_21();
      v110 = v5 == v109 + 14 && v108 == v3;
      if (!v110 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
      {
        OUTLINED_FUNCTION_38();
        v116 = v5 == v49 && v115 == v3;
        if (!v116 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          v118 = v117;
          *v117 = v5;
          v117[1] = v3;
          v117[5] = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v118 + 2);
          sub_19344A4A0(v126, boxed_opaque_existential_1Tm, type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers);
          *(v118 + 48) = 1;
          swift_willThrow();

          goto LABEL_48;
        }

        v73 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 72);
        goto LABEL_63;
      }

      v111 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
      v112 = OUTLINED_FUNCTION_83_4(*(v111 + 68));
      v113 = v122;
      sub_193458F7C(v112, v122);
      OUTLINED_FUNCTION_65_4(v113);
      if (!v40)
      {
        OUTLINED_FUNCTION_75_6();
        v30 = v120;
        v106 = v120;
        v107 = v122;
        goto LABEL_109;
      }

      v63 = v122;
    }

LABEL_46:
    sub_19344E6DC(v63, &qword_1EAE3AA88, &qword_19394F9C0);
    goto LABEL_47;
  }

  v73 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0) + 44);
LABEL_63:
  v41 = (v126 + v73);
LABEL_7:
  v42 = v41[1];
  if (!v42)
  {
    goto LABEL_47;
  }

  v43 = *v41;
LABEL_9:
  v128 = v43;
  v129 = v42;
LABEL_10:
  sub_1934948FC();
LABEL_48:
  OUTLINED_FUNCTION_27();
}

void sub_1934A1B0C(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_102_3();
  v25 = *(v3 + 48);
  v9 = a1 == v8 && a2 == v7;
  if (v9 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v10 = *(&v22 + 1);
    if (*(&v22 + 1))
    {
      v11 = v22;
LABEL_8:
      v21[0] = v11;
      v21[1] = v10;
LABEL_9:
      sub_1934948FC();
      return;
    }
  }

  else
  {
    v12 = a1 == 0x656D796F6C706564 && a2 == 0xEC0000006449746ELL;
    if (v12 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      if ((BYTE4(v23) & 1) == 0)
      {
        LODWORD(v21[0]) = v23;
        goto LABEL_9;
      }
    }

    else
    {
      v13 = a1 == 0x656D697265707865 && a2 == 0xEC0000006449746ELL;
      if (v13 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v10 = v24;
        if (v24)
        {
          v11 = *(&v23 + 1);
          goto LABEL_8;
        }
      }

      else
      {
        OUTLINED_FUNCTION_79_5(0x6D7461657274);
        if (!v9 || a2 != v14)
        {
          OUTLINED_FUNCTION_0_14();
          if ((sub_19393CA30() & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_11();
            v16 = swift_allocError();
            OUTLINED_FUNCTION_9_3(v16, v17);
            *(v18 + 40) = &type metadata for GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo;
            OUTLINED_FUNCTION_98_2();
            v19 = swift_allocObject();
            *(v3 + 16) = v19;
            *(v19 + 64) = v25;
            v20 = v24;
            *(v19 + 32) = v23;
            *(v19 + 48) = v20;
            *(v19 + 16) = v22;
            OUTLINED_FUNCTION_26_0();

            sub_1934A82B0(&v22, v21);
            return;
          }
        }

        v10 = v25;
        if (v25)
        {
          v11 = *(&v24 + 1);
          goto LABEL_8;
        }
      }
    }
  }

  *a3 = 0u;
  a3[1] = 0u;
}

uint64_t sub_1934A1D1C()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, sizeof(__dst));
  OUTLINED_FUNCTION_8_17();
  v4 = v4 && v3 == v0;
  if (v4 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[0];
LABEL_7:
    v48[0] = v5;
    v6 = &unk_1EAE3ABB0;
    v7 = &unk_193950BB8;
LABEL_8:
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_52_2(v8, v8, v9, v10, v11, v12, v13, v14, v48[0]);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_8_17();
  v17 = v4 && v16 == v0;
  if (v17 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[1];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v19 = v1 == 0xD00000000000001CLL && v18 == v0;
  if (v19 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[2];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v21 = v1 == 0xD000000000000017 && v20 == v0;
  if (v21 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[3];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v23 = v1 == 0xD000000000000020 && v22 == v0;
  if (v23 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[4];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v25 = v1 == 0xD000000000000022 && v24 == v0;
  if (v25 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v48[0] = __dst[5];
    v6 = &unk_1EAE3ADC0;
    v7 = &unk_1939518B0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v27 = v1 == 0xD00000000000001FLL && v26 == v0;
  if (v27 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v48[0] = __dst[6];
    v6 = &unk_1EAE3ADB8;
    v7 = &unk_1939518A8;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v29 = v1 == 0xD000000000000012 && v28 == v0;
  if (v29 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[7];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_89_6();
  v32 = v1 == v31 + 5 && v30 == v0;
  if (v32 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[8];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_89_6();
  v35 = v1 == v34 + 2 && v33 == v0;
  if (v35 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v48[0] = __dst[9];
    v6 = &unk_1EAE3ADB0;
    v7 = &unk_1939518A0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_89_6();
  v38 = v1 == v37 + 6 && v36 == v0;
  if (v38 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[10];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_17();
  v40 = v4 && v39 == v0;
  if (v40 || (OUTLINED_FUNCTION_89_6(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[11];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v42 = v1 == 0xD00000000000001CLL && v41 == v0;
  if (v42 || (OUTLINED_FUNCTION_89_6(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = __dst[12];
    goto LABEL_7;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v43 = swift_allocError();
  OUTLINED_FUNCTION_9_3(v43, v44);
  *(v45 + 40) = &type metadata for GenerativeFunctionsInstrumentationEvent.IdentifierSet;
  v46 = swift_allocObject();
  v47 = OUTLINED_FUNCTION_28_3(v46);
  memcpy(v47, __dst, 0x68uLL);
  OUTLINED_FUNCTION_26_0();

  return sub_19344FABC(__dst, v48);
}

id sub_1934A20DC()
{
  OUTLINED_FUNCTION_7_12();
  v4 = OUTLINED_FUNCTION_114_1();
  v6 = *v0;
  v7 = v2 == v4 && v1 == v5;
  if (v7 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (!(v6 >> 60))
    {
      v155 = *(v6 + 16);
      v160 = *(v6 + 32);
      v163 = *(v6 + 40);
      v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.GenericError;
      v9 = &off_1F07BE0B8;
      return sub_193494798(v8, v9, v3);
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v11 = v2 == 0xD000000000000010 && v10 == v1;
    if (v11 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      if (v6 >> 60 == 1)
      {
        v12 = OUTLINED_FUNCTION_12_8();
        v14 = memcpy(v12, v13, 0x59uLL);
        v22 = OUTLINED_FUNCTION_44_5(v14, v15, v16, v17, v18, v19, v20, v21, v149);
        memcpy(v22, v23, 0x59uLL);
        v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest;
        v9 = &off_1F07BE0C8;
        return sub_193494798(v8, v9, v3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v26 = v2 == 0xD000000000000011 && v25 == v1;
      if (v26 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (v6 >> 60 == 2)
        {
          v27 = OUTLINED_FUNCTION_12_8();
          v29 = memcpy(v27, v28, 0x299uLL);
          v37 = OUTLINED_FUNCTION_44_5(v29, v30, v31, v32, v33, v34, v35, v36, v149);
          memcpy(v37, v38, 0x299uLL);
          v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest;
          v9 = &off_1F07BE0D8;
          return sub_193494798(v8, v9, v3);
        }
      }

      else
      {
        v40 = v2 == (OUTLINED_FUNCTION_108_6() | 0x7163417400000000) && v1 == v39;
        if (v40 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
        {
          if (v6 >> 60 == 3)
          {
            v41 = OUTLINED_FUNCTION_12_8();
            v43 = memcpy(v41, v42, 0x4AuLL);
            v51 = OUTLINED_FUNCTION_44_5(v43, v44, v45, v46, v47, v48, v49, v50, v149);
            memcpy(v51, v52, 0x4AuLL);
            v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetAcquire;
            v9 = &off_1F07BE108;
            return sub_193494798(v8, v9, v3);
          }
        }

        else
        {
          v54 = v2 == (OUTLINED_FUNCTION_108_6() | 0x6C65527400000000) && v1 == v53;
          if (v54 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
          {
            if (v6 >> 60 == 4)
            {
              *&v161[10] = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x2A);
              *v161 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              v150 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetRelease;
              v9 = &off_1F07BE128;
              return sub_193494798(v8, v9, v3);
            }
          }

          else
          {
            OUTLINED_FUNCTION_38();
            v56 = v2 == 0xD000000000000013 && v55 == v1;
            if (v56 || (OUTLINED_FUNCTION_66_3(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
            {
              if (v6 >> 60 == 5)
              {
                v57 = OUTLINED_FUNCTION_12_8();
                v59 = memcpy(v57, v58, 0x142uLL);
                v67 = OUTLINED_FUNCTION_44_5(v59, v60, v61, v62, v63, v64, v65, v66, v149);
                memcpy(v67, v68, 0x142uLL);
                v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics;
                v9 = &off_1F07BE198;
                return sub_193494798(v8, v9, v3);
              }
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v70 = v2 == 0xD000000000000014 && v69 == v1;
              if (v70 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
              {
                if (v6 >> 60 == 6)
                {
                  v151 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v152 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  v153 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
                  v154 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
                  v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication;
                  v9 = &off_1F07BE158;
                  return sub_193494798(v8, v9, v3);
                }
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v72 = v2 == 0xD000000000000018 && v71 == v1;
                if (v72 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                {
                  if (v6 >> 60 == 7)
                  {
                    v73 = OUTLINED_FUNCTION_12_8();
                    v75 = memcpy(v73, v74, 0x6AuLL);
                    v83 = OUTLINED_FUNCTION_44_5(v75, v76, v77, v78, v79, v80, v81, v82, v149);
                    memcpy(v83, v84, 0x6AuLL);
                    v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent;
                    v9 = &off_1F07BE1D8;
                    return sub_193494798(v8, v9, v3);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v86 = v2 == 0xD000000000000012 && v85 == v1;
                  if (v86 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (v6 >> 60 == 8)
                    {
                      v87 = OUTLINED_FUNCTION_12_8();
                      v89 = memcpy(v87, v88, 0x189uLL);
                      v97 = OUTLINED_FUNCTION_44_5(v89, v90, v91, v92, v93, v94, v95, v96, v149);
                      memcpy(v97, v98, 0x189uLL);
                      v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.SummarizationEvent;
                      v9 = &off_1F07BE1E8;
                      return sub_193494798(v8, v9, v3);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v100 = v2 == 0xD000000000000013 && v99 == v1;
                    if (v100 || (OUTLINED_FUNCTION_66_3(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                    {
                      if (v6 >> 60 == 9)
                      {
                        v101 = OUTLINED_FUNCTION_12_8();
                        v103 = memcpy(v101, v102, 0x119uLL);
                        v111 = OUTLINED_FUNCTION_44_5(v103, v104, v105, v106, v107, v108, v109, v110, v149);
                        memcpy(v111, v112, 0x119uLL);
                        v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ClassificationEvent;
                        v9 = &off_1F07BE1F8;
                        return sub_193494798(v8, v9, v3);
                      }
                    }

                    else
                    {
                      v114 = v2 == (OUTLINED_FUNCTION_108_6() | 0x6172547400000000) && v1 == v113;
                      if (v114 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        if (v6 >> 60 == 10)
                        {
                          v115 = OUTLINED_FUNCTION_12_8();
                          v117 = memcpy(v115, v116, 0x72uLL);
                          v125 = OUTLINED_FUNCTION_44_5(v117, v118, v119, v120, v121, v122, v123, v124, v149);
                          memcpy(v125, v126, 0x72uLL);
                          v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetTransition;
                          v9 = &off_1F07BE138;
                          return sub_193494798(v8, v9, v3);
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        v128 = v2 == 0xD000000000000012 && v127 == v1;
                        if (v128 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                        {
                          if (v6 >> 60 == 11)
                          {
                            v156 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                            v158 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                            v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus;
                            v9 = &off_1F07BE208;
                            return sub_193494798(v8, v9, v3);
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38();
                          if (v2 != 0xD00000000000001CLL || v129 != v1)
                          {
                            OUTLINED_FUNCTION_0_14();
                            if ((sub_19393CA30() & 1) == 0)
                            {
                              OUTLINED_FUNCTION_38();
                              if (v2 == 0xD000000000000013 && v131 == v1)
                              {
                                if (v6 >> 60 != 13)
                                {
                                  goto LABEL_101;
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_66_3();
                                OUTLINED_FUNCTION_0_14();
                                if ((sub_19393CA30() & 1) == 0 || (v6 & 0xF000000000000000) != 0xD000000000000000)
                                {
                                  goto LABEL_101;
                                }
                              }

                              v133 = OUTLINED_FUNCTION_12_8();
                              v135 = memcpy(v133, v134, 0x42uLL);
                              v143 = OUTLINED_FUNCTION_44_5(v135, v136, v137, v138, v139, v140, v141, v142, v149);
                              memcpy(v143, v144, 0x42uLL);
                              v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest;
                              v9 = &off_1F07BE228;
                              return sub_193494798(v8, v9, v3);
                            }
                          }

                          if (v6 >> 60 == 12)
                          {
                            v157 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                            v159 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                            v162 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                            v164 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                            v165 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
                            v166 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
                            v8 = &type metadata for GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition;
                            v9 = &off_1F07BE218;
                            return sub_193494798(v8, v9, v3);
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
      }
    }
  }

LABEL_101:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v145 = swift_allocError();
  OUTLINED_FUNCTION_64(v145, v146);
  *(v147 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata;
  *(v147 + 16) = v6;
  OUTLINED_FUNCTION_23_2(v148, v147);
}

void sub_1934A275C()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, 0x59uLL);
  v10 = v1 == 0x666C616865426E6FLL && v0 == 0xED0000444950664FLL;
  if (v10 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (__dst[1])
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v11 = __dst[0];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v3 = 0xD00000000000001ALL;
  v14 = v1 == 0xD00000000000001ALL && v13 == v0;
  if (v14 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    v15 = __dst[3];
    if (!__dst[3])
    {
      goto LABEL_7;
    }

    v16 = __dst[2];
    goto LABEL_17;
  }

  v3 = OUTLINED_FUNCTION_50_5();
  v18 = v10 && v0 == v17;
  if (v18 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (__dst[5])
    {
      goto LABEL_7;
    }

    v11 = __dst[4];
LABEL_9:
    v32[0] = v11;
    v12 = MEMORY[0x1E69E7360];
LABEL_18:
    OUTLINED_FUNCTION_52_2(v3, v12, v4, v5, v6, v7, v8, v9, v32[0]);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v3 = 0xD000000000000019;
  v20 = v1 == 0xD000000000000019 && v19 == v0;
  if (v20 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    v15 = __dst[7];
    if (!__dst[7])
    {
      goto LABEL_7;
    }

    v16 = __dst[6];
LABEL_17:
    v32[0] = v16;
    v32[1] = v15;
    v12 = MEMORY[0x1E69E6158];
    goto LABEL_18;
  }

  v21 = v1 == 0x5474736575716572 && v0 == 0xEB00000000657079;
  if (v21 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if ((__dst[9] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v12 = &type metadata for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_17();
  v23 = v10 && v22 == v0;
  if (v23 || (OUTLINED_FUNCTION_49_1(), OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    v24 = BYTE2(__dst[9]);
LABEL_46:
    if (v24 == 2)
    {
      goto LABEL_7;
    }

    LOBYTE(v32[0]) = v24 & 1;
    v12 = MEMORY[0x1E69E6370];
    goto LABEL_18;
  }

  v25 = v1 == (OUTLINED_FUNCTION_108_6() & 0xFFFF0000FFFFFFFFLL | 0x737400000000) && v0 == 0xE600000000000000;
  if (v25 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v32[0] = __dst[10];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADB0, &qword_1939518A0);
    v12 = v3;
    goto LABEL_18;
  }

  v3 = 0x657265666E497369;
  v26 = v1 == 0x657265666E497369 && v0 == 0xEB0000000065636ELL;
  if (v26 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    v24 = LOBYTE(__dst[11]);
    goto LABEL_46;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v27 = swift_allocError();
  OUTLINED_FUNCTION_9_3(v27, v28);
  *(v29 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest;
  v30 = swift_allocObject();
  v31 = OUTLINED_FUNCTION_28_3(v30);
  memcpy(v31, __dst, 0x59uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1934A830C(__dst, v32);
}

void sub_1934A2A58()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  memcpy(__dst, v1, 0x299uLL);
  v8 = v5 == 0x5474736575716572 && v3 == 0xEB00000000657079;
  if (!v8)
  {
    OUTLINED_FUNCTION_0_14();
    if ((sub_19393CA30() & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v10 = v5 == 0xD000000000000010 && v9 == v3;
      if (v10 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[3])
        {
          goto LABEL_7;
        }

        v11 = __dst[2];
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_38();
      v13 = v5 == 0xD000000000000011 && v12 == v3;
      if (v13 || (OUTLINED_FUNCTION_49_1(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[5])
        {
          goto LABEL_7;
        }

        v11 = __dst[4];
        goto LABEL_16;
      }

      v15 = v5 == (OUTLINED_FUNCTION_97() | 0x7274537200000000) && v3 == v14;
      if (v15 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (!__dst[7])
        {
          goto LABEL_7;
        }

        __src[0] = __dst[6];
        __src[1] = __dst[7];
      }

      else
      {
        OUTLINED_FUNCTION_8_17();
        v17 = v8 && v16 == v3;
        if (v17 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
        {
          if (__dst[9])
          {
            goto LABEL_7;
          }

          v11 = __dst[8];
LABEL_16:
          __src[0] = v11;
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_117_3();
        if (v5 != (OUTLINED_FUNCTION_97() | 0x7079547200000000) || v3 != v18)
        {
          OUTLINED_FUNCTION_59_1();
          OUTLINED_FUNCTION_0_14();
          if ((sub_19393CA30() & 1) == 0)
          {
            OUTLINED_FUNCTION_38();
            v21 = v5 == 0xD000000000000013 && v20 == v3;
            if (v21 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
            {
              memcpy(__src, (v1 + 96), 0x142uLL);
              if (sub_1934A83E0(__src) == 1)
              {
                goto LABEL_7;
              }

              memcpy(v39, __src, sizeof(v39));
              v22 = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics;
              v23 = &off_1F07BE198;
            }

            else
            {
              OUTLINED_FUNCTION_38();
              if (v5 != 0xD00000000000001ALL || v24 != v3)
              {
                OUTLINED_FUNCTION_0_14();
                if ((sub_19393CA30() & 1) == 0)
                {
                  OUTLINED_FUNCTION_38();
                  v27 = v5 == 0xD000000000000011 && v26 == v3;
                  if (v27 || (OUTLINED_FUNCTION_49_1(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    __src[0] = __dst[77];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADC8, &qword_1939518B8);
                    goto LABEL_17;
                  }

                  OUTLINED_FUNCTION_38();
                  v29 = v5 == 0xD00000000000001DLL && v28 == v3;
                  if (v29 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[79])
                    {
                      goto LABEL_7;
                    }

                    v11 = __dst[78];
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v31 = v5 == 0xD000000000000024 && v30 == v3;
                    if (v31 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                    {
                      if (__dst[81])
                      {
                        goto LABEL_7;
                      }

                      v11 = __dst[80];
                    }

                    else
                    {
                      OUTLINED_FUNCTION_38();
                      if (v5 != 0xD000000000000011 || v32 != v3)
                      {
                        OUTLINED_FUNCTION_49_1();
                        OUTLINED_FUNCTION_0_14();
                        if ((sub_19393CA30() & 1) == 0)
                        {
                          sub_19349AB64();
                          OUTLINED_FUNCTION_11();
                          v34 = swift_allocError();
                          OUTLINED_FUNCTION_9_3(v34, v35);
                          *(v36 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest;
                          v37 = swift_allocObject();
                          v38 = OUTLINED_FUNCTION_28_3(v37);
                          memcpy(v38, __dst, 0x299uLL);
                          OUTLINED_FUNCTION_26_0();

                          sub_1934A8368(__dst, __src);
                          goto LABEL_18;
                        }
                      }

                      if (__dst[83])
                      {
                        goto LABEL_7;
                      }

                      v11 = __dst[82];
                    }
                  }

                  goto LABEL_16;
                }
              }

              memcpy(__src, (v1 + 424), 0xBAuLL);
              if (sub_1934A83C4(__src) == 1)
              {
                goto LABEL_7;
              }

              memcpy(v39, __src, 0xB9uLL);
              v22 = &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics;
              v23 = &off_1F07BE0E8;
            }

            sub_193494798(v22, v23, v7);
            goto LABEL_18;
          }
        }

        if ((__dst[11] & 0x100) != 0)
        {
          goto LABEL_7;
        }

        __src[0] = __dst[10];
        LOBYTE(__src[1]) = __dst[11] & 1;
      }

LABEL_17:
      sub_1934948FC();
      goto LABEL_18;
    }
  }

  if ((__dst[1] & 0x100) == 0)
  {
    __src[0] = __dst[0];
    LOBYTE(__src[1]) = __dst[1] & 1;
    goto LABEL_17;
  }

LABEL_7:
  OUTLINED_FUNCTION_36_4();
LABEL_18:
  OUTLINED_FUNCTION_27();
}

void sub_1934A2EE0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  OUTLINED_FUNCTION_38();
  v8 = v6 == 0xD00000000000001BLL && v7 == a2;
  if (v8)
  {
    goto LABEL_6;
  }

  v9 = v6;
  v61 = v2[2];
  v62 = *(v2 + 24);
  v59 = v2[4];
  v60 = *(v2 + 40);
  v57 = v2[6];
  v58 = *(v2 + 56);
  v55 = v2[8];
  v56 = *(v2 + 72);
  v53 = v2[10];
  v54 = *(v2 + 88);
  v51 = v2[12];
  v52 = *(v2 + 104);
  v49 = v2[14];
  v50 = *(v2 + 120);
  v47 = v2[16];
  v48 = *(v2 + 136);
  v45 = v2[18];
  v46 = *(v2 + 152);
  v43 = v2[20];
  v44 = *(v2 + 168);
  v41 = v2[22];
  v42 = *(v2 + 184);
  OUTLINED_FUNCTION_6_13();
  if (sub_19393CA30())
  {
LABEL_6:
    if (v5)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v11 = v9 == 0xD00000000000001CLL && v10 == a2;
  if (v11 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v62)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v13 = v9 == 0xD00000000000001DLL && v12 == a2;
  if (v13 || (OUTLINED_FUNCTION_6_13(), v40 = v14, (sub_19393CA30() & 1) != 0))
  {
    if (v60)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v16 = v9 == 0xD000000000000018 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v58)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v18 = v9 == 0xD000000000000017 && v17 == a2;
  if (v18 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v56)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v20 = v9 == 0xD000000000000016 && v19 == a2;
  if (v20 || (OUTLINED_FUNCTION_113_0(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v54)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v22 = v9 == 0xD000000000000016 && v21 == a2;
  if (v22 || (OUTLINED_FUNCTION_113_0(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v52)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v24 = v9 == 0xD000000000000016 && v23 == a2;
  if (v24 || (OUTLINED_FUNCTION_113_0(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v50)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v26 = v9 == 0xD00000000000001BLL && v25 == a2;
  if (v26 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v48)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v28 = v9 == 0xD00000000000001CLL && v27 == a2;
  if (v28 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v46)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v30 = v9 == v40 && v29 == a2;
  if (v30 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v44)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_58_3();
  v32 = v8 && a2 == v31;
  if (v32 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v42)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v34 = v33;
  *v33 = v9;
  v33[1] = a2;
  v33[5] = &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics;
  v35 = swift_allocObject();
  v34[2] = v35;
  *(v35 + 16) = v4;
  *(v35 + 24) = v5;
  *(v35 + 28) = *(v2 + 3);
  *(v35 + 25) = *(v2 + 9);
  *(v35 + 32) = v61;
  *(v35 + 40) = v62;
  v36 = OUTLINED_FUNCTION_34_3(v35);
  *(v36 + 48) = v59;
  *(v36 + 56) = v60;
  *(v36 + 60) = *(v2 + 11);
  *(v36 + 57) = *(v2 + 41);
  *(v36 + 64) = v57;
  *(v36 + 72) = v58;
  *(v36 + 73) = *(v2 + 57);
  *(v36 + 76) = *(v2 + 15);
  *(v36 + 80) = v55;
  v37 = OUTLINED_FUNCTION_81_1(v36, v56);
  *(v37 + 96) = v53;
  *(v37 + 104) = v54;
  *(v37 + 105) = *(v2 + 89);
  *(v37 + 108) = *(v2 + 23);
  *(v37 + 112) = v51;
  *(v37 + 120) = v52;
  *(v37 + 124) = *(v2 + 27);
  *(v37 + 121) = *(v2 + 105);
  *(v37 + 128) = v49;
  *(v37 + 136) = v50;
  *(v37 + 140) = *(v2 + 31);
  *(v37 + 137) = *(v2 + 121);
  *(v37 + 144) = v47;
  *(v37 + 152) = v48;
  *(v37 + 156) = *(v2 + 35);
  *(v37 + 153) = *(v2 + 137);
  *(v37 + 160) = v45;
  *(v37 + 168) = v46;
  v38 = *(v2 + 153);
  *(v37 + 172) = *(v2 + 39);
  *(v37 + 169) = v38;
  *(v37 + 176) = v43;
  *(v37 + 184) = v44;
  v39 = *(v2 + 169);
  *(v37 + 188) = *(v2 + 43);
  *(v37 + 185) = v39;
  *(v37 + 192) = v41;
  *(v37 + 200) = v42;
  OUTLINED_FUNCTION_90_3();
  swift_willThrow();
}

void sub_1934A34B8()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, 0x41uLL);
  v9 = v1 == 0x7465737361 && v0 == 0xE500000000000000;
  if (v9 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (__dst[1])
    {
      v33[1] = __dst[1];
      v33[2] = __dst[2];
      v33[3] = __dst[3];
      OUTLINED_FUNCTION_52_2(v3, &type metadata for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion, &off_1F07BE068, v4, v5, v6, v7, v8, __dst[0]);
      sub_193494798(v10, v11, v12);
      return;
    }

    goto LABEL_14;
  }

  v13 = OUTLINED_FUNCTION_21_8();
  v21 = v1 == v13 && v0 == v20;
  if (v21 || (OUTLINED_FUNCTION_0_14(), v13 = sub_19393CA30(), (v13 & 1) != 0))
  {
    if (__dst[5])
    {
LABEL_14:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v22 = __dst[4];
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_88_2();
  v25 = v9 && v0 == v24;
  if (v25 || (OUTLINED_FUNCTION_0_14(), v13 = sub_19393CA30(), (v13 & 1) != 0))
  {
    if (__dst[7])
    {
      goto LABEL_14;
    }

    v22 = __dst[6];
LABEL_16:
    v33[0] = v22;
    v23 = MEMORY[0x1E69E76D8];
LABEL_17:
    OUTLINED_FUNCTION_52_2(v13, v23, v14, v15, v16, v17, v18, v19, v33[0]);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_87_1();
  v27 = v9 && v0 == v26;
  if (v27 || (OUTLINED_FUNCTION_0_14(), v13 = sub_19393CA30(), (v13 & 1) != 0))
  {
    if (__dst[8])
    {
      goto LABEL_14;
    }

    LODWORD(v33[0]) = HIDWORD(__dst[7]);
    v23 = MEMORY[0x1E69E6448];
    goto LABEL_17;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v28 = swift_allocError();
  OUTLINED_FUNCTION_9_3(v28, v29);
  *(v30 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo;
  v31 = swift_allocObject();
  v32 = OUTLINED_FUNCTION_28_3(v31);
  memcpy(v32, __dst, 0x41uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1934A8404(__dst, v33);
}

void sub_1934A369C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_70_2();
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 9);
  v10 = a1 == v5 && v6 == 0xE600000000000000;
  if (v10)
  {
    goto LABEL_6;
  }

  v11 = v6;
  v29 = v2[2];
  v12 = *(v2 + 24);
  v26 = v2[4];
  v27 = *(v2 + 40);
  v28 = *(v2 + 41);
  v21 = v2[6];
  v22 = v2[7];
  v23 = v2[8];
  v24 = *(v2 + 72);
  v25 = *(v2 + 73);
  if (OUTLINED_FUNCTION_59_0())
  {
LABEL_6:
    if (v9)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_15_18();
  v14 = v10 && v11 == v13;
  if (v14 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    if (v12)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v15 = a1 == OUTLINED_FUNCTION_71_3() && v11 == 0xE600000000000000;
  if (v15 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    if (v28)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v16 = a1 == 0xD000000000000013 && 0x8000000193A14C10 == v11;
  if (v16 || (OUTLINED_FUNCTION_66_3(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
  {
    if (v25)
    {
      goto LABEL_7;
    }

    sub_193494798(&type metadata for GenerativeFunctionsInstrumentationMetadata.AssetAcquire.ANEHintClientMetric, &off_1F07BE118, a2);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    OUTLINED_FUNCTION_106_0();
    *v17 = a1;
    v17[1] = v11;
    v17[5] = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetAcquire;
    v18 = swift_allocObject();
    a2[2] = v18;
    *(v18 + 16) = v7;
    *(v18 + 24) = v8;
    *(v18 + 25) = v9;
    v19 = OUTLINED_FUNCTION_39_9(v18);
    *(v19 + 32) = v29;
    *(v19 + 40) = v12;
    v20 = OUTLINED_FUNCTION_34_3(v19);
    *(v20 + 48) = v26;
    *(v20 + 56) = v27;
    *(v20 + 57) = v28;
    *(v20 + 62) = *(v2 + 23);
    *(v20 + 58) = *(v2 + 42);
    *(v20 + 64) = v21;
    *(v20 + 72) = v22;
    *(v20 + 80) = v23;
    *(v20 + 88) = v24;
    *(v20 + 89) = v25;
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }
}

void sub_1934A3A70()
{
  OUTLINED_FUNCTION_57_0();
  v3 = OUTLINED_FUNCTION_70_2();
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = v2 == v3 && v4 == 0xE600000000000000;
  if (v8 || (v9 = v4, v23 = v0[2], v10 = *(v0 + 24), v20 = v0[4], v21 = *(v0 + 40), v22 = *(v0 + 41), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v7)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_15_18();
  v12 = v8 && v9 == v11;
  if (v12 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v13 = v2 == OUTLINED_FUNCTION_71_3() && v9 == 0xE600000000000000;
  if (v13 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v14 = swift_allocError();
  OUTLINED_FUNCTION_73_1(v14, v15);
  *(v16 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetRelease;
  v17 = swift_allocObject();
  *(v1 + 16) = v17;
  *(v17 + 16) = v5;
  *(v17 + 24) = v6;
  *(v17 + 25) = v7;
  v18 = OUTLINED_FUNCTION_39_9(v17);
  *(v18 + 32) = v23;
  *(v18 + 40) = v10;
  v19 = OUTLINED_FUNCTION_34_3(v18);
  *(v19 + 48) = v20;
  *(v19 + 56) = v21;
  *(v19 + 57) = v22;
  OUTLINED_FUNCTION_90_3();
  swift_willThrow();
}

void sub_1934A3C58()
{
  OUTLINED_FUNCTION_57_0();
  v3 = OUTLINED_FUNCTION_71_3();
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = v2 == v3 && v4 == 0xE600000000000000;
  if (v8)
  {
    goto LABEL_6;
  }

  v9 = v4;
  v38 = v0[2];
  v39 = *(v0 + 24);
  v40 = *(v0 + 25);
  v35 = v0[4];
  v36 = *(v0 + 40);
  v37 = *(v0 + 41);
  v32 = v0[6];
  v33 = *(v0 + 56);
  v34 = *(v0 + 57);
  v30 = v0[8];
  v31 = *(v0 + 72);
  v24 = v0[10];
  v25 = v0[11];
  v26 = v0[12];
  v27 = v0[13];
  v28 = *(v0 + 112);
  v29 = *(v0 + 113);
  OUTLINED_FUNCTION_6_13();
  if (sub_19393CA30())
  {
LABEL_6:
    if (v7)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_8;
  }

  v10 = v2 == OUTLINED_FUNCTION_70_2() && v9 == 0xE600000000000000;
  if (v10 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v40)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_117_3();
  v12 = v2 == OUTLINED_FUNCTION_99_2() && v9 == v11;
  if (v12 || (OUTLINED_FUNCTION_59_1(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v37)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v13 = v2 == 0x65746174536F74 && v9 == 0xE700000000000000;
  if (v13 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v34)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_15_18();
  v15 = v8 && v9 == v14;
  if (v15 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v31)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v16 = v2 == 0xD000000000000010 && 0x8000000193A14C30 == v9;
  if (v16 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v29)
    {
      goto LABEL_7;
    }

    sub_193494798(&type metadata for GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo, &off_1F07BE148, v1);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v17 = swift_allocError();
    OUTLINED_FUNCTION_73_1(v17, v18);
    *(v19 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetTransition;
    v20 = swift_allocObject();
    v1[2] = v20;
    *(v20 + 16) = v5;
    *(v20 + 24) = v6;
    *(v20 + 25) = v7;
    v21 = OUTLINED_FUNCTION_39_9(v20);
    *(v21 + 32) = v38;
    *(v21 + 40) = v39;
    *(v21 + 41) = v40;
    *(v21 + 46) = *(v0 + 15);
    *(v21 + 42) = *(v0 + 26);
    *(v21 + 48) = v35;
    *(v21 + 56) = v36;
    *(v21 + 57) = v37;
    v22 = *(v0 + 42);
    *(v21 + 62) = *(v0 + 23);
    *(v21 + 58) = v22;
    *(v21 + 64) = v32;
    *(v21 + 72) = v33;
    *(v21 + 73) = v34;
    *(v21 + 74) = *(v0 + 58);
    *(v21 + 78) = *(v0 + 31);
    *(v21 + 80) = v30;
    v23 = OUTLINED_FUNCTION_81_1(v21, v31);
    *(v23 + 96) = v24;
    *(v23 + 104) = v25;
    *(v23 + 112) = v26;
    *(v23 + 120) = v27;
    *(v23 + 128) = v28;
    *(v23 + 129) = v29;
    OUTLINED_FUNCTION_90_3();
    swift_willThrow();
  }
}

void sub_1934A4028()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_21_8();
  v8 = *v0;
  v9 = *(v0 + 8);
  v10 = v2 == v5 && v6 == v7;
  if (!v10)
  {
    v11 = v6;
    v12 = v0[2];
    v13 = *(v0 + 24);
    v21 = *(v0 + 7);
    v14 = *(v0 + 32);
    if ((OUTLINED_FUNCTION_31_9() & 1) == 0)
    {
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_88_2();
      v16 = v10 && v11 == v15;
      if (v16 || (OUTLINED_FUNCTION_31_9() & 1) != 0)
      {
        if (v13)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_87_1();
        v18 = v10 && v11 == v17;
        if (!v18 && (OUTLINED_FUNCTION_31_9() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          OUTLINED_FUNCTION_106_0();
          *v19 = v2;
          v19[1] = v11;
          v19[5] = &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo;
          v20 = swift_allocObject();
          *(v4 + 16) = v20;
          *(v20 + 16) = v8;
          *(v20 + 24) = v9;
          *(v20 + 32) = v12;
          *(v20 + 40) = v13;
          *(v20 + 44) = v21;
          *(v20 + 48) = v14;
          OUTLINED_FUNCTION_48_4();
          swift_willThrow();

          goto LABEL_9;
        }

        if (v14)
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_1934A41BC(uint64_t a1)
{
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_102_3();
  v39 = *(v1 + 48);
  v6 = a1 == v5 && v3 == v4;
  if (v6 || (v7 = v3, OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE10(v36))
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    OUTLINED_FUNCTION_46_1();
    v14 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator;
    v15 = &off_1F07BE168;
    goto LABEL_9;
  }

  v19 = a1 == 0x656D6F6374756FLL && v7 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE10(v37))
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_46_1();
    v14 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome;
    v15 = &off_1F07BE178;
    goto LABEL_9;
  }

  v20 = a1 == 0x6F697463656A6572 && v7 == 0xEF6E6F736165526ELL;
  if (v20 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE10(v38))
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_46_1();
    v14 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason;
    v15 = &off_1F07BE188;
LABEL_9:
    OUTLINED_FUNCTION_77_2(v8, v14, v15, v9, v10, v11, v12, v13, v34, v35[0]);
    sub_193494798(v16, v17, v18);
    return;
  }

  v21 = a1 == 0x7341797465666173 && v7 == 0xEC00000073746573;
  if (v21 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADB0, &qword_1939518A0);
    OUTLINED_FUNCTION_77_2(v22, v22, v23, v24, v25, v26, v27, v28, v34, v39);
    sub_1934948FC();
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v29 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v29, v30);
    *(v31 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication;
    OUTLINED_FUNCTION_98_2();
    v32 = swift_allocObject();
    *(v1 + 16) = v32;
    *(v32 + 64) = v39;
    v33 = v38;
    *(v32 + 32) = v37;
    *(v32 + 48) = v33;
    *(v32 + 16) = v36;
    OUTLINED_FUNCTION_26_0();

    sub_1934A8460(&v36, v35);
  }
}

void sub_1934A4410()
{
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_41_6();
  v5 = v1 == v4 && v0 == v3;
  if (v5 || (OUTLINED_FUNCTION_55_4() & 1) != 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_118_0();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v6 = swift_allocError();
    OUTLINED_FUNCTION_100_5(v6, v7);
    OUTLINED_FUNCTION_16_8(v8, &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator);
  }

  OUTLINED_FUNCTION_93_1();
}

void sub_1934A44DC()
{
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_41_6();
  v5 = v1 == v4 && v0 == v3;
  if (v5 || (OUTLINED_FUNCTION_55_4() & 1) != 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_118_0();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v6 = swift_allocError();
    OUTLINED_FUNCTION_100_5(v6, v7);
    OUTLINED_FUNCTION_16_8(v8, &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome);
  }

  OUTLINED_FUNCTION_93_1();
}

void sub_1934A45B4()
{
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_22_4();
  v3 = v3 && v2 == v0;
  if (v3 || (OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_55_4() & 1) != 0))
  {
    if (v1)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_118_0();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v4 = swift_allocError();
    OUTLINED_FUNCTION_100_5(v4, v5);
    OUTLINED_FUNCTION_16_8(v6, &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason);
  }

  OUTLINED_FUNCTION_93_1();
}

void sub_1934A4688(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, 0x142uLL);
  OUTLINED_FUNCTION_38();
  v9 = a1 == 0xD000000000000012 && v8 == a2;
  if (v9 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[1])
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v10 = __dst[0];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_117_3();
  v12 = a1 == 0x7461526E656B6F74 && a2 == v11;
  if (v12 || (OUTLINED_FUNCTION_59_1(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[3])
    {
      goto LABEL_7;
    }

    v10 = __dst[2];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v14 = a1 == 0xD000000000000016 && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[5])
    {
      goto LABEL_7;
    }

    v10 = __dst[4];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v16 = a1 == 0xD000000000000013 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[7])
    {
      goto LABEL_7;
    }

    v10 = __dst[6];
LABEL_9:
    __src[0] = v10;
LABEL_10:
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v18 = a1 == 0xD000000000000011 && v17 == a2;
  if (v18 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[9])
    {
      goto LABEL_7;
    }

    v19 = __dst[8];
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_38();
  v21 = a1 == 0xD000000000000010 && v20 == a2;
  if (v21 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[11])
    {
      goto LABEL_7;
    }

    v19 = __dst[10];
LABEL_39:
    __src[0] = v19;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v23 = a1 == 0xD000000000000018 && v22 == a2;
  if (v23 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    memcpy(__src, (v4 + 96), 0x90uLL);
    if (sub_1934A8518(__src) == 1)
    {
      goto LABEL_7;
    }

    memcpy(v31, __src, sizeof(v31));
    v24 = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo;
    v25 = &off_1F07BE1A8;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v27 = a1 == 0xD00000000000001ALL && v26 == a2;
  if (v27 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if ((__dst[40] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    memcpy(__src, (v4 + 240), 0x51uLL);
    v24 = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics;
    v25 = &off_1F07BE1C8;
LABEL_54:
    sub_193494798(v24, v25, a3);
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  *v28 = a1;
  v28[1] = a2;
  v28[5] = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics;
  v29 = swift_allocObject();
  v30 = OUTLINED_FUNCTION_28_3(v29);
  memcpy(v30, __dst, 0x142uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1934A84BC(__dst, __src);
}

void sub_1934A49D0()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v9 = v1 == 0x65646F4D65736162 && v0 == 0xE90000000000006CLL;
  if (v9 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (*(&__dst[0] + 1) == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v25[0] = __dst[0];
    v10 = __dst[1];
    goto LABEL_9;
  }

  v3 = 0x72657470616461;
  v14 = v1 == 0x72657470616461 && v0 == 0xE700000000000000;
  if (v14 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (*(&__dst[2] + 1) == 1)
    {
      goto LABEL_7;
    }

    v25[0] = __dst[2];
    v10 = __dst[3];
    goto LABEL_9;
  }

  v3 = 0x646F4D7466617264;
  v15 = v1 == 0x646F4D7466617264 && v0 == 0xEA00000000006C65;
  if (v15 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (*(&__dst[4] + 1) == 1)
    {
      goto LABEL_7;
    }

    v25[0] = __dst[4];
    v10 = __dst[5];
    goto LABEL_9;
  }

  v3 = 0x657A696E656B6F74;
  v16 = v1 == 0x657A696E656B6F74 && v0 == 0xE900000000000072;
  if (v16 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (*(&__dst[6] + 1) == 1)
    {
      goto LABEL_7;
    }

    v25[0] = __dst[6];
    v10 = __dst[7];
LABEL_9:
    v25[1] = v10;
    OUTLINED_FUNCTION_52_2(v3, &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo, &off_1F07BE1B8, v4, v5, v6, v7, v8, *&v25[0]);
    sub_193494798(v11, v12, v13);
    return;
  }

  v18 = 0x56736F64756F6C63;
  v19 = v1 == 0x56736F64756F6C63 && v0 == 0xEE006E6F69737265;
  if (v19 || (OUTLINED_FUNCTION_0_14(), v18 = sub_19393CA30(), (v18 & 1) != 0))
  {
    if (!*(&__dst[8] + 1))
    {
      goto LABEL_7;
    }

    *(&v25[0] + 1) = *(&__dst[8] + 1);
    OUTLINED_FUNCTION_52_2(v18, MEMORY[0x1E69E6158], v17, v4, v5, v6, v7, v8, *&__dst[8]);
    sub_1934948FC();
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v20 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v20, v21);
    *(v22 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo;
    v23 = swift_allocObject();
    v24 = OUTLINED_FUNCTION_28_3(v23);
    memcpy(v24, __dst, 0x90uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1934A853C(__dst, v25);
  }
}

void sub_1934A4DC8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_57_0();
  v6 = *v2;
  v7 = *(v2 + 4);
  OUTLINED_FUNCTION_38();
  v9 = v4 == 0xD000000000000021 && v8 == a2;
  if (v9)
  {
    goto LABEL_6;
  }

  v10 = *(v2 + 12);
  v40 = *(v2 + 20);
  v41 = v2[2];
  v38 = *(v2 + 28);
  v39 = v2[4];
  v36 = *(v2 + 36);
  v37 = v2[6];
  v33 = *(v2 + 5);
  v34 = *(v2 + 48);
  v35 = v2[8];
  v31 = *(v2 + 7);
  v32 = *(v2 + 64);
  v29 = *(v2 + 9);
  v30 = *(v2 + 80);
  OUTLINED_FUNCTION_6_13();
  if (sub_19393CA30())
  {
LABEL_6:
    if (v7)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v12 = v4 == 0xD00000000000001CLL && v11 == a2;
  if (v12 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v14 = v4 == 0xD00000000000001DLL && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v40)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v16 = v4 == 0xD000000000000015 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v38)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v18 = v4 == 0xD000000000000016 && v17 == a2;
  if (v18 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v36)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v20 = v4 == 0xD000000000000025 && v19 == a2;
  if (v20 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v34)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v22 = v4 == 0xD000000000000026 && v21 == a2;
  if (v22 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v32)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_58_3();
  v24 = v9 && a2 == v23;
  if (v24 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v30)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v25 = swift_allocError();
  OUTLINED_FUNCTION_73_1(v25, v26);
  *(v27 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.PrivateCloudSpeculativeDecodingMetrics;
  v28 = swift_allocObject();
  *(v3 + 16) = v28;
  *(v28 + 16) = v6;
  *(v28 + 20) = v7;
  *(v28 + 23) = *(v2 + 7);
  *(v28 + 21) = *(v2 + 5);
  *(v28 + 24) = v41;
  *(v28 + 28) = v10;
  *(v28 + 31) = *(v2 + 15);
  *(v28 + 29) = *(v2 + 13);
  *(v28 + 32) = v39;
  *(v28 + 36) = v40;
  *(v28 + 39) = *(v2 + 23);
  *(v28 + 37) = *(v2 + 21);
  *(v28 + 40) = v37;
  *(v28 + 44) = v38;
  *(v28 + 45) = *(v2 + 29);
  *(v28 + 47) = *(v2 + 31);
  *(v28 + 48) = v35;
  *(v28 + 52) = v36;
  *(v28 + 53) = *(v2 + 37);
  *(v28 + 55) = *(v2 + 39);
  *(v28 + 56) = v33;
  *(v28 + 64) = v34;
  *(v28 + 65) = *(v2 + 49);
  *(v28 + 68) = v2[13];
  *(v28 + 72) = v31;
  *(v28 + 80) = v32;
  *(v28 + 84) = v2[17];
  *(v28 + 81) = *(v2 + 65);
  *(v28 + 88) = v29;
  *(v28 + 96) = v30;
  OUTLINED_FUNCTION_90_3();
  swift_willThrow();
}

void sub_1934A51AC()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, 0x6AuLL);
  OUTLINED_FUNCTION_38();
  v4 = v1 == 0xD000000000000010 && v3 == v0;
  if (v4 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if ((__dst[1] & 0x100) != 0)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_33_4();
    v12 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v14 = v1 == 0xD00000000000001FLL && v13 == v0;
  if (v14 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v34[0] = __dst[2];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    v12 = v5;
LABEL_15:
    OUTLINED_FUNCTION_52_2(v5, v12, v6, v7, v8, v9, v10, v11, v34[0]);
    sub_1934948FC();
    return;
  }

  v5 = 0x666C616865426E6FLL;
  v15 = v1 == 0x666C616865426E6FLL && v0 == 0xED0000444950664FLL;
  if (v15 || (OUTLINED_FUNCTION_0_14(), v5 = sub_19393CA30(), (v5 & 1) != 0))
  {
    if (__dst[4])
    {
      goto LABEL_7;
    }

    v16 = __dst[3];
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_38();
  v5 = 0xD00000000000001ALL;
  v18 = v1 == 0xD00000000000001ALL && v17 == v0;
  if (v18 || (OUTLINED_FUNCTION_0_14(), v5 = sub_19393CA30(), (v5 & 1) != 0))
  {
    v19 = __dst[6];
    if (!__dst[6])
    {
      goto LABEL_7;
    }

    v20 = __dst[5];
    goto LABEL_31;
  }

  v5 = OUTLINED_FUNCTION_50_5();
  v22 = v4 && v0 == v21;
  if (v22 || (OUTLINED_FUNCTION_0_14(), v5 = sub_19393CA30(), (v5 & 1) != 0))
  {
    if (__dst[8])
    {
      goto LABEL_7;
    }

    v16 = __dst[7];
LABEL_23:
    v34[0] = v16;
    v12 = MEMORY[0x1E69E7360];
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v5 = 0xD000000000000019;
  v24 = v1 == 0xD000000000000019 && v23 == v0;
  if (v24 || (OUTLINED_FUNCTION_0_14(), v5 = sub_19393CA30(), (v5 & 1) != 0))
  {
    v19 = __dst[10];
    if (!__dst[10])
    {
      goto LABEL_7;
    }

    v20 = __dst[9];
LABEL_31:
    v34[0] = v20;
    v34[1] = v19;
    v12 = MEMORY[0x1E69E6158];
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v5 = 0xD000000000000015;
  v26 = v1 == 0xD000000000000015 && v25 == v0;
  if (v26 || (OUTLINED_FUNCTION_0_14(), v5 = sub_19393CA30(), (v5 & 1) != 0))
  {
    if (LOBYTE(__dst[11]) == 2)
    {
      goto LABEL_7;
    }

    LOBYTE(v34[0]) = __dst[11] & 1;
    v12 = MEMORY[0x1E69E6370];
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v28 = v1 == 0xD000000000000012 && v27 == v0;
  if (v28 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if ((__dst[13] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v12 = &type metadata for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult;
    goto LABEL_15;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v29 = swift_allocError();
  OUTLINED_FUNCTION_9_3(v29, v30);
  *(v31 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent;
  v32 = swift_allocObject();
  v33 = OUTLINED_FUNCTION_28_3(v32);
  memcpy(v33, __dst, 0x6AuLL);
  OUTLINED_FUNCTION_26_0();

  sub_1934A85D4(__dst, v34);
}

void sub_1934A54A8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, 0x189uLL);
  v3 = v1 == 0x6E654C7475706E69 && v0 == 0xEB00000000687467;
  if (!v3)
  {
    OUTLINED_FUNCTION_0_14();
    if ((sub_19393CA30() & 1) == 0)
    {
      OUTLINED_FUNCTION_79_5(0x6B6F5478616DLL);
      v5 = v3 && v0 == 0xEE006874676E654CLL;
      if (v5 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[3])
        {
          goto LABEL_7;
        }

        v4 = __dst[2];
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_38();
      v7 = v1 == 0xD000000000000015 && v6 == v0;
      if (v7 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[5])
        {
          goto LABEL_7;
        }

        v4 = __dst[4];
        goto LABEL_9;
      }

      v8 = v1 == 0x654C74757074756FLL && v0 == 0xEC0000006874676ELL;
      if (v8 || (OUTLINED_FUNCTION_74_2(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[7])
        {
          goto LABEL_7;
        }

        v4 = __dst[6];
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_38();
      v10 = v1 == 0xD000000000000010 && v9 == v0;
      if (v10 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[9])
        {
          goto LABEL_7;
        }

        v4 = __dst[8];
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_38();
      v12 = v1 == 0xD00000000000001DLL && v11 == v0;
      if (v12 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[11])
        {
          goto LABEL_7;
        }

        v4 = __dst[10];
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_38();
      v14 = v1 == 0xD000000000000010 && v13 == v0;
      if (v14 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE1(__dst[11]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_38();
      v17 = v1 == 0xD000000000000011 && v16 == v0;
      if (v17 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[13])
        {
          goto LABEL_7;
        }

        v4 = __dst[12];
        goto LABEL_9;
      }

      v18 = v1 == 0x73656C797473 && v0 == 0xE600000000000000;
      if (v18 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v76[0] = __dst[14];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADD0, &qword_1939518C0);
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_38();
      v20 = v1 == 0xD000000000000010 && v19 == v0;
      if (v20 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = LOBYTE(__dst[15]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_38();
      v22 = v1 == 0xD000000000000012 && v21 == v0;
      if (v22 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE1(__dst[15]);
        goto LABEL_53;
      }

      v23 = v1 == 0x537475706E497369 && v0 == 0xEB00000000656661;
      if (v23 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE2(__dst[15]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_84_1();
      v25 = v1 == 0x72616D6D75537369 && v0 == v24;
      if (v25 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE3(__dst[15]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_38();
      v27 = v1 == 0xD000000000000010 && v26 == v0;
      if (v27 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE4(__dst[15]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_38();
      v29 = v1 == 0xD00000000000001BLL && v28 == v0;
      if (v29 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE5(__dst[15]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_38();
      v31 = v1 == 0xD000000000000011 && v30 == v0;
      if (v31 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v15 = BYTE6(__dst[15]);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_38();
      v33 = v1 == 0xD000000000000014 && v32 == v0;
      if (v33 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (__dst[17])
        {
          goto LABEL_7;
        }

        v34 = __dst[16];
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v36 = v1 == 0xD000000000000018 && v35 == v0;
        if (v36 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
        {
          if (__dst[19])
          {
            goto LABEL_7;
          }

          v34 = __dst[18];
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v38 = v1 == 0xD000000000000010 && v37 == v0;
          if (v38 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
          {
            if (__dst[21])
            {
              goto LABEL_7;
            }

            v34 = __dst[20];
          }

          else
          {
            OUTLINED_FUNCTION_38();
            v40 = v1 == 0xD000000000000015 && v39 == v0;
            if (v40 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
            {
              if (__dst[23])
              {
                goto LABEL_7;
              }

              v34 = __dst[22];
            }

            else
            {
              OUTLINED_FUNCTION_38();
              if (v1 != 0xD000000000000027 || v41 != v0)
              {
                OUTLINED_FUNCTION_0_14();
                if ((sub_19393CA30() & 1) == 0)
                {
                  OUTLINED_FUNCTION_38();
                  v44 = v1 == 0xD000000000000018 && v43 == v0;
                  if (v44 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    v15 = BYTE1(__dst[25]);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v46 = v1 == 0xD000000000000012 && v45 == v0;
                    if (v46 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                    {
                      v15 = BYTE2(__dst[25]);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_103_3();
                      v48 = v1 == 0x7361487475706E69 && v0 == v47;
                      if (v48 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        v15 = BYTE3(__dst[25]);
                      }

                      else
                      {
                        v49 = v1 == 0x7361487475706E69 && v0 == 0xEB000000004C5255;
                        if (v49 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                        {
                          v15 = BYTE4(__dst[25]);
                        }

                        else
                        {
                          OUTLINED_FUNCTION_101_3();
                          v51 = v1 == 0x7361487475706E69 && v0 == v50;
                          if (v51 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                          {
                            v15 = BYTE5(__dst[25]);
                          }

                          else
                          {
                            OUTLINED_FUNCTION_80_4();
                            v52 = v3 && v0 == 0xEA00000000006874;
                            if (v52 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[27])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[26];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_79_5(0x4C656C746974);
                            v53 = v3 && v0 == 0xEB00000000687467;
                            if (v53 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[29])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[28];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_86_3();
                            v54 = v3 && v0 == 0xEE006874676E654CLL;
                            if (v54 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[31])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[30];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_32_9();
                            v56 = v3 && v0 == v55;
                            if (v56 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[33])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[32];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_78_4();
                            v57 = v3 && v0 == 0xEC0000006874676ELL;
                            if (v57 || (OUTLINED_FUNCTION_74_2(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[35])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[34];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_38();
                            v59 = v1 == 0xD000000000000010 && v58 == v0;
                            if (v59 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[37])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[36];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_38();
                            v61 = v1 == 0xD000000000000011 && v60 == v0;
                            if (v61 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[39])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[38];
                              goto LABEL_9;
                            }

                            OUTLINED_FUNCTION_38();
                            v63 = v1 == 0xD000000000000010 && v62 == v0;
                            if (v63 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (!__dst[41])
                              {
                                goto LABEL_7;
                              }

                              v76[0] = __dst[40];
                              v76[1] = __dst[41];
                              goto LABEL_10;
                            }

                            v64 = v1 == 0x6B6E7568436D756ELL && v0 == 0xE900000000000073;
                            if (v64 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[43])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[42];
                              goto LABEL_9;
                            }

                            v65 = v1 == 0x69727465526D756ELL && v0 == 0xEA00000000007365;
                            if (v65 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[45])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[44];
                              goto LABEL_9;
                            }

                            v66 = v1 == 0x6143534D476D756ELL && v0 == 0xEB00000000736C6CLL;
                            if (v66 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              if (__dst[47])
                              {
                                goto LABEL_7;
                              }

                              v4 = __dst[46];
                              goto LABEL_9;
                            }

                            v67 = v1 == 0x6767697254636366 && v0 == 0xEC00000064657265;
                            if (v67 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              v15 = BYTE1(__dst[47]);
                            }

                            else
                            {
                              OUTLINED_FUNCTION_38();
                              if (v1 != 0xD000000000000019 || v68 != v0)
                              {
                                OUTLINED_FUNCTION_0_14();
                                if ((sub_19393CA30() & 1) == 0)
                                {
                                  if (v1 != 0x7079546C65646F6DLL || v0 != 0xE900000000000065)
                                  {
                                    OUTLINED_FUNCTION_59_1();
                                    OUTLINED_FUNCTION_0_14();
                                    if ((sub_19393CA30() & 1) == 0)
                                    {
                                      sub_19349AB64();
                                      OUTLINED_FUNCTION_11();
                                      v71 = swift_allocError();
                                      OUTLINED_FUNCTION_9_3(v71, v72);
                                      *(v73 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.SummarizationEvent;
                                      v74 = swift_allocObject();
                                      v75 = OUTLINED_FUNCTION_28_3(v74);
                                      memcpy(v75, __dst, 0x189uLL);
                                      OUTLINED_FUNCTION_26_0();

                                      sub_1934A8630(__dst, v76);
                                      goto LABEL_11;
                                    }
                                  }

                                  if (__dst[49])
                                  {
                                    goto LABEL_7;
                                  }

                                  v4 = __dst[48];
                                  goto LABEL_9;
                                }
                              }

                              v15 = BYTE2(__dst[47]);
                            }
                          }
                        }
                      }
                    }
                  }

LABEL_53:
                  if (v15 == 2)
                  {
                    goto LABEL_7;
                  }

                  LOBYTE(v76[0]) = v15 & 1;
LABEL_10:
                  sub_1934948FC();
                  goto LABEL_11;
                }
              }

              if (__dst[25])
              {
                goto LABEL_7;
              }

              v34 = __dst[24];
            }
          }
        }
      }

      v76[0] = v34;
      goto LABEL_10;
    }
  }

  if ((__dst[1] & 1) == 0)
  {
    v4 = __dst[0];
LABEL_9:
    v76[0] = v4;
    goto LABEL_10;
  }

LABEL_7:
  OUTLINED_FUNCTION_36_4();
LABEL_11:
  OUTLINED_FUNCTION_27();
}

void sub_1934A5EB8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, 0x119uLL);
  OUTLINED_FUNCTION_38();
  v4 = v1 == 0xD00000000000001CLL && v3 == v0;
  if (v4 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = LOBYTE(__dst[0]);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v7 = v1 == 0xD00000000000001ELL && v6 == v0;
  if (v7 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = BYTE1(__dst[0]);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_79_5(0x4C7475706E69);
  v8 = v4 && v0 == 0xEB00000000687467;
  if (v8 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[2])
    {
      goto LABEL_8;
    }

    v9 = __dst[1];
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_38();
  v11 = v1 == 0xD000000000000010 && v10 == v0;
  if (v11 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[4])
    {
      goto LABEL_8;
    }

    v9 = __dst[3];
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_38();
  v13 = v1 == 0xD00000000000001DLL && v12 == v0;
  if (v13 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[6])
    {
      goto LABEL_8;
    }

    v9 = __dst[5];
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_38();
  v15 = v1 == 0xD000000000000018 && v14 == v0;
  if (v15 || (OUTLINED_FUNCTION_0_14(), v63 = v16, (sub_19393CA30() & 1) != 0))
  {
    v5 = BYTE1(__dst[6]);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v18 = v1 == 0xD000000000000010 && v17 == v0;
  if (v18 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (!__dst[8])
    {
      goto LABEL_8;
    }

    v60 = __dst[7];
    v61 = __dst[8];
LABEL_10:
    sub_1934948FC();
    goto LABEL_11;
  }

  v19 = v1 == 0x65736E6F70736572 && v0 == 0xEF79636E65677255;
  if (v19 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[10])
    {
      goto LABEL_8;
    }

    v9 = __dst[9];
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_38();
  v21 = v1 == 0xD00000000000001DLL && v20 == v0;
  if (v21 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[11])
    {
      goto LABEL_8;
    }

    LODWORD(v60) = HIDWORD(__dst[10]);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_17();
  v23 = v4 && v22 == v0;
  if (v23 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[13])
    {
      goto LABEL_8;
    }

    v9 = __dst[12];
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_38();
  v25 = v1 == 0xD000000000000010 && v24 == v0;
  if (v25 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if ((__dst[15] & 0x100) != 0)
    {
      goto LABEL_8;
    }

    v60 = __dst[14];
    LOBYTE(v61) = __dst[15] & 1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v27 = v1 == 0xD00000000000001ALL && v26 == v0;
  if (v27 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[17])
    {
      goto LABEL_8;
    }

    v28 = __dst[16];
    goto LABEL_102;
  }

  OUTLINED_FUNCTION_38();
  v30 = v1 == 0xD000000000000015 && v29 == v0;
  if (v30 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[19])
    {
      goto LABEL_8;
    }

    v28 = __dst[18];
    goto LABEL_102;
  }

  OUTLINED_FUNCTION_38();
  v32 = v1 == 0xD000000000000014 && v31 == v0;
  if (v32 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (__dst[21])
    {
      goto LABEL_8;
    }

    v28 = __dst[20];
LABEL_102:
    v60 = v28;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v34 = v1 == v63 && v33 == v0;
  if (v34 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v5 = BYTE1(__dst[21]);
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v36 = v1 == 0xD000000000000012 && v35 == v0;
    if (v36 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      v5 = BYTE2(__dst[21]);
    }

    else
    {
      OUTLINED_FUNCTION_103_3();
      v38 = v1 == 0x7361487475706E69 && v0 == v37;
      if (v38 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v5 = BYTE3(__dst[21]);
      }

      else
      {
        v39 = v1 == 0x7361487475706E69 && v0 == 0xEB000000004C5255;
        if (v39 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
        {
          v5 = BYTE4(__dst[21]);
        }

        else
        {
          OUTLINED_FUNCTION_101_3();
          if (v1 != 0x7361487475706E69 || v0 != v40)
          {
            OUTLINED_FUNCTION_0_14();
            if ((sub_19393CA30() & 1) == 0)
            {
              OUTLINED_FUNCTION_80_4();
              v43 = v4 && v0 == v42;
              if (v43 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
              {
                if (__dst[23])
                {
                  goto LABEL_8;
                }

                v9 = __dst[22];
              }

              else
              {
                OUTLINED_FUNCTION_79_5(0x4C656C746974);
                v44 = v4 && v0 == 0xEB00000000687467;
                if (v44 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                {
                  if (__dst[25])
                  {
                    goto LABEL_8;
                  }

                  v9 = __dst[24];
                }

                else
                {
                  OUTLINED_FUNCTION_86_3();
                  v46 = v4 && v0 == v45;
                  if (v46 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[27])
                    {
                      goto LABEL_8;
                    }

                    v9 = __dst[26];
                  }

                  else
                  {
                    OUTLINED_FUNCTION_32_9();
                    v48 = v4 && v0 == v47;
                    if (v48 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                    {
                      if (__dst[29])
                      {
                        goto LABEL_8;
                      }

                      v9 = __dst[28];
                    }

                    else
                    {
                      OUTLINED_FUNCTION_74_2();
                      OUTLINED_FUNCTION_78_4();
                      v50 = v4 && v0 == v49;
                      if (v50 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        if (__dst[31])
                        {
                          goto LABEL_8;
                        }

                        v9 = __dst[30];
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        v52 = v1 == 0xD000000000000010 && v51 == v0;
                        if (v52 || (OUTLINED_FUNCTION_27_0(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                        {
                          if (__dst[33])
                          {
                            goto LABEL_8;
                          }

                          v9 = __dst[32];
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38();
                          if (v1 != 0xD000000000000011 || v53 != v0)
                          {
                            OUTLINED_FUNCTION_0_14();
                            if ((sub_19393CA30() & 1) == 0)
                            {
                              sub_19349AB64();
                              OUTLINED_FUNCTION_11();
                              v55 = swift_allocError();
                              OUTLINED_FUNCTION_9_3(v55, v56);
                              *(v57 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.ClassificationEvent;
                              v58 = swift_allocObject();
                              v59 = OUTLINED_FUNCTION_28_3(v58);
                              memcpy(v59, __dst, 0x119uLL);
                              OUTLINED_FUNCTION_26_0();

                              sub_1934A868C(__dst, &v60);
                              goto LABEL_11;
                            }
                          }

                          if (__dst[35])
                          {
                            goto LABEL_8;
                          }

                          v9 = __dst[34];
                        }
                      }
                    }
                  }
                }
              }

LABEL_25:
              v60 = v9;
              goto LABEL_10;
            }
          }

          v5 = BYTE5(__dst[21]);
        }
      }
    }
  }

LABEL_7:
  if (v5 != 2)
  {
    LOBYTE(v60) = v5 & 1;
    goto LABEL_10;
  }

LABEL_8:
  OUTLINED_FUNCTION_36_4();
LABEL_11:
  OUTLINED_FUNCTION_27();
}

void sub_1934A657C()
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_85_2();
  v5 = v0 == v4 && v3 == 0xE600000000000000;
  if (v5 || (v6 = v3, (OUTLINED_FUNCTION_55_4() & 1) != 0))
  {
    if (v2)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v7 = swift_allocError();
    *v8 = v0;
    *(v8 + 8) = v6;
    *(v8 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus;
    *(v8 + 16) = v1;
    *(v8 + 24) = v2;
    OUTLINED_FUNCTION_23_2(v7, v8);
  }
}

void sub_1934A6670()
{
  OUTLINED_FUNCTION_62_3();
  v4 = v3;
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_85_2();
  if (v4 != v7 || v5 != v6)
  {
    v9 = v5;
    OUTLINED_FUNCTION_107_1();
    v16 = *(v0 + 32);
    v10 = *(v0 + 40);
    if ((OUTLINED_FUNCTION_91_2() & 1) == 0)
    {
      v11 = v4 == 0x7375746174536F74 && v9 == 0xE800000000000000;
      if (v11 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
      {
        if (v2)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v12 = v4 == 0x6E6F697461727564 && v9 == 0xE800000000000000;
        if (!v12 && (OUTLINED_FUNCTION_91_2() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          OUTLINED_FUNCTION_106_0();
          *v13 = v4;
          v13[1] = v9;
          v13[5] = &type metadata for GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition;
          v14 = swift_allocObject();
          v15 = OUTLINED_FUNCTION_14_14(v14);
          *(v15 + 48) = v16;
          *(v15 + 56) = v10;
          OUTLINED_FUNCTION_48_4();
          swift_willThrow();

          goto LABEL_9;
        }

        if (v10)
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_1934A680C()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, 0x42uLL);
  OUTLINED_FUNCTION_38();
  v11 = v1 == 0xD000000000000011 && v4 == v0;
  if (v11 || (OUTLINED_FUNCTION_49_1(), OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (__dst[1])
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v24[0] = __dst[0];
    v12 = MEMORY[0x1E69E7360];
    goto LABEL_9;
  }

  v3 = 0x6550736E656B6F74;
  v13 = v1 == 0x6550736E656B6F74 && v0 == 0xEF646E6F63655372;
  if (v13 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (__dst[3])
    {
      goto LABEL_7;
    }

    v24[0] = __dst[2];
    v12 = MEMORY[0x1E69E63B0];
    goto LABEL_9;
  }

  v3 = 0x64656E6769537369;
  v14 = v1 == 0x64656E6769537369 && v0 == 0xEA00000000006E49;
  if (v14 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    v15 = BYTE1(__dst[3]);
LABEL_23:
    if (v15 == 2)
    {
      goto LABEL_7;
    }

    LOBYTE(v24[0]) = v15 & 1;
    v12 = MEMORY[0x1E69E6370];
    goto LABEL_9;
  }

  v3 = 0x6573556C65646F6DLL;
  v16 = v1 == 0x6573556C65646F6DLL && v0 == 0xE900000000000064;
  if (v16 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (!__dst[5])
    {
      goto LABEL_7;
    }

    v24[0] = __dst[4];
    v24[1] = __dst[5];
    v12 = MEMORY[0x1E69E6158];
    goto LABEL_9;
  }

  v3 = 0x6372616553626577;
  v17 = v1 == 0x6372616553626577 && v0 == 0xED00006465735568;
  if (v17 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    v15 = LOBYTE(__dst[6]);
    goto LABEL_23;
  }

  v18 = v1 == 0x54746E756F636361 && v0 == 0xEB00000000657079;
  if (v18 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if ((__dst[8] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v12 = &type metadata for GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType;
LABEL_9:
    OUTLINED_FUNCTION_52_2(v3, v12, v5, v6, v7, v8, v9, v10, v24[0]);
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v19 = swift_allocError();
  OUTLINED_FUNCTION_9_3(v19, v20);
  *(v21 + 40) = &type metadata for GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest;
  v22 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_28_3(v22);
  memcpy(v23, __dst, 0x42uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1934A86E8(__dst, v24);
}

id sub_1934A6AC4()
{
  OUTLINED_FUNCTION_7_12();
  v3 = OUTLINED_FUNCTION_114_1();
  v10 = *v0;
  v11 = v2 == v3 && v1 == v4;
  if (v11 || (OUTLINED_FUNCTION_0_14(), v3 = sub_19393CA30(), (v3 & 1) != 0))
  {
    if (!(v10 >> 61))
    {
      v33 = *(v10 + 16);
      v34 = *(v10 + 32);
      v35 = *(v10 + 40);
      v12 = &type metadata for GenerativeFunctionsInstrumentationError.GenericError;
      v13 = &off_1F07BE248;
LABEL_8:
      OUTLINED_FUNCTION_53_2(v3, v12, v13, v5, v6, v7, v8, v9, v33);
      return sub_193494798(v14, v15, v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v19 = v2 == 0xD000000000000018 && v18 == v1;
    if (v19 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      if (v10 >> 61 == 1)
      {
        OUTLINED_FUNCTION_38_6();
        v12 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError;
        v13 = &off_1F07BE258;
        goto LABEL_8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v21 = v2 == 0xD00000000000001ALL && v20 == v1;
      if (v21 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (v10 >> 61 == 2)
        {
          OUTLINED_FUNCTION_4_6(v10 & 0x1FFFFFFFFFFFFFFFLL);
          v12 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerInferenceError;
          v13 = &off_1F07BE2A8;
          goto LABEL_8;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v23 = v2 == 0xD000000000000017 && v22 == v1;
        if (v23 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
        {
          if (v10 >> 61 == 3)
          {
            OUTLINED_FUNCTION_38_6();
            v12 = &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError;
            v13 = &off_1F07BE2B8;
            goto LABEL_8;
          }
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v25 = v2 == 0xD000000000000014 && v24 == v1;
          if (v25 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
          {
            if (v10 >> 61 == 4)
            {
              OUTLINED_FUNCTION_4_6(v10 & 0x1FFFFFFFFFFFFFFFLL);
              v12 = &type metadata for GenerativeFunctionsInstrumentationError.TokenGenerationError;
              v13 = &off_1F07BE2F8;
              goto LABEL_8;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_17();
            if (!v11 || v26 != v1)
            {
              OUTLINED_FUNCTION_0_14();
              if ((sub_19393CA30() & 1) == 0)
              {
                OUTLINED_FUNCTION_38();
                if (v2 == 0xD000000000000013 && v28 == v1)
                {
                  if (v10 >> 61 != 6)
                  {
                    goto LABEL_52;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_0_14();
                  if ((sub_19393CA30() & 1) == 0 || (v10 & 0xE000000000000000) != 0xC000000000000000)
                  {
                    goto LABEL_52;
                  }
                }

                OUTLINED_FUNCTION_38_6();
                v12 = &type metadata for GenerativeFunctionsInstrumentationError.ClassificationError;
                v13 = &off_1F07BE398;
                goto LABEL_8;
              }
            }

            if (v10 >> 61 == 5)
            {
              OUTLINED_FUNCTION_38_6();
              v12 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError;
              v13 = &off_1F07BE308;
              goto LABEL_8;
            }
          }
        }
      }
    }
  }

LABEL_52:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v30 = swift_allocError();
  OUTLINED_FUNCTION_64(v30, v31);
  OUTLINED_FUNCTION_19_1(v32, &type metadata for GenerativeFunctionsInstrumentationError);
}

id sub_1934A6F28()
{
  OUTLINED_FUNCTION_11_5();
  v3 = *v0;
  v4 = v2 == 0x7245656C706D6973 && v1 == 0xEB00000000726F72;
  if (v4 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (!(v3 >> 61))
    {
      OUTLINED_FUNCTION_67_5();
      v11 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError;
      v12 = &off_1F07BE268;
LABEL_8:
      OUTLINED_FUNCTION_53_2(v5, v11, v12, v6, v7, v8, v9, v10, v27);
      return sub_193494798(v13, v14, v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v18 = v2 == 0xD000000000000022 && v17 == v1;
    if (v18 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      if (v3 >> 61 == 1)
      {
        OUTLINED_FUNCTION_37_4();
        v11 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UnrecognizedInferenceProviderError;
        v12 = &off_1F07BE278;
        goto LABEL_8;
      }
    }

    else
    {
      v19 = v2 == 0x636E657265666E69 && v1 == 0xEE00726F72724565;
      if (v19 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (v3 >> 61 == 2)
        {
          OUTLINED_FUNCTION_4_6(v3 & 0x1FFFFFFFFFFFFFFFLL);
          v11 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerInferenceError;
          v12 = &off_1F07BE2A8;
          goto LABEL_8;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38();
        if (v2 != 0xD000000000000017 || v20 != v1)
        {
          OUTLINED_FUNCTION_0_14();
          if ((sub_19393CA30() & 1) == 0)
          {
            OUTLINED_FUNCTION_8_17();
            if (v4 && v22 == v1)
            {
              if (v3 >> 61 != 4)
              {
                goto LABEL_38;
              }
            }

            else
            {
              OUTLINED_FUNCTION_0_14();
              if ((sub_19393CA30() & 1) == 0 || (v3 & 0xE000000000000000) != 0x8000000000000000)
              {
                goto LABEL_38;
              }
            }

            OUTLINED_FUNCTION_37_4();
            v11 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UseCaseDisabledError;
            v12 = &off_1F07BE298;
            goto LABEL_8;
          }
        }

        if (v3 >> 61 == 3)
        {
          OUTLINED_FUNCTION_37_4();
          v11 = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.MissingEntitlementError;
          v12 = &off_1F07BE288;
          goto LABEL_8;
        }
      }
    }
  }

LABEL_38:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v24 = swift_allocError();
  OUTLINED_FUNCTION_64(v24, v25);
  OUTLINED_FUNCTION_19_1(v26, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError);
}

void sub_1934A7198(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  OUTLINED_FUNCTION_22_4();
  v14 = v14 && v7 == a2;
  if (v14 || (v15 = v6, OUTLINED_FUNCTION_20_5(27), v6 = sub_19393CA30(), (v6 & 1) != 0))
  {
    if (v4)
    {
      OUTLINED_FUNCTION_53_2(v6, MEMORY[0x1E69E6158], v8, v9, v10, v11, v12, v13, v5);
      sub_1934948FC();
    }

    else
    {
      OUTLINED_FUNCTION_35();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v16 = swift_allocError();
    *v17 = v15;
    v17[1] = a2;
    v17[5] = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UnrecognizedInferenceProviderError;
    v17[2] = v5;
    v17[3] = v4;
    OUTLINED_FUNCTION_23_2(v16, v17);
  }
}

void sub_1934A72A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0x6D656C7469746E65;
  v13 = *v8;
  v12 = v8[1];
  v14 = a1 == 0x6D656C7469746E65 && a2 == 0xEB00000000746E65;
  if (v14 || (v11 = OUTLINED_FUNCTION_31_9(), (v11 & 1) != 0))
  {
    if (v12)
    {
      OUTLINED_FUNCTION_53_2(v11, MEMORY[0x1E69E6158], a3, a4, a5, a6, a7, a8, v13);
      sub_1934948FC();
    }

    else
    {
      OUTLINED_FUNCTION_35();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v15 = swift_allocError();
    *v16 = a1;
    v16[1] = a2;
    v16[5] = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.MissingEntitlementError;
    v16[2] = v13;
    v16[3] = v12;
    OUTLINED_FUNCTION_23_2(v15, v16);
  }
}

void sub_1934A73AC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  OUTLINED_FUNCTION_22_4();
  v14 = v14 && v7 == a2;
  if (v14 || (v15 = v6, OUTLINED_FUNCTION_20_5(17), v6 = sub_19393CA30(), (v6 & 1) != 0))
  {
    if (v4)
    {
      OUTLINED_FUNCTION_53_2(v6, MEMORY[0x1E69E6158], v8, v9, v10, v11, v12, v13, v5);
      sub_1934948FC();
    }

    else
    {
      OUTLINED_FUNCTION_35();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v16 = swift_allocError();
    *v17 = v15;
    v17[1] = a2;
    v17[5] = &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UseCaseDisabledError;
    v17[2] = v5;
    v17[3] = v4;
    OUTLINED_FUNCTION_23_2(v16, v17);
  }
}

id sub_1934A74E0()
{
  OUTLINED_FUNCTION_11_5();
  v4 = *v0;
  v5 = v2 == 0x7272456C65646F6DLL && v3 == 0xEA0000000000726FLL;
  if (v5 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (!(v4 >> 62))
    {
      OUTLINED_FUNCTION_67_5();
      v12 = &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError;
      v13 = &off_1F07BE2C8;
LABEL_8:
      OUTLINED_FUNCTION_53_2(v6, v12, v13, v7, v8, v9, v10, v11, v23);
      return sub_193494798(v14, v15, v16);
    }
  }

  else
  {
    if (v2 != 0x657A6974696E6173 || v1 != 0xEE00726F72724572)
    {
      OUTLINED_FUNCTION_0_14();
      if ((sub_19393CA30() & 1) == 0)
      {
        if (v2 == 0xD000000000000017 && 0x8000000193A15300 == v1)
        {
          if (v4 >> 62 != 2)
          {
            goto LABEL_24;
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_14();
          if ((sub_19393CA30() & 1) == 0 || (v4 & 0xC000000000000000) != 0x8000000000000000)
          {
            goto LABEL_24;
          }
        }

        OUTLINED_FUNCTION_4_6(v4 & 0x3FFFFFFFFFFFFFFFLL);
        v12 = &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError;
        v13 = &off_1F07BE2E8;
        goto LABEL_8;
      }
    }

    if (v4 >> 62 == 1)
    {
      OUTLINED_FUNCTION_4_6(v4 & 0x3FFFFFFFFFFFFFFFLL);
      v12 = &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError;
      v13 = &off_1F07BE2D8;
      goto LABEL_8;
    }
  }

LABEL_24:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v20 = swift_allocError();
  OUTLINED_FUNCTION_64(v20, v21);
  OUTLINED_FUNCTION_19_1(v22, &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError);
}

void sub_1934A7718(uint64_t a1@<X0>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_117_3();
  v6 = OUTLINED_FUNCTION_97();
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 9);
  v12 = a1 == (v6 | 0x7361437200000000) && v7 == v8;
  if (v12 || (v13 = v7, OUTLINED_FUNCTION_59_1(), (sub_19393CA30() & 1) != 0))
  {
    if (v11)
    {
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v14 = swift_allocError();
    *v15 = a1;
    *(v15 + 8) = v13;
    *(v15 + 40) = a2;
    *(v15 + 16) = v9;
    *(v15 + 24) = v10;
    *(v15 + 25) = v11;
    OUTLINED_FUNCTION_23_2(v14, v15);
  }

  OUTLINED_FUNCTION_54_0();
}

id sub_1934A7844()
{
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_68_1();
  v5 = v5 && v1 == v4;
  if (v5 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (!(v0 >> 61))
    {
      v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.UnknownError;
      v7 = &off_1F07BE318;
      return sub_193494798(v6, v7, v3);
    }
  }

  else
  {
    v8 = v2 == 0x6F6F547475706E69 && v1 == 0xED000074726F6853;
    if (v8 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      if (v0 >> 61 == 1)
      {
        OUTLINED_FUNCTION_51_3(v0 & 0x1FFFFFFFFFFFFFFFLL);
        v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.InputTooShort;
        v7 = &off_1F07BE328;
        return sub_193494798(v6, v7, v3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_17();
      v11 = v5 && v10 == v1;
      if (v11 || (OUTLINED_FUNCTION_66_3(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if (v0 >> 61 == 2)
        {
          OUTLINED_FUNCTION_4_6(v0 & 0x1FFFFFFFFFFFFFFFLL);
          v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData;
          v7 = &off_1F07BE338;
          return sub_193494798(v6, v7, v3);
        }
      }

      else
      {
        OUTLINED_FUNCTION_45_7();
        v13 = v5 && v1 == v12;
        if (v13 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
        {
          if (v0 >> 61 == 3)
          {
            v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.UseCaseDisabled;
            v7 = &off_1F07BE348;
            return sub_193494798(v6, v7, v3);
          }
        }

        else
        {
          OUTLINED_FUNCTION_8_17();
          v15 = v5 && v14 == v1;
          if (v15 || (OUTLINED_FUNCTION_66_3(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
          {
            if (v0 >> 61 == 4)
            {
              v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.MissingResponseData;
              v7 = &off_1F07BE358;
              return sub_193494798(v6, v7, v3);
            }
          }

          else
          {
            OUTLINED_FUNCTION_38();
            v17 = v2 == 0xD000000000000019 && v16 == v1;
            if (v17 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
            {
              if (v0 >> 61 == 5)
              {
                v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.UnknownSummarizationStyle;
                v7 = &off_1F07BE368;
                return sub_193494798(v6, v7, v3);
              }
            }

            else
            {
              OUTLINED_FUNCTION_38();
              if (v2 != 0xD00000000000001ALL || v18 != v1)
              {
                OUTLINED_FUNCTION_0_14();
                if ((sub_19393CA30() & 1) == 0)
                {
                  OUTLINED_FUNCTION_38();
                  if (v2 == 0xD00000000000001CLL && v20 == v1)
                  {
                    if (v0 >> 61 != 7)
                    {
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0_14();
                    if ((sub_19393CA30() & 1) == 0 || v0 >> 61 != 7)
                    {
                      goto LABEL_59;
                    }
                  }

                  OUTLINED_FUNCTION_37_4();
                  v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.InvalidModelBundleIdentifier;
                  v7 = &off_1F07BE388;
                  return sub_193494798(v6, v7, v3);
                }
              }

              if (v0 >> 61 == 6)
              {
                v6 = &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.UnknownVisualPromptUseCase;
                v7 = &off_1F07BE378;
                return sub_193494798(v6, v7, v3);
              }
            }
          }
        }
      }
    }
  }

LABEL_59:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v22 = swift_allocError();
  OUTLINED_FUNCTION_64(v22, v23);
  OUTLINED_FUNCTION_19_1(v24, &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError);
}

void sub_1934A7C90()
{
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_41_6();
  v4 = v0 == v3 && v2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_55_4() & 1) != 0)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_118_0();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_100_5(v5, v6);
    OUTLINED_FUNCTION_16_8(v7, &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData);
  }

  OUTLINED_FUNCTION_93_1();
}

id sub_1934A7E08()
{
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_68_1();
  v5 = v5 && v1 == v4;
  if (v5 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (!(v0 >> 62))
    {
      v6 = &type metadata for GenerativeFunctionsInstrumentationError.ClassificationError.UnknownError;
      v7 = &off_1F07BE3A8;
      return sub_193494798(v6, v7, v3);
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_7();
    v10 = v5 && v1 == v9;
    if (v10 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
    {
      if (v0 >> 62 == 1)
      {
        v6 = &type metadata for GenerativeFunctionsInstrumentationError.ClassificationError.UseCaseDisabled;
        v7 = &off_1F07BE3B8;
        return sub_193494798(v6, v7, v3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_38();
      if (v2 != 0xD00000000000001CLL || v11 != v1)
      {
        OUTLINED_FUNCTION_0_14();
        if ((sub_19393CA30() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_17();
          if (v5 && v13 == v1)
          {
            if (v0 >> 62 != 3)
            {
              goto LABEL_31;
            }
          }

          else
          {
            OUTLINED_FUNCTION_0_14();
            if ((sub_19393CA30() & 1) == 0 || v0 >> 62 != 3)
            {
              goto LABEL_31;
            }
          }

          OUTLINED_FUNCTION_51_3(v0 & 0x3FFFFFFFFFFFFFFFLL);
          v6 = &type metadata for GenerativeFunctionsInstrumentationError.ClassificationError.InvalidEmbeddingDimension;
          v7 = &off_1F07BE3D8;
          return sub_193494798(v6, v7, v3);
        }
      }

      if (v0 >> 62 == 2)
      {
        v18 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v6 = &type metadata for GenerativeFunctionsInstrumentationError.ClassificationError.InvalidModelBundleIdentifier;
        v7 = &off_1F07BE3C8;
        return sub_193494798(v6, v7, v3);
      }
    }
  }

LABEL_31:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v15 = swift_allocError();
  OUTLINED_FUNCTION_64(v15, v16);
  OUTLINED_FUNCTION_19_1(v17, &type metadata for GenerativeFunctionsInstrumentationError.ClassificationError);
}

uint64_t sub_1934A7FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v6 = swift_allocError();
  *v7 = a1;
  v7[1] = a2;
  v7[5] = a3;
  OUTLINED_FUNCTION_23_2(v6, v7);
}

void sub_1934A8068()
{
  OUTLINED_FUNCTION_94_2();
  v2 = v1;
  v4 = v3;
  v6 = *v0;
  v5 = v0[1];
  OUTLINED_FUNCTION_22_4();
  v10 = v10 && v8 == v2;
  if (v10 || (v11 = v9, v12 = v7, (OUTLINED_FUNCTION_92_1() & 1) != 0))
  {
    if (v5)
    {
      sub_1934948FC();
    }

    else
    {
      *v4 = 0u;
      v4[1] = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v13 = swift_allocError();
    *v14 = v12;
    v14[1] = v2;
    v14[5] = v11;
    v14[2] = v6;
    v14[3] = v5;
    OUTLINED_FUNCTION_23_2(v13, v14);
  }

  OUTLINED_FUNCTION_93_1();
}

uint64_t sub_1934A83C4(uint64_t a1)
{
  if (*(a1 + 185))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1934A83E0(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1934A8518(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_95();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_39_9(uint64_t result)
{
  *(result + 30) = *(v1 + 14);
  *(result + 26) = *(v1 + 10);
  return result;
}

void OUTLINED_FUNCTION_41_6()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
}

void OUTLINED_FUNCTION_51_3(uint64_t a1@<X8>)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
}

void OUTLINED_FUNCTION_67_5()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
}

__n128 OUTLINED_FUNCTION_102_3()
{
  v2 = *v0;
  v3 = v0[1];
  return v0[2];
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return sub_1934948FC();
}

uint64_t static GenerativeFunctionsInstrumentationEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  v5 = v4[7];
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  OUTLINED_FUNCTION_68_2();
  sub_1934B0EDC(v6, v7);
  if ((OUTLINED_FUNCTION_163() & 1) == 0)
  {
    goto LABEL_33;
  }

  v8 = v4[8];
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v9 == *v11 && v10 == v11[1];
  if (!v12 && (sub_19393CA30() & 1) == 0)
  {
    goto LABEL_33;
  }

  v13 = v4[9];
  v14 = a1 + v13;
  v15 = *(a1 + v13 + 9);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 9);
  if (v15)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v18 = *v16;
    v19 = *(v16 + 8);
    v20 = *(v14 + 8);
    v39[0] = *v14;
    LOWORD(v39[1]) = v20;
    if (v17)
    {
      goto LABEL_33;
    }

    v38[0] = v18;
    LOBYTE(v38[1]) = v19 & 1;
    sub_1934B0E34();
    if ((OUTLINED_FUNCTION_129() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v21 = v4[10];
  v22 = type metadata accessor for MonotonicTimestamp();
  OUTLINED_FUNCTION_67_6();
  sub_1934B0EDC(v23, v24);
  if ((OUTLINED_FUNCTION_163() & 1) == 0 || *(a1 + v4[11]) != *(a2 + v4[11]) || *(a1 + v4[12]) != *(a2 + v4[12]))
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_144_0(v4[13]);
  if (v12)
  {
    v26 = v25 & ~v22;
    sub_19344BF2C(v21);
    sub_19344BF2C(v22);
    if (v26)
    {
LABEL_21:
      sub_193444048(v21);
      sub_193444048(v22);
LABEL_33:
      v32 = 0;
      return v32 & 1;
    }

    sub_193444048(v21);
  }

  else
  {
    v39[0] = v21;
    if ((v25 & ~v22) == 0)
    {
      sub_19344BF2C(v21);
      sub_19344BF2C(v22);
      sub_19344BF2C(v21);

      goto LABEL_21;
    }

    v38[0] = v22;
    sub_19344BF2C(v21);
    sub_19344BF2C(v22);
    sub_19344BF2C(v21);
    sub_1934B0DE0();
    v22 = OUTLINED_FUNCTION_129();

    sub_193444048(v21);
    if ((v22 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  OUTLINED_FUNCTION_144_0(v4[14]);
  if (v12)
  {
    v28 = v27 & ~v22;
    sub_193437C90(v21);
    sub_193437C90(v22);
    if (v28)
    {
LABEL_29:
      sub_193444060(v21);
      sub_193444060(v22);
      goto LABEL_33;
    }

    sub_193444060(v21);
  }

  else
  {
    v39[0] = v21;
    if ((v27 & ~v22) == 0)
    {
      sub_193437C90(v21);
      sub_193437C90(v22);
      sub_193437C90(v21);

      goto LABEL_29;
    }

    v38[0] = v22;
    sub_193437C90(v21);
    sub_193437C90(v22);
    sub_193437C90(v21);
    sub_1934B0D8C();
    v29 = OUTLINED_FUNCTION_129();

    sub_193444060(v21);
    if ((v29 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if ((sub_1934B0C44(*(a1 + v4[15]), *(a2 + v4[15])) & 1) == 0)
  {
    goto LABEL_33;
  }

  v30 = v4[16];
  memcpy(__dst, (a1 + v30), sizeof(__dst));
  memcpy(__src, (a1 + v30), sizeof(__src));
  v31 = v4[16];
  memcpy(v37, (a2 + v31), sizeof(v37));
  memcpy(v34, (a2 + v31), sizeof(v34));
  sub_19344FABC(__dst, v39);
  sub_19344FABC(v37, v39);
  sub_19344EEF4();
  v32 = sub_19393C550();
  memcpy(v38, v34, sizeof(v38));
  sub_1934500D8(v38);
  memcpy(v39, __src, sizeof(v39));
  sub_1934500D8(v39);
  return v32 & 1;
}

uint64_t GenerativeFunctionsInstrumentationEvent.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  v5 = v4[7];
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  OUTLINED_FUNCTION_68_2();
  sub_1934B0EDC(v6, v7);
  OUTLINED_FUNCTION_162();
  v8 = (v2 + v4[8]);
  v9 = *v8;
  v10 = v8[1];
  sub_19393C640();
  v11 = v2 + v4[9];
  if (*(v11 + 9) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v12 = *(v11 + 8);
    __dst[0] = *v11;
    LOBYTE(__dst[1]) = v12 & 1;
    sub_19393CAD0();
    sub_1934B0E88();
    OUTLINED_FUNCTION_161();
    sub_19393C540();
  }

  v13 = v4[10];
  type metadata accessor for MonotonicTimestamp();
  OUTLINED_FUNCTION_67_6();
  sub_1934B0EDC(v14, v15);
  OUTLINED_FUNCTION_162();
  MEMORY[0x193B18060](*(v2 + v4[11]));
  v16 = *(v2 + v4[12]);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x193B18060](*&v16);
  if ((~*(v2 + v4[13]) & 0xF000000000000007) != 0)
  {
    __dst[0] = *(v2 + v4[13]);
    sub_19393CAD0();
    sub_1934B0F24();

    OUTLINED_FUNCTION_161();
    sub_19393C540();
  }

  else
  {
    sub_19393CAD0();
  }

  if ((~*(v2 + v4[14]) & 0xF000000000000007) != 0)
  {
    __dst[0] = *(v2 + v4[14]);
    sub_19393CAD0();
    sub_1934B0F78();

    OUTLINED_FUNCTION_161();
    sub_19393C540();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_1934B10C0(a1, *(v2 + v4[15]));
  memcpy(__dst, (v2 + v4[16]), sizeof(__dst));
  sub_1934B1190();
  OUTLINED_FUNCTION_161();
  return sub_19393C540();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Subtype.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t GenerativeFunctionsInstrumentationEvent.Subtype.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x7472617453;
  switch(*v0)
  {
    case 1:
      result = 6581829;
      break;
    case 2:
      result = 1818845510;
      break;
    case 3:
      result = 1868983881;
      break;
    default:
      return result;
  }

  return result;
}

void GenerativeFunctionsInstrumentationEvent.Subtype.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x7472617453 && v0 == 0xE500000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 6581829 && v0 == 0xE300000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 1818845510 && v0 == 0xE400000000000000;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 1868983881 && v0 == 0xE400000000000000)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_0_9();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_102_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  switch(*a1 >> 60)
  {
    case 1uLL:
      if (v4 >> 60 != 1)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v34, v35, 0x59uLL);
      v36 = OUTLINED_FUNCTION_82_3();
      memcpy(v36, v37, 0x59uLL);

      v38 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.== infix(_:_:)(v38, v39);
      goto LABEL_30;
    case 2uLL:
      if (v4 >> 60 != 2)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v18, v19, 0x299uLL);
      v20 = OUTLINED_FUNCTION_82_3();
      memcpy(v20, v21, 0x299uLL);

      OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.== infix(_:_:)();
      goto LABEL_30;
    case 3uLL:
      if (v4 >> 60 != 3)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v22, v23, 0x4AuLL);
      v24 = OUTLINED_FUNCTION_82_3();
      memcpy(v24, v25, 0x4AuLL);

      v26 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.AssetAcquire.== infix(_:_:)(v26, v27);
      goto LABEL_30;
    case 4uLL:
      if (v4 >> 60 != 4)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_150_0();
      v69 = *(v4 + 42);
      v75 = *(v3 + 16);
      *v80 = *(v3 + 32);
      *&v80[10] = *(v3 + 42);

      OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.AssetRelease.== infix(_:_:)();
      goto LABEL_30;
    case 5uLL:
      if (v4 >> 60 != 5)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v40, v41, 0x142uLL);
      v42 = OUTLINED_FUNCTION_82_3();
      memcpy(v42, v43, 0x142uLL);

      OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.== infix(_:_:)();
      goto LABEL_30;
    case 6uLL:
      if (v4 >> 60 != 6)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_150_0();
      v71 = *(v4 + 48);
      v73 = *(v4 + 64);
      v77 = *(v3 + 16);
      v82 = *(v3 + 32);
      v85 = *(v3 + 48);
      v87 = *(v3 + 64);

      v50 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.== infix(_:_:)(v50, v51);
      goto LABEL_30;
    case 7uLL:
      if (v4 >> 60 != 7)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v28, v29, 0x6AuLL);
      v30 = OUTLINED_FUNCTION_82_3();
      memcpy(v30, v31, 0x6AuLL);

      v32 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.== infix(_:_:)(v32, v33);
      goto LABEL_30;
    case 8uLL:
      if (v4 >> 60 != 8)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v58, v59, 0x189uLL);
      v60 = OUTLINED_FUNCTION_82_3();
      memcpy(v60, v61, 0x189uLL);

      OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.== infix(_:_:)();
      goto LABEL_30;
    case 9uLL:
      if (v4 >> 60 != 9)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v14, v15, 0x119uLL);
      v16 = OUTLINED_FUNCTION_82_3();
      memcpy(v16, v17, 0x119uLL);

      OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.== infix(_:_:)();
      goto LABEL_30;
    case 0xAuLL:
      if (v4 >> 60 != 10)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v52, v53, 0x72uLL);
      v54 = OUTLINED_FUNCTION_82_3();
      memcpy(v54, v55, 0x72uLL);

      v56 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.AssetTransition.== infix(_:_:)(v56, v57);
      goto LABEL_30;
    case 0xBuLL:
      if (v4 >> 60 != 11)
      {
        goto LABEL_32;
      }

      v6 = v3 & 0xFFFFFFFFFFFFFFFLL;
      v7 = v4 & 0xFFFFFFFFFFFFFFFLL;
      v74 = *(v6 + 16);
      v78 = *(v6 + 24);
      v63 = *(v7 + 16);
      v65 = *(v7 + 24);

      v8 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus.== infix(_:_:)(v8, v9);
      goto LABEL_30;
    case 0xCuLL:
      if (v4 >> 60 != 12)
      {
        goto LABEL_32;
      }

      v10 = v3 & 0xFFFFFFFFFFFFFFFLL;
      v11 = v4 & 0xFFFFFFFFFFFFFFFLL;
      v76 = *(v10 + 16);
      v79 = *(v10 + 24);
      v81 = *(v10 + 32);
      v83 = *(v10 + 40);
      v84 = *(v10 + 48);
      v86 = *(v10 + 56);
      v64 = *(v11 + 16);
      v66 = *(v11 + 24);
      v67 = *(v11 + 32);
      v68 = *(v11 + 40);
      v70 = *(v11 + 48);
      v72 = *(v11 + 56);

      v12 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.== infix(_:_:)(v12, v13);
      goto LABEL_30;
    case 0xDuLL:
      if (v4 >> 60 != 13)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_12();
      memcpy(v44, v45, 0x42uLL);
      v46 = OUTLINED_FUNCTION_82_3();
      memcpy(v46, v47, 0x42uLL);

      v48 = OUTLINED_FUNCTION_64_3();
      static GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.== infix(_:_:)(v48, v49);
LABEL_30:
      OUTLINED_FUNCTION_121();
      goto LABEL_31;
    default:
      if (v4 >> 60)
      {
LABEL_32:
        v2 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_101_4();
        OUTLINED_FUNCTION_151_0();

        v5 = OUTLINED_FUNCTION_64_3();
        static GenerativeFunctionsInstrumentationMetadata.GenericError.== infix(_:_:)(v5);
        OUTLINED_FUNCTION_121();
LABEL_31:
      }

      return v2 & 1;
  }
}

uint64_t GenerativeFunctionsInstrumentationMetadata.hash(into:)()
{
  v1 = *v0;
  switch(*v0 >> 60)
  {
    case 1uLL:
      v53 = OUTLINED_FUNCTION_30_1();
      v55 = memcpy(v53, v54, 0x59uLL);
      v63 = OUTLINED_FUNCTION_44_5(v55, v56, v57, v58, v59, v60, v61, v62, v115);
      memcpy(v63, v64, 0x59uLL);
      sub_1934B15D4();
      break;
    case 2uLL:
      v17 = OUTLINED_FUNCTION_30_1();
      v19 = memcpy(v17, v18, 0x299uLL);
      v27 = OUTLINED_FUNCTION_44_5(v19, v20, v21, v22, v23, v24, v25, v26, v115);
      memcpy(v27, v28, 0x299uLL);
      sub_1934B1580();
      break;
    case 3uLL:
      v29 = OUTLINED_FUNCTION_30_1();
      v31 = memcpy(v29, v30, 0x4AuLL);
      v39 = OUTLINED_FUNCTION_44_5(v31, v32, v33, v34, v35, v36, v37, v38, v115);
      memcpy(v39, v40, 0x4AuLL);
      sub_1934B152C();
      break;
    case 4uLL:
      v3 = (v1 & 0xFFFFFFFFFFFFFFFLL);
      *&v127[10] = *(v3 + 42);
      *v127 = v3[2];
      v116 = v3[1];
      sub_1934B14D8();
      break;
    case 5uLL:
      v65 = OUTLINED_FUNCTION_30_1();
      v67 = memcpy(v65, v66, 0x142uLL);
      v75 = OUTLINED_FUNCTION_44_5(v67, v68, v69, v70, v71, v72, v73, v74, v115);
      memcpy(v75, v76, 0x142uLL);
      sub_1934B1484();
      break;
    case 6uLL:
      v89 = v1 & 0xFFFFFFFFFFFFFFFLL;
      v117 = *(v89 + 16);
      v118 = *(v89 + 32);
      v119 = *(v89 + 48);
      v120 = *(v89 + 64);
      sub_1934B1430();
      break;
    case 7uLL:
      v41 = OUTLINED_FUNCTION_30_1();
      v43 = memcpy(v41, v42, 0x6AuLL);
      v51 = OUTLINED_FUNCTION_44_5(v43, v44, v45, v46, v47, v48, v49, v50, v115);
      memcpy(v51, v52, 0x6AuLL);
      sub_1934B13DC();
      break;
    case 8uLL:
      v102 = OUTLINED_FUNCTION_30_1();
      v104 = memcpy(v102, v103, 0x189uLL);
      v112 = OUTLINED_FUNCTION_44_5(v104, v105, v106, v107, v108, v109, v110, v111, v115);
      memcpy(v112, v113, 0x189uLL);
      sub_1934B1388();
      break;
    case 9uLL:
      v5 = OUTLINED_FUNCTION_30_1();
      v7 = memcpy(v5, v6, 0x119uLL);
      v15 = OUTLINED_FUNCTION_44_5(v7, v8, v9, v10, v11, v12, v13, v14, v115);
      memcpy(v15, v16, 0x119uLL);
      sub_1934B1334();
      break;
    case 0xAuLL:
      v90 = OUTLINED_FUNCTION_30_1();
      v92 = memcpy(v90, v91, 0x72uLL);
      v100 = OUTLINED_FUNCTION_44_5(v92, v93, v94, v95, v96, v97, v98, v99, v115);
      memcpy(v100, v101, 0x72uLL);
      sub_1934B12E0();
      break;
    case 0xBuLL:
      v2 = v1 & 0xFFFFFFFFFFFFFFFLL;
      v122 = *(v2 + 16);
      v124 = *(v2 + 24);
      sub_1934B128C();
      break;
    case 0xCuLL:
      v4 = v1 & 0xFFFFFFFFFFFFFFFLL;
      v123 = *(v4 + 16);
      v125 = *(v4 + 24);
      v128 = *(v4 + 32);
      v130 = *(v4 + 40);
      v131 = *(v4 + 48);
      v132 = *(v4 + 56);
      sub_1934B1238();
      break;
    case 0xDuLL:
      v77 = OUTLINED_FUNCTION_30_1();
      v79 = memcpy(v77, v78, 0x42uLL);
      v87 = OUTLINED_FUNCTION_44_5(v79, v80, v81, v82, v83, v84, v85, v86, v115);
      memcpy(v87, v88, 0x42uLL);
      sub_1934B11E4();
      break;
    default:
      v121 = *(v1 + 16);
      v126 = *(v1 + 32);
      v129 = *(v1 + 40);
      sub_1934B1628();
      break;
  }

  return sub_19393C540();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    result = 0x6E696D6165727453;
  }

  else
  {
    result = 0x746F6853656E4FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1934A9928()
{
  OUTLINED_FUNCTION_91_0();
  v1 = OUTLINED_FUNCTION_95_0();
  v5 = OUTLINED_FUNCTION_88_0(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_105_1(v5);
  if (!(!v12 & v11))
  {
    v28 = OUTLINED_FUNCTION_33_5((v10 > 1), v7, v8, v9);
    v6 = OUTLINED_FUNCTION_17_2(v28);
  }

  OUTLINED_FUNCTION_95_2(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v29 = OUTLINED_FUNCTION_39_2((v17 > 1), v14, v15, v16);
    v13 = OUTLINED_FUNCTION_17_2(v29);
  }

  OUTLINED_FUNCTION_92_2(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v20 = OUTLINED_FUNCTION_33_5((v24 > 1), v21, v22, v23);
    v23 = v20;
  }

  OUTLINED_FUNCTION_160_1(v20, v21, v22, v23);
  *(v25 + 32) = v0;
  *(v25 + 40) = v0;
  return v26;
}

void _s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO16MMExecuteRequestV0I4TypeOyAGSgSScfC_0()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x746F6853656E4FLL && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
    {

      v4 = 0;
    }

    else if (v1 == 0x6E696D6165727453 && v0 == 0xE900000000000067)
    {

      v4 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9();
      OUTLINED_FUNCTION_89();
      v4 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v4);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_16_0(v7);
  if (!(!v14 & v13))
  {
    v191 = OUTLINED_FUNCTION_39(v12);
    v195 = OUTLINED_FUNCTION_84_2(v191, v192, v193, v194, &qword_1EAE3B0D8, &qword_193952638);
    v8 = OUTLINED_FUNCTION_17_2(v195);
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v196 = OUTLINED_FUNCTION_39(v19);
    v200 = OUTLINED_FUNCTION_85(v196, v197, v198, v199, &qword_1EAE3B0D8, &qword_193952638);
    v15 = OUTLINED_FUNCTION_17_2(v200);
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    OUTLINED_FUNCTION_39(v26);
    OUTLINED_FUNCTION_57();
    v22 = sub_1934B0FCC(v201, v202, v203, v204, v205, v206);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    v207 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_84_2(v207, v208, v209, v210, &qword_1EAE3B0D8, &qword_193952638);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v211 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v211, v212, v213, v214, &qword_1EAE3B0D8, &qword_193952638);
    v35 = v32;
  }

  OUTLINED_FUNCTION_5_11(v32, v33, v34, v35);
  if (!(v20 ^ v21 | v14))
  {
    v215 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v215, v216, v217, v218, &qword_1EAE3B0D8, &qword_193952638);
    v40 = v37;
  }

  OUTLINED_FUNCTION_7_3(v37, v38, v39, v40);
  if (!(v20 ^ v21 | v14))
  {
    v219 = OUTLINED_FUNCTION_39(v46);
    v42 = OUTLINED_FUNCTION_85(v219, v220, v221, v222, &qword_1EAE3B0D8, &qword_193952638);
    v45 = v42;
  }

  OUTLINED_FUNCTION_4_8(v42, v43, v44, v45);
  if (!(v20 ^ v21 | v14))
  {
    v223 = OUTLINED_FUNCTION_39(v51);
    v47 = OUTLINED_FUNCTION_84_2(v223, v224, v225, v226, &qword_1EAE3B0D8, &qword_193952638);
    v50 = v47;
  }

  OUTLINED_FUNCTION_6_14(v47, v48, v49, v50);
  if (!(v20 ^ v21 | v14))
  {
    v227 = OUTLINED_FUNCTION_39(v56);
    v52 = OUTLINED_FUNCTION_85(v227, v228, v229, v230, &qword_1EAE3B0D8, &qword_193952638);
    v55 = v52;
  }

  OUTLINED_FUNCTION_11_7(v52, v53, v54, v55);
  if (!(v20 ^ v21 | v14))
  {
    v231 = OUTLINED_FUNCTION_39(v61);
    v57 = OUTLINED_FUNCTION_84_2(v231, v232, v233, v234, &qword_1EAE3B0D8, &qword_193952638);
    v60 = v57;
  }

  OUTLINED_FUNCTION_50(v57, v58, v59, v60);
  OUTLINED_FUNCTION_4(v62, v63);
  OUTLINED_FUNCTION_99_3();
  if (!(v20 ^ v21 | v14))
  {
    v235 = OUTLINED_FUNCTION_39(v68);
    v64 = OUTLINED_FUNCTION_85(v235, v236, v237, v238, &qword_1EAE3B0D8, &qword_193952638);
    v67 = v64;
  }

  OUTLINED_FUNCTION_47_5(v64, v65, v66, v67);
  OUTLINED_FUNCTION_4(v69, v70);
  OUTLINED_FUNCTION_149_1();
  if (!(v20 ^ v21 | v14))
  {
    v239 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_84_2(v239, v240, v241, v242, &qword_1EAE3B0D8, &qword_193952638);
    v74 = v71;
  }

  OUTLINED_FUNCTION_50(v71, v72, v73, v74);
  OUTLINED_FUNCTION_4(v76, v77);
  OUTLINED_FUNCTION_148_0();
  if (!(v20 ^ v21 | v14))
  {
    v243 = OUTLINED_FUNCTION_39(v82);
    v78 = OUTLINED_FUNCTION_85(v243, v244, v245, v246, &qword_1EAE3B0D8, &qword_193952638);
    v81 = v78;
  }

  OUTLINED_FUNCTION_47_5(v78, v79, v80, v81);
  OUTLINED_FUNCTION_4(v83, v84);
  OUTLINED_FUNCTION_147_1();
  if (!(v20 ^ v21 | v14))
  {
    v247 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_84_2(v247, v248, v249, v250, &qword_1EAE3B0D8, &qword_193952638);
    v88 = v85;
  }

  OUTLINED_FUNCTION_50(v85, v86, v87, v88);
  OUTLINED_FUNCTION_4(v90, v91);
  OUTLINED_FUNCTION_146_1();
  if (!(v20 ^ v21 | v14))
  {
    v251 = OUTLINED_FUNCTION_39(v96);
    v92 = OUTLINED_FUNCTION_85(v251, v252, v253, v254, &qword_1EAE3B0D8, &qword_193952638);
    v95 = v92;
  }

  OUTLINED_FUNCTION_47_5(v92, v93, v94, v95);
  OUTLINED_FUNCTION_4(v97, v98);
  OUTLINED_FUNCTION_145();
  if (!(v20 ^ v21 | v14))
  {
    v255 = OUTLINED_FUNCTION_39(v103);
    v99 = OUTLINED_FUNCTION_84_2(v255, v256, v257, v258, &qword_1EAE3B0D8, &qword_193952638);
    v102 = v99;
  }

  OUTLINED_FUNCTION_50(v99, v100, v101, v102);
  OUTLINED_FUNCTION_4(v104, v105);
  if (v0 + 17 > (v110 >> 1))
  {
    v259 = OUTLINED_FUNCTION_39(v110);
    v106 = OUTLINED_FUNCTION_85(v259, v260, v261, v262, &qword_1EAE3B0D8, &qword_193952638);
    v109 = v106;
  }

  OUTLINED_FUNCTION_47_5(v106, v107, v108, v109);
  OUTLINED_FUNCTION_4(v111, v112);
  if (v0 + 18 > (v117 >> 1))
  {
    v263 = OUTLINED_FUNCTION_39(v117);
    v113 = OUTLINED_FUNCTION_84_2(v263, v264, v265, v266, &qword_1EAE3B0D8, &qword_193952638);
    v116 = v113;
  }

  OUTLINED_FUNCTION_50(v113, v114, v115, v116);
  OUTLINED_FUNCTION_4(v118, v119);
  if (v0 + 19 > (v124 >> 1))
  {
    v267 = OUTLINED_FUNCTION_39(v124);
    v120 = OUTLINED_FUNCTION_85(v267, v268, v269, v270, &qword_1EAE3B0D8, &qword_193952638);
    v123 = v120;
  }

  OUTLINED_FUNCTION_47_5(v120, v121, v122, v123);
  OUTLINED_FUNCTION_4(v125, v126);
  if (v0 + 20 > (v131 >> 1))
  {
    v271 = OUTLINED_FUNCTION_39(v131);
    v127 = OUTLINED_FUNCTION_84_2(v271, v272, v273, v274, &qword_1EAE3B0D8, &qword_193952638);
    v130 = v127;
  }

  OUTLINED_FUNCTION_50(v127, v128, v129, v130);
  OUTLINED_FUNCTION_4(v132, v133);
  if (v0 + 21 > (v138 >> 1))
  {
    v275 = OUTLINED_FUNCTION_39(v138);
    v134 = OUTLINED_FUNCTION_85(v275, v276, v277, v278, &qword_1EAE3B0D8, &qword_193952638);
    v137 = v134;
  }

  OUTLINED_FUNCTION_47_5(v134, v135, v136, v137);
  OUTLINED_FUNCTION_4(v139, v140);
  if (v0 + 22 > (v145 >> 1))
  {
    v279 = OUTLINED_FUNCTION_39(v145);
    v141 = OUTLINED_FUNCTION_84_2(v279, v280, v281, v282, &qword_1EAE3B0D8, &qword_193952638);
    v144 = v141;
  }

  OUTLINED_FUNCTION_50(v141, v142, v143, v144);
  OUTLINED_FUNCTION_4(v146, v147);
  if (v0 + 23 > (v152 >> 1))
  {
    v283 = OUTLINED_FUNCTION_39(v152);
    v148 = OUTLINED_FUNCTION_85(v283, v284, v285, v286, &qword_1EAE3B0D8, &qword_193952638);
    v151 = v148;
  }

  OUTLINED_FUNCTION_47_5(v148, v149, v150, v151);
  OUTLINED_FUNCTION_4(v153, v154);
  if (v0 + 24 > (v159 >> 1))
  {
    v287 = OUTLINED_FUNCTION_39(v159);
    v155 = OUTLINED_FUNCTION_84_2(v287, v288, v289, v290, &qword_1EAE3B0D8, &qword_193952638);
    v158 = v155;
  }

  OUTLINED_FUNCTION_50(v155, v156, v157, v158);
  OUTLINED_FUNCTION_4(v160, v161);
  if (v0 + 25 > (v166 >> 1))
  {
    v291 = OUTLINED_FUNCTION_39(v166);
    v162 = OUTLINED_FUNCTION_85(v291, v292, v293, v294, &qword_1EAE3B0D8, &qword_193952638);
    v165 = v162;
  }

  OUTLINED_FUNCTION_47_5(v162, v163, v164, v165);
  OUTLINED_FUNCTION_4(v167, v168);
  if (v0 + 26 > (v173 >> 1))
  {
    v295 = OUTLINED_FUNCTION_39(v173);
    v169 = OUTLINED_FUNCTION_84_2(v295, v296, v297, v298, &qword_1EAE3B0D8, &qword_193952638);
    v172 = v169;
  }

  OUTLINED_FUNCTION_50(v169, v170, v171, v172);
  OUTLINED_FUNCTION_4(v174, v175);
  if (v0 + 27 > (v180 >> 1))
  {
    v299 = OUTLINED_FUNCTION_39(v180);
    v176 = OUTLINED_FUNCTION_85(v299, v300, v301, v302, &qword_1EAE3B0D8, &qword_193952638);
    v179 = v176;
  }

  OUTLINED_FUNCTION_47_5(v176, v177, v178, v179);
  OUTLINED_FUNCTION_4(v181, v182);
  if (v0 + 28 > (v187 >> 1))
  {
    v303 = OUTLINED_FUNCTION_39(v187);
    v183 = OUTLINED_FUNCTION_84_2(v303, v304, v305, v306, &qword_1EAE3B0D8, &qword_193952638);
    v186 = v183;
  }

  OUTLINED_FUNCTION_50(v183, v184, v185, v186);
  return OUTLINED_FUNCTION_38_1(v188, v189);
}

void GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
      case 0x17:
      case 0x19:
        OUTLINED_FUNCTION_38();
        break;
      case 2:
      case 5:
        OUTLINED_FUNCTION_122_1(29);
        break;
      case 3:
      case 0x13:
      case 0x14:
        OUTLINED_FUNCTION_77_6(29);
        break;
      case 4:
      case 0x16:
        OUTLINED_FUNCTION_75_7(29);
        break;
      case 6:
        OUTLINED_FUNCTION_124_1(29);
        break;
      case 8:
      case 0xALL:
      case 0xBLL:
      case 0xDLL:
      case 0xELL:
      case 0xFLL:
      case 0x11:
      case 0x12:
      case 0x1ALL:
        return;
      case 9:
        OUTLINED_FUNCTION_127_0(29);
        break;
      case 0xCLL:
      case 0x10:
        OUTLINED_FUNCTION_74_3(29);
        break;
      case 0x15:
      case 0x18:
        OUTLINED_FUNCTION_126_0(29);
        break;
      default:
        OUTLINED_FUNCTION_123_0(29);
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0xD000000000000015 && 0x8000000193A157C0 == v0;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_43_6();
      v7 = v3 && v6 == v0;
      if (v7 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v8 = v1 == 0xD00000000000001BLL && 0x8000000193A15780 == v0;
        if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 0xD000000000000020 && 0x8000000193A15750 == v0;
          if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == 0xD00000000000001FLL && 0x8000000193A15730 == v0;
            if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_96_2();
              v12 = v3 && v11 == v0;
              if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_141_2();
                v14 = v3 && v13 == v0;
                if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_79_0();
                  v16 = v3 && v15 == v0;
                  if (v16 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v17 = v1 == 0x61436D6165727453 && v0 == 0xEE0064656C65636ELL;
                    if (v17 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_139_1();
                      v19 = v3 && v18 == v0;
                      if (v19 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v20 = v1 == 0xD00000000000001CLL && 0x8000000193A15690 == v0;
                        if (v20 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v21 = v1 == 0x6F6C617461436F4ELL && v0 == 0xE900000000000067;
                          if (v21 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v22 = v1 == 0xD000000000000019 && 0x8000000193A15670 == v0;
                            if (v22 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v23 = v1 == 0xD00000000000001ELL && 0x8000000193A15650 == v0;
                              if (v23 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v24 = v1 == 0xD000000000000011 && 0x8000000193A15630 == v0;
                                if (v24 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_96_2();
                                  v26 = v3 && v25 == v0;
                                  if (v26 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                  {

                                    v4 = 15;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_79_0();
                                    v28 = v3 && v27 == v0;
                                    if (v28 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                    {

                                      v4 = 16;
                                    }

                                    else
                                    {
                                      v29 = v1 == 0xD000000000000026 && 0x8000000193A155C0 == v0;
                                      if (v29 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                      {

                                        v4 = 17;
                                      }

                                      else
                                      {
                                        v30 = v1 == 0xD000000000000025 && 0x8000000193A15590 == v0;
                                        if (v30 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                        {

                                          v4 = 18;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_60();
                                          v32 = v3 && v31 == v0;
                                          if (v32 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                          {

                                            v4 = 19;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_60();
                                            v34 = v3 && v33 == v0;
                                            if (v34 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                            {

                                              v4 = 20;
                                            }

                                            else
                                            {
                                              v35 = v1 == 0xD000000000000023 && 0x8000000193A15500 == v0;
                                              if (v35 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                              {

                                                v4 = 21;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_26_4();
                                                v37 = v3 && v36 == v0;
                                                if (v37 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                {

                                                  v4 = 22;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_43_6();
                                                  v39 = v3 && v38 == v0;
                                                  if (v39 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                  {

                                                    v4 = 23;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_60();
                                                    v41 = v3 && v40 == v0;
                                                    if (v41 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                    {

                                                      v4 = 24;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_43_6();
                                                      v43 = v3 && v42 == v0;
                                                      if (v43 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                      {

                                                        v4 = 25;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_79_0();
                                                        if (v3 && v44 == v0)
                                                        {

                                                          v4 = 26;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_0_9();
                                                          OUTLINED_FUNCTION_89();
                                                          v4 = 26;
                                                          if ((v1 & 1) == 0)
                                                          {
                                                            v4 = 0;
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
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x4C79646165726C41;
  if (*v0 != 1)
  {
    v1 = 0x6C69614664616F4CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646564616F4CLL;
  }
}

void GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_159_1();
    v5 = v3 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_58_4() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_106_4();
        if (v3 && v0 == v8)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_0_9();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t sub_1934AAC04()
{
  OUTLINED_FUNCTION_91_0();
  v3 = OUTLINED_FUNCTION_95_0();
  v7 = OUTLINED_FUNCTION_88_0(v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_105_1(v7);
  if (!(!v14 & v13))
  {
    v33 = OUTLINED_FUNCTION_33_5((v12 > 1), v9, v10, v11);
    v8 = OUTLINED_FUNCTION_17_2(v33);
  }

  OUTLINED_FUNCTION_95_2(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v34 = OUTLINED_FUNCTION_39_2((v19 > 1), v16, v17, v18);
    v15 = OUTLINED_FUNCTION_17_2(v34);
  }

  OUTLINED_FUNCTION_92_2(v15, v16, v17, v18);
  if (v20 != v21)
  {
    v22 = OUTLINED_FUNCTION_33_5((v26 > 1), v23, v24, v25);
    v25 = v22;
  }

  OUTLINED_FUNCTION_160_1(v22, v23, v24, v25);
  *(v30 + 32) = v2;
  *(v30 + 40) = v2;
  v31 = *(v29 + 3);
  if (v1 + 4 > (v31 >> 1))
  {
    v29 = OUTLINED_FUNCTION_39_2((v31 > 1), v27, v28, v29);
  }

  *(v29 + 2) = v1 + 4;
  return OUTLINED_FUNCTION_38_1(v29, &v29[16 * v0]);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x68437963696C6F50;
  if (*v0 != 1)
  {
    v1 = 0x6D726177657250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74696E4972657355;
  }
}

void GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_31_10();
    v6 = v3 && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v8 = v1 == OUTLINED_FUNCTION_34_4() && v0 == v7;
      if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_61_2();
        if (v3 && v0 == 0xE700000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t sub_1934AAE44()
{
  OUTLINED_FUNCTION_91_0();
  v1 = OUTLINED_FUNCTION_95_0();
  v5 = OUTLINED_FUNCTION_88_0(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_63_2(v5);
  if (!(!v12 & v11))
  {
    v37 = OUTLINED_FUNCTION_33_5((v10 > 1), v7, v8, v9);
    v6 = OUTLINED_FUNCTION_17_2(v37);
  }

  OUTLINED_FUNCTION_53_3(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v38 = OUTLINED_FUNCTION_39_2((v17 > 1), v14, v15, v16);
    v13 = OUTLINED_FUNCTION_17_2(v38);
  }

  OUTLINED_FUNCTION_46_2(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v20 = OUTLINED_FUNCTION_51((v24 > 1), v0, v22, v23);
    v23 = v20;
  }

  OUTLINED_FUNCTION_45_0(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v25 = OUTLINED_FUNCTION_33_5((v29 > 1), v26, v27, v28);
    v28 = v25;
  }

  OUTLINED_FUNCTION_32(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v30 = OUTLINED_FUNCTION_39_2((v34 > 1), v31, v32, v33);
    v33 = v30;
  }

  OUTLINED_FUNCTION_62_8(v30, v31, v32, v33);
  return v35;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x646564616F6C6E55;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_113_1();
      break;
    case 2:
      result = 2037609794;
      break;
    case 3:
      result = OUTLINED_FUNCTION_111_4();
      break;
    default:
      return result;
  }

  return result;
}

void GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_93_2(0x64616F6C6E55);
    v5 = v3 && v0 == 0xE800000000000000;
    if (v5 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_113_1() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v8 = v1 == 2037609794 && v0 == 0xE400000000000000;
        if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == OUTLINED_FUNCTION_111_4() && v0 == v9)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_0_9();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_102_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    v64 = OUTLINED_FUNCTION_39(v11);
    v68 = OUTLINED_FUNCTION_84_2(v64, v65, v66, v67, &qword_1EAE3B0B8, &qword_193952618);
    v7 = OUTLINED_FUNCTION_17_2(v68);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v69 = OUTLINED_FUNCTION_39(v18);
    v73 = OUTLINED_FUNCTION_85(v69, v70, v71, v72, &qword_1EAE3B0B8, &qword_193952618);
    v14 = OUTLINED_FUNCTION_17_2(v73);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v74, v75, v76, v77, v78, v79);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v80 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v80, v81, v82, v83, &qword_1EAE3B0B8, &qword_193952618);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v84 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v84, v85, v86, v87, &qword_1EAE3B0B8, &qword_193952618);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v88 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v88, v89, v90, v91, &qword_1EAE3B0B8, &qword_193952618);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v92 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v92, v93, v94, v95, &qword_1EAE3B0B8, &qword_193952618);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v96 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v96, v97, v98, v99, &qword_1EAE3B0B8, &qword_193952618);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v100 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v100, v101, v102, v103, &qword_1EAE3B0B8, &qword_193952618);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v104 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v104, v105, v106, v107, &qword_1EAE3B0B8, &qword_193952618);
    v59 = v56;
  }

  OUTLINED_FUNCTION_50(v56, v57, v58, v59);
  return OUTLINED_FUNCTION_38_1(v61, v62);
}

void GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_34_4();
        break;
      case 2:
        OUTLINED_FUNCTION_76_3(16);
        break;
      case 3:
        OUTLINED_FUNCTION_38();
        break;
      case 4:
        OUTLINED_FUNCTION_80_5();
        break;
      case 5:
        OUTLINED_FUNCTION_75_7(16);
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_31_10();
    v6 = v3 && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v8 = v1 == OUTLINED_FUNCTION_34_4() && v0 == v7;
      if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_52_5();
        v10 = v1 == 20 && v9 == v0;
        if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_26_4();
          v12 = v3 && v11 == v0;
          if (v12 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_78_5();
            v14 = v3 && v13 == v0;
            if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_138();
              v16 = v3 && v15 == v0;
              if (v16 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_142_0();
                v18 = v3 && v17 == v0;
                if (v18 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_140();
                  v20 = v3 && v19 == v0;
                  if (v20 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_54_3();
                    if (v3 && v21 == v0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_0_9();
                      OUTLINED_FUNCTION_89();
                      v4 = 8;
                      if ((v1 & 1) == 0)
                      {
                        v4 = 0;
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
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    v71 = OUTLINED_FUNCTION_39(v11);
    v75 = OUTLINED_FUNCTION_84_2(v71, v72, v73, v74, &qword_1EAE3B0B0, &qword_193952610);
    v7 = OUTLINED_FUNCTION_17_2(v75);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v76 = OUTLINED_FUNCTION_39(v18);
    v80 = OUTLINED_FUNCTION_85(v76, v77, v78, v79, &qword_1EAE3B0B0, &qword_193952610);
    v14 = OUTLINED_FUNCTION_17_2(v80);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v81, v82, v83, v84, v85, v86);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v87 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v87, v88, v89, v90, &qword_1EAE3B0B0, &qword_193952610);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v91 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v91, v92, v93, v94, &qword_1EAE3B0B0, &qword_193952610);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v95 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v95, v96, v97, v98, &qword_1EAE3B0B0, &qword_193952610);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v99 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v99, v100, v101, v102, &qword_1EAE3B0B0, &qword_193952610);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v103 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v103, v104, v105, v106, &qword_1EAE3B0B0, &qword_193952610);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v107 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v107, v108, v109, v110, &qword_1EAE3B0B0, &qword_193952610);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v111 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v111, v112, v113, v114, &qword_1EAE3B0B0, &qword_193952610);
    v59 = v56;
  }

  OUTLINED_FUNCTION_50(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61, v62);
  OUTLINED_FUNCTION_99_3();
  if (!(v19 ^ v20 | v13))
  {
    v115 = OUTLINED_FUNCTION_39(v67);
    v63 = OUTLINED_FUNCTION_85(v115, v116, v117, v118, &qword_1EAE3B0B0, &qword_193952610);
    v66 = v63;
  }

  OUTLINED_FUNCTION_47_5(v63, v64, v65, v66);
  OUTLINED_FUNCTION_42_12(v68);
  return v69;
}

void GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_34_4();
        break;
      case 2:
        OUTLINED_FUNCTION_76_3(16);
        break;
      case 3:
        OUTLINED_FUNCTION_38();
        break;
      case 5:
        OUTLINED_FUNCTION_80_5();
        break;
      case 6:
        OUTLINED_FUNCTION_75_7(16);
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_31_10();
    v6 = v3 && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v8 = v1 == OUTLINED_FUNCTION_34_4() && v0 == v7;
      if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_52_5();
        v10 = v1 == 20 && v9 == v0;
        if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_26_4();
          v12 = v3 && v11 == v0;
          if (v12 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_61_2();
            v13 = v3 && v0 == 0xE700000000000000;
            if (v13 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_78_5();
              v15 = v3 && v14 == v0;
              if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_138();
                v17 = v3 && v16 == v0;
                if (v17 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_140();
                  v19 = v3 && v18 == v0;
                  if (v19 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_54_3();
                    v21 = v3 && v20 == v0;
                    if (v21 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_142_0();
                      if (v3 && v22 == v0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_0_9();
                        OUTLINED_FUNCTION_89();
                        v4 = 9;
                        if ((v1 & 1) == 0)
                        {
                          v4 = 0;
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
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    return 0x6572756C696146;
  }

  return 0x73736563637553;
}

void GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_98_3();
    v5 = v3 && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
    {

      v4 = 0;
    }

    else if (v1 == 0x6572756C696146 && v0 == 0xE700000000000000)
    {

      v4 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_7();
      OUTLINED_FUNCTION_89();
      v4 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v4);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x4D63696D616E7944;
  if (*v0 != 1)
  {
    v1 = 0x646564616F4CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646564616F6C6E55;
  }
}

void GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_93_2(0x64616F6C6E55);
    v5 = v3 && v0 == 0xE800000000000000;
    if (v5 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x4D63696D616E7944 && v0 == 0xEB0000000065646FLL;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_159_1();
        if (v3 && v0 == 0xE600000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_0_9();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator.ValidatorType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
        OUTLINED_FUNCTION_133_2();
        break;
      case 4:
        OUTLINED_FUNCTION_38();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator.ValidatorType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x7473694C796E6544 && v0 == 0xE800000000000000;
    if (v5 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 5461583 && v0 == 0xE300000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v8 = v1 == OUTLINED_FUNCTION_133_2() && v0 == v7;
        if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_52_5();
          v10 = v1 == 29 && v9 == v0;
          if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_26_4();
            v12 = v3 && v11 == v0;
            if (v12 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_54_3();
              if (v3 && v13 == v0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_0_9();
                OUTLINED_FUNCTION_89();
                v4 = 5;
                if ((v1 & 1) == 0)
                {
                  v4 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome.OutcomeType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x696C707041746F4ELL;
  switch(*v0)
  {
    case 1:
      result = 0x64657463656A6552;
      break;
    case 2:
      result = 0x6465766F6D6552;
      break;
    case 3:
      result = 0x646563616C706552;
      break;
    default:
      return result;
  }

  return result;
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome.OutcomeType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x696C707041746F4ELL && v0 == 0xEA00000000006465;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_93_2(0x7463656A6552);
      v6 = v3 && v0 == 0xE800000000000000;
      if (v6 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0x6465766F6D6552 && v0 == 0xE700000000000000;
        if (v7 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_93_2(0x63616C706552);
          if (v3 && v0 == 0xE800000000000000)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_29_2();
            OUTLINED_FUNCTION_89();
            OUTLINED_FUNCTION_102_0();
            if (v3)
            {
              v4 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_16_0(v7);
  if (!(!v14 & v13))
  {
    v142 = OUTLINED_FUNCTION_39(v12);
    v146 = OUTLINED_FUNCTION_84_2(v142, v143, v144, v145, &qword_1EAE3B088, &qword_1939525E8);
    v8 = OUTLINED_FUNCTION_17_2(v146);
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v147 = OUTLINED_FUNCTION_39(v19);
    v151 = OUTLINED_FUNCTION_85(v147, v148, v149, v150, &qword_1EAE3B088, &qword_1939525E8);
    v15 = OUTLINED_FUNCTION_17_2(v151);
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    OUTLINED_FUNCTION_39(v26);
    OUTLINED_FUNCTION_57();
    v22 = sub_1934B0FCC(v152, v153, v154, v155, v156, v157);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    v158 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_84_2(v158, v159, v160, v161, &qword_1EAE3B088, &qword_1939525E8);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v162 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v162, v163, v164, v165, &qword_1EAE3B088, &qword_1939525E8);
    v35 = v32;
  }

  OUTLINED_FUNCTION_5_11(v32, v33, v34, v35);
  if (!(v20 ^ v21 | v14))
  {
    v166 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v166, v167, v168, v169, &qword_1EAE3B088, &qword_1939525E8);
    v40 = v37;
  }

  OUTLINED_FUNCTION_7_3(v37, v38, v39, v40);
  if (!(v20 ^ v21 | v14))
  {
    v170 = OUTLINED_FUNCTION_39(v46);
    v42 = OUTLINED_FUNCTION_85(v170, v171, v172, v173, &qword_1EAE3B088, &qword_1939525E8);
    v45 = v42;
  }

  OUTLINED_FUNCTION_4_8(v42, v43, v44, v45);
  if (!(v20 ^ v21 | v14))
  {
    v174 = OUTLINED_FUNCTION_39(v51);
    v47 = OUTLINED_FUNCTION_84_2(v174, v175, v176, v177, &qword_1EAE3B088, &qword_1939525E8);
    v50 = v47;
  }

  OUTLINED_FUNCTION_6_14(v47, v48, v49, v50);
  if (!(v20 ^ v21 | v14))
  {
    v178 = OUTLINED_FUNCTION_39(v56);
    v52 = OUTLINED_FUNCTION_85(v178, v179, v180, v181, &qword_1EAE3B088, &qword_1939525E8);
    v55 = v52;
  }

  OUTLINED_FUNCTION_11_7(v52, v53, v54, v55);
  if (!(v20 ^ v21 | v14))
  {
    v182 = OUTLINED_FUNCTION_39(v61);
    v57 = OUTLINED_FUNCTION_84_2(v182, v183, v184, v185, &qword_1EAE3B088, &qword_1939525E8);
    v60 = v57;
  }

  OUTLINED_FUNCTION_50(v57, v58, v59, v60);
  OUTLINED_FUNCTION_4(v62, v63);
  OUTLINED_FUNCTION_99_3();
  if (!(v20 ^ v21 | v14))
  {
    v186 = OUTLINED_FUNCTION_39(v68);
    v64 = OUTLINED_FUNCTION_85(v186, v187, v188, v189, &qword_1EAE3B088, &qword_1939525E8);
    v67 = v64;
  }

  OUTLINED_FUNCTION_47_5(v64, v65, v66, v67);
  OUTLINED_FUNCTION_4(v69, v70);
  OUTLINED_FUNCTION_149_1();
  if (!(v20 ^ v21 | v14))
  {
    v190 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_84_2(v190, v191, v192, v193, &qword_1EAE3B088, &qword_1939525E8);
    v74 = v71;
  }

  OUTLINED_FUNCTION_50(v71, v72, v73, v74);
  OUTLINED_FUNCTION_4(v76, v77);
  OUTLINED_FUNCTION_148_0();
  if (!(v20 ^ v21 | v14))
  {
    v194 = OUTLINED_FUNCTION_39(v82);
    v78 = OUTLINED_FUNCTION_85(v194, v195, v196, v197, &qword_1EAE3B088, &qword_1939525E8);
    v81 = v78;
  }

  OUTLINED_FUNCTION_47_5(v78, v79, v80, v81);
  OUTLINED_FUNCTION_4(v83, v84);
  OUTLINED_FUNCTION_147_1();
  if (!(v20 ^ v21 | v14))
  {
    v198 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_84_2(v198, v199, v200, v201, &qword_1EAE3B088, &qword_1939525E8);
    v88 = v85;
  }

  OUTLINED_FUNCTION_50(v85, v86, v87, v88);
  OUTLINED_FUNCTION_4(v90, v91);
  OUTLINED_FUNCTION_146_1();
  if (!(v20 ^ v21 | v14))
  {
    v202 = OUTLINED_FUNCTION_39(v96);
    v92 = OUTLINED_FUNCTION_85(v202, v203, v204, v205, &qword_1EAE3B088, &qword_1939525E8);
    v95 = v92;
  }

  OUTLINED_FUNCTION_47_5(v92, v93, v94, v95);
  OUTLINED_FUNCTION_4(v97, v98);
  OUTLINED_FUNCTION_145();
  if (!(v20 ^ v21 | v14))
  {
    v206 = OUTLINED_FUNCTION_39(v103);
    v99 = OUTLINED_FUNCTION_84_2(v206, v207, v208, v209, &qword_1EAE3B088, &qword_1939525E8);
    v102 = v99;
  }

  OUTLINED_FUNCTION_50(v99, v100, v101, v102);
  OUTLINED_FUNCTION_4(v104, v105);
  if (v0 + 17 > (v110 >> 1))
  {
    v210 = OUTLINED_FUNCTION_39(v110);
    v106 = OUTLINED_FUNCTION_85(v210, v211, v212, v213, &qword_1EAE3B088, &qword_1939525E8);
    v109 = v106;
  }

  OUTLINED_FUNCTION_47_5(v106, v107, v108, v109);
  OUTLINED_FUNCTION_4(v111, v112);
  if (v0 + 18 > (v117 >> 1))
  {
    v214 = OUTLINED_FUNCTION_39(v117);
    v113 = OUTLINED_FUNCTION_84_2(v214, v215, v216, v217, &qword_1EAE3B088, &qword_1939525E8);
    v116 = v113;
  }

  OUTLINED_FUNCTION_50(v113, v114, v115, v116);
  OUTLINED_FUNCTION_4(v118, v119);
  if (v0 + 19 > (v124 >> 1))
  {
    v218 = OUTLINED_FUNCTION_39(v124);
    v120 = OUTLINED_FUNCTION_85(v218, v219, v220, v221, &qword_1EAE3B088, &qword_1939525E8);
    v123 = v120;
  }

  OUTLINED_FUNCTION_47_5(v120, v121, v122, v123);
  OUTLINED_FUNCTION_4(v125, v126);
  if (v0 + 20 > (v131 >> 1))
  {
    v222 = OUTLINED_FUNCTION_39(v131);
    v127 = OUTLINED_FUNCTION_84_2(v222, v223, v224, v225, &qword_1EAE3B088, &qword_1939525E8);
    v130 = v127;
  }

  OUTLINED_FUNCTION_50(v127, v128, v129, v130);
  OUTLINED_FUNCTION_4(v132, v133);
  if (v0 + 21 > (v138 >> 1))
  {
    v226 = OUTLINED_FUNCTION_39(v138);
    v134 = OUTLINED_FUNCTION_85(v226, v227, v228, v229, &qword_1EAE3B088, &qword_1939525E8);
    v137 = v134;
  }

  OUTLINED_FUNCTION_47_5(v134, v135, v136, v137);
  OUTLINED_FUNCTION_42_12(v139);
  return v140;
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 4:
        OUTLINED_FUNCTION_132_0();
        break;
      case 6:
        OUTLINED_FUNCTION_118_1();
        break;
      case 7:
        OUTLINED_FUNCTION_38();
        break;
      case 9:
        OUTLINED_FUNCTION_131_2();
        break;
      case 0xALL:
        OUTLINED_FUNCTION_117_4();
        break;
      case 0xBLL:
        OUTLINED_FUNCTION_108_7();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_120_0();
        break;
      case 0xELL:
        OUTLINED_FUNCTION_109_2();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x6669636570736E55 && v0 == 0xEB00000000646569;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 1701208403 && v0 == 0xE400000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0x7367757244 && v0 == 0xE500000000000000;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v8 = v1 == 1702125896 && v0 == 0xE400000000000000;
          if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == OUTLINED_FUNCTION_132_0() && v0 == v9;
            if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v11 = v1 == 0x65636E656C6F6956 && v0 == 0xE800000000000000;
              if (v11 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v13 = v1 == OUTLINED_FUNCTION_118_1() && v0 == v12;
                if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_26_4();
                  v15 = v3 && v14 == v0;
                  if (v15 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v16 = v1 == 1701998407 && v0 == 0xE400000000000000;
                    if (v16 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v18 = v1 == OUTLINED_FUNCTION_131_2() && v0 == v17;
                      if (v18 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v20 = v1 == OUTLINED_FUNCTION_117_4() && v0 == v19;
                        if (v20 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v22 = v1 == OUTLINED_FUNCTION_108_7() && v0 == v21;
                          if (v22 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v23 = v1 == 0x736E6F70616557 && v0 == 0xE700000000000000;
                            if (v23 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v25 = v1 == OUTLINED_FUNCTION_120_0() && v0 == v24;
                              if (v25 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v27 = v1 == OUTLINED_FUNCTION_109_2() && v0 == v26;
                                if (v27 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v28 = v1 == 0xD000000000000026 && 0x8000000193A15920 == v0;
                                  if (v28 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                  {

                                    v4 = 15;
                                  }

                                  else
                                  {
                                    v29 = v1 == 0x6D726148666C6553 && v0 == 0xE800000000000000;
                                    if (v29 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                    {

                                      v4 = 16;
                                    }

                                    else
                                    {
                                      v30 = v1 == 0x6369786F54 && v0 == 0xE500000000000000;
                                      if (v30 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                      {

                                        v4 = 17;
                                      }

                                      else
                                      {
                                        v31 = v1 == 0x656D737361726148 && v0 == 0xEA0000000000746ELL;
                                        if (v31 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                        {

                                          v4 = 18;
                                        }

                                        else if (v1 == 0x6974736567677553 && v0 == 0xEA00000000006576)
                                        {

                                          v4 = 19;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_0_9();
                                          OUTLINED_FUNCTION_89();
                                          v4 = 19;
                                          if ((v1 & 1) == 0)
                                          {
                                            v4 = 0;
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
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x65766F6D6552;
  if (*v0 != 1)
  {
    v1 = 0x6D726177657250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579265;
  }
}

void GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 6579265 && v0 == 0xE300000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x65766F6D6552 && v0 == 0xE600000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_61_2();
        if (v3 && v0 == 0xE700000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_38();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v2 = v2 && v1 == 0xE700000000000000;
  if (v2 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_98_3();
    v4 = v2 && v0 == 0xE700000000000000;
    if (v4 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
    {

      v3 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      v6 = v2 && v5 == v0;
      if (v6 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
      {

        v3 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        v8 = v2 && v7 == v0;
        if (v8 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_137();
          if (v2 && v9 == v0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_0_9();
            OUTLINED_FUNCTION_89();
            OUTLINED_FUNCTION_102_0();
            if (v2)
            {
              v3 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v3);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6369706F54;
  switch(*v0)
  {
    case 1:
      result = 0x656E694C706F54;
      break;
    case 2:
      result = 0x736973706F6E7953;
      break;
    case 3:
      result = OUTLINED_FUNCTION_107_2();
      break;
    case 4:
      result = OUTLINED_FUNCTION_115_2();
      break;
    default:
      return result;
  }

  return result;
}

void GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x6369706F54 && v0 == 0xE500000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x656E694C706F54 && v0 == 0xE700000000000000;
      if (v6 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0x736973706F6E7953 && v0 == 0xE800000000000000;
        if (v7 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == OUTLINED_FUNCTION_107_2() && v0 == v8;
          if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else if (v1 == OUTLINED_FUNCTION_115_2() && v0 == v10)
          {

            OUTLINED_FUNCTION_69_2();
          }

          else
          {
            OUTLINED_FUNCTION_0_9();
            OUTLINED_FUNCTION_89();
            v4 = 4;
            if ((v1 & 1) == 0)
            {
              v4 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x7961646F54;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_114_2();
      break;
    case 2:
      result = OUTLINED_FUNCTION_135_0();
      break;
    case 3:
      result = OUTLINED_FUNCTION_134_1();
      break;
    default:
      return result;
  }

  return result;
}

void GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.ConfidenceBucket.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x7961646F54 && v0 == 0xE500000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_114_2() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v9 = v1 == OUTLINED_FUNCTION_135_0() && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == OUTLINED_FUNCTION_134_1() && v0 == v10)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_0_9();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_102_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    result = 0x6D75696D657250;
  }

  else
  {
    result = 1701147206;
  }

  *v0;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 1701147206 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else if (v1 == 0x6D75696D657250 && v0 == 0xE700000000000000)
    {

      v4 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_7();
      OUTLINED_FUNCTION_89();
      v4 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v4);
}

uint64_t static GenerativeFunctionsInstrumentationError.== infix(_:_:)(void *a1, unint64_t *a2)
{
  v3 = *a2;
  switch(*a1 >> 61)
  {
    case 1:
      if (v3 >> 61 != 1)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_37_5();

      v53 = OUTLINED_FUNCTION_66_2(v45, v46, v47, v48, v49, v50, v51, v52, v76, v77, v78, v79, v80);
      static GenerativeFunctionsInstrumentationError.ModelManagerSessionError.== infix(_:_:)(v53, v54);
      goto LABEL_16;
    case 2:
      if (v3 >> 61 != 2)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_36_8();
      v83 = v24;
      OUTLINED_FUNCTION_35_7();

      v33 = OUTLINED_FUNCTION_66_2(v25, v26, v27, v28, v29, v30, v31, v32, v76, v77, v78, v79, v83);
      static GenerativeFunctionsInstrumentationError.ModelManagerInferenceError.== infix(_:_:)(v33, v34);
      goto LABEL_16;
    case 3:
      if (v3 >> 61 != 3)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_37_5();

      v43 = OUTLINED_FUNCTION_66_2(v35, v36, v37, v38, v39, v40, v41, v42, v76, v77, v78, v79, v80);
      static GenerativeFunctionsInstrumentationError.GenerativeFunctionError.== infix(_:_:)(v43, v44);
      goto LABEL_16;
    case 4:
      if (v3 >> 61 != 4)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_36_8();
      v82 = v13;
      OUTLINED_FUNCTION_35_7();

      v22 = OUTLINED_FUNCTION_66_2(v14, v15, v16, v17, v18, v19, v20, v21, v76, v77, v78, v79, v82);
      static GenerativeFunctionsInstrumentationError.TokenGenerationError.== infix(_:_:)(v22, v23);
      goto LABEL_16;
    case 5:
      if (v3 >> 61 != 5)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_37_5();

      v63 = OUTLINED_FUNCTION_66_2(v55, v56, v57, v58, v59, v60, v61, v62, v76, v77, v78, v79, v80);
      static GenerativeFunctionsInstrumentationError.SummarizationError.== infix(_:_:)(v63, v64);
      goto LABEL_16;
    case 6:
      if (v3 >> 61 != 6)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_37_5();

      v73 = OUTLINED_FUNCTION_66_2(v65, v66, v67, v68, v69, v70, v71, v72, v76, v77, v78, v79, v80);
      static GenerativeFunctionsInstrumentationError.ClassificationError.== infix(_:_:)(v73, v74);
LABEL_16:
      OUTLINED_FUNCTION_121();
      goto LABEL_17;
    default:
      if (v3 >> 61)
      {
LABEL_18:
        v2 = 0;
      }

      else
      {
        v81 = OUTLINED_FUNCTION_101_4().n128_u8[0];
        OUTLINED_FUNCTION_151_0();

        v12 = OUTLINED_FUNCTION_66_2(v4, v5, v6, v7, v8, v9, v10, v11, v76, v77, v78, v79, v81);
        static GenerativeFunctionsInstrumentationError.GenericError.== infix(_:_:)(v12);
        OUTLINED_FUNCTION_121();
LABEL_17:
      }

      return v2 & 1;
  }
}