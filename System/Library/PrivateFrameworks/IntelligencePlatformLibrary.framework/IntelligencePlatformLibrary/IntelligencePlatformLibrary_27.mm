uint64_t sub_1936369B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_19393BE00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  sub_1934DE90C(a1 + *(v11 + 28), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1934DFCD4(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_193451F04(v10, 1, 2020175477, 0xE400000000000000);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_193636B6C()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3F670;

  return v0;
}

uint64_t sub_193636C08()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB7B0);
  __swift_project_value_buffer(v0, qword_1EAEAB7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBC0;
  v7 = v6 + v5;
  v8 = v6 + v5 + dword_1EAEAB7E8;
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
  *v13 = "OnDevice";
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v15 = OUTLINED_FUNCTION_3_1(v7 + 2 * v3);
  *v16 = 3;
  *v15 = "PrivateCloudCompute";
  *(v15 + 8) = 19;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v17 = OUTLINED_FUNCTION_3_1(v7 + 3 * v3);
  *v18 = 4;
  *v17 = "Ajax";
  *(v17 + 8) = 4;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  return sub_19393C410();
}

uint64_t GenerativeExperiencesPromptAnalytics.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for GenerativeExperiencesPromptAnalytics()
{
  result = qword_1ED50DF10;
  if (!qword_1ED50DF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t GenerativeExperiencesPromptAnalytics.timestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  return sub_19344865C(v1 + *(v2 + 28), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t GenerativeExperiencesPromptAnalytics.identifier.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.identifier.setter()
{
  v3 = OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.prompt.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.prompt.setter()
{
  v3 = OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.response.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.response.setter()
{
  v3 = OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.model.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  OUTLINED_FUNCTION_4_4(*(v0 + 44));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.model.setter()
{
  v3 = OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.modelVersion.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  OUTLINED_FUNCTION_4_4(*(v0 + 48));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.modelVersion.setter()
{
  v3 = OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.useCase.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  OUTLINED_FUNCTION_4_4(*(v0 + 52));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.useCase.setter()
{
  v3 = OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.errorCode.setter()
{
  result = OUTLINED_FUNCTION_5_43();
  v3 = v1 + *(result + 56);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.clientIdentifier.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  OUTLINED_FUNCTION_4_4(*(v0 + 60));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.clientIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.executionEnvironment.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  v3 = (v1 + *(result + 64));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.executionEnvironment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  v5 = v1 + *(result + 64);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_1936376AC@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936376D4@<X0>(char **a1@<X8>)
{
  result = static GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936376FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_193637708();
}

uint64_t sub_193637708()
{
  sub_19393CAB0();
  v0 = GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_193637764()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_193637770();
}

uint64_t sub_1936377B4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1936377C0();
}

uint64_t sub_1936377C0()
{
  sub_19393CAB0();
  v0 = GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_193637818(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_193637834();
}

uint64_t GenerativeExperiencesPromptAnalytics.hashValue.getter()
{
  sub_19393CAB0();
  GenerativeExperiencesPromptAnalytics.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1936378D4()
{
  sub_19393CAB0();
  GenerativeExperiencesPromptAnalytics.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_193637914()
{
  result = qword_1EAE3F680;
  if (!qword_1EAE3F680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3F688, &qword_193975600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F680);
  }

  return result;
}

unint64_t sub_193637980()
{
  result = qword_1EAE3F690;
  if (!qword_1EAE3F690)
  {
    type metadata accessor for GenerativeExperiencesPromptAnalytics();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F690);
  }

  return result;
}

uint64_t sub_193637A04()
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

    sub_19349D1FC(319, &qword_1ED508290);
    v1 = v5;
    if (v6 > 0x3F)
    {
      return v1;
    }

    sub_19349D1FC(319, &qword_1ED508058);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_193637B48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511118);
  v5 = __swift_project_value_buffer(v4, qword_1ED511118);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.IFRequestTelemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_193637D74(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193637DB8(void (*a1)(void))
{
  result = sub_193637D74(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193637DE8(uint64_t a1)
{
  result = sub_193637E10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193637E10()
{
  result = qword_1ED5068D0;
  if (!qword_1ED5068D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5068D0);
  }

  return result;
}

_BYTE *_s18IFRequestTelemetryOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowIFRequestTelemetry.json()()
{
  OUTLINED_FUNCTION_26();
  v30 = v1;
  v31 = v2;
  v3 = sub_19393C090();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6A0, &qword_193975878);
  OUTLINED_FUNCTION_4_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v29 - v23;
  OUTLINED_FUNCTION_3_46();
  sub_1936399F4(v0, v18, v25);
  sub_1934470C8(v18, v12, v24);
  sub_19393C080();
  sub_1936380EC();
  sub_19393C250();
  (*(v6 + 8))(v11, v3);
  sub_19344E6DC(v24, &qword_1EAE3F6A0, &qword_193975878);
  OUTLINED_FUNCTION_27();
  result._object = v27;
  result._countAndFlagsBits = v26;
  return result;
}

unint64_t sub_1936380EC()
{
  result = qword_1EAE3F6A8;
  if (!qword_1EAE3F6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3F6A0, &qword_193975878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F6A8);
  }

  return result;
}

uint64_t static IntelligenceFlowIFRequestTelemetry.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = OUTLINED_FUNCTION_47(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6A0, &qword_193975878);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;

  sub_19393C060();
  sub_1936380EC();
  result = sub_19393C260();
  if (!v1)
  {
    OUTLINED_FUNCTION_6_40();
    return sub_193639008(v12, a1, v14);
  }

  return result;
}

void static IntelligenceFlowIFRequestTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v35 = v3;
  v36 = v2;
  v34 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6A0, &qword_193975878);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_6();
  v11 = sub_19393C0C0();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  if (*sub_193453F34() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    (*(v14 + 16))(v19, v22, v11);
    v23 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v23, v24);
    sub_1936380EC();
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v14 + 8))(v22, v11);
    if (!v0)
    {
      OUTLINED_FUNCTION_6_40();
      v26 = v35;
      sub_193639008(v1, v35, v27);
      v28 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
      v29 = *(v28 + 20);
      sub_19344E6DC(v26 + v29, &qword_1EAE3A9E8, &qword_19394F800);
      v30 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v30);
      (*(v31 + 16))(v26 + v29, v34, v30);
      __swift_storeEnumTagSinglePayload(v26 + v29, 0, 1, v30);
      v32 = *(v28 + 24);
      sub_19344E6DC(v26 + v32, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v36, v26 + v32);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v25 = v6;
    *(v25 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowIFRequestTelemetry.serialize()()
{
  v2 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6A0, &qword_193975878);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_3_46();
  sub_1936399F4(v0, v8, v13);
  sub_1934470C8(v8, v2, v1);
  sub_1936380EC();
  sub_19393C290();
  sub_19344E6DC(v1, &qword_1EAE3F6A0, &qword_193975878);
  return OUTLINED_FUNCTION_13_0();
}

void sub_1936386B8()
{
  OUTLINED_FUNCTION_26();
  v126 = v3;
  v127 = v1;
  v128 = v0;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6C8, &qword_193975890);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v116 - v12;
  v118 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  v13 = OUTLINED_FUNCTION_4_1(v118);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v117 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6C0, &unk_193975A20);
  OUTLINED_FUNCTION_47(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v116 - v22;
  v121 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(0);
  v23 = OUTLINED_FUNCTION_4_1(v121);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_1();
  v120 = v27 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6B8, &qword_193975888);
  OUTLINED_FUNCTION_47(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  v125 = &v116 - v32;
  v124 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0);
  v33 = OUTLINED_FUNCTION_4_1(v124);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_1();
  v123 = v37 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_59_3();
  v42 = type metadata accessor for MonotonicTimestamp();
  v43 = OUTLINED_FUNCTION_4_1(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_1();
  v48 = v47 - v46;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6B0, &qword_193975880);
  OUTLINED_FUNCTION_47(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v116 - v53;
  v55 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](0x74654D746E657665);
  OUTLINED_FUNCTION_5_1();
  v60 = v59 - v58;
  v62 = v7 == v61 && v5 == v57;
  if (v62 || (sub_19393CA30() & 1) != 0)
  {
    v63 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
    v64 = OUTLINED_FUNCTION_27_4(*(v63 + 28));
    sub_193448758(v64, v54, v65, v66);
    OUTLINED_FUNCTION_6_3(v54, 1, v55);
    if (!v62)
    {
      sub_193639008(v54, v60, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
      sub_193494798(v55, &off_1F07D9F68, v126);
      v71 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata;
      v72 = v60;
LABEL_10:
      sub_193639064(v72, v71);
      goto LABEL_11;
    }

    v67 = &qword_1EAE3F6B0;
    v68 = &qword_193975880;
    v69 = v54;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v74 = v7 == 0xD000000000000012 && v73 == v5;
  if (!v74 && (OUTLINED_FUNCTION_14_30() & 1) == 0)
  {
    OUTLINED_FUNCTION_38();
    v80 = v7 == 0xD000000000000018 && v79 == v5;
    if (v80 || (OUTLINED_FUNCTION_14_30() & 1) != 0)
    {
      v81 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
      v82 = OUTLINED_FUNCTION_27_4(*(v81 + 36));
      v83 = v125;
      sub_193448758(v82, v125, v84, v85);
      OUTLINED_FUNCTION_6_3(v83, 1, v124);
      if (!v62)
      {
        v86 = v83;
        v87 = v123;
        sub_193639008(v86, v123, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked);
        OUTLINED_FUNCTION_13_0();
        sub_193494798(v88, v89, v90);
        v91 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked;
LABEL_29:
        v71 = v91;
        v72 = v87;
        goto LABEL_10;
      }

      v67 = &qword_1EAE3F6B8;
      v68 = &qword_193975888;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v93 = v7 == 0xD000000000000014 && v92 == v5;
      if (v93 || (OUTLINED_FUNCTION_14_30() & 1) != 0)
      {
        v94 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
        v95 = OUTLINED_FUNCTION_27_4(*(v94 + 40));
        v83 = v122;
        sub_193448758(v95, v122, v96, v97);
        OUTLINED_FUNCTION_6_3(v83, 1, v121);
        if (!v62)
        {
          v98 = v83;
          v87 = v120;
          sub_193639008(v98, v120, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated);
          OUTLINED_FUNCTION_13_0();
          sub_193494798(v99, v100, v101);
          v91 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated;
          goto LABEL_29;
        }

        v67 = &qword_1EAE3F6C0;
        v68 = &unk_193975A20;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v103 = v7 == 0xD000000000000016 && v102 == v5;
        if (!v103 && (OUTLINED_FUNCTION_14_30() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_13_9();
          *v112 = v7;
          v112[1] = v5;
          v113 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
          OUTLINED_FUNCTION_126(v113);
          OUTLINED_FUNCTION_3_46();
          sub_1936399F4(v128, v114, v115);
          OUTLINED_FUNCTION_15_24();
          swift_willThrow();

          goto LABEL_11;
        }

        v104 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
        v105 = OUTLINED_FUNCTION_27_4(*(v104 + 44));
        v83 = v119;
        sub_193448758(v105, v119, v106, v107);
        OUTLINED_FUNCTION_6_3(v83, 1, v118);
        if (!v62)
        {
          v108 = v83;
          v87 = v117;
          sub_193639008(v108, v117, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop);
          OUTLINED_FUNCTION_13_0();
          sub_193494798(v109, v110, v111);
          v91 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop;
          goto LABEL_29;
        }

        v67 = &qword_1EAE3F6C8;
        v68 = &qword_193975890;
      }
    }

    v69 = v83;
    goto LABEL_9;
  }

  v75 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
  v76 = OUTLINED_FUNCTION_27_4(*(v75 + 32));
  sub_193448758(v76, v2, v77, v78);
  OUTLINED_FUNCTION_6_3(v2, 1, v42);
  if (!v62)
  {
    sub_193639008(v2, v48, type metadata accessor for MonotonicTimestamp);
    sub_193494798(v42, &off_1F07BD958, v126);
    v71 = type metadata accessor for MonotonicTimestamp;
    v72 = v48;
    goto LABEL_10;
  }

  v67 = &qword_1EAE3B498;
  v68 = &unk_193959120;
  v69 = v2;
LABEL_9:
  sub_19344E6DC(v69, v67, v68);
  v70 = v126;
  *v126 = 0u;
  *(v70 + 1) = 0u;
LABEL_11:
  OUTLINED_FUNCTION_27();
}

void sub_193638E50()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_6();
  v10 = type metadata accessor for AIML.UUID();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  v14 = v3 == 0x7365757165526669 && v0 == 0xEB00000000644974;
  if (v14 || (OUTLINED_FUNCTION_75_13() & 1) != 0)
  {
    sub_193448758(v2, v4, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v4, 1, v10);
    if (v14)
    {
      sub_19344E6DC(v4, &qword_1EAE3BCA0, &unk_19395C320);
      *v1 = 0u;
      v1[1] = 0u;
    }

    else
    {
      OUTLINED_FUNCTION_1_52();
      sub_193639008(v4, v5, v15);
      OUTLINED_FUNCTION_19_3();
      sub_193494798(v16, v17, v18);
      OUTLINED_FUNCTION_0_57();
      sub_193639064(v5, v19);
    }
  }

  else
  {
    sub_19349AB64();
    v20 = OUTLINED_FUNCTION_13_9();
    v22 = OUTLINED_FUNCTION_81_8(v20, v21);
    v23 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(v22);
    v24 = OUTLINED_FUNCTION_126(v23);
    sub_1936399F4(v2, v24, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193639008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_193639064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1936390D4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v54 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v53 = OUTLINED_FUNCTION_83_1();
  v15 = OUTLINED_FUNCTION_4_1(v53);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  v24 = v5 == 0x53676E6974736F70 && v3 == 0xED000064496E6170;
  if (!v24 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
  {
    OUTLINED_FUNCTION_38();
    v28 = v5 == 0xD000000000000012 && v27 == v3;
    if (v28 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      if (*(v0 + 25))
      {
        goto LABEL_7;
      }

      v29 = *(v0 + 24);
      v55 = *(v0 + 16);
      v30 = v29 & 1;
      goto LABEL_19;
    }

    v31 = v5 == 0x49676E6974736F70 && v3 == 0xE900000000000064;
    if (v31 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      v32 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
      sub_193448758(v0 + *(v32 + 24), v1, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v1, 1, v53);
      if (!v24)
      {
        OUTLINED_FUNCTION_1_52();
        sub_193639008(v1, v23, v34);
        OUTLINED_FUNCTION_13_0();
        sub_193494798(v35, v36, v37);
        OUTLINED_FUNCTION_0_57();
        v39 = v23;
LABEL_29:
        sub_193639064(v39, v38);
        goto LABEL_11;
      }

      v33 = v1;
    }

    else
    {
      v40 = v5 == 0x6574616974696E69 && v3 == 0xEF64496E61705364;
      if (v40 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
      {
        v41 = v0 + *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0) + 28);
        if (*(v41 + 8))
        {
          goto LABEL_7;
        }

        v26 = *v41;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_38();
      v43 = v5 == 0xD000000000000014 && v42 == v3;
      if (v43 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
      {
        v44 = v0 + *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0) + 32);
        if (*(v44 + 9))
        {
          goto LABEL_7;
        }

        v45 = *(v44 + 8);
        v55 = *v44;
        v30 = v45 & 1;
LABEL_19:
        v56 = v30;
        goto LABEL_10;
      }

      v46 = v5 == 0x6574616974696E69 && v3 == 0xEB00000000644964;
      if (!v46 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        *v50 = v5;
        v50[1] = v3;
        v51 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
        v52 = OUTLINED_FUNCTION_126(v51);
        sub_1936399F4(v0, v52, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_11;
      }

      v47 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
      sub_193448758(v0 + *(v47 + 36), v13, &qword_1EAE3BCA0, &unk_19395C320);
      v48 = v53;
      OUTLINED_FUNCTION_6_3(v13, 1, v53);
      if (!v24)
      {
        OUTLINED_FUNCTION_1_52();
        sub_193639008(v13, v20, v49);
        sub_193494798(v48, &off_1F07C3F90, v54);
        OUTLINED_FUNCTION_0_57();
        v39 = v20;
        goto LABEL_29;
      }

      v33 = v13;
    }

    sub_19344E6DC(v33, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_7;
  }

  if ((*(v0 + 8) & 1) == 0)
  {
    v26 = *v0;
LABEL_9:
    v55 = v26;
LABEL_10:
    sub_1934948FC();
    goto LABEL_11;
  }

LABEL_7:
  v25 = v54;
  *v54 = 0u;
  *(v25 + 1) = 0u;
LABEL_11:
  OUTLINED_FUNCTION_27();
}

void sub_193639530()
{
  OUTLINED_FUNCTION_26();
  v41 = v3;
  v42 = v1;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_47(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_83_1();
  v17 = OUTLINED_FUNCTION_4_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v41 - v24;
  v26 = v7 == 0x6F69737365536669 && v5 == 0xEB0000000064496ELL;
  if (v26 || (OUTLINED_FUNCTION_13_0(), (sub_19393CA30() & 1) != 0))
  {
    sub_193448758(v0, v2, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v2, 1, v16);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_52();
      sub_193639008(v2, v25, v29);
      sub_193494798(v16, &off_1F07C3F90, v41);
      OUTLINED_FUNCTION_0_57();
      v31 = v25;
LABEL_10:
      sub_193639064(v31, v30);
      goto LABEL_11;
    }

    v27 = v2;
  }

  else
  {
    v32 = v7 == 0x7254746E65696C63 && v5 == 0xED00006449656361;
    if (!v32 && (sub_19393CA30() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      *v38 = v7;
      v38[1] = v5;
      v39 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0);
      v40 = OUTLINED_FUNCTION_126(v39);
      sub_1936399F4(v0, v40, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked);
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_11;
    }

    v33 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0);
    v34 = OUTLINED_FUNCTION_27_4(*(v33 + 20));
    sub_193448758(v34, v14, v35, v36);
    OUTLINED_FUNCTION_6_3(v14, 1, v16);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_52();
      sub_193639008(v14, v22, v37);
      sub_193494798(v16, &off_1F07C3F90, v41);
      OUTLINED_FUNCTION_0_57();
      v31 = v22;
      goto LABEL_10;
    }

    v27 = v14;
  }

  sub_19344E6DC(v27, &qword_1EAE3BCA0, &unk_19395C320);
  v28 = v41;
  *v41 = 0u;
  *(v28 + 1) = 0u;
LABEL_11:
  OUTLINED_FUNCTION_27();
}

void sub_19363983C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_6();
  v10 = type metadata accessor for AIML.UUID();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  v14 = v3 == 0x6C6379436E616C70 && v0 == 0xEB00000000644965;
  if (v14 || (OUTLINED_FUNCTION_75_13() & 1) != 0)
  {
    sub_193448758(v2, v4, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v4, 1, v10);
    if (v14)
    {
      sub_19344E6DC(v4, &qword_1EAE3BCA0, &unk_19395C320);
      *v1 = 0u;
      v1[1] = 0u;
    }

    else
    {
      OUTLINED_FUNCTION_1_52();
      sub_193639008(v4, v5, v15);
      OUTLINED_FUNCTION_19_3();
      sub_193494798(v16, v17, v18);
      OUTLINED_FUNCTION_0_57();
      sub_193639064(v5, v19);
    }
  }

  else
  {
    sub_19349AB64();
    v20 = OUTLINED_FUNCTION_13_9();
    v22 = OUTLINED_FUNCTION_81_8(v20, v21);
    v23 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(v22);
    v24 = OUTLINED_FUNCTION_126(v23);
    sub_1936399F4(v2, v24, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated);
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936399F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

BOOL static IntelligenceFlowIFRequestTelemetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v158 = a2;
  v159 = a1;
  v144 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  v2 = OUTLINED_FUNCTION_4_1(v144);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  v139 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6C8, &qword_193975890);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53_1();
  v140 = v10;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6D0, &qword_193975920);
  OUTLINED_FUNCTION_4_1(v142);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  v143 = v14;
  v15 = OUTLINED_FUNCTION_22_2();
  v149 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(v15);
  v16 = OUTLINED_FUNCTION_4_1(v149);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_289();
  v141 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6C0, &unk_193975A20);
  OUTLINED_FUNCTION_47(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53_1();
  v145 = v24;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6D8, &qword_193975928);
  OUTLINED_FUNCTION_4_1(v147);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_53_1();
  v148 = v28;
  v29 = OUTLINED_FUNCTION_22_2();
  v154 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(v29);
  v30 = OUTLINED_FUNCTION_4_1(v154);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_289();
  v146 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6B8, &qword_193975888);
  OUTLINED_FUNCTION_47(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_53_1();
  v150 = v38;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6E0, &qword_193975930);
  OUTLINED_FUNCTION_4_1(v152);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_53_1();
  v153 = v42;
  OUTLINED_FUNCTION_22_2();
  v156 = type metadata accessor for MonotonicTimestamp();
  v43 = OUTLINED_FUNCTION_4_1(v156);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_289();
  v151 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_53_1();
  v155 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v139 - v56;
  v58 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(0);
  v59 = OUTLINED_FUNCTION_4_1(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v139 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6B0, &qword_193975880);
  OUTLINED_FUNCTION_47(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v139 - v68;
  v70 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6E8, &qword_193975938) - 8);
  v71 = *(*v70 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v139 - v73;
  v157 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
  v75 = *(v157 + 28);
  v76 = v70[14];
  sub_1934486F8(v159 + v75, v74, &qword_1EAE3F6B0, &qword_193975880);
  v77 = v158 + v75;
  v78 = v158;
  sub_1934486F8(v77, &v74[v76], &qword_1EAE3F6B0, &qword_193975880);
  OUTLINED_FUNCTION_31(v74);
  if (v79)
  {
    OUTLINED_FUNCTION_31(&v74[v76]);
    if (v79)
    {
      sub_19344E6DC(v74, &qword_1EAE3F6B0, &qword_193975880);
      goto LABEL_11;
    }

LABEL_9:
    v80 = &qword_1EAE3F6E8;
    v81 = &qword_193975938;
    v82 = v74;
LABEL_31:
    sub_19344E6DC(v82, v80, v81);
    return 0;
  }

  sub_1934486F8(v74, v69, &qword_1EAE3F6B0, &qword_193975880);
  OUTLINED_FUNCTION_31(&v74[v76]);
  if (v79)
  {
    sub_19363A4C4(v69, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
    goto LABEL_9;
  }

  sub_19363A51C(&v74[v76], v63, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
  OUTLINED_FUNCTION_7_31();
  sub_19363ABA0(v83, v84);
  v85 = sub_19393C550();
  sub_19363A4C4(v63, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
  sub_19363A4C4(v69, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
  sub_19344E6DC(v74, &qword_1EAE3F6B0, &qword_193975880);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v86 = v157;
  v87 = *(v157 + 32);
  v88 = *(v52 + 48);
  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_17_28(v78 + v87);
  v89 = OUTLINED_FUNCTION_132();
  v90 = v156;
  OUTLINED_FUNCTION_38_0(v89, v91);
  if (v79)
  {
    OUTLINED_FUNCTION_31(&v57[v88]);
    if (v79)
    {
      sub_19344E6DC(v57, &qword_1EAE3B498, &unk_193959120);
      goto LABEL_21;
    }

LABEL_19:
    v80 = &qword_1EAE3B958;
    v81 = &qword_193957B50;
LABEL_30:
    v82 = v57;
    goto LABEL_31;
  }

  v92 = v155;
  sub_1934486F8(v57, v155, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_31(&v57[v88]);
  if (v93)
  {
    sub_19363A4C4(v92, type metadata accessor for MonotonicTimestamp);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_11_30();
  sub_19363A51C(&v57[v88], v151, v94);
  OUTLINED_FUNCTION_10_39();
  sub_19363ABA0(v95, v96);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_19_33();
  sub_19363A4C4(v92, &qword_1EAE3B498);
  sub_19344E6DC(v57, &qword_1EAE3B498, &unk_193959120);
  if ((v90 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v97 = v86[9];
  v57 = v153;
  v98 = *(v152 + 48);
  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_17_28(v78 + v97);
  v99 = OUTLINED_FUNCTION_132();
  v100 = v154;
  OUTLINED_FUNCTION_38_0(v99, v101);
  if (v79)
  {
    OUTLINED_FUNCTION_31(&v57[v98]);
    if (v79)
    {
      sub_19344E6DC(v57, &qword_1EAE3F6B8, &qword_193975888);
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v102 = v150;
  sub_1934486F8(v57, v150, &qword_1EAE3F6B8, &qword_193975888);
  OUTLINED_FUNCTION_31(&v57[v98]);
  if (v103)
  {
    sub_19363A4C4(v102, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked);
LABEL_29:
    v80 = &qword_1EAE3F6E0;
    v81 = &qword_193975930;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_6_41();
  sub_19363A51C(&v57[v98], v146, v105);
  OUTLINED_FUNCTION_5_44();
  sub_19363ABA0(v106, v107);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_19_33();
  sub_19363A4C4(v102, &qword_1EAE3F6B8);
  sub_19344E6DC(v57, &qword_1EAE3F6B8, &qword_193975888);
  if ((v100 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v108 = v86[10];
  v109 = v148;
  v110 = *(v147 + 48);
  OUTLINED_FUNCTION_14_31();
  v111 = v78 + v108;
  v112 = v109;
  OUTLINED_FUNCTION_17_28(v111);
  v113 = OUTLINED_FUNCTION_132();
  v114 = v149;
  OUTLINED_FUNCTION_38_0(v113, v115);
  if (v79)
  {
    OUTLINED_FUNCTION_31(v109 + v110);
    if (v79)
    {
      sub_19344E6DC(v109, &qword_1EAE3F6C0, &unk_193975A20);
      goto LABEL_45;
    }

LABEL_43:
    v80 = &qword_1EAE3F6D8;
    v81 = &qword_193975928;
LABEL_54:
    v82 = v112;
    goto LABEL_31;
  }

  v116 = v109;
  v117 = v145;
  sub_1934486F8(v116, v145, &qword_1EAE3F6C0, &unk_193975A20);
  OUTLINED_FUNCTION_31(v112 + v110);
  if (v118)
  {
    sub_19363A4C4(v117, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated);
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_13_27();
  sub_19363A51C(v112 + v110, v141, v119);
  OUTLINED_FUNCTION_12_26();
  sub_19363ABA0(v120, v121);
  OUTLINED_FUNCTION_26_19();
  OUTLINED_FUNCTION_19_33();
  v122 = OUTLINED_FUNCTION_245();
  sub_19363A4C4(v122, v123);
  sub_19344E6DC(v112, &qword_1EAE3F6C0, &unk_193975A20);
  if ((v114 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  v124 = v86[11];
  v125 = v143;
  v126 = *(v142 + 48);
  OUTLINED_FUNCTION_14_31();
  v127 = v78 + v124;
  v112 = v125;
  OUTLINED_FUNCTION_17_28(v127);
  v128 = OUTLINED_FUNCTION_132();
  v129 = v144;
  OUTLINED_FUNCTION_38_0(v128, v130);
  if (v79)
  {
    OUTLINED_FUNCTION_31(v125 + v126);
    if (v79)
    {
      sub_19344E6DC(v125, &qword_1EAE3F6C8, &qword_193975890);
      return 1;
    }

    goto LABEL_53;
  }

  v131 = v125;
  v132 = v140;
  sub_1934486F8(v131, v140, &qword_1EAE3F6C8, &qword_193975890);
  OUTLINED_FUNCTION_31(v112 + v126);
  if (v133)
  {
    sub_19363A4C4(v132, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop);
LABEL_53:
    v80 = &qword_1EAE3F6D0;
    v81 = &qword_193975920;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_9_53();
  sub_19363A51C(v112 + v126, v139, v134);
  OUTLINED_FUNCTION_8_40();
  sub_19363ABA0(v135, v136);
  OUTLINED_FUNCTION_26_19();
  OUTLINED_FUNCTION_19_33();
  v137 = OUTLINED_FUNCTION_245();
  sub_19363A4C4(v137, v138);
  sub_19344E6DC(v112, &qword_1EAE3F6C8, &qword_193975890);
  return (v129 & 1) != 0;
}

uint64_t sub_19363A4C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_19363A51C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t IntelligenceFlowIFRequestTelemetry.hash(into:)(uint64_t a1)
{
  v90 = a1;
  v95 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  v2 = OUTLINED_FUNCTION_4_1(v95);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  v88 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6C8, &qword_193975890);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53_1();
  v94 = v10;
  v11 = OUTLINED_FUNCTION_22_2();
  v93 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(v11);
  v12 = OUTLINED_FUNCTION_4_1(v93);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_289();
  v87 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6C0, &unk_193975A20);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_53_1();
  v92 = v20;
  v21 = OUTLINED_FUNCTION_22_2();
  v91 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(v21);
  v22 = OUTLINED_FUNCTION_4_1(v91);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_289();
  v86 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6B8, &qword_193975888);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v84 - v30;
  v89 = type metadata accessor for MonotonicTimestamp();
  v32 = OUTLINED_FUNCTION_4_1(v89);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_289();
  v85 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v84 - v40;
  v42 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(0);
  v43 = OUTLINED_FUNCTION_4_1(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v84 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = &qword_193975880;
  v49 = OUTLINED_FUNCTION_245();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
  OUTLINED_FUNCTION_47(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v84 - v55;
  v57 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
  sub_1934486F8(v1 + v57[7], v56, &qword_1EAE3F6B0, &qword_193975880);
  if (__swift_getEnumTagSinglePayload(v56, 1, v42) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v48 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata;
    sub_19363A51C(v56, v47, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
    sub_19393CAD0();
    OUTLINED_FUNCTION_7_31();
    sub_19363ABA0(v58, v59);
    sub_19393C540();
    sub_19363A4C4(v47, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
  }

  v60 = v1;
  sub_1934486F8(v1 + v57[8], v41, &qword_1EAE3B498, &unk_193959120);
  if (__swift_getEnumTagSinglePayload(v41, 1, v89) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_11_30();
    v61 = v85;
    sub_19363A51C(v41, v85, v62);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_10_39();
    sub_19363ABA0(v63, v64);
    OUTLINED_FUNCTION_24_25();
    sub_19393C540();
    sub_19363A4C4(v61, v48);
  }

  v65 = v93;
  v66 = v91;
  sub_1934486F8(v1 + v57[9], v31, &qword_1EAE3F6B8, &qword_193975888);
  if (__swift_getEnumTagSinglePayload(v31, 1, v66) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_6_41();
    v67 = v31;
    v68 = v86;
    sub_19363A51C(v67, v86, v69);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_5_44();
    sub_19363ABA0(v70, v71);
    OUTLINED_FUNCTION_24_25();
    sub_19393C540();
    sub_19363A4C4(v68, v48);
  }

  v72 = v92;
  sub_1934486F8(v60 + v57[10], v92, &qword_1EAE3F6C0, &unk_193975A20);
  if (__swift_getEnumTagSinglePayload(v72, 1, v65) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_13_27();
    v73 = v87;
    sub_19363A51C(v72, v87, v74);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_12_26();
    sub_19363ABA0(v75, v76);
    OUTLINED_FUNCTION_24_25();
    sub_19393C540();
    sub_19363A4C4(v73, v48);
  }

  v77 = v94;
  sub_1934486F8(v60 + v57[11], v94, &qword_1EAE3F6C8, &qword_193975890);
  if (__swift_getEnumTagSinglePayload(v77, 1, v95) == 1)
  {
    return OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_9_53();
  sub_19363A51C(v77, v88, v79);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_8_40();
  sub_19363ABA0(v80, v81);
  OUTLINED_FUNCTION_24_25();
  sub_19393C540();
  v82 = OUTLINED_FUNCTION_245();
  return sub_19363A4C4(v82, v83);
}

uint64_t sub_19363ABA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  if (result == 3)
  {
    v4 = 1;
  }

  else
  {
    v2 = v3;
    v4 = result == 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v5 = result == 1 || v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

char *static IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.allCases.getter()
{
  v0 = sub_19363AF70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_19363AF70(v13, v2 + 1, 1, v14);
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
    v15 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_19363AF70(v15, v2 + 2, 1, v16);
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
    v17 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_19363AF70(v17, v2 + 3, 1, v18);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_19363AF70(v19, v2 + 4, 1, v20);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x726F747563657845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F7365526E616C50;
  }
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x6F7365526E616C50 && a2 == 0xEE006E6F6974756CLL;
  if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = a1 == 0xD000000000000012 && 0x8000000193A19520 == a2;
  if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  if (a1 == 0x726F747563657845 && a2 == 0xE800000000000000)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9();

    v8 = 2;
    if ((v9 & 1) == 0)
    {
      v8 = 0;
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_19363AF70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F738, &qword_1939759A0);
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

unint64_t sub_19363B070()
{
  result = qword_1EAE3F730;
  if (!qword_1EAE3F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F730);
  }

  return result;
}

void sub_19363B0C4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAB7C8);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  *(v6 + 16) = xmmword_19394FBD0;
  v7 = v6 + v0 + dword_1EAEAB800;
  *(v6 + v0) = 1;
  *v7 = "eventMetadata";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v6 + v0 + v5);
  *v13 = 2;
  *v12 = "monotonicTimestamp";
  *(v12 + 8) = 18;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  v14 = OUTLINED_FUNCTION_3_1(v6 + v0 + 2 * v5);
  *v15 = 102;
  *v14 = "ifPlatformRequestInvoked";
  *(v14 + 8) = 24;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  v16 = OUTLINED_FUNCTION_3_1(v6 + v0 + 3 * v5);
  *v17 = 103;
  *v16 = "ifPlanCycleGenerated";
  *(v16 + 8) = 20;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  v18 = OUTLINED_FUNCTION_3_1(v6 + v0 + 4 * v5);
  *v19 = 104;
  *v18 = "sessionCoordinatorLoop";
  *(v18 + 8) = 22;
  *(v18 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19363B2DC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 104:
        v7 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(0) + 44);
        type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
        OUTLINED_FUNCTION_10_2();
LABEL_14:
        sub_193498018();
        break;
      case 2:
        v4 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(0) + 32);
        type metadata accessor for MonotonicTimestamp();
        OUTLINED_FUNCTION_10_2();
        goto LABEL_14;
      case 102:
        v6 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(0) + 36);
        type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0);
        OUTLINED_FUNCTION_10_2();
        goto LABEL_14;
      case 103:
        v5 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(0) + 40);
        type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(0);
        OUTLINED_FUNCTION_10_2();
        goto LABEL_14;
      case 1:
        v3 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(0) + 28);
        type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(0);
        OUTLINED_FUNCTION_10_2();
        goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19363B414()
{
  OUTLINED_FUNCTION_46_5();
  sub_19363B480();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_19363B588();
    OUTLINED_FUNCTION_46_5();
    sub_19363B690();
    OUTLINED_FUNCTION_46_5();
    sub_19363B798();
    OUTLINED_FUNCTION_46_5();
    sub_19363B8A0();
  }
}

void sub_19363B480()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(v8);
  v10 = OUTLINED_FUNCTION_37_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = OUTLINED_FUNCTION_37();
  v14 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v13);
  OUTLINED_FUNCTION_19_12(*(v14 + 28));
  OUTLINED_FUNCTION_25_0();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3F6B0, &qword_193975880);
  }

  else
  {
    sub_19363CAB8(v0, v1, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363B588()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for MonotonicTimestamp();
  v9 = OUTLINED_FUNCTION_37_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_37();
  v13 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v12);
  OUTLINED_FUNCTION_19_12(*(v13 + 32));
  OUTLINED_FUNCTION_25_0();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    sub_19363CAB8(v0, v1, type metadata accessor for MonotonicTimestamp);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363B690()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(v8);
  v10 = OUTLINED_FUNCTION_37_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = OUTLINED_FUNCTION_37();
  v14 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v13);
  OUTLINED_FUNCTION_19_12(*(v14 + 36));
  OUTLINED_FUNCTION_25_0();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3F6B8, &qword_193975888);
  }

  else
  {
    sub_19363CAB8(v0, v1, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363B798()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(v8);
  v10 = OUTLINED_FUNCTION_37_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = OUTLINED_FUNCTION_37();
  v14 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v13);
  OUTLINED_FUNCTION_19_12(*(v14 + 40));
  OUTLINED_FUNCTION_25_0();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3F6C0, &unk_193975A20);
  }

  else
  {
    sub_19363CAB8(v0, v1, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363B8A0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v8);
  v10 = OUTLINED_FUNCTION_37_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = OUTLINED_FUNCTION_37();
  v14 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v13);
  OUTLINED_FUNCTION_19_12(*(v14 + 44));
  OUTLINED_FUNCTION_25_0();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3F6C8, &qword_193975890);
  }

  else
  {
    sub_19363CAB8(v0, v1, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363BAA8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB7F8);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v8 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v8, xmmword_1939526E0);
  *v1 = 1;
  *v0 = "postingSpanId";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v7);
  *v14 = 2;
  v15 = OUTLINED_FUNCTION_5_4(v13, "postingParticipant");
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 2 * v7);
  *v17 = 3;
  v18 = OUTLINED_FUNCTION_5_4(v16, "postingId");
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 3 * v7);
  *v20 = 4;
  v21 = OUTLINED_FUNCTION_5_4(v19, "initiatedSpanId");
  (v12)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 4 * v7);
  *v23 = 5;
  v24 = OUTLINED_FUNCTION_5_4(v22, "initiatedParticipant");
  (v12)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 5 * v7);
  *v26 = 6;
  *v25 = "initiatedId";
  *(v25 + 8) = 11;
  *(v25 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19363BCCC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        goto LABEL_8;
      case 2:
        goto LABEL_9;
      case 3:
        v5 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0) + 24);
        goto LABEL_11;
      case 4:
        v6 = v1 + *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0) + 28);
LABEL_8:
        sub_19393C230();
        continue;
      case 5:
        v4 = v1 + *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0) + 32);
LABEL_9:
        sub_1934982A8();
        break;
      case 6:
        v7 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0) + 36);
LABEL_11:
        type metadata accessor for AIML.UUID();
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19363BDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((v3[1] & 1) == 0)
  {
    v7 = *v3;
    sub_19393C3E0();
  }

  if (!v4)
  {
    if ((*(v3 + 25) & 1) == 0)
    {
      v8 = *(v3 + 24);
      v14 = v3[2];
      v15 = v8 & 1;
      sub_193447324(&v14, 2, a2, &type metadata for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant, a3, &off_1F07DA038);
    }

    OUTLINED_FUNCTION_79();
    sub_19363BF68();
    v9 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
    v10 = (v3 + *(v9 + 28));
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      sub_19393C3E0();
    }

    v12 = (v3 + *(v9 + 32));
    if ((*(v12 + 9) & 1) == 0)
    {
      v13 = *(v12 + 8);
      v14 = *v12;
      v15 = v13 & 1;
      sub_193447324(&v14, 5, a2, &type metadata for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant, a3, &off_1F07DA038);
    }

    OUTLINED_FUNCTION_79();
    sub_19363C060();
  }
}

void sub_19363BF68()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for AIML.UUID();
  v9 = OUTLINED_FUNCTION_37_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_37();
  v13 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v12);
  OUTLINED_FUNCTION_19_12(*(v13 + 24));
  OUTLINED_FUNCTION_25_0();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_11_31();
    sub_19363CAB8(v0, v1, v15);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363C060()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for AIML.UUID();
  v9 = OUTLINED_FUNCTION_37_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_37();
  v13 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v12);
  OUTLINED_FUNCTION_19_12(*(v13 + 36));
  OUTLINED_FUNCTION_25_0();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_11_31();
    sub_19363CAB8(v0, v1, v15);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363C1B8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB810);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v8 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v8, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v7);
  *v14 = 1;
  *v13 = "PlanResolution";
  *(v13 + 8) = 14;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v15 = OUTLINED_FUNCTION_3_1(v1 + 2 * v7);
  *v16 = 2;
  *v15 = "ResponseGeneration";
  *(v15 + 8) = 18;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v17 = OUTLINED_FUNCTION_3_1(v1 + 3 * v7);
  *v18 = 3;
  *v17 = "Executor";
  *(v17 + 8) = 8;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19363C3B4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB828);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = OUTLINED_FUNCTION_156();
  *(v8 + 16) = xmmword_19394FBE0;
  v9 = (v8 + v7);
  v10 = v8 + v7 + dword_1EAEAB860;
  *v9 = 1;
  *v10 = "ifSessionId";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 104);
  (v14)(v10, v11, v12);
  v15 = OUTLINED_FUNCTION_3_1(v9 + v5);
  *v16 = 2;
  *v15 = "clientTraceId";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v14();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19363C538()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0) + 20);
      type metadata accessor for AIML.UUID();
LABEL_8:
      OUTLINED_FUNCTION_37_8();
    }

    else if (v1 == 1)
    {
      type metadata accessor for AIML.UUID();
      goto LABEL_8;
    }
  }
}

void sub_19363C620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_5_8(v24, v25);
  v26 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  v30 = type metadata accessor for AIML.UUID();
  v31 = OUTLINED_FUNCTION_37_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_193448758(v21, v20, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_25_0();
  if (v36)
  {
    sub_19344E6DC(v20, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_19363CAB8(v20, v35, type metadata accessor for AIML.UUID);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363C740()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for AIML.UUID();
  v9 = OUTLINED_FUNCTION_37_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_37();
  v13 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(v12);
  OUTLINED_FUNCTION_19_12(*(v13 + 20));
  OUTLINED_FUNCTION_25_0();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_11_31();
    sub_19363CAB8(v0, v1, v15);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19363C8B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_19393C420();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_19394FAC0;
  v10 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v10 = a3;
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v12);
  (*(v13 + 104))(v10, v11);
  return sub_19393C410();
}

void sub_19363CA14()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      type metadata accessor for AIML.UUID();
      OUTLINED_FUNCTION_37_8();
    }
  }
}

uint64_t sub_19363CAB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_19363CB14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t IntelligenceFlowIFRequestTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t IntelligenceFlowIFRequestTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0) + 24);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowIFRequestTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.eventMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3F6B0, &qword_193975880, *(v1 + 28));
}

uint64_t IntelligenceFlowIFRequestTelemetry.eventMetadata.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0) + 28);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowIFRequestTelemetry.eventMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.monotonicTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3B498, &unk_193959120, *(v1 + 32));
}

uint64_t IntelligenceFlowIFRequestTelemetry.monotonicTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.ifPlatformRequestInvoked.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.ifPlanCycleGenerated.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3F6C0, &unk_193975A20, *(v1 + 40));
}

uint64_t IntelligenceFlowIFRequestTelemetry.ifPlanCycleGenerated.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0) + 40);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowIFRequestTelemetry.ifPlanCycleGenerated.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.sessionCoordinatorLoop.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19363D00C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.postingSpanId.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.postingSpanId.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.postingParticipant.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.postingParticipant.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 25) = v3;
  return result;
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.postingId.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3BCA0, &unk_19395C320, *(v1 + 24));
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.postingId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.initiatedSpanId.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.initiatedSpanId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.initiatedParticipant.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19363D274()
{
  v0 = OUTLINED_FUNCTION_222();
  v2 = *(v1(v0) + 36);
  OUTLINED_FUNCTION_248();
  return sub_1934487B4(v3, v4, v5, v6);
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.initiatedId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19363D300@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19363D328@<X0>(char **a1@<X8>)
{
  result = static IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19363D350()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_19363D35C();
}

uint64_t sub_19363D35C()
{
  sub_19393CAB0();
  v0 = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_19363D3B8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_19363D3C4();
}

uint64_t sub_19363D408()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_19363D414();
}

uint64_t sub_19363D414()
{
  sub_19393CAB0();
  v0 = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_19363D46C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_19363D488();
}

void static IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for AIML.UUID();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v22 = OUTLINED_FUNCTION_4_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v72 - v29;
  v31 = *(v1 + 8);
  if (*(v3 + 8))
  {
    if (!*(v1 + 8))
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v3 != *v1)
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_22;
    }
  }

  v32 = *(v1 + 25);
  if (*(v3 + 25))
  {
    v75 = v17;
    if ((v32 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*(v1 + 25))
    {
      goto LABEL_22;
    }

    v33 = *(v3 + 24);
    v34 = *(v1 + 16);
    v35 = *(v1 + 24);
    v78 = *(v3 + 16);
    v79 = v33 & 1;
    v75 = v17;
    v76 = v34;
    v77 = v35 & 1;
    v36 = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
    if (v36 != IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter())
    {
      goto LABEL_22;
    }
  }

  v72 = v27;
  v73 = v10;
  v74 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  v37 = v74[6];
  v38 = *(v21 + 48);
  OUTLINED_FUNCTION_36_20(v3 + v37, v30);
  OUTLINED_FUNCTION_36_20(v1 + v37, &v30[v38]);
  OUTLINED_FUNCTION_14_1(v30);
  if (!v39)
  {
    sub_1934487B4(v30, v20, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_14_1(&v30[v38]);
    if (!v39)
    {
      v41 = &v30[v38];
      v42 = v73;
      sub_19355A5F8(v41, v73);
      OUTLINED_FUNCTION_0_58();
      sub_19363D00C(v43, v44);
      v45 = sub_19393C550();
      sub_1934F8A10(v42);
      sub_1934F8A10(v20);
      sub_19344E6DC(v30, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v45 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    sub_1934F8A10(v20);
LABEL_20:
    v40 = v30;
LABEL_21:
    sub_19344E6DC(v40, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_14_1(&v30[v38]);
  if (!v39)
  {
    goto LABEL_20;
  }

  sub_19344E6DC(v30, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_24:
  v46 = v74;
  v47 = v74[7];
  v48 = (v3 + v47);
  v49 = *(v3 + v47 + 8);
  v50 = (v1 + v47);
  v51 = *(v1 + v47 + 8);
  if (v49)
  {
    if (!v51)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v48 != *v50)
    {
      LOBYTE(v51) = 1;
    }

    if (v51)
    {
      goto LABEL_22;
    }
  }

  v52 = v74[8];
  v53 = (v3 + v52);
  v54 = *(v3 + v52 + 9);
  v55 = (v1 + v52);
  v56 = *(v55 + 9);
  if (v54)
  {
    if ((*(v55 + 9) & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if ((*(v55 + 9) & 1) == 0)
  {
    v57 = *v53;
    v58 = *(v53 + 8);
    v59 = *v55;
    v60 = *(v55 + 8);
    v78 = v57;
    v79 = v58 & 1;
    v76 = v59;
    v77 = v60 & 1;
    v61 = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
    if (v61 == IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter())
    {
LABEL_35:
      v62 = v46[9];
      v63 = *(v21 + 48);
      v64 = v3 + v62;
      v65 = v72;
      OUTLINED_FUNCTION_36_20(v64, v72);
      OUTLINED_FUNCTION_36_20(v1 + v62, v65 + v63);
      OUTLINED_FUNCTION_14_1(v65);
      if (v39)
      {
        OUTLINED_FUNCTION_14_1(v65 + v63);
        if (v39)
        {
          sub_19344E6DC(v65, &qword_1EAE3BCA0, &unk_19395C320);
          goto LABEL_22;
        }
      }

      else
      {
        v66 = v75;
        sub_1934487B4(v65, v75, &qword_1EAE3BCA0, &unk_19395C320);
        OUTLINED_FUNCTION_14_1(v65 + v63);
        if (!v67)
        {
          v68 = v65 + v63;
          v69 = v73;
          sub_19355A5F8(v68, v73);
          OUTLINED_FUNCTION_0_58();
          sub_19363D00C(v70, v71);
          sub_19393C550();
          sub_1934F8A10(v69);
          sub_1934F8A10(v66);
          sub_19344E6DC(v65, &qword_1EAE3BCA0, &unk_19395C320);
          goto LABEL_22;
        }

        sub_1934F8A10(v66);
      }

      v40 = v65;
      goto LABEL_21;
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = *v0;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v16);
  }

  if (*(v0 + 25) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v17 = *(v0 + 24);
    v18 = v0[2];
    OUTLINED_FUNCTION_103_0();
    v32 = v18;
    v33 = v17 & 1;
    v19 = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
    MEMORY[0x193B18030](v19);
  }

  v20 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  sub_1934487B4(v0 + v20[6], v15, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v15);
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v15, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_58();
    sub_19363D00C(v22, v23);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v1);
  }

  v24 = (v0 + v20[7]);
  if (*(v24 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v25 = *v24;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v25);
  }

  v26 = (v0 + v20[8]);
  if (*(v26 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v27 = *(v26 + 8);
    v28 = *v26;
    OUTLINED_FUNCTION_103_0();
    v32 = v28;
    v33 = v27 & 1;
    v29 = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
    MEMORY[0x193B18030](v29);
  }

  sub_1934487B4(v0 + v20[9], v12, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v12);
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v12, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_58();
    sub_19363D00C(v30, v31);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v1);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t sub_19363DC70(void (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19363DCD8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_19363DD68()
{
  v0 = OUTLINED_FUNCTION_222();
  v2 = *(v1(v0) + 20);
  OUTLINED_FUNCTION_248();
  return sub_1934487B4(v3, v4, v5, v6);
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked.clientTraceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked.init()()
{
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AIML.UUID();
  v2 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0) + 20);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
  sub_19344E6DC(v0 + v5, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v1);
}

void static IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v44 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v43 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v19 = OUTLINED_FUNCTION_4_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6();
  v24 = v22 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v43 - v27;
  v29 = *(v26 + 48);
  v45 = v0;
  sub_1934487B4(v0, &v43 - v27, &qword_1EAE3BCA0, &unk_19395C320);
  v46 = v2;
  sub_1934487B4(v2, &v28[v29], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v28);
  if (!v30)
  {
    sub_1934487B4(v28, v17, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v28[v29]);
    if (!v30)
    {
      v32 = v44;
      sub_19355A5F8(&v28[v29], v44);
      OUTLINED_FUNCTION_0_58();
      sub_19363D00C(v33, v34);
      v35 = sub_19393C550();
      sub_1934F8A10(v32);
      sub_1934F8A10(v17);
      sub_19344E6DC(v28, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v35 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    sub_1934F8A10(v17);
LABEL_9:
    v31 = v28;
LABEL_20:
    sub_19344E6DC(v31, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_31(&v28[v29]);
  if (!v30)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v28, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_11:
  v36 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0) + 20);
  v37 = *(v18 + 48);
  sub_1934487B4(v45 + v36, v24, &qword_1EAE3BCA0, &unk_19395C320);
  sub_1934487B4(v46 + v36, v24 + v37, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v24);
  if (!v30)
  {
    v38 = v43;
    sub_1934487B4(v24, v43, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v24 + v37);
    if (!v39)
    {
      v40 = v44;
      sub_19355A5F8(v24 + v37, v44);
      OUTLINED_FUNCTION_0_58();
      sub_19363D00C(v41, v42);
      OUTLINED_FUNCTION_139();
      sub_1934F8A10(v40);
      sub_1934F8A10(v38);
      sub_19344E6DC(v24, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_21;
    }

    sub_1934F8A10(v38);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_31(v24 + v37);
  if (!v30)
  {
LABEL_19:
    v31 = v24;
    goto LABEL_20;
  }

  sub_19344E6DC(v24, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_21:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked.hash(into:)()
{
  v2 = v0;
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
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  sub_1934487B4(v2, &v24 - v15, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v16, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_58();
    sub_19363D00C(v18, v19);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v1);
  }

  v20 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0);
  sub_1934487B4(v2 + *(v20 + 20), v13, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v13);
  if (v17)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_19355A5F8(v13, v1);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_0_58();
  sub_19363D00C(v21, v22);
  OUTLINED_FUNCTION_33();
  return sub_1934F8A10(v1);
}

uint64_t _s27IntelligencePlatformLibrary0A22FlowIFRequestTelemetryV0E13EventMetadataVAEycfC_0()
{
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AIML.UUID();
  v2 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v5 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
}

void _s27IntelligencePlatformLibrary0A22FlowIFRequestTelemetryV0E13EventMetadataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for AIML.UUID();
  v28 = OUTLINED_FUNCTION_4_1(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_1();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v35 = OUTLINED_FUNCTION_47(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_150();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v39 = OUTLINED_FUNCTION_47(v38);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &a9 - v43;
  v45 = *(v42 + 56);
  sub_1934487B4(v26, &a9 - v43, &qword_1EAE3BCA0, &unk_19395C320);
  sub_1934487B4(v24, &v44[v45], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v44);
  if (!v46)
  {
    sub_1934487B4(v44, v20, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v44[v45]);
    if (!v46)
    {
      sub_19355A5F8(&v44[v45], v33);
      OUTLINED_FUNCTION_0_58();
      sub_19363D00C(v47, v48);
      OUTLINED_FUNCTION_139();
      sub_1934F8A10(v33);
      sub_1934F8A10(v20);
      sub_19344E6DC(v44, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_10;
    }

    sub_1934F8A10(v20);
LABEL_9:
    sub_19344E6DC(v44, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(&v44[v45]);
  if (!v46)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v44, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

uint64_t _s27IntelligencePlatformLibrary0A22FlowIFRequestTelemetryV0E13EventMetadataV4hash4intoys6HasherVz_tF_0()
{
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_150();
  sub_1934487B4(v0, v1, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_14_1(v1);
  if (v13)
  {
    return sub_19393CAD0();
  }

  sub_19355A5F8(v1, v8);
  sub_19393CAD0();
  OUTLINED_FUNCTION_0_58();
  sub_19363D00C(v14, v15);
  sub_19393C540();
  return sub_1934F8A10(v8);
}

unint64_t sub_19363E92C()
{
  result = qword_1EAE3F790;
  if (!qword_1EAE3F790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3F798, &qword_193975AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F790);
  }

  return result;
}

unint64_t sub_19363E994()
{
  result = qword_1EAE3F7A0;
  if (!qword_1EAE3F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F7A0);
  }

  return result;
}

void sub_19363EB34(uint64_t a1)
{
  OUTLINED_FUNCTION_21_28(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_21_28(v2, qword_1ED506B58);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_21_28(v4, &qword_1ED507A78);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_21_28(v6, qword_1ED506AF8);
          if (v9 <= 0x3F)
          {
            OUTLINED_FUNCTION_21_28(v8, qword_1ED505DD0);
            if (v11 <= 0x3F)
            {
              OUTLINED_FUNCTION_21_28(v10, qword_1ED505CB8);
              if (v12 <= 0x3F)
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

void sub_19363ECB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_19363ED1C()
{
  sub_19349D1FC(319, &qword_1ED508070);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED506AF0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      OUTLINED_FUNCTION_5_45(v3, qword_1ED507908);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_19363EE28(uint64_t a1)
{
  OUTLINED_FUNCTION_5_45(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_19363EEA4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_45(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void OUTLINED_FUNCTION_21_28(uint64_t a1, unint64_t *a2)
{

  sub_19363ECB0(319, a2, v2);
}

uint64_t OUTLINED_FUNCTION_36_20(uint64_t a1, uint64_t a2)
{

  return sub_1934487B4(a1, a2, v2, v3);
}

uint64_t sub_19363EF84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511178);
  v5 = __swift_project_value_buffer(v4, qword_1ED511178);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.WalletPaymentsCommerce.FoundIn.Transaction.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:518400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_33 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511178);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7B0, &qword_193975EC0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 1, 0, 0, 0xD000000000000012, 0x8000000193A28CA0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.WalletPaymentsCommerce.FoundIn.Transaction.attribute(_:)(void (*a1)(void))
{
  result = sub_19363F3B0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19363F3EC(void (*a1)(void))
{
  result = sub_19363F3B0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19363F454(uint64_t a1)
{
  result = sub_19363F47C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19363F47C()
{
  result = qword_1ED503D38[0];
  if (!qword_1ED503D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED503D38);
  }

  return result;
}

_BYTE *_s11TransactionOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletPaymentsCommerceTransaction.json()()
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
  v10 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7B8, &qword_193975F38);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  OUTLINED_FUNCTION_0_59();
  sub_193640D9C(v1, v16, v23);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v24, &qword_1EAE3F7B8, &qword_193975F38);
  sub_19393C250();
  (*(v4 + 8))(v9, v29);
  sub_19344E6DC(v22, &qword_1EAE3F7B8, &qword_193975F38);
  OUTLINED_FUNCTION_27();
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

void static WalletPaymentsCommerceTransaction.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = OUTLINED_FUNCTION_47(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7B8, &qword_193975F38);
  OUTLINED_FUNCTION_4_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v35, &qword_1EAE3F7B8, &qword_193975F38);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_0_59();
    sub_193640CE4(v34, v24, v36);
  }

  OUTLINED_FUNCTION_27();
}

void static WalletPaymentsCommerceTransaction.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v37 = v3;
  v38 = v2;
  v36 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7B8, &qword_193975F38);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_1();
  v11 = sub_19393C0C0();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - v20;
  if (*sub_193644794() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    (*(v14 + 16))(v19, v21, v11);
    v22 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v22, v23);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v24, v25, v26);
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v14 + 8))(v21, v11);
    if (!v0)
    {
      OUTLINED_FUNCTION_0_59();
      v28 = v37;
      sub_193640CE4(v1, v37, v29);
      v30 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
      v31 = *(v30 + 20);
      sub_19344E6DC(v28 + v31, &qword_1EAE3A9E8, &qword_19394F800);
      v32 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v32);
      (*(v33 + 16))(v28 + v31, v36, v32);
      __swift_storeEnumTagSinglePayload(v28 + v31, 0, 1, v32);
      v34 = *(v30 + 24);
      sub_19344E6DC(v28 + v34, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v38, v28 + v34);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v27 = v6;
    *(v27 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t WalletPaymentsCommerceTransaction.serialize()()
{
  v2 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7B8, &qword_193975F38);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  OUTLINED_FUNCTION_0_59();
  sub_193640D9C(v0, v1, v12);
  sub_1934470C8(v1, v2, v11);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v13, &qword_1EAE3F7B8, &qword_193975F38);
  sub_19393C290();
  sub_19344E6DC(v11, &qword_1EAE3F7B8, &qword_193975F38);
  return OUTLINED_FUNCTION_13_0();
}

id static WalletPaymentsCommerceTransaction.columns.getter()
{
  v181 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x746E756F6D61, 0xE600000000000000, 2, 0, v1, 13, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_33_18();
  OUTLINED_FUNCTION_12_24(v4);
  inited = swift_initStackObject();
  v13 = OUTLINED_FUNCTION_3_47(inited, v6, v7, v8, v9, v10, v11, v12, xmmword_193950B10);
  OUTLINED_FUNCTION_6_42(v13, v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v22);
  OUTLINED_FUNCTION_31_27();
  result = sub_19343D150(v1, v23, 3, 0, v0, 0, 1);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_12_24(result);
  v24 = swift_initStackObject();
  v32 = OUTLINED_FUNCTION_3_47(v24, v25, v26, v27, v28, v29, v30, v31, v175);
  OUTLINED_FUNCTION_6_42(v32, v33, v34, v35, v36, v37, v38, v39, v40);
  v41 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v41);
  OUTLINED_FUNCTION_30_19();
  result = OUTLINED_FUNCTION_15_12(v1, v42);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_24(result);
  v43 = swift_initStackObject();
  v51 = OUTLINED_FUNCTION_3_47(v43, v44, v45, v46, v47, v48, v49, v50, v176);
  OUTLINED_FUNCTION_6_42(v51, v52, v53, v54, v55, v56, v57, v58, v59);
  v60 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v60);
  v61 = OUTLINED_FUNCTION_22_29();
  result = OUTLINED_FUNCTION_15_12(v61, 0xEC00000065646F43);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_12_24(result);
  v62 = swift_initStackObject();
  OUTLINED_FUNCTION_5_10(v62, v63, v64, v65, v66, v67, v68, v69, v70);
  v71 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_6_42(v71, v72, v73, v74, v75, v76, v77, v78, v79);
  v80 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v80);
  result = OUTLINED_FUNCTION_15_12(0xD000000000000016, 0x8000000193A2ACF0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_12_24(result);
  v81 = swift_initStackObject();
  v89 = OUTLINED_FUNCTION_3_47(v81, v82, v83, v84, v85, v86, v87, v88, v177);
  OUTLINED_FUNCTION_6_42(v89, v90, v91, v92, v93, v94, v95, v96, v97);
  v98 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v98);
  v99 = OUTLINED_FUNCTION_23_27();
  result = OUTLINED_FUNCTION_15_12(v99, 0xE800000000000000);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_12_24(result);
  v100 = swift_initStackObject();
  OUTLINED_FUNCTION_5_10(v100, v101, v102, v103, v104, v105, v106, v107, v108);
  v109 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_6_42(v109, v110, v111, v112, v113, v114, v115, v116, v117);
  v118 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v118);
  v119 = OUTLINED_FUNCTION_49_1();
  result = OUTLINED_FUNCTION_14_32(v119, v120);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_12_24(result);
  v121 = swift_initStackObject();
  v129 = OUTLINED_FUNCTION_3_47(v121, v122, v123, v124, v125, v126, v127, v128, v178);
  OUTLINED_FUNCTION_6_42(v129, v130, v131, v132, v133, v134, v135, v136, v137);
  v138 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v138);
  v139 = OUTLINED_FUNCTION_18_4();
  result = OUTLINED_FUNCTION_14_32(v139 & 0xFFFFFFFFFFFFLL | 0x5474000000000000, 0xEB00000000657079);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_12_24(result);
  v140 = swift_initStackObject();
  OUTLINED_FUNCTION_5_10(v140, v141, v142, v143, v144, v145, v146, v147, v148);
  v149 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_6_42(v149, v150, v151, v152, v153, v154, v155, v156, v157);
  v158 = sub_19393C850();
  OUTLINED_FUNCTION_19_35(v158);
  v159 = OUTLINED_FUNCTION_49_1();
  result = OUTLINED_FUNCTION_14_32(v159, v160);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_12_24(result);
  v161 = swift_initStackObject();
  v169 = OUTLINED_FUNCTION_3_47(v161, v162, v163, v164, v165, v166, v167, v168, v179);
  *(v169 + 16) = v180;
  *(v169 + 32) = sub_19393C850();
  v170 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_32_23();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v171, v172, v173, v174, v169, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_12_24(result);
    return v181;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1936400CC()
{
  OUTLINED_FUNCTION_26();
  v83 = v0;
  v84 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7C8, &qword_193975F40);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v81 - v11;
  v12 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - v23;
  v25 = sub_19393BE00();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v31 = v6 == 0x746E756F6D61 && v4 == 0xE600000000000000;
  if (v31 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v32 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 28);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_33_18();
  v36 = v6 == 0x746E756F6D61 && v4 == v35;
  if (v36 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v37 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
    sub_193448758(v83 + *(v37 + 32), v24, &qword_1EAE3A9E8, &qword_19394F800);
    if (__swift_getEnumTagSinglePayload(v24, 1, v25) != 1)
    {
      (*(v28 + 32))(v1, v24, v25);
      sub_1934948FC();
      (*(v28 + 8))(v1, v25);
      goto LABEL_19;
    }

    v38 = &qword_1EAE3A9E8;
    v39 = &qword_19394F800;
    v40 = v24;
LABEL_17:
    sub_19344E6DC(v40, v38, v39);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_30_19();
  v43 = v6 == 0x746E756F6D61 && v4 == v42;
  if (v43 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v32 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 36);
  }

  else
  {
    v45 = v6 == OUTLINED_FUNCTION_22_29() && v4 == v44;
    if (v45 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v32 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 40);
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v47 = v6 == 0xD000000000000016 && v46 == v4;
      if (v47 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v32 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 44);
      }

      else
      {
        v48 = v6 == OUTLINED_FUNCTION_23_27() && v4 == 0xE800000000000000;
        if (!v48 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          v49 = v6 == (OUTLINED_FUNCTION_18_4() & 0xFFFFFFFFFFFFLL | 0x74000000000000) && v4 == 0xE700000000000000;
          if (v49 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
          {
            v50 = (v83 + *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 52));
            v51 = v50[1];
            if (v51 != 1)
            {
              v85 = *v50;
              v86 = v51;
              v52 = *(v50 + 2);
              v87 = *(v50 + 1);
              v88 = v52;
              sub_193494798(&type metadata for WalletPaymentsCommerceTransaction.Account, &off_1F07DA318, v84);
              goto LABEL_19;
            }

            goto LABEL_18;
          }

          OUTLINED_FUNCTION_20_31();
          v53 = v31 && v4 == 0xE800000000000000;
          if (!v53 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
          {
            OUTLINED_FUNCTION_38();
            v61 = v6 == 0xD000000000000011 && v60 == v4;
            if (v61 || (OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
            {
              v62 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
              OUTLINED_FUNCTION_15_35(*(v62 + 60));
              if (v64)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v66 = v6 == (OUTLINED_FUNCTION_18_4() & 0xFFFFFFFFFFFFLL | 0x5474000000000000) && v4 == v65;
              if (v66 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
              {
                v67 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
                OUTLINED_FUNCTION_15_35(*(v67 + 64));
                if (v68)
                {
                  goto LABEL_18;
                }
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v70 = v6 == 0xD000000000000011 && v69 == v4;
                if (v70 || (OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
                {
                  v71 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
                  OUTLINED_FUNCTION_15_35(*(v71 + 68));
                  if (v72)
                  {
                    goto LABEL_18;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_32_23();
                  v74 = v6 == 0x746E756F6D61 && v4 == v73;
                  if (!v74 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
                  {
                    sub_19349AB64();
                    OUTLINED_FUNCTION_11();
                    swift_allocError();
                    v78 = v77;
                    *v77 = v6;
                    v77[1] = v4;
                    v77[5] = type metadata accessor for WalletPaymentsCommerceTransaction(0);
                    __swift_allocate_boxed_opaque_existential_1Tm(v78 + 2);
                    OUTLINED_FUNCTION_0_59();
                    sub_193640D9C(v83, v79, v80);
                    *(v78 + 48) = 1;
                    swift_willThrow();

                    goto LABEL_19;
                  }

                  v75 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
                  OUTLINED_FUNCTION_15_35(*(v75 + 72));
                  if (v76)
                  {
                    goto LABEL_18;
                  }
                }
              }
            }

            OUTLINED_FUNCTION_5_46(v63);
            goto LABEL_9;
          }

          v54 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
          v55 = v82;
          sub_193448758(v83 + *(v54 + 56), v82, &qword_1EAE3F7C8, &qword_193975F40);
          if (__swift_getEnumTagSinglePayload(v55, 1, v12) != 1)
          {
            OUTLINED_FUNCTION_13_28();
            sub_193640CE4(v82, v18, v56);
            OUTLINED_FUNCTION_19_3();
            sub_193494798(v57, v58, v59);
            sub_193640D40(v18);
            goto LABEL_19;
          }

          v38 = &qword_1EAE3F7C8;
          v39 = &qword_193975F40;
          v40 = v82;
          goto LABEL_17;
        }

        v32 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 48);
      }
    }
  }

LABEL_7:
  v33 = (v83 + v32);
  v34 = *(v83 + v32 + 8);
  if (!v34)
  {
LABEL_18:
    v41 = v84;
    *v84 = 0u;
    *(v41 + 1) = 0u;
    goto LABEL_19;
  }

  v85 = *v33;
  v86 = v34;
LABEL_9:
  sub_1934948FC();
LABEL_19:
  OUTLINED_FUNCTION_27();
}

void sub_1936406FC(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v43 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  v12 = sub_19393BD10();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_38();
  v22 = a1 == 0xD000000000000018 && v21 == a2;
  if (v22 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v23 = v3[1];
    if (v23)
    {
      v24 = *v3;
LABEL_8:
      v44 = v24;
      v45 = v23;
      sub_1934948FC();
      return;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_20_31();
  v26 = v22 && a2 == v25;
  if (v26 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v23 = v3[3];
    if (v23)
    {
      v24 = v3[2];
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v27 = a1 == 0x4C5255626577 && a2 == 0xE600000000000000;
  if (!v27 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    v33 = a1 == 0x614E6E69616D6F64 && a2 == 0xEA0000000000656DLL;
    if (v33 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v34 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0) + 28);
    }

    else
    {
      v36 = a1 == 0x686372654D626577 && a2 == 0xEF656D614E746E61;
      if (v36 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v34 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0) + 32);
      }

      else
      {
        v37 = a1 == 0x6E6564496D616461 && a2 == 0xEE00726569666974;
        if (!v37 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          v39 = v38;
          *v38 = a1;
          v38[1] = a2;
          v38[5] = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
          __swift_allocate_boxed_opaque_existential_1Tm(v39 + 2);
          OUTLINED_FUNCTION_13_28();
          sub_193640D9C(v3, v40, v41);
          *(v39 + 48) = 1;
          swift_willThrow();

          return;
        }

        v34 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0) + 36);
      }
    }

    v35 = (v3 + v34);
    v23 = *(v3 + v34 + 8);
    if (v23)
    {
      v24 = *v35;
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v28 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  sub_193448758(v3 + *(v28 + 24), v11, &qword_1EAE3ACA0, &qword_193972420);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_19344E6DC(v11, &qword_1EAE3ACA0, &qword_193972420);
LABEL_23:
    v29 = v43;
    *v43 = 0u;
    v29[1] = 0u;
    return;
  }

  v30 = *(v15 + 32);
  v31 = OUTLINED_FUNCTION_19_3();
  v32(v31);
  sub_1934948FC();
  (*(v15 + 8))(v20, v12);
}

uint64_t sub_193640AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x7475746974736E69;
  v9 = *v3;
  v8 = v3[1];
  v10 = a1 == 0x7475746974736E69 && a2 == 0xEF656D614E6E6F69;
  if (v10 || (v11 = v3[2], v12 = v3[3], v13 = v3[4], v14 = v3[5], v20 = v13, result = OUTLINED_FUNCTION_67(), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  result = 0x72756F467473616CLL;
  v15 = a1 == 0x72756F467473616CLL && a2 == 0xEE00737469676944;
  if (v15 || (result = OUTLINED_FUNCTION_67(), (result & 1) != 0))
  {
    if (v12)
    {
      return sub_1934948FC();
    }

LABEL_21:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v16 = a1 == 0xD000000000000011 && 0x8000000193A2AD70 == a2;
  if (v16 || (OUTLINED_FUNCTION_49_1(), result = OUTLINED_FUNCTION_67(), (result & 1) != 0))
  {
    if (v14)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v18 = v17;
  *v17 = a1;
  v17[1] = a2;
  v17[5] = &type metadata for WalletPaymentsCommerceTransaction.Account;
  v19 = swift_allocObject();
  v18[2] = v19;
  v19[2] = v9;
  v19[3] = v8;
  v19[4] = v11;
  v19[5] = v12;
  v19[6] = v20;
  v19[7] = v14;
  *(v18 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_193640C90(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_193640CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_193640D40(uint64_t a1)
{
  v2 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_193640D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t WalletPaymentsCommerceTransaction.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v17 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v5 = v2[8];
  sub_19344B814();
  v22 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v20 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v19 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v18 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[13];
  sub_193644CC0(v6);
  v21 = v2[14];
  sub_193644DC4();
  v23 = a1 + v2[15];
  j__OUTLINED_FUNCTION_131(v23);
  v7 = a1 + v2[16];
  OUTLINED_FUNCTION_131(v7);
  v8 = a1 + v2[17];
  j__OUTLINED_FUNCTION_131(v8);
  v9 = a1 + v2[18];
  j__OUTLINED_FUNCTION_131(v9);
  *a1 = *sub_193644794();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v17 = 0;
  v17[1] = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v10);

  *v22 = 0;
  v22[1] = 0;
  *v20 = 0;
  v20[1] = 0;
  *v19 = 0;
  v19[1] = 0;
  *v18 = 0;
  v18[1] = 0;
  v11 = *(v6 + 2);
  v12 = *(v6 + 3);
  v13 = *(v6 + 4);
  v14 = *(v6 + 5);
  sub_193640C90(*v6, *(v6 + 1));
  *v6 = xmmword_1939526A0;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  sub_19344E6DC(a1 + v21, &qword_1EAE3F7C8, &qword_193975F40);
  v15 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  result = __swift_storeEnumTagSinglePayload(a1 + v21, 1, 1, v15);
  *v23 = 0;
  *(v23 + 8) = 256;
  *v7 = 0;
  *(v7 + 8) = 256;
  *v8 = 0;
  *(v8 + 8) = 256;
  *v9 = 0;
  *(v9 + 8) = 256;
  return result;
}

uint64_t static WalletPaymentsCommerceTransaction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v151 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7C8, &qword_193975F40);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v152 = v139 - v14;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7D0, &qword_193975FB0);
  OUTLINED_FUNCTION_4_1(v153);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v154 = v139 - v18;
  v19 = sub_19393BE00();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v139 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v139 - v38;
  v40 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  v41 = v40[7];
  v42 = *(a2 + v41 + 8);
  if (*(a1 + v41 + 8))
  {
    if (!v42)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5((a1 + v41));
    v45 = v45 && v43 == v44;
    if (!v45 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    v149 = v4;
    v155 = a2;
    v46 = v40[8];
    v47 = *(v34 + 48);
    v150 = a1;
    sub_1934486F8(a1 + v46, v39, &qword_1EAE3A9E8, &qword_19394F800);
    v48 = v155 + v46;
    v49 = v155;
    sub_1934486F8(v48, &v39[v47], &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_31(v39);
    if (v45)
    {
      OUTLINED_FUNCTION_31(&v39[v47]);
      if (v45)
      {
        sub_19344E6DC(v39, &qword_1EAE3A9E8, &qword_19394F800);
        goto LABEL_23;
      }
    }

    else
    {
      sub_1934486F8(v39, v33, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_31(&v39[v47]);
      if (!v50)
      {
        (*(v22 + 32))(v27, &v39[v47], v19);
        OUTLINED_FUNCTION_9_54();
        sub_1936421C0(v55, v56);
        v57 = sub_19393C550();
        v58 = *(v22 + 8);
        v58(v27, v19);
        v58(v33, v19);
        sub_19344E6DC(v39, &qword_1EAE3A9E8, &qword_19394F800);
        if ((v57 & 1) == 0)
        {
          return 0;
        }

LABEL_23:
        v59 = v40[9];
        v60 = v150;
        OUTLINED_FUNCTION_5_47();
        if (v63)
        {
          if (!v61)
          {
            return 0;
          }

          OUTLINED_FUNCTION_5(v62);
          v66 = v45 && v64 == v65;
          if (!v66 && (sub_19393CA30() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v61)
        {
          return 0;
        }

        v67 = v40[10];
        OUTLINED_FUNCTION_5_47();
        if (v70)
        {
          if (!v68)
          {
            return 0;
          }

          OUTLINED_FUNCTION_5(v69);
          v73 = v45 && v71 == v72;
          if (!v73 && (sub_19393CA30() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v68)
        {
          return 0;
        }

        v74 = v40[11];
        OUTLINED_FUNCTION_5_47();
        if (v77)
        {
          if (!v75)
          {
            return 0;
          }

          OUTLINED_FUNCTION_5(v76);
          v80 = v45 && v78 == v79;
          if (!v80 && (sub_19393CA30() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v75)
        {
          return 0;
        }

        v81 = v40[12];
        OUTLINED_FUNCTION_5_47();
        if (v84)
        {
          if (!v82)
          {
            return 0;
          }

          OUTLINED_FUNCTION_5(v83);
          v87 = v45 && v85 == v86;
          if (!v87 && (sub_19393CA30() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v82)
        {
          return 0;
        }

        v88 = v40[13];
        v90 = *(v60 + v88);
        v89 = *(v60 + v88 + 8);
        v92 = *(v60 + v88 + 16);
        v91 = *(v60 + v88 + 24);
        v93 = *(v60 + v88 + 32);
        v94 = *(v60 + v88 + 40);
        v95 = (v49 + v88);
        v96 = *v95;
        v97 = v95[1];
        v98 = v95[2];
        v99 = v95[3];
        v101 = v95[4];
        v100 = v95[5];
        v146 = v101;
        v147 = v100;
        v148 = v96;
        if (v89 == 1)
        {
          v145 = v98;
          v144 = 1;
          OUTLINED_FUNCTION_27_22(v90, 1);
          if (v97 == 1)
          {
            sub_193641A34(v148, 1);
            OUTLINED_FUNCTION_13_29();
            sub_193640C90(v102, v103);
            goto LABEL_67;
          }

          OUTLINED_FUNCTION_24_26();
          sub_193641A34(v109, v110);
        }

        else
        {
          v162 = v90;
          v163 = v89;
          v164 = v92;
          v165 = v91;
          v166 = v93;
          v167 = v94;
          if (v97 != 1)
          {
            v156 = v96;
            v157 = v97;
            v158 = v98;
            v159 = v99;
            v139[1] = v99;
            v160 = v146;
            v161 = v147;
            v140 = v90;
            v113 = v90;
            v114 = v89;
            v141 = v92;
            v139[2] = v91;
            v143 = v93;
            v142 = v94;
            sub_193641A34(v113, v89);
            sub_193641A34(v148, v97);
            v115 = v140;
            sub_193641A34(v140, v114);
            sub_193641C3C();
            v116 = OUTLINED_FUNCTION_19_36();

            sub_193640C90(v115, v114);
            if ((v116 & 1) == 0)
            {
              return 0;
            }

LABEL_67:
            v117 = v40[14];
            v118 = v154;
            v119 = *(v153 + 48);
            sub_1934486F8(v60 + v117, v154, &qword_1EAE3F7C8, &qword_193975F40);
            sub_1934486F8(v49 + v117, v118 + v119, &qword_1EAE3F7C8, &qword_193975F40);
            if (__swift_getEnumTagSinglePayload(v118, 1, v149) == 1)
            {
              OUTLINED_FUNCTION_31(v118 + v119);
              if (!v45)
              {
                goto LABEL_74;
              }

              sub_19344E6DC(v118, &qword_1EAE3F7C8, &qword_193975F40);
            }

            else
            {
              v120 = v152;
              sub_1934486F8(v118, v152, &qword_1EAE3F7C8, &qword_193975F40);
              OUTLINED_FUNCTION_31(v118 + v119);
              if (v45)
              {
                sub_193640D40(v120);
LABEL_74:
                v51 = &qword_1EAE3F7D0;
                v52 = &qword_193975FB0;
                v53 = v118;
                goto LABEL_19;
              }

              v121 = v118 + v119;
              v122 = v151;
              sub_193641BD8(v121, v151);
              OUTLINED_FUNCTION_8_41();
              sub_1936421C0(v123, v124);
              v125 = sub_19393C550();
              sub_193640D40(v122);
              sub_193640D40(v120);
              sub_19344E6DC(v118, &qword_1EAE3F7C8, &qword_193975F40);
              if ((v125 & 1) == 0)
              {
                return 0;
              }
            }

            OUTLINED_FUNCTION_15_36(v40[15]);
            if (v127)
            {
              if ((v126 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              OUTLINED_FUNCTION_1_53();
              if (v128)
              {
                return 0;
              }

              OUTLINED_FUNCTION_14_33();
              sub_193641B84();
              if ((OUTLINED_FUNCTION_19_36() & 1) == 0)
              {
                return 0;
              }
            }

            OUTLINED_FUNCTION_15_36(v40[16]);
            if (v130)
            {
              if ((v129 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              OUTLINED_FUNCTION_1_53();
              if (v131)
              {
                return 0;
              }

              OUTLINED_FUNCTION_14_33();
              sub_193641B30();
              if ((OUTLINED_FUNCTION_19_36() & 1) == 0)
              {
                return 0;
              }
            }

            OUTLINED_FUNCTION_15_36(v40[17]);
            if (v133)
            {
              if ((v132 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              OUTLINED_FUNCTION_1_53();
              if (v134)
              {
                return 0;
              }

              OUTLINED_FUNCTION_14_33();
              sub_193641ADC();
              if ((OUTLINED_FUNCTION_19_36() & 1) == 0)
              {
                return 0;
              }
            }

            v135 = v40[18];
            v136 = *(v150 + v135 + 9);
            v137 = *(v155 + v135 + 9);
            if (v136)
            {
              if ((v137 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              OUTLINED_FUNCTION_1_53();
              if (v138)
              {
                return 0;
              }

              OUTLINED_FUNCTION_14_33();
              sub_193641A88();
              if ((OUTLINED_FUNCTION_19_36() & 1) == 0)
              {
                return 0;
              }
            }

            return 1;
          }

          v104 = v98;
          OUTLINED_FUNCTION_27_22(v90, v89);
          v145 = v104;
          OUTLINED_FUNCTION_24_26();
          sub_193641A34(v105, v106);
          OUTLINED_FUNCTION_13_29();
          sub_193641A34(v107, v108);
        }

        OUTLINED_FUNCTION_13_29();
        sub_193640C90(v111, v112);
        sub_193640C90(v148, v97);
        return 0;
      }

      (*(v22 + 8))(v33, v19);
    }

    v51 = &qword_1EAE3B968;
    v52 = &qword_193972430;
    v53 = v39;
LABEL_19:
    sub_19344E6DC(v53, v51, v52);
    return 0;
  }

  if (!v42)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_193641A34(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_193641A88()
{
  result = qword_1EAE3F7D8;
  if (!qword_1EAE3F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F7D8);
  }

  return result;
}

unint64_t sub_193641ADC()
{
  result = qword_1EAE3F7E0;
  if (!qword_1EAE3F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F7E0);
  }

  return result;
}

unint64_t sub_193641B30()
{
  result = qword_1EAE3F7E8;
  if (!qword_1EAE3F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F7E8);
  }

  return result;
}

unint64_t sub_193641B84()
{
  result = qword_1EAE3F7F0;
  if (!qword_1EAE3F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F7F0);
  }

  return result;
}

uint64_t sub_193641BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_193641C3C()
{
  result = qword_1EAE3F800;
  if (!qword_1EAE3F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F800);
  }

  return result;
}

uint64_t WalletPaymentsCommerceTransaction.hash(into:)()
{
  v1 = v0;
  v54 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  v2 = OUTLINED_FUNCTION_4_1(v54);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v52 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7C8, &qword_193975F40);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v51 - v11;
  v12 = sub_19393BE00();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  v27 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  v28 = (v0 + v27[7]);
  v29 = v28[1];
  if (v29)
  {
    OUTLINED_FUNCTION_7_1(v28);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934486F8(v0 + v27[8], v26, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v26, 1, v12) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v15 + 32))(v20, v26, v12);
    sub_19393CAD0();
    OUTLINED_FUNCTION_9_54();
    sub_1936421C0(v30, v31);
    sub_19393C540();
    (*(v15 + 8))(v20, v12);
  }

  OUTLINED_FUNCTION_5_0(v27[9]);
  if (v29)
  {
    OUTLINED_FUNCTION_7_1(v32);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v27[10]);
  if (v29)
  {
    OUTLINED_FUNCTION_7_1(v33);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v27[11]);
  if (v29)
  {
    OUTLINED_FUNCTION_7_1(v34);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v27[12]);
  if (v29)
  {
    OUTLINED_FUNCTION_7_1(v35);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v36 = (v0 + v27[13]);
  v37 = v36[1];
  if (v37 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v38 = v36[5];
    v39 = v36[2];
    v55 = *v36;
    v56 = v37;
    v57 = v39;
    v51 = *(v36 + 3);
    v58 = v51;
    v59 = v38;
    sub_19393CAD0();
    sub_19364216C();

    OUTLINED_FUNCTION_25_26();
    sub_19393C540();
  }

  v40 = v53;
  v41 = v54;
  sub_1934486F8(v1 + v27[14], v53, &qword_1EAE3F7C8, &qword_193975F40);
  if (__swift_getEnumTagSinglePayload(v40, 1, v41) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v42 = v52;
    sub_193641BD8(v40, v52);
    sub_19393CAD0();
    OUTLINED_FUNCTION_8_41();
    sub_1936421C0(v43, v44);
    sub_19393C540();
    sub_193640D40(v42);
  }

  OUTLINED_FUNCTION_100(v27[15]);
  if (v46)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_48(v45);
    sub_193642208();
    OUTLINED_FUNCTION_25_26();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_100(v27[16]);
  if (v46)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_48(v47);
    sub_19364225C();
    OUTLINED_FUNCTION_25_26();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_100(v27[17]);
  if (v46)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_48(v48);
    sub_1936422B0();
    OUTLINED_FUNCTION_25_26();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_100(v27[18]);
  if (v46)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_3_48(v49);
  sub_193642304();
  OUTLINED_FUNCTION_25_26();
  return sub_19393C540();
}

unint64_t sub_19364216C()
{
  result = qword_1EAE3F808;
  if (!qword_1EAE3F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F808);
  }

  return result;
}

uint64_t sub_1936421C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_193642208()
{
  result = qword_1EAE3F818;
  if (!qword_1EAE3F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F818);
  }

  return result;
}

unint64_t sub_19364225C()
{
  result = qword_1EAE3F820;
  if (!qword_1EAE3F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F820);
  }

  return result;
}

unint64_t sub_1936422B0()
{
  result = qword_1EAE3F828;
  if (!qword_1EAE3F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F828);
  }

  return result;
}

unint64_t sub_193642304()
{
  result = qword_1EAE3F830;
  if (!qword_1EAE3F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F830);
  }

  return result;
}

void WalletPaymentsCommerceTransaction.TransactionSource.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

char *static WalletPaymentsCommerceTransaction.TransactionSource.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F870, &qword_193976138);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    v15 = sub_1934B0FCC(v13, v2 + 1, 1, v14, &qword_1EAE3F870, &qword_193976138);
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
    v18 = sub_1934B0FCC(v16, v2 + 2, 1, v17, &qword_1EAE3F870, &qword_193976138);
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
    v0 = sub_1934B0FCC(v19, v2 + 3, 1, v20, &qword_1EAE3F870, &qword_193976138);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v21 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934B0FCC(v21, v2 + 4, 1, v22, &qword_1EAE3F870, &qword_193976138);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

uint64_t WalletPaymentsCommerceTransaction.TransactionSource.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  v1 = 0x7961507070416E49;
  if (*v0 != 1)
  {
    v1 = 0x656D796150626557;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t WalletPaymentsCommerceTransaction.TransactionSource.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  v8 = v2 == 0xD000000000000014 && 0x8000000193A2AD90 == v1;
  if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  v9 = v2 == 0x7961507070416E49 && v1 == 0xEC000000746E656DLL;
  if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 1;
    goto LABEL_13;
  }

  if (v2 == 0x656D796150626557 && v1 == 0xEA0000000000746ELL)
  {

    v7 = 1;
    v6 = 2;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v6 = 2;
    if ((v7 & 1) == 0)
    {
      v6 = 0;
    }
  }

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.AccountType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    result = 0x6E6E6F436B6E6142;
  }

  else
  {
    result = 0x79617764616F7242;
  }

  *v0;
  return result;
}

void WalletPaymentsCommerceTransaction.AccountType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x79617764616F7242 ? (v4 = v0 == 0xE800000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x6E6E6F436B6E6142 && v0 == 0xEB00000000746365)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t WalletPaymentsCommerceTransaction.TransactionStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    result = 0x6465766F72707041;
  }

  else
  {
    result = 0x676E69646E6550;
  }

  *v0;
  return result;
}

void WalletPaymentsCommerceTransaction.TransactionStatus.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x676E69646E6550 ? (v4 = v0 == 0xE700000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x6465766F72707041 && v0 == 0xE800000000000000)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void WalletPaymentsCommerceTransaction.TransactionType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t WalletPaymentsCommerceTransaction.TransactionType.rawValue.getter()
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

uint64_t WalletPaymentsCommerceTransaction.TransactionType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    result = 0x646E75666552;
  }

  else
  {
    result = 0x6573616863727550;
  }

  *v0;
  return result;
}

void WalletPaymentsCommerceTransaction.TransactionType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x6573616863727550 ? (v4 = v0 == 0xE800000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x646E75666552 && v0 == 0xE600000000000000)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_12_1(v5);
}

unint64_t sub_193642B20()
{
  result = qword_1EAE3F838;
  if (!qword_1EAE3F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F838);
  }

  return result;
}

unint64_t sub_193642B78()
{
  result = qword_1EAE3F840;
  if (!qword_1EAE3F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F840);
  }

  return result;
}

unint64_t sub_193642BD0()
{
  result = qword_1EAE3F848;
  if (!qword_1EAE3F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F848);
  }

  return result;
}

unint64_t sub_193642C28()
{
  result = qword_1EAE3F850;
  if (!qword_1EAE3F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F850);
  }

  return result;
}

void sub_193642C8C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB858);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v42, xmmword_1939526C0);
  *v1 = 1;
  *v0 = "amount";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v11 = 2;
  v12 = OUTLINED_FUNCTION_5_4(v10, "transactionDate");
  (v9)(v12);
  OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  OUTLINED_FUNCTION_39_7(v13);
  v15 = OUTLINED_FUNCTION_5_4(v14, "transactionID");
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_44(3 * v5);
  *v17 = 4;
  *v16 = "currencyCode";
  v16[1] = 12;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v20 = 5;
  v21 = OUTLINED_FUNCTION_5_4(v19, "transactionDescription");
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_44(5 * v5);
  *v23 = 6;
  *v22 = "timeZone";
  v22[1] = 8;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v26 = 7;
  v27 = OUTLINED_FUNCTION_5_4(v25, "account");
  (v9)(v27);
  v28 = OUTLINED_FUNCTION_44(7 * v5);
  *v29 = 8;
  *v28 = "merchant";
  v28[1] = 8;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v9)(v30);
  v31 = OUTLINED_FUNCTION_3_1(&v1[v5]);
  *v32 = 9;
  v33 = OUTLINED_FUNCTION_5_4(v31, "transactionSource");
  (v9)(v33);
  v34 = OUTLINED_FUNCTION_44(9 * v5);
  *v35 = 10;
  *v34 = "accountType";
  v34[1] = 11;
  v36 = OUTLINED_FUNCTION_41(v34);
  (v9)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v1 + 10 * v5);
  *v38 = 11;
  *v37 = "transactionStatus";
  v37[1] = 17;
  v39 = OUTLINED_FUNCTION_41(v37);
  (v9)(v39);
  v40 = OUTLINED_FUNCTION_3_1(v1 + 11 * v5);
  *v41 = 12;
  *v40 = "transactionType";
  *(v40 + 8) = 15;
  *(v40 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193642FB4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  v1 = &type metadata for WalletPaymentsCommerceTransaction.Account;
  v2 = &off_1F07DA428;
  v3 = &off_1F07DA3F8;
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        v6 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 28);
        goto LABEL_14;
      case 2:
        v16 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 32);
        sub_1934976E4();
        goto LABEL_20;
      case 3:
        v10 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 36);
        goto LABEL_14;
      case 4:
        v11 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 40);
        goto LABEL_14;
      case 5:
        v8 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 44);
        goto LABEL_14;
      case 6:
        v17 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 48);
LABEL_14:
        sub_19393C200();
        goto LABEL_20;
      case 7:
        v18 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
        OUTLINED_FUNCTION_160(*(v18 + 52));
        goto LABEL_16;
      case 8:
        v12 = v3;
        v13 = v2;
        v14 = v1;
        v15 = *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 56);
        type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
        v1 = v14;
        v2 = v13;
        v3 = v12;
LABEL_16:
        sub_193498018();
        goto LABEL_20;
      case 9:
        v20 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
        OUTLINED_FUNCTION_160(*(v20 + 60));
        goto LABEL_19;
      case 10:
        v9 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
        OUTLINED_FUNCTION_160(*(v9 + 64));
        goto LABEL_19;
      case 11:
        v19 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
        OUTLINED_FUNCTION_160(*(v19 + 68));
        goto LABEL_19;
      case 12:
        v7 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
        OUTLINED_FUNCTION_160(*(v7 + 72));
LABEL_19:
        sub_1934982A8();
LABEL_20:
        v0 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936431FC()
{
  v2 = v1;
  OUTLINED_FUNCTION_22_0();
  v3 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  OUTLINED_FUNCTION_16_4(v3[7]);
  if (v5)
  {
    v6 = *v4;
    OUTLINED_FUNCTION_2_7();
    v2 = v1;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_79();
    sub_193643438();
    if (!v1)
    {
      OUTLINED_FUNCTION_16_4(v3[9]);
      if (v8)
      {
        v9 = *v7;
        OUTLINED_FUNCTION_2_7();
      }

      OUTLINED_FUNCTION_16_4(v3[10]);
      if (v11)
      {
        v12 = *v10;
        OUTLINED_FUNCTION_2_7();
      }

      OUTLINED_FUNCTION_16_4(v3[11]);
      if (v14)
      {
        v15 = *v13;
        OUTLINED_FUNCTION_2_7();
      }

      OUTLINED_FUNCTION_16_4(v3[12]);
      if (v17)
      {
        v18 = *v16;
        OUTLINED_FUNCTION_2_7();
      }

      v19 = v0 + v3[13];
      if (*(v19 + 8) != 1)
      {
        v60 = *v19;
        v61 = *(v19 + 8);
        v62 = *(v19 + 16);
        v63 = *(v19 + 32);
        OUTLINED_FUNCTION_78_1();
        sub_193447600();
      }

      v20 = OUTLINED_FUNCTION_79();
      sub_1936435E4(v20, v21, v22, v23, v24, v25, v26, v27, v60, v61, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69);
      OUTLINED_FUNCTION_238(v3[15]);
      if ((v29 & 1) == 0)
      {
        OUTLINED_FUNCTION_147(v28);
        OUTLINED_FUNCTION_78_1();
        sub_193447324(v30, v31, v32, v33, v34, v35);
      }

      OUTLINED_FUNCTION_238(v3[16]);
      if ((v37 & 1) == 0)
      {
        OUTLINED_FUNCTION_147(v36);
        OUTLINED_FUNCTION_78_1();
        sub_193447324(v38, v39, v40, v41, v42, v43);
      }

      OUTLINED_FUNCTION_238(v3[17]);
      if ((v45 & 1) == 0)
      {
        OUTLINED_FUNCTION_147(v44);
        OUTLINED_FUNCTION_78_1();
        sub_193447324(v46, v47, v48, v49, v50, v51);
      }

      OUTLINED_FUNCTION_238(v3[18]);
      if ((v53 & 1) == 0)
      {
        OUTLINED_FUNCTION_147(v52);
        OUTLINED_FUNCTION_78_1();
        sub_193447324(v54, v55, v56, v57, v58, v59);
      }
    }
  }
}

void sub_193643438()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19[-v8];
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v19[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  sub_1934486F8(v1 + *(v18 + 32), v9, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v9, 1, v0) == 1)
  {
    sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    (*(v13 + 32))(v17, v9, v0);
    sub_193451F04(v17, 2, 26211, 0xE200000000000000);
    (*(v13 + 8))(v17, v0);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936435E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F7C8, &qword_193975F40);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &a9 - v28;
  v30 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  v31 = OUTLINED_FUNCTION_4_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = OUTLINED_FUNCTION_37();
  v35 = type metadata accessor for WalletPaymentsCommerceTransaction(v34);
  sub_1934486F8(v25 + *(v35 + 56), v29, &qword_1EAE3F7C8, &qword_193975F40);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_19344E6DC(v29, &qword_1EAE3F7C8, &qword_193975F40);
  }

  else
  {
    sub_193641BD8(v29, v20);
    sub_193447600();
    sub_193640D40(v20);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936437A8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB870);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "TransactionSourceUnknown";
  *(v0 + 8) = 24;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_3_1(v1 + v5);
  OUTLINED_FUNCTION_69_6(v11);
  *v12 = "TransactionSourceContactlessInterface";
  *(v12 + 8) = 37;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 2;
  *v13 = "TransactionSourceInAppPayment";
  *(v13 + 8) = 29;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_44(3 * v5);
  OUTLINED_FUNCTION_39_7(v15);
  *v16 = "TransactionSourceWebPayment";
  *(v16 + 8) = 27;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193643998()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB888);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("AccountTypeUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_3_1(v0 + v5);
  OUTLINED_FUNCTION_69_6(v11);
  *v12 = "AccountTypeBroadway";
  *(v12 + 8) = 19;
  *(v12 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v14 = v1;
  *v13 = "AccountTypeBankConnect";
  *(v13 + 8) = 22;
  *(v13 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193643B40()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB8A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v1 = 0;
  *v0 = "TransactionStatusUnknown";
  *(v0 + 8) = 24;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_3_1(v1 + v5);
  OUTLINED_FUNCTION_69_6(v11);
  *v12 = "TransactionStatusPending";
  *(v12 + 8) = 24;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 2;
  *v13 = "TransactionStatusApproved";
  *(v13 + 8) = 25;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193643CF0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB8B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("TransactionTypeUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_3_1(v0 + v5);
  OUTLINED_FUNCTION_69_6(v11);
  *v12 = "TransactionTypePurchase";
  *(v12 + 8) = 23;
  *(v12 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v14 = v1;
  *v13 = "TransactionTypeRefund";
  *(v13 + 8) = 21;
  *(v13 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193643E98()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB8D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v6, xmmword_1939526E0);
  *v1 = 1;
  *v0 = "merchantUniqueIdentifier";
  *(v0 + 8) = 24;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_5_4(v11, "merchantName");
  (v10)(v13);
  OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  OUTLINED_FUNCTION_39_7(v14);
  *v15 = "webURL";
  v15[1] = 6;
  v16 = OUTLINED_FUNCTION_41(v15);
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_44(3 * v5);
  *v18 = 4;
  v19 = OUTLINED_FUNCTION_5_4(v17, "domainName");
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v21 = 5;
  v22 = OUTLINED_FUNCTION_5_4(v20, "webMerchantName");
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_44(5 * v5);
  *v24 = 6;
  *v23 = "adamIdentifier";
  *(v23 + 8) = 14;
  *(v23 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936440B0()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        goto LABEL_9;
      case 3:
        v4 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
        v5 = OUTLINED_FUNCTION_160(*(v4 + 24));
        sub_19349780C(v5);
        goto LABEL_10;
      case 4:
        v6 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0) + 28);
        goto LABEL_9;
      case 5:
        v3 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0) + 32);
        goto LABEL_9;
      case 6:
        v7 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0) + 36);
LABEL_9:
        sub_19393C200();
LABEL_10:
        v0 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1936441A4()
{
  v2 = v1;
  OUTLINED_FUNCTION_22_0();
  if (v0[1])
  {
    v3 = *v0;
    OUTLINED_FUNCTION_2_7();
    v2 = v1;
  }

  if (!v2)
  {
    if (!v0[3] || (v4 = v0[2], OUTLINED_FUNCTION_2_7(), !v1))
    {
      v5 = OUTLINED_FUNCTION_79();
      sub_193644294(v5, v6, v7, v8, v9, v10, v11, v12, v23, v24);
      if (!v1)
      {
        v13 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
        OUTLINED_FUNCTION_16_4(v13[7]);
        if (v15)
        {
          v16 = *v14;
          OUTLINED_FUNCTION_2_7();
        }

        OUTLINED_FUNCTION_16_4(v13[8]);
        if (v18)
        {
          v19 = *v17;
          OUTLINED_FUNCTION_2_7();
        }

        OUTLINED_FUNCTION_16_4(v13[9]);
        if (v21)
        {
          v22 = *v20;
          OUTLINED_FUNCTION_2_7();
        }
      }
    }
  }
}

void sub_193644294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v14, v15, v16, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - v20;
  v22 = sub_19393BD10();
  v23 = OUTLINED_FUNCTION_76(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v28 = OUTLINED_FUNCTION_37();
  v29 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v28);
  sub_1934486F8(v13 + *(v29 + 24), v21, &qword_1EAE3ACA0, &qword_193972420);
  if (__swift_getEnumTagSinglePayload(v21, 1, v11) == 1)
  {
    sub_19344E6DC(v21, &qword_1EAE3ACA0, &qword_193972420);
  }

  else
  {
    (*(v25 + 32))(v12, v21, v11);
    sub_19349881C(v12, 3, v10, a10);
    (*(v25 + 8))(v12, v11);
  }

  OUTLINED_FUNCTION_27();
}

void sub_193644488()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB8E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("institutionName");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v12 = v1;
  *v11 = "lastFourDigits";
  *(v11 + 8) = 14;
  *(v11 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  OUTLINED_FUNCTION_39_7(v13);
  *v14 = "accountIdentifier";
  *(v14 + 8) = 17;
  *(v14 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193644608()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_19393C200();
    }
  }

  return result;
}

uint64_t sub_193644684()
{
  v2 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  if (v0[1])
  {
    v6 = *v0;
    result = sub_19393C3C0();
  }

  if (!v1)
  {
    if (v4)
    {
      result = sub_19393C3C0();
    }

    if (v5)
    {
      return sub_19393C3C0();
    }
  }

  return result;
}

uint64_t WalletPaymentsCommerceTransaction.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t WalletPaymentsCommerceTransaction.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t WalletPaymentsCommerceTransaction.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t WalletPaymentsCommerceTransaction.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t WalletPaymentsCommerceTransaction.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.amount.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.transactionDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 32));
}

uint64_t WalletPaymentsCommerceTransaction.transactionDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 32));
}

uint64_t WalletPaymentsCommerceTransaction.transactionDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.transactionID.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.currencyCode.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTransaction.currencyCode.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceTransaction(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.currencyCode.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.transactionDescription.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 44));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTransaction.transactionDescription.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceTransaction(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.transactionDescription.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.timeZone.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceTransaction(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 48));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTransaction.timeZone.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceTransaction(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.timeZone.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 48);
  return OUTLINED_FUNCTION_1_4();
}

double sub_193644CC0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1939526A0;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.account.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceTransaction(v2) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v9;

  return sub_193641A34(v4, v5);
}

__n128 WalletPaymentsCommerceTransaction.account.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (v1 + *(type metadata accessor for WalletPaymentsCommerceTransaction(0) + 52));
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  sub_193640C90(*v5, v5[1]);
  result = *a1;
  v11 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v11;
  v5[4] = v3;
  v5[5] = v4;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.account.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193644DC4()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t WalletPaymentsCommerceTransaction.merchant.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3F7C8, &qword_193975F40, *(v1 + 56));
}

uint64_t WalletPaymentsCommerceTransaction.merchant.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3F7C8, &qword_193975F40, *(v1 + 56));
}

uint64_t WalletPaymentsCommerceTransaction.merchant.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 56);
  return OUTLINED_FUNCTION_1_4();
}

void WalletPaymentsCommerceTransaction.transactionSource.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 60));
}

uint64_t WalletPaymentsCommerceTransaction.transactionSource.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 60);
  return OUTLINED_FUNCTION_1_4();
}

void WalletPaymentsCommerceTransaction.accountType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 64));
}

uint64_t WalletPaymentsCommerceTransaction.accountType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 64);
  return OUTLINED_FUNCTION_1_4();
}

void WalletPaymentsCommerceTransaction.transactionStatus.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 68));
}

uint64_t WalletPaymentsCommerceTransaction.transactionStatus.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 68);
  return OUTLINED_FUNCTION_1_4();
}

void WalletPaymentsCommerceTransaction.transactionType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 72));
}

uint64_t WalletPaymentsCommerceTransaction.transactionType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction(v0) + 72);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19364514C@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTransaction.TransactionSource.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193645174@<X0>(char **a1@<X8>)
{
  result = static WalletPaymentsCommerceTransaction.TransactionSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936451CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1936452D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1936453D4@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTransaction.AccountType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936453FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static WalletPaymentsCommerceTransaction.AccountType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1936454EC@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTransaction.TransactionStatus.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193645514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static WalletPaymentsCommerceTransaction.TransactionStatus.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_193645604@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTransaction.TransactionType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19364562C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static WalletPaymentsCommerceTransaction.TransactionType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.merchantUniqueIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.merchantUniqueIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_193645794@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTransaction.Merchant.merchantUniqueIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1936457C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return WalletPaymentsCommerceTransaction.Merchant.merchantUniqueIdentifier.setter();
}

uint64_t (*WalletPaymentsCommerceTransaction.Merchant.merchantUniqueIndentifier.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_193645850;
}

uint64_t sub_193645850(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *v5 = v3;
    v5[1] = v2;
  }

  else
  {
    v8 = a1[3];

    *v5 = v3;
    v5[1] = v2;
  }

  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.merchantName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.merchantName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.webURL.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t _s27IntelligencePlatformLibrary33WalletPaymentsCommerceTransactionV8MerchantV6webURL10Foundation0J0VSgvg_0()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3ACA0, &qword_193972420, *(v1 + 24));
}

uint64_t sub_1936459E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - v4;
  sub_193448804(a1, &v7 - v4, &qword_1EAE3ACA0, &qword_193972420);
  return WalletPaymentsCommerceTransaction.Merchant.webURL.setter(v5);
}

uint64_t _s27IntelligencePlatformLibrary33WalletPaymentsCommerceTransactionV8MerchantV6webURL10Foundation0J0VSgvs_0()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3ACA0, &qword_193972420, *(v1 + 24));
}

void (*WalletPaymentsCommerceTransaction.Merchant.originURL.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v4 = __swift_coroFrameAllocStub(*(*(v3 - 8) + 64));
  *(a1 + 8) = v4;
  v5 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0) + 24);
  *(a1 + 16) = v5;
  sub_193448804(v1 + v5, v4, &qword_1EAE3ACA0, &qword_193972420);
  return sub_193645B7C;
}

void sub_193645B7C(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_19344542C(v1, *a1 + *(a1 + 16), &qword_1EAE3ACA0, &qword_193972420);

  free(v1);
}

uint64_t sub_193645BE8(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_4_4(*(v1 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_193645C38()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_201(*(v5 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.domainName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.webMerchantName.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.webMerchantName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.webMerchantName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193645D74(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_4_4(*(v1 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_193645DC4()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_201(*(v5 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.adamIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(v1);
  v3 = v2[6];
  sub_19393BD10();
  OUTLINED_FUNCTION_165();
  v4 = (v0 + v2[7]);
  v5 = (v0 + v2[8]);
  v6 = (v0 + v2[9]);
  *v0 = 0u;
  v0[1] = 0u;
  sub_19344E6DC(v0 + v3, &qword_1EAE3ACA0, &qword_193972420);
  result = OUTLINED_FUNCTION_165();
  *v4 = 0;
  v4[1] = 0;
  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t static WalletPaymentsCommerceTransaction.Merchant.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48_1();
  v2 = sub_19393BD10();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F118, &qword_193972428);
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v57 - v18;
  v20 = v1[1];
  v21 = v0[1];
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    v22 = *v1 == *v0 && v20 == v21;
    if (!v22 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v23 = v1[3];
  v24 = v0[3];
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    v25 = v1[2] == v0[2] && v23 == v24;
    if (!v25 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v58 = v5;
  v57 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  v26 = *(v57 + 24);
  v27 = *(v14 + 48);
  sub_193448804(v1 + v26, v19, &qword_1EAE3ACA0, &qword_193972420);
  sub_193448804(v0 + v26, &v19[v27], &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_31(v19);
  if (!v22)
  {
    sub_193448804(v19, v13, &qword_1EAE3ACA0, &qword_193972420);
    OUTLINED_FUNCTION_31(&v19[v27]);
    if (!v28)
    {
      v30 = v58;
      (*(v58 + 32))(v9, &v19[v27], v2);
      OUTLINED_FUNCTION_11_32();
      sub_19364654C(v31, v32);
      v33 = sub_19393C550();
      v34 = *(v30 + 8);
      v34(v9, v2);
      v34(v13, v2);
      sub_19344E6DC(v19, &qword_1EAE3ACA0, &qword_193972420);
      if ((v33 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_31;
    }

    (*(v58 + 8))(v13, v2);
LABEL_27:
    sub_19344E6DC(v19, &qword_1EAE3F118, &qword_193972428);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v19[v27]);
  if (!v22)
  {
    goto LABEL_27;
  }

  sub_19344E6DC(v19, &qword_1EAE3ACA0, &qword_193972420);
LABEL_31:
  v35 = v57;
  v36 = *(v57 + 28);
  OUTLINED_FUNCTION_3();
  if (v39)
  {
    if (!v37)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v38);
    v42 = v22 && v40 == v41;
    if (!v42 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v43 = *(v35 + 32);
  OUTLINED_FUNCTION_3();
  if (v46)
  {
    if (!v44)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v45);
    v49 = v22 && v47 == v48;
    if (!v49 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v50 = *(v35 + 36);
  OUTLINED_FUNCTION_3();
  if (v53)
  {
    if (v51)
    {
      OUTLINED_FUNCTION_5(v52);
      v56 = v22 && v54 == v55;
      if (v56 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v51)
  {
    return 1;
  }

  return 0;
}

uint64_t WalletPaymentsCommerceTransaction.Merchant.hash(into:)()
{
  OUTLINED_FUNCTION_3_4();
  v1 = sub_19393BD10();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  if (v0[1])
  {
    v13 = *v0;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v0[3])
  {
    v14 = v0[2];
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v15 = type metadata accessor for WalletPaymentsCommerceTransaction.Merchant(0);
  sub_193448804(v0 + v15[6], v12, &qword_1EAE3ACA0, &qword_193972420);
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_11_32();
    sub_19364654C(v16, v17);
    sub_19393C540();
    (*(v4 + 8))(v8, v1);
  }

  v18 = (v0 + v15[7]);
  if (v18[1])
  {
    v19 = *v18;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v20 = (v0 + v15[8]);
  if (v20[1])
  {
    v21 = *v20;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v22 = (v0 + v15[9]);
  if (!v22[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v23 = *v22;
  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t sub_19364654C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WalletPaymentsCommerceTransaction.Account.institutionName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTransaction.Account.institutionName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Account.lastFourDigits.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTransaction.Account.lastFourDigits.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTransaction.Account.accountIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTransaction.Account.accountIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceTransaction.Account.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceTransaction::Account *__return_ptr retstr)
{
  retstr->lastFourDigits = 0u;
  retstr->accountIdentifier = 0u;
  retstr->institutionName = 0u;
}

uint64_t static WalletPaymentsCommerceTransaction.Account.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = *a1 == *a2 && v3 == v8;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = v4 == v9 && v6 == v11;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12)
    {
      if (v5 == v10 && v7 == v12)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t WalletPaymentsCommerceTransaction.Account.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_19393CAD0();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_19393CAD0();
    if (v4)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_19393CAD0();
  sub_19393C640();
  if (!v4)
  {
    return sub_19393CAD0();
  }

LABEL_4:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t WalletPaymentsCommerceTransaction.Account.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v4)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v6)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_193646A18()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_19393CAB0();
  WalletPaymentsCommerceTransaction.Account.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193646A84(void (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_193646AEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_193646CC0()
{
  sub_193646EB0(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED508290);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_19349D1FC(319, &qword_1ED503EC0);
      OUTLINED_FUNCTION_4_0();
      if (!(!v2 & v1))
      {
        sub_193646EB0(319, qword_1ED503CA0, type metadata accessor for WalletPaymentsCommerceTransaction.Merchant);
        OUTLINED_FUNCTION_4_0();
        if (!(!v2 & v1))
        {
          sub_19349D1FC(319, &qword_1ED503CF0);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            sub_19349D1FC(319, &qword_1ED503CE0);
            OUTLINED_FUNCTION_4_0();
            if (!(!v2 & v1))
            {
              sub_19349D1FC(319, &qword_1ED503CE8);
              OUTLINED_FUNCTION_4_0();
              if (!(!v2 & v1))
              {
                sub_19349D1FC(319, &qword_1ED503CF8);
                OUTLINED_FUNCTION_4_0();
                if (!(!v2 & v1))
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_193646EB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_193646F6C()
{
  sub_19349D1FC(319, &qword_1ED508290);
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_193646EB0(319, qword_1ED504400, MEMORY[0x1E6968FB0]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_193647030(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19364707C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_193647118()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5111D8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5111D8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.WalletPaymentsCommerce.FoundIn.ExtractedOrder.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:*MEMORY[0x1E698F100]];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x80000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_34 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5111D8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F8F0, &qword_193976840);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 1, 0, 0, 0xD000000000000012, 0x8000000193A28CA0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.WalletPaymentsCommerce.FoundIn.ExtractedOrder.attribute(_:)(void (*a1)(void))
{
  result = sub_193647554(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193647590(void (*a1)(void))
{
  result = sub_193647554(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936475F8(uint64_t a1)
{
  result = sub_193647620();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193647620()
{
  result = qword_1ED503D10;
  if (!qword_1ED503D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503D10);
  }

  return result;
}

_BYTE *_s14ExtractedOrderOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletPaymentsCommerceExtractedOrder.json()()
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
  v10 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F8F8, &qword_1939768B8);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  OUTLINED_FUNCTION_2_50();
  sub_19364939C(v1, v16, v23);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v24, &qword_1EAE3F8F8, &qword_1939768B8);
  sub_19393C250();
  (*(v4 + 8))(v9, v29);
  sub_19344E6DC(v22, &qword_1EAE3F8F8, &qword_1939768B8);
  OUTLINED_FUNCTION_27();
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

void static WalletPaymentsCommerceExtractedOrder.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = OUTLINED_FUNCTION_47(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F8F8, &qword_1939768B8);
  OUTLINED_FUNCTION_4_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v35, &qword_1EAE3F8F8, &qword_1939768B8);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_10_40();
    sub_1936492E8(v34, v24, v36);
  }

  OUTLINED_FUNCTION_27();
}

void static WalletPaymentsCommerceExtractedOrder.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v39 = v3;
  v40 = v2;
  v38 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F8F8, &qword_1939768B8);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_1();
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v37 - v24;
  if (*sub_19364C84C() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(v10, v8);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    sub_19393C280();
    (*(v18 + 8))(v25, v15);
    if (!v0)
    {
      OUTLINED_FUNCTION_10_40();
      v30 = v39;
      sub_1936492E8(v1, v39, v31);
      v32 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
      v33 = *(v32 + 20);
      sub_19344E6DC(v30 + v33, &qword_1EAE3A9E8, &qword_19394F800);
      v34 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v34);
      (*(v35 + 16))(v30 + v33, v38, v34);
      __swift_storeEnumTagSinglePayload(v30 + v33, 0, 1, v34);
      v36 = *(v32 + 24);
      sub_19344E6DC(v30 + v36, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v40, v30 + v36);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v29 = v6;
    *(v29 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t WalletPaymentsCommerceExtractedOrder.serialize()()
{
  v3 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F8F8, &qword_1939768B8);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_2_50();
  sub_19364939C(v0, v1, v11);
  sub_1934470C8(v1, v3, v2);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v12, &qword_1EAE3F8F8, &qword_1939768B8);
  sub_19393C290();
  sub_19344E6DC(v2, &qword_1EAE3F8F8, &qword_1939768B8);
  return OUTLINED_FUNCTION_13_0();
}

id static WalletPaymentsCommerceExtractedOrder.columns.getter()
{
  v110 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000013, 0x8000000193A28D80);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_2_4(inited, v13, v14, v15, v16, v17, v18, v19, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v29 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v29);
  OUTLINED_FUNCTION_18_26();
  OUTLINED_FUNCTION_32_19();
  result = OUTLINED_FUNCTION_3_5(v30, v31);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  v32 = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_2_4(v32, v33, v34, v35, v36, v37, v38, v39, v106);
  OUTLINED_FUNCTION_5_10(v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v49 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v49);
  v50 = OUTLINED_FUNCTION_18_26();
  result = OUTLINED_FUNCTION_3_5(v50 | 0x6D754E7200000000, 0xEB00000000726562);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  v51 = swift_initStackObject();
  v59 = OUTLINED_FUNCTION_2_4(v51, v52, v53, v54, v55, v56, v57, v58, v107);
  OUTLINED_FUNCTION_5_10(v59, v60, v61, v62, v63, v64, v65, v66, v67);
  v68 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v68);
  v69 = OUTLINED_FUNCTION_18_26();
  result = OUTLINED_FUNCTION_3_5(v69 | 0x7461447200000000, 0xE900000000000065);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v108;
  v70 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v70, v71, v72, v73, v74, v75, v76, v77, v78);
  v79 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v79);
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v80, v81, v82, v83, v0, 12, 0);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  v84 = swift_initStackObject();
  v92 = OUTLINED_FUNCTION_2_4(v84, v85, v86, v87, v88, v89, v90, v91, v108);
  OUTLINED_FUNCTION_5_10(v92, v93, v94, v95, v96, v97, v98, v99, v100);
  v101 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v101);
  OUTLINED_FUNCTION_18_26();
  OUTLINED_FUNCTION_42_5();
  result = sub_19343D150(v102, v103, 3, 0, v0, 0, 1);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v109;
  v104 = OUTLINED_FUNCTION_6_4();
  *(v104 + 16) = v109;
  *(v104 + 32) = sub_19393C850();
  v105 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000016, 0x8000000193A29920, 2, 0, v104, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v110;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1936481B0()
{
  OUTLINED_FUNCTION_26();
  v84 = v0;
  v85 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_55_3();
  v11 = sub_19393BE00();
  v12 = OUTLINED_FUNCTION_0(v11);
  v82 = v13;
  v83 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - v23;
  v25 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  v31 = v30 - v29;
  OUTLINED_FUNCTION_38();
  v33 = v6 == 0xD000000000000013 && v32 == v4;
  if (v33 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v34 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 28);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_32_19();
  v38 = v6 == (OUTLINED_FUNCTION_19_7() | 0x6564497200000000) && v4 == v37;
  if (v38 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v34 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 32);
    goto LABEL_7;
  }

  v40 = v6 == (OUTLINED_FUNCTION_19_7() | 0x6D754E7200000000) && v4 == v39;
  if (v40 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v41 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 36);
    goto LABEL_22;
  }

  v46 = v6 == (OUTLINED_FUNCTION_19_7() | 0x616D457200000000) && v4 == v45;
  if (v46 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    *&v87[0] = *(v84 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 40));
    v47 = &unk_1EAE3F910;
    v48 = &unk_1939768C8;
LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
    goto LABEL_9;
  }

  v50 = v6 == (OUTLINED_FUNCTION_19_7() | 0x7461447200000000) && v4 == v49;
  if (!v50 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
  {
    v51 = v6 == 0x746E61686372656DLL && v4 == 0xE800000000000000;
    if (v51 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      v52 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
      sub_193448758(v84 + *(v52 + 48), v24, &qword_1EAE3F1A0, &qword_193973038);
      if (__swift_getEnumTagSinglePayload(v24, 1, v25) != 1)
      {
        sub_1936492E8(v24, v31, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
        sub_193494798(v25, &off_1F07D8560, v85);
        sub_193649344(v31, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
        goto LABEL_47;
      }

      v53 = &qword_1EAE3F1A0;
      v54 = &qword_193973038;
      v55 = v24;
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_38();
    v58 = v6 == 0xD000000000000014 && v57 == v4;
    if (v58 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      *&v87[0] = *(v84 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 52));
      v47 = &unk_1EAE3F908;
      v48 = &unk_1939768C0;
      goto LABEL_31;
    }

    v59 = v6 == 0x72656D6F74737563 && v4 == 0xE800000000000000;
    if (v59 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      v60 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
      memcpy(v87, (v84 + *(v60 + 56)), 0x108uLL);
      if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v87) == 1)
      {
        goto LABEL_46;
      }

      memcpy(v86, v87, sizeof(v86));
      v61 = &type metadata for WalletPaymentsCommerceTrackedOrder.Customer;
      v62 = &off_1F07D8580;
    }

    else
    {
      v63 = v6 == 0x746E656D796170 && v4 == 0xE700000000000000;
      if (!v63 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
      {
        OUTLINED_FUNCTION_38();
        v68 = v6 == 0xD000000000000011 && v67 == v4;
        if (v68 || (OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_24_5() & 1) != 0))
        {
          v69 = *(v84 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 64));
          if (v69 != 2)
          {
            LOBYTE(v87[0]) = v69 & 1;
            goto LABEL_9;
          }

          goto LABEL_46;
        }

        OUTLINED_FUNCTION_42_5();
        v71 = v6 == (OUTLINED_FUNCTION_19_7() | 0x6470557200000000) && v4 == v70;
        if (!v71 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
        {
          OUTLINED_FUNCTION_38();
          v76 = v6 == 0xD000000000000016 && v75 == v4;
          if (!v76 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_11();
            swift_allocError();
            v78 = v77;
            *v77 = v6;
            v77[1] = v4;
            v77[5] = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
            __swift_allocate_boxed_opaque_existential_1Tm(v78 + 2);
            OUTLINED_FUNCTION_2_50();
            sub_19364939C(v84, v79, v80);
            *(v78 + 48) = 1;
            swift_willThrow();

            goto LABEL_47;
          }

          v34 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 72);
LABEL_7:
          v35 = (v84 + v34);
          v36 = *(v84 + v34 + 8);
          if (v36)
          {
            *&v87[0] = *v35;
            *(&v87[0] + 1) = v36;
LABEL_9:
            sub_1934948FC();
            goto LABEL_47;
          }

LABEL_46:
          v56 = v85;
          *v85 = 0u;
          *(v56 + 1) = 0u;
          goto LABEL_47;
        }

        v72 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
        sub_193448758(v84 + *(v72 + 68), v1, &qword_1EAE3A9E8, &qword_19394F800);
        if (__swift_getEnumTagSinglePayload(v1, 1, v83) != 1)
        {
          v74 = v82;
          v73 = v83;
          (*(v82 + 32))(v18, v1, v83);
          sub_1934948FC();
          (*(v74 + 8))(v18, v73);
          goto LABEL_47;
        }

        v53 = &qword_1EAE3A9E8;
        v54 = &qword_19394F800;
        v55 = v1;
LABEL_45:
        sub_19344E6DC(v55, v53, v54);
        goto LABEL_46;
      }

      v64 = v84 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 60);
      v65 = *(v64 + 32);
      if (!v65)
      {
        goto LABEL_46;
      }

      v66 = *(v64 + 16);
      v87[0] = *v64;
      v87[1] = v66;
      *&v87[2] = v65;
      v61 = &type metadata for WalletPaymentsCommerceTrackedOrder.Payment;
      v62 = &off_1F07D85A0;
    }

    sub_193494798(v61, v62, v85);
    goto LABEL_47;
  }

  v41 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 44);
LABEL_22:
  v42 = (v84 + v41);
  v43 = *(v84 + v41 + 8);
  if (v43)
  {
    *&v87[0] = *v42;
    *(&v87[0] + 1) = v43;
    sub_1934948FC();
  }

  else
  {
    v44 = v85;
    *v85 = 0u;
    *(v44 + 1) = 0u;
  }

LABEL_47:
  OUTLINED_FUNCTION_27();
}

int *sub_1936488EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_1();
  v12 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = a1 == 0x74654D6C69616D65 && a2 == 0xED00006174616461;
  if (!v19 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    v21 = a1 == 0x7079546C69616D65 && a2 == 0xE900000000000065;
    if (v21 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      result = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
      v22 = v3 + result[5];
      if (*(v22 + 9))
      {
        goto LABEL_8;
      }

      v31 = *v22;
      v33 = *(v22 + 8) & 1;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v24 = a1 == 0xD000000000000019 && v23 == a2;
      if (v24 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        result = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
        v25 = result[6];
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v27 = a1 == 0xD000000000000019 && v26 == a2;
        if (!v27 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          v29 = v28;
          *v28 = a1;
          v28[1] = a2;
          v28[5] = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v29 + 2);
          sub_19364939C(v3, boxed_opaque_existential_1Tm, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
          *(v29 + 48) = 1;
          swift_willThrow();
        }

        result = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
        v25 = result[7];
      }

      if (!*(v3 + v25 + 8))
      {
        goto LABEL_8;
      }

      v32 = *(v3 + v25);
    }

    return sub_1934948FC();
  }

  sub_193448758(v3, v4, &qword_1EAE3EF88, &qword_193972100);
  if (__swift_getEnumTagSinglePayload(v4, 1, v12) == 1)
  {
    result = sub_19344E6DC(v4, &qword_1EAE3EF88, &qword_193972100);
LABEL_8:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  sub_1936492E8(v4, v18, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
  sub_193494798(v12, &off_1F07D7AA8, a3);
  return sub_193649344(v18, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
}

void sub_193648C3C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_55_3();
  v12 = sub_19393BE00();
  v13 = OUTLINED_FUNCTION_0(v12);
  v59 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_38();
  v21 = v5 == 0xD000000000000015 && v20 == v3;
  if (!v21 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
  {
    v24 = v5 == 0x737574617473 && v3 == 0xE600000000000000;
    if (v24 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      if ((*(v0 + 25) & 1) == 0)
      {
        v25 = *(v0 + 24);
        v61[0] = *(v0 + 16);
        LOBYTE(v61[1]) = v25 & 1;
        goto LABEL_9;
      }
    }

    else
    {
      v26 = v5 == 0x676E696B63617274 && v3 == 0xEE007265626D754ELL;
      if (v26 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
      {
        v22 = *(v0 + 40);
        if (v22)
        {
          v23 = *(v0 + 32);
          goto LABEL_8;
        }
      }

      else
      {
        v27 = v5 == 0x4E72656972726163 && v3 == 0xEB00000000656D61;
        if (v27 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
        {
          v22 = *(v0 + 56);
          if (v22)
          {
            v23 = *(v0 + 48);
            goto LABEL_8;
          }
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v29 = v5 == 0xD000000000000011 && v28 == v3;
          if (v29 || (OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_24_5() & 1) != 0))
          {
            v22 = *(v0 + 72);
            if (v22)
            {
              v23 = *(v0 + 64);
              goto LABEL_8;
            }
          }

          else
          {
            v31 = v5 == OUTLINED_FUNCTION_14() && v3 == v30;
            if (v31 || (OUTLINED_FUNCTION_24_5(), OUTLINED_FUNCTION_13_30(), (v33 & 1) != 0))
            {
              v22 = *(v0 + 88);
              if (v22)
              {
                v23 = *(v0 + 80);
                goto LABEL_8;
              }
            }

            else
            {
              v34 = v5 == v32 && v3 == 0xEC00000065746144;
              if (v34 || (OUTLINED_FUNCTION_24_5(), OUTLINED_FUNCTION_13_30(), (v36 & 1) != 0))
              {
                v22 = *(v0 + 104);
                if (v22)
                {
                  v23 = *(v0 + 96);
                  goto LABEL_8;
                }
              }

              else
              {
                v37 = v5 == v35 && v3 == 0xEC000000656D6954;
                if (v37 || (OUTLINED_FUNCTION_14(), (OUTLINED_FUNCTION_24_5() & 1) != 0))
                {
                  v22 = *(v0 + 120);
                  if (v22)
                  {
                    v23 = *(v0 + 112);
                    goto LABEL_8;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v39 = v5 == 0xD00000000000001ALL && v38 == v3;
                  if (v39 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
                  {
                    v22 = *(v0 + 136);
                    if (v22)
                    {
                      v23 = *(v0 + 128);
                      goto LABEL_8;
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v41 = v5 == 0xD00000000000001ALL && v40 == v3;
                    if (v41 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
                    {
                      v22 = *(v0 + 152);
                      if (v22)
                      {
                        v23 = *(v0 + 144);
                        goto LABEL_8;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_38();
                      v43 = v5 == 0xD000000000000018 && v42 == v3;
                      if (v43 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
                      {
                        v22 = *(v0 + 168);
                        if (v22)
                        {
                          v23 = *(v0 + 160);
                          goto LABEL_8;
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        v45 = v5 == 0xD000000000000018 && v44 == v3;
                        if (v45 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
                        {
                          v22 = *(v0 + 184);
                          if (v22)
                          {
                            v23 = *(v0 + 176);
                            goto LABEL_8;
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_21_29();
                          v46 = v21 && v3 == 0xEC00000065746144;
                          if (v46 || (OUTLINED_FUNCTION_28_19(), (OUTLINED_FUNCTION_24_5() & 1) != 0))
                          {
                            v22 = *(v0 + 200);
                            if (v22)
                            {
                              v23 = *(v0 + 192);
                              goto LABEL_8;
                            }
                          }

                          else
                          {
                            OUTLINED_FUNCTION_21_29();
                            v47 = v21 && v3 == 0xEC000000656D6954;
                            if (v47 || (OUTLINED_FUNCTION_28_19(), (OUTLINED_FUNCTION_24_5() & 1) != 0))
                            {
                              v22 = *(v0 + 216);
                              if (v22)
                              {
                                v23 = *(v0 + 208);
                                goto LABEL_8;
                              }
                            }

                            else
                            {
                              OUTLINED_FUNCTION_38();
                              v49 = v5 == 0xD000000000000011 && v48 == v3;
                              if (v49 || (OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_24_5() & 1) != 0))
                              {
                                memcpy(v61, (v0 + 224), 0x108uLL);
                                if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v61) != 1)
                                {
                                  memcpy(v60, v61, sizeof(v60));
                                  sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.ShippingRecipient, &off_1F07D8570, v7);
                                  goto LABEL_17;
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_38();
                                v51 = v5 == 0xD000000000000017 && v50 == v3;
                                if (!v51 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
                                {
                                  OUTLINED_FUNCTION_13_30();
                                  if (v5 != v54 || v3 != v53)
                                  {
                                    OUTLINED_FUNCTION_14();
                                    if ((OUTLINED_FUNCTION_24_5() & 1) == 0)
                                    {
                                      sub_19349AB64();
                                      OUTLINED_FUNCTION_11();
                                      swift_allocError();
                                      v57 = v56;
                                      *v56 = v5;
                                      v56[1] = v3;
                                      v56[5] = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
                                      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v57 + 2);
                                      sub_19364939C(v0, boxed_opaque_existential_1Tm, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
                                      *(v57 + 48) = 1;
                                      swift_willThrow();

                                      goto LABEL_17;
                                    }
                                  }

                                  v61[0] = *(v0 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0) + 80));
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F910, &qword_1939768C8);
                                  goto LABEL_9;
                                }

                                v52 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
                                sub_193448758(v0 + *(v52 + 76), v1, &qword_1EAE3A9E8, &qword_19394F800);
                                if (__swift_getEnumTagSinglePayload(v1, 1, v12) != 1)
                                {
                                  (*(v59 + 32))(v19, v1, v12);
                                  sub_1934948FC();
                                  (*(v59 + 8))(v19, v12);
                                  goto LABEL_17;
                                }

                                sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
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

LABEL_16:
    *v7 = 0u;
    *(v7 + 16) = 0u;
    goto LABEL_17;
  }

  v22 = *(v0 + 8);
  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = *v0;
LABEL_8:
  v61[0] = v23;
  v61[1] = v22;
LABEL_9:
  sub_1934948FC();
LABEL_17:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936492E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_193649344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_19364939C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t WalletPaymentsCommerceExtractedOrder.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  v3 = v2[5];
  sub_193509014();
  v4 = a1 + v2[6];
  sub_19361FBBC(v4);
  v17 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v5 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = v2[12];
  sub_19364CD00();
  v9 = v2[14];
  sub_193610F78(a1 + v9);
  v10 = (a1 + v2[15]);
  sub_19344B5D8(v10);
  v19 = v2[16];
  OUTLINED_FUNCTION_7_9();
  v18 = v2[17];
  sub_19364FF1C();
  v20 = (a1 + v2[18]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_19364C84C();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = sub_19393BE00();
  v12 = a1 + v3;
  v13 = v11;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v11);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v17 = 0;
  v17[1] = 0;
  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;

  v14 = MEMORY[0x1E69E7CC0];
  *(a1 + v2[10]) = MEMORY[0x1E69E7CC0];
  *v7 = 0;
  v7[1] = 0;
  sub_19344E6DC(a1 + v8, &qword_1EAE3F1A0, &qword_193973038);
  v15 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v15);
  *(a1 + v2[13]) = v14;
  sub_193463B08(__src);
  memcpy(__dst, a1 + v9, 0x108uLL);
  sub_19344E6DC(__dst, &qword_1EAE3F1A8, &qword_1939732B0);
  memcpy(a1 + v9, __src, 0x108uLL);
  sub_193613BF4(*v10, v10[1], v10[2], v10[3], v10[4]);
  v10[4] = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(a1 + v19) = 2;
  sub_19344E6DC(a1 + v18, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v18, 1, 1, v13);

  *v20 = 0;
  v20[1] = 0;
  return result;
}

BOOL static WalletPaymentsCommerceExtractedOrder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v152 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v152);
  v149 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v148 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v142 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v151 = &v142 - v20;
  v21 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  v22 = OUTLINED_FUNCTION_4_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_47(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v142 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1C0, &qword_193973118);
  OUTLINED_FUNCTION_4_1(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  v38 = OUTLINED_FUNCTION_18_29();
  v39 = v38[7];
  OUTLINED_FUNCTION_0_60();
  if (v42)
  {
    if (!v40)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v41);
    v45 = v45 && v43 == v44;
    if (!v45 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v46 = v38[8];
  OUTLINED_FUNCTION_0_60();
  if (v49)
  {
    if (!v47)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v48);
    v52 = v45 && v50 == v51;
    if (!v52 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  v53 = v38[9];
  OUTLINED_FUNCTION_0_60();
  if (v56)
  {
    if (!v54)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v55);
    v59 = v45 && v57 == v58;
    if (!v59 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  if ((sub_19364A6F4(*(a1 + v38[10]), *(a2 + v38[10])) & 1) == 0)
  {
    return 0;
  }

  v60 = v38[11];
  OUTLINED_FUNCTION_0_60();
  if (v63)
  {
    if (!v61)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v62);
    v66 = v45 && v64 == v65;
    if (!v66 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  v147 = v38[12];
  v67 = *(v34 + 48);
  sub_1934486F8(a1 + v147, v2, &qword_1EAE3F1A0, &qword_193973038);
  v68 = a2 + v147;
  v147 = v67;
  sub_1934486F8(v68, v2 + v67, &qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_6_3(v2, 1, v21);
  if (v45)
  {
    OUTLINED_FUNCTION_6_3(v2 + v147, 1, v21);
    if (v45)
    {
      sub_19344E6DC(v2, &qword_1EAE3F1A0, &qword_193973038);
      goto LABEL_49;
    }

LABEL_46:
    v72 = &qword_1EAE3F1C0;
    v73 = &qword_193973118;
    v74 = v2;
LABEL_47:
    sub_19344E6DC(v74, v72, v73);
    return 0;
  }

  sub_1934486F8(v2, v33, &qword_1EAE3F1A0, &qword_193973038);
  v69 = v147;
  OUTLINED_FUNCTION_6_3(v2 + v147, 1, v21);
  if (v70)
  {
    OUTLINED_FUNCTION_6_43();
    sub_19364ACA0(v33, v71);
    goto LABEL_46;
  }

  sub_193616384(v2 + v69, v27);
  OUTLINED_FUNCTION_5_48();
  sub_19364AC58(v75, v76);
  v77 = sub_19393C550();
  sub_19364ACA0(v27, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
  sub_19364ACA0(v33, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
  sub_19344E6DC(v2, &qword_1EAE3F1A0, &qword_193973038);
  if ((v77 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  if ((sub_19364A8FC(*(a1 + v38[13]), *(a2 + v38[13])) & 1) == 0)
  {
    return 0;
  }

  v78 = v38[14];
  memcpy(v160, (a1 + v78), sizeof(v160));
  v79 = v38[14];
  memcpy(v161, (a2 + v79), sizeof(v161));
  memcpy(v159, (a1 + v78), 0x108uLL);
  memcpy(&v159[33], (a2 + v79), 0x108uLL);
  memcpy(v162, (a1 + v78), 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v162) == 1)
  {
    memcpy(v157, &v159[33], 0x108uLL);
    if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v157) == 1)
    {
      OUTLINED_FUNCTION_20_33(v158);
      OUTLINED_FUNCTION_19_37(v160, v156);
      OUTLINED_FUNCTION_19_37(v161, v156);
      sub_19344E6DC(v158, &qword_1EAE3F1A8, &qword_1939732B0);
      goto LABEL_58;
    }

    sub_1934486F8(v160, v158, &qword_1EAE3F1A8, &qword_1939732B0);
    sub_1934486F8(v161, v158, &qword_1EAE3F1A8, &qword_1939732B0);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_20_33(v158);
  OUTLINED_FUNCTION_20_33(v156);
  memcpy(v157, &v159[33], 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v157) == 1)
  {
    memcpy(v155, v156, sizeof(v155));
    OUTLINED_FUNCTION_13_31(v160);
    OUTLINED_FUNCTION_13_31(v161);
    OUTLINED_FUNCTION_13_31(v158);
    sub_1936162DC(v155);
LABEL_56:
    memcpy(v157, v159, sizeof(v157));
    v72 = &unk_1EAE3F1C8;
    v73 = &unk_193973120;
    v74 = v157;
    goto LABEL_47;
  }

  memcpy(v155, &v159[33], sizeof(v155));
  OUTLINED_FUNCTION_14_34(v160);
  OUTLINED_FUNCTION_14_34(v161);
  OUTLINED_FUNCTION_14_34(v158);
  sub_193616330();
  v80 = sub_19393C550();
  memcpy(v153, v155, sizeof(v153));
  sub_1936162DC(v153);
  memcpy(v154, v156, sizeof(v154));
  sub_1936162DC(v154);
  OUTLINED_FUNCTION_20_33(v155);
  sub_19344E6DC(v155, &qword_1EAE3F1A8, &qword_1939732B0);
  if ((v80 & 1) == 0)
  {
    return 0;
  }

LABEL_58:
  v81 = v38[15];
  v82 = *(a1 + v81);
  v83 = *(a1 + v81 + 8);
  v84 = *(a1 + v81 + 16);
  v85 = *(a1 + v81 + 24);
  v86 = *(a1 + v81 + 32);
  v87 = (a2 + v81);
  v88 = *v87;
  v89 = v87[1];
  v91 = v87[2];
  v90 = v87[3];
  v92 = v87[4];
  v147 = v84;
  if (!v86)
  {
    v142 = v88;
    v143 = 0;
    v145 = v82;
    v146 = v83;
    v144 = v85;
    sub_1936161E4(v82, v83, v84, v85, 0);
    if (!v92)
    {
      sub_1936161E4(v142, v89, v91, v90, 0);
      sub_193613BF4(v145, v146, v147, v144, 0);
      goto LABEL_68;
    }

    v101 = OUTLINED_FUNCTION_2_51();
    sub_1936161E4(v101, v102, v103, v104, v92);
    v106 = v146;
    v105 = v147;
    v108 = v144;
    v107 = v145;
    v109 = v143;
LABEL_65:
    sub_193613BF4(v107, v106, v105, v108, v109);
    v114 = OUTLINED_FUNCTION_2_51();
    sub_193613BF4(v114, v115, v116, v117, v92);
    return 0;
  }

  v159[0] = v82;
  v159[1] = v83;
  v159[2] = v84;
  v159[3] = v85;
  v159[4] = v86;
  if (!v92)
  {
    v107 = v82;
    v106 = v83;
    v108 = v85;
    v109 = v86;
    sub_1936161E4(v82, v83, v84, v85, v86);
    v110 = OUTLINED_FUNCTION_2_51();
    sub_1936161E4(v110, v111, v112, v113, 0);
    sub_1936161E4(v107, v106, v147, v108, v109);

    v105 = v147;
    goto LABEL_65;
  }

  v157[0] = v88;
  v157[1] = v89;
  v157[2] = v91;
  v157[3] = v90;
  v157[4] = v92;
  v145 = v82;
  v146 = v83;
  v142 = v92;
  v143 = v86;
  v144 = v85;
  v93 = v86;
  sub_1936161E4(v82, v83, v84, v85, v86);
  v94 = OUTLINED_FUNCTION_2_51();
  sub_1936161E4(v94, v95, v96, v97, v142);
  v98 = v145;
  v99 = v147;
  v100 = v144;
  sub_1936161E4(v145, v146, v147, v144, v93);
  sub_193616288();
  LODWORD(v142) = sub_19393C550();

  sub_193613BF4(v98, v146, v99, v100, v143);
  if ((v142 & 1) == 0)
  {
    return 0;
  }

LABEL_68:
  v119 = v38[16];
  v120 = *(a1 + v119);
  v121 = *(a2 + v119);
  if (v120 == 2)
  {
    if (v121 != 2)
    {
      return 0;
    }
  }

  else if (v121 == 2 || ((v120 ^ v121) & 1) != 0)
  {
    return 0;
  }

  v122 = v38[17];
  v123 = *(v16 + 48);
  v124 = v151;
  OUTLINED_FUNCTION_19_37(a1 + v122, v151);
  OUTLINED_FUNCTION_19_37(a2 + v122, v124 + v123);
  v125 = v152;
  OUTLINED_FUNCTION_6_3(v124, 1, v152);
  if (v45)
  {
    OUTLINED_FUNCTION_6_3(v124 + v123, 1, v125);
    if (v45)
    {
      sub_19344E6DC(v124, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  v126 = v150;
  sub_1934486F8(v124, v150, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v124 + v123, 1, v125);
  if (v127)
  {
    (*(v149 + 8))(v126, v125);
LABEL_81:
    v72 = &qword_1EAE3B968;
    v73 = &qword_193972430;
    v74 = v124;
    goto LABEL_47;
  }

  v128 = v149;
  v129 = v124 + v123;
  v130 = v148;
  (*(v149 + 32))(v148, v129, v125);
  OUTLINED_FUNCTION_4_46();
  sub_19364AC58(v131, v132);
  v133 = sub_19393C550();
  v134 = *(v128 + 8);
  v134(v130, v125);
  v134(v150, v125);
  sub_19344E6DC(v124, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v133 & 1) == 0)
  {
    return 0;
  }

LABEL_83:
  v135 = v38[18];
  OUTLINED_FUNCTION_0_60();
  if (v138)
  {
    if (v136)
    {
      OUTLINED_FUNCTION_5(v137);
      v141 = v45 && v139 == v140;
      if (v141 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v136;
}

uint64_t WalletPaymentsCommerceExtractedOrder.hash(into:)(uint64_t a1)
{
  v3 = v1;
  v53 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v53);
  v51 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v50 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v49 - v15;
  v16 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  v17 = OUTLINED_FUNCTION_4_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_47(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v27 = OUTLINED_FUNCTION_18_29();
  v28 = (v1 + v27[7]);
  if (v28[1])
  {
    OUTLINED_FUNCTION_10_41(v28);
    OUTLINED_FUNCTION_9_55();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v29 = (v1 + v27[8]);
  if (v29[1])
  {
    OUTLINED_FUNCTION_10_41(v29);
    OUTLINED_FUNCTION_9_55();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v30 = (v1 + v27[9]);
  if (v30[1])
  {
    OUTLINED_FUNCTION_10_41(v30);
    OUTLINED_FUNCTION_9_55();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  sub_19364AB04(a1, *(v1 + v27[10]), type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail, &qword_1EAE3F920, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
  v31 = (v1 + v27[11]);
  if (v31[1])
  {
    OUTLINED_FUNCTION_10_41(v31);
    OUTLINED_FUNCTION_9_55();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  sub_1934486F8(v1 + v27[12], v2, &qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_6_3(v2, 1, v16);
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    sub_193616384(v2, v22);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_5_48();
    sub_19364AC58(v33, v34);
    sub_19393C540();
    OUTLINED_FUNCTION_6_43();
    sub_19364ACA0(v22, v35);
  }

  sub_19364AB04(a1, *(v1 + v27[13]), type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment, &qword_1EAE3F918, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
  v36 = v27[14];
  memcpy(v57, (v3 + v36), sizeof(v57));
  memcpy(v58, (v3 + v36), 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v58) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v54, v57, sizeof(v54));
    OUTLINED_FUNCTION_94();
    memcpy(v55, v57, sizeof(v55));
    sub_193613DB4(v55, v56);
    sub_1936164E4();
    sub_19393C540();
    memcpy(v56, v54, sizeof(v56));
    sub_1936162DC(v56);
  }

  v37 = v3 + v27[15];
  v38 = *(v37 + 32);
  if (v38)
  {
    v39 = *(v37 + 24);
    v56[0] = *v37;
    v49 = *(v37 + 8);
    *&v56[1] = v49;
    v56[3] = v39;
    v56[4] = v38;
    OUTLINED_FUNCTION_94();
    sub_193616538();

    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v3 + v27[16]) != 2)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  v40 = v52;
  sub_1934486F8(v3 + v27[17], v52, &qword_1EAE3A9E8, &qword_19394F800);
  v41 = v53;
  OUTLINED_FUNCTION_6_3(v40, 1, v53);
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v43 = v50;
    v42 = v51;
    (*(v51 + 32))(v50, v40, v41);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_4_46();
    sub_19364AC58(v44, v45);
    sub_19393C540();
    (*(v42 + 8))(v43, v41);
  }

  v46 = (v3 + v27[18]);
  if (!v46[1])
  {
    return OUTLINED_FUNCTION_95_8();
  }

  v47 = *v46;
  OUTLINED_FUNCTION_94();
  return sub_19393C640();
}

uint64_t sub_19364A6F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_19364ABF8(v14, v11, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
        sub_19364ABF8(v15, v8, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
        sub_19364AC58(&qword_1EAE3F930, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
        v17 = sub_19393C550();
        sub_19364ACA0(v8, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
        sub_19364ACA0(v11, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}