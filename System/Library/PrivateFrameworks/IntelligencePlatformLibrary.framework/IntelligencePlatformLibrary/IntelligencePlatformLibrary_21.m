uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1.catId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1.staticDialogId.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1.staticDialogId.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = (v1 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(v3) + 24));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1.staticDialogId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1.init()()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID();
  v1 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(0);
  v6 = (v0 + *(v5 + 20));
  v7 = (v0 + *(v5 + 24));
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1935CAD48(void (*a1)(char *))
{
  OUTLINED_FUNCTION_68_13();
  v2 = sub_19393CAB0();
  v10 = OUTLINED_FUNCTION_149_5(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  a1(v10);
  return sub_19393CB00();
}

uint64_t sub_1935CADB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  OUTLINED_FUNCTION_68_13();
  v5 = sub_19393CAB0();
  v13 = OUTLINED_FUNCTION_149_5(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.domain.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.code.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.code.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (v0[1])
  {
    v3 = *v0;
    sub_19393CAD0();
    OUTLINED_FUNCTION_148_4();
    sub_19393C640();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  return MEMORY[0x193B18060](v1);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (!v4)
  {
    MEMORY[0x193B18060](v3);
  }

  return sub_19393CB00();
}

uint64_t sub_1935CB068()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935CB0FC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = *v2;
  v4 = v2[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_1935CB158()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = (v1 + *(v4(v3) + 20));
  v6 = v5[1];

  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.bundleId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

void sub_1935CB1F4()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  OUTLINED_FUNCTION_37_0(*(v2 + 24));
}

void sub_1935CB240(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_85_8(a1);
  v3 = v2(v1);
  OUTLINED_FUNCTION_84_6(*(v3 + 24));
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.resultType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.init()()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID();
  v1 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
  v6 = (v0 + *(v5 + 20));
  v7 = v0 + *(v5 + 24);
  *v7 = 0;
  *(v7 + 8) = 256;
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  *(v7 + 8) = 256;
  return result;
}

void static IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_48_1();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v6 = OUTLINED_FUNCTION_147_4();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_76_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  v14 = MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32_1(v14, v15, v36);
  OUTLINED_FUNCTION_88_10();
  v16 = OUTLINED_FUNCTION_31(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_31(v0 + v1);
    if (v18)
    {
      sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_12;
    }

LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_2(v16, v17, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v0 + v1);
  if (v18)
  {
    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_40();
  OUTLINED_FUNCTION_167_5(v19, v20, v21);
  OUTLINED_FUNCTION_0_46();
  sub_1935C8448(v22, v23);
  OUTLINED_FUNCTION_81_9();
  OUTLINED_FUNCTION_6_34();
  sub_1935D1B90();
  OUTLINED_FUNCTION_25_2();
  sub_1935D1B90();
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v2 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v24 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
  v25 = *(v24 + 20);
  OUTLINED_FUNCTION_3();
  if (!v28)
  {
    if (v26)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  if (v26)
  {
    OUTLINED_FUNCTION_5(v27);
    v31 = v18 && v29 == v30;
    if (v31 || (sub_19393CA30() & 1) != 0)
    {
LABEL_21:
      v32 = *(v24 + 24);
      OUTLINED_FUNCTION_106_9();
      if ((v35 & 1) == 0 && (v34 & 1) == 0)
      {
        OUTLINED_FUNCTION_48_2(v33);
        IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType.rawValue.getter();
        IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType.rawValue.getter();
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for AIML.UUID();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v5 = OUTLINED_FUNCTION_25_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_70_7(v11, v27);
  OUTLINED_FUNCTION_6_3(v0, 1, v1);
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_40();
    OUTLINED_FUNCTION_166_4(v13, v14, v15);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_46();
    sub_1935C8448(v16, v17);
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
  }

  v18 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
  OUTLINED_FUNCTION_129_7(v18);
  v20 = (v0 + v19);
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

  OUTLINED_FUNCTION_100(*(v1 + 24));
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v23 = *(v22 + 8);
    v24 = *v22;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_96_12();
    v26 = IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType.rawValue.getter(v25);
    MEMORY[0x193B18030](v26);
  }

  OUTLINED_FUNCTION_236();
}

BOOL static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestStarted.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.modelNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.queryArguments.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

__n128 IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.llmquPerfMetrics.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = v1 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(v2) + 32);
  v4 = *(v3 + 32);
  v5 = *(v3 + 36);
  v6 = *(v3 + 37);
  result = *v3;
  v8 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = v8;
  *(v0 + 36) = v5;
  *(v0 + 32) = v4;
  *(v0 + 37) = v6;
  return result;
}

__n128 IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.llmquPerfMetrics.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 37);
  v6 = v1 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0) + 32);
  result = *a1;
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v8;
  *(v6 + 36) = v4;
  *(v6 + 32) = v3;
  *(v6 + 37) = v5;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.llmquPerfMetrics.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

double IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(v1);
  v3 = *(v2 + 28);
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
  OUTLINED_FUNCTION_165();
  v4 = v0 + *(v2 + 32);
  OUTLINED_FUNCTION_154_5();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  *(v0 + 24) = 0;
  *(v0 + 28) = 1;
  sub_19344E6DC(v0 + v3, &qword_1EAE3DFD8, &qword_193969380);
  OUTLINED_FUNCTION_165();
  return OUTLINED_FUNCTION_154_5();
}

void static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_94_7();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFD8, &qword_193969380);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_220();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3E5C0, &qword_19396A2C0);
  OUTLINED_FUNCTION_4_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_74();
  v18 = *(v5 + 8);
  v19 = *(v3 + 8);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_31;
    }

    v20 = *v5 == *v3 && v18 == v19;
    if (!v20 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v19)
  {
    goto LABEL_31;
  }

  v21 = *(v3 + 20);
  if (*(v5 + 20))
  {
    if (!*(v3 + 20))
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*(v5 + 16) != *(v3 + 16))
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_31;
    }
  }

  v22 = *(v3 + 28);
  if (*(v5 + 28))
  {
    if (!*(v3 + 28))
    {
      goto LABEL_31;
    }

LABEL_22:
    v53 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0);
    v23 = *(v53 + 28);
    v24 = *(v14 + 48);
    OUTLINED_FUNCTION_159_7();
    sub_193448804(v25, v26, v27, v28);
    OUTLINED_FUNCTION_159_7();
    sub_193448804(v29, v30, v31, v32);
    OUTLINED_FUNCTION_6_3(v1, 1, v6);
    if (v20)
    {
      OUTLINED_FUNCTION_6_3(v1 + v24, 1, v6);
      if (v20)
      {
        sub_19344E6DC(v1, &qword_1EAE3DFD8, &qword_193969380);
LABEL_33:
        v41 = *(v53 + 32);
        v42 = v5 + v41;
        v43 = (v3 + v41);
        v44 = *(v3 + v41 + 37);
        if ((*(v5 + v41 + 37) & 1) == 0)
        {
          v45 = *v43;
          v46 = v43[1];
          v47 = *(v43 + 36);
          v48 = *(v43 + 8);
          v49 = *(v42 + 32);
          v50 = *(v42 + 36);
          v51 = *(v42 + 16);
          v57[0] = *v42;
          v57[1] = v51;
          v59 = v50;
          v58 = v49;
          v60 = 0;
          if ((v44 & 1) == 0)
          {
            v52 = v48 | (v47 << 32);
            v54[0] = v45;
            v54[1] = v46;
            v55 = v52;
            v56 = BYTE4(v52);
            static IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.== infix(_:_:)(v57, v54);
          }
        }

        goto LABEL_31;
      }
    }

    else
    {
      v33 = OUTLINED_FUNCTION_24_1();
      sub_193448804(v33, v34, v35, v36);
      OUTLINED_FUNCTION_6_3(v1 + v24, 1, v6);
      if (!v37)
      {
        OUTLINED_FUNCTION_72_9();
        sub_1935D1BE4(v1 + v24, v0, v38);
        static IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.== infix(_:_:)();
        v40 = v39;
        sub_1935D1B90();
        sub_1935D1B90();
        sub_19344E6DC(v1, &qword_1EAE3DFD8, &qword_193969380);
        if ((v40 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      OUTLINED_FUNCTION_73_13();
      sub_1935D1B90();
    }

    sub_19344E6DC(v1, &qword_1EAE3E5C0, &qword_19396A2C0);
    goto LABEL_31;
  }

  if (*(v5 + 24) != *(v3 + 24))
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_31:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v3 = OUTLINED_FUNCTION_3_4();
  v4 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(v3);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFD8, &qword_193969380);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_76_0();
  if (v0[1])
  {
    v12 = *v0;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + 20) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v13 = *(v0 + 4);
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (*(v0 + 28) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v14 = *(v0 + 6);
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  v15 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0);
  sub_193448804(v0 + *(v15 + 28), v2, &qword_1EAE3DFD8, &qword_193969380);
  OUTLINED_FUNCTION_6_3(v2, 1, v4);
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_72_9();
    sub_1935D1BE4(v2, v1, v17);
    OUTLINED_FUNCTION_103_0();
    IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.hash(into:)();
    OUTLINED_FUNCTION_73_13();
    sub_1935D1B90();
  }

  v18 = (v0 + *(v15 + 32));
  if (*(v18 + 37))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v19 = *v18;
    v20 = v18[1];
    v22 = *(v18 + 36);
    v21 = *(v18 + 8);
    OUTLINED_FUNCTION_103_0();
    IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.hash(into:)();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t static IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  v10 = *(a2 + 36);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 8))
    {
      v12 = *(a2 + 12);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 16))
    {
      v13 = *(a2 + 20);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 24))
    {
      v14 = *(a2 + 28);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v9)
  {
    if ((*(a2 + 36) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == *(a2 + 32))
    {
      v16 = *(a2 + 36);
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  return 1;
}

void IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_67_10();
  v1 = v0[2];
  v2 = *(v0 + 12);
  v3 = v0[4];
  v4 = *(v0 + 20);
  v5 = v0[6];
  v6 = *(v0 + 28);
  v7 = v0[8];
  v8 = *(v0 + 36);
  if (v9 == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *v0;
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v2)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_19393CAD0();
  if (!v4)
  {
LABEL_4:
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_19393CAD0();
    if (!v8)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_19393CAD0();
    goto LABEL_12;
  }

LABEL_9:
  sub_19393CAD0();
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_19393CAD0();
  sub_19393CAE0();
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_6:
  sub_19393CAD0();
  sub_19393CAE0();
LABEL_12:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935CC300()
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.questionNeedsAnswer.setter(char a1)
{
  result = type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.questionNeedsAnswer.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.sortOrder.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.init()()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID();
  v1 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
  v6 = *(v5 + 20);
  v7 = v0 + *(v5 + 24);
  *v7 = 0;
  *(v7 + 8) = 256;
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *(v0 + v6) = 2;
  *v7 = 0;
  *(v7 + 8) = 256;
  return result;
}

void static IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for AIML.UUID();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_7();
  v8 = OUTLINED_FUNCTION_147_4();
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_76_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  v16 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32_1(v16, v17, v34);
  OUTLINED_FUNCTION_88_10();
  v18 = OUTLINED_FUNCTION_31(v2);
  if (!v20)
  {
    OUTLINED_FUNCTION_168_2(v18, v19, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v2 + v3);
    if (!v20)
    {
      OUTLINED_FUNCTION_2_40();
      OUTLINED_FUNCTION_167_5(v21, v22, v23);
      OUTLINED_FUNCTION_0_46();
      sub_1935C8448(v24, v25);
      OUTLINED_FUNCTION_81_9();
      OUTLINED_FUNCTION_6_34();
      sub_1935D1B90();
      OUTLINED_FUNCTION_25_2();
      sub_1935D1B90();
      sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v4 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
LABEL_9:
    sub_19344E6DC(v2, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v2 + v3);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_12:
  v26 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
  v27 = *(v26 + 20);
  v28 = *(v1 + v27);
  v29 = *(v0 + v27);
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v29 == 2 || ((v29 ^ v28) & 1) != 0)
  {
    goto LABEL_10;
  }

  v30 = *(v26 + 24);
  OUTLINED_FUNCTION_106_9();
  if ((v33 & 1) == 0 && (v32 & 1) == 0)
  {
    OUTLINED_FUNCTION_48_2(v31);
    IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelSortOrder.rawValue.getter();
    IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelSortOrder.rawValue.getter();
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for AIML.UUID();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v5 = OUTLINED_FUNCTION_25_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_70_7(v11, v24);
  OUTLINED_FUNCTION_6_3(v0, 1, v1);
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_40();
    OUTLINED_FUNCTION_166_4(v13, v14, v15);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_46();
    sub_1935C8448(v16, v17);
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
  }

  v18 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
  OUTLINED_FUNCTION_129_7(v18);
  if (*(v0 + v19) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_100(*(v1 + 24));
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v21 = *(v20 + 8);
    v22 = *v20;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_96_12();
    v23 = IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelSortOrder.rawValue.getter();
    MEMORY[0x193B18030](v23);
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded.result.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x193B18030](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      memcpy(__src, v4, sizeof(__src));
      sub_1935AF804(__dst, v6);
      IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.hash(into:)();
      memcpy(v6, __src, sizeof(v6));
      result = sub_1935D2104(v6);
      v4 += 232;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.bundleId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.queryAttributes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 96);

  *(v1 + 96) = v2;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.quTokenParseInfo.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 109);
  *(a1 + 4) = *(v1 + 108);
  *a1 = v2;
  *(a1 + 5) = v3;
}

int *IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.quTokenParseInfo.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 5);
  *(v1 + 108) = *(result + 4);
  *(v1 + 104) = v2;
  *(v1 + 109) = v3;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.documentAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 132);
  v5 = *(v1 + 128);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 20) = v4;
  *(a1 + 16) = v5;
  return sub_19350CB08(v2, v3);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.documentAttributes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v7 = *(v1 + 128);
  v6 = v1 + 128;
  v8 = v7 | (*(v6 + 4) << 32);
  result = sub_193456418(*(v6 - 16), *(v6 - 8));
  *(v6 - 16) = v2;
  *(v6 - 8) = v3;
  *(v6 + 4) = v5;
  *v6 = v4;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.topicalityAttributes.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 136), sizeof(__dst));
  memcpy(a1, (v1 + 136), 0x60uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE3E5C8, &qword_19396A2C8);
}

void *IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.topicalityAttributes.setter(const void *a1)
{
  memcpy(v4, (v1 + 136), sizeof(v4));
  sub_19344E6DC(v4, &qword_1EAE3E5C8, &qword_19396A2C8);
  return memcpy((v1 + 136), a1, 0x60uLL);
}

void IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.init()(uint64_t a1@<X8>)
{
  *(a1 + 112) = xmmword_1939526A0;
  *(a1 + 128) = 0;
  v2 = (a1 + 128);
  *(a1 + 132) = 0;
  OUTLINED_FUNCTION_150_5(0);
  *(a1 + 136) = v3;
  *(a1 + 216) = 0;
  *(a1 + 224) = 1;
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
  *(a1 + 72) = 0;
  *(a1 + 76) = 1;
  *(a1 + 80) = 0;
  *(a1 + 84) = 1;
  *(a1 + 88) = 0;
  *(a1 + 92) = 1;

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = 256;
  v4 = *(a1 + 132);
  v5 = *v2;
  sub_193456418(*(a1 + 112), *(a1 + 120));
  *(a1 + 112) = xmmword_1939526A0;
  *(a1 + 132) = 0;
  *v2 = 0;
  memcpy(__dst, (a1 + 136), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3E5C8, &qword_19396A2C8);
  *(a1 + 136) = 0u;
  OUTLINED_FUNCTION_150_5(0);
  *(a1 + 216) = 0;
  *(a1 + 224) = 1;
}

BOOL static IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = a1[3];
  v118 = a1[2];
  v7 = *(a1 + 8);
  v120 = *(a1 + 36);
  v8 = *(a1 + 10);
  v117 = *(a1 + 44);
  v112 = *(a1 + 12);
  v115 = *(a1 + 52);
  v109 = *(a1 + 14);
  v113 = *(a1 + 60);
  v106 = *(a1 + 16);
  v110 = *(a1 + 68);
  v103 = *(a1 + 18);
  v107 = *(a1 + 76);
  v100 = *(a1 + 20);
  v104 = *(a1 + 84);
  v96 = *(a1 + 22);
  v101 = *(a1 + 92);
  v97 = a1[12];
  v83 = *(a1 + 108);
  v82 = *(a1 + 26);
  v92 = *(a1 + 109);
  v89 = a1[14];
  v93 = a1[15];
  v87 = *(a1 + 132);
  v86 = *(a1 + 32);
  memcpy(__dst, a1 + 17, sizeof(__dst));
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  v12 = a2[2];
  v13 = a2[3];
  v14 = *(a2 + 8);
  v119 = *(a2 + 36);
  v15 = *(a2 + 10);
  v116 = *(a2 + 44);
  v16 = *(a2 + 12);
  v114 = *(a2 + 52);
  v17 = *(a2 + 14);
  v111 = *(a2 + 60);
  v18 = *(a2 + 16);
  v108 = *(a2 + 68);
  v19 = *(a2 + 18);
  v105 = *(a2 + 76);
  v98 = *(a2 + 20);
  v102 = *(a2 + 84);
  v94 = *(a2 + 22);
  v99 = *(a2 + 92);
  v95 = a2[12];
  v81 = *(a2 + 108);
  v80 = *(a2 + 26);
  v91 = *(a2 + 109);
  v88 = a2[14];
  v90 = a2[15];
  v85 = *(a2 + 132);
  v84 = *(a2 + 32);
  v20 = memcpy(__src, a2 + 17, 0x60uLL);
  if (v5)
  {
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v11)
    {
      return 0;
    }

    v125[0] = v3;
    LOBYTE(v125[1]) = v4 & 1;
    v124[0] = v9;
    LOBYTE(v124[1]) = v10 & 1;
    v21 = IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightSearchRetrievalType.rawValue.getter(v20);
    if (v21 != IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightSearchRetrievalType.rawValue.getter(v21))
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    v22 = v118 == v12 && v6 == v13;
    if (!v22 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v120)
  {
    if (!v119)
    {
      return 0;
    }
  }

  else
  {
    v23 = v119;
    if (v7 != v14)
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  if (v117)
  {
    if (!v116)
    {
      return 0;
    }
  }

  else
  {
    v24 = v116;
    if (v8 != v15)
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (v115)
  {
    if (!v114)
    {
      return 0;
    }
  }

  else
  {
    v25 = v114;
    if (v112 != v16)
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if (v113)
  {
    if (!v111)
    {
      return 0;
    }
  }

  else
  {
    v26 = v111;
    if (v109 != v17)
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  if (v110)
  {
    if (!v108)
    {
      return 0;
    }
  }

  else
  {
    v27 = v108;
    if (v106 != v18)
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  if (v107)
  {
    if (!v105)
    {
      return 0;
    }
  }

  else
  {
    v28 = v105;
    if (v103 != v19)
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (v104)
  {
    if (!v102)
    {
      return 0;
    }
  }

  else
  {
    v29 = v102;
    if (v100 != v98)
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if (v101)
  {
    if (!v99)
    {
      return 0;
    }
  }

  else
  {
    v30 = v99;
    if (v96 != v94)
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  if (!v97)
  {
    if (!v95)
    {

      goto LABEL_72;
    }

LABEL_68:

    return 0;
  }

  if (!v95)
  {
    goto LABEL_68;
  }

  if ((sub_1935CA4BC(v97, v95) & 1) == 0)
  {
    return 0;
  }

LABEL_72:
  if (v92)
  {
    if ((v91 & 1) == 0)
    {
      return 0;
    }

LABEL_74:
    v33 = v84 | (v85 << 32);
    if (v93 == 1)
    {
      sub_19350CB08(v89, 1);
      if (v90 == 1)
      {
        v93 = 1;
        sub_19350CB08(v88, 1);
LABEL_77:
        sub_193456418(v89, v93);
        memcpy(v129, __dst, sizeof(v129));
        v34 = __dst[11];
        memcpy(v128, __src, sizeof(v128));
        v35 = __src[11];
        if (__dst[11] == 1)
        {
          if (__src[11] == 1)
          {
            memcpy(v125, __dst, 0x58uLL);
            v31 = 1;
            v125[11] = 1;
            sub_193448804(__dst, v124, &qword_1EAE3E5C8, &qword_19396A2C8);
            sub_193448804(__src, v124, &qword_1EAE3E5C8, &qword_19396A2C8);
            v36 = v125;
LABEL_106:
            sub_19344E6DC(v36, &qword_1EAE3E5C8, &qword_19396A2C8);
            return v31;
          }

          sub_193448804(__dst, v125, &qword_1EAE3E5C8, &qword_19396A2C8);
          sub_193448804(__src, v125, &qword_1EAE3E5C8, &qword_19396A2C8);
        }

        else
        {
          memcpy(v125, __dst, 0x58uLL);
          v125[11] = __dst[11];
          memcpy(v124, v125, sizeof(v124));
          if (__src[11] != 1)
          {
            memcpy(v123, __src, 0x58uLL);
            v123[11] = __src[11];
            v31 = static IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.== infix(_:_:)(v124, v123);
            memcpy(v121, v123, sizeof(v121));
            OUTLINED_FUNCTION_113_9();
            sub_193448804(v61, v62, v63, &qword_19396A2C8);
            OUTLINED_FUNCTION_113_9();
            sub_193448804(v64, v65, v66, &qword_19396A2C8);
            OUTLINED_FUNCTION_113_9();
            sub_193448804(v67, v68, v69, &qword_19396A2C8);
            sub_1935D2134(v121);
            memcpy(v122, v124, sizeof(v122));
            sub_1935D2134(v122);
            memcpy(v123, v129, 0x58uLL);
            v123[11] = v34;
            v36 = v123;
            goto LABEL_106;
          }

          memcpy(v123, v125, sizeof(v123));
          OUTLINED_FUNCTION_113_9();
          sub_193448804(v50, v51, v52, &qword_19396A2C8);
          OUTLINED_FUNCTION_113_9();
          sub_193448804(v53, v54, v55, &qword_19396A2C8);
          OUTLINED_FUNCTION_113_9();
          sub_193448804(v56, v57, v58, &qword_19396A2C8);
          sub_1935D2134(v123);
        }

        memcpy(v125, v129, 0x58uLL);
        v125[11] = v34;
        memcpy(v126, v128, sizeof(v126));
        v127 = v35;
        sub_19344E6DC(v125, &qword_1EAE3E5D0, &qword_19396A2D0);
        return 0;
      }

      sub_19350CB08(v88, v90);
      goto LABEL_90;
    }

    if (v90 == 1)
    {
      OUTLINED_FUNCTION_128_8();
      sub_19350CB08(v38, v39);
      sub_19350CB08(v88, 1);
      OUTLINED_FUNCTION_128_8();
      sub_19350CB08(v40, v41);

LABEL_90:
      sub_193456418(v89, v93);
      v42 = v88;
      v43 = v90;
LABEL_110:
      sub_193456418(v42, v43);
      return 0;
    }

    if (v93)
    {
      if (v90)
      {
        if (v89 != v88 || v93 != v90)
        {
          v45 = sub_19393CA30();
          v46 = OUTLINED_FUNCTION_115_0();
          sub_19350CB08(v46, v47);
          sub_19350CB08(v88, v90);
          v48 = OUTLINED_FUNCTION_115_0();
          sub_19350CB08(v48, v49);
          sub_193456418(v88, v90);
          if ((v45 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_113;
        }

        OUTLINED_FUNCTION_128_8();
        sub_19350CB08(v76, v77);
        sub_19350CB08(v89, v93);
        OUTLINED_FUNCTION_128_8();
        sub_19350CB08(v78, v79);
        v59 = v89;
        v60 = v93;
LABEL_112:
        sub_193456418(v59, v60);
LABEL_113:
        if (((v86 | (v87 << 32)) & 0x100000000) == 0)
        {
          if ((v33 & 0x100000000) != 0 || v86 != v84)
          {
            goto LABEL_109;
          }

LABEL_118:

          goto LABEL_77;
        }

        if ((v33 & 0x100000000) != 0)
        {
          goto LABEL_118;
        }

LABEL_109:

        OUTLINED_FUNCTION_85_9();
        goto LABEL_110;
      }

      OUTLINED_FUNCTION_85_9();
      sub_19350CB08(v70, v71);
      v90 = 0;
    }

    else
    {
      sub_19350CB08(v89, 0);
      if (!v90)
      {
        sub_19350CB08(v88, 0);
        sub_19350CB08(v89, 0);
        v59 = v88;
        v60 = 0;
        goto LABEL_112;
      }
    }

    sub_19350CB08(v88, v90);
    OUTLINED_FUNCTION_85_9();
    sub_19350CB08(v72, v73);
    v74 = OUTLINED_FUNCTION_115_0();
    sub_193456418(v74, v75);
    goto LABEL_109;
  }

  if (v91)
  {
    return 0;
  }

  v37 = v80 | (v81 << 32);
  if (((v82 | (v83 << 32)) & 0x100000000) != 0)
  {
    if ((v37 & 0x100000000) == 0)
    {
      return 0;
    }

    goto LABEL_74;
  }

  v31 = 0;
  if ((v37 & 0x100000000) == 0 && v82 == v80)
  {
    goto LABEL_74;
  }

  return v31;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_148_2();
  v2 = v1[3];
  v26 = v1[2];
  v19 = *(v1 + 8);
  v20 = *(v1 + 10);
  v28 = *(v1 + 36);
  v29 = *(v1 + 44);
  v21 = *(v1 + 12);
  v22 = *(v1 + 14);
  v30 = *(v1 + 52);
  v31 = *(v1 + 60);
  v23 = *(v1 + 16);
  v24 = *(v1 + 18);
  v32 = *(v1 + 68);
  v33 = *(v1 + 76);
  v25 = *(v1 + 20);
  v3 = *(v1 + 22);
  v34 = *(v1 + 84);
  v35 = *(v1 + 92);
  v36 = v1[12];
  v4 = *(v1 + 108);
  v5 = *(v1 + 26);
  v37 = *(v1 + 109);
  v6 = v1[15];
  v27 = v1[14];
  v18 = *(v1 + 132);
  v17 = *(v1 + 32);
  v7 = v1[28];
  if (v8 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = v1[15];
    v10 = v1[28];
    v11 = *(v1 + 8);
    v12 = *v1;
    v13 = OUTLINED_FUNCTION_103_0();
    v41[0] = v12;
    v14 = v11 & 1;
    v7 = v10;
    v6 = v9;
    LOBYTE(v41[1]) = v14;
    v15 = IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightSearchRetrievalType.rawValue.getter(v13);
    MEMORY[0x193B18030](v15);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v28)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v19);
    sub_19393CAE0();
  }

  if (v29)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v20);
    sub_19393CAE0();
  }

  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v21);
    sub_19393CAE0();
  }

  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v22);
    sub_19393CAE0();
  }

  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v23);
    sub_19393CAE0();
  }

  if (v33)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v24);
    sub_19393CAE0();
  }

  if (v34)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v25);
    sub_19393CAE0();
  }

  if (v35)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (v36)
  {
    OUTLINED_FUNCTION_103_0();
    sub_1935D1610(v0, v36);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v37 || (OUTLINED_FUNCTION_103_0(), ((v5 | (v4 << 32)) & 0x100000000) != 0))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (v6 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    goto LABEL_45;
  }

  v16 = v17 | (v18 << 32);
  OUTLINED_FUNCTION_103_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_104_0();
    if ((v16 & 0x100000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_43:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_103_0();

  sub_19393C640();
  if ((v16 & 0x100000000) != 0)
  {
    goto LABEL_43;
  }

LABEL_41:
  OUTLINED_FUNCTION_103_0();
  sub_19393CAE0();
LABEL_44:
  sub_193456418(v27, v6);
LABEL_45:
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    memcpy(__dst, v1 + 17, 0x58uLL);
    __dst[11] = v7;
    OUTLINED_FUNCTION_103_0();
    memcpy(v39, v1 + 17, sizeof(v39));
    v40 = v7;
    sub_1935AFDCC(v39, v41);
    IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.hash(into:)();
    memcpy(v41, __dst, 0x60uLL);
    sub_1935D2134(v41);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935CDDC4()
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.QueryAttributes.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x193B18030](v2);
  if (v2)
  {
    v4 = (v1 + 36);
    do
    {
      if (*v4 == 1)
      {
        result = sub_19393CAD0();
      }

      else
      {
        v5 = *(v4 - 1);
        sub_19393CAD0();
        result = sub_19393CAE0();
      }

      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t static IntelligenceFlowSearchToolTelemetry.QUTokenParseInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return 0;
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
      return 0;
    }
  }

  return 1;
}

uint64_t IntelligenceFlowSearchToolTelemetry.QUTokenParseInfo.hash(into:)()
{
  OUTLINED_FUNCTION_67_10();
  if (v1 == 1)
  {
    return sub_19393CAD0();
  }

  v3 = *v0;
  sub_19393CAD0();
  return sub_19393CAE0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.QUTokenParseInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  OUTLINED_FUNCTION_119();
  if (v2 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_123();
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.embeddingModelId.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.embeddingModelId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.init()(_DWORD *a1@<X8>)
{
  *a1 = 0;
  OUTLINED_FUNCTION_103_9(a1);
  *(v1 + 40) = 0;
  *(v1 + 44) = v2;
  *(v1 + 48) = 0;
  *(v1 + 52) = v2;
  *(v1 + 56) = 0;
  *(v1 + 60) = v2;
  *(v1 + 64) = 0;
  *(v1 + 68) = v2;
  *(v1 + 72) = 0;
  *(v1 + 76) = v2;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
}

BOOL static IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  v10 = *(a1 + 28);
  v11 = *(a1 + 32);
  v12 = *(a1 + 36);
  v46 = *(a1 + 40);
  v13 = *(a1 + 44);
  v44 = *(a1 + 48);
  v47 = *(a1 + 52);
  v42 = *(a1 + 56);
  v45 = *(a1 + 60);
  v14 = *(a1 + 64);
  v43 = *(a1 + 68);
  v15 = *(a1 + 72);
  v41 = *(a1 + 76);
  v37 = *(a1 + 80);
  v39 = *(a1 + 88);
  v16 = *(a2 + 4);
  v17 = *(a2 + 8);
  v18 = *(a2 + 12);
  v19 = *(a2 + 16);
  v20 = *(a2 + 20);
  v21 = *(a2 + 24);
  v22 = *(a2 + 28);
  v40 = *(a2 + 76);
  v38 = *(a2 + 88);
  if (v4)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v23 = v16;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v17)
    {
      v24 = v18;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v19)
    {
      v25 = v20;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v21)
    {
      v26 = v22;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  if (v12)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v11 == *(a2 + 32))
    {
      v27 = *(a2 + 36);
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  if (v13)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v46 == *(a2 + 40))
    {
      v28 = *(a2 + 44);
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (v47)
  {
    if (!*(a2 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (v44 == *(a2 + 48))
    {
      v29 = *(a2 + 52);
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if (v45)
  {
    if (!*(a2 + 60))
    {
      return 0;
    }
  }

  else
  {
    if (v42 == *(a2 + 56))
    {
      v30 = *(a2 + 60);
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  if (v43)
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    if (v14 == *(a2 + 64))
    {
      v31 = *(a2 + 68);
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  if (v41)
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    v32 = *(a2 + 76);
    if (v15 != *(a2 + 72))
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  if (v39)
  {
    v33 = *(a2 + 88);
    if (!v38)
    {
      return 0;
    }

    v34 = v37 == *(a2 + 80) && v39 == v38;
    return v34 || (sub_19393CA30() & 1) != 0;
  }

  v36 = *(a2 + 88);
  return !v38;
}

void IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.hash(into:)()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_67_10();
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  OUTLINED_FUNCTION_116_8(v0);
  v25 = v4;
  v26 = v3;
  v6 = *(v5 + 32);
  v27 = *(v5 + 36);
  OUTLINED_FUNCTION_115_8(v5);
  v28 = v9;
  v29 = v8;
  v10 = *(v7 + 60);
  v11 = *(v7 + 68);
  v12 = *(v7 + 76);
  v13 = *(v7 + 11);
  if (v14 == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393CAE0();
      goto LABEL_6;
    }
  }

  else
  {
    v24 = *(v7 + 60);
    v15 = v7[14];
    v16 = *(v7 + 68);
    v17 = v7[16];
    v18 = *(v7 + 76);
    v19 = v7[18];
    v20 = *(v7 + 11);
    v21 = *(v7 + 10);
    v22 = *v7;
    sub_19393CAD0();
    v13 = v20;
    v12 = v18;
    v11 = v16;
    v10 = v24;
    sub_19393CAE0();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  sub_19393CAD0();
  if (!v25)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v26)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v27)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v28)
  {
    sub_19393CAE0();
  }

  if (v29)
  {
    sub_19393CAD0();
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v10)
    {
LABEL_16:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v11)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  sub_19393CAD0();
  if (!v11)
  {
LABEL_17:
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v12)
    {
      goto LABEL_18;
    }

LABEL_25:
    sub_19393CAD0();
    if (v13)
    {
      goto LABEL_19;
    }

LABEL_26:
    sub_19393CAD0();
    OUTLINED_FUNCTION_194();
    return;
  }

LABEL_24:
  sub_19393CAD0();
  if (v12)
  {
    goto LABEL_25;
  }

LABEL_18:
  sub_19393CAD0();
  sub_19393CAE0();
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_19:
  sub_19393CAD0();
  OUTLINED_FUNCTION_194();

  sub_19393C640();
}

uint64_t IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935CE7AC()
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.TopicalityAttributes.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.DocumentAttributes.bundleId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.DocumentAttributes.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
}

uint64_t static IntelligenceFlowSearchToolTelemetry.DocumentAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 20);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IntelligenceFlowSearchToolTelemetry.DocumentAttributes.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 4);
  v2 = *(v0 + 20);
  if (v0[1])
  {
    v3 = *v0;
    sub_19393CAD0();
    OUTLINED_FUNCTION_148_4();
    sub_19393C640();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  return sub_19393CAE0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.DocumentAttributes.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (!v4)
  {
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t sub_1935CEA60()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.DocumentAttributes.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.modelNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 152);
  *a1 = *(v1 + 136);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 168);
  *(a1 + 48) = v2;
}

__n128 IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.setter(__int128 *a1)
{
  v7 = a1[2];
  v3 = *(a1 + 6);
  v4 = *(v1 + 184);

  v5 = *a1;
  *(v1 + 152) = a1[1];
  *(v1 + 136) = v5;
  result = v7;
  *(v1 + 168) = v7;
  *(v1 + 184) = v3;
  return result;
}

double IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.init()@<D0>(uint64_t a1@<X8>)
{
  bzero(a1, 0x85uLL);
  *(a1 + 133) = 1;

  *(a1 + 184) = 0;
  result = 0.0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 192) = 2;
  return result;
}

void static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v7 = v6;
  v8 = v0;
  v9 = *(v0 + 8);
  v10 = *(v0 + 133);
  v11 = *(v0 + 136);
  v12 = *(v0 + 152);
  v13 = *(v0 + 168);
  v14 = *(v0 + 184);
  v15 = *(v0 + 192);
  v16 = *(v7 + 8);
  v17 = *(v7 + 133);
  v18 = *(v7 + 136);
  v19 = *(v7 + 152);
  v20 = *(v7 + 168);
  v21 = *(v7 + 184);
  v22 = *(v7 + 192);
  if (!v9)
  {
    if (v16)
    {
      goto LABEL_22;
    }

LABEL_10:
    if (v10)
    {
      if ((v17 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v33 = v20;
      v34 = v19;
      v35 = v18;
      v36 = v13;
      v37 = v12;
      v38 = v11;
      memcpy(__dst, v8 + 2, sizeof(__dst));
      v40 = v10;
      if (v17)
      {
        goto LABEL_22;
      }

      v0 = static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.== infix(_:_:)(__dst, v7 + 16);
      v12 = v37;
      v11 = v38;
      v18 = v35;
      v13 = v36;
      v20 = v33;
      v19 = v34;
      if ((v0 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v14)
    {
      *__dst = v11;
      *&__dst[16] = v12;
      *&__dst[32] = v13;
      *&__dst[48] = v14;
      if (v21)
      {
        v41 = v18;
        v42 = v19;
        v43 = v20;
        v44 = v21;

        swift_bridgeObjectRetain_n();
        static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.== infix(_:_:)(__dst, &v41);
        v45[0] = v41;
        v45[1] = v42;
        v45[2] = v43;
        v46 = v44;
        v24 = sub_1935D2164(v45);
        OUTLINED_FUNCTION_121_6(v24, v25, v26, v27, v28, v29, v30, v31, v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38.n128_i64[0], v38.n128_i64[1], *__dst, *&__dst[16], v32, *&__dst[32]);
        sub_1935D2164(v47);

        goto LABEL_22;
      }

      OUTLINED_FUNCTION_121_6(v0, v9, v1, v16, v2, v3, v4, v5, v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38.n128_i64[0], v38.n128_i64[1], *__dst, *&__dst[16], v11, *&__dst[32]);
      swift_bridgeObjectRetain_n();
      sub_1935D2164(v47);
    }

    else
    {
      if (!v21)
      {

        goto LABEL_22;
      }
    }

    goto LABEL_22;
  }

  if (v16)
  {
    v0 = *v0;
    v1 = *v7;
    if (*v8 == *v7 && v9 == v16)
    {
      goto LABEL_10;
    }

    v37 = v12;
    v38 = v11;
    v35 = *(v7 + 136);
    v36 = v13;
    v33 = *(v7 + 168);
    v34 = *(v7 + 152);
    v0 = sub_19393CA30();
    v20 = v33;
    v19 = v34;
    v18 = v35;
    v13 = v36;
    v12 = v37;
    v11 = v38;
    if (v0)
    {
      goto LABEL_10;
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.hash(into:)()
{
  v1 = *(v0 + 133);
  v10 = v0[18];
  v11 = v0[17];
  v2 = v0[19];
  v3 = v0[20];
  v8 = v0[22];
  v9 = v0[21];
  v4 = v0[23];
  v5 = *(v0 + 192);
  if (v0[1])
  {
    v6 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_146_6();
    if (v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_104_0();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_103_0();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.hash(into:)();
LABEL_6:
  if (v4)
  {
    *&v12 = v11;
    *(&v12 + 1) = v10;
    *&v13 = v2;
    *(&v13 + 1) = v3;
    *&v14 = v9;
    *(&v14 + 1) = v8;
    OUTLINED_FUNCTION_103_0();
    v15[0] = v11;
    v15[1] = v10;
    v15[2] = v2;
    v15[3] = v3;
    v15[4] = v9;
    v15[5] = v8;
    v15[6] = v4;
    sub_1935B0BFC(v15, v16);
    IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.hash(into:)();
    v16[0] = v12;
    v16[1] = v13;
    v16[2] = v14;
    v17 = v4;
    sub_1935D2164(v16);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v5 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  return sub_19393CAD0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935CF134()
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.pqaModelInferenceTime.setter(uint64_t result)
{
  *(v1 + 96) = result;
  *(v1 + 100) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.answerSynthesisPostProcessingTime.setter(uint64_t result)
{
  *(v1 + 104) = result;
  *(v1 + 108) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.answerSynthesisPCCPromptGenerationTime.setter(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 116) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.init()@<X0>(uint64_t a1@<X8>)
{
  result = 1;
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
  *(a1 + 72) = 0;
  *(a1 + 76) = 1;
  *(a1 + 80) = 0;
  *(a1 + 84) = 1;
  *(a1 + 88) = 0;
  *(a1 + 92) = 1;
  *(a1 + 96) = 0;
  *(a1 + 100) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  *(a1 + 112) = 0;
  *(a1 + 116) = 1;
  return result;
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12);
  v23 = *(a2 + 68);
  v22 = *(a2 + 76);
  v21 = *(a2 + 84);
  v20 = *(a2 + 92);
  v19 = *(a2 + 100);
  v18 = *(a2 + 108);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
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
      return 0;
    }
  }

  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
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
      return 0;
    }
  }

  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 20);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      v5 = *(a2 + 28);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (*(a1 + 36))
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      v6 = *(a2 + 36);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  if (*(a1 + 44))
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 40) == *(a2 + 40))
    {
      v7 = *(a2 + 44);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (*(a1 + 52))
  {
    if (!*(a2 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) == *(a2 + 48))
    {
      v8 = *(a2 + 52);
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

  if (*(a1 + 60))
  {
    if (!*(a2 + 60))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) == *(a2 + 56))
    {
      v9 = *(a2 + 60);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (*(a1 + 68))
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    v10 = *(a2 + 68);
    if (*(a1 + 64) != *(a2 + 64))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (*(a1 + 76))
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    v11 = *(a2 + 76);
    if (*(a1 + 72) != *(a2 + 72))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (*(a1 + 84))
  {
    if (!*(a2 + 84))
    {
      return 0;
    }
  }

  else
  {
    v12 = *(a2 + 84);
    if (*(a1 + 80) != *(a2 + 80))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (*(a1 + 92))
  {
    if (!*(a2 + 92))
    {
      return 0;
    }
  }

  else
  {
    v13 = *(a2 + 92);
    if (*(a1 + 88) != *(a2 + 88))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (*(a1 + 100))
  {
    if (!*(a2 + 100))
    {
      return 0;
    }
  }

  else
  {
    v14 = *(a2 + 100);
    if (*(a1 + 96) != *(a2 + 96))
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (*(a1 + 108))
  {
    if (!*(a2 + 108))
    {
      return 0;
    }
  }

  else
  {
    v15 = *(a2 + 108);
    if (*(a1 + 104) != *(a2 + 104))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (*(a1 + 116))
  {
    if ((*(a2 + 116) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = *(a2 + 116);
    if (*(a1 + 112) != *(a2 + 112))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.hash(into:)()
{
  OUTLINED_FUNCTION_67_10();
  v1 = *(v0 + 8);
  v24 = *(v0 + 12);
  OUTLINED_FUNCTION_116_8(v0);
  v25 = v3;
  v26 = v2;
  v5 = *(v4 + 32);
  v27 = *(v4 + 36);
  OUTLINED_FUNCTION_115_8(v4);
  v28 = v8;
  v29 = v7;
  v30 = *(v6 + 60);
  v21 = v6[14];
  v22 = v6[16];
  v23 = v6[18];
  v31 = *(v6 + 68);
  v32 = *(v6 + 76);
  v33 = *(v6 + 84);
  v9 = *(v6 + 92);
  v10 = *(v6 + 100);
  v11 = *(v6 + 108);
  v12 = *(v6 + 116);
  if (v13 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v20 = v6[20];
    v14 = *(v6 + 92);
    v15 = *(v6 + 100);
    v16 = *(v6 + 108);
    v17 = *(v6 + 116);
    v18 = *v6;
    sub_19393CAD0();
    v12 = v17;
    v11 = v16;
    v10 = v15;
    v9 = v14;
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v24)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v25)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v26)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v27)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v28)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v29)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v30)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v31)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v32)
  {
    sub_19393CAE0();
  }

  if (v33)
  {
    sub_19393CAD0();
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v9)
    {
LABEL_24:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }
  }

  sub_19393CAD0();
  if (!v10)
  {
LABEL_25:
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v11)
    {
      goto LABEL_26;
    }

LABEL_31:
    sub_19393CAD0();
    if (!v12)
    {
      goto LABEL_27;
    }

    return sub_19393CAD0();
  }

LABEL_30:
  sub_19393CAD0();
  if (v11)
  {
    goto LABEL_31;
  }

LABEL_26:
  sub_19393CAD0();
  sub_19393CAE0();
  if (!v12)
  {
LABEL_27:
    sub_19393CAD0();
    return sub_19393CAE0();
  }

  return sub_19393CAD0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935CFC14()
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.answerSynthesisHydrationMetrics.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.init()(_DWORD *a1@<X8>)
{
  *a1 = 0;
  OUTLINED_FUNCTION_103_9(a1);
  *(v1 + 40) = 0;
  *(v1 + 44) = v2;
  *(v1 + 48) = MEMORY[0x1E69E7CC0];
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  v8 = *(a1 + 16);
  v9 = *(a1 + 20);
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = *(a1 + 32);
  v13 = *(a1 + 36);
  v14 = *(a1 + 40);
  v15 = *(a1 + 44);
  v16 = *(a1 + 48);
  v17 = *(a2 + 4);
  v18 = *(a2 + 8);
  v19 = *(a2 + 12);
  v20 = *(a2 + 16);
  v21 = *(a2 + 20);
  v22 = *(a2 + 24);
  v23 = *(a2 + 28);
  v24 = *(a2 + 32);
  v25 = *(a2 + 36);
  v26 = *(a2 + 40);
  v27 = *(a2 + 44);
  v28 = *(a2 + 48);
  if (v5)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v29 = v17;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v18)
    {
      v30 = v19;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v20)
    {
      v31 = v21;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v22)
    {
      v32 = v23;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  if (v13)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (v12 == v24)
    {
      v33 = v25;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  if (v15)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == v26)
    {
      v35 = v27;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  return sub_1935CA3A4(v16, v28, v24, v11);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67_10();
  v1 = *(v0 + 12);
  v2 = v0[4];
  v19 = v0[2];
  v20 = *(v0 + 20);
  v3 = *(v0 + 28);
  v4 = *(v0 + 36);
  v5 = *(v0 + 44);
  if (v6 == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393CAE0();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = *(v0 + 28);
    v8 = v0[6];
    v9 = *(v0 + 36);
    v10 = v0[8];
    v11 = *(v0 + 44);
    v12 = v0[10];
    v13 = *(v0 + 6);
    v14 = *v0;
    sub_19393CAD0();
    v5 = v11;
    v4 = v9;
    v3 = v7;
    sub_19393CAE0();
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v20)
  {
    sub_19393CAD0();
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v3)
    {
LABEL_8:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v4)
      {
        goto LABEL_9;
      }

LABEL_13:
      sub_19393CAD0();
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  sub_19393CAD0();
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_19393CAD0();
  sub_19393CAE0();
  if (!v5)
  {
LABEL_10:
    sub_19393CAD0();
    sub_19393CAE0();
    goto LABEL_15;
  }

LABEL_14:
  sub_19393CAD0();
LABEL_15:
  OUTLINED_FUNCTION_114();

  return sub_1935D1F70(v15, v16);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935D00EC()
{
  sub_19393CAB0();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.asHydrationPerContentTypeTime.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

void IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
}

BOOL static IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  v4 = *(a2 + 9);
  v5 = *(a2 + 12);
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

    OUTLINED_FUNCTION_178_0(a1, a2);
    OUTLINED_FUNCTION_39_5();
    v11 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter(v7, v8, v9, v10);
    if (v11 != IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter(v11, v12, v13, v14))
    {
      return 0;
    }
  }

  if ((v3 & 1) == 0)
  {
    if (v2 == v5)
    {
      v16 = v6;
    }

    else
    {
      v16 = 1;
    }

    return (v16 & 1) == 0;
  }

  return (v6 & 1) != 0;
}

uint64_t IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.hash(into:)()
{
  OUTLINED_FUNCTION_148_2();
  v1 = *(v0 + 3);
  v2 = *(v0 + 16);
  if (v3 == 1)
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
    v5 = *(v0 + 8);
    v6 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v11 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter(v7, v8, v9, v10);
    MEMORY[0x193B18030](v11);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.hashValue.getter()
{
  OUTLINED_FUNCTION_124_0();
  sub_19393CAB0();
  OUTLINED_FUNCTION_153_6();
  if (v1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_180();
    v6 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter(v2, v3, v4, v5);
    MEMORY[0x193B18030](v6);
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_169_4();
  }

  return sub_19393CB00();
}

uint64_t sub_1935D037C()
{
  OUTLINED_FUNCTION_124_0();
  sub_19393CAB0();
  OUTLINED_FUNCTION_153_6();
  if (v1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_180();
    v6 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter(v2, v3, v4, v5);
    MEMORY[0x193B18030](v6);
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_169_4();
  }

  return sub_19393CB00();
}

uint64_t sub_1935D0484(void (*a1)(_BYTE *, uint64_t))
{
  v3 = *v1;
  OUTLINED_FUNCTION_119();
  a1(v5, v3);
  return sub_19393CB00();
}

uint64_t sub_1935D04EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_19393CAB0();
  a4(v8, v6);
  return sub_19393CB00();
}

double _s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF18LLMQURequestFailedVAEycfC_0@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  OUTLINED_FUNCTION_112_11();
  result = 0.0;
  *(a1 + 16) = xmmword_1939526A0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

void sub_1935D05D0()
{
  OUTLINED_FUNCTION_195();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v1 + 9);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  if (*(v0 + 9))
  {
    if ((*(v1 + 9) & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_7:
    if (v4 == 1)
    {
      OUTLINED_FUNCTION_248();
      sub_19350CB08(v23, v24);
      if (v9 == 1)
      {
        OUTLINED_FUNCTION_20_19(v8, 1);
        OUTLINED_FUNCTION_248();
        sub_193456418(v25, v26);
        goto LABEL_28;
      }

      v33 = OUTLINED_FUNCTION_11_23();
      sub_19350CB08(v33, v34);
      goto LABEL_13;
    }

    if (v9 == 1)
    {
      v27 = OUTLINED_FUNCTION_8_35();
      sub_19350CB08(v27, v28);
      OUTLINED_FUNCTION_53_16();
      sub_19350CB08(v29, v30);
      v31 = OUTLINED_FUNCTION_8_35();
      sub_19350CB08(v31, v32);

LABEL_13:
      v35 = OUTLINED_FUNCTION_8_35();
      sub_193456418(v35, v36);
      v37 = OUTLINED_FUNCTION_11_23();
LABEL_27:
      sub_193456418(v37, v38);
      goto LABEL_28;
    }

    if (v4)
    {
      if (v9)
      {
        v39 = v3 == v8 && v4 == v9;
        if (!v39)
        {
          OUTLINED_FUNCTION_159_7();
          v40 = sub_19393CA30();
          v41 = OUTLINED_FUNCTION_8_35();
          sub_19350CB08(v41, v42);
          v43 = OUTLINED_FUNCTION_11_23();
          sub_19350CB08(v43, v44);
          v45 = OUTLINED_FUNCTION_8_35();
          sub_19350CB08(v45, v46);
          v47 = OUTLINED_FUNCTION_11_23();
          sub_193456418(v47, v48);
          if ((v40 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_31;
        }

        OUTLINED_FUNCTION_248();
        sub_19350CB08(v63, v64);
        OUTLINED_FUNCTION_24_1();
        OUTLINED_FUNCTION_53_16();
        sub_19350CB08(v65, v66);
        v67 = OUTLINED_FUNCTION_8_35();
        sub_19350CB08(v67, v68);
        OUTLINED_FUNCTION_24_1();
LABEL_30:
        OUTLINED_FUNCTION_53_16();
        sub_193456418(v69, v70);
LABEL_31:
        if (v6)
        {
          if (v11)
          {
LABEL_36:

            v71 = OUTLINED_FUNCTION_8_35();
            sub_193456418(v71, v72);
            goto LABEL_28;
          }
        }

        else if ((v11 & 1) == 0 && v5 == v10)
        {
          goto LABEL_36;
        }

LABEL_26:

        v37 = OUTLINED_FUNCTION_8_35();
        goto LABEL_27;
      }

      v55 = OUTLINED_FUNCTION_8_35();
      sub_19350CB08(v55, v56);
    }

    else
    {
      OUTLINED_FUNCTION_248();
      sub_19350CB08(v49, v50);
      if (!v9)
      {
        v51 = OUTLINED_FUNCTION_151_5();
        OUTLINED_FUNCTION_20_19(v51, v52);
        OUTLINED_FUNCTION_248();
        sub_19350CB08(v53, v54);
        OUTLINED_FUNCTION_151_5();
        goto LABEL_30;
      }
    }

    v57 = OUTLINED_FUNCTION_11_23();
    sub_19350CB08(v57, v58);
    OUTLINED_FUNCTION_248();
    sub_19350CB08(v59, v60);
    v61 = OUTLINED_FUNCTION_11_23();
    sub_193456418(v61, v62);
    goto LABEL_26;
  }

  if ((*(v1 + 9) & 1) == 0)
  {
    v12 = v2;
    v13 = OUTLINED_FUNCTION_178_0(v0, v1);
    v73 = v9;
    v15 = v4;
    v16 = v8;
    v17 = v3;
    v18 = v6;
    v19 = v5;
    v20 = v11;
    v21 = v10;
    v22 = v14(v13);
    v39 = v22 == v12();
    v10 = v21;
    v11 = v20;
    v5 = v19;
    v6 = v18;
    v3 = v17;
    v8 = v16;
    v4 = v15;
    v9 = v73;
    if (v39)
    {
      goto LABEL_7;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_194();
}

void sub_1935D0878()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_148_2();
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 40);
  if (v6 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v7 = v1;
    v8 = *(v0 + 8);
    v9 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v10 = v7();
    MEMORY[0x193B18030](v10);
  }

  if (v2 == 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_103_0();
  if (!v2)
  {
    OUTLINED_FUNCTION_104_0();
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_9:
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v4);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_146_6();
  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  OUTLINED_FUNCTION_104_0();
LABEL_10:
  OUTLINED_FUNCTION_114();
}

void IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult.requestType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  OUTLINED_FUNCTION_5_2(a1);
}

void IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 4);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  if ((*(a1 + 4) & 1) == 0)
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }

LABEL_7:
    if (*(a1 + 17))
    {
      if ((*(a2 + 17) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 17))
      {
        return 0;
      }

      OUTLINED_FUNCTION_39_5();
      v12 = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter(v8, v9, v10, v11);
      if (v12 != IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter(v12, v13, v14, v15))
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 4))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  if (*(v0 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_179_0();
      v8 = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter(v4, v5, v6, v7);
      return MEMORY[0x193B18030](v8);
    }
  }

  else
  {
    v10 = *v0;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult.hashValue.getter()
{
  OUTLINED_FUNCTION_120_5();
  sub_19393CAB0();
  OUTLINED_FUNCTION_153_6();
  if (v1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_169_4();
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_180();
    v6 = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter(v2, v3, v4, v5);
    MEMORY[0x193B18030](v6);
  }

  return sub_19393CB00();
}

uint64_t sub_1935D0BB4()
{
  OUTLINED_FUNCTION_120_5();
  sub_19393CAB0();
  OUTLINED_FUNCTION_153_6();
  if (v1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_169_4();
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_180();
    v6 = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter(v2, v3, v4, v5);
    MEMORY[0x193B18030](v6);
  }

  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionStarted.hash(into:)()
{
  OUTLINED_FUNCTION_148_2();
  if (v1 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v3 = *(v0 + 8);
  v4 = *v0;
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v6 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource.rawValue.getter(v5);
  return MEMORY[0x193B18030](v6);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionStarted.hashValue.getter()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_180();
    v2 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource.rawValue.getter(v1);
    MEMORY[0x193B18030](v2);
  }

  return sub_19393CB00();
}

uint64_t sub_1935D0D60()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_180();
    v2 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource.rawValue.getter(v1);
    MEMORY[0x193B18030](v2);
  }

  return sub_19393CB00();
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded.hallucinationDetectedRules.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 1);
  if (*(v1 + 4) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v4 = *v1;
    sub_19393CAD0();
    sub_19393CAE0();
  }

  return sub_1935D1A9C(a1, v3);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 1);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2 != 1)
  {
    sub_19393CAE0();
  }

  sub_1935D1A9C(v5, v3);
  return sub_19393CB00();
}

uint64_t sub_1935D0F58()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 1);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2 != 1)
  {
    sub_19393CAE0();
  }

  sub_1935D1A9C(v5, v3);
  return sub_19393CB00();
}

void IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.reason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.reason.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF18LLMQURequestFailedV06searchF12FailureErrorAC0efkL0VSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 40);
  return sub_19350CB08(v2, v3);
}

__n128 _s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF18LLMQURequestFailedV06searchF12FailureErrorAC0efkL0VSgvs_0(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_193456418(*(v1 + 16), *(v1 + 24));
  result = v7;
  *(v1 + 16) = v7;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.hash(into:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v0 + 40);
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v5 = *v0;
    OUTLINED_FUNCTION_103_0();
    v6 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason.rawValue.getter();
    MEMORY[0x193B18030](v6);
  }

  if (v1 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  if (v1)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_146_6();
    if (v4)
    {
      return OUTLINED_FUNCTION_104_0();
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      return OUTLINED_FUNCTION_104_0();
    }
  }

  OUTLINED_FUNCTION_103_0();
  return MEMORY[0x193B18060](v3);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.hashValue.getter()
{
  OUTLINED_FUNCTION_76_11();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935D11B0()
{
  OUTLINED_FUNCTION_76_11();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.hash(into:)();
  return sub_19393CB00();
}

void _s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF13EventMetadataV2eeoiySbAE_AEtFZ_0()
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
  v12 = OUTLINED_FUNCTION_147_4();
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_74();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_94_7();
  v21 = *(v20 + 56);
  sub_193448804(v4, v0, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v2, v0 + v21, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v0);
  if (!v26)
  {
    v22 = OUTLINED_FUNCTION_115_0();
    sub_193448804(v22, v23, v24, v25);
    OUTLINED_FUNCTION_31(v0 + v21);
    if (!v26)
    {
      sub_1935D1BE4(v0 + v21, v11, type metadata accessor for AIML.UUID);
      OUTLINED_FUNCTION_0_46();
      sub_1935C8448(v27, v28);
      OUTLINED_FUNCTION_85_9();
      sub_19393C550();
      OUTLINED_FUNCTION_6_34();
      sub_1935D1B90();
      OUTLINED_FUNCTION_24_1();
      sub_1935D1B90();
      sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_10;
    }

    sub_1935D1B90();
LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v0 + v21);
  if (!v26)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

void _s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF13EventMetadataV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_237();
  v3 = type metadata accessor for AIML.UUID();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_94_7();
  v7 = OUTLINED_FUNCTION_25_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_74();
  sub_193448804(v0, v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v2, 1, v3);
  if (v13)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_1935D1BE4(v2, v1, type metadata accessor for AIML.UUID);
    sub_19393CAD0();
    OUTLINED_FUNCTION_0_46();
    sub_1935C8448(v14, v15);
    sub_19393C540();
    OUTLINED_FUNCTION_1_43();
    sub_1935D1B90();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t sub_1935D1610(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 36);
    do
    {
      if (*v5 == 1)
      {
        result = sub_19393CAD0();
      }

      else
      {
        v6 = *(v5 - 1);
        sub_19393CAD0();
        result = sub_19393CAE0();
      }

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1935D1688(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for AIML.UUID();
  v3 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  result = MEMORY[0x193B18030](v14);
  if (v14)
  {
    v16 = &v13[*(v9 + 20)];
    v17 = &v13[*(v9 + 24)];
    v18 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v26 = *(v10 + 72);
    do
    {
      sub_1935D50D0(v18, v13);
      sub_193448804(v13, v8, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v8, 1, v27) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_1935D1BE4(v8, v25, type metadata accessor for AIML.UUID);
        sub_19393CAD0();
        sub_1935C8448(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
        sub_19393C540();
        sub_1935D1B90();
      }

      if (*(v16 + 1))
      {
        v19 = *v16;
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      if (v17[9] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v20 = v17[8];
        v21 = *v17;
        v22 = sub_19393CAD0();
        v28 = v21;
        v29 = v20 & 1;
        v23 = IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType.rawValue.getter(v22);
        MEMORY[0x193B18030](v23);
      }

      result = sub_1935D1B90();
      v18 += v26;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1935D19B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 49);
    do
    {
      v6 = *(v5 - 9);
      v7 = *(v5 - 1);
      v8 = *v5;
      if (*(v5 - 13) == 1)
      {
        sub_19393CAD0();
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v9 = *(v5 - 17);
        sub_19393CAD0();
        sub_19393CAE0();
        if (!v8)
        {
LABEL_7:
          v10 = sub_19393CAD0();
          v14 = IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.rawValue.getter(v10, v11, v12, v13);
          result = MEMORY[0x193B18030](v14);
          goto LABEL_8;
        }
      }

      result = sub_19393CAD0();
LABEL_8:
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1935D1A9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 16;
      v8 = IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectedRule.rawValue.getter();
      result = MEMORY[0x193B18030](v8);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1935D1B90()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1935D1BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_1935D1C40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  v25 = v3;
  if (!v3)
  {
    return result;
  }

  v5 = 0;
  v24 = a2 + 32;
  do
  {
    memcpy(__dst, (v24 + 200 * v5), 0xC1uLL);
    if (__dst[1])
    {
      sub_19393CAD0();
      sub_1935B02B8(__dst, v26);
      sub_19393C640();
    }

    else
    {
      sub_19393CAD0();
      sub_1935B02B8(__dst, v26);
    }

    if ((__dst[16] & 0x10000000000) != 0)
    {
      sub_19393CAD0();
    }

    else
    {
      memcpy(v26, &__dst[2], 0x75uLL);
      sub_19393CAD0();
      IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.hash(into:)();
    }

    v6 = __dst[23];
    if (!__dst[23])
    {
      sub_19393CAD0();
      goto LABEL_33;
    }

    v8 = __dst[21];
    v7 = __dst[22];
    v10 = __dst[19];
    v9 = __dst[20];
    v12 = __dst[17];
    v11 = __dst[18];
    sub_19393CAD0();
    if ((v12 & 0x100000000) != 0)
    {
      sub_19393CAD0();
      if ((v11 & 0x100000000) != 0)
      {
LABEL_12:
        sub_19393CAD0();
        if ((v10 & 0x100000000) != 0)
        {
          goto LABEL_13;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_19393CAD0();
      sub_19393CAE0();
      if ((v11 & 0x100000000) != 0)
      {
        goto LABEL_12;
      }
    }

    sub_19393CAD0();
    sub_19393CAE0();
    if ((v10 & 0x100000000) != 0)
    {
LABEL_13:
      sub_19393CAD0();
      if ((v9 & 0x100000000) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }

LABEL_20:
    sub_19393CAD0();
    sub_19393CAE0();
    if ((v9 & 0x100000000) != 0)
    {
LABEL_14:
      sub_19393CAD0();
      if ((v8 & 0x100000000) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }

LABEL_21:
    sub_19393CAD0();
    sub_19393CAE0();
    if ((v8 & 0x100000000) != 0)
    {
LABEL_15:
      sub_19393CAD0();
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

LABEL_22:
    sub_19393CAD0();
    sub_19393CAE0();
    if ((v7 & 0x100000000) == 0)
    {
LABEL_23:
      sub_19393CAD0();
      sub_19393CAE0();
      goto LABEL_24;
    }

LABEL_16:
    sub_19393CAD0();
LABEL_24:
    v13 = *(v6 + 16);
    MEMORY[0x193B18030](v13);
    if (!v13)
    {
      goto LABEL_33;
    }

    v14 = (v6 + 48);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      if (*(v14 - 7) == 1)
      {
        sub_19393CAD0();
        if (!v16)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v17 = *(v14 - 8);
        v18 = *(v14 - 2);
        v19 = sub_19393CAD0();
        v26[0] = v18;
        LOBYTE(v26[1]) = v17 & 1;
        v23 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter(v19, v20, v21, v22);
        MEMORY[0x193B18030](v23);
        if (!v16)
        {
LABEL_28:
          sub_19393CAD0();
          sub_19393CAE0();
          goto LABEL_31;
        }
      }

      sub_19393CAD0();
LABEL_31:
      v14 += 24;
      --v13;
    }

    while (v13);

LABEL_33:
    if (LOBYTE(__dst[24]) != 2)
    {
      sub_19393CAD0();
    }

    sub_19393CAD0();
    result = sub_1935D50A0(__dst);
    ++v5;
  }

  while (v5 != v25);
  return result;
}

uint64_t sub_1935D1F70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      if (*(v5 - 7) == 1)
      {
        sub_19393CAD0();
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v8 = *(v5 - 8);
        v9 = *(v5 - 2);
        v10 = sub_19393CAD0();
        v14 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType.rawValue.getter(v10, v11, v12, v13);
        MEMORY[0x193B18030](v14);
        if (!v7)
        {
LABEL_7:
          sub_19393CAD0();
          result = sub_19393CAE0();
          goto LABEL_8;
        }
      }

      result = sub_19393CAD0();
LABEL_8:
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1935D2054(uint64_t a1, uint64_t a2)
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
      sub_1935AF804(__dst, v7);
      IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.hash(into:)();
      memcpy(v7, __src, sizeof(v7));
      result = sub_1935D2104(v7);
      v5 += 232;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1935D21C8()
{
  result = qword_1EAE3E5E8;
  if (!qword_1EAE3E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E5E8);
  }

  return result;
}

unint64_t sub_1935D2250()
{
  result = qword_1EAE3E600;
  if (!qword_1EAE3E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E600);
  }

  return result;
}

unint64_t sub_1935D22D8()
{
  result = qword_1EAE3E618;
  if (!qword_1EAE3E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E618);
  }

  return result;
}

unint64_t sub_1935D2360()
{
  result = qword_1EAE3E630;
  if (!qword_1EAE3E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E630);
  }

  return result;
}

unint64_t sub_1935D23E8()
{
  result = qword_1EAE3E648;
  if (!qword_1EAE3E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E648);
  }

  return result;
}

unint64_t sub_1935D2470()
{
  result = qword_1EAE3E660;
  if (!qword_1EAE3E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E660);
  }

  return result;
}

unint64_t sub_1935D24F8()
{
  result = qword_1EAE3E678;
  if (!qword_1EAE3E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E678);
  }

  return result;
}

unint64_t sub_1935D2580()
{
  result = qword_1EAE3E690;
  if (!qword_1EAE3E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E690);
  }

  return result;
}

unint64_t sub_1935D2608()
{
  result = qword_1EAE3E6A8;
  if (!qword_1EAE3E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E6A8);
  }

  return result;
}

unint64_t sub_1935D2690()
{
  result = qword_1EAE3E6C0;
  if (!qword_1EAE3E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E6C0);
  }

  return result;
}

unint64_t sub_1935D2718()
{
  result = qword_1EAE3E6D8;
  if (!qword_1EAE3E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E6D8);
  }

  return result;
}

unint64_t sub_1935D27A0()
{
  result = qword_1EAE3E6F0;
  if (!qword_1EAE3E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E6F0);
  }

  return result;
}

unint64_t sub_1935D2828()
{
  result = qword_1EAE3E708;
  if (!qword_1EAE3E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E708);
  }

  return result;
}

unint64_t sub_1935D28B0()
{
  result = qword_1EAE3E720;
  if (!qword_1EAE3E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E720);
  }

  return result;
}

unint64_t sub_1935D2938()
{
  result = qword_1EAE3E738;
  if (!qword_1EAE3E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E738);
  }

  return result;
}

unint64_t sub_1935D29C0()
{
  result = qword_1EAE3E750;
  if (!qword_1EAE3E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E750);
  }

  return result;
}

unint64_t sub_1935D2A48()
{
  result = qword_1EAE3E768;
  if (!qword_1EAE3E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E768);
  }

  return result;
}

unint64_t sub_1935D2AD0()
{
  result = qword_1EAE3E778;
  if (!qword_1EAE3E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E778);
  }

  return result;
}

unint64_t sub_1935D2B58()
{
  result = qword_1EAE3E790;
  if (!qword_1EAE3E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E790);
  }

  return result;
}

unint64_t sub_1935D2C58()
{
  result = qword_1EAE3E798;
  if (!qword_1EAE3E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E798);
  }

  return result;
}

unint64_t sub_1935D2CB0()
{
  result = qword_1EAE3E7A0;
  if (!qword_1EAE3E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7A0);
  }

  return result;
}

unint64_t sub_1935D2D08()
{
  result = qword_1EAE3E7A8;
  if (!qword_1EAE3E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7A8);
  }

  return result;
}

unint64_t sub_1935D2DA8()
{
  result = qword_1EAE3E7B0;
  if (!qword_1EAE3E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7B0);
  }

  return result;
}

unint64_t sub_1935D2E90()
{
  result = qword_1EAE3E7C0;
  if (!qword_1EAE3E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7C0);
  }

  return result;
}

unint64_t sub_1935D2EE8()
{
  result = qword_1EAE3E7C8;
  if (!qword_1EAE3E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7C8);
  }

  return result;
}

unint64_t sub_1935D2F88()
{
  result = qword_1EAE3E7D8;
  if (!qword_1EAE3E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7D8);
  }

  return result;
}

unint64_t sub_1935D3028()
{
  result = qword_1EAE3E7E8;
  if (!qword_1EAE3E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7E8);
  }

  return result;
}

unint64_t sub_1935D3080()
{
  result = qword_1EAE3E7F0;
  if (!qword_1EAE3E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E7F0);
  }

  return result;
}

unint64_t sub_1935D3120()
{
  result = qword_1EAE3E800;
  if (!qword_1EAE3E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E800);
  }

  return result;
}

unint64_t sub_1935D3178()
{
  result = qword_1EAE3E808;
  if (!qword_1EAE3E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E808);
  }

  return result;
}

unint64_t sub_1935D31D0()
{
  result = qword_1EAE3E810;
  if (!qword_1EAE3E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E810);
  }

  return result;
}

unint64_t sub_1935D3228()
{
  result = qword_1EAE3E818;
  if (!qword_1EAE3E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E818);
  }

  return result;
}

unint64_t sub_1935D3280()
{
  result = qword_1EAE3E820;
  if (!qword_1EAE3E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E820);
  }

  return result;
}

unint64_t sub_1935D32D8()
{
  result = qword_1EAE3E828;
  if (!qword_1EAE3E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E828);
  }

  return result;
}

unint64_t sub_1935D3330()
{
  result = qword_1EAE3E830;
  if (!qword_1EAE3E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E830);
  }

  return result;
}

unint64_t sub_1935D3388()
{
  result = qword_1EAE3E838;
  if (!qword_1EAE3E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E838);
  }

  return result;
}

unint64_t sub_1935D33E0()
{
  result = qword_1EAE3E840;
  if (!qword_1EAE3E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E840);
  }

  return result;
}

unint64_t sub_1935D3438()
{
  result = qword_1EAE3E848;
  if (!qword_1EAE3E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E848);
  }

  return result;
}

unint64_t sub_1935D3490()
{
  result = qword_1EAE3E850;
  if (!qword_1EAE3E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E850);
  }

  return result;
}

unint64_t sub_1935D34E8()
{
  result = qword_1EAE3E858;
  if (!qword_1EAE3E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E858);
  }

  return result;
}

unint64_t sub_1935D3540()
{
  result = qword_1EAE3E860;
  if (!qword_1EAE3E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E860);
  }

  return result;
}

unint64_t sub_1935D3598()
{
  result = qword_1EAE3E868;
  if (!qword_1EAE3E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E868);
  }

  return result;
}

unint64_t sub_1935D35F0()
{
  result = qword_1EAE3E870;
  if (!qword_1EAE3E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E870);
  }

  return result;
}

unint64_t sub_1935D3648()
{
  result = qword_1EAE3E878;
  if (!qword_1EAE3E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E878);
  }

  return result;
}

unint64_t sub_1935D36A0()
{
  result = qword_1EAE3E880;
  if (!qword_1EAE3E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E880);
  }

  return result;
}

unint64_t sub_1935D36F8()
{
  result = qword_1EAE3E888;
  if (!qword_1EAE3E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E888);
  }

  return result;
}

unint64_t sub_1935D3750()
{
  result = qword_1EAE3E890;
  if (!qword_1EAE3E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E890);
  }

  return result;
}

void sub_1935D3868()
{
  sub_1935D3BC4(319, &qword_1ED5082C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_1935D3BC4(319, qword_1ED506A90, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1935D3BC4(319, &qword_1ED507A78, type metadata accessor for MonotonicTimestamp, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1935D3BC4(319, &qword_1ED506A28, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1ED5069F8);
            if (v5 <= 0x3F)
            {
              sub_19349D1FC(319, &qword_1ED506A10);
              if (v6 <= 0x3F)
              {
                sub_19349D1FC(319, qword_1ED506A30);
                if (v7 <= 0x3F)
                {
                  sub_19349D1FC(319, &qword_1ED505888);
                  if (v8 <= 0x3F)
                  {
                    sub_19349D1FC(319, qword_1ED505760);
                    if (v9 <= 0x3F)
                    {
                      sub_1935D3BC4(319, qword_1ED505848, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1, MEMORY[0x1E69E6720]);
                      if (v10 <= 0x3F)
                      {
                        sub_19349D1FC(319, &qword_1ED506A20);
                        if (v11 <= 0x3F)
                        {
                          sub_1935D3BC4(319, &qword_1ED506A00, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1, MEMORY[0x1E69E6720]);
                          if (v12 <= 0x3F)
                          {
                            sub_1935D3BC4(319, &qword_1ED506A08, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext, MEMORY[0x1E69E6720]);
                            if (v13 <= 0x3F)
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
      }
    }
  }
}

void sub_1935D3BC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

void sub_1935D3DE8()
{
  OUTLINED_FUNCTION_4_36();
  sub_1935D3BC4(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED505890);
    if (v3 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED505880);
      if (v4 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED506A18);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1935D3F1C()
{
  OUTLINED_FUNCTION_4_36();
  sub_1935D3BC4(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_memcpy10_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[10])
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

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      result[10] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      result[10] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_117_1(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 16)) - 65283);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 16)) - 65283);
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 16)) - 65283);
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_114_8(a1);
  if (v6 < 0)
  {
    v6 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v6);
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        result[2] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        result[2] = 0;
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
        *(result + 2) = 0;
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

void sub_1935D4250()
{
  sub_1935D3BC4(319, &qword_1EAE3E8A0, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1EAE3E8A8);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1EAE3E8B0);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_4_36();
        sub_1935D3BC4(319, v3, v4, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1935D4394()
{
  OUTLINED_FUNCTION_4_36();
  sub_1935D3BC4(319, v0, v1, MEMORY[0x1E69E6720]);
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

uint64_t __swift_get_extra_inhabitant_index_263Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172(v6);
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_12_0(*(a1 + *(a3 + 20) + 8));
  }

  v8 = OUTLINED_FUNCTION_21_1();

  return __swift_getEnumTagSinglePayload(v8, a2, v9);
}

uint64_t __swift_store_extra_inhabitant_index_264Tm()
{
  OUTLINED_FUNCTION_19_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  result = OUTLINED_FUNCTION_172(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_36();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }

  return result;
}

void sub_1935D4630()
{
  sub_19349D1FC(319, &qword_1ED508290);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED506E98);
    if (v1 <= 0x3F)
    {
      sub_1935D3BC4(319, &qword_1EAE3E8C0, type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1EAE3E8C8);
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy37_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1935D4750(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 37))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1935D4768(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
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

  *(result + 37) = v3;
  return result;
}

void sub_1935D4810(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  OUTLINED_FUNCTION_4_36();
  sub_1935D3BC4(319, v5, v6, MEMORY[0x1E69E6720]);
  if (v7 <= 0x3F)
  {
    sub_19349D1FC(319, a4);
    if (v8 <= 0x3F)
    {
      OUTLINED_FUNCTION_128_8();
      sub_19349D1FC(v9, v10);
      if (v11 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV20TopicalityAttributesVSg(uint64_t a1)
{
  v1 = *(a1 + 88);
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

uint64_t sub_1935D4950(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 232))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 24);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_1935D499C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    result = OUTLINED_FUNCTION_135(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1935D4A40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 88);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_1935D4A8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t sub_1935D4B50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 193))
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

uint64_t sub_1935D4B9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    result = OUTLINED_FUNCTION_135(result, 0);
    *(result + 192) = 0;
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1935D4C1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 117))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1935D4C34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 116) = 0;
    *(result + 112) = 0;
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

  *(result + 117) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary35IntelligenceFlowSearchToolTelemetryV29SearchToolLLMQURequestStartedVwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_114_8(a1);
  if (v6 < 0)
  {
    v6 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v6);
}

_BYTE *_s27IntelligencePlatformLibrary35IntelligenceFlowSearchToolTelemetryV29SearchToolLLMQURequestStartedVwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_1935D4E60(void *result, int a2, int a3)
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

      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }

    *(result + 8) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t sub_1935D4F2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 41))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1935D4F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void sub_1935D501C()
{
  OUTLINED_FUNCTION_4_36();
  sub_1935D3BC4(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1935D50D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_57_10(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 76) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_14(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_13(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

void OUTLINED_FUNCTION_103_9(uint64_t a1@<X8>)
{
  *(a1 + 4) = v1;
  *(a1 + 8) = 0;
  *(a1 + 12) = v1;
  *(a1 + 16) = 0;
  *(a1 + 20) = v1;
  *(a1 + 24) = 0;
  *(a1 + 28) = v1;
  *(a1 + 32) = 0;
  *(a1 + 36) = v1;
}

void OUTLINED_FUNCTION_115_8(uint64_t a1@<X8>)
{
  v3 = *(a1 + 40);
  v1 = *(a1 + 44);
  v4 = *(a1 + 48);
  v2 = *(a1 + 52);
}

void OUTLINED_FUNCTION_120_5()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
}

__n128 OUTLINED_FUNCTION_121_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __n128 a23, uint64_t a24)
{
  *(v24 - 144) = a21;
  *(v24 - 128) = a22;
  result = a23;
  *(v24 - 112) = a23;
  *(v24 - 96) = a24;
  return result;
}

uint64_t OUTLINED_FUNCTION_137_5(uint64_t *a1)
{
  v2 = *a1;

  return type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
}

uint64_t OUTLINED_FUNCTION_146_6()
{

  return sub_19393C640();
}

void OUTLINED_FUNCTION_150_5(__n128 a1)
{
  *(v1 + 152) = a1;
  *(v1 + 168) = a1;
  *(v1 + 184) = a1;
  *(v1 + 200) = a1;
}

double OUTLINED_FUNCTION_154_5()
{
  *(v0 + 29) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 37) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_166_4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_1935D1BE4(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_167_5(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_1935D1BE4(v4 + v5, v3, a3);
}

uint64_t OUTLINED_FUNCTION_168_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_193448804(v4, v5, a3, a4);
}

_BYTE *_s16IntelligenceFlowOwst_0(_BYTE *result, int a2, int a3)
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

_BYTE *_s9TelemetryOwst_0(_BYTE *result, int a2, int a3)
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

_BYTE *_s10DatastreamOwst_0(_BYTE *result, int a2, int a3)
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

_BYTE *_s10TranscriptOwst_1(_BYTE *result, int a2, int a3)
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

_BYTE *_s4SiriOwst_0(_BYTE *result, int a2, int a3)
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

_BYTE *_s18PostSiriEngagementOwst_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_1935D58E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v3, qword_1ED510670);
  v4 = __swift_project_value_buffer(v3, qword_1ED510670);
  OUTLINED_FUNCTION_18_0();
  result = __swift_getEnumTagSinglePayload(v0, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_10(v3);
    return (*(v6 + 32))(v4, v0, v3);
  }

  return result;
}

uint64_t sub_1935D5A80(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  v7 = *a4;
  OUTLINED_FUNCTION_9_10(v6);
  v9 = *(v8 + 104);

  return v9();
}

unint64_t sub_1935D5B7C()
{
  result = sub_193434358();
  qword_1ED510660 = &type metadata for Library.Databases.IntelligenceFlow.Telemetry.Indexes;
  *algn_1ED510668 = result;
  return result;
}

uint64_t sub_1935D5BB8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v6, a2);
  v7 = __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_18_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_10(v6);
    return (*(v9 + 32))(v7, v2, v6);
  }

  return result;
}

uint64_t sub_1935D5CD0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  __swift_project_value_buffer(v7, a3);
  OUTLINED_FUNCTION_9_10(v7);
  v9 = *(v8 + 16);

  return v9(a4);
}

uint64_t sub_1935D5DB0(uint64_t a1)
{
  v2 = sub_1935D60DC();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D5DEC(uint64_t a1)
{
  sub_1935D60DC();

  return MEMORY[0x1EEDF07A0](a1);
}

uint64_t sub_1935D5E38(uint64_t a1)
{
  v2 = sub_1935D60DC();

  return MEMORY[0x1EEDF07B0](a1, v2);
}

unint64_t sub_1935D5E84()
{
  v0 = sub_193490E70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = sub_193490E70((v1 > 1), v2 + 1, 1, v0);
  }

  result = sub_1935D60DC();
  *(v0 + 2) = v2 + 1;
  v4 = &v0[16 * v2];
  *(v4 + 4) = &type metadata for Library.Databases.IntelligenceFlow.Telemetry.Indexes.ITDatestampClientSessionIDClientRequestIDIndexView;
  *(v4 + 5) = result;
  qword_1ED510658 = v0;
  return result;
}

unint64_t sub_1935D5F18()
{
  result = qword_1ED502AC0;
  if (!qword_1ED502AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AC0);
  }

  return result;
}

unint64_t sub_1935D5F70()
{
  result = qword_1ED502BB0;
  if (!qword_1ED502BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502BB0);
  }

  return result;
}

_BYTE *sub_1935D6030(_BYTE *result, int a2, int a3)
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

unint64_t sub_1935D60DC()
{
  result = qword_1ED502BB8;
  if (!qword_1ED502BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502BB8);
  }

  return result;
}

uint64_t sub_1935D613C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v3, qword_1ED510790);
  v4 = __swift_project_value_buffer(v3, qword_1ED510790);
  OUTLINED_FUNCTION_18_0();
  result = __swift_getEnumTagSinglePayload(v0, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_10(v3);
    return (*(v6 + 32))(v4, v0, v3);
  }

  return result;
}

unint64_t sub_1935D6350()
{
  result = sub_193434304();
  qword_1ED510760 = &type metadata for Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes;
  *algn_1ED510768 = result;
  return result;
}

uint64_t sub_1935D63CC(uint64_t a1)
{
  v2 = sub_1935D6D34();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D6408()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D6D34();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D6448()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D6D34();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

unint64_t sub_1935D64C8()
{
  result = sub_193434304();
  qword_1ED510770 = &type metadata for Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes;
  *algn_1ED510778 = result;
  return result;
}

uint64_t sub_1935D65A4(uint64_t a1)
{
  v2 = sub_1935D6CE0();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D65E0()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D6CE0();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D6620()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D6CE0();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

unint64_t sub_1935D66A0()
{
  result = sub_193434304();
  qword_1ED510780 = &type metadata for Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes;
  *algn_1ED510788 = result;
  return result;
}

uint64_t sub_1935D66DC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v6, a2);
  v7 = __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_18_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_10(v6);
    return (*(v9 + 32))(v7, v2, v6);
  }

  return result;
}

uint64_t sub_1935D67F4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  __swift_project_value_buffer(v7, a3);
  OUTLINED_FUNCTION_9_10(v7);
  v9 = *(v8 + 16);

  return v9(a4);
}

uint64_t sub_1935D689C(uint64_t a1)
{
  v2 = sub_1935D6C8C();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D68D8()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D6C8C();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D6918()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D6C8C();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

unint64_t sub_1935D6958()
{
  v0 = sub_193490E70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    v0 = OUTLINED_FUNCTION_36_2(v1);
  }

  v4 = sub_1935D6D34();
  *(v0 + 2) = v3;
  v5 = &v0[16 * v2];
  *(v5 + 4) = &type metadata for Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes.ITDDatestampClientSessionIDClientRequestIDIndexView;
  *(v5 + 5) = v4;
  v6 = *(v0 + 3);
  v7 = v2 + 2;
  if ((v2 + 2) > (v6 >> 1))
  {
    v0 = sub_193490E70((v6 > 1), v2 + 2, 1, v0);
  }

  v8 = sub_1935D6CE0();
  *(v0 + 2) = v7;
  v9 = &v0[16 * v3];
  *(v9 + 4) = &type metadata for Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes.ITDDatestampEventIDIndexView;
  *(v9 + 5) = v8;
  v10 = *(v0 + 3);
  if ((v2 + 3) > (v10 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v10);
  }

  result = sub_1935D6C8C();
  *(v0 + 2) = v2 + 3;
  v12 = &v0[16 * v7];
  *(v12 + 4) = &type metadata for Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes.ITDDatestampSessionIDIndexView;
  *(v12 + 5) = result;
  qword_1ED510758 = v0;
  return result;
}

unint64_t sub_1935D6A54()
{
  result = qword_1ED502AC8;
  if (!qword_1ED502AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AC8);
  }

  return result;
}

unint64_t sub_1935D6AAC()
{
  result = qword_1ED502A98;
  if (!qword_1ED502A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A98);
  }

  return result;
}

unint64_t sub_1935D6B04()
{
  result = qword_1ED502A90;
  if (!qword_1ED502A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A90);
  }

  return result;
}

unint64_t sub_1935D6B5C()
{
  result = qword_1ED502BC8;
  if (!qword_1ED502BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502BC8);
  }

  return result;
}

_BYTE *_s7IndexesO28ITDDatestampEventIDIndexViewOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1935D6C8C()
{
  result = qword_1ED502B80;
  if (!qword_1ED502B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B80);
  }

  return result;
}

unint64_t sub_1935D6CE0()
{
  result = qword_1ED502B88;
  if (!qword_1ED502B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B88);
  }

  return result;
}

unint64_t sub_1935D6D34()
{
  result = qword_1ED502BD0;
  if (!qword_1ED502BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502BD0);
  }

  return result;
}

uint64_t sub_1935D6DBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v3, qword_1ED510910);
  v4 = __swift_project_value_buffer(v3, qword_1ED510910);
  OUTLINED_FUNCTION_18_0();
  result = __swift_getEnumTagSinglePayload(v0, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_10(v3);
    return (*(v6 + 32))(v4, v0, v3);
  }

  return result;
}

unint64_t sub_1935D6FE8()
{
  result = sub_193434AE0();
  qword_1ED5108E0 = &type metadata for Library.Databases.Siri.PostSiriEngagement.Indexes;
  *algn_1ED5108E8 = result;
  return result;
}

uint64_t sub_1935D70AC(uint64_t a1)
{
  v2 = sub_1935D7BB8();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D70E8()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D7BB8();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D7128()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D7BB8();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

unint64_t sub_1935D71C0()
{
  result = sub_193434AE0();
  qword_1ED5108F0 = &type metadata for Library.Databases.Siri.PostSiriEngagement.Indexes;
  *algn_1ED5108F8 = result;
  return result;
}

uint64_t sub_1935D7284(uint64_t a1)
{
  v2 = sub_1935D7B64();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D72C0()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D7B64();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D7300()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D7B64();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

unint64_t sub_1935D7398()
{
  result = sub_193434AE0();
  qword_1ED510900 = &type metadata for Library.Databases.Siri.PostSiriEngagement.Indexes;
  *algn_1ED510908 = result;
  return result;
}

uint64_t sub_1935D73F8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v6, a2);
  v7 = __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_18_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_10(v6);
    return (*(v9 + 32))(v7, v2, v6);
  }

  return result;
}

uint64_t sub_1935D7578(uint64_t a1)
{
  v2 = sub_1935D7B10();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D75B4()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D7B10();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D75F4()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935D7B10();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

unint64_t sub_1935D7634()
{
  v0 = sub_193490E70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    v0 = OUTLINED_FUNCTION_36_2(v1);
  }

  v4 = sub_1935D7BB8();
  *(v0 + 2) = v3;
  v5 = &v0[16 * v2];
  *(v5 + 4) = &type metadata for Library.Databases.Siri.PostSiriEngagement.Indexes.SPDatestampClientSessionIdIndexView;
  *(v5 + 5) = v4;
  v6 = *(v0 + 3);
  v7 = v2 + 2;
  if ((v2 + 2) > (v6 >> 1))
  {
    v0 = sub_193490E70((v6 > 1), v2 + 2, 1, v0);
  }

  v8 = sub_1935D7B64();
  *(v0 + 2) = v7;
  v9 = &v0[16 * v3];
  *(v9 + 4) = &type metadata for Library.Databases.Siri.PostSiriEngagement.Indexes.SPDatestampLastRequestIdIndexView;
  *(v9 + 5) = v8;
  v10 = *(v0 + 3);
  if ((v2 + 3) > (v10 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v10);
  }

  result = sub_1935D7B10();
  *(v0 + 2) = v2 + 3;
  v12 = &v0[16 * v7];
  *(v12 + 4) = &type metadata for Library.Databases.Siri.PostSiriEngagement.Indexes.SPDatestampTaskIdIndexView;
  *(v12 + 5) = result;
  qword_1ED5108D8 = v0;
  return result;
}

uint64_t static Library.Databases.Siri.PostSiriEngagement.Indexes.views.getter()
{
  if (qword_1ED5108D0 != -1)
  {
    OUTLINED_FUNCTION_4_39();
  }
}

unint64_t sub_1935D7790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = a1 == 0xD000000000000023 && 0x800000019396E390 == a2;
  if (v7 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v8 = OUTLINED_FUNCTION_26_3();
    result = sub_1935D7C0C(v8);
  }

  else
  {
    v10 = a1 == 0xD000000000000021 && 0x800000019396E3C0 == a2;
    if (v10 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v11 = OUTLINED_FUNCTION_26_3();
      result = sub_1935D7C44(v11);
    }

    else
    {
      v12 = a1 == 0xD00000000000001ALL && 0x800000019396E3F0 == a2;
      if (!v12 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
      {
        return a3();
      }

      v13 = OUTLINED_FUNCTION_26_3();
      result = sub_1935D7C7C(v13);
    }
  }

  if (!v3)
  {
  }

  return result;
}

unint64_t sub_1935D789C()
{
  result = qword_1ED502AB0;
  if (!qword_1ED502AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502AB0);
  }

  return result;
}

unint64_t sub_1935D78F4()
{
  result = qword_1ED502A50;
  if (!qword_1ED502A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A50);
  }

  return result;
}

unint64_t sub_1935D794C()
{
  result = qword_1ED502A58;
  if (!qword_1ED502A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A58);
  }

  return result;
}

unint64_t sub_1935D79A4()
{
  result = qword_1ED502B40;
  if (!qword_1ED502B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B40);
  }

  return result;
}

_BYTE *sub_1935D7A68(_BYTE *result, int a2, int a3)
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

unint64_t sub_1935D7B10()
{
  result = qword_1ED502B58;
  if (!qword_1ED502B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B58);
  }

  return result;
}

unint64_t sub_1935D7B64()
{
  result = qword_1ED502B50;
  if (!qword_1ED502B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B50);
  }

  return result;
}

unint64_t sub_1935D7BB8()
{
  result = qword_1ED502B48;
  if (!qword_1ED502B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B48);
  }

  return result;
}

uint64_t sub_1935D7CF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510B90);
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

uint64_t sub_1935D7E68(uint64_t a1, void (*a2)(void), uint64_t a3, unsigned int *a4)
{
  a2(0);
  OUTLINED_FUNCTION_104_2();
  __swift_allocate_value_buffer(v7, v8);
  __swift_project_value_buffer(v4, a3);
  v9 = *a4;
  OUTLINED_FUNCTION_9_10(v4);
  v11 = *(v10 + 104);

  return v11();
}

uint64_t sub_1935D7F30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510BD8);
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

unint64_t sub_1935D8020()
{
  result = sub_193434A8C();
  qword_1ED510B10 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B18 = result;
  return result;
}

uint64_t sub_1935D8074()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510BF0);
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

uint64_t sub_1935D8244()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E20F0();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D82C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510C08);
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

unint64_t sub_1935D83B0()
{
  result = sub_193434A8C();
  qword_1ED510B20 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B28 = result;
  return result;
}

uint64_t sub_1935D8404()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510C20);
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

uint64_t static Library.Databases.IntelligencePlatform.Entity.FlightReservations.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_165_5(v0 | 8, v1 | 0x8000000000000000, v3, v4, v5, v2 | 0x8000000000000000);
  sub_19393BFC0();
  OUTLINED_FUNCTION_29_8();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1935D863C()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E209C();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D86B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510C38);
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

unint64_t sub_1935D87A0()
{
  result = sub_193434A8C();
  qword_1ED510B30 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B38 = result;
  return result;
}

uint64_t sub_1935D87F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510C50);
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

uint64_t sub_1935D89B8()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E2048();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D8A2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510C68);
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

unint64_t sub_1935D8B1C()
{
  result = sub_193434A8C();
  qword_1ED510B40 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B48 = result;
  return result;
}

uint64_t sub_1935D8B70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510C80);
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

uint64_t sub_1935D8D48()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E1FF4();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D8DBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510C98);
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

unint64_t sub_1935D8EAC()
{
  result = sub_193434A8C();
  qword_1ED510B50 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B58 = result;
  return result;
}

uint64_t sub_1935D8F00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510CB0);
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

uint64_t sub_1935D9028()
{
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_165_5(v1, v2, v3, v4, v5, v0 | 0x8000000000000000);
  sub_19393BFC0();
  OUTLINED_FUNCTION_29_8();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1935D9124()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E1FA0();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D9190()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510CC8);
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

unint64_t sub_1935D9280()
{
  result = sub_193434A8C();
  qword_1ED510B60 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B68 = result;
  return result;
}

uint64_t sub_1935D92D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510CE0);
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

uint64_t sub_1935D9470()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E1F4C();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D94EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510CF8);
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

unint64_t sub_1935D95DC()
{
  result = sub_193434A8C();
  qword_1ED510B70 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B78 = result;
  return result;
}

uint64_t sub_1935D9630()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510D10);
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

uint64_t sub_1935D977C(uint64_t a1)
{
  v2 = sub_1935E1EF8();

  return MEMORY[0x1EEDF0798](a1, v2);
}

uint64_t sub_1935D97B8()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E1EF8();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D97F8()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E1EF8();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07B0](v0, v1);
}

uint64_t sub_1935D9840()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510D28);
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

unint64_t sub_1935D9930()
{
  result = sub_193434A8C();
  qword_1ED510B80 = &type metadata for Library.Databases.IntelligencePlatform.Entity;
  *algn_1ED510B88 = result;
  return result;
}

uint64_t sub_1935D9984()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510D40);
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

uint64_t sub_1935D9A74@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_98_1(a1);
  if (!v5)
  {
    swift_once();
  }

  a2(0);
  OUTLINED_FUNCTION_104_2();
  __swift_project_value_buffer(v6, v7);
  OUTLINED_FUNCTION_9_10(a2);
  v9 = *(v8 + 16);

  return v9(a3);
}

uint64_t sub_1935D9BB4()
{
  OUTLINED_FUNCTION_62_2();
  sub_1935E1EA4();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_1935D9C18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
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
  OUTLINED_FUNCTION_9_10(v2);
  return (*(v8 + 16))(a2, v7, v2);
}

unint64_t sub_1935D9CB0()
{
  v0 = sub_193490E70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v20, v21, v22, v23);
  }

  v3 = sub_1935E20F0();
  *(v0 + 2) = v2 + 1;
  OUTLINED_FUNCTION_89_4(v3, &type metadata for Library.Databases.IntelligencePlatform.Entity.Event);
  if ((v2 + 2) > (v4 >> 1))
  {
    OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v24, v25, v26, v27);
  }

  v5 = sub_1935E209C();
  *(v0 + 2) = v2 + 2;
  OUTLINED_FUNCTION_89_4(v5, &type metadata for Library.Databases.IntelligencePlatform.Entity.FlightReservations);
  if ((v2 + 3) > (v6 >> 1))
  {
    OUTLINED_FUNCTION_39(v6);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v28, v29, v30, v31);
  }

  v7 = sub_1935E2048();
  *(v0 + 2) = v2 + 3;
  OUTLINED_FUNCTION_89_4(v7, &type metadata for Library.Databases.IntelligencePlatform.Entity.Location);
  if ((v2 + 4) > (v8 >> 1))
  {
    OUTLINED_FUNCTION_39(v8);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v32, v33, v34, v35);
  }

  v9 = sub_1935E1FF4();
  *(v0 + 2) = v2 + 4;
  OUTLINED_FUNCTION_89_4(v9, &type metadata for Library.Databases.IntelligencePlatform.Entity.Person);
  if ((v2 + 5) > (v10 >> 1))
  {
    OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v36, v37, v38, v39);
  }

  v11 = sub_1935E1FA0();
  *(v0 + 2) = v2 + 5;
  OUTLINED_FUNCTION_89_4(v11, &type metadata for Library.Databases.IntelligencePlatform.Entity.Software);
  if ((v2 + 6) > (v12 >> 1))
  {
    OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v40, v41, v42, v43);
  }

  v13 = sub_1935E1F4C();
  *(v0 + 2) = v2 + 6;
  OUTLINED_FUNCTION_89_4(v13, &type metadata for Library.Databases.IntelligencePlatform.Entity.holidayEvent);
  v15 = v2 + 7;
  if ((v2 + 7) > (v14 >> 1))
  {
    OUTLINED_FUNCTION_39(v14);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v44, v45, v46, v47);
  }

  v16 = sub_1935E1EF8();
  *(v0 + 2) = v15;
  OUTLINED_FUNCTION_89_4(v16, &type metadata for Library.Databases.IntelligencePlatform.Entity.initializeGlobalKnowledgeAssets);
  if ((v2 + 8) > (v17 >> 1))
  {
    OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_60_14();
    v0 = sub_193490E70(v48, v49, v50, v51);
  }

  result = sub_1935E1EA4();
  *(v0 + 2) = v2 + 8;
  v19 = &v0[16 * v15];
  *(v19 + 4) = &type metadata for Library.Databases.IntelligencePlatform.Entity.sportsTeams;
  *(v19 + 5) = result;
  qword_1ED510AD0 = v0;
  return result;
}

uint64_t static Library.Databases.IntelligencePlatform.Entity.views.getter()
{
  if (qword_1ED510AC8 != -1)
  {
    OUTLINED_FUNCTION_83_16();
  }
}

unint64_t sub_1935D9F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = a1 == 0x746E657645 && a2 == 0xE500000000000000;
  if (v6 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v8 = OUTLINED_FUNCTION_26_3();
    result = sub_1935E2144(v8);
    goto LABEL_7;
  }

  v10 = a1 == 0xD000000000000012 && 0x800000019396E6D0 == a2;
  if (v10 || (OUTLINED_FUNCTION_90_1(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
  {
    v11 = OUTLINED_FUNCTION_26_3();
    result = sub_1935E2170(v11);
    goto LABEL_7;
  }

  v12 = a1 == OUTLINED_FUNCTION_133_8() && a2 == 0xE800000000000000;
  if (v12 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    goto LABEL_21;
  }

  v14 = a1 == OUTLINED_FUNCTION_138_5() && a2 == 0xE600000000000000;
  if (v14 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v15 = OUTLINED_FUNCTION_26_3();
    result = sub_1935E21D4(v15);
  }

  else
  {
    v16 = a1 == 0x6572617774666F53 && a2 == 0xE800000000000000;
    if (v16 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
LABEL_21:
      v13 = OUTLINED_FUNCTION_26_3();
      result = sub_1935E21A8(v13);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_166_5();
    v18 = a1 == 0x45796164696C6F68 && a2 == v17;
    if (v18 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v19 = OUTLINED_FUNCTION_26_3();
      result = sub_1935E2200(v19);
    }

    else
    {
      v20 = a1 == 0xD00000000000001FLL && 0x800000019396E6F0 == a2;
      if (v20 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v21 = OUTLINED_FUNCTION_26_3();
        result = sub_1935E2234(v21);
      }

      else
      {
        v22 = a1 == 0x65547374726F7073 && a2 == 0xEB00000000736D61;
        if (!v22 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          return a3();
        }

        v23 = OUTLINED_FUNCTION_26_3();
        result = sub_1935E226C(v23);
      }
    }
  }

LABEL_7:
  if (!v3)
  {
  }

  return result;
}

void sub_1935DA180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_53_1();
  v349 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  v29 = OUTLINED_FUNCTION_47(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15_8();
  v331 = v32;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_372();
  v345 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  v36 = OUTLINED_FUNCTION_47(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15_8();
  v330 = v39;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_124_6();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  v42 = OUTLINED_FUNCTION_47(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15_8();
  v329 = v45;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v320 - v47;
  v344 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_15_8();
  v328 = v54;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v320 - v56;
  v58 = sub_19393BF10();
  __swift_allocate_value_buffer(v58, qword_1ED510D58);
  v347 = v58;
  v333 = __swift_project_value_buffer(v58, qword_1ED510D58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v60 = OUTLINED_FUNCTION_168_3(v59, &a17);
  OUTLINED_FUNCTION_30(v60);
  v339 = *(v61 + 72);
  v63 = *(v62 + 80);
  OUTLINED_FUNCTION_123_10(&a16);
  v65 = v64;
  v325 = v64;
  v66 = swift_allocObject();
  v332 = v66;
  *(v66 + 16) = xmmword_1939526C0;
  v340 = &v65[v66];
  v334 = *MEMORY[0x1E698F1A0];
  v67 = *(v50 + 104);
  v342 = v50 + 104;
  v67(v57);
  v68 = v67;
  v348 = v67;
  v69 = sub_19393BF40();
  v70 = OUTLINED_FUNCTION_39_4();
  v343 = v69;
  OUTLINED_FUNCTION_63_0(v70, v71, v72, v69);
  v346 = sub_19393BEF0();
  v73 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  v77 = OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_63_0(v77, v78, v79, v58);
  v341 = sub_19393BEB0();
  v80 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_99_13();
  v336 = *MEMORY[0x1E698F198];
  v84 = v336;
  v85 = v344;
  (v68)(v57, v336, v344);
  v86 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v69);
  v89 = v20;
  OUTLINED_FUNCTION_45();
  v90 = v346;
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v346);
  v94 = OUTLINED_FUNCTION_25_9();
  v95 = v347;
  __swift_storeEnumTagSinglePayload(v94, v96, v97, v347);
  v98 = OUTLINED_FUNCTION_20_1();
  v99 = v341;
  __swift_storeEnumTagSinglePayload(v98, v100, v101, v341);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_105();
  v102 = v339;
  v103 = v340;
  OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_129_8();
  OUTLINED_FUNCTION_86_12(&v103[2 * v102]);
  v104 = v102;
  v105 = v84;
  v106 = v85;
  v107 = v85;
  v108 = v348;
  (v348)(v57, v105, v107);
  v109 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v343);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v90);
  v115 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v95);
  v118 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v99);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_117_11();
  OUTLINED_FUNCTION_86_12(3 * v102);
  v121 = v336;
  (v108)(v57, v336, v106);
  v122 = OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_170_3(v122, v123, v124);
  v125 = v89;
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v346);
  v129 = OUTLINED_FUNCTION_20_1();
  v130 = v347;
  __swift_storeEnumTagSinglePayload(v129, v131, v132, v347);
  v133 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v133, v134, v135, v341);
  OUTLINED_FUNCTION_135_5();
  OUTLINED_FUNCTION_14_3();
  v136 = v340;
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_52_7();
  v338 = v57;
  OUTLINED_FUNCTION_114_9();
  OUTLINED_FUNCTION_86_12(&v136[4 * v104]);
  v137 = v57;
  v138 = v348;
  (v348)(v137, v121, v344);
  v139 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v95);
  v142 = OUTLINED_FUNCTION_35_0();
  v143 = v346;
  __swift_storeEnumTagSinglePayload(v142, v144, v145, v346);
  v146 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v130);
  v149 = v349;
  v150 = OUTLINED_FUNCTION_38_4();
  v151 = v341;
  __swift_storeEnumTagSinglePayload(v150, v152, v153, v341);
  OUTLINED_FUNCTION_136_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_52_7();
  v335 = v125;
  OUTLINED_FUNCTION_114_9();
  v154 = v339;
  OUTLINED_FUNCTION_86_12(5 * v339);
  v155 = OUTLINED_FUNCTION_225();
  (v138)(v155);
  v156 = v48;
  OUTLINED_FUNCTION_45();
  v157 = v343;
  __swift_storeEnumTagSinglePayload(v158, v159, v160, v343);
  v161 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v143);
  v164 = v345;
  v165 = OUTLINED_FUNCTION_35_0();
  v166 = v347;
  __swift_storeEnumTagSinglePayload(v165, v167, v168, v347);
  v169 = v149;
  v170 = OUTLINED_FUNCTION_38_4();
  v171 = v151;
  __swift_storeEnumTagSinglePayload(v170, v172, v173, v151);
  v326 = v164;
  v327 = v169;
  v174 = v340;
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_52_7();
  v175 = v338;
  v176 = v335;
  OUTLINED_FUNCTION_114_9();
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_86_12(&v174[v154 * v177]);
  (v348)(v175, v121, v344);
  v178 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v178, v179, v180, v157);
  v181 = OUTLINED_FUNCTION_35_0();
  v182 = v346;
  __swift_storeEnumTagSinglePayload(v181, v183, v184, v346);
  v185 = v345;
  v186 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v186, v187, v188, v166);
  v189 = v349;
  v190 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v190, v191, v192, v171);
  v322 = v185;
  v323 = v189;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_52_7();
  v337 = v156;
  OUTLINED_FUNCTION_114_9();
  v193 = OUTLINED_FUNCTION_105_12(7 * v339);
  v194 = v121;
  v195 = v344;
  v196 = v348;
  (v348)(v193, v194, v344);
  v197 = OUTLINED_FUNCTION_42_3();
  v198 = v343;
  __swift_storeEnumTagSinglePayload(v197, v199, v200, v343);
  v201 = *MEMORY[0x1E698F1E0];
  OUTLINED_FUNCTION_9_10(v182);
  v323 = *(v202 + 104);
  v324 = v202 + 104;
  v323(v176);
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v203, v204, v205, v182);
  OUTLINED_FUNCTION_88_13("LabelledIdentifier");
  v206 = v325;
  v207 = swift_allocObject();
  v326 = &v206[OUTLINED_FUNCTION_102_13(v207, &a17, xmmword_19394FBE0)];
  v208 = v328;
  v209 = v336;
  (v196)(v328, v336, v195);
  v210 = OUTLINED_FUNCTION_19_6();
  v211 = v198;
  __swift_storeEnumTagSinglePayload(v210, v212, v213, v198);
  v214 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v214, v215, v216, v182);
  v217 = v331;
  v218 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v218, v219, v220, v347);
  v221 = v349;
  v222 = OUTLINED_FUNCTION_20_1();
  v223 = v341;
  __swift_storeEnumTagSinglePayload(v222, v224, v225, v341);
  v322 = v217;
  v323 = v221;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_70_10();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_119_8();
  v325 = "LabelledIdentifier";
  (v348)(v208, v209, v344);
  v226 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v226, v227, v228, v211);
  v229 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v229, v230, v231, v346);
  v232 = OUTLINED_FUNCTION_15_7();
  v233 = v347;
  __swift_storeEnumTagSinglePayload(v232, v234, v235, v347);
  v236 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v236, v237, v238, v223);
  v322 = v217;
  v323 = v221;
  v239 = v339;
  OUTLINED_FUNCTION_131_7();
  v321 = 0;
  v320 = 256;
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_119_8();
  v240 = v345;
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v241, v242, v243, v233);
  v244 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v244, v245, v246, v223);
  v322 = v240;
  v323 = v221;
  v321 = 0;
  v320 = 256;
  OUTLINED_FUNCTION_140_6();
  v247 = v340;
  OUTLINED_FUNCTION_52_7();
  v248 = v338;
  v249 = v335;
  OUTLINED_FUNCTION_107_10();
  v331 = &v247[8 * v239];
  v250 = v334;
  v251 = v344;
  (v348)(v248, v334, v344);
  v252 = OUTLINED_FUNCTION_38_4();
  v253 = v343;
  __swift_storeEnumTagSinglePayload(v252, v254, v255, v343);
  v256 = v249;
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v257, v258, v259, v346);
  v260 = OUTLINED_FUNCTION_25_9();
  v261 = v347;
  __swift_storeEnumTagSinglePayload(v260, v262, v263, v347);
  v264 = OUTLINED_FUNCTION_28_0();
  v265 = v341;
  __swift_storeEnumTagSinglePayload(v264, v266, v267, v341);
  OUTLINED_FUNCTION_164_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_52_7();
  v268 = v338;
  OUTLINED_FUNCTION_110_6();
  v269 = v339;
  v331 = 9 * v339;
  v270 = v250;
  v271 = v348;
  (v348)(v268, v270, v251);
  v272 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v272, v273, v274, v253);
  v275 = OUTLINED_FUNCTION_15_7();
  v276 = v346;
  __swift_storeEnumTagSinglePayload(v275, v277, v278, v346);
  v279 = v345;
  v280 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v280, v281, v282, v261);
  v283 = v349;
  v284 = OUTLINED_FUNCTION_19_6();
  v285 = v265;
  __swift_storeEnumTagSinglePayload(v284, v286, v287, v265);
  v326 = v279;
  v327 = v283;
  OUTLINED_FUNCTION_14_3();
  v288 = v340;
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_117_11();
  v331 = &v288[10 * v269];
  (v271)(v268, v334, v251);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v289, v290, v291, v343);
  v292 = v323;
  (v323)(v256, *MEMORY[0x1E698F1E8], v276);
  OUTLINED_FUNCTION_38_15();
  v293 = v276;
  __swift_storeEnumTagSinglePayload(v294, v295, v296, v297);
  v298 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v298, v299, v300, v347);
  v301 = v349;
  v302 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v302, v303, v304, v285);
  v326 = v279;
  v327 = v301;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_117_11();
  v340 += 11 * v339;
  (v348)(v268, v336, v344);
  v305 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v305, v306, v307, v343);
  (v292)(v256, *MEMORY[0x1E698F1A8], v293);
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v308, v309, v310, v293);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v311, v312, v313, v347);
  v348 = "virtualConferenceURL";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3E8D8, &qword_19396ED68);
  v314 = sub_19393BEE0();
  OUTLINED_FUNCTION_30(v314);
  v316 = *(v315 + 72);
  OUTLINED_FUNCTION_30_3();
  *(swift_allocObject() + 16) = xmmword_19396E6E0;
  OUTLINED_FUNCTION_166_5();
  sub_19393BED0();
  sub_19393BED0();
  sub_19393BED0();
  OUTLINED_FUNCTION_92_9();
  sub_19393BED0();
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_80_14();
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_80_14();
  OUTLINED_FUNCTION_144_5();
  OUTLINED_FUNCTION_92_9();
  sub_19393BED0();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_92_9();
  sub_19393BED0();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_80_14();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_144_5();
  sub_19393BED0();
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_64_11();
  sub_19393BED0();
  sub_19393BED0();
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_64_11();
  sub_19393BED0();
  OUTLINED_FUNCTION_125_6();
  sub_19393BED0();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_125_6();
  sub_19393BED0();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_80_14();
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_80_14();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_144_5();
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_80_14();
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_144_5();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_125_6();
  sub_19393BED0();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_80_14();
  OUTLINED_FUNCTION_45_17();
  sub_19393BED0();
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_144_5();
  OUTLINED_FUNCTION_59_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_29_8();
  __swift_storeEnumTagSinglePayload(v317, v318, v319, v341);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_52_7();
  sub_19393BF20();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}