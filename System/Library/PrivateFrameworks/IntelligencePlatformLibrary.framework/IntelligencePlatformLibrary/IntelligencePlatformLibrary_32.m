__n128 IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.failed.setter(__n128 *a1)
{
  v11 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[2].n128_u64[0];
  v5 = a1[2].n128_u64[1];
  v6 = v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0) + 24);
  v7 = *(v6 + 16);
  v8 = *(v6 + 40);
  v9 = *(v6 + 24);
  sub_193456418(*v6, *(v6 + 8));

  result = v11;
  *v6 = v11;
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.failed.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193699778()
{
  v1 = OUTLINED_FUNCTION_222();
  v3 = *(v2(v1) + 28);
  OUTLINED_FUNCTION_148_4();
  return sub_193448804(v4, v5, v6, v0);
}

uint64_t sub_1936997E4()
{
  v0 = OUTLINED_FUNCTION_266();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_89_13(*(v2 + 28));
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.traceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.init()()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v1);
  v3 = v2[7];
  type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_56_17();
  v13 = v0 + v12;
  *v13 = 0;
  *(v13 + 8) = 256;
  OUTLINED_FUNCTION_2_0();
  sub_19344E6DC(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  *v13 = 0;
  *(v13 + 8) = 256;
  v21 = v0 + v2[5];
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
  v27 = *(v26 + 20);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = (v21 + *(v26 + 24));
  OUTLINED_FUNCTION_2_0();
  sub_19344E6DC(v33, v34, v35);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  OUTLINED_FUNCTION_2_0();
  sub_19344E6DC(v40, v41, v42);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  *v32 = 0;
  v32[1] = 0;
  OUTLINED_FUNCTION_74_15(0);
  v47 = v0 + v2[6];
  *v47 = xmmword_1939526A0;
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *(v47 + 40) = 0;
  OUTLINED_FUNCTION_2_0();
  sub_19344E6DC(v48, v49, v50);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_116();

  return __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
}

void static IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v4 = OUTLINED_FUNCTION_26_18();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_150();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_94_7();
  static IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.== infix(_:_:)();
  if (v19)
  {
    v20 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
    v21 = v20[5];
    static IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.== infix(_:_:)();
    if (v22)
    {
      v45 = v1;
      v46 = v0;
      v44 = v10;
      v47 = v4;
      v23 = v3 + v20[6];
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 32);
      v28 = *(v23 + 40);
      LOBYTE(v23) = *(v23 + 24);
      v55[0] = v24;
      v55[1] = v25;
      v49 = v25;
      v50 = v24;
      v55[2] = v26;
      v56 = v23;
      v57 = v27;
      v58 = v28;
      v29 = v2 + v20[6];
      v30 = *(v29 + 8);
      v31 = *(v29 + 16);
      v32 = *(v29 + 32);
      v33 = *(v29 + 40);
      v34 = *(v29 + 24);
      v51[0] = *v29;
      v51[1] = v30;
      v51[2] = v31;
      v52 = v34;
      v53 = v32;
      v54 = v33;
      sub_19350CB08(v24, v25);

      v35 = OUTLINED_FUNCTION_65_17();
      sub_19350CB08(v35, v36);

      v48 = static IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed.== infix(_:_:)(v55, v51);
      v37 = OUTLINED_FUNCTION_65_17();
      sub_193456418(v37, v38);

      sub_193456418(v50, v49);

      if (v48)
      {
        v39 = v20[7];
        v40 = *(v15 + 48);
        sub_193448804(v3 + v39, v46, &qword_1EAE3BCA0, &unk_19395C320);
        sub_193448804(v2 + v39, v46 + v40, &qword_1EAE3BCA0, &unk_19395C320);
        if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
        {
          OUTLINED_FUNCTION_31(v46 + v40);
          if (!v41)
          {
            goto LABEL_11;
          }

          sub_19344E6DC(v46, &qword_1EAE3BCA0, &unk_19395C320);
        }

        else
        {
          sub_193448804(v46, v45, &qword_1EAE3BCA0, &unk_19395C320);
          OUTLINED_FUNCTION_31(v46 + v40);
          if (v41)
          {
            sub_1934F8A10(v45);
LABEL_11:
            sub_19344E6DC(v46, &qword_1EAE3BD08, &qword_1939595A0);
            goto LABEL_12;
          }

          sub_19355A5F8(v46 + v40, v44);
          OUTLINED_FUNCTION_0_83();
          sub_193695D2C(v42, v43);
          sub_19393C550();
          sub_1934F8A10(v44);
          sub_1934F8A10(v45);
          sub_19344E6DC(v46, &qword_1EAE3BCA0, &unk_19395C320);
        }
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v37 = v11 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.hash(into:)();
  v19 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
  v20 = v19[5];
  v38 = v1;
  v21 = v1 + v20;
  sub_193448804(v1 + v20, v18, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v18);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v18, v2);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v23, v24);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v2);
  }

  v25 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
  sub_193448804(v21 + *(v25 + 20), v16, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v16);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v16, v2);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v26, v27);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v2);
  }

  v28 = (v21 + *(v25 + 24));
  if (v28[1])
  {
    v29 = *v28;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v30 = v38;
  v31 = (v38 + v19[6]);
  v32 = *(v31 + 2);
  v33 = *(v31 + 24);
  v39 = *v31;
  v40 = v32;
  v41 = v33;
  v42 = v31[2];
  IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed.hash(into:)(v0);
  v34 = v37;
  sub_193448804(v30 + v19[7], v37, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v34);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v34, v2);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v35, v36);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v2);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t sub_19369A0B4(void (*a1)(void *))
{
  v4[9] = *v1;
  sub_19393CAB0();
  a1(v4);
  return sub_19393CB00();
}

uint64_t sub_19369A128(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7[9] = *v4;
  sub_19393CAB0();
  a4(v7);
  return sub_19393CB00();
}

unint64_t sub_19369A1E8()
{
  result = qword_1EAE401B8;
  if (!qword_1EAE401B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE401B8);
  }

  return result;
}

unint64_t sub_19369A270()
{
  result = qword_1EAE401D0;
  if (!qword_1EAE401D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE401D0);
  }

  return result;
}

unint64_t sub_19369A2C8()
{
  result = qword_1EAE401D8;
  if (!qword_1EAE401D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE401D8);
  }

  return result;
}

unint64_t sub_19369A418()
{
  result = qword_1EAE401F0;
  if (!qword_1EAE401F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE401F0);
  }

  return result;
}

unint64_t sub_19369A500()
{
  result = qword_1EAE401F8;
  if (!qword_1EAE401F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE401F8);
  }

  return result;
}

unint64_t sub_19369A55C()
{
  result = qword_1EAE40200;
  if (!qword_1EAE40200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40200);
  }

  return result;
}

unint64_t sub_19369A5FC()
{
  result = qword_1EAE40210;
  if (!qword_1EAE40210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40210);
  }

  return result;
}

unint64_t sub_19369A654()
{
  result = qword_1EAE40218;
  if (!qword_1EAE40218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40218);
  }

  return result;
}

unint64_t sub_19369A714()
{
  result = qword_1EAE40228;
  if (!qword_1EAE40228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40228);
  }

  return result;
}

unint64_t sub_19369A76C()
{
  result = qword_1EAE40230;
  if (!qword_1EAE40230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40230);
  }

  return result;
}

unint64_t sub_19369A7C4()
{
  result = qword_1EAE40238;
  if (!qword_1EAE40238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40238);
  }

  return result;
}

unint64_t sub_19369A81C()
{
  result = qword_1EAE40240;
  if (!qword_1EAE40240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40240);
  }

  return result;
}

void sub_19369A9CC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_16(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_58_16(v2, &qword_1ED5069C8);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_58_16(v4, &qword_1ED507A78);
        if (v6 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED5069D0);
          if (v8 <= 0x3F)
          {
            OUTLINED_FUNCTION_58_16(v7, &qword_1ED5069D8);
            if (v10 <= 0x3F)
            {
              OUTLINED_FUNCTION_58_16(v9, &qword_1ED5069C0);
              if (v12 <= 0x3F)
              {
                OUTLINED_FUNCTION_58_16(v11, qword_1ED503108);
                if (v13 <= 0x3F)
                {
                  sub_19349D1FC(319, &qword_1ED5069B8);
                  if (v14 <= 0x3F)
                  {
                    sub_19349D1FC(319, &qword_1ED5069E0);
                    if (v15 <= 0x3F)
                    {
                      OUTLINED_FUNCTION_15_2();
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_19369ABC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_19369AC3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19369AC8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_19369AD1C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_62(a1, qword_1ED507908);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508070);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_19369AE10()
{
  sub_19349D1FC(319, &qword_1EAE40250);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_1_62(v0, qword_1ED507908);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A27FlowPlanGenerationTelemetryV7IFErrorVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

void sub_19369AEFC(uint64_t a1)
{
  OUTLINED_FUNCTION_1_62(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED5030C8);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19369AFB4(uint64_t a1)
{
  OUTLINED_FUNCTION_1_62(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508290);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_70Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172(v6);
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_12_0(*(a1 + *(a3 + 24) + 8));
  }

  v8 = OUTLINED_FUNCTION_21_1();

  return __swift_getEnumTagSinglePayload(v8, a2, v9);
}

void __swift_store_extra_inhabitant_index_71Tm()
{
  OUTLINED_FUNCTION_19_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_66_20();
    *(v7 + 8) = v8;
  }
}

void sub_19369B1D8(uint64_t a1)
{
  OUTLINED_FUNCTION_1_62(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1EAE40258);
    if (v2 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_19369B294(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 40);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19369B2E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void sub_19369B394(uint64_t a1)
{
  OUTLINED_FUNCTION_1_62(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

_BYTE *sub_19369B420(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_19369B500(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 25))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  v5 = v4 < 0 ? -1 : v4;
  v6 = v5 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_46_4(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

void sub_19369B5AC(uint64_t a1)
{
  OUTLINED_FUNCTION_1_62(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508290);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19369B68C()
{
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(319);
  if (v0 <= 0x3F)
  {
    v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(319);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_1_62(v1, qword_1ED507908);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void OUTLINED_FUNCTION_58_16(uint64_t a1, unint64_t *a2)
{

  sub_19369ABC8(319, a2, v2);
}

__n128 OUTLINED_FUNCTION_62_17@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v4 - 64) = a2;
  *(v4 - 48) = a1;
  *(v4 - 40) = v2;
  result = v3[2];
  *(v4 - 32) = result;
  return result;
}

_BYTE *_s9DeletionsOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19369B9D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511778);
  v5 = __swift_project_value_buffer(v4, qword_1ED511778);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Deletions.Document.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_49 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511778);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40260, &qword_19397B3C0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Deletions.Document.attribute(_:)(void (*a1)(void))
{
  result = sub_19369BDF8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19369BE34(void (*a1)(void))
{
  result = sub_19369BDF8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19369BE9C(uint64_t a1)
{
  result = sub_19369BEC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19369BEC4()
{
  result = qword_1ED5043F8;
  if (!qword_1ED5043F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043F8);
  }

  return result;
}

_BYTE *_s8DocumentOwst_0(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingDocumentDeletion.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for TextUnderstandingDocumentDeletion();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40268, &qword_19397B438);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_19369C1A0(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE40268, &qword_19397B438);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE40268, &qword_19397B438);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_19369C1A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingDocumentDeletion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingDocumentDeletion.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40268, &qword_19397B438);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE40268, &qword_19397B438);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_19369C344(v10, a1);
  }

  return result;
}

uint64_t sub_19369C344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingDocumentDeletion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingDocumentDeletion.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40268, &qword_19397B438);
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
  if (*sub_19369E8E0() == a3)
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
      sub_19369C344(v14, v40);
      v33 = type metadata accessor for TextUnderstandingDocumentDeletion();
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

uint64_t TextUnderstandingDocumentDeletion.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingDocumentDeletion();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40268, &qword_19397B438);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_19369C1A0(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE40268, &qword_19397B438);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE40268, &qword_19397B438);
  return v15;
}

id static TextUnderstandingDocumentDeletion.columns.getter()
{
  v112 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x6449656C646E7562, 0xE800000000000000, 2, 0, v0, 13, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(inited, v13, v14, v15, v16, v17, v18, v19, v20);
  v21 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v30 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v30);
  v31 = OUTLINED_FUNCTION_32_5();
  result = OUTLINED_FUNCTION_35_2(v31, 0xEC00000065746144);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_2(result);
  v32 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v32, v33, v34, v35, v36, v37, v38, v39, v40);
  v41 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v50 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v50);
  OUTLINED_FUNCTION_14_43();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v51, v52, v53, v54, v0, 12, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  v55 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v55, v56, v57, v58, v59, v60, v61, v62, v63);
  v64 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v64, v65, v66, v67, v68, v69, v70, v71, v72);
  v73 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v73);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v74, v75, v76, v77, v0, 4, 0);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  v78 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v87 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v87, v88, v89, v90, v91, v92, v93, v94, v95);
  v96 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v96);
  result = OUTLINED_FUNCTION_35_2(0xD000000000000016, 0x8000000193A2CC60);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  v97 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v97, v98, v99, v100, v101, v102, v103, v104, v105);
  v106 = OUTLINED_FUNCTION_6_4();
  *(v106 + 16) = xmmword_193950B10;
  *(v106 + 32) = sub_19393C850();
  v107 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v108, v109, v110, v111, v106, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v112;
  }

LABEL_13:
  __break(1u);
  return result;
}

int *sub_19369CB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = sub_19393BE00();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  v20 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v20 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v21 = (v3 + *(type metadata accessor for TextUnderstandingDocumentDeletion() + 28));
    v23 = *v21;
    v22 = v21[1];
    v48 = v23;
    v49 = v22;
    return sub_1934948FC();
  }

  v24 = a1 == 0x64496E69616D6F64 && a2 == 0xE900000000000073;
  if (v24 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v25 = *(type metadata accessor for TextUnderstandingDocumentDeletion() + 32);
LABEL_13:
    v48 = *(v3 + v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    return sub_1934948FC();
  }

  v27 = a1 == 0x6449657571696E75 && a2 == 0xE900000000000073;
  if (v27 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v25 = *(type metadata accessor for TextUnderstandingDocumentDeletion() + 36);
    goto LABEL_13;
  }

  v29 = a1 == OUTLINED_FUNCTION_32_5() && a2 == v28;
  if (v29 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v30 = v3 + *(type metadata accessor for TextUnderstandingDocumentDeletion() + 40);
    return sub_1934948FC();
  }

  v31 = a1 == OUTLINED_FUNCTION_14_43() && a2 == 0xE800000000000000;
  if (v31 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    LOBYTE(v48) = *(v3 + *(type metadata accessor for TextUnderstandingDocumentDeletion() + 44));
    return sub_1934948FC();
  }

  v32 = a1 == OUTLINED_FUNCTION_31_2() && a2 == 0xE800000000000000;
  if (v32 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v33 = v3 + *(type metadata accessor for TextUnderstandingDocumentDeletion() + 48);
    v34 = *v33;
    v35 = *(v33 + 8);
    v48 = v34;
LABEL_39:
    LOBYTE(v49) = v35;
    return sub_1934948FC();
  }

  v36 = a1 == 0x654D746E65696C63 && a2 == 0xEE00617461646174;
  if (!v36 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    v39 = a1 == 0xD000000000000016 && 0x8000000193A2CC60 == a2;
    if (v39 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v40 = type metadata accessor for TextUnderstandingDocumentDeletion();
      sub_1934DE90C(v3 + *(v40 + 56), v10);
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
      {
        (*(v14 + 32))(v19, v10, v11);
        sub_1934948FC();
        return (*(v14 + 8))(v19, v11);
      }

      result = sub_19344E6DC(v10, &qword_1EAE3A9E8, &qword_19394F800);
    }

    else
    {
      v41 = a1 == 0xD000000000000010 && 0x8000000193A2CC80 == a2;
      if (!v41 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_11();
        swift_allocError();
        v45 = v44;
        *v44 = a1;
        v44[1] = a2;
        v44[5] = type metadata accessor for TextUnderstandingDocumentDeletion();
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v45 + 2);
        sub_19369C1A0(v3, boxed_opaque_existential_1Tm);
        *(v45 + 48) = 1;
        swift_willThrow();
      }

      result = type metadata accessor for TextUnderstandingDocumentDeletion();
      v42 = v3 + result[15];
      if ((*(v42 + 9) & 1) == 0)
      {
        v43 = *(v42 + 8);
        v48 = *v42;
        v35 = v43 & 1;
        goto LABEL_39;
      }
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  result = type metadata accessor for TextUnderstandingDocumentDeletion();
  v37 = v3 + result[13];
  v38 = *(v37 + 8);
  if (v38)
  {
    v48 = *v37;
    v49 = v38;
    v50 = *(v37 + 16);
    return sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers.ClientMetadata, &off_1F07DB1D0, a3);
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t TextUnderstandingDocumentDeletion.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingDocumentDeletion();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19343E508(v4);
  v5 = a1 + v2[13];
  j__OUTLINED_FUNCTION_92_3(v5);
  v6 = v2[14];
  sub_1934E0648();
  v7 = a1 + v2[15];
  OUTLINED_FUNCTION_131(v7);
  *a1 = *sub_19369E8E0();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v9 = (a1 + v2[7]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = MEMORY[0x1E69E7CC0];
  *(a1 + v2[8]) = MEMORY[0x1E69E7CC0];
  *(a1 + v2[9]) = v10;
  v11 = a1 + v2[10];
  sub_19393BDC0();
  *(a1 + v2[11]) = 0;
  v12 = a1 + v2[12];
  *v12 = 0;
  v12[8] = 0;
  v13 = *(v5 + 2);
  v14 = *(v5 + 3);
  sub_193442C40(*v5, *(v5 + 1));
  *v5 = 0u;
  *(v5 + 1) = 0u;
  sub_193442B60(a1 + v6, &qword_1EAE3A9E8, &qword_19394F800);
  result = __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v8);
  *v7 = 0;
  *(v7 + 8) = 256;
  return result;
}

BOOL static TextUnderstandingDocumentDeletion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_19393BE00();
  v6 = OUTLINED_FUNCTION_9_17(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - v19;
  v21 = type metadata accessor for TextUnderstandingDocumentDeletion();
  v22 = v21[7];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v23 == *v25 && v24 == v25[1];
  if (!v26 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  if ((sub_19344FC94(*(a1 + v21[8]), *(a2 + v21[8])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_19344FC94(*(a1 + v21[9]), *(a2 + v21[9])) & 1) == 0)
  {
    return 0;
  }

  v27 = v21[10];
  v71 = sub_1934DF3E8(&qword_1EAE3A848);
  if ((sub_19393C550() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v21[11]) != *(a2 + v21[11]))
  {
    return 0;
  }

  v28 = v21[12];
  v29 = *(a1 + v28 + 8);
  v76 = *(a1 + v28);
  LOBYTE(v77) = v29;
  v30 = a2 + v28;
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  v72 = v31;
  LOBYTE(v73) = v30;
  sub_19365F1B8();
  OUTLINED_FUNCTION_1_63();
  v69 = v32;
  if ((sub_19393C550() & 1) == 0)
  {
    return 0;
  }

  v33 = v21[13];
  v34 = *(a1 + v33);
  v35 = *(a1 + v33 + 8);
  v37 = *(a1 + v33 + 16);
  v36 = *(a1 + v33 + 24);
  v38 = (a2 + v33);
  v40 = *v38;
  v39 = v38[1];
  v42 = v38[2];
  v41 = v38[3];
  v70 = v42;
  v68 = v41;
  if (!v35)
  {
    v63 = v39;
    v64 = 0;
    v66 = v34;
    v67 = v37;
    v65 = v36;
    sub_19365F3E0(v34, 0);
    if (!v63)
    {
      sub_19365F3E0(v40, 0);
      sub_193442C40(v66, 0);
      goto LABEL_20;
    }

    v43 = v63;
    sub_19365F3E0(v40, v63);
LABEL_18:
    v46 = OUTLINED_FUNCTION_3_60();
    sub_193442C40(v46, v47);
    sub_193442C40(v40, v43);
    return 0;
  }

  v76 = v34;
  v77 = v35;
  v78 = v37;
  v79 = v36;
  if (!v39)
  {
    v43 = 0;
    sub_19365F3E0(v34, v35);
    sub_19365F3E0(v40, 0);
    v44 = OUTLINED_FUNCTION_3_60();
    sub_19365F3E0(v44, v45);

    goto LABEL_18;
  }

  v62 = v40;
  v63 = v39;
  v72 = v40;
  v73 = v39;
  v74 = v70;
  v75 = v68;
  v66 = v34;
  v67 = v37;
  v64 = v35;
  v65 = v36;
  sub_19365F3E0(v34, v35);
  sub_19365F3E0(v62, v63);
  sub_19365F3E0(v66, v64);
  sub_19365FF68();
  OUTLINED_FUNCTION_1_63();
  LODWORD(v70) = sub_19393C550();

  sub_193442C40(v66, v64);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v48 = v21[14];
  v49 = *(v17 + 48);
  sub_1934DE90C(a1 + v48, v20);
  sub_1934DE90C(a2 + v48, &v20[v49]);
  OUTLINED_FUNCTION_5_3(v20);
  if (!v26)
  {
    sub_1934DE90C(v20, v16);
    OUTLINED_FUNCTION_5_3(&v20[v49]);
    if (!v50)
    {
      (*(v8 + 32))(v12, &v20[v49], v2);
      v52 = sub_19393C550();
      v53 = *(v8 + 8);
      v53(v12, v2);
      v53(v16, v2);
      sub_193442B60(v20, &qword_1EAE3A9E8, &qword_19394F800);
      if ((v52 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_32;
    }

    (*(v8 + 8))(v16, v2);
LABEL_28:
    sub_193442B60(v20, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  OUTLINED_FUNCTION_5_3(&v20[v49]);
  if (!v26)
  {
    goto LABEL_28;
  }

  sub_193442B60(v20, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_32:
  v54 = v21[15];
  v55 = a1 + v54;
  v56 = *(a1 + v54 + 9);
  v57 = a2 + v54;
  v58 = *(a2 + v54 + 9);
  if ((v56 & 1) == 0)
  {
    v59 = *v57;
    v60 = *(v57 + 8);
    v61 = *(v55 + 8);
    v76 = *v55;
    LOWORD(v77) = v61;
    if (v58)
    {
      return 0;
    }

    v72 = v59;
    LOBYTE(v73) = v60 & 1;
    OUTLINED_FUNCTION_1_63();
    return (sub_19393C550() & 1) != 0;
  }

  return (v58 & 1) != 0;
}

uint64_t TextUnderstandingDocumentDeletion.hash(into:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_19393BE00();
  v6 = OUTLINED_FUNCTION_9_17(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v36 - v15;
  v17 = type metadata accessor for TextUnderstandingDocumentDeletion();
  v18 = (v1 + v17[7]);
  v19 = *v18;
  v20 = v18[1];
  sub_19393C640();
  sub_1934D11C8(a1, *(v1 + v17[8]));
  sub_1934D11C8(a1, *(v1 + v17[9]));
  v21 = v17[10];
  v22 = sub_1934DF3E8(&qword_1EAE3B978);
  sub_19393C540();
  v23 = *(v3 + v17[11]);
  sub_19393CAD0();
  v24 = (v3 + v17[12]);
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  v39 = v25;
  LOBYTE(v40) = v24;
  v38 = sub_19369DA9C();
  sub_19393C540();
  v26 = (v3 + v17[13]);
  v27 = v26[1];
  if (v27)
  {
    v37 = v16;
    v28 = v2;
    v29 = v12;
    v30 = v26[2];
    v31 = v26[3];
    v39 = *v26;
    v40 = v27;
    v41 = v30;
    v42 = v31;
    sub_19393CAD0();
    sub_19369DAF0();
    v36[1] = v22;

    v12 = v29;
    v2 = v28;
    v16 = v37;

    sub_19393C540();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_1934DE90C(v3 + v17[14], v16);
  OUTLINED_FUNCTION_5_3(v16);
  if (v32)
  {
    sub_19393CAD0();
  }

  else
  {
    (*(v8 + 32))(v12, v16, v2);
    sub_19393CAD0();
    sub_19393C540();
    (*(v8 + 8))(v12, v2);
  }

  v33 = (v3 + v17[15]);
  if (*(v33 + 9) == 1)
  {
    return sub_19393CAD0();
  }

  v35 = *(v33 + 8);
  v39 = *v33;
  LOBYTE(v40) = v35 & 1;
  sub_19393CAD0();
  return sub_19393C540();
}

unint64_t sub_19369DA9C()
{
  result = qword_1EAE40270;
  if (!qword_1EAE40270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40270);
  }

  return result;
}

unint64_t sub_19369DAF0()
{
  result = qword_1EAE40278;
  if (!qword_1EAE40278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40278);
  }

  return result;
}

uint64_t sub_19369DB44()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABE70);
  __swift_project_value_buffer(v0, qword_1EAEABE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_193951270;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v4 = "bundleId";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  v8 = OUTLINED_FUNCTION_3_1(v32 + v3 + v2);
  *v9 = 2;
  *v8 = "domainIds";
  v8[1] = 9;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v32 + v3 + 2 * v2);
  *v12 = 3;
  *v11 = "uniqueIds";
  v11[1] = 9;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v32 + v3 + 3 * v2);
  *v15 = 4;
  *v14 = "receivedDate";
  v14[1] = 12;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v32 + v3 + 4 * v2);
  *v18 = 5;
  *v17 = "isPurged";
  v17[1] = 8;
  v19 = OUTLINED_FUNCTION_1_3(v17);
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v32 + v3 + 5 * v2);
  *v21 = 6;
  *v20 = "category";
  v20[1] = 8;
  v22 = OUTLINED_FUNCTION_1_3(v20);
  (v7)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v32 + v3 + 6 * v2);
  *v24 = 8;
  *v23 = "clientMetadata";
  v23[1] = 14;
  v25 = OUTLINED_FUNCTION_1_3(v23);
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v32 + v3 + 7 * v2);
  *v27 = 7;
  *v26 = "documentsReceivedAfter";
  v26[1] = 22;
  v28 = OUTLINED_FUNCTION_1_3(v26);
  (v7)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v32 + v3 + 8 * v2);
  *v30 = 9;
  *v29 = "documentCategory";
  *(v29 + 8) = 16;
  *(v29 + 16) = 2;
  (v7)();
  return sub_19393C410();
}

void sub_19369DE64()
{
  v2 = v1;
  v3 = sub_19393BE00();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v39 = (v6 + 32);
  v40 = (v6 + 40);
  v18 = v17;
  v41 = v11;
  v42 = v17;
  v45 = &v39 - v15;
  while (1)
  {
    v19 = sub_19393C0E0();
    if (v2 || (v20 & 1) != 0)
    {
      break;
    }

    switch(v19)
    {
      case 1:
        v43 = 0;
        v44 = 0;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        v2 = 0;
        if (v44)
        {
          v21 = v43;
        }

        else
        {
          v21 = 0;
        }

        v22 = v3;
        if (v44)
        {
          v23 = v44;
        }

        else
        {
          v23 = 0xE000000000000000;
        }

        v24 = (v0 + *(type metadata accessor for TextUnderstandingDocumentDeletion() + 28));
        v25 = v24[1];

        *v24 = v21;
        v24[1] = v23;
        v16 = v45;
        v3 = v22;
        v11 = v41;
        v18 = v42;
        continue;
      case 2:
        v31 = *(type metadata accessor for TextUnderstandingDocumentDeletion() + 32);
        goto LABEL_19;
      case 3:
        v29 = *(type metadata accessor for TextUnderstandingDocumentDeletion() + 36);
LABEL_19:
        OUTLINED_FUNCTION_113();
        sub_19393C1B0();
        goto LABEL_26;
      case 4:
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v3);
        OUTLINED_FUNCTION_9_58();
        v2 = 0;
        sub_1934DE90C(v16, v18);
        if (__swift_getEnumTagSinglePayload(v18, 1, v3) == 1)
        {
          sub_19393BDC0();
          sub_1934DFCD4(v16);
          if (__swift_getEnumTagSinglePayload(v18, 1, v3) != 1)
          {
            sub_1934DFCD4(v18);
          }
        }

        else
        {
          sub_1934DFCD4(v16);
          (*v39)(v11, v18, v3);
        }

        v38 = type metadata accessor for TextUnderstandingDocumentDeletion();
        (*v40)(v0 + *(v38 + 40), v11, v3);
        continue;
      case 5:
        LOBYTE(v43) = 2;
        OUTLINED_FUNCTION_113();
        sub_19393C0F0();
        v2 = 0;
        v26 = v43;
        v27 = type metadata accessor for TextUnderstandingDocumentDeletion();
        v28 = v26 & 1;
        v16 = v45;
        *(v0 + *(v27 + 44)) = v28;
        continue;
      case 6:
        v43 = 0;
        LOWORD(v44) = 256;
        sub_1934982A8();
        if (BYTE1(v44))
        {
          v32 = 0;
        }

        else
        {
          v32 = v43;
        }

        v33 = v44 & ~BYTE1(v44);
        v34 = v0 + *(type metadata accessor for TextUnderstandingDocumentDeletion() + 48);
        *v34 = v32;
        v16 = v45;
        v35 = v33 & 1;
        v18 = v42;
        *(v34 + 8) = v35;
        continue;
      case 7:
        v36 = *(type metadata accessor for TextUnderstandingDocumentDeletion() + 56);
        OUTLINED_FUNCTION_9_58();
        goto LABEL_26;
      case 8:
        v30 = *(type metadata accessor for TextUnderstandingDocumentDeletion() + 52);
        sub_193498018();
        goto LABEL_26;
      case 9:
        v37 = *(type metadata accessor for TextUnderstandingDocumentDeletion() + 60);
        sub_1934982A8();
LABEL_26:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_19369E2A4()
{
  v2 = type metadata accessor for TextUnderstandingDocumentDeletion();
  v3 = (v0 + v2[7]);
  if (*v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3[1] == 0xE000000000000000;
  }

  if (!v4 && (sub_19393CA30() & 1) == 0)
  {
    sub_19393C3C0();
  }

  if (!v1)
  {
    if (*(*(v0 + v2[8]) + 16))
    {
      OUTLINED_FUNCTION_4_56();
      sub_19393C380();
    }

    if (*(*(v0 + v2[9]) + 16))
    {
      OUTLINED_FUNCTION_4_56();
      sub_19393C380();
    }

    v5 = OUTLINED_FUNCTION_35_1();
    sub_19369E504(v5);
    if (*(v0 + v2[11]) == 1)
    {
      OUTLINED_FUNCTION_4_56();
      sub_19393C2E0();
    }

    v6 = (v0 + v2[12]);
    v7 = *v6;
    v8 = *(v6 + 8);
    sub_19365F1B8();
    if ((sub_19393C550() & 1) == 0)
    {
      OUTLINED_FUNCTION_87_3();
      sub_193447324(v9, v10, v11, v12, v13, v14);
    }

    v15 = (v0 + v2[13]);
    if (v15[1])
    {
      v24 = *v15;
      v27 = *(v15 + 1);
      OUTLINED_FUNCTION_87_3();
      sub_193447600();
    }

    v16 = OUTLINED_FUNCTION_35_1();
    sub_19369E638(v16);
    v17 = (v0 + v2[15]);
    if ((*(v17 + 9) & 1) == 0)
    {
      v25 = *v17;
      v26 = v17[1] & 1;
      OUTLINED_FUNCTION_87_3();
      sub_193447324(v18, v19, v20, v21, v22, v23);
    }
  }
}

uint64_t sub_19369E504(uint64_t a1)
{
  v2 = sub_19393BE00();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = *(type metadata accessor for TextUnderstandingDocumentDeletion() + 40);
  sub_19393BDC0();
  sub_19365C760();
  v12 = sub_19393C550();
  result = (*(v5 + 8))(v10, v2);
  if ((v12 & 1) == 0)
  {
    return sub_193451F04(a1 + v11, 4, 26211, 0xE200000000000000);
  }

  return result;
}

uint64_t sub_19369E638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_19393BE00();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = type metadata accessor for TextUnderstandingDocumentDeletion();
  sub_1934DE90C(a1 + *(v15 + 56), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1934DFCD4(v5);
  }

  (*(v9 + 32))(v14, v5, v6);
  sub_193451F04(v14, 7, 26211, 0xE200000000000000);
  return (*(v9 + 8))(v14, v6);
}

uint64_t sub_19369E7DC()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE40280;

  return v0;
}

uint64_t sub_19369E820@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE7AC80 != -1)
  {
    OUTLINED_FUNCTION_0_84();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABE70);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TextUnderstandingDocumentDeletion.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingDocumentDeletion();
  return sub_1934488AC(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingDocumentDeletion()
{
  result = qword_1ED50D550;
  if (!qword_1ED50D550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingDocumentDeletion.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingDocumentDeletion();
  return sub_1934488AC(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingDocumentDeletion.bundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for TextUnderstandingDocumentDeletion() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TextUnderstandingDocumentDeletion.bundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextUnderstandingDocumentDeletion() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.domainIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextUnderstandingDocumentDeletion() + 32));
}

uint64_t TextUnderstandingDocumentDeletion.domainIds.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_57() + 32);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.uniqueIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextUnderstandingDocumentDeletion() + 36));
}

uint64_t TextUnderstandingDocumentDeletion.uniqueIds.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_57() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.receivedDate.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for TextUnderstandingDocumentDeletion() + 40);
  v3 = sub_19393BE00();
  v4 = *(*(v3 - 8) + 16);

  return v4(v0, v1 + v2, v3);
}

uint64_t TextUnderstandingDocumentDeletion.receivedDate.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_57() + 40);
  v3 = sub_19393BE00();
  OUTLINED_FUNCTION_7_0(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t TextUnderstandingDocumentDeletion.isPurged.setter(char a1)
{
  result = type metadata accessor for TextUnderstandingDocumentDeletion();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.category.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for TextUnderstandingDocumentDeletion();
  v3 = (v1 + *(result + 48));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.category.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for TextUnderstandingDocumentDeletion();
  v5 = v1 + *(result + 48);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.clientMetadata.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for TextUnderstandingDocumentDeletion() + 52));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;

  return sub_19365F3E0(v3, v4);
}

__n128 TextUnderstandingDocumentDeletion.clientMetadata.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_4_57() + 52));
  v3 = v2[2];
  v4 = v2[3];
  sub_193442C40(*v2, v2[1]);
  result = *v0;
  v6 = *(v0 + 16);
  *v2 = *v0;
  *(v2 + 1) = v6;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.documentsReceivedAfter.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingDocumentDeletion();
  return sub_1934488AC(v1 + *(v2 + 56), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t TextUnderstandingDocumentDeletion.documentCategory.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for TextUnderstandingDocumentDeletion();
  v3 = (v1 + *(result + 60));
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 9);
  *v0 = v4;
  *(v0 + 8) = v5;
  *(v0 + 9) = v3;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.documentCategory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for TextUnderstandingDocumentDeletion();
  v6 = v1 + *(result + 60);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingDocumentDeletion.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19369F1D0()
{
  sub_19393CAB0();
  TextUnderstandingDocumentDeletion.hash(into:)(v1);
  return sub_19393CB00();
}

unint64_t sub_19369F210()
{
  result = qword_1EAE40290;
  if (!qword_1EAE40290)
  {
    type metadata accessor for TextUnderstandingDocumentDeletion();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40290);
  }

  return result;
}

uint64_t sub_19369F294()
{
  sub_19349D140();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_19369F3F4(319, qword_1ED507ED8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    v3 = sub_19393BE00();
    if (v6 > 0x3F)
    {
      return v3;
    }

    OUTLINED_FUNCTION_2_62(v3, &qword_1ED5030E8, &type metadata for TextUnderstandingDocumentIdentifiers.ClientMetadata);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      OUTLINED_FUNCTION_2_62(v3, &qword_1ED5030E0, &type metadata for TextUnderstandingDocumentIdentifiers.Category);
      v1 = v8;
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_19369F3F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *_s5HandsOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s14OasisAnalyticsOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19369F5B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5117D8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5117D8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.OasisAnalytics.Hands.HandTracking.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:10485760 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_50 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5117D8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40298, &qword_19397B5C0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
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

unint64_t static Library.Streams.OasisAnalytics.Hands.HandTracking.attribute(_:)(void (*a1)(void))
{
  result = sub_19369F9C8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19369FA10(void (*a1)(void))
{
  result = sub_19369F9C8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19369FA40(uint64_t a1)
{
  result = sub_19369FA68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19369FA68()
{
  result = qword_1EAE402A0;
  if (!qword_1EAE402A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE402A0);
  }

  return result;
}

_BYTE *_s12HandTrackingOwst(_BYTE *result, int a2, int a3)
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

void sub_19369FB94(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_1();
  v11 = type metadata accessor for OasisAnalyticsMetadata(0);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  v15 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (!v15 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    v16 = a1 == OUTLINED_FUNCTION_12_36() && a2 == 0xE700000000000000;
    if (v16 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v17 = v3 + *(type metadata accessor for OasisAnalyticsHandsSpeedEvent(0) + 20);
      if (*(v17 + 13))
      {
        goto LABEL_8;
      }

      v18 = *(v17 + 12);
      v19 = *(v17 + 8);
      v20 = *v17;
      v21 = &type metadata for OasisAnalyticsHandsSpeedSample;
      v22 = &off_1F07DE528;
    }

    else
    {
      v24 = a1 == OUTLINED_FUNCTION_15_44() && a2 == v23;
      if (!v24 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        v27 = v26;
        *v26 = a1;
        v26[1] = a2;
        v26[5] = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
        __swift_allocate_boxed_opaque_existential_1Tm(v27 + 2);
        OUTLINED_FUNCTION_8_44();
        sub_1936A09FC(v3, v28, v29);
        *(v27 + 48) = 1;
        swift_willThrow();

        return;
      }

      v25 = v3 + *(type metadata accessor for OasisAnalyticsHandsSpeedEvent(0) + 24);
      if (*(v25 + 17))
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_9_59(v25);
      v21 = &type metadata for OasisAnalyticsQualityTrace;
      v22 = &off_1F07DEED0;
    }

    sub_193494798(v21, v22, a3);
    return;
  }

  sub_19369FE34(v3, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
  {
    sub_19344E6DC(v4, &qword_1EAE402A8, &qword_19397B638);
LABEL_8:
    OUTLINED_FUNCTION_104();
    return;
  }

  sub_1936A0BDC(v4, v5, type metadata accessor for OasisAnalyticsMetadata);
  sub_193494798(v11, &off_1F07DEEF0, a3);
  OUTLINED_FUNCTION_10_50();
}

uint64_t sub_19369FE34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19369FEBC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 4);
  v7 = a1 == 0x646E61487466656CLL && a2 == 0xED00006465657053;
  if (v7 || (v8 = v2[2], v9 = *(v2 + 12), (OUTLINED_FUNCTION_91_2() & 1) != 0))
  {
    if (v6)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v10 = a1 == 0x6E61487468676972 && a2 == 0xEE00646565705364;
  if (v10 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
  {
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  v11 = OUTLINED_FUNCTION_13_9();
  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 40) = &type metadata for OasisAnalyticsHandsSpeedSample;
  *(v12 + 16) = v5;
  *(v12 + 20) = v6;
  *(v12 + 24) = v8;
  *(v12 + 28) = v9;
  OUTLINED_FUNCTION_23_2(v11, v12);
}

void sub_1936A0088(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, ValueMetadata *a4@<X3>, _UNKNOWN **a5@<X4>, uint64_t (*a6)(void)@<X5>, void *a7@<X8>)
{
  v37 = a6;
  v38 = a5;
  v39 = a3;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = type metadata accessor for OasisAnalyticsMetadata(0);
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  v21 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (!v21 && (OUTLINED_FUNCTION_67() & 1) == 0)
  {
    v22 = a1 == OUTLINED_FUNCTION_12_36() && a2 == 0xE700000000000000;
    if (v22 || (OUTLINED_FUNCTION_67() & 1) != 0)
    {
      v23 = (v7 + *(v39(0) + 20));
      v24 = *v23;
      if (v24 == 3)
      {
        goto LABEL_8;
      }

      v25 = *(v23 + 8);
      v26 = *(v23 + 1);
      v40 = v24;
      v41 = v26;
      v42 = v25 & 0x1FF;
      v27 = a7;
      v28 = a4;
      v29 = v38;
    }

    else
    {
      v31 = a1 == OUTLINED_FUNCTION_15_44() && a2 == v30;
      if (!v31 && (OUTLINED_FUNCTION_67() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        v34 = v33;
        *v33 = a1;
        v33[1] = a2;
        v33[5] = v39(0);
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v34 + 2);
        sub_1936A09FC(v7, boxed_opaque_existential_1Tm, v37);
        *(v34 + 48) = 1;
        swift_willThrow();

        return;
      }

      v32 = v7 + *(v39(0) + 24);
      if (*(v32 + 17))
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_9_59(v32);
      v28 = &type metadata for OasisAnalyticsQualityTrace;
      v29 = &off_1F07DEED0;
      v27 = a7;
    }

    sub_193494798(v28, v29, v27);
    return;
  }

  sub_19369FE34(v7, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_19344E6DC(v16, &qword_1EAE402A8, &qword_19397B638);
LABEL_8:
    OUTLINED_FUNCTION_104();
    return;
  }

  sub_1936A0BDC(v16, v8, type metadata accessor for OasisAnalyticsMetadata);
  sub_193494798(v17, &off_1F07DEEF0, a7);
  OUTLINED_FUNCTION_10_50();
}

void sub_1936A038C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_25_32();
  v6 = *v1;
  v7 = a1 == v3 && v4 == 0xE600000000000000;
  if (v7 || (v8 = v5, v9 = v4, v10 = *(v1 + 1), v15 = v1[16], v11 = v1[17], (sub_19393CA30() & 1) != 0))
  {
    if (v6 == 2)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v12 = a1 == 0x6574617473 && v9 == 0xE500000000000000;
  if (v12 || (sub_19393CA30() & 1) != 0)
  {
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  v13 = OUTLINED_FUNCTION_13_9();
  *v14 = a1;
  *(v14 + 8) = v9;
  *(v14 + 40) = v8;
  *(v14 + 16) = v6;
  *(v14 + 24) = v10;
  *(v14 + 32) = v15;
  *(v14 + 33) = v11;
  OUTLINED_FUNCTION_23_2(v13, v14);
}

void sub_1936A0558(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_25_32();
  v8 = *v1;
  v9 = a1 == v6 && v7 == 0xE600000000000000;
  if (v9 || (OUTLINED_FUNCTION_22_33(), (OUTLINED_FUNCTION_91_2() & 1) != 0))
  {
    if (v8 == 2)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v10 = a1 == 1701080941 && v2 == 0xE400000000000000;
  if (v10 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
  {
    if (v1)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  v11 = OUTLINED_FUNCTION_13_9();
  *v12 = a1;
  *(v12 + 8) = v2;
  *(v12 + 40) = &type metadata for OasisAnalyticsHandsPipelineFramerateSample;
  *(v12 + 16) = v8;
  *(v12 + 24) = v4;
  *(v12 + 32) = v3;
  *(v12 + 33) = v1;
  OUTLINED_FUNCTION_23_2(v11, v12);
}

void sub_1936A06E0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v8 = a1 == 0x65696C7070417369 && a2 == 0xE900000000000064;
  if (v8 || (OUTLINED_FUNCTION_22_33(), (OUTLINED_FUNCTION_91_2() & 1) != 0))
  {
    if (v7 == 2)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v9 = a1 == 1701080941 && v3 == 0xE400000000000000;
  if (v9 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
  {
    if (v2)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  v10 = OUTLINED_FUNCTION_13_9();
  *v11 = a1;
  *(v11 + 8) = v3;
  *(v11 + 40) = &type metadata for OasisAnalyticsHandsSystemFramerateSample;
  *(v11 + 16) = v7;
  *(v11 + 24) = v5;
  *(v11 + 32) = v4;
  *(v11 + 33) = v2;
  OUTLINED_FUNCTION_23_2(v10, v11);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OasisAnalyticsHandTracking.json()()
{
  v0 = sub_19393C090();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for OasisAnalyticsHandTracking(0);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402B0, &qword_19397B640);
  OUTLINED_FUNCTION_4_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  v22 = OUTLINED_FUNCTION_1_64();
  sub_1936A09FC(v22, v15, v23);
  sub_1934470C8(v15, v9, v21);
  sub_19393C080();
  sub_1936A0A5C();
  v24 = sub_19393C250();
  v26 = v25;
  (*(v3 + 8))(v8, v0);
  sub_19344E6DC(v21, &qword_1EAE402B0, &qword_19397B640);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1936A09FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1936A0A5C()
{
  result = qword_1EAE402B8;
  if (!qword_1EAE402B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE402B0, &qword_19397B640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE402B8);
  }

  return result;
}

uint64_t static OasisAnalyticsHandTracking.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402B0, &qword_19397B640);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  sub_1936A0A5C();
  result = sub_19393C260();
  if (!v1)
  {
    OUTLINED_FUNCTION_6_50();
    return sub_1936A0BDC(v10, a1, v12);
  }

  return result;
}

uint64_t sub_1936A0BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t static OasisAnalyticsHandTracking.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v38 = a5;
  v36 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402B0, &qword_19397B640);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_1();
  v14 = sub_19393C0C0();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v35 - v23;
  if (*sub_1936A7B64() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    (*(v17 + 16))(v22, v24, v14);
    sub_193450688(a1, a2);
    sub_1936A0A5C();
    v25 = v42;
    sub_19393C280();
    if (v25)
    {
      return (*(v17 + 8))(v24, v14);
    }

    else
    {
      (*(v17 + 8))(v24, v14);
      OUTLINED_FUNCTION_6_50();
      v28 = v37;
      sub_1936A0BDC(v6, v37, v29);
      v30 = type metadata accessor for OasisAnalyticsHandTracking(0);
      v31 = *(v30 + 20);
      sub_19344E6DC(v28 + v31, &qword_1EAE3A9E8, &qword_19394F800);
      v32 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v32);
      (*(v33 + 16))(v28 + v31, v36, v32);
      __swift_storeEnumTagSinglePayload(v28 + v31, 0, 1, v32);
      v34 = *(v30 + 24);
      sub_19344E6DC(v28 + v34, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v38, v28 + v34);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t OasisAnalyticsHandTracking.serialize()()
{
  v1 = type metadata accessor for OasisAnalyticsHandTracking(0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402B0, &qword_19397B640);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_3();
  v12 = OUTLINED_FUNCTION_1_64();
  sub_1936A09FC(v12, v7, v13);
  sub_1934470C8(v7, v1, v0);
  sub_1936A0A5C();
  v14 = sub_19393C290();
  sub_19344E6DC(v0, &qword_1EAE402B0, &qword_19397B640);
  return v14;
}

int *sub_1936A10B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1 == OUTLINED_FUNCTION_12_36() && v5 == 0xE700000000000000;
  if (v6 || (v7 = v5, (sub_19393CA30() & 1) != 0))
  {
    result = type metadata accessor for OasisAnalyticsHandTracking(0);
    if ((~*(v2 + result[7]) & 0xF000000000000007) != 0)
    {
      v14 = *(v2 + result[7]);
      return sub_193494798(&type metadata for OasisAnalyticsHandTracking.Payload, &off_1F07DE640, a2);
    }

    else
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    v10 = v9;
    *v9 = a1;
    v9[1] = v7;
    v9[5] = type metadata accessor for OasisAnalyticsHandTracking(0);
    __swift_allocate_boxed_opaque_existential_1Tm(v10 + 2);
    v11 = OUTLINED_FUNCTION_1_64();
    sub_1936A09FC(v11, v12, v13);
    *(v10 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1936A11D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(0);
  v7 = OUTLINED_FUNCTION_4_1(v49);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v48 = v11 - v10;
  v51 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(0);
  v12 = OUTLINED_FUNCTION_4_1(v51);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v50 = v16 - v15;
  v52 = type metadata accessor for OasisAnalyticsHandUserViewEvent(0);
  v17 = OUTLINED_FUNCTION_4_1(v52);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  v22 = v21 - v20;
  v23 = type metadata accessor for OasisAnalyticsPinchEvent(0);
  v24 = OUTLINED_FUNCTION_4_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  v27 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](0x65705373646E6168);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v29 = *v3;
  v31 = a1 == v30 && a2 == 0xEA00000000006465;
  if (v31 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (!(v29 >> 61))
    {
      swift_projectBox();
      OUTLINED_FUNCTION_8_44();
      sub_1936A09FC(v32, 0x65705373646E6168, v33);
      sub_193494798(v27, &off_1F07DE518, a3);
      v34 = type metadata accessor for OasisAnalyticsHandsSpeedEvent;
      v35 = 0x65705373646E6168;
      return sub_1936A1680(v35, v34);
    }
  }

  else
  {
    v37 = a1 == 0x68636E6970 && a2 == 0xE500000000000000;
    if (!v37 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      v39 = a1 == 0x72657355646E6168 && a2 == 0xEC00000077656956;
      if (v39 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        if (v29 >> 61 != 2)
        {
          goto LABEL_39;
        }

        v40 = swift_projectBox();
        sub_1936A09FC(v40, v22, type metadata accessor for OasisAnalyticsHandUserViewEvent);
        sub_193494798(v52, &off_1F07DE558, a3);
        v41 = type metadata accessor for OasisAnalyticsHandUserViewEvent;
      }

      else
      {
        v42 = a1 == 0xD000000000000011 && 0x8000000193A2CD40 == a2;
        if (v42 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
        {
          if (v29 >> 61 != 3)
          {
            goto LABEL_39;
          }

          v43 = swift_projectBox();
          v22 = v50;
          sub_1936A09FC(v43, v50, type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent);
          sub_193494798(v51, &off_1F07DE578, a3);
          v41 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent;
        }

        else
        {
          if (a1 == 0x72466D6574737973 && a2 == 0xEF65746172656D61)
          {
            if (v29 >> 61 != 4)
            {
              goto LABEL_39;
            }
          }

          else if ((OUTLINED_FUNCTION_5_5() & 1) == 0 || (v29 & 0xE000000000000000) != 0x8000000000000000)
          {
            goto LABEL_39;
          }

          v45 = swift_projectBox();
          v22 = v48;
          sub_1936A09FC(v45, v48, type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent);
          sub_193494798(v49, &off_1F07DE598, a3);
          v41 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent;
        }
      }

      v34 = v41;
      v35 = v22;
      return sub_1936A1680(v35, v34);
    }

    if (v29 >> 61 == 1)
    {
      v38 = swift_projectBox();
      sub_1936A09FC(v38, v4, type metadata accessor for OasisAnalyticsPinchEvent);
      sub_193494798(v23, &off_1F07DE538, a3);
      v34 = type metadata accessor for OasisAnalyticsPinchEvent;
      v35 = v4;
      return sub_1936A1680(v35, v34);
    }
  }

LABEL_39:
  sub_19349AB64();
  v46 = OUTLINED_FUNCTION_13_9();
  *v47 = a1;
  v47[1] = a2;
  v47[5] = &type metadata for OasisAnalyticsHandTracking.Payload;
  v47[2] = v29;
  OUTLINED_FUNCTION_23_2(v46, v47);
}

uint64_t sub_1936A1680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OasisAnalyticsPinchSample.HandPinchState.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t OasisAnalyticsPinchSample.HandPinchState.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t OasisAnalyticsPinchSample.HandPinchState.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    result = 0x6B61657242;
  }

  else
  {
    result = 1701536077;
  }

  *v0;
  return result;
}

void OasisAnalyticsPinchSample.HandPinchState.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 1701536077 ? (v4 = v0 == 0xE400000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x6B61657242 && v0 == 0xE500000000000000)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t OasisAnalyticsHandUserViewSample.UserViewState.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    result = 0x646574697845;
  }

  else
  {
    result = 0x64657265746E45;
  }

  *v0;
  return result;
}

void OasisAnalyticsHandUserViewSample.UserViewState.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x64657265746E45 ? (v4 = v0 == 0xE700000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x646574697845 && v0 == 0xE600000000000000)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t OasisAnalyticsHandTracking.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for OasisAnalyticsHandTracking(0);
  v3 = v2[5];
  sub_193509014();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19343E51C((a1 + v5));
  *a1 = *sub_1936A7B64();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v6 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v6);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  result = sub_193444060(*(a1 + v5));
  *(a1 + v5) = 0xF000000000000007;
  return result;
}

BOOL static OasisAnalyticsHandTracking.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OasisAnalyticsHandTracking(0) + 28);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    if ((~v6 & 0xF000000000000007) != 0)
    {
      sub_193437C90(v5);
      sub_193437C90(v6);
      sub_193437C90(v5);
      sub_1936A2820();
      v8 = sub_19393C550();

      sub_193444060(v5);
      return (v8 & 1) != 0;
    }

    sub_193437C90(v5);
    sub_193437C90(v6);
    sub_193437C90(v5);

LABEL_6:
    sub_193444060(v5);
    sub_193444060(v6);
    return 0;
  }

  sub_193437C90(v5);
  sub_193437C90(v6);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    goto LABEL_6;
  }

  sub_193444060(v5);
  return 1;
}

uint64_t OasisAnalyticsHandTracking.hash(into:)()
{
  v1 = type metadata accessor for OasisAnalyticsHandTracking(0);
  if ((~*(v0 + *(v1 + 28)) & 0xF000000000000007) == 0)
  {
    return sub_19393CAD0();
  }

  v3 = *(v0 + *(v1 + 28));
  sub_19393CAD0();
  sub_1936A2874();

  sub_19393C540();
}

uint64_t static OasisAnalyticsHandTracking.Payload.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v69 = a2;
  v3 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(0);
  v4 = OUTLINED_FUNCTION_47(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v68 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v66 - v10;
  v11 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(0);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v66 - v19;
  v21 = type metadata accessor for OasisAnalyticsHandUserViewEvent(0);
  v22 = OUTLINED_FUNCTION_47(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - v29;
  v31 = type metadata accessor for OasisAnalyticsPinchEvent(0);
  v32 = OUTLINED_FUNCTION_47(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_6();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v66 - v39;
  v41 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  v42 = OUTLINED_FUNCTION_47(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_6();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v66 - v49;
  v51 = *a1;
  v52 = *v69;
  switch(v51 >> 61)
  {
    case 1uLL:
      if (v52 >> 61 != 1)
      {
        goto LABEL_14;
      }

      swift_projectBox();
      v64 = OUTLINED_FUNCTION_15_45();
      sub_1936A28C8(v50, v40, type metadata accessor for OasisAnalyticsPinchEvent);
      sub_1936A28C8(v64, v37, type metadata accessor for OasisAnalyticsPinchEvent);

      v55 = static OasisAnalyticsPinchEvent.== infix(_:_:)(v40, v37);
      sub_1936A2928(v37, type metadata accessor for OasisAnalyticsPinchEvent);
      v56 = v40;
      v57 = type metadata accessor for OasisAnalyticsPinchEvent;
      goto LABEL_13;
    case 2uLL:
      if (v52 >> 61 != 2)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_10_51();
      v62 = OUTLINED_FUNCTION_15_45();
      v59 = type metadata accessor for OasisAnalyticsHandUserViewEvent;
      sub_1936A28C8(v50, v30, type metadata accessor for OasisAnalyticsHandUserViewEvent);
      sub_1936A28C8(v62, v27, type metadata accessor for OasisAnalyticsHandUserViewEvent);

      v55 = static OasisAnalyticsHandUserViewEvent.== infix(_:_:)(v30, v27);
      sub_1936A2928(v27, type metadata accessor for OasisAnalyticsHandUserViewEvent);
      v56 = v30;
      goto LABEL_10;
    case 3uLL:
      if (v52 >> 61 != 3)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_10_51();
      v63 = OUTLINED_FUNCTION_15_45();
      v59 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent;
      sub_1936A28C8(v50, v20, type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent);
      sub_1936A28C8(v63, v17, type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent);

      v55 = static OasisAnalyticsHandsPipelineFramerateEvent.== infix(_:_:)(v20, v17);
      sub_1936A2928(v17, type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent);
      v56 = v20;
      goto LABEL_10;
    case 4uLL:
      if (v52 >> 61 != 4)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_10_51();
      v58 = OUTLINED_FUNCTION_15_45();
      v59 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent;
      v60 = v67;
      sub_1936A28C8(v50, v67, type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent);
      v61 = v68;
      sub_1936A28C8(v58, v68, type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent);

      v55 = static OasisAnalyticsHandsSystemFramerateEvent.== infix(_:_:)(v60, v61);
      sub_1936A2928(v61, type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent);
      v56 = v60;
LABEL_10:
      v57 = v59;
      goto LABEL_13;
    default:
      if (v52 >> 61)
      {
LABEL_14:
        v55 = 0;
      }

      else
      {
        v53 = swift_projectBox();
        v54 = swift_projectBox();
        sub_1936A28C8(v53, v50, type metadata accessor for OasisAnalyticsHandsSpeedEvent);
        sub_1936A28C8(v54, v47, type metadata accessor for OasisAnalyticsHandsSpeedEvent);

        v55 = static OasisAnalyticsHandsSpeedEvent.== infix(_:_:)(v50, v47);
        sub_1936A2928(v47, type metadata accessor for OasisAnalyticsHandsSpeedEvent);
        v56 = v50;
        v57 = type metadata accessor for OasisAnalyticsHandsSpeedEvent;
LABEL_13:
        sub_1936A2928(v56, v57);
      }

      return v55 & 1;
  }
}

uint64_t OasisAnalyticsHandTracking.Payload.hash(into:)()
{
  v1 = v0;
  v45 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(0);
  v2 = OUTLINED_FUNCTION_4_1(v45);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(0);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = type metadata accessor for OasisAnalyticsHandUserViewEvent(0);
  v16 = OUTLINED_FUNCTION_4_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v21 = v20 - v19;
  v22 = type metadata accessor for OasisAnalyticsPinchEvent(0);
  v23 = OUTLINED_FUNCTION_4_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_1();
  v28 = v27 - v26;
  v29 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  v30 = OUTLINED_FUNCTION_4_1(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_1();
  v35 = v34 - v33;
  switch(*v1 >> 61)
  {
    case 1:
      v43 = swift_projectBox();
      v40 = type metadata accessor for OasisAnalyticsPinchEvent;
      sub_1936A28C8(v43, v28, type metadata accessor for OasisAnalyticsPinchEvent);
      OUTLINED_FUNCTION_14_44(&qword_1EAE402E8);
      OUTLINED_FUNCTION_12_37();
      sub_19393C540();
      v37 = v28;
      goto LABEL_7;
    case 2:
      v41 = swift_projectBox();
      v40 = type metadata accessor for OasisAnalyticsHandUserViewEvent;
      sub_1936A28C8(v41, v21, type metadata accessor for OasisAnalyticsHandUserViewEvent);
      OUTLINED_FUNCTION_14_44(&qword_1EAE402E0);
      OUTLINED_FUNCTION_12_37();
      sub_19393C540();
      v37 = v21;
      goto LABEL_7;
    case 3:
      v42 = swift_projectBox();
      v40 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent;
      sub_1936A28C8(v42, v14, type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent);
      OUTLINED_FUNCTION_14_44(&qword_1EAE402D8);
      OUTLINED_FUNCTION_12_37();
      sub_19393C540();
      v37 = v14;
      goto LABEL_7;
    case 4:
      v39 = swift_projectBox();
      v40 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent;
      sub_1936A28C8(v39, v7, type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent);
      OUTLINED_FUNCTION_14_44(&qword_1EAE402D0);
      sub_19393C540();
      v37 = v7;
LABEL_7:
      v38 = v40;
      break;
    default:
      v36 = swift_projectBox();
      sub_1936A28C8(v36, v35, type metadata accessor for OasisAnalyticsHandsSpeedEvent);
      sub_1936A2980(&qword_1EAE402F0, type metadata accessor for OasisAnalyticsHandsSpeedEvent);
      OUTLINED_FUNCTION_12_37();
      sub_19393C540();
      v37 = v35;
      v38 = type metadata accessor for OasisAnalyticsHandsSpeedEvent;
      break;
  }

  return sub_1936A2928(v37, v38);
}

void OasisAnalyticsHandsFramerateMode.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

char *static OasisAnalyticsHandsFramerateMode.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE40310, &qword_19397B850);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    v15 = sub_1934B0FCC(v13, v2 + 1, 1, v14, &qword_1EAE40310, &qword_19397B850);
    OUTLINED_FUNCTION_17_2(v15);
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v16 = OUTLINED_FUNCTION_39(v1);
    v18 = sub_1934B0FCC(v16, v2 + 2, 1, v17, &qword_1EAE40310, &qword_19397B850);
    OUTLINED_FUNCTION_17_2(v18);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v19 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v19, v2 + 3, 1, v20, &qword_1EAE40310, &qword_19397B850);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v21 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934B0FCC(v21, v2 + 4, 1, v22, &qword_1EAE40310, &qword_19397B850);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

uint64_t OasisAnalyticsHandsFramerateMode.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  v1 = 0x6D756964654DLL;
  if (*v0 != 1)
  {
    v1 = 7827276;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1751607624;
  }
}

void OasisAnalyticsHandsFramerateMode.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 1751607624 ? (v4 = v0 == 0xE400000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v6 = v1 == 0x6D756964654DLL && v0 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else if (v1 == 7827276 && v0 == 0xE300000000000000)
    {

      v5 = 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_0_9();

      v5 = 2;
      if ((v8 & 1) == 0)
      {
        v5 = 0;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

unint64_t sub_1936A2820()
{
  result = qword_1EAE402C0;
  if (!qword_1EAE402C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE402C0);
  }

  return result;
}

unint64_t sub_1936A2874()
{
  result = qword_1EAE402C8;
  if (!qword_1EAE402C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE402C8);
  }

  return result;
}

uint64_t sub_1936A28C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1936A2928(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1936A2980(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1936A29CC()
{
  result = qword_1EAE402F8;
  if (!qword_1EAE402F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE402F8);
  }

  return result;
}

unint64_t sub_1936A2A24()
{
  result = qword_1EAE40300;
  if (!qword_1EAE40300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40300);
  }

  return result;
}

unint64_t sub_1936A2A7C()
{
  result = qword_1EAE40308;
  if (!qword_1EAE40308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40308);
  }

  return result;
}

void sub_1936A2AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_24(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, vars0, vars8);
  if (!v8)
  {
    v10 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
    v11 = (v9 + *(v10 + 20));
    if ((*(v11 + 13) & 1) == 0)
    {
      v12 = *(v11 + 12);
      v13 = *(v11 + 2);
      v14 = *v11;
      OUTLINED_FUNCTION_179();
    }

    v15 = v9 + *(v10 + 24);
    if ((*(v15 + 17) & 1) == 0)
    {
      OUTLINED_FUNCTION_28_24(v15);
      OUTLINED_FUNCTION_179();
    }
  }
}

void sub_1936A2C38()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABEA0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("leftHandSpeed");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "rightHandSpeed");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936A2D6C()
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_19393C160();
    }
  }

  return result;
}

uint64_t sub_1936A2DE0()
{
  v2 = v0[2];
  v3 = *(v0 + 12);
  if ((v0[1] & 1) == 0)
  {
    v4 = *v0;
    result = sub_19393C340();
  }

  if (!v1 && (v3 & 1) == 0)
  {
    return sub_19393C340();
  }

  return result;
}

void sub_1936A2EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  a10 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  v24 = OUTLINED_FUNCTION_47(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &a9 - v27;
  v29 = type metadata accessor for OasisAnalyticsMetadata(0);
  v30 = OUTLINED_FUNCTION_4_1(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_1();
  v35 = v34 - v33;
  sub_19344F184();
  OUTLINED_FUNCTION_6_3(v28, 1, v29);
  if (v36)
  {
    sub_19344E6DC(v28, &qword_1EAE402A8, &qword_19397B638);
  }

  else
  {
    sub_1936A56A4();
    sub_193447600();
    sub_1936A56FC(v35, type metadata accessor for OasisAnalyticsMetadata);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936A30D8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABED0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("isLeft");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "state");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A3290()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEABEE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_47_4();
  v6 = OUTLINED_FUNCTION_41_21();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("HandPinchStateUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  (v10)(v11);
  OUTLINED_FUNCTION_3_1(v0 + v5);
  OUTLINED_FUNCTION_69_6(v12);
  OUTLINED_FUNCTION_36_5(v13, "HandPinchStateMake");
  OUTLINED_FUNCTION_10_0();
  v10();
  v14 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v15 = v1;
  v16 = OUTLINED_FUNCTION_48(v14, "HandPinchStateBreak");
  (v10)(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A34BC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABF18);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("isLeft");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "state");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A3674()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEABF30);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_47_4();
  v6 = OUTLINED_FUNCTION_41_21();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v1 = 0;
  *v0 = "UserViewStateUnknown";
  *(v0 + 8) = 20;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  (v10)(v11);
  OUTLINED_FUNCTION_3_1(v1 + v5);
  OUTLINED_FUNCTION_69_6(v12);
  *v13 = "UserViewStateEntered";
  *(v13 + 8) = 20;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  v14 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v15 = 2;
  *v14 = "UserViewStateExited";
  *(v14 + 8) = 19;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A38B4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABF60);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("isLeft");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "mode");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A3A28()
{
  OUTLINED_FUNCTION_115();
  v2 = v1;
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, v2);
  __swift_project_value_buffer(v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_47_4();
  v7 = OUTLINED_FUNCTION_41_21();
  OUTLINED_FUNCTION_4_2(v7, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("metadata");
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  v12 = OUTLINED_FUNCTION_65();
  (v11)(v12);
  v13 = OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_36_5(v13, "payload");
  OUTLINED_FUNCTION_10_0();
  v11();
  v14 = OUTLINED_FUNCTION_3_1(v0 + 2 * v6);
  *v15 = 3;
  v16 = OUTLINED_FUNCTION_48(v14, "qualityTrace");
  (v11)(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A3B98()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v1 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 3:
        v7 = v0 + *(v3(0) + 24);
LABEL_10:
        sub_193498018();
        break;
      case 2:
        v6 = v0 + *(v3(0) + 20);
        goto LABEL_10;
      case 1:
        type metadata accessor for OasisAnalyticsMetadata(0);
        goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936A3CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_24(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, v16, v18, v20, v21, v22, v23, v24, v25, v26, v27);
  if (!v8)
  {
    v11 = a4(0);
    v12 = v9 + *(v11 + 20);
    if (*v12 != 3)
    {
      v17 = *(v12 + 8);
      v19 = *(v12 + 16) & 0x1FF;
      sub_193447600();
    }

    v13 = v9 + *(v11 + 24);
    if ((*(v13 + 17) & 1) == 0)
    {
      OUTLINED_FUNCTION_28_24(v13);
      OUTLINED_FUNCTION_179();
    }
  }
}

void sub_1936A3E24()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABF90);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("isApplied");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "mode");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A3F58()
{
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_1934982A8();
    }

    else if (v1 == 1)
    {
      sub_19393C0F0();
    }
  }
}

uint64_t sub_1936A3FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 17);
  if (*v5 != 2)
  {
    result = sub_19393C2E0();
  }

  if (!v6 && (v13 & 1) == 0)
  {
    v15 = v11;
    v16 = v12 & 1;
    return sub_193447324(&v15, 2, a2, a4, a3, a5);
  }

  return result;
}

uint64_t sub_1936A4134()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABFA8);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FAC0;
  v7 = v6 + v5 + v3[14];
  OUTLINED_FUNCTION_69_6((v6 + v5));
  *v7 = "payload";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  (*(v10 + 104))(v7, v8);
  return sub_19393C410();
}

void sub_1936A4290()
{
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      v3 = *(type metadata accessor for OasisAnalyticsHandTracking(0) + 28);
      sub_193498018();
    }
  }
}

void sub_1936A4340()
{
  v1 = type metadata accessor for OasisAnalyticsHandTracking(0);
  if ((~*(v0 + *(v1 + 28)) & 0xF000000000000007) != 0)
  {
    v2 = *(v0 + *(v1 + 28));
    sub_193447600();
  }
}

uint64_t sub_1936A4434@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  v2 = swift_allocBox();
  result = OasisAnalyticsHandsSpeedEvent.init()();
  *a1 = v2;
  return result;
}

void sub_1936A4470()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABFC0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBD0;
  v7 = v6 + v5 + dword_1EAEABFF8;
  *(v6 + v5) = 1;
  *v7 = "handsSpeed";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  v12 = OUTLINED_FUNCTION_29_1();
  *v12 = "pinch";
  *(v12 + 8) = 5;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  v13 = OUTLINED_FUNCTION_3_1(v6 + v5 + 2 * v3);
  *v14 = 3;
  OUTLINED_FUNCTION_36_5(v13, "handUserView");
  OUTLINED_FUNCTION_2_0();
  v11();
  v15 = OUTLINED_FUNCTION_3_1(v6 + v5 + 3 * v3);
  *v16 = 4;
  OUTLINED_FUNCTION_36_5(v15, "pipelineFramerate");
  OUTLINED_FUNCTION_2_0();
  v11();
  v17 = OUTLINED_FUNCTION_3_1(v6 + v5 + 4 * v3);
  *v18 = 5;
  *v17 = "systemFramerate";
  *(v17 + 8) = 15;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A467C()
{
  OUTLINED_FUNCTION_26();
  v122 = v0;
  v123 = v2;
  v124 = v3;
  v4 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v107 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE403E8, &qword_19397B868);
  v11 = OUTLINED_FUNCTION_47(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v117 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v115 = &v102 - v17;
  v114 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(0);
  v18 = OUTLINED_FUNCTION_4_1(v114);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v106 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE403F0, &qword_19397B870);
  v24 = OUTLINED_FUNCTION_47(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6();
  v103 = v27 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v113 = &v102 - v30;
  v112 = type metadata accessor for OasisAnalyticsHandUserViewEvent(0);
  v31 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_5_1();
  v34 = v33 - v32;
  v35 = &qword_1EAE403F8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE403F8, &qword_19397B878);
  v37 = OUTLINED_FUNCTION_47(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6();
  v42 = v40 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v102 - v44;
  v111 = type metadata accessor for OasisAnalyticsPinchEvent(0);
  v46 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_5_1();
  v104 = v48 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40400, &qword_19397B880);
  v50 = OUTLINED_FUNCTION_47(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_6();
  v116 = v53 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v102 - v56;
  v109 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  v58 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_5_1();
  v102 = v60 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40408, &qword_19397B888);
  v62 = OUTLINED_FUNCTION_47(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_6();
  v67 = v65 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v108 = &v102 - v69;
  v120 = v45;
  v121 = v4;
  v110 = v57;
  v118 = v42;
  v119 = v67;
  v105 = v34;
  while (1)
  {
    v70 = sub_19393C0E0();
    if (v1 || (v71 & 1) != 0)
    {
      break;
    }

    switch(v70)
    {
      case 1:
        v73 = v108;
        v72 = v109;
        v74 = OUTLINED_FUNCTION_16();
        __swift_storeEnumTagSinglePayload(v74, v75, v76, v72);
        OUTLINED_FUNCTION_67_12();
        sub_193498018();
        OUTLINED_FUNCTION_39_24();
        sub_19344F184();
        OUTLINED_FUNCTION_5_3(v67);
        if (v77)
        {
          OasisAnalyticsHandsSpeedEvent.init()();
          v67 = v119;
          sub_19344E6DC(v73, &qword_1EAE40408, &qword_19397B888);
          OUTLINED_FUNCTION_5_3(v67);
          if (!v77)
          {
            sub_19344E6DC(v67, &qword_1EAE40408, &qword_19397B888);
          }
        }

        else
        {
          sub_19344E6DC(v73, &qword_1EAE40408, &qword_19397B888);
          OUTLINED_FUNCTION_24_35();
          sub_1936A56A4();
        }

        v98 = swift_allocBox();
        OUTLINED_FUNCTION_24_35();
        sub_1936A56A4();
        v42 = v118;
        goto LABEL_31;
      case 2:
        v94 = v110;
        v93 = v111;
        __swift_storeEnumTagSinglePayload(v110, 1, 1, v111);
        sub_193498018();
        v95 = v34;
        OUTLINED_FUNCTION_39_24();
        v96 = v116;
        sub_19344F184();
        OUTLINED_FUNCTION_6_3(v96, 1, v93);
        if (v77)
        {
          OasisAnalyticsPinchEvent.init()(v104);
          sub_19344E6DC(v94, &qword_1EAE40400, &qword_19397B880);
          OUTLINED_FUNCTION_6_3(v96, 1, v93);
          if (!v77)
          {
            sub_19344E6DC(v116, &qword_1EAE40400, &qword_19397B880);
          }
        }

        else
        {
          sub_19344E6DC(v94, &qword_1EAE40400, &qword_19397B880);
          OUTLINED_FUNCTION_23_36();
          sub_1936A56A4();
        }

        v101 = swift_allocBox();
        OUTLINED_FUNCTION_23_36();
        sub_1936A56A4();
        v98 = v101 | 0x2000000000000000;
        v34 = v95;
        v35 = &qword_1EAE403F8;
        v42 = v118;
        v67 = v119;
        goto LABEL_31;
      case 3:
        v84 = v35;
        v85 = OUTLINED_FUNCTION_16();
        v86 = v112;
        __swift_storeEnumTagSinglePayload(v85, v87, v88, v112);
        sub_193498018();
        OUTLINED_FUNCTION_39_24();
        sub_19344F184();
        OUTLINED_FUNCTION_6_3(v42, 1, v86);
        if (v77)
        {
          OasisAnalyticsHandUserViewEvent.init()(v34);
          sub_19344E6DC(v45, v84, &qword_19397B878);
          OUTLINED_FUNCTION_6_3(v42, 1, v86);
          if (!v77)
          {
            sub_19344E6DC(v42, v84, &qword_19397B878);
          }
        }

        else
        {
          sub_19344E6DC(v45, v84, &qword_19397B878);
          OUTLINED_FUNCTION_26_25();
          sub_1936A56A4();
        }

        v99 = swift_allocBox();
        OUTLINED_FUNCTION_26_25();
        sub_1936A56A4();
        v98 = v99 | 0x4000000000000000;
        v35 = v84;
        goto LABEL_31;
      case 4:
        v89 = v42;
        v90 = v113;
        v91 = v114;
        __swift_storeEnumTagSinglePayload(v113, 1, 1, v114);
        sub_193498018();
        v92 = v103;
        OUTLINED_FUNCTION_39_24();
        sub_19344F184();
        OUTLINED_FUNCTION_6_3(v92, 1, v91);
        if (v77)
        {
          OasisAnalyticsHandsPipelineFramerateEvent.init()(v106);
          sub_19344E6DC(v90, &qword_1EAE403F0, &qword_19397B870);
          OUTLINED_FUNCTION_6_3(v92, 1, v91);
          if (!v77)
          {
            sub_19344E6DC(v92, &qword_1EAE403F0, &qword_19397B870);
          }
        }

        else
        {
          sub_19344E6DC(v90, &qword_1EAE403F0, &qword_19397B870);
          OUTLINED_FUNCTION_25_33();
          sub_1936A56A4();
        }

        v100 = swift_allocBox();
        OUTLINED_FUNCTION_25_33();
        sub_1936A56A4();
        v98 = v100 | 0x6000000000000000;
        v34 = v105;
        v35 = &qword_1EAE403F8;
        v42 = v89;
        goto LABEL_28;
      case 5:
        v78 = v115;
        v79 = OUTLINED_FUNCTION_16();
        __swift_storeEnumTagSinglePayload(v79, v80, v81, v4);
        OUTLINED_FUNCTION_67_12();
        sub_193498018();
        OUTLINED_FUNCTION_39_24();
        v82 = v117;
        sub_19344F184();
        OUTLINED_FUNCTION_5_3(v82);
        if (v77)
        {
          OasisAnalyticsHandsSystemFramerateEvent.init()(v107);
          v83 = v117;
          sub_19344E6DC(v78, &qword_1EAE403E8, &qword_19397B868);
          OUTLINED_FUNCTION_5_3(v83);
          if (!v77)
          {
            sub_19344E6DC(v83, &qword_1EAE403E8, &qword_19397B868);
          }
        }

        else
        {
          sub_19344E6DC(v78, &qword_1EAE403E8, &qword_19397B868);
          OUTLINED_FUNCTION_27_27();
          sub_1936A56A4();
        }

        v97 = swift_allocBox();
        OUTLINED_FUNCTION_27_27();
        sub_1936A56A4();
        v98 = v97 | 0x8000000000000000;
LABEL_28:
        v67 = v119;
LABEL_31:
        v4 = v121;
        *v122 = v98;
        v45 = v120;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936A5064()
{
  OUTLINED_FUNCTION_26();
  v38 = v0;
  v37 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(0);
  v1 = OUTLINED_FUNCTION_4_1(v37);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(0);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = type metadata accessor for OasisAnalyticsHandUserViewEvent(0);
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v20 = v19 - v18;
  v21 = type metadata accessor for OasisAnalyticsPinchEvent(0);
  v22 = OUTLINED_FUNCTION_4_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v27 = v26 - v25;
  v28 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  v29 = OUTLINED_FUNCTION_4_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_1();
  v34 = v33 - v32;
  switch(*v38 >> 61)
  {
    case 1:
      swift_projectBox();
      sub_1936A53DC();
      OUTLINED_FUNCTION_63_13();
      v35 = type metadata accessor for OasisAnalyticsPinchEvent;
      v36 = v27;
      break;
    case 2:
      swift_projectBox();
      sub_1936A53DC();
      OUTLINED_FUNCTION_63_13();
      v35 = type metadata accessor for OasisAnalyticsHandUserViewEvent;
      v36 = v20;
      break;
    case 3:
      swift_projectBox();
      sub_1936A53DC();
      OUTLINED_FUNCTION_63_13();
      v35 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent;
      v36 = v13;
      break;
    case 4:
      swift_projectBox();
      sub_1936A53DC();
      OUTLINED_FUNCTION_63_13();
      v35 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent;
      v36 = v6;
      break;
    default:
      swift_projectBox();
      sub_1936A53DC();
      OUTLINED_FUNCTION_63_13();
      v35 = type metadata accessor for OasisAnalyticsHandsSpeedEvent;
      v36 = v34;
      break;
  }

  sub_1936A56FC(v36, v35);
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936A53DC()
{
  OUTLINED_FUNCTION_91_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return v0;
}

void sub_1936A5498()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABFD8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBC0;
  v7 = v6 + v5 + dword_1EAEAC010;
  *(v6 + v5) = 0;
  *v7 = "OasisAnalyticsHandsFramerateModeUnknown";
  *(v7 + 8) = 39;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  OUTLINED_FUNCTION_3_1(v6 + v5 + v3);
  OUTLINED_FUNCTION_69_6(v12);
  *v13 = "OasisAnalyticsHandsFramerateModeHigh";
  *(v13 + 8) = 36;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  v14 = OUTLINED_FUNCTION_3_1(v6 + v5 + 2 * v3);
  *v15 = 2;
  *v14 = "OasisAnalyticsHandsFramerateModeMedium";
  *(v14 + 8) = 38;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  v16 = OUTLINED_FUNCTION_3_1(v6 + v5 + 3 * v3);
  *v17 = 3;
  *v16 = "OasisAnalyticsHandsFramerateModeLow";
  *(v16 + 8) = 35;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936A56A4()
{
  OUTLINED_FUNCTION_91_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return v0;
}

uint64_t sub_1936A56FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_36_23()
{

  sub_1936A3B98();
}

uint64_t OUTLINED_FUNCTION_39_24()
{
  v2 = **(v0 - 112) & 0x1FFFFFFFFFFFFFFFLL;
}

uint64_t OUTLINED_FUNCTION_41_21()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_63_13()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 72);

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_67_12()
{
  result = v0;
  v4 = *(v1 - 104);
  v3 = *(v1 - 96);
  v5 = *(v1 - 72);
  return result;
}

uint64_t OasisAnalyticsHandsSpeedEvent.payload.getter()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(v1);
  result = OUTLINED_FUNCTION_71_0(v2);
  v5 = *v4;
  v6 = *(v4 + 2);
  v7 = *(v4 + 12);
  LOBYTE(v4) = *(v4 + 13);
  *v0 = v5;
  *(v0 + 12) = v7;
  *(v0 + 8) = v6;
  *(v0 + 13) = v4;
  return result;
}

uint64_t OasisAnalyticsHandsSpeedEvent.payload.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 12);
  v4 = *(a1 + 13);
  v5 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  result = OUTLINED_FUNCTION_71_0(v5);
  *v7 = v1;
  *(v7 + 12) = v3;
  *(v7 + 8) = v2;
  *(v7 + 13) = v4;
  return result;
}

uint64_t OasisAnalyticsHandsSpeedEvent.payload.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for OasisAnalyticsHandsSpeedEvent(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandsSpeedEvent.qualityTrace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for OasisAnalyticsHandsSpeedEvent(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandsSpeedEvent.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for OasisAnalyticsMetadata(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  v7 = *(v6 + 20);
  *(v0 + v7) = 0;
  *(v0 + v7 + 8) = 0;
  *(v0 + v7 + 12) = 256;
  v8 = v0 + *(v6 + 24);
  *(v8 + 16) = 256;
  *v8 = 0;
  *(v8 + 8) = 0;
  sub_19344E6DC(v0, &qword_1EAE402A8, &qword_19397B638);
  v9 = OUTLINED_FUNCTION_28_0();
  result = __swift_storeEnumTagSinglePayload(v9, v10, v11, v2);
  *(v0 + v7) = 0;
  *(v0 + v7 + 12) = 256;
  *(v0 + v7 + 8) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 256;
  return result;
}

uint64_t static OasisAnalyticsHandsSpeedEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OasisAnalyticsMetadata(0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40410, &qword_19397B990);
  OUTLINED_FUNCTION_47(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - v22;
  v24 = *(v21 + 56);
  sub_1934487B4(a1, &v48 - v22, &qword_1EAE402A8, &qword_19397B638);
  sub_1934487B4(a2, &v23[v24], &qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_31(v23);
  if (!v25)
  {
    sub_1934487B4(v23, v16, &qword_1EAE402A8, &qword_19397B638);
    OUTLINED_FUNCTION_31(&v23[v24]);
    if (!v25)
    {
      sub_1936A6128(&v23[v24], v10);
      OUTLINED_FUNCTION_0_85();
      sub_1936A618C(v27, v28);
      v29 = sub_19393C550();
      sub_1936A60CC(v10);
      sub_1936A60CC(v16);
      sub_19344E6DC(v23, &qword_1EAE402A8, &qword_19397B638);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    sub_1936A60CC(v16);
LABEL_9:
    sub_19344E6DC(v23, &qword_1EAE40410, &qword_19397B990);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v23[v24]);
  if (!v25)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v23, &qword_1EAE402A8, &qword_19397B638);
LABEL_13:
  v30 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  v31 = *(v30 + 20);
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 13);
  v34 = (a2 + v31);
  v35 = *(v34 + 13);
  if (v33)
  {
    if ((*(v34 + 13) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v34 + 13))
    {
      return 0;
    }

    v39 = *v34;
    v40 = *(v34 + 12);
    v41 = *(v34 + 2);
    v42 = *(v32 + 12);
    v43 = *(v32 + 2);
    v44 = *v32;
    if ((v44 & 0x100000000) != 0)
    {
      if ((v39 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else if ((v39 & 0x100000000) != 0 || *&v44 != *&v39)
    {
      return 0;
    }

    v47 = v41 | (v40 << 32);
    if (((v43 | (v42 << 32)) & 0x100000000) != 0)
    {
      if ((v47 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else if ((v47 & 0x100000000) != 0 || *&v43 != *&v47)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_29_26(*(v30 + 24));
  if (v38)
  {
    if (v37)
    {
      return 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_45(v36);
    if ((v46 & 1) == 0)
    {
      OUTLINED_FUNCTION_15_46(v45);
      if (sub_19393C550())
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t OasisAnalyticsHandsSpeedEvent.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for OasisAnalyticsMetadata(v1);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_32_26();
  sub_1934487B4(v13, v14, &qword_1EAE402A8, &qword_19397B638);
  v15 = OUTLINED_FUNCTION_19();
  if (__swift_getEnumTagSinglePayload(v15, v16, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_1936A6128(v0, v8);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_85();
    sub_1936A618C(v17, v18);
    sub_19393C540();
    sub_1936A60CC(v8);
  }

  v19 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  v20 = v0 + *(v19 + 20);
  if (*(v20 + 13) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v21 = *(v20 + 12);
    v22 = *(v20 + 8);
    v23 = *v20;
    OUTLINED_FUNCTION_103_0();
    OasisAnalyticsHandsSpeedSample.hash(into:)();
  }

  v24 = v0 + *(v19 + 24);
  if (*(v24 + 17) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v26 = *v24;
  v27 = *(v24 + 8) & 0x1FF;
  v28 = *(v24 + 16) & 1;
  OUTLINED_FUNCTION_103_0();
  sub_1936A62A8();
  return sub_19393C540();
}

uint64_t OasisAnalyticsHandsSpeedSample.leftHandSpeed.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t OasisAnalyticsHandsSpeedSample.rightHandSpeed.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

void __swiftcall OasisAnalyticsHandsSpeedSample.init()(IntelligencePlatformLibrary::OasisAnalyticsHandsSpeedSample *__return_ptr retstr)
{
  retstr->leftHandSpeed.value = 0.0;
  retstr->leftHandSpeed.is_nil = 1;
  retstr->rightHandSpeed.value = 0.0;
  retstr->rightHandSpeed.is_nil = 1;
}

uint64_t static OasisAnalyticsHandsSpeedSample.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  if (*(a1 + 12))
  {
    if ((*(a2 + 12) & 1) == 0)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  return 1;
}

unint64_t sub_1936A6078()
{
  result = qword_1EAE40418;
  if (!qword_1EAE40418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40418);
  }

  return result;
}

uint64_t sub_1936A60CC(uint64_t a1)
{
  v2 = type metadata accessor for OasisAnalyticsMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1936A6128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OasisAnalyticsMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1936A618C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OasisAnalyticsHandsSpeedSample.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 12);
  if (*(v0 + 4) == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
LABEL_3:
      sub_19393CAD0();
      return sub_19393CAE0();
    }
  }

  else
  {
    v4 = *v0;
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_19393CAD0();
}

uint64_t OasisAnalyticsHandsSpeedSample.hashValue.getter()
{
  OUTLINED_FUNCTION_9_60();
  sub_19393CAB0();
  OasisAnalyticsHandsSpeedSample.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1936A62A8()
{
  result = qword_1EAE40430;
  if (!qword_1EAE40430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40430);
  }

  return result;
}

uint64_t sub_1936A62FC()
{
  OUTLINED_FUNCTION_9_60();
  sub_19393CAB0();
  OasisAnalyticsHandsSpeedSample.hash(into:)();
  return sub_19393CB00();
}

uint64_t OasisAnalyticsPinchEvent.payload.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for OasisAnalyticsPinchEvent(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

__n128 sub_1936A6464()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v4 = (v1 + *(v3(v2) + 24));
  v5 = v4[1].n128_u8[0];
  v6 = v4[1].n128_u8[1];
  result = *v4;
  *v0 = *v4;
  v0[1].n128_u8[0] = v5;
  v0[1].n128_u8[1] = v6;
  return result;
}

uint64_t sub_1936A64C8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  result = a2(0);
  v8 = v2 + *(result + 24);
  *v8 = v3;
  *(v8 + 8) = v4;
  *(v8 + 16) = v5;
  *(v8 + 17) = v6;
  return result;
}

uint64_t OasisAnalyticsPinchEvent.qualityTrace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for OasisAnalyticsPinchEvent(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1936A65E8(void (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1936A6650(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

void OasisAnalyticsPinchSample.state.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t OasisAnalyticsPinchSample.state.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  return result;
}

void OasisAnalyticsPinchSample.init()(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  OUTLINED_FUNCTION_26_26(a1);
}

uint64_t sub_1936A6730@<X0>(uint64_t *a1@<X8>)
{
  result = OasisAnalyticsPinchSample.HandPinchState.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936A6758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static OasisAnalyticsPinchSample.HandPinchState.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1936A67B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1936A68C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

__n128 sub_1936A6A68()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_71_0(v3);
  v5 = v4[1].n128_u16[0];
  result = *v4;
  *v0 = *v4;
  v0[1].n128_u16[0] = v5;
  return result;
}

uint64_t sub_1936A6AE0(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  v5 = a2(0);
  result = OUTLINED_FUNCTION_71_0(v5);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  return result;
}

uint64_t OasisAnalyticsHandUserViewEvent.payload.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for OasisAnalyticsHandUserViewEvent(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandUserViewEvent.qualityTrace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for OasisAnalyticsHandUserViewEvent(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

__n128 sub_1936A6BEC@<Q0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OasisAnalyticsMetadata(0);
  v5 = OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v5, v6, 1, v4);
  v7 = a1(0);
  v8 = a2 + *(v7 + 20);
  *v8 = xmmword_19396F4D0;
  *(v8 + 16) = 0;
  v9 = a2 + *(v7 + 24);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 256;
  sub_19344E6DC(a2, &qword_1EAE402A8, &qword_19397B638);
  v10 = OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v10, v11, 1, v4);
  result = xmmword_19396F4D0;
  *v8 = xmmword_19396F4D0;
  *(v8 + 16) = 0;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 256;
  return result;
}

uint64_t sub_1936A6D90@<X0>(uint64_t *a1@<X8>)
{
  result = OasisAnalyticsHandUserViewSample.UserViewState.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936A6DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static OasisAnalyticsHandUserViewSample.UserViewState.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t OasisAnalyticsHandsPipelineFramerateEvent.payload.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandsPipelineFramerateEvent.qualityTrace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandsSystemFramerateEvent.payload.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandsSystemFramerateEvent.qualityTrace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

BOOL sub_1936A7258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, _BYTE *))
{
  v48 = a4;
  v7 = type metadata accessor for OasisAnalyticsMetadata(0);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_47(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49[-v18 - 8];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40410, &qword_19397B990);
  OUTLINED_FUNCTION_47(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3_0();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v49[-v25 - 8];
  v27 = *(v24 + 56);
  sub_1934487B4(a1, &v49[-v25 - 8], &qword_1EAE402A8, &qword_19397B638);
  sub_1934487B4(a2, &v26[v27], &qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_31(v26);
  if (v28)
  {
    OUTLINED_FUNCTION_31(&v26[v27]);
    if (v28)
    {
      sub_19344E6DC(v26, &qword_1EAE402A8, &qword_19397B638);
      goto LABEL_12;
    }

LABEL_9:
    sub_19344E6DC(v26, &qword_1EAE40410, &qword_19397B990);
    return 0;
  }

  sub_1934487B4(v26, v19, &qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_31(&v26[v27]);
  if (v28)
  {
    sub_1936A60CC(v19);
    goto LABEL_9;
  }

  sub_1936A6128(&v26[v27], v13);
  OUTLINED_FUNCTION_0_85();
  sub_1936A618C(v30, v31);
  v32 = sub_19393C550();
  sub_1936A60CC(v13);
  sub_1936A60CC(v19);
  sub_19344E6DC(v26, &qword_1EAE402A8, &qword_19397B638);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v33 = a3(0);
  v34 = *(v33 + 20);
  v35 = a1 + v34;
  v36 = *(a1 + v34);
  v37 = a2 + v34;
  v38 = *(a2 + v34);
  if (v36 == 3)
  {
    if (v38 != 3)
    {
      return 0;
    }
  }

  else
  {
    v39 = *(v37 + 8);
    v40 = *(v37 + 16);
    v41 = *(v35 + 16);
    v42 = *(v35 + 8);
    v52[0] = v36;
    v52[1] = v42;
    v53 = v41;
    if (v38 == 3)
    {
      return 0;
    }

    v49[0] = v38;
    v50 = v39;
    v51 = v40 & 0x1FF;
    if ((v48(v52, v49) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_29_26(*(v33 + 24));
  if ((v45 & 1) == 0)
  {
    OUTLINED_FUNCTION_14_45(v43);
    if ((v47 & 1) == 0)
    {
      OUTLINED_FUNCTION_15_46(v46);
      if (sub_19393C550())
      {
        return 1;
      }
    }

    return 0;
  }

  return (v44 & 1) != 0;
}

uint64_t sub_1936A7594(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_3_4();
  v7 = type metadata accessor for OasisAnalyticsMetadata(v6);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_47(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_32_26();
  sub_1934487B4(v18, v19, &qword_1EAE402A8, &qword_19397B638);
  v20 = OUTLINED_FUNCTION_19();
  if (__swift_getEnumTagSinglePayload(v20, v21, v7) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_1936A6128(v3, v13);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_85();
    sub_1936A618C(v22, v23);
    sub_19393C540();
    sub_1936A60CC(v13);
  }

  v24 = a2(0);
  v25 = (v3 + *(v24 + 20));
  v26 = *v25;
  if (v26 == 3)
  {
    goto LABEL_9;
  }

  v27 = *(v25 + 1);
  v28 = *(v25 + 8);
  OUTLINED_FUNCTION_103_0();
  if (v26 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if ((v28 & 0x100) != 0)
  {
LABEL_9:
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v29 = OUTLINED_FUNCTION_103_0();
    v30 = a3(v29);
    MEMORY[0x193B18030](v30);
  }

  v31 = v3 + *(v24 + 24);
  if (*(v31 + 17))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v33 = *v31;
  v34 = *(v31 + 8) & 0x1FF;
  v35 = *(v31 + 16) & 1;
  OUTLINED_FUNCTION_103_0();
  sub_1936A62A8();
  return sub_19393C540();
}

uint64_t sub_1936A7848(uint64_t result, unsigned __int8 *a2, uint64_t (*a3)(void))
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = *(result + 17);
  v8 = *a2;
  if (v4 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }

LABEL_6:
    if (v7)
    {
      if ((a2[17] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (a2[17])
      {
        return 0;
      }

      v10 = *(a2 + 1);
      v11 = a2[16] & 1;
      v9 = (a3)(result);
      if (v9 != a3())
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if (v8 != 2 && ((v8 ^ v4) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1936A7930(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 17);
  if (*v2 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v6)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v8 = OUTLINED_FUNCTION_103_0();
  v9 = a2(v8);
  return MEMORY[0x193B18030](v9);
}

uint64_t sub_1936A79EC(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_21_36();
  sub_19393CAB0();
  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v1)
  {
    OUTLINED_FUNCTION_180();
    v4 = a1();
    MEMORY[0x193B18030](v4);
  }

  return sub_19393CB00();
}

uint64_t sub_1936A7AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_21_36();
  sub_19393CAB0();
  if (v5 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v4)
  {
    OUTLINED_FUNCTION_180();
    v7 = a4();
    MEMORY[0x193B18030](v7);
  }

  return sub_19393CB00();
}

uint64_t OasisAnalyticsHandTracking.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for OasisAnalyticsHandTracking(v2);
  return sub_1934487B4(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t OasisAnalyticsHandTracking.writeTimestamp.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for OasisAnalyticsHandTracking(v2);
  return sub_1934453DC(v0, v1 + *(v3 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t OasisAnalyticsHandTracking.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for OasisAnalyticsHandTracking(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandTracking.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for OasisAnalyticsHandTracking(v2);
  return sub_1934487B4(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t OasisAnalyticsHandTracking.bookmark.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for OasisAnalyticsHandTracking(v2);
  return sub_1934453DC(v0, v1 + *(v3 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t OasisAnalyticsHandTracking.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for OasisAnalyticsHandTracking(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandTracking.payload.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for OasisAnalyticsHandTracking(v2) + 28));
  *v0 = v3;

  return sub_193437C90(v3);
}

uint64_t OasisAnalyticsHandTracking.payload.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for OasisAnalyticsHandTracking(0) + 28);
  result = sub_193444060(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t OasisAnalyticsHandTracking.payload.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for OasisAnalyticsHandTracking(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandTracking.Payload.hashValue.getter()
{
  v2 = *v0;
  sub_19393CAB0();
  OasisAnalyticsHandTracking.Payload.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1936A7E14()
{
  v2 = *v0;
  sub_19393CAB0();
  OasisAnalyticsHandTracking.Payload.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1936A7EA4@<X0>(uint64_t *a1@<X8>)
{
  result = OasisAnalyticsHandsFramerateMode.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936A7ECC@<X0>(char **a1@<X8>)
{
  result = static OasisAnalyticsHandsFramerateMode.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1936A8044()
{
  result = qword_1EAE40440;
  if (!qword_1EAE40440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40440);
  }

  return result;
}

unint64_t sub_1936A8114()
{
  result = qword_1EAE40460;
  if (!qword_1EAE40460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40460);
  }

  return result;
}

unint64_t sub_1936A816C()
{
  result = qword_1EAE40468;
  if (!qword_1EAE40468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40468);
  }

  return result;
}

unint64_t sub_1936A823C()
{
  result = qword_1EAE40488;
  if (!qword_1EAE40488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40488);
  }

  return result;
}

unint64_t sub_1936A8294()
{
  result = qword_1EAE40490;
  if (!qword_1EAE40490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40490);
  }

  return result;
}

unint64_t sub_1936A8334()
{
  result = qword_1EAE404A0;
  if (!qword_1EAE404A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE404A0);
  }

  return result;
}

unint64_t sub_1936A83D4()
{
  result = qword_1EAE404B0;
  if (!qword_1EAE404B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE404B0);
  }

  return result;
}

unint64_t sub_1936A84A8()
{
  result = qword_1EAE404D0;
  if (!qword_1EAE404D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE404D0);
  }

  return result;
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OasisAnalyticsHandsSpeedSample(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

uint64_t storeEnumTagSinglePayload for OasisAnalyticsHandsSpeedSample(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 13) = v3;
  return result;
}

void sub_1936A85DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  sub_1936A8A54(319, &qword_1EAE404D8, type metadata accessor for OasisAnalyticsMetadata);
  if (v5 <= 0x3F)
  {
    sub_19349D1FC(319, a4);
    if (v6 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1EAE404E8);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_13Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  v7 = OUTLINED_FUNCTION_172(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2u)
    {
      v11 = (v10 & 0xFE) + 2147483646;
      v12 = (v11 & 0x7FFFFFFE | v10 & 1) - 1;
      if ((v11 & 0x7FFFFFFE) != 0)
      {
        return v12;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_14Tm(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  result = OUTLINED_FUNCTION_172(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_36();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

void sub_1936A897C()
{
  sub_1936A8A54(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1EAE40510);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1936A8A54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1936A8AB4(uint64_t a1, unsigned int a2)
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

void *sub_1936A8B08(void *result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_2_11(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_21_36()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = v0[17];
}

uint64_t sub_1936A8C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6449726574697277;
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 9);
  v10 = a1 == 0x6449726574697277 && a2 == 0xE800000000000000;
  if (v10 || (v12 = *(v3 + 3), v13 = *(v3 + 16), result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v9)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    return sub_1934948FC();
  }

  result = 0x756F43746E657665;
  v14 = a1 == 0x756F43746E657665 && a2 == 0xEC0000007265746ELL;
  if (v14 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v13)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  sub_19349AB64();
  swift_allocError();
  *v15 = a1;
  *(v15 + 8) = a2;
  *(v15 + 40) = &type metadata for OasisAnalyticsQualityTrace;
  *(v15 + 16) = v7;
  *(v15 + 24) = v8;
  *(v15 + 25) = v9;
  *(v15 + 28) = v12;
  *(v15 + 32) = v13;
  *(v15 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1936A8DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = sub_19393BE60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_28();
  v16 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v16 || (sub_19393CA30() & 1) != 0)
  {
    sub_1934486F8(v5, v12, &qword_1EAE3AA88, &qword_19394F9C0);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      result = sub_19344E6DC(v12, &qword_1EAE3AA88, &qword_19394F9C0);
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      (*(v14 + 32))(v4, v12, v13);
      sub_1934948FC();
      return (*(v14 + 8))(v4, v13);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    v19 = v18;
    *v18 = a1;
    v18[1] = a2;
    v18[5] = type metadata accessor for OasisAnalyticsUUID128(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v19 + 2);
    sub_1936A92B8(v5, boxed_opaque_existential_1Tm, type metadata accessor for OasisAnalyticsUUID128);
    *(v19 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1936A9028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40518, &qword_19397C6C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  v12 = type metadata accessor for OasisAnalyticsUUID128(0);
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_28();
  v16 = a1 == 0x73736553746F6F62 && a2 == 0xED000064496E6F69;
  if (v16 || (sub_19393CA30() & 1) != 0)
  {
    sub_1934486F8(v3, v11, &qword_1EAE40518, &qword_19397C6C0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      result = sub_19344E6DC(v11, &qword_1EAE40518, &qword_19397C6C0);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    sub_1936A9318(v11, v4);
    sub_193494798(v12, &off_1F07DEEE0, a3);
    return sub_1936A937C(v4);
  }

  else
  {
    v18 = a1 == 0xD00000000000001ELL && 0x8000000193A2D140 == a2;
    if (v18 || (sub_19393CA30() & 1) != 0)
    {
      result = type metadata accessor for OasisAnalyticsMetadata(0);
      v19 = v3 + *(result + 20);
      if (*(v19 + 8))
      {
        goto LABEL_8;
      }

      v23[1] = *v19;
      return sub_1934948FC();
    }

    else
    {
      sub_19349AB64();
      swift_allocError();
      v21 = v20;
      *v20 = a1;
      v20[1] = a2;
      v20[5] = type metadata accessor for OasisAnalyticsMetadata(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v21 + 2);
      sub_1936A92B8(v3, boxed_opaque_existential_1Tm, type metadata accessor for OasisAnalyticsMetadata);
      *(v21 + 48) = 1;
      swift_willThrow();
    }
  }
}

uint64_t sub_1936A92B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1936A9318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OasisAnalyticsUUID128(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1936A937C(uint64_t a1)
{
  v2 = type metadata accessor for OasisAnalyticsUUID128(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OasisAnalyticsProcessId.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  *(a2 + 8) = result == 1;
  *(a2 + 9) = 0;
  return result;
}

uint64_t OasisAnalyticsProcessId.rawValue.getter()
{
  if (v0[8])
  {
    return 1;
  }

  else
  {
    return *v0;
  }
}

char *static OasisAnalyticsProcessId.allCases.getter()
{
  v0 = sub_1936A95F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_1936A95F4((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < v6)
  {
    v0 = sub_1936A95F4((v1 > 1), v6, 1, v0);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  return v0;
}

uint64_t OasisAnalyticsProcessId.description.getter()
{
  if (*(v0 + 8))
  {
    result = 0x4474694B5241;
  }

  else
  {
    result = 0x6E776F6E6B6E55;
  }

  *(v0 + 8);
  return result;
}

uint64_t OasisAnalyticsProcessId.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (sub_19393CA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4474694B5241 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_19393CA30();
  }

  *a3 = 0;
  *(a3 + 8) = v8 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1936A95F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40528, &qword_19397C678);
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

unint64_t sub_1936A96F4()
{
  result = qword_1EAE40520;
  if (!qword_1EAE40520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40520);
  }

  return result;
}

void sub_1936A9748()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEABFF0);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  v8 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v8, xmmword_19394FBE0);
  *v1 = 1;
  *v0 = "writerId";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_10_0();
  v12();
  v13 = OUTLINED_FUNCTION_52();
  *v14 = 2;
  *v13 = "eventCounter";
  *(v13 + 8) = 12;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936A98AC()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_19393C220();
    }

    else if (v1 == 1)
    {
      sub_1934982A8();
    }
  }
}

uint64_t sub_1936A9948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 3);
  v6 = *(v3 + 16);
  if ((*(v3 + 9) & 1) == 0)
  {
    v7 = *(v3 + 8);
    v9 = *v3;
    v10 = v7 & 1;
    result = sub_193447324(&v9, 1, a2, &type metadata for OasisAnalyticsProcessId, a3, &off_1F07DEF90);
  }

  if (!v4 && (v6 & 1) == 0)
  {
    return sub_19393C3D0();
  }

  return result;
}

uint64_t sub_1936A9A58()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAC008);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FAC0;
  v7 = v6 + v5 + v3[14];
  *(v6 + v5) = 1;
  *v7 = "value";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  (*(v10 + 104))(v7, v8);
  return sub_19393C410();
}

uint64_t sub_1936A9BB8()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_193497890(v0);
    }
  }

  return result;
}

uint64_t sub_1936A9C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v14 - v7;
  v9 = sub_19393BE60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_9_61();
  sub_193448758(v12, v8, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_19344E6DC(v8, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  (*(v10 + 32))(v4, v8, v9);
  sub_19344652C();
  return (*(v10 + 8))(v4, v9);
}

void sub_1936A9E54()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC020);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  v8 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v8, xmmword_19394FBE0);
  *v1 = 1;
  *v0 = "bootSessionId";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_10_0();
  v12();
  v13 = OUTLINED_FUNCTION_52();
  *v14 = 2;
  *v13 = "timestampSinceBootInNanosecond";
  *(v13 + 8) = 30;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936A9FB8()
{
  v1 = v0;
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      v4 = *(type metadata accessor for OasisAnalyticsMetadata(0) + 20);
      sub_19393C230();
LABEL_8:
      v1 = 0;
    }

    else if (v2 == 1)
    {
      type metadata accessor for OasisAnalyticsUUID128(0);
      sub_193498018();
      goto LABEL_8;
    }
  }
}

uint64_t sub_1936AA080()
{
  OUTLINED_FUNCTION_22_0();
  result = sub_1936AA108(v0, v0);
  if (!v1)
  {
    result = type metadata accessor for OasisAnalyticsMetadata(0);
    v3 = v0 + *(result + 20);
    if ((*(v3 + 8) & 1) == 0)
    {
      v4 = *v3;
      return sub_19393C3E0();
    }
  }

  return result;
}

uint64_t sub_1936AA108(uint64_t a1, uint64_t a2)
{
  v13[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40518, &qword_19397C6C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v13 - v5;
  v7 = type metadata accessor for OasisAnalyticsUUID128(0);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = OUTLINED_FUNCTION_9_61();
  sub_193448758(v11, v6, &qword_1EAE40518, &qword_19397C6C0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_19344E6DC(v6, &qword_1EAE40518, &qword_19397C6C0);
  }

  sub_1936A9318(v6, v2);
  sub_193447600();
  return sub_1936A937C(v2);
}

void sub_1936AA2D0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC038);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  v8 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v8, xmmword_19394FBE0);
  *v1 = 0;
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_10_0();
  v12();
  v13 = OUTLINED_FUNCTION_52();
  *v14 = 1;
  *v13 = "ARKitD";
  *(v13 + 8) = 6;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void OasisAnalyticsQualityTrace.writerId.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t OasisAnalyticsQualityTrace.writerId.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t OasisAnalyticsQualityTrace.eventCounter.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

void OasisAnalyticsQualityTrace.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
}

BOOL static OasisAnalyticsQualityTrace.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 16);
  v4 = *(a2 + 9);
  v5 = *(a2 + 3);
  v6 = *(a2 + 16);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v12 = *a1;
    v13 = a1[1] & 1;
    v10 = *a2;
    v11 = a2[1] & 1;
    v7 = OasisAnalyticsProcessId.rawValue.getter();
    if (v7 != OasisAnalyticsProcessId.rawValue.getter())
    {
      return 0;
    }
  }

  if ((v3 & 1) == 0)
  {
    if (v2 == v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    return (v9 & 1) == 0;
  }

  return (v6 & 1) != 0;
}

uint64_t OasisAnalyticsQualityTrace.hash(into:)()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 16);
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v2)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      return sub_19393CAE0();
    }
  }

  else
  {
    v4 = *(v0 + 8);
    v5 = *v0;
    OUTLINED_FUNCTION_103_0();
    v6 = OasisAnalyticsProcessId.rawValue.getter();
    MEMORY[0x193B18030](v6);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t OasisAnalyticsQualityTrace.hashValue.getter()
{
  OUTLINED_FUNCTION_124_0();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    v2 = OUTLINED_FUNCTION_18_37();
    MEMORY[0x193B18030](v2);
  }

  sub_19393CAD0();
  if (!v0)
  {
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t sub_1936AA71C()
{
  OUTLINED_FUNCTION_124_0();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    v2 = OUTLINED_FUNCTION_18_37();
    MEMORY[0x193B18030](v2);
  }

  sub_19393CAD0();
  if (!v0)
  {
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t OasisAnalyticsUUID128.init()()
{
  OUTLINED_FUNCTION_8_4();
  v1 = sub_19393BE60();
  v2 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  v5 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
}

BOOL static OasisAnalyticsUUID128.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE60();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v33 - v24;
  v26 = *(v23 + 56);
  OUTLINED_FUNCTION_52_1(a1, &v33 - v24);
  OUTLINED_FUNCTION_52_1(a2, &v25[v26]);
  OUTLINED_FUNCTION_31(v25);
  if (!v27)
  {
    sub_1934487B4(v25, v18, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_31(&v25[v26]);
    if (!v27)
    {
      (*(v7 + 32))(v12, &v25[v26], v4);
      OUTLINED_FUNCTION_0_86();
      sub_1936AB618(v29, v30);
      v31 = sub_19393C550();
      v32 = *(v7 + 8);
      v32(v12, v4);
      v32(v18, v4);
      sub_19344E6DC(v25, &qword_1EAE3AA88, &qword_19394F9C0);
      return (v31 & 1) != 0;
    }

    (*(v7 + 8))(v18, v4);
LABEL_9:
    sub_19344E6DC(v25, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v25[v26]);
  if (!v27)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v25, &qword_1EAE3AA88, &qword_19394F9C0);
  return 1;
}

uint64_t OasisAnalyticsUUID128.hash(into:)()
{
  v1 = sub_19393BE60();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  sub_1934487B4(v0, &v19 - v14, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v1) == 1)
  {
    return sub_19393CAD0();
  }

  (*(v4 + 32))(v9, v15, v1);
  sub_19393CAD0();
  OUTLINED_FUNCTION_0_86();
  sub_1936AB618(v17, v18);
  sub_19393C540();
  return (*(v4 + 8))(v9, v1);
}

uint64_t OasisAnalyticsMetadata.timestampSinceBootInNanosecond.getter()
{
  OUTLINED_FUNCTION_8_45();
  v2 = (v0 + v1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OasisAnalyticsMetadata.timestampSinceBootInNanosecond.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_8_45();
  v7 = v2 + v6;
  *v7 = a1;
  *(v7 + 8) = a2 & 1;
  return result;
}

uint64_t OasisAnalyticsMetadata.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for OasisAnalyticsUUID128(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_8_45();
  v7 = v0 + v6;
  sub_19344E6DC(v0, &qword_1EAE40518, &qword_19397C6C0);
  v8 = OUTLINED_FUNCTION_28_0();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

BOOL static OasisAnalyticsMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OasisAnalyticsUUID128(0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40518, &qword_19397C6C0);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40560, &qword_19397C6C8);
  OUTLINED_FUNCTION_47(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  OUTLINED_FUNCTION_52_1(a1, &v33 - v22);
  OUTLINED_FUNCTION_52_1(a2, &v23[v24]);
  OUTLINED_FUNCTION_5_3(v23);
  if (v25)
  {
    OUTLINED_FUNCTION_5_3(&v23[v24]);
    if (v25)
    {
      sub_19344E6DC(v23, &qword_1EAE40518, &qword_19397C6C0);
      goto LABEL_12;
    }

LABEL_9:
    sub_19344E6DC(v23, &qword_1EAE40560, &qword_19397C6C8);
    return 0;
  }

  sub_1934487B4(v23, v16, &qword_1EAE40518, &qword_19397C6C0);
  OUTLINED_FUNCTION_5_3(&v23[v24]);
  if (v25)
  {
    sub_1936A937C(v16);
    goto LABEL_9;
  }

  sub_1936A9318(&v23[v24], v10);
  v27 = static OasisAnalyticsUUID128.== infix(_:_:)(v16, v10);
  sub_1936A937C(v10);
  sub_1936A937C(v16);
  sub_19344E6DC(v23, &qword_1EAE40518, &qword_19397C6C0);
  if (!v27)
  {
    return 0;
  }

LABEL_12:
  OUTLINED_FUNCTION_8_45();
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if ((v30 & 1) == 0)
  {
    if (*v29 != *v31)
    {
      v32 = 1;
    }

    return (v32 & 1) == 0;
  }

  return (v32 & 1) != 0;
}

uint64_t OasisAnalyticsMetadata.hash(into:)()
{
  v1 = v0;
  v2 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_0(v2);
  v38 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for OasisAnalyticsUUID128(0);
  v17 = OUTLINED_FUNCTION_4_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40518, &qword_19397C6C0);
  OUTLINED_FUNCTION_47(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v37 - v27;
  sub_1934487B4(v1, &v37 - v27, &qword_1EAE40518, &qword_19397C6C0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v16) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_1936A9318(v28, v22);
    OUTLINED_FUNCTION_103_0();
    sub_1934487B4(v22, v15, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_5_3(v15);
    if (v29)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      v30 = v38;
      (*(v38 + 32))(v9, v15, v2);
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_0_86();
      sub_1936AB618(v31, v32);
      sub_19393C540();
      (*(v30 + 8))(v9, v2);
    }

    sub_1936A937C(v22);
  }

  OUTLINED_FUNCTION_8_45();
  v34 = (v1 + v33);
  if (v34[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v36 = *v34;
  OUTLINED_FUNCTION_103_0();
  return MEMORY[0x193B18060](v36);
}

uint64_t sub_1936AB380(void (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1936AB3E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_1936AB438@<X0>(uint64_t *a1@<X8>)
{
  result = OasisAnalyticsProcessId.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936AB460@<X0>(char **a1@<X8>)
{
  result = static OasisAnalyticsProcessId.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936AB488()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1936AB494();
}

uint64_t sub_1936AB494()
{
  sub_19393CAB0();
  v0 = OasisAnalyticsProcessId.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1936AB4F0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1936AB4FC();
}

uint64_t sub_1936AB540()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1936AB54C();
}

uint64_t sub_1936AB54C()
{
  sub_19393CAB0();
  v0 = OasisAnalyticsProcessId.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_1936AB5A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_1936AB5C0();
}

uint64_t sub_1936AB618(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1936AB738()
{
  result = qword_1EAE40570;
  if (!qword_1EAE40570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE40578, &qword_19397C870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40570);
  }

  return result;
}

unint64_t sub_1936AB7A0()
{
  result = qword_1EAE40580;
  if (!qword_1EAE40580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40580);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OasisAnalyticsQualityTrace(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

void sub_1936AB840()
{
  sub_1936AB990(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1936AB8F0()
{
  sub_1936AB990(319, &qword_1EAE40588, type metadata accessor for OasisAnalyticsUUID128);
  if (v0 <= 0x3F)
  {
    sub_1936AB9E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1936AB990(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1936AB9E4()
{
  if (!qword_1ED508070)
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED508070);
    }
  }
}

_BYTE *_s3AppOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1936ABB0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511838);
  v5 = __swift_project_value_buffer(v4, qword_1ED511838);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.App.LanguageConsumption.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_51 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511838);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40590, &qword_19397C9F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
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

unint64_t static Library.Streams.App.LanguageConsumption.attribute(_:)(void (*a1)(void))
{
  result = sub_1936ABF1C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936ABF64(void (*a1)(void))
{
  result = sub_1936ABF1C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936ABF94(uint64_t a1)
{
  result = sub_1936ABFBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936ABFBC()
{
  result = qword_1EAE3A7D0;
  if (!qword_1EAE3A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A7D0);
  }

  return result;
}

_BYTE *_s19LanguageConsumptionOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppLanguageConsumption.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for AppLanguageConsumption();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40598, &qword_19397CA78);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1936AC2C4(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE40598, &qword_19397CA78);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE40598, &qword_19397CA78);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1936AC2C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLanguageConsumption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AppLanguageConsumption.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40598, &qword_19397CA78);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE40598, &qword_19397CA78);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1936AC468(v10, a1);
  }

  return result;
}

uint64_t sub_1936AC468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLanguageConsumption();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AppLanguageConsumption.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40598, &qword_19397CA78);
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
  if (*sub_1936AE200() == a3)
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
      sub_1936AC468(v14, v40);
      v33 = type metadata accessor for AppLanguageConsumption();
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

uint64_t AppLanguageConsumption.serialize()()
{
  v1 = type metadata accessor for AppLanguageConsumption();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40598, &qword_19397CA78);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1936AC2C4(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE40598, &qword_19397CA78);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE40598, &qword_19397CA78);
  return v15;
}

id static AppLanguageConsumption.columns.getter()
{
  v97 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_13_42();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v10, v11, v12, v13, v0, 4, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v23 = OUTLINED_FUNCTION_2_4(inited, v16, v17, v18, v19, v20, v21, v22, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v23[2].n128_u64[0] = sub_19393C850();
  v32 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0x44496D616461, 0xE600000000000000);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v33 = swift_initStackObject();
  v41 = OUTLINED_FUNCTION_2_4(v33, v34, v35, v36, v37, v38, v39, v40, v94);
  OUTLINED_FUNCTION_2_13(v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v41[2].n128_u64[0] = sub_19393C850();
  v50 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_3_62();
  OUTLINED_FUNCTION_14_46();
  result = OUTLINED_FUNCTION_3_5(v51, v52);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v53 = swift_initStackObject();
  v61 = OUTLINED_FUNCTION_2_4(v53, v54, v55, v56, v57, v58, v59, v60, v95);
  OUTLINED_FUNCTION_2_13(v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v61[2].n128_u64[0] = sub_19393C850();
  v70 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v71 = OUTLINED_FUNCTION_3_62();
  result = OUTLINED_FUNCTION_3_5(v71 & 0xFFFFFFFFFFFFLL | 0x4774000000000000, 0xEC00000065726E65);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v72 = swift_initStackObject();
  v80 = OUTLINED_FUNCTION_2_4(v72, v73, v74, v75, v76, v77, v78, v79, v96);
  OUTLINED_FUNCTION_2_13(v80, v81, v82, v83, v84, v85, v86, v87, v88);
  v80[2].n128_u64[0] = sub_19393C850();
  v89 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11_39();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v90, v91, v92, v93, v80, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v97;
  }

LABEL_11:
  __break(1u);
  return result;
}

int *sub_1936ACBCC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7 = a1 == OUTLINED_FUNCTION_13_42() && v5 == v6;
  if (v7 || (v8 = v5, (OUTLINED_FUNCTION_59_0() & 1) != 0))
  {
    result = type metadata accessor for AppLanguageConsumption();
    v10 = v2 + result[7];
    if (*(v10 + 9))
    {
LABEL_7:
      *a2 = 0u;
      a2[1] = 0u;
      return result;
    }

    v23 = *v10;
    v26 = *(v10 + 8) & 1;
    return sub_1934948FC();
  }

  v11 = a1 == 0x44496D616461 && v8 == 0xE600000000000000;
  if (v11 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppLanguageConsumption();
    v12 = result[8];
LABEL_15:
    if (!*(v2 + v12 + 8))
    {
      goto LABEL_7;
    }

    v24 = *(v2 + v12);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_14_46();
  v14 = a1 == (OUTLINED_FUNCTION_3_62() & 0xFFFFFFFFFFFFLL | 0x4C74000000000000) && v8 == v13;
  if (v14 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppLanguageConsumption();
    v12 = result[9];
    goto LABEL_15;
  }

  v16 = a1 == (OUTLINED_FUNCTION_3_62() & 0xFFFFFFFFFFFFLL | 0x4774000000000000) && v8 == v15;
  if (v16 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppLanguageConsumption();
    v12 = result[10];
    goto LABEL_15;
  }

  v18 = a1 == OUTLINED_FUNCTION_11_39() && v8 == v17;
  if (v18 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppLanguageConsumption();
    v19 = v2 + result[11];
    if (*(v19 + 4))
    {
      goto LABEL_7;
    }

    v25 = *v19;
    return sub_1934948FC();
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v21 = v20;
  *v20 = a1;
  v20[1] = v8;
  v20[5] = type metadata accessor for AppLanguageConsumption();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v21 + 2);
  sub_1936AC2C4(v2, boxed_opaque_existential_1Tm);
  *(v21 + 48) = 1;
  swift_willThrow();
}

uint64_t AppLanguageConsumption.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppLanguageConsumption();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[7];
  OUTLINED_FUNCTION_131(v5);
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v9 = a1 + v2[11];
  sub_1934E3F94();
  *a1 = *sub_1936AE200();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  *(v5 + 8) = 256;
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t static AppLanguageConsumption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLanguageConsumption();
  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 9);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 9);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v10 = *v8;
    v11 = *(v8 + 8);
    v39 = *v6;
    v40 = *(v6 + 8);
    if (v9)
    {
      return 0;
    }

    sub_1936AD0E0();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
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
    v18 = v18 && v16 == v17;
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
  OUTLINED_FUNCTION_3();
  if (v22)
  {
    if (!v20)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v21);
    v25 = v18 && v23 == v24;
    if (!v25 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v26 = v4[10];
  OUTLINED_FUNCTION_3();
  if (!v29)
  {
    if (!v27)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (!v27)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5(v28);
  v32 = v18 && v30 == v31;
  if (!v32 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v33 = v4[11];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
  if (v35)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1936AD0E0()
{
  result = qword_1EAE405A8;
  if (!qword_1EAE405A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE405A8);
  }

  return result;
}

uint64_t AppLanguageConsumption.hash(into:)()
{
  v1 = type metadata accessor for AppLanguageConsumption();
  v2 = (v0 + v1[7]);
  if (*(v2 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v9 = *v2;
    v10 = v2[1] & 1;
    sub_19393CAD0();
    sub_1936AD268();
    sub_19393C540();
  }

  v3 = (v0 + v1[8]);
  if (v3[1])
  {
    OUTLINED_FUNCTION_7_1(v3);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v4 = (v0 + v1[9]);
  if (v4[1])
  {
    OUTLINED_FUNCTION_7_1(v4);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v5 = (v0 + v1[10]);
  if (v5[1])
  {
    OUTLINED_FUNCTION_7_1(v5);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v6 = (v0 + v1[11]);
  if (*(v6 + 4) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v8 = *v6;
  sub_19393CAD0();
  return sub_19393CAE0();
}

unint64_t sub_1936AD268()
{
  result = qword_1EAE405B0;
  if (!qword_1EAE405B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE405B0);
  }

  return result;
}

uint64_t AppLanguageConsumption.DataSource.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      v4 = 0;
      break;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

char *static AppLanguageConsumption.DataSource.allCases.getter()
{
  v0 = sub_1936AD868(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = OUTLINED_FUNCTION_1_65(v0, v1);
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
    v25 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1936AD868(v25, v2 + 2, 1, v26);
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
    v27 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1936AD868(v27, v2 + 3, 1, v28);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v0 = OUTLINED_FUNCTION_1_65(v0, v10);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  v14 = v2 + 5;
  if ((v2 + 5) > (v13 >> 1))
  {
    v29 = OUTLINED_FUNCTION_39(v13);
    v0 = sub_1936AD868(v29, v2 + 5, 1, v30);
  }

  *(v0 + 2) = v14;
  OUTLINED_FUNCTION_4(v0, &v0[16 * v11]);
  v17 = v2 + 6;
  if ((v2 + 6) > (v16 >> 1))
  {
    v15 = OUTLINED_FUNCTION_1_65(v15, v16);
  }

  *(v15 + 2) = v17;
  OUTLINED_FUNCTION_4(v15, &v15[16 * v14]);
  v20 = v2 + 7;
  if ((v2 + 7) > (v19 >> 1))
  {
    v31 = OUTLINED_FUNCTION_39(v19);
    v18 = sub_1936AD868(v31, v2 + 7, 1, v32);
  }

  *(v18 + 2) = v20;
  OUTLINED_FUNCTION_4(v18, &v18[16 * v17]);
  if ((v2 + 8) > (v22 >> 1))
  {
    v21 = OUTLINED_FUNCTION_1_65(v21, v22);
  }

  *(v21 + 2) = v2 + 8;
  v23 = &v21[16 * v20];
  *(v23 + 4) = 6;
  v23[40] = 1;
  return v21;
}

uint64_t AppLanguageConsumption.DataSource.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  result = 0x7374736163646F50;
  switch(*v0)
  {
    case 1:
      result = 22100;
      break;
    case 2:
      result = 0x736B6F6F42;
      break;
    case 3:
      result = 0x636973754DLL;
      break;
    case 4:
      result = 0x69616D6563696F56;
      break;
    case 5:
      result = 0x6F6F626F69647541;
      break;
    case 6:
      result = 0x7469746275535654;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AppLanguageConsumption.DataSource.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x7374736163646F50 && a2 == 0xE800000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = a1 == 22100 && a2 == 0xE200000000000000;
  if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  v12 = a1 == 0x736B6F6F42 && a2 == 0xE500000000000000;
  if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    v13 = a1 == 0x636973754DLL && a2 == 0xE500000000000000;
    if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v9 = 1;
      v8 = 3;
    }

    else
    {
      v14 = a1 == 0x69616D6563696F56 && a2 == 0xE90000000000006CLL;
      if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v9 = 1;
        v8 = 4;
      }

      else
      {
        v15 = a1 == 0x6F6F626F69647541 && a2 == 0xE90000000000006BLL;
        if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v9 = 1;
          v8 = 5;
        }

        else if (a1 == 0x7469746275535654 && a2 == 0xEA0000000000656CLL)
        {

          v9 = 1;
          v8 = 6;
        }

        else
        {
          v9 = OUTLINED_FUNCTION_0_9();

          v8 = 6;
          if ((v9 & 1) == 0)
          {
            v8 = 0;
          }
        }
      }
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1936AD868(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE405C0, &qword_19397CB28);
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

unint64_t sub_1936AD968()
{
  result = qword_1EAE405B8;
  if (!qword_1EAE405B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE405B8);
  }

  return result;
}

uint64_t sub_1936AD9BC()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC050);
  __swift_project_value_buffer(v0, qword_1EAEAC050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBD0;
  v7 = v6 + v5;
  v8 = v6 + v5 + dword_1EAEAC088;
  *(v6 + v5) = 1;
  *v8 = "dataSource";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v7 + v3);
  *v14 = 2;
  *v13 = "adamID";
  *(v13 + 8) = 6;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v15 = OUTLINED_FUNCTION_3_1(v7 + 2 * v3);
  *v16 = 3;
  *v15 = "contentLanguage";
  *(v15 + 8) = 15;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v17 = OUTLINED_FUNCTION_3_1(v7 + 3 * v3);
  *v18 = 4;
  *v17 = "contentGenre";
  *(v17 + 8) = 12;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v19 = OUTLINED_FUNCTION_3_1(v7 + 4 * v3);
  *v20 = 6;
  *v19 = "timeSpent";
  *(v19 + 8) = 9;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  return sub_19393C410();
}

void sub_1936ADC00()
{
  v1 = v0;
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        v4 = *(type metadata accessor for AppLanguageConsumption() + 28);
        sub_1934982A8();
        goto LABEL_11;
      case 2:
        v6 = *(type metadata accessor for AppLanguageConsumption() + 32);
        goto LABEL_10;
      case 3:
        v6 = *(type metadata accessor for AppLanguageConsumption() + 36);
        goto LABEL_10;
      case 4:
        v6 = *(type metadata accessor for AppLanguageConsumption() + 40);
LABEL_10:
        OUTLINED_FUNCTION_8_2(v6);
        sub_19393C200();
        goto LABEL_11;
      case 6:
        v5 = type metadata accessor for AppLanguageConsumption();
        OUTLINED_FUNCTION_8_2(*(v5 + 44));
        sub_19393C220();
LABEL_11:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936ADD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for AppLanguageConsumption();
  v8 = result;
  v9 = (v3 + *(result + 28));
  if ((*(v9 + 9) & 1) == 0)
  {
    v10 = *(v9 + 8);
    v19 = *v9;
    v20 = v10 & 1;
    result = sub_193447324(&v19, 1, a2, &type metadata for AppLanguageConsumption.DataSource, a3, &off_1F07DF2E8);
  }

  if (!v4)
  {
    v11 = (v3 + v8[8]);
    if (v11[1])
    {
      v12 = *v11;
      result = OUTLINED_FUNCTION_2_7();
    }

    v13 = (v3 + v8[9]);
    if (v13[1])
    {
      v14 = *v13;
      result = OUTLINED_FUNCTION_2_7();
    }

    v15 = (v3 + v8[10]);
    if (v15[1])
    {
      v16 = *v15;
      result = OUTLINED_FUNCTION_2_7();
    }

    v17 = (v3 + v8[11]);
    if ((v17[1] & 1) == 0)
    {
      v18 = *v17;
      return sub_19393C3D0();
    }
  }

  return result;
}

uint64_t sub_1936ADE6C()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE405C8;

  return v0;
}

uint64_t sub_1936ADF08()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC068);
  __swift_project_value_buffer(v0, qword_1EAEAC068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1939526B0;
  v7 = v6 + v5;
  v8 = v6 + v5 + dword_1EAEAC0A0;
  *(v6 + v5) = 0;
  *v8 = "Unknown";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v7 + v3);
  *v14 = 1;
  *v13 = "Podcasts";
  v13[1] = 8;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v7 + 2 * v3);
  *v17 = 2;
  *v16 = "TV";
  v16[1] = 2;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v7 + 3 * v3);
  *v20 = 3;
  *v19 = "Books";
  v19[1] = 5;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v12)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v7 + 4 * v3);
  *v23 = 4;
  *v22 = "Music";
  v22[1] = 5;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v12)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v7 + 5 * v3);
  *v26 = 5;
  *v25 = "Voicemail";
  v25[1] = 9;
  v27 = OUTLINED_FUNCTION_41(v25);
  (v12)(v27);
  v28 = (v7 + 6 * v3);
  v29 = (v28 + dword_1EAEAC0A0);
  *v28 = 6;
  *v29 = "Audiobook";
  v29[1] = 9;
  v30 = OUTLINED_FUNCTION_41(v29);
  (v12)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v7 + 7 * v3);
  *v32 = 7;
  *v31 = "TVSubtitle";
  *(v31 + 8) = 10;
  *(v31 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  return sub_19393C410();
}

uint64_t AppLanguageConsumption.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppLanguageConsumption();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppLanguageConsumption()
{
  result = qword_1EAE44D30;
  if (!qword_1EAE44D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppLanguageConsumption.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppLanguageConsumption();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AppLanguageConsumption.dataSource.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for AppLanguageConsumption();
  v3 = (v1 + *(result + 28));
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 9);
  *v0 = v4;
  *(v0 + 8) = v5;
  *(v0 + 9) = v3;
  return result;
}

uint64_t AppLanguageConsumption.dataSource.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for AppLanguageConsumption();
  v6 = v1 + *(result + 28);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t AppLanguageConsumption.adamID.getter()
{
  v0 = type metadata accessor for AppLanguageConsumption();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppLanguageConsumption.adamID.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_4_59() + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t AppLanguageConsumption.contentLanguage.getter()
{
  v0 = type metadata accessor for AppLanguageConsumption();
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppLanguageConsumption.contentLanguage.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_4_59() + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t AppLanguageConsumption.contentGenre.getter()
{
  v0 = type metadata accessor for AppLanguageConsumption();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppLanguageConsumption.contentGenre.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_4_59() + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t AppLanguageConsumption.timeSpent.setter()
{
  result = OUTLINED_FUNCTION_2_63();
  v3 = v1 + *(result + 44);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t sub_1936AE754@<X0>(uint64_t *a1@<X8>)
{
  result = AppLanguageConsumption.DataSource.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936AE77C@<X0>(char **a1@<X8>)
{
  result = static AppLanguageConsumption.DataSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936AE7A4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1936AE7B0();
}

uint64_t sub_1936AE7B0()
{
  sub_19393CAB0();
  v0 = AppLanguageConsumption.DataSource.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1936AE80C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1936AE818();
}

uint64_t sub_1936AE85C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1936AE868();
}

uint64_t sub_1936AE868()
{
  sub_19393CAB0();
  v0 = AppLanguageConsumption.DataSource.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_1936AE8C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_1936AE8DC();
}

uint64_t AppLanguageConsumption.hashValue.getter()
{
  sub_19393CAB0();
  AppLanguageConsumption.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1936AE97C()
{
  sub_19393CAB0();
  AppLanguageConsumption.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1936AE9BC()
{
  result = qword_1EAE405D8;
  if (!qword_1EAE405D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE405E0, &qword_19397CB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE405D8);
  }

  return result;
}

unint64_t sub_1936AEA28()
{
  result = qword_1EAE405E8;
  if (!qword_1EAE405E8)
  {
    type metadata accessor for AppLanguageConsumption();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE405E8);
  }

  return result;
}

void sub_1936AEAAC()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1EAE405F0);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED508290);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, qword_1ED506E98);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1936AEBEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511898);
  v5 = __swift_project_value_buffer(v4, qword_1ED511898);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AdAttributionKit.AggregatedReporting.DeveloperReportedPurchase.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:500 maxEventCount:12960000.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_52 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511898);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE405F8, &qword_19397CD40);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
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

unint64_t static Library.Streams.AdAttributionKit.AggregatedReporting.DeveloperReportedPurchase.attribute(_:)(void (*a1)(void))
{
  result = sub_1936AEFF0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936AF038(void (*a1)(void))
{
  result = sub_1936AEFF0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936AF068(uint64_t a1)
{
  result = sub_1936AF090();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936AF090()
{
  result = qword_1ED5030F8;
  if (!qword_1ED5030F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5030F8);
  }

  return result;
}

_BYTE *_s25DeveloperReportedPurchaseOwst(_BYTE *result, int a2, int a3)
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