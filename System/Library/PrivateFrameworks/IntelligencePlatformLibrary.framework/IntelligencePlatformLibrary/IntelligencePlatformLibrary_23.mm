uint64_t sub_1935EE314(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(v8 + 9) & 1) == 0)
  {
    v15 = *(v8 + 8) & 1;
    v9 = OUTLINED_FUNCTION_134(result, a2, a2, a4, a3, a5, a7, a8, *v8);
    return sub_193447324(v9, v10, v11, v12, v13, v14);
  }

  return result;
}

void sub_1935EE3F4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB258);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v6, xmmword_19394FBB0);
  *v0 = "outcome";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v13 = 2;
  *v12 = "success";
  *(v12 + 8) = 7;
  *(v12 + 16) = 2;
  v10();
  v14 = OUTLINED_FUNCTION_13_12();
  *v14 = "toolDisambiguation";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935EE570()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3 || v1 == 2)
    {
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_125();
      sub_1934982A8();
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935EE640()
{
  OUTLINED_FUNCTION_50_13();
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  if ((*(v1 + 9) & 1) == 0)
  {
    v19 = *(v1 + 8);
    OUTLINED_FUNCTION_134(v2, v3, v4, &type metadata for IFOutcome, v5, &off_1F07C4128, v6, v7, *v1);
    OUTLINED_FUNCTION_106();
    sub_193447324(v12, v13, v14, v15, v16, v17);
  }

  if (!v0)
  {
    if (v8 != 1)
    {
      v18 = *(v1 + 16);
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (v11 != 1)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }
  }
}

void sub_1935EE7AC()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_125();
      sub_193498018();
    }
  }
}

void sub_1935EE818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(v8 + 8) != 1)
  {
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    v11 = *(v8 + 24) & 1;
    OUTLINED_FUNCTION_134(a1, a2, a2, &type metadata for IFError, a3, &off_1F07C40D0, a7, a8, *v8);
    sub_193447600();
  }
}

uint64_t sub_1935EE938@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 26) = 1;
  *a1 = result;
  return result;
}

void sub_1935EE998()
{
  OUTLINED_FUNCTION_53_4();
  v15 = xmmword_19395BB80;
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
        OUTLINED_FUNCTION_100_1(v2, v3, v4, v5, v6, v7, v8, v9, v15, *(&v15 + 1), v16, *(&v16 + 1), v17, v18, v19, v20, v21, v22, v23, v24, 0);
        sub_193498018();
        OUTLINED_FUNCTION_188();
        v10 = swift_allocObject();
        *(v10 + 16) = v25;
        *(v10 + 24) = 0;
        *(v10 + 26) = 1;
        *v1 = v10;
        break;
      case 2:
        v25 = 0u;
        v26 = 2uLL;
        v27 = 0uLL;
        OUTLINED_FUNCTION_100_1(v2, v3, v4, v5, v6, v7, v8, v9, v15, *(&v15 + 1), v16, *(&v16 + 1), v17, v18, v19, v20, v21, v22, v23, v24, 0);
        sub_193498018();
        OUTLINED_FUNCTION_188();
        v13 = swift_allocObject();
        *(v13 + 16) = v25;
        *(v13 + 32) = 0u;
        v14 = v27;
        *(v13 + 48) = v26;
        *(v13 + 64) = v14;
        *v1 = v13 | 0x4000000000000000;
        break;
      case 3:
        *(&v25 + 1) = *(&v15 + 1);
        OUTLINED_FUNCTION_100_1(v2, v3, v4, v5, v6, v7, v8, v9, v15, *(&v15 + 1), v16, *(&v16 + 1), v17, v18, v19, v20, v21, v22, v23, v24, v15);
        sub_193498018();
        OUTLINED_FUNCTION_188();
        v16 = v25;
        v11 = swift_allocObject();
        *(v11 + 16) = v25;
        *(v11 + 32) = 0;
        *(v11 + 40) = 0;
        *v1 = v11 | 0x8000000000000000;
        break;
      case 4:
        OUTLINED_FUNCTION_100_1(v2, v3, v4, v5, v6, v7, v8, v9, v15, *(&v15 + 1), v16, *(&v16 + 1), v17, v18, v19, v20, v21, v22, v23, v24, 3);
        sub_193498018();
        OUTLINED_FUNCTION_188();
        v12 = swift_allocObject();
        *(v12 + 16) = v25;
        *v1 = v12 | 0xC000000000000000;
        break;
      default:
        continue;
    }
  }
}

void sub_1935EEC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  switch(*v8 >> 62)
  {
    case 1uLL:
      v18 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x30) != 2)
      {
        v16 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v17 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
        goto LABEL_10;
      }

      break;
    case 2uLL:
      if (*((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != 2)
      {
        v12 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v14 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v15 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        goto LABEL_10;
      }

      break;
    case 3uLL:
      OUTLINED_FUNCTION_37_16();
      if (!v10)
      {
        goto LABEL_10;
      }

      break;
    default:
      if ((*(v9 + 26) & 1) == 0)
      {
        v13 = *(v9 + 24) & 0x1FF;
        OUTLINED_FUNCTION_134(a1, a2, a2, &type metadata for IntelligenceFlowExecutorTelemetry.ExecutorRequestStarted, a3, &off_1F07D5678, a7, a8, *(v9 + 16));
LABEL_10:
        sub_193447600();
      }

      break;
  }
}

uint64_t sub_1935EEDF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1935EEE50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_36_18()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_39_19(uint64_t result)
{
  *(result + 16) = v2;
  *v1 = result | 0x4000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_14()
{

  return sub_1935EEE50(v0, v1);
}

uint64_t OUTLINED_FUNCTION_67_11(uint64_t result)
{
  *(result + 16) = v2;
  *v1 = result;
  return result;
}

uint64_t IntelligenceFlowExecutorTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExecutorTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t IntelligenceFlowExecutorTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  return OUTLINED_FUNCTION_69_15(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t IntelligenceFlowExecutorTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935EF110()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowExecutorTelemetry.eventMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExecutorTelemetry.monotonicTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3B498, &unk_193959120, *(v1 + 32));
}

uint64_t IntelligenceFlowExecutorTelemetry.monotonicTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  return OUTLINED_FUNCTION_69_15(&qword_1EAE3B498, &unk_193959120, *(v1 + 32));
}

uint64_t IntelligenceFlowExecutorTelemetry.monotonicTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935EF2B0()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowExecutorTelemetry.executorAppIntentCallContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3E900, &qword_19396EE28, *(v1 + 36));
}

uint64_t IntelligenceFlowExecutorTelemetry.executorAppIntentCallContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  return OUTLINED_FUNCTION_69_15(&qword_1EAE3E900, &qword_19396EE28, *(v1 + 36));
}

uint64_t IntelligenceFlowExecutorTelemetry.executorAppIntentCallContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935EF3C0()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowExecutorTelemetry.executorSearchToolQueryCallContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3E908, &qword_19396F4F0, *(v1 + 40));
}

uint64_t IntelligenceFlowExecutorTelemetry.executorSearchToolQueryCallContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  return OUTLINED_FUNCTION_69_15(&qword_1EAE3E908, &qword_19396F4F0, *(v1 + 40));
}

uint64_t IntelligenceFlowExecutorTelemetry.executorSearchToolQueryCallContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExecutorTelemetry.executorPersonQueryCallContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 44));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowExecutorTelemetry.executorPersonQueryCallContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExecutorTelemetry.executorStringQueryLocationCallContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 48));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowExecutorTelemetry.executorStringQueryLocationCallContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry(v0) + 48);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExecutorTelemetry.executorStringQueryEntityMatcherCallContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 52));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowExecutorTelemetry.executorStringQueryEntityMatcherCallContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExecutorTelemetry.executorStringQueryEntityCallContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 56));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowExecutorTelemetry.executorStringQueryEntityCallContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry(v0) + 56);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExecutorTelemetry.executorIdentifierQueryCallContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 60));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowExecutorTelemetry.executorIdentifierQueryCallContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry(v0) + 60);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExecutorTelemetry.executorRequestContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExecutorTelemetry(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 64));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowExecutorTelemetry.executorRequestContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry(v0) + 64);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935EF8E0@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowExecutorTelemetry.ExecutorAppIntentError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935EF908@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowExecutorTelemetry.ExecutorAppIntentError.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935EF964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1935EFA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1935EFB78@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935EFBA0@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935EFD3C()
{
  v0 = OUTLINED_FUNCTION_222();
  v2 = *(v1(v0) + 20);
  OUTLINED_FUNCTION_248();
  return sub_1934487B4(v3, v4, v5, v6);
}

uint64_t sub_1935EFDA8()
{
  v0 = OUTLINED_FUNCTION_266();
  v2 = *(v1(v0) + 20);
  OUTLINED_FUNCTION_248();
  return sub_1934453DC(v3, v4, v5, v6);
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata.executorId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata.spanId.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata(0) + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata.spanId.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata.spanId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata.init()()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata(0);
  v6 = *(v5 + 20);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = v0 + *(v5 + 24);
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_19344E6DC(v0 + v6, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();
  result = __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

void static IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for AIML.UUID();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v55 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v11 = OUTLINED_FUNCTION_47(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v54 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  v25 = v23 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v54 - v28;
  v30 = *(v27 + 48);
  v56 = v3;
  sub_1934487B4(v3, &v54 - v28, &qword_1EAE3BCA0, &unk_19395C320);
  v57 = v1;
  sub_1934487B4(v1, &v29[v30], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v29);
  if (v31)
  {
    OUTLINED_FUNCTION_31(&v29[v30]);
    if (v31)
    {
      sub_19344E6DC(v29, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_11;
    }

LABEL_9:
    v32 = v29;
LABEL_20:
    sub_19344E6DC(v32, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_21;
  }

  sub_1934487B4(v29, v18, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(&v29[v30]);
  if (v31)
  {
    sub_1934F8A10(v18);
    goto LABEL_9;
  }

  v33 = &v29[v30];
  v34 = v55;
  sub_19355A5F8(v33, v55);
  OUTLINED_FUNCTION_0_50();
  sub_1935F05D0(v35, v36);
  v37 = sub_19393C550();
  sub_1934F8A10(v34);
  sub_1934F8A10(v18);
  sub_19344E6DC(v29, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v37 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v38 = type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata(0);
  v39 = *(v38 + 20);
  v40 = *(v19 + 48);
  v41 = v56;
  sub_1934487B4(v56 + v39, v25, &qword_1EAE3BCA0, &unk_19395C320);
  v42 = v57 + v39;
  v43 = v57;
  sub_1934487B4(v42, v25 + v40, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v25);
  if (!v31)
  {
    v44 = v54;
    sub_1934487B4(v25, v54, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v25 + v40);
    if (!v45)
    {
      v46 = v55;
      sub_19355A5F8(v25 + v40, v55);
      OUTLINED_FUNCTION_0_50();
      sub_1935F05D0(v47, v48);
      v49 = sub_19393C550();
      sub_1934F8A10(v46);
      sub_1934F8A10(v44);
      sub_19344E6DC(v25, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v49 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    sub_1934F8A10(v44);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_31(v25 + v40);
  if (!v31)
  {
LABEL_19:
    v32 = v25;
    goto LABEL_20;
  }

  sub_19344E6DC(v25, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_23:
  v50 = *(v38 + 24);
  v51 = (v41 + v50);
  v52 = *(v41 + v50 + 8);
  v53 = (v43 + v50);
  LODWORD(v50) = *(v43 + v50 + 8);
  if ((v52 & 1) == 0)
  {
    *v51;
    *v53;
  }

LABEL_21:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata.hash(into:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_4();
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
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  OUTLINED_FUNCTION_52_1(v1, &v27 - v17);
  if (__swift_getEnumTagSinglePayload(v18, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v18, v8);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_50();
    sub_1935F05D0(v19, v20);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_1934F8A10(v8);
  }

  v21 = type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorTelemetryEventMetadata(0);
  sub_1934487B4(v1 + *(v21 + 20), v15, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v15, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v15, v8);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_50();
    sub_1935F05D0(v22, v23);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_1934F8A10(v8);
  }

  v24 = v1 + *(v21 + 24);
  if (*(v24 + 8) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v26 = *v24;
  OUTLINED_FUNCTION_103_0();
  return MEMORY[0x193B18060](v26);
}

uint64_t sub_1935F05D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallStarted.appIntentSessionId.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallStarted.appIntentSessionId.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

void IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallStarted.init()(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t static IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallStarted.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[16];
  v5 = *a2;
  v6 = a2[16];
  if (v2 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }

LABEL_6:
    if (v4)
    {
      if ((a2[16] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v3 == *(a2 + 1))
      {
        v8 = a2[16];
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if (v5 != 2 && ((v5 ^ v2) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallStarted.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v2)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  return MEMORY[0x193B18060](v1);
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallStarted.hashValue.getter()
{
  OUTLINED_FUNCTION_59_14();
  sub_19393CAB0();
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v1)
  {
    MEMORY[0x193B18060](v0);
  }

  return sub_19393CB00();
}

uint64_t sub_1935F0834()
{
  OUTLINED_FUNCTION_59_14();
  sub_19393CAB0();
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v1)
  {
    MEMORY[0x193B18060](v0);
  }

  return sub_19393CB00();
}

BOOL static IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallFailed.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 9);
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v3 = *a1;
    v4 = *(a1 + 8);
    v5 = *a2;
    v6 = *(a2 + 8);
    OUTLINED_FUNCTION_39_5();
    v7 = IntelligenceFlowExecutorTelemetry.ExecutorAppIntentError.rawValue.getter();
    return v7 == IntelligenceFlowExecutorTelemetry.ExecutorAppIntentError.rawValue.getter();
  }

  return (*(a2 + 9) & 1) != 0;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallFailed.hash(into:)()
{
  if (*(v0 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v2 = *(v0 + 8);
  v3 = *v0;
  OUTLINED_FUNCTION_103_0();
  v4 = IntelligenceFlowExecutorTelemetry.ExecutorAppIntentError.rawValue.getter();
  return MEMORY[0x193B18030](v4);
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallFailed.hashValue.getter()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  if (v0 == 1)
  {
    OUTLINED_FUNCTION_45_1();
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_9_45();
    v1 = IntelligenceFlowExecutorTelemetry.ExecutorAppIntentError.rawValue.getter();
    MEMORY[0x193B18030](v1);
  }

  return sub_19393CB00();
}

uint64_t sub_1935F0A50()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  if (v0 == 1)
  {
    OUTLINED_FUNCTION_45_1();
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_9_45();
    v1 = IntelligenceFlowExecutorTelemetry.ExecutorAppIntentError.rawValue.getter();
    MEMORY[0x193B18030](v1);
  }

  return sub_19393CB00();
}

__n128 IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallContext.startedOrChanged.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallContext.startedOrChanged.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

void IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallContext.failed.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 34);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallContext.failed.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  *(v1 + 34) = v3;
  return result;
}

uint64_t sub_1935F0BB4()
{
  v0 = OUTLINED_FUNCTION_222();
  v2 = *(v1(v0) + 28);
  OUTLINED_FUNCTION_248();
  return sub_1934487B4(v3, v4, v5, v6);
}

uint64_t sub_1935F0C20()
{
  v0 = OUTLINED_FUNCTION_266();
  v2 = *(v1(v0) + 28);
  OUTLINED_FUNCTION_248();
  return sub_1934453DC(v3, v4, v5, v6);
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallContext.traceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallContext(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_19396F4D0;
  *(a1 + 16) = 768;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 34) = 1;
  v2 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallContext(0) + 28);
  type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *a1 = xmmword_19396F4D0;
  *(a1 + 16) = 768;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 34) = 1;
  sub_19344E6DC(a1 + v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void static IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for AIML.UUID();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_150();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = *v4;
  if (v22 == 3)
  {
    if (*v2 != 3)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v26 = *v2;
    if (v26 == 3)
    {
      goto LABEL_38;
    }

    if (v22 == 2)
    {
      if (v26 != 2)
      {
        goto LABEL_38;
      }
    }

    else if (v26 == 2 || ((*v2 ^ *v4) & 1) != 0)
    {
      goto LABEL_38;
    }

    if (*(v4 + 16))
    {
      if ((*(v2 + 16) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((*(v2 + 16) & 1) != 0 || *(v4 + 8) != *(v2 + 8))
    {
      goto LABEL_38;
    }
  }

  v23 = *(v4 + 17);
  v24 = *(v2 + 17);
  if (v23 == 3)
  {
    if (v24 != 3)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v24 == 3)
    {
      goto LABEL_38;
    }

    if (v23 == 2)
    {
      if (v24 != 2)
      {
        goto LABEL_38;
      }
    }

    else if (v24 == 2 || ((v24 ^ v23) & 1) != 0)
    {
      goto LABEL_38;
    }
  }

  v25 = *(v2 + 34);
  if (*(v4 + 34))
  {
    if ((*(v2 + 34) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v27 = *(v2 + 24);
    v28 = *(v2 + 32);
    v29 = *(v4 + 32);
    v37 = *(v4 + 24);
    v38 = v29;
    v39 = 0;
    if (v25)
    {
      goto LABEL_38;
    }

    v35 = v27;
    v36 = v28 & 0x1FF;
    if (!static IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallFailed.== infix(_:_:)(&v37, &v35))
    {
      goto LABEL_38;
    }
  }

  v30 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallContext(0) + 28);
  v31 = *(v16 + 48);
  OUTLINED_FUNCTION_52_1(v4 + v30, v21);
  OUTLINED_FUNCTION_52_1(v2 + v30, &v21[v31]);
  OUTLINED_FUNCTION_31(v21);
  if (!v32)
  {
    sub_1934487B4(v21, v0, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v21[v31]);
    if (!v32)
    {
      sub_19355A5F8(&v21[v31], v11);
      OUTLINED_FUNCTION_0_50();
      sub_1935F05D0(v33, v34);
      OUTLINED_FUNCTION_139();
      sub_1934F8A10(v11);
      sub_1934F8A10(v0);
      sub_19344E6DC(v21, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_38;
    }

    sub_1934F8A10(v0);
LABEL_37:
    sub_19344E6DC(v21, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_31(&v21[v31]);
  if (!v32)
  {
    goto LABEL_37;
  }

  sub_19344E6DC(v21, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_38:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallContext.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_3_4();
  v4 = type metadata accessor for AIML.UUID();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_40_16();
  if (v12)
  {
    goto LABEL_5;
  }

  v13 = *(v0 + 8);
  v14 = *(v0 + 16);
  OUTLINED_FUNCTION_103_0();
  if (v3 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v14)
  {
LABEL_5:
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v13);
  }

  v15 = *(v0 + 17);
  if (v15 != 3)
  {
    OUTLINED_FUNCTION_103_0();
    if (v15 != 2)
    {
      OUTLINED_FUNCTION_103_0();
    }
  }

  sub_19393CAD0();
  if ((*(v0 + 34) & 1) != 0 || (v16 = *(v0 + 24), v17 = *(v0 + 32), OUTLINED_FUNCTION_103_0(), (v17 & 0x100) != 0))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_56_13();
    v18 = IntelligenceFlowExecutorTelemetry.ExecutorAppIntentError.rawValue.getter();
    MEMORY[0x193B18030](v18);
  }

  v19 = type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallContext(0);
  sub_1934487B4(v0 + *(v19 + 28), v2, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v2, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_50();
    sub_1935F05D0(v20, v21);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_1934F8A10(v1);
  }

  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallStarted.executorSearchToolQueryType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallStarted.executorSearchToolQueryType.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  return result;
}

void IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallStarted.init()(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t static IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallStarted.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[16];
  v5 = a1[17];
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = a2[16];
  v9 = a2[17];
  if (v2 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v6 == 2 || ((v6 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v5)
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

    OUTLINED_FUNCTION_39_5();
    v11 = IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryType.rawValue.getter();
    if (v11 != IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryType.rawValue.getter())
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallStarted.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v3)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  v5 = IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryType.rawValue.getter();
  return MEMORY[0x193B18030](v5);
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallStarted.hashValue.getter()
{
  OUTLINED_FUNCTION_42_21();
  sub_19393CAB0();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_32_0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_45();
    v2 = IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryType.rawValue.getter();
    MEMORY[0x193B18030](v2);
  }

  return sub_19393CB00();
}

uint64_t sub_1935F1540()
{
  OUTLINED_FUNCTION_42_21();
  sub_19393CAB0();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_32_0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_45();
    v2 = IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryType.rawValue.getter();
    MEMORY[0x193B18030](v2);
  }

  return sub_19393CB00();
}

__n128 IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallContext.startedOrChanged.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u16[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u16[0] = v2;
  return result;
}

__n128 IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallContext.startedOrChanged.setter(__n128 *a1)
{
  v2 = a1[1].n128_u16[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u16[0] = v2;
  return result;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallContext.traceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallContext(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_19396F4D0;
  *(a1 + 16) = 50528256;
  v2 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallContext(0) + 28);
  type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *a1 = xmmword_19396F4D0;
  *(a1 + 16) = 50528256;
  sub_19344E6DC(a1 + v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void static IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for AIML.UUID();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_150();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  v22 = *v2;
  if (*v4 == 3)
  {
    if (v22 != 3)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v23 = *(v2 + 1);
    v24 = *(v2 + 8);
    v25 = *(v4 + 16);
    v26 = *(v4 + 8);
    v39[0] = *v4;
    v39[1] = v26;
    v40 = v25;
    if (v22 == 3)
    {
      goto LABEL_30;
    }

    v36 = v22;
    v37 = v23;
    v38 = v24 & 0x1FF;
    if ((static IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallStarted.== infix(_:_:)(v39, &v36) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v27 = *(v4 + 18);
  v28 = v2[18];
  if (v27 == 3)
  {
    if (v28 != 3)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v28 == 3)
    {
      goto LABEL_30;
    }

    if (v27 == 2)
    {
      if (v28 != 2)
      {
        goto LABEL_30;
      }
    }

    else if (v28 == 2 || ((v28 ^ v27) & 1) != 0)
    {
      goto LABEL_30;
    }
  }

  v29 = *(v4 + 19);
  v30 = v2[19];
  if (v29 == 3)
  {
    if (v30 != 3)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v30 == 3)
    {
      goto LABEL_30;
    }

    if (v29 == 2)
    {
      if (v30 != 2)
      {
        goto LABEL_30;
      }
    }

    else if (v30 == 2 || ((v30 ^ v29) & 1) != 0)
    {
      goto LABEL_30;
    }
  }

  v31 = *(type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallContext(0) + 28);
  v32 = *(v16 + 48);
  OUTLINED_FUNCTION_52_1(v4 + v31, v21);
  OUTLINED_FUNCTION_52_1(&v2[v31], &v21[v32]);
  OUTLINED_FUNCTION_31(v21);
  if (!v33)
  {
    sub_1934487B4(v21, v0, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v21[v32]);
    if (!v33)
    {
      sub_19355A5F8(&v21[v32], v11);
      OUTLINED_FUNCTION_0_50();
      sub_1935F05D0(v34, v35);
      OUTLINED_FUNCTION_139();
      sub_1934F8A10(v11);
      sub_1934F8A10(v0);
      sub_19344E6DC(v21, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_30;
    }

    sub_1934F8A10(v0);
LABEL_29:
    sub_19344E6DC(v21, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_31(&v21[v32]);
  if (!v33)
  {
    goto LABEL_29;
  }

  sub_19344E6DC(v21, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_30:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallContext.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_3_4();
  v4 = type metadata accessor for AIML.UUID();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_40_16();
  if (v12)
  {
    goto LABEL_6;
  }

  v13 = *(v0 + 8);
  v14 = *(v0 + 16);
  OUTLINED_FUNCTION_103_0();
  if (v3 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if ((v14 & 0x100) != 0)
  {
LABEL_6:
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_56_13();
    v15 = IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryType.rawValue.getter();
    MEMORY[0x193B18030](v15);
  }

  v16 = *(v0 + 18);
  if (v16 != 3)
  {
    OUTLINED_FUNCTION_103_0();
    if (v16 != 2)
    {
      OUTLINED_FUNCTION_103_0();
    }
  }

  sub_19393CAD0();
  v17 = *(v0 + 19);
  if (v17 != 3)
  {
    OUTLINED_FUNCTION_103_0();
    if (v17 != 2)
    {
      OUTLINED_FUNCTION_103_0();
    }
  }

  sub_19393CAD0();
  v18 = type metadata accessor for IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallContext(0);
  sub_1934487B4(v0 + *(v18 + 28), v2, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v2, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_50();
    sub_1935F05D0(v19, v20);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_1934F8A10(v1);
  }

  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowExecutorTelemetry.ExecutorRequestStarted.inputPayload.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  OUTLINED_FUNCTION_5_2(a1);
}

BOOL static IntelligenceFlowExecutorTelemetry.ExecutorRequestStarted.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_18(a1, a2);
    if (v2)
    {
      return 0;
    }

    sub_193501604();
    return (sub_19393C550() & 1) != 0;
  }

  return (*(a2 + 9) & 1) != 0;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestStarted.hash(into:)()
{
  if (*(v0 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v2 = *v0;
  v3 = v0[1] & 1;
  OUTLINED_FUNCTION_103_0();
  sub_1935F2184();
  OUTLINED_FUNCTION_39_20();
  return sub_19393C540();
}

unint64_t sub_1935F2184()
{
  result = qword_1EAE3ED48;
  if (!qword_1EAE3ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ED48);
  }

  return result;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestStarted.hashValue.getter()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  if (v0 == 1)
  {
    OUTLINED_FUNCTION_45_1();
  }

  else
  {
    OUTLINED_FUNCTION_9_45();
    OUTLINED_FUNCTION_32_0();
    sub_1935F2184();
    sub_19393C540();
  }

  return sub_19393CB00();
}

uint64_t sub_1935F2254()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  if (v0 == 1)
  {
    OUTLINED_FUNCTION_45_1();
  }

  else
  {
    OUTLINED_FUNCTION_9_45();
    OUTLINED_FUNCTION_32_0();
    sub_1935F2184();
    sub_19393C540();
  }

  return sub_19393CB00();
}

void IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.outcome.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.success.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 40);
  return sub_1935F2318(v2, v3, v4);
}

uint64_t sub_1935F2318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

__n128 IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.success.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_54_13(a1);
  v4 = *(v2 + 40);
  sub_193456F74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  result = v6;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  return result;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.toolDisambiguation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return sub_19350CB08(v2, v3);
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.toolDisambiguation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_193456418(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

double IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  v2 = OUTLINED_FUNCTION_10_1();
  sub_193456F74(v2, v3, 1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  sub_193456418(0, 1);
  result = 0.0;
  *(a1 + 48) = xmmword_1939526A0;
  return result;
}

BOOL static IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v51 = v11;
  v52 = *(a2 + 24);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_53_18(a1, a2);
    if (v13)
    {
      return 0;
    }

    sub_193501924();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  if (v4 == 1)
  {
    v14 = OUTLINED_FUNCTION_60_15();
    sub_1935F2318(v14, v15, v16);
    if (v9 == 1)
    {
      sub_1935F2318(v8, v52, 1);
      v17 = OUTLINED_FUNCTION_60_15();
      sub_193456F74(v17, v18, v19);
      goto LABEL_14;
    }

    v23 = v52;
    sub_1935F2318(v8, v52, v9);
    goto LABEL_12;
  }

  if (v9 == 1)
  {
    v20 = OUTLINED_FUNCTION_6_37();
    sub_1935F2318(v20, v21, v22);
    v23 = v52;
    sub_1935F2318(v8, v52, 1);
    v24 = OUTLINED_FUNCTION_6_37();
    sub_1935F2318(v24, v25, v26);

LABEL_12:
    v27 = OUTLINED_FUNCTION_6_37();
    sub_193456F74(v27, v28, v29);
    sub_193456F74(v8, v23, v9);
    return 0;
  }

  v30 = OUTLINED_FUNCTION_6_37();
  sub_1935F2318(v30, v31, v32);
  sub_1935F2318(v8, v52, v9);
  v33 = OUTLINED_FUNCTION_6_37();
  sub_1935F2318(v33, v34, v35);
  sub_193501470();
  v36 = v2;
  v37 = sub_19393C550();

  sub_193456F74(v3, v36, v4);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  if (v7 != 1)
  {
    if (v12 != 1)
    {
      v46 = OUTLINED_FUNCTION_37_17();
      sub_19350CB08(v46, v47);
      sub_19350CB08(v51, v12);
      v48 = OUTLINED_FUNCTION_37_17();
      sub_19350CB08(v48, v49);
      sub_1935014C8();
      v50 = sub_19393C550();

      sub_193456418(v6, v7);
      return (v50 & 1) != 0;
    }

    v39 = OUTLINED_FUNCTION_37_17();
    sub_19350CB08(v39, v40);
    sub_19350CB08(v51, 1);
    v41 = OUTLINED_FUNCTION_37_17();
    sub_19350CB08(v41, v42);

    goto LABEL_20;
  }

  sub_19350CB08(v6, 1);
  if (v12 != 1)
  {
    sub_19350CB08(v51, v12);
LABEL_20:
    v43 = OUTLINED_FUNCTION_37_17();
    sub_193456418(v43, v44);
    sub_193456418(v51, v12);
    return 0;
  }

  v38 = 1;
  sub_19350CB08(v51, 1);
  sub_193456418(v6, 1);
  return v38;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v0 + 40);
  v6 = v0[6];
  v5 = v0[7];
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v8 = *v0;
    v9 = v0[1] & 1;
    OUTLINED_FUNCTION_103_0();
    sub_1935F28E4();
    OUTLINED_FUNCTION_39_20();
    sub_19393C540();
  }

  if (v3 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_1935F2938();

    OUTLINED_FUNCTION_39_20();
    sub_19393C540();
  }

  if (v5 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  sub_1935F298C();

  OUTLINED_FUNCTION_39_20();
  sub_19393C540();
}

unint64_t sub_1935F28E4()
{
  result = qword_1EAE3ED50;
  if (!qword_1EAE3ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ED50);
  }

  return result;
}

unint64_t sub_1935F2938()
{
  result = qword_1EAE3ED58;
  if (!qword_1EAE3ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ED58);
  }

  return result;
}

unint64_t sub_1935F298C()
{
  result = qword_1EAE3ED60;
  if (!qword_1EAE3ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ED60);
  }

  return result;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.hashValue.getter()
{
  sub_19393CAB0();
  IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935F2A28()
{
  sub_19393CAB0();
  IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 24);
  return sub_19350CB08(v2, v3);
}

__n128 IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.error.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_54_13(a1);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_193456418(*v2, *(v2 + 8));
  result = v7;
  *v2 = v7;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return result;
}

double IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_193456418(v1, 1);
  result = 0.0;
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

BOOL static IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (a1[1] != 1)
  {
    v33 = *a1;
    v34 = a1[1];
    v35 = a1[2];
    v36 = *(a1 + 24);
    if (v3 != 1)
    {
      v29 = *a2;
      v30 = *(a2 + 8);
      v31 = *(a2 + 16);
      v32 = *(a2 + 24) & 1;
      v20 = OUTLINED_FUNCTION_8_35();
      sub_19350CB08(v20, v21);
      v22 = OUTLINED_FUNCTION_20_23();
      sub_19350CB08(v22, v23);
      v24 = OUTLINED_FUNCTION_8_35();
      sub_19350CB08(v24, v25);
      sub_193501520();
      v26 = sub_19393C550();

      v27 = OUTLINED_FUNCTION_8_35();
      sub_193456418(v27, v28);
      return (v26 & 1) != 0;
    }

    v9 = OUTLINED_FUNCTION_8_35();
    sub_19350CB08(v9, v10);
    sub_19350CB08(v2, 1);
    v11 = OUTLINED_FUNCTION_8_35();
    sub_19350CB08(v11, v12);

LABEL_7:
    v15 = OUTLINED_FUNCTION_8_35();
    sub_193456418(v15, v16);
    v17 = OUTLINED_FUNCTION_20_23();
    sub_193456418(v17, v18);
    return 0;
  }

  v4 = OUTLINED_FUNCTION_55_12();
  sub_19350CB08(v4, v5);
  if (v3 != 1)
  {
    v13 = OUTLINED_FUNCTION_20_23();
    sub_19350CB08(v13, v14);
    goto LABEL_7;
  }

  v6 = 1;
  sub_19350CB08(v2, 1);
  v7 = OUTLINED_FUNCTION_55_12();
  sub_193456418(v7, v8);
  return v6;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.hash(into:)()
{
  if (v0[1] == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3] & 1;
  OUTLINED_FUNCTION_103_0();
  sub_1935F2D2C();

  OUTLINED_FUNCTION_39_20();
  sub_19393C540();
}

unint64_t sub_1935F2D2C()
{
  result = qword_1EAE3ED68;
  if (!qword_1EAE3ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ED68);
  }

  return result;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    sub_1935F2D2C();

    sub_19393C540();
  }

  return sub_19393CB00();
}

uint64_t sub_1935F2E38()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_19393CAB0();
  IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.hash(into:)();
  return sub_19393CB00();
}

BOOL static IntelligenceFlowExecutorTelemetry.ExecutorRequestCanceled.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t sub_1935F2F08()
{
  v1 = *v0;
  sub_19393CAB0();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_1935F2F88(void (*a1)(void *))
{
  v4[9] = *v1;
  sub_19393CAB0();
  a1(v4);
  return sub_19393CB00();
}

uint64_t sub_1935F2FFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7[9] = *v4;
  sub_19393CAB0();
  a4(v7);
  return sub_19393CB00();
}

uint64_t sub_1935F3068(void (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1935F30D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

unint64_t sub_1935F3148()
{
  result = qword_1EAE3ED80;
  if (!qword_1EAE3ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ED80);
  }

  return result;
}

unint64_t sub_1935F31D0()
{
  result = qword_1EAE3ED98;
  if (!qword_1EAE3ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ED98);
  }

  return result;
}

unint64_t sub_1935F3270()
{
  result = qword_1EAE3EDA0;
  if (!qword_1EAE3EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EDA0);
  }

  return result;
}

unint64_t sub_1935F32C8()
{
  result = qword_1EAE3EDA8;
  if (!qword_1EAE3EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EDA8);
  }

  return result;
}

unint64_t sub_1935F3320()
{
  result = qword_1EAE3EDB0;
  if (!qword_1EAE3EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EDB0);
  }

  return result;
}

unint64_t sub_1935F33C0()
{
  result = qword_1EAE3EDB8;
  if (!qword_1EAE3EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EDB8);
  }

  return result;
}

unint64_t sub_1935F3418()
{
  result = qword_1EAE3EDC0;
  if (!qword_1EAE3EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EDC0);
  }

  return result;
}

unint64_t sub_1935F3470()
{
  result = qword_1EAE3EDC8;
  if (!qword_1EAE3EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EDC8);
  }

  return result;
}

void sub_1935F35E4(uint64_t a1)
{
  OUTLINED_FUNCTION_35_20(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_35_20(v2, &qword_1ED506B88);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_35_20(v4, &qword_1ED507A78);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_35_20(v6, &qword_1ED506BD0);
          if (v9 <= 0x3F)
          {
            OUTLINED_FUNCTION_35_20(v8, &qword_1ED506BB0);
            if (v10 <= 0x3F)
            {
              sub_19349D1FC(319, qword_1ED505FC8);
              if (v11 <= 0x3F)
              {
                sub_19349D1FC(319, &qword_1ED506B98);
                if (v12 <= 0x3F)
                {
                  sub_19349D1FC(319, &qword_1ED506B90);
                  if (v13 <= 0x3F)
                  {
                    sub_19349D1FC(319, &qword_1ED506BA0);
                    if (v14 <= 0x3F)
                    {
                      sub_19349D1FC(319, &qword_1ED506BB8);
                      if (v15 <= 0x3F)
                      {
                        sub_19349D1FC(319, &qword_1ED5030D0);
                        if (v16 <= 0x3F)
                        {
                          OUTLINED_FUNCTION_15_2();
                          swift_cvw_initStructMetadataWithLayoutString();
                          OUTLINED_FUNCTION_10_1();
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

void sub_1935F3820(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1935F38BC(uint64_t a1)
{
  OUTLINED_FUNCTION_5_37(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508070);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_10_1();
    }
  }
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallStarted(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[17])
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    OUTLINED_FUNCTION_114_8(a1);
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallStarted(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    result[16] = 0;
    *result = a2 - 254;
    *(result + 1) = 0;
    if (a3 >= 0xFE)
    {
      result[17] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      result[17] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_117_1(result, a2);
    }
  }

  return result;
}

void sub_1935F3A24()
{
  sub_19349D1FC(319, &qword_1ED506BC8);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED506058);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, qword_1ED506BD8);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_5_37(v2, qword_1ED507908);
        if (v4 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_10_1();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallStarted(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[18])
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    OUTLINED_FUNCTION_114_8(a1);
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallStarted(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    *(result + 1) = 0;
    if (a3 >= 0xFE)
    {
      result[18] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      result[18] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_117_1(result, a2);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_43Tm(char *a1, int a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v3 = *a1;
    if (*a1 >= 2u)
    {
      v9 = (v3 & 0xFE) + 2147483646;
      v10 = (v9 & 0x7FFFFFFE | v3 & 1) - 1;
      if ((v9 & 0x7FFFFFFE) != 0)
      {
        return v10;
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

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v6 = OUTLINED_FUNCTION_101(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void __swift_store_extra_inhabitant_index_44Tm()
{
  OUTLINED_FUNCTION_91_0();
  if (v3 == 252)
  {
    *v1 = v0 + 3;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v5 = OUTLINED_FUNCTION_101(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_1935F3D0C()
{
  sub_19349D1FC(319, &qword_1ED506BA8);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED506BC0);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED505FC0);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_5_37(v2, qword_1ED507908);
        if (v4 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_10_1();
        }
      }
    }
  }
}

unint64_t *sub_1935F3F1C(unint64_t *result, int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = (a2 - 126);
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_17_23(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary16IFOutcomeSuccessVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t sub_1935F3F98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 64))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
  }

  v3 = *(a1 + 32);
  OUTLINED_FUNCTION_38_18();
  v7 = v5 != v6 ? -1 : v4;
  v8 = v7 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_46_4(v8);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_1935F3FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1935F4064(uint64_t a1, unsigned int a2)
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
  OUTLINED_FUNCTION_38_18();
  v7 = v5 != v6 ? -1 : v4;
  v8 = v7 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_46_4(v8);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_1935F40C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1935F4128(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_117_1(result, a2);
        }

        break;
    }
  }

  return result;
}

unint64_t *sub_1935F41FC(unint64_t *result, int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = (a2 - 125);
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_17_23(result, a2);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_42_21()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = v0[17];
}

__n128 OUTLINED_FUNCTION_54_13(__n128 *a1)
{
  result = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  return result;
}

void OUTLINED_FUNCTION_59_14()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
}

_BYTE *_s7FoundInOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s22WalletPaymentsCommerceOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1935F4658()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510E78);
  v5 = __swift_project_value_buffer(v4, qword_1ED510E78);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.WalletPaymentsCommerce.FoundIn.ClassicOrder.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:15724800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x80000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_25 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510E78);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDD8, &qword_193971340);
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

unint64_t static Library.Streams.WalletPaymentsCommerce.FoundIn.ClassicOrder.attribute(_:)(void (*a1)(void))
{
  result = sub_1935F4A84(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935F4AC0(void (*a1)(void))
{
  result = sub_1935F4A84(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935F4B28(uint64_t a1)
{
  result = sub_1935F4B50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1935F4B50()
{
  result = qword_1ED503D28;
  if (!qword_1ED503D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503D28);
  }

  return result;
}

_BYTE *_s12ClassicOrderOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1935F4C6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510ED8);
  v5 = __swift_project_value_buffer(v4, qword_1ED510ED8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.WalletPaymentsCommerce.FoundIn.OrderEmail.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:15724800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_26 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510ED8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDE0, &qword_1939713B8);
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

unint64_t static Library.Streams.WalletPaymentsCommerce.FoundIn.OrderEmail.attribute(_:)(void (*a1)(void))
{
  result = sub_1935F5098(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935F50D4(void (*a1)(void))
{
  result = sub_1935F5098(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935F513C(uint64_t a1)
{
  result = sub_1935F5164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1935F5164()
{
  result = qword_1ED503B40;
  if (!qword_1ED503B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503B40);
  }

  return result;
}

_BYTE *_s10OrderEmailOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1935F5280()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510F38);
  v5 = __swift_project_value_buffer(v4, qword_1ED510F38);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.WalletPaymentsCommerce.FoundIn.TrackedOrder.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:15724800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x80000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_27 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510F38);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDE8, &qword_193971430);
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

unint64_t static Library.Streams.WalletPaymentsCommerce.FoundIn.TrackedOrder.attribute(_:)(void (*a1)(void))
{
  result = sub_1935F56AC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935F56E8(void (*a1)(void))
{
  result = sub_1935F56AC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935F5750(uint64_t a1)
{
  result = sub_1935F5778();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1935F5778()
{
  result = qword_1ED503D18;
  if (!qword_1ED503D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503D18);
  }

  return result;
}

_BYTE *_s12TrackedOrderOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletPaymentsCommerceClassicOrder.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v28 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDF0, &qword_1939714A8);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_1935F5A44(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3EDF0, &qword_1939714A8);
  sub_19393C250();
  (*(v4 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE3EDF0, &qword_1939714A8);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_1935F5A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static WalletPaymentsCommerceClassicOrder.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDF0, &qword_1939714A8);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE3EDF0, &qword_1939714A8);
  sub_19393C260();
  if (!v20)
  {
    sub_1935F5BD8(v32, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935F5BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static WalletPaymentsCommerceClassicOrder.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v39 = v2;
  v40 = v1;
  v38 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDF0, &qword_1939714A8);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = sub_19393C0C0();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v37 - v25;
  if (*sub_1935FCCB8() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    (*(v19 + 16))(v24, v26, v16);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v27, v28, v29);
    sub_19393C280();
    (*(v19 + 8))(v26, v16);
    if (!v0)
    {
      v31 = v39;
      sub_1935F5BD8(v15, v39);
      v32 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
      v33 = *(v32 + 20);
      sub_19344E6DC(v31 + v33, &qword_1EAE3A9E8, &qword_19394F800);
      v34 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v34);
      (*(v35 + 16))(v31 + v33, v38, v34);
      __swift_storeEnumTagSinglePayload(v31 + v33, 0, 1, v34);
      v36 = *(v32 + 24);
      sub_19344E6DC(v31 + v36, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v40, v31 + v36);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v30 = v5;
    *(v30 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t WalletPaymentsCommerceClassicOrder.serialize()()
{
  v1 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDF0, &qword_1939714A8);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1935F5A44(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3EDF0, &qword_1939714A8);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3EDF0, &qword_1939714A8);
  return v15;
}

id static WalletPaymentsCommerceClassicOrder.columns.getter()
{
  v73 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000013, 0x8000000193A28D80);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v19 = OUTLINED_FUNCTION_2_4(inited, v12, v13, v14, v15, v16, v17, v18, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v19, v20, v21, v22, v23, v24, v25, v26, v27);
  v19[2].n128_u64[0] = sub_19393C850();
  v28 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_32_19();
  result = OUTLINED_FUNCTION_3_5(v29, v30);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  v31 = swift_initStackObject();
  v39 = OUTLINED_FUNCTION_2_4(v31, v32, v33, v34, v35, v36, v37, v38, v71);
  OUTLINED_FUNCTION_2_13(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v39[2].n128_u64[0] = sub_19393C850();
  v48 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_10_31();
  result = OUTLINED_FUNCTION_3_5(v49, v50);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v51 = swift_initStackObject();
  v59 = OUTLINED_FUNCTION_2_4(v51, v52, v53, v54, v55, v56, v57, v58, v72);
  OUTLINED_FUNCTION_2_13(v59, v60, v61, v62, v63, v64, v65, v66, v67);
  v59[2].n128_u64[0] = sub_19393C850();
  v68 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_59_1();
  result = sub_19343D150(v69, v70, 3, 0, v59, 0, 1);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v73;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1935F62D8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56[-v9];
  v11 = sub_19393BE00();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_38();
  v21 = v4 == 0xD000000000000013 && v20 == v2;
  if (!v21 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    OUTLINED_FUNCTION_32_19();
    v27 = v4 == (OUTLINED_FUNCTION_19_7() | 0x6564497200000000) && v2 == v26;
    if (v27 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v22 = *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 32);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_10_31();
    v29 = v4 == (OUTLINED_FUNCTION_19_7() | 0x6D754E7200000000) && v2 == v28;
    if (v29 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v30 = (v0 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 36));
      v31 = v30[1];
      if (v31)
      {
        *&v58[0] = *v30;
        *(&v58[0] + 1) = v31;
        OUTLINED_FUNCTION_29_17();
        sub_1934948FC();
        goto LABEL_9;
      }

LABEL_50:
      *v6 = 0u;
      *(v6 + 16) = 0u;
      goto LABEL_9;
    }

    v33 = v4 == (OUTLINED_FUNCTION_19_7() | 0x7461447200000000) && v2 == v32;
    if (v33 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
    {
      v34 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
      sub_1934DE90C(v0 + *(v34 + 40), v10);
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
      {
        (*(v14 + 32))(v19, v10, v11);
        sub_1934948FC();
        (*(v14 + 8))(v19, v11);
        goto LABEL_9;
      }

      sub_19344E6DC(v10, &qword_1EAE3A9E8, &qword_19394F800);
    }

    else
    {
      v35 = v4 == 0x746E61686372656DLL && v2 == 0xE800000000000000;
      if (v35 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v36 = *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 44);
        memcpy(v57, (v0 + v36), sizeof(v57));
        memcpy(v56, (v0 + v36), sizeof(v56));
        sub_1935F7D7C(v57, v58);
        sub_193494798(&type metadata for WalletPaymentsCommerceClassicOrder.Merchant, &off_1F07D7030, v6);
        memcpy(v58, v56, 0x48uLL);
        sub_1935F7DD8(v58);
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_38();
      v38 = v4 == 0xD000000000000014 && v37 == v2;
      if (v38 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        *&v58[0] = *(v0 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 48));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EE08, &qword_1939714B8);
        goto LABEL_8;
      }

      v39 = v4 == 0x72656D6F74737563 && v2 == 0xE800000000000000;
      if (v39 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v40 = v0 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 52);
        v41 = *(v40 + 8);
        if (v41 != 1)
        {
          *&v58[0] = *v40;
          *(&v58[0] + 1) = v41;
          v42 = *(v40 + 32);
          v58[1] = *(v40 + 16);
          v58[2] = v42;
          v58[3] = *(v40 + 48);
          OUTLINED_FUNCTION_29_17();
          sub_193494798(v43, v44, v45);
          goto LABEL_9;
        }

        goto LABEL_50;
      }

      v46 = v4 == (OUTLINED_FUNCTION_21_22() & 0xFFFFFFFFFFFFLL | 0x74000000000000) && v2 == 0xE700000000000000;
      if (!v46 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        v54 = v53;
        *v53 = v4;
        v53[1] = v2;
        v53[5] = type metadata accessor for WalletPaymentsCommerceClassicOrder();
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v54 + 2);
        sub_1935F5A44(v0, boxed_opaque_existential_1Tm);
        *(v54 + 48) = 1;
        swift_willThrow();

        goto LABEL_9;
      }

      v47 = v0 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 56);
      v48 = *(v47 + 8);
      if (v48)
      {
        v49 = *(v47 + 16);
        *&v58[0] = *v47;
        *(&v58[0] + 1) = v48;
        *&v58[1] = v49;
        *(&v58[1] + 8) = *(v47 + 24);
        *(&v58[2] + 8) = *(v47 + 40);
        OUTLINED_FUNCTION_29_17();
        sub_193494798(v50, v51, v52);
        goto LABEL_9;
      }
    }

    *v6 = 0u;
    *(v6 + 16) = 0u;
    goto LABEL_9;
  }

  v22 = *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 28);
LABEL_7:
  v23 = (v0 + v22);
  v25 = *v23;
  v24 = v23[1];
  *&v58[0] = v25;
  *(&v58[0] + 1) = v24;
LABEL_8:
  OUTLINED_FUNCTION_29_17();
  sub_1934948FC();
LABEL_9:
  OUTLINED_FUNCTION_27();
}

void sub_1935F67F0(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  v5 = v3[1];
  if (a1 == 7955819 && a2 == 0xE300000000000000)
  {
    goto LABEL_6;
  }

  v11 = v3[2];
  v10 = v3[3];
  v12 = v3[4];
  if (OUTLINED_FUNCTION_27_18())
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_38();
  v14 = a1 == 0xD000000000000017 && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_27_18() & 1) != 0)
  {
    if (!v10)
    {
      *a3 = 0u;
      a3[1] = 0u;
      return;
    }

LABEL_6:
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v16 = a1 == 0xD000000000000010 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_27_18() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EE10, &qword_1939714C0);
    goto LABEL_6;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v18 = v17;
  *v17 = a1;
  v17[1] = a2;
  v17[5] = &type metadata for WalletPaymentsCommerceClassicOrder.LocalizedString;
  v19 = swift_allocObject();
  v18[2] = v19;
  v19[2] = v6;
  v19[3] = v5;
  v19[4] = v11;
  v19[5] = v10;
  v19[6] = v12;
  *(v18 + 48) = 1;
  swift_willThrow();
}

unint64_t sub_1935F69D0@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  OUTLINED_FUNCTION_38();
  if (v7 == 0xD000000000000010 && v8 == a1)
  {
    return sub_1934948FC();
  }

  v10 = v7;
  v11 = v2[3];
  v18 = v2[2];
  if (sub_19393CA30())
  {
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_38();
  result = 0xD000000000000011;
  v14 = v10 == 0xD000000000000011 && v13 == a1;
  if (v14 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v11)
    {
      return sub_1934948FC();
    }

    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    v16 = v15;
    *v15 = v10;
    v15[1] = a1;
    v15[5] = &type metadata for WalletPaymentsCommerceClassicOrder.LocalizedString.Localization;
    v17 = swift_allocObject();
    v16[2] = v17;
    v17[2] = v6;
    v17[3] = v5;
    v17[4] = v18;
    v17[5] = v11;
    *(v16 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

void sub_1935F6B6C()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 0x4E79616C70736964 && v0 == 0xEB00000000656D61;
  if (v3 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v29 = __dst[0];
    v30 = __dst[1];
    v31 = __dst[2];
    v32 = __dst[3];
    v33 = __dst[4];

    OUTLINED_FUNCTION_52_2(v10, &type metadata for WalletPaymentsCommerceClassicOrder.LocalizedString, &off_1F07D7010, v11, v12, v13, v14, v15, v29);
    sub_193494798(v16, v17, v18);

    return;
  }

  v19 = 0x614E6E69616D6F64;
  v20 = v1 == 0x614E6E69616D6F64 && v0 == 0xEA0000000000656DLL;
  if (v20 || (v19 = OUTLINED_FUNCTION_5_5(), (v19 & 1) != 0))
  {
    v21 = __dst[6];
    if (__dst[6])
    {
      v22 = __dst[5];
LABEL_14:
      v30 = v21;
      OUTLINED_FUNCTION_52_2(v19, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v22);
      sub_1934948FC();
      return;
    }

LABEL_22:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v23 = v1 == 0xD000000000000014 && 0x8000000193A28E40 == v0;
  if (v23 || (v19 = OUTLINED_FUNCTION_5_5(), (v19 & 1) != 0))
  {
    v21 = __dst[8];
    if (__dst[8])
    {
      v22 = __dst[7];
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  sub_19349AB64();
  v24 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v24, v25);
  *(v26 + 40) = &type metadata for WalletPaymentsCommerceClassicOrder.Merchant;
  v27 = swift_allocObject();
  v28 = OUTLINED_FUNCTION_28_3(v27);
  memcpy(v28, __dst, 0x48uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1935F7D7C(__dst, &v29);
}

void sub_1935F6D70()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v3, sizeof(__dst));
  OUTLINED_FUNCTION_38();
  v5 = v2 == 0xD000000000000015 && v4 == v1;
  if (v5 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    __src[0] = __dst[0];
    __src[1] = __dst[1];
LABEL_7:
    sub_1934948FC();
    return;
  }

  v6 = v2 == 0x676E696B63617274 && v1 == 0xEE007265626D754ELL;
  if (v6 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v7 = __dst[3];
    if (__dst[3])
    {
      v8 = __dst[2];
LABEL_15:
      __src[0] = v8;
      __src[1] = v7;
      goto LABEL_7;
    }

    goto LABEL_36;
  }

  v9 = v2 == 0x4E72656972726163 && v1 == 0xEB00000000656D61;
  if (v9 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v7 = __dst[5];
    if (__dst[5])
    {
      v8 = __dst[4];
      goto LABEL_15;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_38();
  v11 = v2 == 0xD000000000000011 && v10 == v1;
  if (v11 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v7 = __dst[7];
    if (__dst[7])
    {
      v8 = __dst[6];
      goto LABEL_15;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_38();
  v13 = v2 == 0xD000000000000011 && v12 == v1;
  if (v13 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    memcpy(__src, (v3 + 64), 0xA8uLL);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__src) == 1)
    {
LABEL_36:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    memcpy(v19, __src, sizeof(v19));
    sub_193494798(&type metadata for WalletPaymentsCommerceClassicOrder.ShippingRecipient, &off_1F07D7050, v0);
  }

  else
  {
    sub_19349AB64();
    v14 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_9_3(v14, v15);
    *(v16 + 40) = &type metadata for WalletPaymentsCommerceClassicOrder.ShippingFulfillment;
    v17 = swift_allocObject();
    v18 = OUTLINED_FUNCTION_28_3(v17);
    memcpy(v18, __dst, 0xE8uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1935F7E2C(__dst, __src);
  }
}

void sub_1935F6FCC()
{
  OUTLINED_FUNCTION_24_20();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x6D614E6E65766967 && v0 == 0xE900000000000065;
  if (v10 || (OUTLINED_FUNCTION_59_1(), v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    v11 = __dst[1];
    if (__dst[1])
    {
      v12 = __dst[0];
LABEL_8:
      v35[0] = v11;
      OUTLINED_FUNCTION_52_2(v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v12);
      sub_1934948FC();
      return;
    }

    goto LABEL_37;
  }

  v3 = OUTLINED_FUNCTION_15_13();
  v14 = v10 && v0 == v13;
  if (v14 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    v11 = __dst[3];
    if (__dst[3])
    {
      v12 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_10_31();
  v3 = OUTLINED_FUNCTION_22_23();
  v16 = v10 && v0 == v15;
  if (v16 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    v11 = __dst[5];
    if (__dst[5])
    {
      v12 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_37;
  }

  v3 = OUTLINED_FUNCTION_13_19();
  v18 = v10 && v0 == v17;
  if (v18 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    v11 = __dst[7];
    if (__dst[7])
    {
      v12 = __dst[6];
      goto LABEL_8;
    }

LABEL_37:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v19 = v1 == 0x73736572646461 && v0 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (__dst[8])
    {
      v20 = memcpy(v35, (v2 + 72), sizeof(v35));
      OUTLINED_FUNCTION_52_2(v20, &type metadata for WalletPaymentsCommerceClassicOrder.Address, &off_1F07D7070, v21, v22, v23, v24, v25, __dst[8]);
      sub_193494798(v26, v27, v28);
      return;
    }

    goto LABEL_37;
  }

  sub_19349AB64();
  v29 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v29, v30);
  *(v31 + 40) = &type metadata for WalletPaymentsCommerceClassicOrder.ShippingRecipient;
  v32 = swift_allocObject();
  v33 = OUTLINED_FUNCTION_28_3(v32);
  memcpy(v33, __dst, 0xA8uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1935F7E88(__dst, &v34);
}

uint64_t sub_1935F71D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6D614E6E65766967;
  v7 = v3[1];
  v26 = *v3;
  v27 = v7;
  v8 = v3[3];
  v28 = v3[2];
  v29 = v8;
  v9 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
  if (v9 || (OUTLINED_FUNCTION_59_1(), result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    v11 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      v12 = v26;
LABEL_8:
      v25[0] = v12;
      v25[1] = v11;
      return sub_1934948FC();
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_15_13();
    v14 = v9 && a2 == v13;
    if (v14 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
    {
      v11 = *(&v27 + 1);
      if (*(&v27 + 1))
      {
        v12 = v27;
        goto LABEL_8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_10_31();
      result = OUTLINED_FUNCTION_22_23();
      v16 = v9 && a2 == v15;
      if (v16 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
      {
        v11 = *(&v28 + 1);
        if (*(&v28 + 1))
        {
          v12 = v28;
          goto LABEL_8;
        }
      }

      else
      {
        result = OUTLINED_FUNCTION_13_19();
        if (!v9 || a2 != v17)
        {
          result = OUTLINED_FUNCTION_5_5();
          if ((result & 1) == 0)
          {
            sub_19349AB64();
            v19 = OUTLINED_FUNCTION_13_9();
            OUTLINED_FUNCTION_9_3(v19, v20);
            *(v21 + 40) = &type metadata for WalletPaymentsCommerceClassicOrder.Customer;
            v22 = swift_allocObject();
            *(v3 + 2) = v22;
            v23 = v29;
            v22[3] = v28;
            v22[4] = v23;
            v24 = v27;
            v22[1] = v26;
            v22[2] = v24;
            OUTLINED_FUNCTION_26_0();

            return sub_1935F7EE4(&v26, v25);
          }
        }

        v11 = *(&v29 + 1);
        if (*(&v29 + 1))
        {
          v12 = v29;
          goto LABEL_8;
        }
      }
    }
  }

  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

void sub_1935F7388()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 0x4C73736572646461 && v0 == 0xEC00000073656E69;
  if (v3 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v27[0] = __dst[0];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    v11 = v10;
LABEL_7:
    OUTLINED_FUNCTION_52_2(v10, v11, v4, v5, v6, v7, v8, v9, v27[0]);
    sub_1934948FC();
    return;
  }

  v10 = 0x7974696C61636F6CLL;
  v12 = v1 == 0x7974696C61636F6CLL && v0 == 0xE800000000000000;
  if (v12 || (v10 = OUTLINED_FUNCTION_5_5(), (v10 & 1) != 0))
  {
    v13 = __dst[2];
    if (__dst[2])
    {
      v14 = __dst[1];
LABEL_15:
      v27[0] = v14;
      v27[1] = v13;
      v11 = MEMORY[0x1E69E6158];
      goto LABEL_7;
    }

    goto LABEL_51;
  }

  v10 = 0x6C61636F4C627573;
  v15 = v1 == 0x6C61636F4C627573 && v0 == 0xEB00000000797469;
  if (v15 || (v10 = OUTLINED_FUNCTION_5_5(), (v10 & 1) != 0))
  {
    v13 = __dst[4];
    if (__dst[4])
    {
      v14 = __dst[3];
      goto LABEL_15;
    }

    goto LABEL_51;
  }

  OUTLINED_FUNCTION_38();
  v17 = v1 == 0xD000000000000012 && v16 == v0;
  if (v17 || (v10 = OUTLINED_FUNCTION_5_5(), (v10 & 1) != 0))
  {
    v13 = __dst[6];
    if (__dst[6])
    {
      v14 = __dst[5];
      goto LABEL_15;
    }

    goto LABEL_51;
  }

  OUTLINED_FUNCTION_38();
  v10 = 0xD000000000000015;
  v19 = v1 == 0xD000000000000015 && v18 == v0;
  if (v19 || (v10 = OUTLINED_FUNCTION_5_5(), (v10 & 1) != 0))
  {
    v13 = __dst[8];
    if (__dst[8])
    {
      v14 = __dst[7];
      goto LABEL_15;
    }

    goto LABEL_51;
  }

  v10 = 0x6F436C6174736F70;
  v20 = v1 == 0x6F436C6174736F70 && v0 == 0xEA00000000006564;
  if (v20 || (v10 = OUTLINED_FUNCTION_5_5(), (v10 & 1) != 0))
  {
    v13 = __dst[10];
    if (__dst[10])
    {
      v14 = __dst[9];
      goto LABEL_15;
    }

    goto LABEL_51;
  }

  v10 = 0x437972746E756F63;
  v21 = v1 == 0x437972746E756F63 && v0 == 0xEB0000000065646FLL;
  if (v21 || (v10 = OUTLINED_FUNCTION_5_5(), (v10 & 1) != 0))
  {
    v13 = __dst[12];
    if (__dst[12])
    {
      v14 = __dst[11];
      goto LABEL_15;
    }

LABEL_51:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  sub_19349AB64();
  v22 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v22, v23);
  *(v24 + 40) = &type metadata for WalletPaymentsCommerceClassicOrder.Address;
  OUTLINED_FUNCTION_28_16();
  v25 = swift_allocObject();
  v26 = OUTLINED_FUNCTION_28_3(v25);
  memcpy(v26, __dst, 0x68uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1935F7F40(__dst, v27);
}

uint64_t sub_1935F763C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  if (a1 == 0x6F6D416C61746F74 && a2 == 0xEB00000000746E75)
  {
    return sub_1934948FC();
  }

  v8 = v2[2];
  v9 = v2[3];
  v25 = v2[4];
  v24 = v2[5];
  v10 = v2[6];
  if (OUTLINED_FUNCTION_25_20())
  {
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_38();
  v13 = a1 == 0xD000000000000011 && v12 == a2;
  if (v13 || (OUTLINED_FUNCTION_25_20() & 1) != 0)
  {
    return sub_1934948FC();
  }

  v15 = a1 == (OUTLINED_FUNCTION_21_22() & 0xFFFFFFFFFFFFLL | 0x4D74000000000000) && a2 == v14;
  if (v15 || (OUTLINED_FUNCTION_25_20() & 1) != 0 || ((OUTLINED_FUNCTION_38(), a1 == 0xD00000000000001ELL) ? (v19 = v18 == a2) : (v19 = 0), v19 || (OUTLINED_FUNCTION_25_20() & 1) != 0))
  {
    v16 = &qword_1EAE3ABB0;
    v17 = &qword_193950BB8;
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    return sub_1934948FC();
  }

  v20 = a1 == 0x746361736E617274 && a2 == 0xEC000000736E6F69;
  if (v20 || (OUTLINED_FUNCTION_25_20() & 1) != 0)
  {
    v16 = &unk_1EAE3EE18;
    v17 = &unk_1939714C8;
    goto LABEL_19;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v22 = v21;
  *v21 = a1;
  v21[1] = a2;
  v21[5] = &type metadata for WalletPaymentsCommerceClassicOrder.Payment;
  OUTLINED_FUNCTION_98_2();
  v23 = swift_allocObject();
  v22[2] = v23;
  v23[2] = v6;
  v23[3] = v5;
  v23[4] = v8;
  v23[5] = v9;
  v23[6] = v25;
  v23[7] = v24;
  v23[8] = v10;
  *(v22 + 48) = 1;
  swift_willThrow();
}

void sub_1935F78AC()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x746E756F6D61 && v0 == 0xE600000000000000;
  if (v10 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    v11 = __dst[0];
    v12 = __dst[1];
LABEL_7:
    v31 = v11;
    v32 = v12;
LABEL_8:
    OUTLINED_FUNCTION_52_2(v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v31);
    sub_1934948FC();
    return;
  }

  v3 = 0x79636E6572727563;
  v13 = v1 == 0x79636E6572727563 && v0 == 0xEC00000065646F43;
  if (v13 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    v11 = __dst[2];
    v12 = __dst[3];
    goto LABEL_7;
  }

  v15 = v1 == (OUTLINED_FUNCTION_21_22() & 0xFFFFFFFFFFFFLL | 0x4D74000000000000) && v0 == v14;
  if (v15 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    v31 = __dst[4];
    v32 = __dst[5];
    v33 = __dst[6];
    v34 = __dst[7];
    v35 = __dst[8];
    v36 = __dst[9];
    v37 = __dst[10];

    OUTLINED_FUNCTION_52_2(v16, &type metadata for WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod, &off_1F07D70A0, v17, v18, v19, v20, v21, v31);
    sub_193494798(v22, v23, v24);
  }

  else
  {
    v25 = v1 == 0xD00000000000001DLL && 0x8000000193A28F20 == v0;
    if (v25 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
    {
      if (__dst[12])
      {
        v31 = __dst[11];
        v32 = __dst[12];
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_36_4();
    }

    else
    {
      sub_19349AB64();
      v26 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_9_3(v26, v27);
      *(v28 + 40) = &type metadata for WalletPaymentsCommerceClassicOrder.Transaction;
      OUTLINED_FUNCTION_28_16();
      v29 = swift_allocObject();
      v30 = OUTLINED_FUNCTION_28_3(v29);
      memcpy(v30, __dst, 0x68uLL);
      OUTLINED_FUNCTION_26_0();

      sub_1935F7F9C(__dst, &v31);
    }
  }
}

uint64_t sub_1935F7AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v12 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v12 || (v13 = v3[5], v14 = v3[6], v21 = v13, result = sub_19393CA30(), (result & 1) != 0))
  {

    sub_193494798(&type metadata for WalletPaymentsCommerceClassicOrder.LocalizedString, &off_1F07D7010, a3);
  }

  else
  {
    v16 = a1 == 0xD000000000000014 && 0x8000000193A28E40 == a2;
    if (v16 || (result = sub_19393CA30(), (result & 1) != 0))
    {
      if (v14)
      {
        return sub_1934948FC();
      }

      else
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
      }
    }

    else
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      v17 = v14;
      v19 = v18;
      *v18 = a1;
      v18[1] = a2;
      v18[5] = &type metadata for WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod;
      OUTLINED_FUNCTION_98_2();
      v20 = swift_allocObject();
      v19[2] = v20;
      v20[2] = v7;
      v20[3] = v8;
      v20[4] = v10;
      v20[5] = v9;
      v20[6] = v11;
      v20[7] = v21;
      v20[8] = v17;
      *(v19 + 48) = 1;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1935F7D0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double WalletPaymentsCommerceClassicOrder.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_1935FCDD0(v4);
  v5 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = v2[10];
  sub_1934E0648();
  v7 = (a1 + v2[13]);
  sub_1935FD310(v7);
  v8 = (a1 + v2[14]);
  sub_1935FD434(v8);
  *a1 = *sub_1935FCCB8();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  v10 = (a1 + v2[7]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (a1 + v2[8]);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *v5 = 0;
  v5[1] = 0;
  sub_19344E6DC(a1 + v6, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v9);
  WalletPaymentsCommerceClassicOrder.Merchant.init()(&__src);
  memcpy(a1 + v2[11], &__src, 0x48uLL);
  *(a1 + v2[12]) = MEMORY[0x1E69E7CC0];
  v12 = v7[1];
  v21[0] = *v7;
  v21[1] = v12;
  v13 = v7[3];
  v21[2] = v7[2];
  v21[3] = v13;
  sub_19344E6DC(v21, &qword_1EAE3EE00, &qword_1939714B0);
  *v7 = xmmword_1939526A0;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v14 = v8[2];
  v15 = v8[3];
  v16 = v8[4];
  v17 = v8[5];
  v18 = v8[6];
  sub_1935F7D0C(*v8, v8[1]);
  v8[6] = 0;
  result = 0.0;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *v8 = 0u;
  return result;
}

BOOL static WalletPaymentsCommerceClassicOrder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v110 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v17 = OUTLINED_FUNCTION_4_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v110 - v20;
  v22 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  OUTLINED_FUNCTION_3_43(v22[7]);
  v25 = v25 && v23 == v24;
  if (!v25 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_43(v22[8]);
  v28 = v25 && v26 == v27;
  if (!v28 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  v29 = v22[9];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    v34 = *v30 == *v32 && v31 == v33;
    if (!v34 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v117 = v7;
  v115 = v22;
  v35 = v22[10];
  v36 = a1;
  v37 = *(v16 + 48);
  v116 = v36;
  sub_1934486F8(v36 + v35, v21, &qword_1EAE3A9E8, &qword_19394F800);
  v38 = a2 + v35;
  v39 = a2;
  sub_1934486F8(v38, &v21[v37], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(v21);
  if (v25)
  {
    OUTLINED_FUNCTION_31(&v21[v37]);
    if (v25)
    {
      sub_19344E6DC(v21, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_31;
    }

LABEL_28:
    v41 = &qword_1EAE3B968;
    v42 = &qword_193972430;
    v43 = v21;
LABEL_29:
    sub_19344E6DC(v43, v41, v42);
    return 0;
  }

  sub_1934486F8(v21, v15, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(&v21[v37]);
  if (v40)
  {
    (*(v117 + 8))(v15, v4);
    goto LABEL_28;
  }

  v44 = v117;
  (*(v117 + 32))(v11, &v21[v37], v4);
  sub_1934DF3E8(&qword_1EAE3A848);
  v45 = sub_19393C550();
  v46 = *(v44 + 8);
  v46(v11, v4);
  v46(v15, v4);
  sub_19344E6DC(v21, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v45 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v48 = v115;
  v47 = v116;
  v49 = v115[11];
  memcpy(v143, (v116 + v49), sizeof(v143));
  memcpy(v128, (v116 + v49), sizeof(v128));
  v50 = v115[11];
  memcpy(v144, (v39 + v50), sizeof(v144));
  memcpy(v142, (v39 + v50), sizeof(v142));
  sub_1935F7D7C(v143, v139);
  sub_1935F7D7C(v144, v139);
  sub_1935F8B2C();
  LOBYTE(v50) = sub_19393C550();
  memcpy(__dst, v142, sizeof(__dst));
  sub_1935F7DD8(__dst);
  memcpy(v146, v128, 0x48uLL);
  sub_1935F7DD8(v146);
  if ((v50 & 1) == 0 || (sub_1935F8F88(*(v47 + v48[12]), *(v39 + v48[12])) & 1) == 0)
  {
    return 0;
  }

  v51 = (v47 + v48[13]);
  v52 = v51[1];
  v139[0] = *v51;
  v139[1] = v52;
  v53 = v51[1];
  v54 = v51[3];
  v140 = v51[2];
  v141 = v54;
  v55 = (v39 + v48[13]);
  v56 = v55[1];
  *v142 = *v55;
  *&v142[16] = v56;
  v57 = v55[1];
  v58 = v55[3];
  *&v142[32] = v55[2];
  *&v142[48] = v58;
  v136 = v53;
  v137 = v140;
  v138 = v51[3];
  v59 = v139[0];
  v60 = *v142;
  v61 = *&v142[8];
  v133 = v57;
  v134 = *&v142[32];
  v135 = v55[3];
  if (*(&v139[0] + 1) == 1)
  {
    if (*&v142[8] == 1)
    {
      *v128 = *&v139[0];
      *&v128[8] = 1;
      v62 = v51[2];
      *&v128[16] = v51[1];
      *&v128[32] = v62;
      *&v128[48] = v51[3];
      sub_1934486F8(v139, &v124, &qword_1EAE3EE00, &qword_1939714B0);
      sub_1934486F8(v142, &v124, &qword_1EAE3EE00, &qword_1939714B0);
      sub_19344E6DC(v128, &qword_1EAE3EE00, &qword_1939714B0);
      goto LABEL_41;
    }

    sub_1934486F8(v139, v128, &qword_1EAE3EE00, &qword_1939714B0);
    sub_1934486F8(v142, v128, &qword_1EAE3EE00, &qword_1939714B0);
    goto LABEL_39;
  }

  *v128 = v139[0];
  v63 = v51[2];
  *&v128[16] = v51[1];
  *&v128[32] = v63;
  *&v128[48] = v51[3];
  v124 = v139[0];
  v125 = *&v128[16];
  v126 = v63;
  v127 = *&v128[48];
  if (*&v142[8] == 1)
  {
    v120 = *v128;
    v121 = *&v128[16];
    v122 = *&v128[32];
    v123 = *&v128[48];
    OUTLINED_FUNCTION_5_38(v139);
    OUTLINED_FUNCTION_5_38(v142);
    OUTLINED_FUNCTION_5_38(v128);
    sub_1935F9170(&v120);
LABEL_39:
    *v128 = v59;
    *&v128[16] = v136;
    *&v128[32] = v137;
    *&v128[48] = v138;
    *&v128[64] = v60;
    v129 = v61;
    v130 = v133;
    v131 = v134;
    v132 = v135;
    v41 = &unk_1EAE3EE28;
    v42 = &unk_1939715B8;
    v43 = v128;
    goto LABEL_29;
  }

  v64 = v55[2];
  v121 = v55[1];
  v122 = v64;
  v123 = v55[3];
  v120 = *v142;
  OUTLINED_FUNCTION_6_38(v139);
  OUTLINED_FUNCTION_6_38(v142);
  OUTLINED_FUNCTION_6_38(v128);
  sub_1935F91C4();
  v65 = sub_19393C550();
  v118[0] = v120;
  v118[1] = v121;
  v118[2] = v122;
  v118[3] = v123;
  sub_1935F9170(v118);
  v119[0] = v124;
  v119[1] = v125;
  v119[2] = v126;
  v119[3] = v127;
  sub_1935F9170(v119);
  v120 = v59;
  v121 = v136;
  v122 = v137;
  v123 = v138;
  sub_19344E6DC(&v120, &qword_1EAE3EE00, &qword_1939714B0);
  if ((v65 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  v66 = v48[14];
  v67 = *(v47 + v66);
  v68 = *(v47 + v66 + 8);
  v69 = *(v47 + v66 + 16);
  v70 = *(v47 + v66 + 24);
  v72 = *(v47 + v66 + 32);
  v71 = *(v47 + v66 + 40);
  v73 = *(v47 + v66 + 48);
  v74 = (v39 + v66);
  v75 = v74[1];
  v116 = *v74;
  v77 = v74[2];
  v76 = v74[3];
  v79 = v74[4];
  v78 = v74[5];
  v80 = v74[6];
  v117 = v80;
  v115 = v78;
  if (!v68)
  {
    v111 = v77;
    v112 = v76;
    v113 = v79;
    OUTLINED_FUNCTION_0_51();
    sub_1935F90AC(v89, v90);
    if (!v75)
    {
      sub_1935F90AC(v116, 0);
      OUTLINED_FUNCTION_0_51();
      sub_1935F7D0C(v108, v109);
      return 1;
    }

    OUTLINED_FUNCTION_7_29();
    sub_1935F90AC(v91, v92);
    goto LABEL_48;
  }

  *v128 = v67;
  *&v128[8] = v68;
  *&v128[16] = v69;
  *&v128[24] = v70;
  *&v128[32] = v72;
  *&v128[40] = v71;
  *&v128[48] = v73;
  v114 = v67;
  v110[4] = v69;
  if (!v75)
  {
    OUTLINED_FUNCTION_4_42();
    v94 = v93;
    v96 = v95;
    v98 = v97;
    OUTLINED_FUNCTION_1_48();
    sub_1935F90AC(v99, v100);
    v111 = v94;
    v112 = v96;
    v113 = v98;
    sub_1935F90AC(v116, 0);
    OUTLINED_FUNCTION_4_42();
    OUTLINED_FUNCTION_0_51();
    sub_1935F90AC(v101, v102);

LABEL_48:
    OUTLINED_FUNCTION_4_42();
    OUTLINED_FUNCTION_0_51();
    sub_1935F7D0C(v103, v104);
    OUTLINED_FUNCTION_7_29();
    sub_1935F7D0C(v105, v106);
    return 0;
  }

  v81 = v116;
  *&v124 = v116;
  *(&v124 + 1) = v75;
  *&v125 = v77;
  *(&v125 + 1) = v76;
  *&v126 = v79;
  *(&v126 + 1) = v78;
  *&v127 = v80;
  OUTLINED_FUNCTION_4_42();
  v110[2] = v68;
  v110[3] = v70;
  v110[1] = v72;
  OUTLINED_FUNCTION_1_48();
  sub_1935F90AC(v82, v83);
  sub_1935F90AC(v81, v75);
  OUTLINED_FUNCTION_1_48();
  sub_1935F90AC(v84, v85);
  sub_1935F911C();
  v86 = sub_19393C550();

  OUTLINED_FUNCTION_1_48();
  sub_1935F7D0C(v87, v88);
  return (v86 & 1) != 0;
}

unint64_t sub_1935F8B2C()
{
  result = qword_1EAE3EE20;
  if (!qword_1EAE3EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE20);
  }

  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v44 - v14;
  v16 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  v17 = (v2 + v16[7]);
  v18 = *v17;
  v19 = v17[1];
  sub_19393C640();
  v20 = (v2 + v16[8]);
  v21 = *v20;
  v22 = v20[1];
  sub_19393C640();
  v23 = (v2 + v16[9]);
  v24 = v23[1];
  v45 = a1;
  if (v24)
  {
    v25 = v2;
    v26 = v4;
    v27 = v11;
    v28 = v7;
    v29 = *v23;
    sub_19393CAD0();
    OUTLINED_FUNCTION_4_42();
    v7 = v28;
    v11 = v27;
    v4 = v26;
    v2 = v25;
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_1934486F8(v2 + v16[10], v15, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v15, 1, v4) == 1)
  {
    v30 = v45;
    sub_19393CAD0();
  }

  else
  {
    (*(v7 + 32))(v11, v15, v4);
    v30 = v45;
    sub_19393CAD0();
    sub_1934DF3E8(&qword_1EAE3B978);
    sub_19393C540();
    (*(v7 + 8))(v11, v4);
  }

  memcpy(v54, (v2 + v16[11]), 0x48uLL);
  sub_1935F9218();
  sub_19393C540();
  sub_1935F926C(v30, *(v2 + v16[12]));
  v31 = (v2 + v16[13]);
  v32 = *v31;
  v33 = v31[1];
  v34 = *(v31 + 2);
  v55 = *(v31 + 1);
  v56 = v34;
  v57 = *(v31 + 3);
  if (v33 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v35 = *(v31 + 2);
    v47 = *(v31 + 1);
    v48 = v35;
    v49 = *(v31 + 3);
    *&v46 = v32;
    *(&v46 + 1) = v33;
    sub_19393CAD0();
    v50[0] = v32;
    v50[1] = v33;
    v51 = v55;
    v52 = v56;
    v53 = v57;
    sub_1935F7EE4(v50, v54);
    sub_1935F9330();
    sub_19393C540();
    v54[0] = v46;
    v54[1] = v47;
    v54[2] = v48;
    v54[3] = v49;
    sub_1935F9170(v54);
  }

  v36 = (v2 + v16[14]);
  v37 = v36[1];
  if (!v37)
  {
    return sub_19393CAD0();
  }

  v39 = v36[5];
  v38 = v36[6];
  v41 = v36[3];
  v40 = v36[4];
  v42 = v36[2];
  *&v54[0] = *v36;
  *(&v54[0] + 1) = v37;
  *&v54[1] = v42;
  *(&v54[1] + 1) = v41;
  *&v54[2] = v40;
  *(&v54[2] + 1) = v39;
  *&v54[3] = v38;
  sub_19393CAD0();
  sub_1935F9384();

  sub_19393C540();
}

uint64_t sub_1935F8F88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 232)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_1935F7E2C(__dst, v7);
      sub_1935F7E2C(v11, v7);
      sub_1935F9480();
      v5 = sub_19393C550();
      memcpy(v12, __src, sizeof(v12));
      sub_1935F942C(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_1935F942C(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 232;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1935F90AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1935F911C()
{
  result = qword_1EAE3EE30;
  if (!qword_1EAE3EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE30);
  }

  return result;
}

unint64_t sub_1935F91C4()
{
  result = qword_1EAE3EE38;
  if (!qword_1EAE3EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE38);
  }

  return result;
}

unint64_t sub_1935F9218()
{
  result = qword_1EAE3EE40;
  if (!qword_1EAE3EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE40);
  }

  return result;
}

uint64_t sub_1935F926C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      memcpy(__dst, v5, sizeof(__dst));
      memcpy(__src, v5, sizeof(__src));
      sub_1935F7E2C(__dst, v7);
      sub_1935F93D8();
      sub_19393C540();
      memcpy(v7, __src, sizeof(v7));
      result = sub_1935F942C(v7);
      v5 += 232;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1935F9330()
{
  result = qword_1EAE3EE48;
  if (!qword_1EAE3EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE48);
  }

  return result;
}

unint64_t sub_1935F9384()
{
  result = qword_1EAE3EE50;
  if (!qword_1EAE3EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE50);
  }

  return result;
}

unint64_t sub_1935F93D8()
{
  result = qword_1EAE3EE58;
  if (!qword_1EAE3EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE58);
  }

  return result;
}

unint64_t sub_1935F9480()
{
  result = qword_1EAE3EE60;
  if (!qword_1EAE3EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE60);
  }

  return result;
}

uint64_t sub_1935F94D4()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB2B8);
  __swift_project_value_buffer(v0, qword_1EAEAB2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v25 = OUTLINED_FUNCTION_156();
  *(v25 + 16) = xmmword_1939526B0;
  v4 = v25 + v0;
  v5 = v25 + v0 + dword_1EAEAB2F0;
  *(v25 + v0) = 1;
  *v5 = "orderTypeIdentifier";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v4 + v3);
  *v12 = 2;
  OUTLINED_FUNCTION_33_8(v11, "orderIdentifier");
  OUTLINED_FUNCTION_2_0();
  v9();
  v13 = OUTLINED_FUNCTION_3_1(v4 + 2 * v3);
  *v14 = 3;
  OUTLINED_FUNCTION_33_8(v13, "orderNumber");
  OUTLINED_FUNCTION_2_0();
  v9();
  v15 = OUTLINED_FUNCTION_3_1(v4 + 3 * v3);
  *v16 = 4;
  OUTLINED_FUNCTION_33_8(v15, "orderDate");
  OUTLINED_FUNCTION_2_0();
  v9();
  v17 = OUTLINED_FUNCTION_19_2((v4 + 4 * v3));
  *v17 = "merchant";
  *(v17 + 1) = 8;
  v17[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v18 = OUTLINED_FUNCTION_3_1(v4 + 5 * v3);
  *v19 = 6;
  OUTLINED_FUNCTION_33_8(v18, "shippingFulfillments");
  OUTLINED_FUNCTION_2_0();
  v9();
  v20 = OUTLINED_FUNCTION_3_1(v4 + 6 * v3);
  *v21 = 7;
  *v20 = "customer";
  *(v20 + 8) = 8;
  *(v20 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v22 = OUTLINED_FUNCTION_3_1(v4 + 7 * v3);
  *v23 = 8;
  *v22 = "payment";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  return sub_19393C410();
}

void sub_1935F978C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        *&__dst[72] = 0uLL;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        if (*&__dst[80])
        {
          v5 = *&__dst[72];
        }

        else
        {
          v5 = 0;
        }

        if (*&__dst[80])
        {
          v6 = *&__dst[80];
        }

        else
        {
          v6 = 0xE000000000000000;
        }

        v2 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 28));
        v7 = v2[1];

        *v2 = v5;
        v2[1] = v6;
        break;
      case 2:
        *&__dst[72] = 0uLL;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        OUTLINED_FUNCTION_69_16();
        if (v12)
        {
          v13 = 0xE000000000000000;
        }

        else
        {
          v13 = v11;
        }

        v14 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 32));
        v15 = v14[1];

        *v14 = v2;
        v14[1] = v13;
        break;
      case 3:
        v8 = *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 36);
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        break;
      case 4:
        v9 = *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 40);
        OUTLINED_FUNCTION_66_17();
        sub_1934976E4();
        break;
      case 5:
        memset(&__dst[72], 0, 72);
        sub_193498018();
        if (*&__dst[80])
        {
          v18 = *&__dst[72];
        }

        else
        {
          WalletPaymentsCommerceClassicOrder.Merchant.init()(&v18);
        }

        v2 = *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 44);
        memcpy(__dst, v2 + v1, 0x48uLL);
        sub_1935F7DD8(__dst);
        memcpy(v2 + v1, &v18, 0x48uLL);
        break;
      case 6:
        v16 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
        sub_193498238(v1 + *(v16 + 48));
        break;
      case 7:
        v17 = v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 52);
        goto LABEL_23;
      case 8:
        v10 = v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 56);
LABEL_23:
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_1935F9A70()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v14 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  v15 = (v0 + v14[7]);
  if (*v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15[1] == 0xE000000000000000;
  }

  if (!v16)
  {
    OUTLINED_FUNCTION_71_15();
    if ((OUTLINED_FUNCTION_272() & 1) == 0)
    {
      OUTLINED_FUNCTION_71_15();
      OUTLINED_FUNCTION_32_20();
      OUTLINED_FUNCTION_66_17();
      sub_19393C3C0();
      v2 = v1;
    }
  }

  if (!v2)
  {
    v17 = (v0 + v14[8]);
    v18 = !*v17 && v17[1] == 0xE000000000000000;
    if (v18 || (OUTLINED_FUNCTION_71_15(), (OUTLINED_FUNCTION_272() & 1) != 0) || (OUTLINED_FUNCTION_71_15(), OUTLINED_FUNCTION_32_20(), OUTLINED_FUNCTION_66_17(), sub_19393C3C0(), (v2 = v1) == 0))
    {
      v19 = (v0 + v14[9]);
      if (!v19[1] || (v20 = *v19, OUTLINED_FUNCTION_32_20(), OUTLINED_FUNCTION_66_17(), sub_19393C3C0(), (v2 = v1) == 0))
      {
        sub_1935F9D6C(v0, v9, v7, v5, v10, v11, v12, v13, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8], __src.displayName.key._countAndFlagsBits, __src.displayName.key._object, __src.displayName.developmentLocalization.value._countAndFlagsBits);
        if (!v2)
        {
          v21 = v14[11];
          OUTLINED_FUNCTION_73_15(v38);
          OUTLINED_FUNCTION_73_15(v37);
          sub_1935F7D7C(v38, &__src);
          WalletPaymentsCommerceClassicOrder.Merchant.init()(&__src);
          sub_1935F8B2C();
          v22 = sub_19393C550();
          memcpy(v39, &__src, sizeof(v39));
          sub_1935F7DD8(v39);
          memcpy(v40, v37, sizeof(v40));
          sub_1935F7DD8(v40);
          if ((v22 & 1) == 0)
          {
            OUTLINED_FUNCTION_73_15(v37);
            OUTLINED_FUNCTION_73_15(&__src);
            sub_1935F7D7C(v37, v35);
            OUTLINED_FUNCTION_87_3();
            sub_193447600();
            memcpy(v35, &__src, sizeof(v35));
            sub_1935F7DD8(v35);
          }

          if (*(*(v3 + v14[12]) + 16))
          {
            OUTLINED_FUNCTION_87_3();
            sub_193451CFC(v23, v24, v25, v26, v27, v28);
          }

          v29 = v3 + v14[13];
          v30 = *(v29 + 8);
          if (v30 != 1)
          {
            *v40 = *v29;
            *&v40[8] = v30;
            v31 = *(v29 + 32);
            *&v40[16] = *(v29 + 16);
            *&v40[32] = v31;
            *&v40[48] = *(v29 + 48);
            OUTLINED_FUNCTION_87_3();
            sub_193447600();
          }

          v32 = v3 + v14[14];
          v33 = *(v32 + 8);
          if (v33)
          {
            v34 = *(v32 + 16);
            *v40 = *v32;
            *&v40[8] = v33;
            *&v40[16] = v34;
            *&v40[24] = *(v32 + 24);
            *&v40[40] = *(v32 + 40);
            OUTLINED_FUNCTION_87_3();
            sub_193447600();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935F9D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &a9 - v26;
  v28 = sub_19393BE00();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  sub_1934DE90C(v23 + *(v33 + 40), v27);
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    sub_19344E6DC(v27, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v34 = *(v29 + 32);
    v35 = OUTLINED_FUNCTION_165_1();
    v36(v35);
    OUTLINED_FUNCTION_32_20();
    sub_193451F04(v37, v38, v39, v40);
    (*(v29 + 8))(v32, v28);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935F9F80()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB2D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_30_3();
  v7 = v6 & ~v5;
  v8 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v8, xmmword_19394FBB0);
  *v7 = "key";
  *(v7 + 8) = 3;
  *(v7 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_10_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v14 = 2;
  OUTLINED_FUNCTION_33_8(v13, "developmentLocalization");
  OUTLINED_FUNCTION_10_0();
  v12();
  v15 = OUTLINED_FUNCTION_13_12();
  *v15 = "localizedStrings";
  *(v15 + 1) = 16;
  v15[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v12();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935FA1D8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_103();
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  if (v3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4 == 0xE000000000000000;
  }

  if (!v8)
  {
    OUTLINED_FUNCTION_125_3();
    if ((OUTLINED_FUNCTION_272() & 1) == 0)
    {
      OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_4_7();
      v2 = v1;
    }
  }

  if (!v2)
  {
    if (!v6 || (OUTLINED_FUNCTION_165_1(), OUTLINED_FUNCTION_4_7(), !v1))
    {
      if (*(v7 + 16))
      {
        OUTLINED_FUNCTION_23_3();
        sub_193451CFC(v9, v10, v11, v12, v13, v14);
      }
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935FA30C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAB2E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_30_3();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("localizationName");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_10_0();
  v8();
  v9 = OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_36_5(v9, "localizationValue");
  OUTLINED_FUNCTION_10_0();
  v8();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935FA454()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_113();
      v4 = sub_19393C200();
      v12 = OUTLINED_FUNCTION_50_2(v4, v5, v6, v7, v8, v9, v10, v11, 0, 0);
      if (v12)
      {
        v13 = v16;
      }

      else
      {
        v13 = 0;
      }

      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xE000000000000000;
      }

      v15 = v1[1];

      *v1 = v13;
      v1[1] = v14;
    }
  }

  return result;
}

void sub_1935FA510()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_103();
  v3 = v0[2];
  v4 = v0[3];
  if (*v0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[1] == 0xE000000000000000;
  }

  if (!v5)
  {
    v6 = *v0;
    v7 = v0[1];
    if ((OUTLINED_FUNCTION_272() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_7();
      v2 = v1;
    }
  }

  if (!v2 && v4)
  {
    OUTLINED_FUNCTION_2_7();
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935FA610()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB300);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_30_3();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("displayName");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_10_0();
  v9();
  v10 = OUTLINED_FUNCTION_29_1();
  *v10 = "domainName";
  *(v10 + 8) = 10;
  *(v10 + 16) = v0;
  OUTLINED_FUNCTION_10_0();
  v9();
  v11 = OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_36_5(v11, "localizedDisplayName");
  OUTLINED_FUNCTION_10_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935FA784()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_48_16();
      sub_193498018();
      if (v40)
      {
        OUTLINED_FUNCTION_47_18(v5, v6, v7, v8, v9, v10, v11, v12, v32, v34, v36, v38.key._countAndFlagsBits, v38.key._object, v38.developmentLocalization.value._countAndFlagsBits, v38.developmentLocalization.value._object, v38.localizedStrings._rawValue, v39, v40, v41, v42, v43);
      }

      else
      {
        v2 = &v38;
        WalletPaymentsCommerceClassicOrder.LocalizedString.init()(&v38);
        OUTLINED_FUNCTION_65_14(v13, v14, v15, v16, v17, v18, v19, v20, v32, v34, v36, v38.key._countAndFlagsBits, v38.key._object, v38.developmentLocalization.value._countAndFlagsBits, v38.developmentLocalization.value._object, v38.localizedStrings._rawValue);
      }

      countAndFlagsBits = v2->key._countAndFlagsBits;
      v2 = v1[1];
      v23 = v1[3];
      v22 = v1[4];

      OUTLINED_FUNCTION_46_19(v24, v25, v26, v27, v28, v29, v30, v31, v33, v35, v37);
    }
  }

  return result;
}

uint64_t sub_1935FA898(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1935FA8E8()
{
  OUTLINED_FUNCTION_103();
  v2 = v0[1];
  v10 = *v0;
  v11 = v2;
  v3 = *(v0 + 5);
  v12 = *(v0 + 4);
  v4 = *(v0 + 6);
  v8 = *(v0 + 7);
  v16 = *(v0 + 8);
  v5 = v0[1];
  v13 = *v0;
  v14 = v5;
  v15 = *(v0 + 4);
  sub_1935FCA60(&v13, &v9);
  sub_1935FCA60(&v13, &v9);
  WalletPaymentsCommerceClassicOrder.LocalizedString.init()(&v9);
  sub_1935FCABC();
  v6 = sub_19393C550();

  if (v6)
  {
    result = sub_1935FCB10(&v13);
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v10 = v13;
    v11 = v14;
    v12 = v15;
    OUTLINED_FUNCTION_23_3();
    sub_193447600();

    if (v1)
    {
      return result;
    }
  }

  if (v4)
  {
    result = OUTLINED_FUNCTION_4_7();
  }

  if (v16)
  {
    return OUTLINED_FUNCTION_4_7();
  }

  return result;
}

void sub_1935FAB00()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB318);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_11_3(v6, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("fulfillmentIdentifier");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_29_1();
  v13 = OUTLINED_FUNCTION_0_0(v12, "trackingNumber");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_13_12();
  v15 = OUTLINED_FUNCTION_0_0(v14, "carrierName");
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_14_6();
  *v16 = "carrierIdentifier";
  *(v16 + 1) = 17;
  v16[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v10();
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v5));
  *v17 = "shippingRecipient";
  *(v17 + 1) = 17;
  v17[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935FAD9C()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = v3[1];
  v6 = v3[2];
  v8 = v3[3];
  v7 = v3[4];
  v11 = v3[5];
  v10 = v3[6];
  v14 = v3[7];
  if (v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5 == 0xE000000000000000;
  }

  if (!v9 && (OUTLINED_FUNCTION_272() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_19();
    v2 = v1;
  }

  if (!v2)
  {
    if (!v8 || (OUTLINED_FUNCTION_38_19(), !v1))
    {
      if (!v11 || (OUTLINED_FUNCTION_38_19(), !v1))
      {
        if (!v14 || (OUTLINED_FUNCTION_38_19(), !v1))
        {
          memcpy(__dst, v3 + 8, 0xA8uLL);
          if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) != 1)
          {
            memcpy(v12, __dst, sizeof(v12));
            sub_193447600();
          }
        }
      }
    }
  }
}

void sub_1935FAF7C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB330);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("givenName");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "familyName");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_0_0(v13, "phoneNumber");
  (v9)(v14);
  v15 = OUTLINED_FUNCTION_14_6();
  v16 = OUTLINED_FUNCTION_0_0(v15, "emailAddress");
  (v9)(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  OUTLINED_FUNCTION_36_5(v17, "address");
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935FB118()
{
  OUTLINED_FUNCTION_103();
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 5:
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_1935FB1E8()
{
  v2 = v1;
  OUTLINED_FUNCTION_103();
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[6];
  v10 = v0[7];
  v12 = v0[8];
  if (v3)
  {
    v8 = *v0;
    OUTLINED_FUNCTION_2_7();
    v2 = v1;
  }

  if (!v2)
  {
    if (!v5 || (OUTLINED_FUNCTION_165_1(), OUTLINED_FUNCTION_2_7(), !v1))
    {
      if (!v7 || (OUTLINED_FUNCTION_125_3(), OUTLINED_FUNCTION_2_7(), !v1))
      {
        if (!v10 || (OUTLINED_FUNCTION_2_7(), !v1))
        {
          if (v12)
          {
            memcpy(v11, v0 + 9, sizeof(v11));
            sub_193447600();
          }
        }
      }
    }
  }
}

void sub_1935FB370()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB348);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("givenName");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  (v8)(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_0_0(v10, "familyName");
  (v8)(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_0_0(v12, "phoneNumber");
  (v8)(v13);
  v14 = OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_36_5(v14, "emailAddress");
  OUTLINED_FUNCTION_2_0();
  v8();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935FB4EC()
{
  OUTLINED_FUNCTION_103();
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
      case 3:
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_1935FB584()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_67_2();
  v2 = v1[2];
  v4 = v1[3];
  v3 = v1[4];
  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[7];
  if (v1[1])
  {
    v8 = *v1;
    OUTLINED_FUNCTION_181();
  }

  if (!v0)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_181();
    }

    if (v6)
    {
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_181();
    }

    if (v7)
    {
      OUTLINED_FUNCTION_181();
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935FB67C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB360);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v6, xmmword_193952700);
  OUTLINED_FUNCTION_63("addressLines");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_29_1();
  v13 = OUTLINED_FUNCTION_0_0(v12, "locality");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_13_12();
  v15 = OUTLINED_FUNCTION_0_0(v14, "subLocality");
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_14_6();
  v17 = OUTLINED_FUNCTION_0_0(v16, "administrativeArea");
  (v10)(v17);
  v18 = OUTLINED_FUNCTION_19_2((v0 + 4 * v5));
  v19 = OUTLINED_FUNCTION_0_0(v18, "subAdministrativeArea");
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v0 + 5 * v5);
  *v21 = 6;
  v22 = OUTLINED_FUNCTION_0_0(v20, "postalCode");
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v0 + 6 * v5);
  *v24 = 7;
  *v23 = "countryCode";
  *(v23 + 8) = 11;
  *(v23 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935FB880()
{
  OUTLINED_FUNCTION_103();
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
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1935FB93C()
{
  OUTLINED_FUNCTION_67_2();
  result = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v14 = v1[8];
  v11 = v1[9];
  v9 = v1[10];
  v12 = v9;
  v13 = v1[7];
  v10 = v1[12];
  if (*(*v1 + 16))
  {
    result = sub_19393C380();
  }

  if (!v0)
  {
    if (v5)
    {
      OUTLINED_FUNCTION_125_3();
      result = OUTLINED_FUNCTION_181();
    }

    if (v7)
    {
      OUTLINED_FUNCTION_165_1();
      result = OUTLINED_FUNCTION_181();
    }

    if (v8)
    {
      result = OUTLINED_FUNCTION_181();
    }

    if (v14)
    {
      result = OUTLINED_FUNCTION_181();
    }

    if (v12)
    {
      result = OUTLINED_FUNCTION_181();
    }

    if (v10)
    {
      return OUTLINED_FUNCTION_181();
    }
  }

  return result;
}

void sub_1935FBAB8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB378);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("totalAmount");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "totalCurrencyCode");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_0_0(v13, "paymentMethods");
  (v9)(v14);
  v15 = OUTLINED_FUNCTION_14_6();
  v16 = OUTLINED_FUNCTION_0_0(v15, "applePayTransactionIdentifiers");
  (v9)(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  OUTLINED_FUNCTION_36_5(v17, "transactions");
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935FBD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v19 = v3[5];
  v12 = v3[6];
  if (v7)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8 == 0xE000000000000000;
  }

  if (!v13)
  {
    v14 = v11;
    if ((OUTLINED_FUNCTION_272() & 1) == 0)
    {
      OUTLINED_FUNCTION_32_20();
      sub_19393C3C0();
      v5 = v4;
    }

    v11 = v14;
  }

  if (!v5)
  {
    if (v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = v10 == 0xE000000000000000;
    }

    if (v15)
    {
      v17 = v12;
      v18 = a3;
    }

    else
    {
      v16 = v11;
      v17 = v12;
      OUTLINED_FUNCTION_125_3();
      if (OUTLINED_FUNCTION_272())
      {
        v18 = a3;
      }

      else
      {
        OUTLINED_FUNCTION_125_3();
        OUTLINED_FUNCTION_32_20();
        v18 = a3;
        sub_19393C3C0();
        v5 = v4;
        if (v4)
        {
          goto LABEL_9;
        }
      }

      v11 = v16;
    }

    if (!*(v11 + 16) || (sub_19393C380(), !v5))
    {
      if (!*(v19 + 16) || (sub_19393C380(), !v5))
      {
        if (*(v17 + 16))
        {
          sub_193451CFC(v17, 5, a2, &type metadata for WalletPaymentsCommerceClassicOrder.Transaction, v18, &off_1F07D7260);
        }
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_1935FBF78()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB390);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("amount");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  (v8)(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_0_0(v10, "currencyCode");
  (v8)(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_0_0(v12, "paymentMethod");
  (v8)(v13);
  v14 = OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_36_5(v14, "applePayTransactionIdentifier");
  OUTLINED_FUNCTION_2_0();
  v8();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935FC0F4()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v21 = 0uLL;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        OUTLINED_FUNCTION_69_16();
        if (v6)
        {
          v7 = 0xE000000000000000;
        }

        else
        {
          v7 = v5;
        }

        object = v1->value._object;

        v1->value._countAndFlagsBits = v2;
        v1->value._object = v7;
        break;
      case 2:
        v21 = 0uLL;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        OUTLINED_FUNCTION_69_16();
        if (v6)
        {
          v10 = 0xE000000000000000;
        }

        else
        {
          v10 = v9;
        }

        v11 = v1[1].value._object;

        v1[1].value._countAndFlagsBits = v2;
        v1[1].value._object = v10;
        break;
      case 3:
        v24 = 0;
        v22 = 0;
        v23 = 0;
        v21 = 0u;
        sub_193498018();
        if (*(&v21 + 1))
        {
          v25 = v24;
          v19 = v23;
          v12 = &v21;
          v17 = *(&v21 + 1);
          developmentLocalization = v22;
        }

        else
        {
          v12 = &v20;
          WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.init()(&v20);
          v17 = v20.displayName.key._object;
          developmentLocalization = v20.displayName.developmentLocalization;
          v19 = *&v20.displayName.localizedStrings._rawValue;
          v25 = v20.localizedDisplayName.value._object;
        }

        countAndFlagsBits = v12->displayName.key._countAndFlagsBits;
        v14 = v1[2].value._object;
        v16 = v1[3].value._object;
        v15 = v1[4].value._countAndFlagsBits;
        v2 = v1[5].value._countAndFlagsBits;

        v1[2].value._countAndFlagsBits = countAndFlagsBits;
        v1[2].value._object = v17;
        v1[3] = developmentLocalization;
        v1[4] = v19;
        v1[5].value._countAndFlagsBits = v25;
        break;
      case 4:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1935FC304(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1935FC368()
{
  v2 = v1;
  v3 = v0;
  OUTLINED_FUNCTION_103();
  v4 = *v0;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v14 = v3[11];
  v24 = v3[12];
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 == 0xE000000000000000;
  }

  if (!v8 && (OUTLINED_FUNCTION_272() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_7();
    v2 = v1;
  }

  if (!v2)
  {
    v9 = !v6 && v7 == 0xE000000000000000;
    if (v9 || (OUTLINED_FUNCTION_272() & 1) != 0 || (OUTLINED_FUNCTION_4_7(), !v1))
    {
      v10 = *(v3 + 3);
      v20 = *(v3 + 2);
      v21 = v10;
      v12 = *(v3 + 2);
      v11 = *(v3 + 3);
      v22 = *(v3 + 4);
      v23 = v3[10];
      v16 = v12;
      v17 = v11;
      v18 = *(v3 + 4);
      v19 = v3[10];
      sub_1935FCB64(&v20, &v15);
      sub_1935FCB64(&v20, &v15);
      WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.init()(&v15);
      sub_1935FCBC0();
      v13 = sub_19393C550();

      if (v13)
      {
        sub_1935FCC14(&v20);
      }

      else
      {
        v16 = v20;
        v17 = v21;
        v18 = v22;
        v19 = v23;
        OUTLINED_FUNCTION_23_3();
        sub_193447600();

        if (v1)
        {
          return;
        }
      }

      if (v24)
      {
        OUTLINED_FUNCTION_4_7();
      }
    }
  }
}

void sub_1935FC624()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB3A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_30_3();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("displayName");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_10_0();
  v8();
  v9 = OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_36_5(v9, "localizedDisplayName");
  OUTLINED_FUNCTION_10_0();
  v8();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935FC76C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_48_16();
      sub_193498018();
      if (v40)
      {
        OUTLINED_FUNCTION_47_18(v5, v6, v7, v8, v9, v10, v11, v12, v32, v34, v36, v38.key._countAndFlagsBits, v38.key._object, v38.developmentLocalization.value._countAndFlagsBits, v38.developmentLocalization.value._object, v38.localizedStrings._rawValue, v39, v40, v41, v42, v43);
      }

      else
      {
        v2 = &v38;
        WalletPaymentsCommerceClassicOrder.LocalizedString.init()(&v38);
        OUTLINED_FUNCTION_65_14(v13, v14, v15, v16, v17, v18, v19, v20, v32, v34, v36, v38.key._countAndFlagsBits, v38.key._object, v38.developmentLocalization.value._countAndFlagsBits, v38.developmentLocalization.value._object, v38.localizedStrings._rawValue);
      }

      countAndFlagsBits = v2->key._countAndFlagsBits;
      v2 = v1[1];
      v23 = v1[3];
      v22 = v1[4];

      OUTLINED_FUNCTION_46_19(v24, v25, v26, v27, v28, v29, v30, v31, v33, v35, v37);
    }
  }

  return result;
}

uint64_t sub_1935FC870()
{
  OUTLINED_FUNCTION_103();
  v2 = v0[1];
  v9 = *v0;
  v10 = v2;
  v3 = *(v0 + 5);
  v11 = *(v0 + 4);
  v4 = *(v0 + 6);
  v5 = v0[1];
  v12 = *v0;
  v13 = v5;
  v14 = *(v0 + 4);
  sub_1935FCA60(&v12, &v8);
  sub_1935FCA60(&v12, &v8);
  WalletPaymentsCommerceClassicOrder.LocalizedString.init()(&v8);
  sub_1935FCABC();
  v6 = sub_19393C550();

  if (v6)
  {
    result = sub_1935FCB10(&v12);
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v9 = v12;
    v10 = v13;
    v11 = v14;
    OUTLINED_FUNCTION_23_3();
    sub_193447600();

    if (v1)
    {
      return result;
    }
  }

  if (v4)
  {
    return OUTLINED_FUNCTION_4_7();
  }

  return result;
}

unint64_t sub_1935FCABC()
{
  result = qword_1EAE3EF20;
  if (!qword_1EAE3EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF20);
  }

  return result;
}

unint64_t sub_1935FCBC0()
{
  result = qword_1EAE3EF28;
  if (!qword_1EAE3EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF28);
  }

  return result;
}

void *OUTLINED_FUNCTION_73_15(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x48uLL);
}

uint64_t WalletPaymentsCommerceClassicOrder.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  return sub_193448804(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for WalletPaymentsCommerceClassicOrder()
{
  result = qword_1ED50C620;
  if (!qword_1ED50C620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  return sub_193448804(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t WalletPaymentsCommerceClassicOrder.orderTypeIdentifier.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.orderTypeIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.orderIdentifier.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.orderIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.orderNumber.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.orderNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.orderDate.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for WalletPaymentsCommerceClassicOrder();
  return sub_193448804(v1 + *(v2 + 40), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceClassicOrder.merchant.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 44);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x48uLL);
  return sub_1935F7D7C(__dst, &v4);
}

void *WalletPaymentsCommerceClassicOrder.merchant.setter()
{
  v2 = *(OUTLINED_FUNCTION_18_25() + 44);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  sub_1935F7DD8(__dst);
  return memcpy((v1 + v2), v0, 0x48uLL);
}

uint64_t WalletPaymentsCommerceClassicOrder.shippingFulfillments.getter()
{
  v1 = *(v0 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 48));
}

uint64_t WalletPaymentsCommerceClassicOrder.shippingFulfillments.setter()
{
  v2 = *(OUTLINED_FUNCTION_18_25() + 48);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

double sub_1935FD310@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1939526A0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.customer.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 52));
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v4 = v2[3];
  v9 = v2[2];
  v5 = v9;
  v10 = v4;
  *v0 = v8[0];
  v0[1] = v3;
  v0[2] = v5;
  v0[3] = v4;
  return sub_193448804(v8, &v7, &qword_1EAE3EE00, &qword_1939714B0);
}

__n128 WalletPaymentsCommerceClassicOrder.customer.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_18_25() + 52));
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v4 = v2[3];
  v8[2] = v2[2];
  v8[3] = v4;
  sub_19344E6DC(v8, &qword_1EAE3EE00, &qword_1939714B0);
  v5 = *(v0 + 16);
  *v2 = *v0;
  v2[1] = v5;
  result = *(v0 + 32);
  v7 = *(v0 + 48);
  v2[2] = result;
  v2[3] = v7;
  return result;
}

double sub_1935FD434@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.payment.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 56));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;
  v0[5] = v8;
  v0[6] = v9;

  return sub_1935F90AC(v3, v4);
}

__n128 WalletPaymentsCommerceClassicOrder.payment.setter(uint64_t a1)
{
  v12 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder() + 56));
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  sub_1935F7D0C(*v4, v4[1]);
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v10;
  result = v12;
  *(v4 + 2) = v12;
  v4[6] = v3;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.key.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.developmentLocalization.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.localizedStrings.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall WalletPaymentsCommerceClassicOrder.LocalizedString.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::LocalizedString *__return_ptr retstr)
{
  retstr->key._countAndFlagsBits = 0;
  retstr->key._object = 0xE000000000000000;
  retstr->developmentLocalization.value._countAndFlagsBits = 0;
  retstr->developmentLocalization.value._object = 0;
  retstr->localizedStrings._rawValue = MEMORY[0x1E69E7CC0];
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.Localization.localizationName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.Localization.localizationValue.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::LocalizedString::Localization __swiftcall WalletPaymentsCommerceClassicOrder.LocalizedString.Localization.init()()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0;
  return result;
}

uint64_t static WalletPaymentsCommerceClassicOrder.LocalizedString.Localization.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_20(a1);
  v4 = v3[2];
  v5 = v3[3];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (v9 = sub_19393CA30(), result = 0, (v9 & 1) != 0))
  {
    if (v5)
    {
      if (v6)
      {
        v11 = v4 == v7 && v5 == v6;
        if (v11 || (OUTLINED_FUNCTION_20_24() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.Localization.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_19393C640();
  if (!v4)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.Localization.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  sub_19393CAD0();
  if (v4)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_1935FD920()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_19393CAB0();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  sub_19393CAD0();
  if (v4)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t static WalletPaymentsCommerceClassicOrder.LocalizedString.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_20(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v10 = v1 == *v2 && v3[1] == v2[1];
  if (!v10 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (v7)
    {
      v11 = v4 == v8 && v6 == v7;
      if (v11 || (sub_19393CA30() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_13:
  v12 = OUTLINED_FUNCTION_13_0();

  return sub_1935FDD88(v12, v13);
}

uint64_t sub_1935FDA60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    v38 = a1 + 32;
    v39 = a2 + 32;
    v37 = *(a1 + 16);
    while (1)
    {
      v41 = v3;
      v6 = 104 * v3;
      memcpy(__dst, (v4 + 104 * v3), sizeof(__dst));
      memcpy(v44, (v5 + v6), 0x68uLL);
      v7 = __dst[0] == v44[0] && __dst[1] == v44[1];
      if (!v7 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }

      v8 = __dst[2] == v44[2] && __dst[3] == v44[3];
      if (!v8 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }

      v10 = __dst[6];
      v9 = __dst[7];
      v12 = __dst[8];
      v11 = __dst[9];
      v13 = __dst[10];
      v15 = v44[6];
      v14 = v44[7];
      v16 = v44[8];
      v17 = v44[9];
      v18 = __dst[4] == v44[4] && __dst[5] == v44[5];
      v19 = v44[10];
      if (!v18 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }

      if (v9)
      {
        if (!v14)
        {
          return 0;
        }

        v20 = v10 == v15 && v9 == v14;
        if (!v20 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v14)
      {
        return 0;
      }

      v40 = v17;
      v21 = v11;
      v22 = *(v12 + 16);
      if (v22 != *(v16 + 16))
      {
        return 0;
      }

      if (v22 && v12 != v16)
      {
        v23 = (v16 + 56);
        v24 = (v12 + 56);
        do
        {
          v26 = *(v24 - 1);
          v25 = *v24;
          v28 = *(v23 - 1);
          v27 = *v23;
          v29 = *(v24 - 3) == *(v23 - 3) && *(v24 - 2) == *(v23 - 2);
          if (!v29 && (sub_19393CA30() & 1) == 0)
          {
            return 0;
          }

          if (v25)
          {
            if (!v27)
            {
              return 0;
            }

            v30 = v26 == v28 && v25 == v27;
            if (!v30 && (sub_19393CA30() & 1) == 0)
            {
              return 0;
            }
          }

          else if (v27)
          {
            return 0;
          }

          v23 += 4;
          v24 += 4;
        }

        while (--v22);
      }

      if (!v13)
      {
        break;
      }

      v5 = v39;
      if (!v19)
      {
        return 0;
      }

      if (v21 == v40 && v13 == v19)
      {
        goto LABEL_57;
      }

      v32 = sub_19393CA30();
      sub_1935F7F9C(__dst, v42);
      sub_1935F7F9C(v44, v42);
      if ((v32 & 1) == 0)
      {
        goto LABEL_72;
      }

LABEL_58:
      v33 = v44[12];
      if (__dst[12])
      {
        v4 = v38;
        if (!v44[12])
        {
LABEL_72:
          sub_193601B78(v44);
          sub_193601B78(__dst);
          return 0;
        }

        if (__dst[11] == v44[11] && __dst[12] == v44[12])
        {
          sub_193601B78(v44);
          sub_193601B78(__dst);
        }

        else
        {
          v35 = sub_19393CA30();
          sub_193601B78(v44);
          sub_193601B78(__dst);
          if ((v35 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        sub_193601B78(v44);
        sub_193601B78(__dst);
        v4 = v38;
        if (v33)
        {
          return 0;
        }
      }

      v3 = v41 + 1;
      result = 1;
      if (v41 + 1 == v37)
      {
        return result;
      }
    }

    v5 = v39;
    if (v19)
    {
      return 0;
    }

LABEL_57:
    sub_1935F7F9C(__dst, v42);
    sub_1935F7F9C(v44, v42);
    goto LABEL_58;
  }

  return 1;
}

uint64_t sub_1935FDD88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (sub_19393CA30() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7)
        {
          return 0;
        }

        v10 = v5 == v8 && v6 == v7;
        if (!v10 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_19393C640();
  sub_19393CAD0();
  if (v6)
  {
    OUTLINED_FUNCTION_175();
    sub_19393C640();
  }

  return sub_1936010D8(a1, v7);
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_119();
  sub_19393C640();
  sub_19393CAD0();
  if (v4)
  {
    OUTLINED_FUNCTION_175();
    sub_19393C640();
  }

  sub_1936010D8(v7, v5);
  return sub_19393CB00();
}

uint64_t sub_1935FDF80()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.LocalizedString.hash(into:)(v4);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceClassicOrder.Merchant.displayName.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_25_22(a1);
}

__n128 WalletPaymentsCommerceClassicOrder.Merchant.displayName.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_37_18(a1);

  result = v4;
  *v1 = v5;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Merchant.domainName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.Merchant.domainName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Merchant.localizedDisplayName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.Merchant.localizedDisplayName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceClassicOrder.Merchant.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::Merchant *__return_ptr retstr)
{
  retstr->displayName.key._countAndFlagsBits = 0;
  retstr->displayName.key._object = 0xE000000000000000;
  retstr->displayName.developmentLocalization.value._countAndFlagsBits = 0;
  retstr->displayName.developmentLocalization.value._object = 0;
  retstr->displayName.localizedStrings._rawValue = MEMORY[0x1E69E7CC0];
  retstr->domainName = 0u;
  retstr->localizedDisplayName = 0u;
}

void WalletPaymentsCommerceClassicOrder.Merchant.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v7 = v0[5];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[8];
  sub_19393C640();
  if (v6)
  {
    OUTLINED_FUNCTION_33_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_42_22();
  }

  sub_1936010D8(v2, v8);
  if (!v10)
  {
    OUTLINED_FUNCTION_42_22();
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_10:
    OUTLINED_FUNCTION_42_22();
    OUTLINED_FUNCTION_116();
    return;
  }

  OUTLINED_FUNCTION_33_15();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_6:
  OUTLINED_FUNCTION_33_15();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_116();

  sub_19393C640();
}

uint64_t WalletPaymentsCommerceClassicOrder.Merchant.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceClassicOrder.Merchant.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935FE360()
{
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.Merchant.hash(into:)();
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.fulfillmentIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.trackingNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.carrierName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.carrierName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.carrierIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.carrierIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.shippingRecipient.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_31_25(v5);
  memcpy(a1, (v1 + 64), 0xA8uLL);
  return sub_193448804(v5, v4, &qword_1EAE3EF30, &qword_193971690);
}

void *WalletPaymentsCommerceClassicOrder.ShippingFulfillment.shippingRecipient.setter(const void *a1)
{
  OUTLINED_FUNCTION_31_25(v4);
  sub_19344E6DC(v4, &qword_1EAE3EF30, &qword_193971690);
  return memcpy((v1 + 64), a1, 0xA8uLL);
}

void __swiftcall WalletPaymentsCommerceClassicOrder.ShippingFulfillment.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::ShippingFulfillment *__return_ptr retstr)
{
  sub_193601194(v2);
  retstr->fulfillmentIdentifier._countAndFlagsBits = 0;
  retstr->fulfillmentIdentifier._object = 0xE000000000000000;
  retstr->trackingNumber = 0u;
  retstr->carrierName = 0u;
  retstr->carrierIdentifier = 0u;
  memcpy(__dst, v2, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3EF30, &qword_193971690);
  memcpy(&retstr->shippingRecipient, v2, 0xA8uLL);
}

void static WalletPaymentsCommerceClassicOrder.ShippingFulfillment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v35 = v2[4];
  v37 = v2[5];
  v33 = v2[6];
  v40 = v2[7];
  OUTLINED_FUNCTION_21_23(v48);
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v34 = v1[4];
  v36 = v1[5];
  v38 = v1[6];
  v39 = v1[7];
  OUTLINED_FUNCTION_31_25(v49);
  v11 = v3 == v7 && v4 == v8;
  if (!v11 && (sub_19393CA30() & 1) == 0)
  {
    goto LABEL_40;
  }

  if (!v6)
  {
    if (v9)
    {
      goto LABEL_40;
    }

LABEL_15:
    if (v37)
    {
      v14 = v39;
      v13 = v40;
      v15 = v38;
      if (!v36)
      {
        goto LABEL_40;
      }

      v16 = v35 == v34 && v37 == v36;
      if (!v16 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v14 = v39;
      v13 = v40;
      v15 = v38;
      if (v36)
      {
        goto LABEL_40;
      }
    }

    if (v13)
    {
      if (!v14)
      {
        goto LABEL_40;
      }

      v17 = v33 == v15 && v13 == v14;
      if (!v17 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v14)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_21_23(__src);
    OUTLINED_FUNCTION_31_25(&__src[168]);
    OUTLINED_FUNCTION_21_23(v47);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v47) == 1)
    {
      OUTLINED_FUNCTION_31_25(__dst);
      if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1)
      {
        OUTLINED_FUNCTION_21_23(v45);
        OUTLINED_FUNCTION_79_1(v48, v43);
        OUTLINED_FUNCTION_79_1(v49, v43);
        sub_19344E6DC(v45, &qword_1EAE3EF30, &qword_193971690);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_79_1(v48, v45);
      OUTLINED_FUNCTION_79_1(v49, v45);
    }

    else
    {
      OUTLINED_FUNCTION_21_23(v45);
      OUTLINED_FUNCTION_31_25(__dst);
      if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) != 1)
      {
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v18, v19, v20, v21);
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v22, v23, v24, v25);
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v26, v27, v28, v29);
        static WalletPaymentsCommerceClassicOrder.ShippingRecipient.== infix(_:_:)();
        OUTLINED_FUNCTION_31_25(v41);
        sub_1936011A8(v41);
        OUTLINED_FUNCTION_21_23(v42);
        sub_1936011A8(v42);
        OUTLINED_FUNCTION_21_23(v43);
        OUTLINED_FUNCTION_175();
        sub_19344E6DC(v30, v31, v32);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_21_23(v43);
      OUTLINED_FUNCTION_79_1(v48, v42);
      OUTLINED_FUNCTION_79_1(v49, v42);
      OUTLINED_FUNCTION_79_1(v45, v42);
      sub_1936011A8(v43);
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_19344E6DC(__dst, &qword_1EAE3EF38, &qword_193971698);
    goto LABEL_40;
  }

  if (v9)
  {
    v12 = v5 == v10 && v6 == v9;
    if (v12 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_40:
  OUTLINED_FUNCTION_116();
}

void WalletPaymentsCommerceClassicOrder.ShippingFulfillment.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[7];
  sub_19393C640();
  if (v6)
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_46_20();
    sub_19393C640();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_95_8();
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_95_8();
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_94();
  sub_19393C640();
  if (v10)
  {
LABEL_4:
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_2_0();
    sub_19393C640();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_95_8();
LABEL_8:
  OUTLINED_FUNCTION_21_23(v13);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v13) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_21_23(v11);
    sub_1935F7E88(v11, v12);
    WalletPaymentsCommerceClassicOrder.ShippingRecipient.hash(into:)(v2);
    OUTLINED_FUNCTION_21_23(v12);
    sub_1936011A8(v12);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceClassicOrder.ShippingFulfillment.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935FEB38()
{
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.ShippingFulfillment.hash(into:)();
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.givenName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.familyName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.phoneNumber.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.phoneNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.emailAddress.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.emailAddress.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 64), sizeof(__dst));
  memcpy(a1, (v1 + 64), 0x68uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE3EF40, &qword_1939716A0);
}

void *WalletPaymentsCommerceClassicOrder.ShippingRecipient.address.setter(const void *a1)
{
  memcpy(__dst, (v1 + 64), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3EF40, &qword_1939716A0);
  return memcpy((v1 + 64), a1, 0x68uLL);
}

void __swiftcall WalletPaymentsCommerceClassicOrder.ShippingRecipient.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::ShippingRecipient *__return_ptr retstr)
{
  bzero(retstr, 0xA8uLL);
  memcpy(__dst, &retstr->address, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3EF40, &qword_1939716A0);
  *&retstr->address.value.addressLines._rawValue = 0u;
  *&retstr->address.value.locality.value._object = 0u;
  *&retstr->address.value.subLocality.value._object = 0u;
  *&retstr->address.value.administrativeArea.value._object = 0u;
  *&retstr->address.value.subAdministrativeArea.value._object = 0u;
  *&retstr->address.value.postalCode.value._object = 0u;
  retstr->address.value.countryCode.value._object = 0;
}

void static WalletPaymentsCommerceClassicOrder.ShippingRecipient.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v67 = v2[4];
  v65 = v2[6];
  v70 = v2[5];
  v71 = v2[7];
  memcpy(__dst, v2 + 8, sizeof(__dst));
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v66 = v1[4];
  v64 = v1[6];
  v68 = v1[7];
  v69 = v1[5];
  v12 = memcpy(v79, v1 + 8, 0x68uLL);
  if (!v5)
  {
    if (v8)
    {
      goto LABEL_44;
    }

LABEL_10:
    if (v7)
    {
      if (!v11)
      {
        goto LABEL_44;
      }

      if (v6 != v10 || v7 != v11)
      {
        OUTLINED_FUNCTION_2_0();
        v12 = sub_19393CA30();
        if ((v12 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    else if (v11)
    {
      goto LABEL_44;
    }

    v21 = v70;
    if (v70)
    {
      v22 = v71;
      v23 = v68;
      v14 = v69;
      if (!v69)
      {
        goto LABEL_44;
      }

      v13 = v66;
      v12 = v67;
      if (v67 != v66 || v70 != v69)
      {
        v12 = sub_19393CA30();
        if ((v12 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      v22 = v71;
      v23 = v68;
      if (v69)
      {
        goto LABEL_44;
      }
    }

    if (v22)
    {
      if (!v23)
      {
        goto LABEL_44;
      }

      v13 = v64;
      v12 = v65;
      if (v65 != v64 || v22 != v23)
      {
        v12 = sub_19393CA30();
        if ((v12 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    else if (v23)
    {
      goto LABEL_44;
    }

    v26 = __dst[0];
    v27 = v79[0];
    if (__dst[0])
    {
      __src[0] = __dst[0];
      OUTLINED_FUNCTION_48_17(v12, v21, v13, v14, v15, v16, v17, v18, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], v72[10], v72[11], v72[12], v73[0], v73[1], v73[2], v73[3], v73[4], v73[5], v73[6], v73[7], v73[8], v73[9], v73[10], v73[11], v73[12], v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v75[0], v75[1], v75[2], v75[3], v75[4], v75[5], v75[6]);
      memcpy(v75, __src, sizeof(v75));
      if (v27)
      {
        memcpy(&v74[1], v1 + 9, 0x60uLL);
        v74[0] = v27;
        static WalletPaymentsCommerceClassicOrder.Address.== infix(_:_:)(v75, v74);
        memcpy(v72, v74, sizeof(v72));
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v28, v29, v30, v31);
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v32, v33, v34, v35);
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v36, v37, v38, v39);
        sub_1936011D8(v72);
        memcpy(v73, v75, sizeof(v73));
        sub_1936011D8(v73);
        v74[0] = v26;
        memcpy(&v74[1], v3 + 9, 0x60uLL);
        OUTLINED_FUNCTION_175();
        sub_19344E6DC(v40, v41, v42);
        goto LABEL_44;
      }

      memcpy(v74, __src, sizeof(v74));
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v51, v52, v53, v54);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v55, v56, v57, v58);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v59, v60, v61, v62);
      sub_1936011D8(v74);
    }

    else
    {
      if (!v79[0])
      {
        __src[0] = 0;
        OUTLINED_FUNCTION_48_17(v12, v21, v13, v14, v15, v16, v17, v18, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], v72[10], v72[11], v72[12], v73[0], v73[1], v73[2], v73[3], v73[4], v73[5], v73[6], v73[7], v73[8], v73[9], v73[10], v73[11], v73[12], v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v75[0], v75[1], v75[2], v75[3], v75[4], v75[5], v75[6]);
        OUTLINED_FUNCTION_79_1(__dst, v75);
        OUTLINED_FUNCTION_79_1(v79, v75);
        sub_19344E6DC(__src, &qword_1EAE3EF40, &qword_1939716A0);
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_9_12();
      sub_193448804(v43, v44, v45, v46);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v47, v48, v49, v50);
    }

    __src[0] = v26;
    memcpy(&__src[1], v3 + 9, 0x60uLL);
    __src[13] = v27;
    memcpy(v77, v1 + 9, sizeof(v77));
    sub_19344E6DC(__src, &qword_1EAE3EF48, &qword_1939716A8);
    goto LABEL_44;
  }

  if (v8)
  {
    if (v4 == v9 && v5 == v8)
    {
      goto LABEL_10;
    }

    v12 = sub_19393CA30();
    if (v12)
    {
      goto LABEL_10;
    }
  }

LABEL_44:
  OUTLINED_FUNCTION_116();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v11 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  if (v1[1])
  {
    v9 = *v1;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v5)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_46_20();
      sub_19393C640();
      if (v6)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v6)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_10:
    OUTLINED_FUNCTION_104_0();
    if (v8)
    {
      goto LABEL_6;
    }

    return OUTLINED_FUNCTION_104_0();
  }

LABEL_9:
  OUTLINED_FUNCTION_104_0();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_5:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (v8)
  {
LABEL_6:
    memcpy(&__src[1], v1 + 9, 0x60uLL);
    __src[0] = v8;
    OUTLINED_FUNCTION_103_0();
    v13 = v8;
    memcpy(v14, v1 + 9, sizeof(v14));
    sub_1935F7F40(&v13, __dst);
    WalletPaymentsCommerceClassicOrder.Address.hash(into:)(a1);
    memcpy(__dst, __src, 0x68uLL);
    return sub_1936011D8(__dst);
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceClassicOrder.ShippingRecipient.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1935FF3A8()
{
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.ShippingRecipient.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceClassicOrder.Customer.givenName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Customer.familyName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Customer.phoneNumber.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.Customer.phoneNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Customer.emailAddress.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.Customer.emailAddress.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceClassicOrder.Customer.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::Customer *__return_ptr retstr)
{
  retstr->phoneNumber = 0u;
  retstr->emailAddress = 0u;
  OUTLINED_FUNCTION_38_20(retstr, 0);
}

uint64_t static WalletPaymentsCommerceClassicOrder.Customer.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v34 = a1[5];
      v35 = a2[5];
      v18 = a1[4];
      v19 = a2[6];
      v20 = a2[7];
      v21 = a1[7];
      v22 = a1[6];
      v23 = a2[4];
      v24 = sub_19393CA30();
      v12 = v23;
      v7 = v22;
      v9 = v21;
      v16 = v20;
      v14 = v19;
      v5 = v18;
      v8 = v34;
      v15 = v35;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v26 = v7;
      v27 = v12;
      v28 = sub_19393CA30();
      v12 = v27;
      v7 = v26;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v12 || v8 != v15)
    {
      v30 = v7;
      v31 = sub_19393CA30();
      v7 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v16)
    {
      v32 = v7 == v14 && v9 == v16;
      if (v32 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

void WalletPaymentsCommerceClassicOrder.Customer.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[7];
  if (v0[1])
  {
    v7 = *v0;
    sub_19393CAD0();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v3)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_19393CAD0();
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_19393CAD0();
      OUTLINED_FUNCTION_116();
      return;
    }
  }

  sub_19393CAD0();
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_19393CAD0();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_116();

  sub_19393C640();
}

uint64_t WalletPaymentsCommerceClassicOrder.Customer.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceClassicOrder.Customer.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935FF8A0()
{
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.Customer.hash(into:)();
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.addressLines.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.locality.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.locality.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.subLocality.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.subLocality.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.administrativeArea.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.administrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.subAdministrativeArea.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.postalCode.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.postalCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceClassicOrder.Address.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::Address *__return_ptr retstr)
{
  retstr->addressLines._rawValue = MEMORY[0x1E69E7CC0];
  retstr->locality = 0u;
  retstr->subLocality = 0u;
  retstr->administrativeArea = 0u;
  retstr->subAdministrativeArea = 0u;
  OUTLINED_FUNCTION_34_22(retstr, 0);
}

uint64_t static WalletPaymentsCommerceClassicOrder.Address.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v29 = a1[5];
  v36 = a1[6];
  v35 = a1[8];
  v24 = a1[9];
  v33 = a1[10];
  v23 = a1[11];
  v26 = a1[12];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v27 = a2[7];
  v28 = a1[7];
  v30 = a2[8];
  v31 = a2[9];
  v32 = a2[10];
  v34 = a2[11];
  v25 = a2[12];
  if ((sub_19344FC94(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    if (v2 != v6 || v3 != v7)
    {
      OUTLINED_FUNCTION_9_12();
      if ((sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }

    v13 = v4 == v8 && v5 == v10;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v36)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = v29 == v9 && v36 == v11;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v35)
  {
    v16 = v33;
    v15 = v34;
    v18 = v31;
    v17 = v32;
    if (!v30)
    {
      return 0;
    }

    v19 = v28 == v27 && v35 == v30;
    if (!v19 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = v33;
    v15 = v34;
    v18 = v31;
    v17 = v32;
    if (v30)
    {
      return 0;
    }
  }

  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    v20 = v24 == v18 && v16 == v17;
    if (!v20 && (OUTLINED_FUNCTION_20_24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v26)
  {
    if (v25)
    {
      v21 = v23 == v15 && v26 == v25;
      if (v21 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v25)
  {
    return 1;
  }

  return 0;
}

void WalletPaymentsCommerceClassicOrder.Address.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[8];
  v12 = v1[7];
  v13 = v1[9];
  v9 = v1[10];
  v14 = v1[11];
  v10 = v1[12];
  sub_1934D11C8(a1, *v1);
  if (v3)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v5)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      if (v7)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  sub_19393CAD0();
  if (v7)
  {
LABEL_4:
    sub_19393CAD0();
    OUTLINED_FUNCTION_46_20();
    sub_19393C640();
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_19393CAD0();
  if (v8)
  {
LABEL_5:
    sub_19393CAD0();
    sub_19393C640();
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_19393CAD0();
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_19393CAD0();
    OUTLINED_FUNCTION_107();
    return;
  }

LABEL_13:
  sub_19393CAD0();
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_19393CAD0();
  sub_19393C640();
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_7:
  sub_19393CAD0();
  OUTLINED_FUNCTION_107();

  sub_19393C640();
}

uint64_t WalletPaymentsCommerceClassicOrder.Payment.totalAmount.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Payment.totalCurrencyCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Payment.paymentMethods.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Payment.applePayTransactionIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Payment.transactions.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void __swiftcall WalletPaymentsCommerceClassicOrder.Payment.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::Payment *__return_ptr retstr)
{
  retstr->totalAmount._countAndFlagsBits = 0;
  retstr->totalAmount._object = 0xE000000000000000;
  retstr->totalCurrencyCode._countAndFlagsBits = 0;
  retstr->totalCurrencyCode._object = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  retstr->paymentMethods._rawValue = MEMORY[0x1E69E7CC0];
  retstr->applePayTransactionIdentifiers._rawValue = v1;
  retstr->transactions._rawValue = v1;
}

void static WalletPaymentsCommerceClassicOrder.Payment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_13_20(v0);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v8 = v3[5];
  v7 = v3[6];
  v9 = v2[2];
  v10 = v2[3];
  v12 = v2[4];
  v11 = v2[5];
  v13 = v2[6];
  v14 = v1 == *v2 && v3[1] == v2[1];
  if (v14 || (sub_19393CA30()) && (v4 == v9 ? (v15 = v6 == v10) : (v15 = 0), (v15 || (OUTLINED_FUNCTION_46_20(), (sub_19393CA30())) && (sub_19344FC94(v5, v12) & 1) != 0 && (sub_19344FC94(v8, v11)))
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_116();

    sub_1935FDA60(v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_116();
  }
}

uint64_t WalletPaymentsCommerceClassicOrder.Payment.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  sub_19393C640();
  OUTLINED_FUNCTION_175();
  sub_19393C640();
  sub_1934D11C8(a1, v7);
  sub_1934D11C8(a1, v8);
  v10 = OUTLINED_FUNCTION_13_0();

  return sub_193600E68(v10, v11);
}

void WalletPaymentsCommerceClassicOrder.Payment.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_51_15();
  a27 = v29;
  a28 = v30;
  v31 = *v28;
  v32 = v28[1];
  v33 = v28[2];
  v34 = v28[3];
  v35 = v28[4];
  v36 = v28[5];
  v37 = v28[6];
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_15_1();
  sub_19393C640();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  sub_1934D11C8(&a10, v35);
  sub_1934D11C8(&a10, v36);
  sub_193600E68(&a10, v37);
  sub_19393CB00();
  OUTLINED_FUNCTION_50_14();
}

void sub_193600368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_51_15();
  a27 = v29;
  a28 = v30;
  v31 = *v28;
  v32 = v28[1];
  v33 = v28[2];
  v34 = v28[3];
  v35 = v28[4];
  v36 = v28[5];
  v37 = v28[6];
  sub_19393CAB0();
  OUTLINED_FUNCTION_15_1();
  sub_19393C640();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  sub_1934D11C8(&a10, v35);
  sub_1934D11C8(&a10, v36);
  sub_193600E68(&a10, v37);
  sub_19393CB00();
  OUTLINED_FUNCTION_50_14();
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.amount.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.currencyCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.paymentMethod.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[10];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
  a1[6] = v7;
}

__n128 WalletPaymentsCommerceClassicOrder.Transaction.paymentMethod.setter(__int128 *a1)
{
  v9 = a1[1];
  v10 = *a1;
  v8 = a1[2];
  v2 = *(a1 + 6);
  v3 = *(v1 + 40);
  v5 = *(v1 + 56);
  v4 = *(v1 + 64);
  v6 = *(v1 + 80);

  *(v1 + 32) = v10;
  *(v1 + 48) = v9;
  result = v8;
  *(v1 + 64) = v8;
  *(v1 + 80) = v2;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.applePayTransactionIdentifier.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.applePayTransactionIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceClassicOrder.Transaction.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::Transaction *__return_ptr retstr)
{
  retstr->amount._countAndFlagsBits = 0;
  retstr->amount._object = 0xE000000000000000;
  retstr->currencyCode._countAndFlagsBits = 0;
  retstr->currencyCode._object = 0xE000000000000000;
  retstr->paymentMethod.displayName.key._countAndFlagsBits = 0;
  retstr->paymentMethod.displayName.key._object = 0xE000000000000000;
  retstr->paymentMethod.displayName.developmentLocalization.value._countAndFlagsBits = 0;
  retstr->paymentMethod.displayName.developmentLocalization.value._object = 0;
  retstr->paymentMethod.displayName.localizedStrings._rawValue = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_34_22(retstr, 0);
}

void __swiftcall WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::Transaction::PaymentMethod *__return_ptr retstr)
{
  retstr->displayName.key._countAndFlagsBits = 0;
  retstr->displayName.key._object = 0xE000000000000000;
  retstr->displayName.developmentLocalization.value._countAndFlagsBits = 0;
  retstr->displayName.developmentLocalization.value._object = 0;
  v1 = MEMORY[0x1E69E7CC0];
  retstr->localizedDisplayName.value._countAndFlagsBits = 0;
  retstr->localizedDisplayName.value._object = 0;
  retstr->displayName.localizedStrings._rawValue = v1;
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.displayName.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_25_22(a1);
}

__n128 WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.displayName.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_37_18(a1);

  result = v4;
  *v1 = v5;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.localizedDisplayName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.localizedDisplayName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t static WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  if (OUTLINED_FUNCTION_15_31(a1, a2, *a1, v13, v14, v15, v16, v17, v18, v19, v20, v21))
  {
    if (v5)
    {
      if (v10)
      {
        v11 = v4 == v9 && v5 == v10;
        if (v11 || (OUTLINED_FUNCTION_20_24() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}