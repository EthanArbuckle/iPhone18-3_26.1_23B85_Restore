void sub_1B1094C0C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  OUTLINED_FUNCTION_25_0();
  a5(v9);
  _Block_release(v8);
}

void sub_1B1094C94(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
    v3 = sub_1B1122B7C();
  }

  if (a2)
  {
    sub_1B11217EC();
  }

  v4 = OUTLINED_FUNCTION_33_0();
  v5(v4);
}

void PARSessionSwiftInternal.send(_:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  sub_1B106B080(a1, &selRef_data);
  OUTLINED_FUNCTION_34_0();
  if (!v9 & v8)
  {
    if (qword_1EDAD5D18 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v10 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v10, qword_1EDAD5D20);
    v11 = sub_1B112293C();
    v12 = sub_1B1122DDC();
    if (OUTLINED_FUNCTION_60(v12))
    {
      v13 = OUTLINED_FUNCTION_37();
      *v13 = 0;
      _os_log_impl(&dword_1B1064000, v11, v12, "SFCustomFeedback contained no payload", v13, 2u);
      OUTLINED_FUNCTION_2_0();
    }

    if (a2)
    {
      a2();
    }

    return;
  }

  if (MEMORY[0x1B272C8C0]() < 1)
  {
    if (qword_1EDAD5D18 == -1)
    {
LABEL_15:
      v34 = sub_1B112296C();
      OUTLINED_FUNCTION_27_0(v34, qword_1EDAD5D20);
      v35 = sub_1B112293C();
      v36 = sub_1B1122DDC();
      if (OUTLINED_FUNCTION_60(v36))
      {
        v37 = OUTLINED_FUNCTION_37();
        *v37 = 0;
        _os_log_impl(&dword_1B1064000, v35, v36, "SFCustomFeedback contained no data", v37, 2u);
        OUTLINED_FUNCTION_2_0();
      }

      if (a2)
      {
        a2();
      }

      v38 = OUTLINED_FUNCTION_23_0();

      sub_1B106C1F0(v38, v39);
      return;
    }

LABEL_28:
    OUTLINED_FUNCTION_0_8();
    goto LABEL_15;
  }

  v14 = os_transaction_create();
  v15 = [a1 feedbackType];
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v42 = v15;
  v16 = *(*&v3[OBJC_IVAR___PARSessionSwiftInternal_client] + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  OUTLINED_FUNCTION_50_0();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  OUTLINED_FUNCTION_8_1();
  v45 = 1107296256;
  OUTLINED_FUNCTION_3();
  v46 = v18;
  v47 = &block_descriptor_39;
  v19 = _Block_copy(aBlock);
  v20 = v16;
  sub_1B1098EF0(a2);

  v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v19);

  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_58())
  {
    v22 = [a1 feedbackType];
    if (v22 >> 31)
    {
      __break(1u);
      return;
    }

    v23 = v22;
    v24 = *&v4[OBJC_IVAR___PARSessionSwiftInternal_activityMonitor];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739ED0, qword_1B1134608);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();

    v29 = sub_1B108E274(v28, 3, 0, v23);
    OUTLINED_FUNCTION_54_0();
    v30 = swift_allocObject();
    v30[2] = v14;
    v30[3] = a2;
    v30[4] = a3;
    v30[5] = v29;
    v30[6] = a1;
    v30[7] = v4;
    OUTLINED_FUNCTION_8_1();
    v45 = 1107296256;
    v46 = sub_1B1095CB4;
    v47 = &block_descriptor_45;
    v31 = _Block_copy(aBlock);
    sub_1B1098EF0(a2);
    swift_unknownObjectRetain();

    v32 = a1;
    v33 = v4;

    [v43 fileHandleForWritingFeedbackType:v42 reply:v31];
    _Block_release(v31);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (a2)
    {
      a2();
    }

    swift_unknownObjectRelease();
  }

  v40 = OUTLINED_FUNCTION_23_0();
  sub_1B106C1F0(v40, v41);
}

void sub_1B10951A4(void *a1, void (*a2)(void))
{
  if (qword_1EDAD5D18 != -1)
  {
    swift_once();
  }

  v4 = sub_1B112296C();
  __swift_project_value_buffer(v4, qword_1EDAD5D20);
  v5 = a1;
  v6 = sub_1B112293C();
  v7 = sub_1B1122DDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1B11230FC();
    v12 = sub_1B10784E0(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B1064000, v6, v7, "sendCustomFeedback failed: no remote proxy %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B272EDD0](v9, -1, -1);
    MEMORY[0x1B272EDD0](v8, -1, -1);
  }

  if (a2)
  {
    a2();
  }
}

void sub_1B109532C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, void *a7)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    sub_1B1099CA0();
    v18 = swift_allocError();
    *v19 = 5;
    sub_1B108E2D0(v18);

    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a7;
  v35 = sub_1B1099CF4;
  v36 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1B10958D0;
  v34 = &block_descriptor_196;
  v12 = _Block_copy(&aBlock);
  v13 = @"com.apple.parsecd.session";
  v14 = a7;
  v15 = a1;

  AnalyticsSendEventLazy();
  _Block_release(v12);

  v16 = sub_1B106B080(v14, &selRef_data);
  if (v17 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    aBlock = v16;
    v32 = v17;
    sub_1B1099CFC();
    sub_1B1122D9C();
    sub_1B106C204(aBlock, v32);
    v20 = sub_1B106B080(v14, &selRef_data);
    if (v21 >> 60 != 15)
    {
      v22 = v20;
      v23 = v21;
      v24 = MEMORY[0x1B272C8C0]();
      sub_1B106C1F0(v22, v23);
      sub_1B108E2A4(v24);
      aBlock = 0;
      if ([v15 closeAndReturnError_])
      {
        v25 = aBlock;
      }

      else
      {
        v26 = aBlock;
        v27 = sub_1B11217FC();

        swift_willThrow();
      }

      if ([v14 feedbackType] == 10)
      {
        v28 = kPARUserReportDir;
      }

      else
      {
        if ([v14 feedbackType] != 19)
        {
          goto LABEL_15;
        }

        v28 = kPARModelFeedbackDir;
      }

      v29 = *v28;
      sub_1B1122A5C();
      sub_1B109596C(a3);

LABEL_15:

      if (!a4)
      {
LABEL_17:
        v30 = *MEMORY[0x1E69E9840];
        return;
      }

LABEL_16:
      a4();
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1B1095820(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A120, qword_1B1134880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1133BA0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  [a1 feedbackType];
  *(inited + 48) = sub_1B1122EFC();
  sub_1B1066864(0, &qword_1EDAD5D40, 0x1E69E58C0);
  return sub_1B1122A0C();
}

id sub_1B10958D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1B1066864(0, &qword_1EDAD5D40, 0x1E69E58C0);
    v5 = sub_1B11229DC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1B109596C(uint64_t a1)
{
  sub_1B1066864(0, qword_1EDAD6030, 0x1E696B0B8);
  v2 = sub_1B10668A4();
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [v2 setRemoteObjectInterface_];

  [v2 resume];
  v18 = sub_1B1095E10;
  v19 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1B108FBF8;
  v17 = &block_descriptor_199;
  v4 = _Block_copy(&aBlock);
  v5 = [v2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v4);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A110, &qword_1B1134878);
  if (swift_dynamicCast())
  {
    v6 = sub_1B1122A4C();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v18 = nullsub_1;
    v19 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_1B10689E0;
    v17 = &block_descriptor_205;
    v8 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v13 flushCustomFeedbackType:v6 completion:v8];
    _Block_release(v8);

    swift_unknownObjectRelease();
    v2 = v6;
  }

  else
  {
    if (qword_1EDAD5D18 != -1)
    {
      swift_once();
    }

    v9 = sub_1B112296C();
    __swift_project_value_buffer(v9, qword_1EDAD5D20);
    v10 = sub_1B112293C();
    v11 = sub_1B1122DDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B1064000, v10, v11, "scheduling eager flush failed: couldn't get FBFDaemonXPC", v12, 2u);
      MEMORY[0x1B272EDD0](v12, -1, -1);
    }
  }
}

void sub_1B1095CB4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1B1095E10()
{
  if (qword_1EDAD5D18 != -1)
  {
    swift_once();
  }

  v0 = sub_1B112296C();
  __swift_project_value_buffer(v0, qword_1EDAD5D20);
  oslog = sub_1B112293C();
  v1 = sub_1B1122DDC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1B1064000, oslog, v1, "scheduling eager flush failed: couldn't get remote proxy", v2, 2u);
    MEMORY[0x1B272EDD0](v2, -1, -1);
  }
}

uint64_t sub_1B1095EF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
  __swift_allocate_value_buffer(v0, qword_1EDAD64D8);
  __swift_project_value_buffer(v0, qword_1EDAD64D8);
  return sub_1B11226BC();
}

uint64_t sub_1B1095F74(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1B112187C();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x1B272C870]();
    }

    else
    {
      v6 = MEMORY[0x1B272C880]();
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

unint64_t sub_1B10960B4(void *a1)
{
  result = [a1 queryId];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = OUTLINED_FUNCTION_36_0();

    return [v2 v3];
  }

  return result;
}

void PARSessionSwiftInternal.didSkipSearch(_:input:queryId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(_CPSkipSearchFeedback);

  v9 = sub_1B10976DC(a1, a2, a3);
  v10 = *(v4 + OBJC_IVAR___PARSessionSwiftInternal_client);
  v11 = sub_1B1068078();
  v12 = v9;
  OUTLINED_FUNCTION_25_0();
  sub_1B10989C0();
}

Swift::Void __swiftcall PARSessionSwiftInternal.addCompletion(_:forInput:)(Swift::String _, Swift::String forInput)
{
  v3 = v2;
  object = forInput._object;
  countAndFlagsBits = forInput._countAndFlagsBits;
  OUTLINED_FUNCTION_47_0();
  v6 = sub_1B112194C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739EE0, &unk_1B1134620);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B11345C0;
  sub_1B1066864(0, &unk_1EDAD5570, off_1E7AC5108);

  sub_1B112193C();
  v12 = OUTLINED_FUNCTION_23_0();
  *(v11 + 32) = PAREngagedResult.init(_:searchString:type:engagemementTime:)(v12, v13, countAndFlagsBits, object, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
  v14 = sub_1B1122B7C();

  [v3 addEngagedResults_];
}

Swift::Void __swiftcall PARSessionSwiftInternal.addEngagedResults(_:)(Swift::OpaquePointer a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
  OUTLINED_FUNCTION_16_0();
  v2 = sub_1B1122B7C();
  [v1 addEngagedResults:v2 completion:0];
}

void sub_1B1096A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, id, uint64_t, void *))
{
  v11 = *(a4 + OBJC_IVAR___PARSessionSwiftInternal_client);
  _Block_copy(aBlock);
  v12 = sub_1B1068078();
  a6(a1, a2, a3, v12, v11, aBlock);

  _Block_release(aBlock);
}

void sub_1B1096B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, id, uint64_t, uint64_t))
{
  v13 = *(v6 + OBJC_IVAR___PARSessionSwiftInternal_client);
  v14 = sub_1B1068078();
  a6(a1, a2, a3, v14, a4, a5);
}

uint64_t sub_1B1096BEC(void *a1, int a2, int a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, id, uint64_t, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = sub_1B1122A5C();
  v12 = v11;
  _Block_copy(v9);
  v13 = a1;
  sub_1B1096A7C(v10, v12, a4, v13, v9, a6);
  _Block_release(v9);
}

void sub_1B1096F70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B11217EC();
  }

  v2 = OUTLINED_FUNCTION_33_0();
  v3(v2);
}

uint64_t sub_1B1097090(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t PARSession.load(_:context:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B109715C, 0, 0);
}

uint64_t sub_1B109715C()
{
  v1 = [*(v0 + 168) imageLoader];
  *(v0 + 176) = v1;
  if (v1)
  {
    v2 = *(v0 + 160);
    if ([v1 canLoadImage:*(v0 + 152) context:v2])
    {
      type metadata accessor for PARSessionSwiftInternal();
      OUTLINED_FUNCTION_16_0();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = v3;
        v5 = *(v0 + 152);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 144;
        *(v0 + 24) = sub_1B1097350;
        v6 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F58, &qword_1B1134640);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1B1097534;
        *(v0 + 104) = &block_descriptor_48;
        *(v0 + 112) = v6;
        swift_unknownObjectRetain();
        [v4 loadImage:v5 context:v2 completionHandler:v0 + 80];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }
    }

    swift_unknownObjectRelease();
  }

  sub_1B1098E88();
  OUTLINED_FUNCTION_22_0();
  swift_allocError();
  *v7 = 1;
  swift_willThrow();
  OUTLINED_FUNCTION_13_0();

  return v8();
}

uint64_t sub_1B1097350()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 184) = v4;
  if (v4)
  {
    v5 = sub_1B10974C0;
  }

  else
  {
    v5 = sub_1B1097458;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B1097458()
{
  OUTLINED_FUNCTION_9_0();
  v1 = v0[22];
  swift_unknownObjectRelease_n();
  v2 = v0[18];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1B10974C0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  swift_willThrow();
  swift_unknownObjectRelease_n();
  v3 = *(v0 + 184);
  OUTLINED_FUNCTION_13_0();

  return v4();
}

uint64_t *sub_1B1097534(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1B10975C4(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1B1097630(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B10975C4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

id sub_1B1097650(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1B11218AC();
    sub_1B106C1F0(a2, a3);
  }

  v8 = [v3 initWithType:a1 data:v5];

  return v8;
}

id sub_1B10976DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1B1122A4C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithTriggerEvent:a1 input:v5];

  return v6;
}

uint64_t sub_1B1097750(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B108C2DC;

  return v7();
}

uint64_t sub_1B1097838(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B1088B1C;

  return v8();
}

uint64_t sub_1B1097920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1B1099E30(a3, v25 - v11, &qword_1EB73A100, &unk_1B1134340);
  v13 = sub_1B1122C5C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1B1067964(v12, &qword_1EB73A100, &unk_1B1134340);
  }

  else
  {
    sub_1B1122C4C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1B1122C0C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B1122A9C() + 32;
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

      sub_1B1067964(a3, &qword_1EB73A100, &unk_1B1134340);

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

  sub_1B1067964(a3, &qword_1EB73A100, &unk_1B1134340);
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

uint64_t sub_1B1097BFC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B1097CF4;

  return v7(a1);
}

uint64_t sub_1B1097CF4()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_6();
  *v4 = v3;

  OUTLINED_FUNCTION_13_0();

  return v5();
}

uint64_t sub_1B1097DD8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B112306C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1B1097E08(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1097E2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B11345D0;
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

uint64_t sub_1B1097E90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A138, &qword_1B11348A8);
  result = sub_1B1122F7C();
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
      sub_1B1097E2C(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_1B112314C();
    sub_1B1122ACC();
    result = sub_1B112316C();
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

void *sub_1B10980EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A138, &qword_1B11348A8);
  v2 = *v0;
  v3 = sub_1B1122F6C();
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

uint64_t sub_1B1098244(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A138, &qword_1B11348A8);
  result = sub_1B1122F7C();
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
        sub_1B112314C();

        sub_1B1122ACC();
        result = sub_1B112316C();
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

uint64_t sub_1B1098478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B11230AC() & 1;
  }
}

BOOL sub_1B10984BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1B1098588(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1B1122B8C();

  return v4;
}

void sub_1B10985DC(uint64_t a1, void *a2)
{
  sub_1B1066864(0, &qword_1EB739628, 0x1E69C9F08);
  v3 = sub_1B1122B7C();

  [a2 setCardSections_];
}

id sub_1B1098660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_1B1122A4C();

  v11 = [a6 ticketForSearchQuery:v10 completionItem:a3 maxResults:a4 traits:a5];

  return v11;
}

uint64_t sub_1B10986E4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B1122A5C();

  return v4;
}

uint64_t sub_1B1098750(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
  OUTLINED_FUNCTION_16_0();
  v3 = sub_1B1122B8C();

  return v3;
}

void sub_1B10987C4(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1B11218AC();
  sub_1B106C204(a1, a2);
  [a3 setUuidBytes_];
}

uint64_t sub_1B1098838(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B11218CC();

  return v3;
}

uint64_t sub_1B10988A8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1B1122A5C();
  OUTLINED_FUNCTION_52();

  return v2;
}

uint64_t sub_1B1098904(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1B1097DFC(a3);
  sub_1B1097E08(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1B272DFA0](a2, a3);
  }

  *a1 = v7;
  return OUTLINED_FUNCTION_51_0();
}

void sub_1B10989C0()
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B11228AC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v11 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable_];
  if (v11)
  {
    v12 = v11;
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v13 = sub_1B112296C();
    __swift_project_value_buffer(v13, qword_1EDAD60D0);
    v49 = v12;
    v14 = sub_1B112293C();
    v15 = sub_1B1122DCC();

    if (os_log_type_enabled(v14, v15))
    {
      v48 = v4;
      v16 = swift_slowAlloc();
      v47 = v8;
      v17 = OUTLINED_FUNCTION_55();
      v51 = v17;
      *v16 = 136315394;
      v18 = [v49 debugDescription];
      v46 = v0;
      v19 = sub_1B1122A5C();
      v21 = v20;

      v22 = sub_1B10784E0(v19, v21, &v51);

      *(v16 + 4) = v22;
      v0 = v46;
      *(v16 + 12) = 2048;
      *(v16 + 14) = v46;
      _os_log_impl(&dword_1B1064000, v14, v15, "reportFeedback(%s, %llu)", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v8 = v47;
      OUTLINED_FUNCTION_2_0();
      v4 = v48;
      OUTLINED_FUNCTION_2_0();
    }

    v23 = sub_1B106AE3C();
    if (v23)
    {
      v24 = v23;
      sub_1B1122E6C();
      if (qword_1EDAD5DF0 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      sub_1B112289C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1B1133CF0;
      v26 = [v49 type];
      v27 = MEMORY[0x1E69E7358];
      *(v25 + 56) = MEMORY[0x1E69E72F0];
      *(v25 + 64) = v27;
      v28 = MEMORY[0x1E69E76D8];
      *(v25 + 32) = v26;
      v29 = MEMORY[0x1E69E7738];
      *(v25 + 96) = v28;
      *(v25 + 104) = v29;
      *(v25 + 72) = v0;
      sub_1B112284C();

      v30 = *(v8 + 8);
      v31 = OUTLINED_FUNCTION_23_0();
      v32(v31);
      v33 = v49;
      sub_1B106B080(v33, &selRef_data);
      OUTLINED_FUNCTION_34_0();
      if (!v37 & v36)
      {
        __break(1u);
      }

      else
      {
        v38 = v34;
        v39 = v35;

        v40 = sub_1B11218AC();
        sub_1B106C1F0(v38, v39);
        [v24 reportFeedback:v4 payloadData:v40 queryId:v0];

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_4_2();
      }

      return;
    }
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v41 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v41, qword_1EDAD60D0);
    v50 = sub_1B112293C();
    v42 = sub_1B1122DDC();
    if (os_log_type_enabled(v50, v42))
    {
      v43 = OUTLINED_FUNCTION_37();
      *v43 = 0;
      _os_log_impl(&dword_1B1064000, v50, v42, "nil feedback payload", v43, 2u);
      OUTLINED_FUNCTION_2_0();
    }
  }

  OUTLINED_FUNCTION_4_2();
}

unint64_t sub_1B1098E34()
{
  result = qword_1EB739E48;
  if (!qword_1EB739E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739E48);
  }

  return result;
}

unint64_t sub_1B1098E88()
{
  result = qword_1EB739E50;
  if (!qword_1EB739E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739E50);
  }

  return result;
}

uint64_t sub_1B1098EF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1B1098F10()
{
  result = qword_1EDAD5580;
  if (!qword_1EDAD5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5580);
  }

  return result;
}

unint64_t sub_1B1098F64()
{
  result = qword_1EDAD5598;
  if (!qword_1EDAD5598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB739C38, &qword_1B1133EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5598);
  }

  return result;
}

unint64_t sub_1B1098FF8()
{
  result = qword_1EB739F60;
  if (!qword_1EB739F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739F60);
  }

  return result;
}

unint64_t sub_1B1099050()
{
  result = qword_1EB739F68;
  if (!qword_1EB739F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739F68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafariHistoryClearError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SafariHistoryClearError(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PARSessionSwiftInternal.ImageLoadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PARSessionSwiftInternal.ImageLoadError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_54_0();

  return MEMORY[0x1EEE6BDD0](v3);
}

void sub_1B1099858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v32 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v32);
  v37 = v36;
  v39 = v38;
  v40 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v41 = (*(v39 + 64) + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v30 + v41);
  v44 = *(v30 + v42);
  v45 = *v43;
  v46 = v43[1];

  sub_1B109E624(a1, v30 + v40, v45, v46, v44, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t objectdestroy_28Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B109995C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_18_1(v6);

  return v8(v7);
}

uint64_t sub_1B1099A00()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_18_1(v6);

  return v8(v7);
}

uint64_t sub_1B1099AA4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_28_0(v7);
  *v8 = v9;
  v8[1] = sub_1B108C2DC;

  return sub_1B1097838(a1, v3, v4, v6);
}

uint64_t sub_1B1099B68()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_28_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_20_0(v4);

  return v7(v6);
}

uint64_t sub_1B1099C00()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_28_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_20_0(v4);

  return v7(v6);
}

unint64_t sub_1B1099CA0()
{
  result = qword_1EB73A108;
  if (!qword_1EB73A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB73A108);
  }

  return result;
}

unint64_t sub_1B1099CFC()
{
  result = qword_1EDAD55A0;
  if (!qword_1EDAD55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD55A0);
  }

  return result;
}

uint64_t sub_1B1099D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739BB8, &qword_1B1133E38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1099DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1099E30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_58()
{

  return swift_dynamicCast();
}

uint64_t *sub_1B109A15C()
{
  if (qword_1EDAD60E8 != -1)
  {
    OUTLINED_FUNCTION_10_2();
  }

  return &qword_1EDAD60F8;
}

void sub_1B109A19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B11229DC();
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a3)
  {
LABEL_3:
    sub_1B11217EC();
  }

LABEL_5:
  v6 = OUTLINED_FUNCTION_44_1();
  v9 = v7;
  v8(v6, a1, v5);
}

void sub_1B109A250(uint64_t a1)
{
  if (a1)
  {
    sub_1B11217EC();
  }

  v1 = OUTLINED_FUNCTION_44_1();
  v4 = v2;
  v3(v1);
}

void sub_1B109A2AC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
  v3 = sub_1B1122B7C();
  (*(a2 + 16))(a2, v3);
}

void sub_1B109A324(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t aBlock, uint64_t a12, uint64_t a13, void *a14, uint64_t (*a15)(void *a1, void *a2), void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v31;
  a28 = v32;
  OUTLINED_FUNCTION_43_1();
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v33 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v33, qword_1EDAD60D0);
  v34 = sub_1B112293C();
  v35 = sub_1B1122DCC();
  if (OUTLINED_FUNCTION_60(v35))
  {
    *OUTLINED_FUNCTION_37() = 0;
    OUTLINED_FUNCTION_42_0();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    OUTLINED_FUNCTION_2_0();
  }

  v41 = *&v29[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection];
  a15 = sub_1B10A368C;
  a16 = 0;
  OUTLINED_FUNCTION_9_1();
  a12 = 1107296256;
  OUTLINED_FUNCTION_3();
  a13 = v42;
  a14 = &block_descriptor_230;
  v43 = _Block_copy(&aBlock);
  [v41 remoteObjectProxyWithErrorHandler_];
  _Block_release(v43);
  OUTLINED_FUNCTION_72();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_34_1())
  {
    OUTLINED_FUNCTION_51_1();
    v44 = swift_allocObject();
    v44[2] = v29;
    v44[3] = v30;
    v44[4] = v28;
    a15 = sub_1B10A343C;
    a16 = v44;
    aBlock = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_15_1();
    a13 = v45;
    a14 = &block_descriptor_236;
    v46 = _Block_copy(&aBlock);
    v47 = v29;

    OUTLINED_FUNCTION_74(v48, sel_subscribeToChannel_reply_);
    _Block_release(v46);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_84();
}

void sub_1B109A514(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t aBlock, uint64_t a12, uint64_t a13, void *a14, uint64_t (*a15)(void *a1, void *a2), void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v31;
  a28 = v32;
  OUTLINED_FUNCTION_43_1();
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v33 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v33, qword_1EDAD60D0);
  v34 = sub_1B112293C();
  v35 = sub_1B1122DCC();
  if (OUTLINED_FUNCTION_60(v35))
  {
    *OUTLINED_FUNCTION_37() = 0;
    OUTLINED_FUNCTION_42_0();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    OUTLINED_FUNCTION_2_0();
  }

  v41 = *&v29[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection];
  a15 = sub_1B10A368C;
  a16 = 0;
  OUTLINED_FUNCTION_9_1();
  a12 = 1107296256;
  OUTLINED_FUNCTION_3();
  a13 = v42;
  a14 = &block_descriptor_221;
  v43 = _Block_copy(&aBlock);
  [v41 remoteObjectProxyWithErrorHandler_];
  _Block_release(v43);
  OUTLINED_FUNCTION_72();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_34_1())
  {
    OUTLINED_FUNCTION_51_1();
    v44 = swift_allocObject();
    v44[2] = v29;
    v44[3] = v30;
    v44[4] = v28;
    a15 = sub_1B10A33C8;
    a16 = v44;
    aBlock = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_15_1();
    a13 = v45;
    a14 = &block_descriptor_227;
    v46 = _Block_copy(&aBlock);
    v47 = v29;

    OUTLINED_FUNCTION_74(v48, sel_unsubscribeFromChannel_reply_);
    _Block_release(v46);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_84();
}

void sub_1B109A704(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t aBlock, uint64_t a12, uint64_t a13, void *a14, uint64_t (*a15)(void *a1, void *a2), void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v31;
  a28 = v32;
  OUTLINED_FUNCTION_43_1();
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v33 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v33, qword_1EDAD60D0);
  v34 = sub_1B112293C();
  v35 = sub_1B1122DCC();
  if (OUTLINED_FUNCTION_60(v35))
  {
    *OUTLINED_FUNCTION_37() = 0;
    OUTLINED_FUNCTION_42_0();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    OUTLINED_FUNCTION_2_0();
  }

  v41 = *&v29[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection];
  a15 = sub_1B10A368C;
  a16 = 0;
  OUTLINED_FUNCTION_9_1();
  a12 = 1107296256;
  OUTLINED_FUNCTION_3();
  a13 = v42;
  a14 = &block_descriptor_212;
  v43 = _Block_copy(&aBlock);
  [v41 remoteObjectProxyWithErrorHandler_];
  _Block_release(v43);
  OUTLINED_FUNCTION_72();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_34_1())
  {
    OUTLINED_FUNCTION_51_1();
    v44 = swift_allocObject();
    v44[2] = v29;
    v44[3] = v30;
    v44[4] = v28;
    a15 = sub_1B10A33A0;
    a16 = v44;
    aBlock = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_15_1();
    a13 = v45;
    a14 = &block_descriptor_218;
    v46 = _Block_copy(&aBlock);
    v47 = v29;

    OUTLINED_FUNCTION_74(v48, sel_subscriptionStatusForChannel_reply_);
    _Block_release(v46);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_84();
}

uint64_t sub_1B109A8F4()
{
  OUTLINED_FUNCTION_83();
  v1 = type metadata accessor for WeakBox();

  return MEMORY[0x1EEE693F8](v0, v1);
}

uint64_t sub_1B109A930()
{
  OUTLINED_FUNCTION_83();
  v1 = type metadata accessor for WeakBox();

  return MEMORY[0x1EEE694E0](v0, v1);
}

uint64_t sub_1B109A96C()
{
  OUTLINED_FUNCTION_79();
  v0 = type metadata accessor for WeakBox();
  OUTLINED_FUNCTION_19_0();
  sub_1B1122BFC();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v0 - 8) + 8))(v3, v0);
  return Strong;
}

uint64_t sub_1B109A9FC()
{
  OUTLINED_FUNCTION_79();
  type metadata accessor for WeakBox();
  v0 = OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE694B0](v0);
}

uint64_t sub_1B109AA40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  result = sub_1B109A8F4();
  *a2 = result;
  return result;
}

uint64_t sub_1B109AA74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  result = sub_1B109A930();
  *a2 = result;
  return result;
}

void (*sub_1B109AAA8(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v7 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v7;
  v8 = *a2;
  v9 = *v3;
  v10 = *(a3 + 16);
  v11 = sub_1B109AB6C(v7);
  v7[4] = v12;
  v7[5] = v11;
  return sub_1B109AB24;
}

void sub_1B109AB24(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t sub_1B109ABEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *v3;
  v7 = *(a2 + 16);
  result = sub_1B109A9FC();
  *a3 = result;
  return result;
}

uint64_t sub_1B109AC24(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(a2 + 16);
  result = sub_1B109A9FC();
  *a1 = result;
  return result;
}

uint64_t sub_1B109AC5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *v2;
  v4 = *(a1 + 16);

  v5 = sub_1B109A8F4();

  a2[1] = v5;
  return result;
}

uint64_t sub_1B109ACB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1B109AD0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1B109ADB0()
{
  sub_1B112314C();
  MEMORY[0x1B272E140](0);
  return sub_1B112316C();
}

id PARSearchClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static PARSearchClient.shared.getter()
{
  if (qword_1EDAD60E8 != -1)
  {
    OUTLINED_FUNCTION_10_2();
  }

  OUTLINED_FUNCTION_50_1();
  swift_beginAccess();
  v0 = qword_1EDAD60F8;

  return v0;
}

void static PARSearchClient.shared.setter(uint64_t a1)
{
  if (qword_1EDAD60E8 != -1)
  {
    OUTLINED_FUNCTION_10_2();
  }

  OUTLINED_FUNCTION_86();
  v2 = qword_1EDAD60F8;
  qword_1EDAD60F8 = a1;
}

uint64_t (*static PARSearchClient.shared.modify())()
{
  if (qword_1EDAD60E8 != -1)
  {
    OUTLINED_FUNCTION_10_2();
  }

  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1B109AF78@<X0>(void *a1@<X8>)
{
  sub_1B109A15C();
  swift_beginAccess();
  v2 = qword_1EDAD60F8;
  *a1 = qword_1EDAD60F8;

  return v2;
}

void sub_1B109AFD8(id *a1)
{
  v1 = *a1;
  sub_1B109A15C();
  swift_beginAccess();
  v2 = qword_1EDAD60F8;
  qword_1EDAD60F8 = v1;
}

uint64_t sub_1B109B034(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_unknownObjectRetain();
  return sub_1B109B0BC();
}

uint64_t sub_1B109B070()
{
  v1 = v0 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_receivingStreamDelegate;
  OUTLINED_FUNCTION_50_1();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1B109B0BC()
{
  OUTLINED_FUNCTION_68();
  v2 = v1 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_receivingStreamDelegate;
  OUTLINED_FUNCTION_86();
  *(v2 + 8) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B109B114(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC10CoreParsec15PARSearchClient_receivingStreamDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1B109B1A0;
}

void sub_1B109B1A0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

id PARSearchClient.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PARSearchClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B109B390(uint64_t a1, uint64_t a2, const void *a3)
{
  v44 = a1;
  v5 = sub_1B11228AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  v49 = swift_allocObject();
  *(v49 + 16) = a3;
  _Block_copy(a3);
  if (qword_1EDAD60C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1B112296C();
  __swift_project_value_buffer(v12, qword_1EDAD60D0);
  v13 = sub_1B112293C();
  v14 = sub_1B1122DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1B1064000, v13, v14, "requesting bag", v15, 2u);
    v16 = v15;
    v9 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1B272EDD0](v16, -1, -1);
  }

  v47 = a3;

  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v43 = v17;
  sub_1B112285C();
  v18 = *(a2 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v19 = *(v6 + 16);
  v48 = v11;
  v42 = v19;
  v19(v9, v11, v5);
  v20 = *(v6 + 80);
  v21 = swift_allocObject();
  v41 = v7;
  v22 = v9;
  v23 = v21;
  v24 = v49;
  *(v21 + 16) = sub_1B10A3690;
  *(v21 + 24) = v24;
  v45 = v5;
  v46 = v6;
  v25 = *(v6 + 32);
  v25(v21 + ((v20 + 32) & ~v20), v22, v5);
  v55 = sub_1B10A3734;
  v56 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1B108FBF8;
  v54 = &block_descriptor_149;
  v26 = _Block_copy(&aBlock);

  v27 = [v18 remoteObjectProxyWithErrorHandler_];
  _Block_release(v26);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (swift_dynamicCast())
  {
    v28 = v50;
    v29 = v45;
    v42(v22, v48, v45);
    v30 = (v20 + 16) & ~v20;
    v31 = (v41 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v25(v32 + v30, v22, v29);
    v33 = (v32 + v31);
    v34 = v49;
    *v33 = sub_1B10A3690;
    v33[1] = v34;
    v55 = sub_1B106E8B4;
    v56 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1B106E750;
    v54 = &block_descriptor_156;
    v35 = _Block_copy(&aBlock);

    [v28 bag:v44 reply:v35];
    _Block_release(v35);
    swift_unknownObjectRelease();
    v37 = v47;
    v36 = v48;
    v38 = v29;
  }

  else
  {
    sub_1B1122E4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1B1133BA0;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = sub_1B106EAF4();
    strcpy((v39 + 32), "casting_failed");
    *(v39 + 47) = -18;
    v40 = v48;
    sub_1B112284C();

    v37 = v47;
    (*(v47 + 2))(v47, 0, 0);
    v38 = v45;
    v36 = v40;
  }

  (*(v46 + 8))(v36, v38);

  _Block_release(v37);
}

void sub_1B109B9AC()
{
  OUTLINED_FUNCTION_41_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v41 = v7;
  v8 = sub_1B11228AC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38_1();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_39_0();
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v44 = v6;
  v18 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v18, qword_1EDAD60D0);
  v19 = sub_1B112293C();
  v20 = sub_1B1122DFC();
  if (OUTLINED_FUNCTION_60(v20))
  {
    *OUTLINED_FUNCTION_37() = 0;
    OUTLINED_FUNCTION_87(&dword_1B1064000, v21, v22, "requesting bag");
    OUTLINED_FUNCTION_2_0();
  }

  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  OUTLINED_FUNCTION_75();
  sub_1B112285C();
  v23 = *(v2 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v40 = *(v11 + 16);
  v40(v16);
  v24 = *(v11 + 80);
  v39 = v13;
  v25 = swift_allocObject();
  *(v25 + 16) = v44;
  *(v25 + 24) = v4;
  v43 = v11;
  v26 = *(v11 + 32);
  v42 = v8;
  v27 = v8;
  v28 = v4;
  v26(v25 + ((v24 + 32) & ~v24), v16, v27);
  v49 = sub_1B10A29EC;
  v50 = v25;
  OUTLINED_FUNCTION_3_6();
  v46[1] = 1107296256;
  OUTLINED_FUNCTION_3();
  v47 = v29;
  v48 = &block_descriptor_0;
  v30 = _Block_copy(v46);

  [v23 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_53_1())
  {
    (v40)(v16, v1, v42);
    v31 = (v24 + 16) & ~v24;
    v32 = swift_allocObject();
    v26(v32 + v31, v16, v42);
    v33 = (v32 + ((v39 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = v44;
    v33[1] = v28;
    v49 = sub_1B106E89C;
    v50 = v32;
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_12_2();
    v47 = v34;
    v48 = &block_descriptor_6_0;
    v35 = _Block_copy(v46);

    [v45 bag:v41 reply:v35];
    _Block_release(v35);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B1122E4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v36 = OUTLINED_FUNCTION_62();
    *(v36 + 16) = xmmword_1B1133BA0;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v36 + 32) = v37;
    *(v36 + 40) = v38;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_75();
    sub_1B112284C();

    v44(0, 0);
  }

  (*(v43 + 8))(v1, v42);
  OUTLINED_FUNCTION_30();
}

void sub_1B109BE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B11217EC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1B109BEE8(uint64_t a1, uint64_t a2, const void *a3)
{
  v44 = a1;
  v5 = sub_1B11228AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  v49 = swift_allocObject();
  *(v49 + 16) = a3;
  _Block_copy(a3);
  if (qword_1EDAD60C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1B112296C();
  __swift_project_value_buffer(v12, qword_1EDAD60D0);
  v13 = sub_1B112293C();
  v14 = sub_1B1122DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1B1064000, v13, v14, "force fetch bag", v15, 2u);
    v16 = v15;
    v9 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1B272EDD0](v16, -1, -1);
  }

  v47 = a3;

  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v43 = v17;
  sub_1B112285C();
  v18 = *(a2 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v19 = *(v6 + 16);
  v48 = v11;
  v42 = v19;
  v19(v9, v11, v5);
  v20 = *(v6 + 80);
  v21 = swift_allocObject();
  v41 = v7;
  v22 = v9;
  v23 = v21;
  v24 = v49;
  *(v21 + 16) = sub_1B10A312C;
  *(v21 + 24) = v24;
  v45 = v5;
  v46 = v6;
  v25 = *(v6 + 32);
  v25(v21 + ((v20 + 32) & ~v20), v22, v5);
  v55 = sub_1B10A3730;
  v56 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1B108FBF8;
  v54 = &block_descriptor_131_0;
  v26 = _Block_copy(&aBlock);

  v27 = [v18 remoteObjectProxyWithErrorHandler_];
  _Block_release(v26);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (swift_dynamicCast())
  {
    v28 = v50;
    v29 = v45;
    v42(v22, v48, v45);
    v30 = (v20 + 16) & ~v20;
    v31 = (v41 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v25(v32 + v30, v22, v29);
    v33 = (v32 + v31);
    v34 = v49;
    *v33 = sub_1B10A312C;
    v33[1] = v34;
    v55 = sub_1B10A3738;
    v56 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1B106E750;
    v54 = &block_descriptor_138_0;
    v35 = _Block_copy(&aBlock);

    [v28 forceFetchBag:v44 reply:v35];
    _Block_release(v35);
    swift_unknownObjectRelease();
    v37 = v47;
    v36 = v48;
    v38 = v29;
  }

  else
  {
    v37 = v47;
    (*(v47 + 2))(v47, 0, 0);
    sub_1B1122E4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1B1133BA0;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = sub_1B106EAF4();
    strcpy((v39 + 32), "casting_failed");
    *(v39 + 47) = -18;
    v40 = v48;
    sub_1B112284C();

    v38 = v45;
    v36 = v40;
  }

  (*(v46 + 8))(v36, v38);

  _Block_release(v37);
}

void sub_1B109C504()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v53 = v6;
  v7 = sub_1B11228AC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - v15;
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v55 = v5;
  v17 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v17, qword_1EDAD60D0);
  v18 = sub_1B112293C();
  v19 = sub_1B1122DFC();
  if (OUTLINED_FUNCTION_60(v19))
  {
    v20 = OUTLINED_FUNCTION_37();
    *v20 = 0;
    _os_log_impl(&dword_1B1064000, v18, v19, "force fetch bag", v20, 2u);
    OUTLINED_FUNCTION_2_0();
  }

  v21 = v3;

  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v22 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v52 = v22;
  sub_1B112285C();
  v23 = *(v1 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v24 = *(v10 + 16);
  v57 = v16;
  v51 = v24;
  (v24)(v14);
  v25 = *(v10 + 80);
  v26 = swift_allocObject();
  v49 = v12;
  v27 = v26;
  v28 = v14;
  v29 = v55;
  *(v26 + 16) = v55;
  *(v26 + 24) = v21;
  v56 = v10;
  v30 = *(v10 + 32);
  v50 = v28;
  v54 = v7;
  v30(v26 + ((v25 + 32) & ~v25));
  v62 = sub_1B10A29FC;
  v63 = v27;
  OUTLINED_FUNCTION_3_6();
  v59[1] = 1107296256;
  OUTLINED_FUNCTION_3();
  v60 = v31;
  v61 = &block_descriptor_12;
  v32 = _Block_copy(v59);

  v33 = [v23 remoteObjectProxyWithErrorHandler_];
  _Block_release(v32);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_53_1())
  {
    v52 = v58;
    v34 = v50;
    v35 = v54;
    v51(v50, v57, v54);
    v36 = v29;
    v37 = (v25 + 16) & ~v25;
    v38 = (v49 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    (v30)(v39 + v37, v34, v35);
    v40 = (v39 + v38);
    *v40 = v36;
    v40[1] = v21;
    v62 = sub_1B10A2A0C;
    v63 = v39;
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_12_2();
    v60 = v41;
    v61 = &block_descriptor_18;
    v42 = _Block_copy(v59);

    [v52 forceFetchBag:v53 reply:v42];
    _Block_release(v42);
    swift_unknownObjectRelease();
    v43 = v57;
    v44 = v35;
  }

  else
  {
    v29(0, 0);
    sub_1B1122E4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v45 = OUTLINED_FUNCTION_62();
    *(v45 + 16) = xmmword_1B1133BA0;
    *(v45 + 56) = MEMORY[0x1E69E6158];
    *(v45 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v45 + 32) = v46;
    *(v45 + 40) = v47;
    OUTLINED_FUNCTION_9_2();
    v48 = v57;
    sub_1B112284C();

    v43 = v48;
    v44 = v54;
  }

  (*(v56 + 8))(v43, v44);
  OUTLINED_FUNCTION_30();
}

void sub_1B109C9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_66();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v36 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v36, qword_1EDAD60D0);
  v37 = v35;
  v38 = sub_1B112293C();
  v39 = sub_1B1122DDC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_40_0();
    v41 = OUTLINED_FUNCTION_55();
    a18 = v41;
    *v40 = 136315138;
    swift_getErrorValue();
    v42 = sub_1B11230FC();
    v44 = sub_1B10784E0(v42, v43, &a18);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1B1064000, v38, v39, "%s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  v33(0, v35);
  sub_1B1122E4C();
  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v45 = OUTLINED_FUNCTION_64();
  *(v45 + 16) = xmmword_1B1133CF0;
  v46 = MEMORY[0x1E69E6158];
  *(v45 + 56) = MEMORY[0x1E69E6158];
  v47 = sub_1B106EAF4();
  *(v45 + 64) = v47;
  *(v45 + 32) = 0xD000000000000011;
  *(v45 + 40) = 0x80000001B1136570;
  a18 = v35;
  v48 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
  v49 = sub_1B1122A7C();
  *(v45 + 96) = v46;
  *(v45 + 104) = v47;
  *(v45 + 72) = v49;
  *(v45 + 80) = v50;
  OUTLINED_FUNCTION_23_1();
  sub_1B112284C();

  OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B109CC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1B1122E4C();
  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  sub_1B112285C();
  return a4(a1, a2);
}

void sub_1B109CD0C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_1B109CD98()
{
  OUTLINED_FUNCTION_41_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v60 = v11;
  v62 = sub_1B11228AC();
  v12 = OUTLINED_FUNCTION_0(v62);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_37_1(&v54);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_45();
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  v19 = swift_allocObject();
  v19[2] = sub_1B10A314C;
  v19[3] = v18;
  v19[4] = v6;
  v19[5] = v4;
  v68 = v2;
  _Block_copy(v2);
  v66 = v18;

  v69 = v6;

  v65 = v4;
  v70 = [v10 queryId];
  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v20 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v21 = OUTLINED_FUNCTION_64();
  *(v21 + 16) = xmmword_1B1133CF0;
  v22 = [v10 triggerEvent];
  v23 = MEMORY[0x1E69E6870];
  *(v21 + 56) = MEMORY[0x1E69E6810];
  *(v21 + 64) = v23;
  *(v21 + 32) = v22;
  v24 = [v10 queryId];
  v25 = MEMORY[0x1E69E7738];
  *(v21 + 96) = MEMORY[0x1E69E76D8];
  *(v21 + 104) = v25;
  *(v21 + 72) = v24;
  OUTLINED_FUNCTION_22_1();
  v59 = v20;
  OUTLINED_FUNCTION_32_1();
  sub_1B112284C();

  v63 = sub_1B10700E0();
  v61 = *(v8 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v26 = *(v14 + 16);
  v27 = v71;
  v64 = v0;
  v28 = v62;
  v56 = v26;
  (v26)(v71);
  v29 = *(v14 + 80);
  v30 = (v29 + 16) & ~v29;
  v54 = v16 + 7;
  v31 = (v16 + 7 + v30) & 0xFFFFFFFFFFFFFFF8;
  v57 = v10;
  v32 = swift_allocObject();
  v67 = v14;
  v55 = *(v14 + 32);
  v55(v32 + v30, v27, v28);
  OUTLINED_FUNCTION_29_0((v32 + v31));
  *(v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) = v70;
  v77 = sub_1B10A372C;
  v78 = v32;
  OUTLINED_FUNCTION_2_5();
  v74 = 1107296256;
  OUTLINED_FUNCTION_3();
  v75 = v33;
  v76 = &block_descriptor_188;
  v34 = _Block_copy(&v73);

  v35 = [v61 remoteObjectProxyWithErrorHandler_];
  _Block_release(v34);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_35_1())
  {
    v61 = v72;
    v36 = v71;
    v37 = v64;
    v56(v71, v64, v28);
    OUTLINED_FUNCTION_55_1();
    v38 = v28;
    v39 = swift_allocObject();
    *(v39 + 16) = v63;
    v55(v39 + ~v29, v36, v38);
    OUTLINED_FUNCTION_29_0((v39 + v14 + 16));
    v77 = sub_1B1070650;
    v78 = v39;
    v73 = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = sub_1B1070468;
    v76 = &block_descriptor_195;
    v40 = _Block_copy(&v73);

    swift_unknownObjectRetain();

    [v61 request:v60 request:v57 reply:v40];
    _Block_release(v40);
    swift_unknownObjectRelease();
    v41 = v68;
    v42 = v38;
    v43 = v67;
    v44 = v37;
  }

  else
  {
    v42 = v28;
    sub_1B1122E4C();
    v45 = OUTLINED_FUNCTION_62();
    *(v45 + 16) = xmmword_1B1133BA0;
    *(v45 + 56) = MEMORY[0x1E69E6158];
    *(v45 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v45 + 32) = v46;
    *(v45 + 40) = v47;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_32_1();
    v44 = v64;
    sub_1B112284C();

    OUTLINED_FUNCTION_50_1();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v49 = Strong;
      v41 = v68;
      _Block_copy(v68);

      v50 = OUTLINED_FUNCTION_67();
      v51(v50);
      _Block_release(v41);
    }

    else
    {
      v41 = v68;
      v52 = OUTLINED_FUNCTION_67();
      v53(v52);
    }

    v43 = v67;
  }

  swift_unknownObjectRelease();
  (*(v43 + 8))(v44, v42);

  _Block_release(v41);

  OUTLINED_FUNCTION_30();
}

void sub_1B109D408()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v69 = v8;
  v10 = v9;
  v60 = v11;
  v12 = sub_1B11228AC();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_37_1(&v53);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v21 = swift_allocObject();
  v59 = v7;
  v21[2] = v7;
  v21[3] = v5;
  v21[4] = v3;
  v21[5] = v1;
  v62 = v21;
  v68 = v5;

  v67 = v3;

  v65 = v1;
  v61 = [v10 queryId];
  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v22 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v23 = OUTLINED_FUNCTION_64();
  *(v23 + 16) = xmmword_1B1133CF0;
  v24 = [v10 triggerEvent];
  v25 = MEMORY[0x1E69E6870];
  *(v23 + 56) = MEMORY[0x1E69E6810];
  *(v23 + 64) = v25;
  *(v23 + 32) = v24;
  v26 = [v10 queryId];
  v27 = MEMORY[0x1E69E7738];
  *(v23 + 96) = MEMORY[0x1E69E76D8];
  *(v23 + 104) = v27;
  *(v23 + 72) = v26;
  OUTLINED_FUNCTION_22_1();
  v58 = v22;
  OUTLINED_FUNCTION_32_1();
  sub_1B112284C();

  v64 = sub_1B10700E0();
  v28 = *&v69[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection];
  v56 = v10;
  v29 = v70;
  v55 = *(v15 + 16);
  v55(v70, v20, v12);
  v30 = *(v15 + 80);
  v31 = (v30 + 16) & ~v30;
  v69 = v20;
  v53 = v17 + 7;
  v32 = (v17 + 7 + v31) & 0xFFFFFFFFFFFFFFF8;
  v33 = v12;
  v34 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v66 = v15;
  v36 = *(v15 + 32);
  v63 = v33;
  v54 = v36;
  v36(v35 + v31, v29, v33);
  v37 = (v35 + v32);
  v38 = v61;
  v39 = v62;
  *v37 = sub_1B10A3694;
  v37[1] = v39;
  *(v35 + v34) = v38;
  v76 = sub_1B10A372C;
  v77 = v35;
  OUTLINED_FUNCTION_2_5();
  v73 = 1107296256;
  OUTLINED_FUNCTION_3();
  v74 = v40;
  v75 = &block_descriptor_264;
  v41 = _Block_copy(&v72);

  v42 = [v28 remoteObjectProxyWithErrorHandler_];
  _Block_release(v41);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_35_1())
  {
    v59 = v71;
    v43 = v39;
    v44 = v70;
    v45 = v63;
    v55(v70, v69, v63);
    OUTLINED_FUNCTION_55_1();
    v46 = swift_allocObject();
    *(v46 + 16) = v64;
    v54(v46 + ~v30, v44, v45);
    v47 = (v46 + v15 + 16);
    *v47 = sub_1B10A3694;
    v47[1] = v43;
    v76 = sub_1B1070650;
    v77 = v46;
    v72 = MEMORY[0x1E69E9820];
    v73 = 1107296256;
    v74 = sub_1B1070468;
    v75 = &block_descriptor_271;
    v48 = _Block_copy(&v72);

    swift_unknownObjectRetain();

    [v59 request:v60 request:v56 reply:v48];
    _Block_release(v48);
    swift_unknownObjectRelease();
    v49 = v69;
  }

  else
  {
    sub_1B1122E4C();
    v50 = OUTLINED_FUNCTION_62();
    *(v50 + 16) = xmmword_1B1133BA0;
    *(v50 + 56) = MEMORY[0x1E69E6158];
    *(v50 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_32_1();
    v49 = v69;
    sub_1B112284C();

    OUTLINED_FUNCTION_50_1();
    swift_beginAccess();

    (v59)(0, 0);
    v45 = v63;
  }

  swift_unknownObjectRelease();
  (*(v66 + 8))(v49, v45);

  OUTLINED_FUNCTION_30();
}

id sub_1B109DA3C(uint64_t a1, void *a2, char *a3, const void *a4)
{
  v57 = a3;
  v54 = a1;
  v6 = sub_1B11228AC();
  v60 = *(v6 - 8);
  v7 = *(v60 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v59 = a4;
  _Block_copy(a4);
  v55 = [a2 queryId];
  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B1133CF0;
  v15 = [a2 triggerEvent];
  v16 = MEMORY[0x1E69E6870];
  *(v14 + 56) = MEMORY[0x1E69E6810];
  *(v14 + 64) = v16;
  *(v14 + 32) = v15;
  v17 = [a2 queryId];
  v18 = MEMORY[0x1E69E7738];
  *(v14 + 96) = MEMORY[0x1E69E76D8];
  *(v14 + 104) = v18;
  *(v14 + 72) = v17;
  v53 = v13;
  sub_1B112284C();

  v58 = sub_1B10700E0();
  v19 = *&v57[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection];
  v20 = v60;
  v48 = *(v60 + 16);
  v48(v9, v11, v6);
  v21 = *(v20 + 80);
  v51 = a2;
  v22 = (v21 + 16) & ~v21;
  v46 = v7 + 7;
  v57 = v11;
  v23 = (v7 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v49 = v21;
  v24 = swift_allocObject();
  v25 = *(v20 + 32);
  v50 = v9;
  v56 = v6;
  v47 = v25;
  v25(v24 + v22, v9, v6);
  v26 = (v24 + v23);
  *v26 = sub_1B10728B8;
  v26[1] = v12;
  v27 = v55;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v55;
  v66 = sub_1B10A372C;
  v67 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_1B108FBF8;
  v65 = &block_descriptor_114;
  v28 = _Block_copy(&aBlock);

  v29 = [v19 remoteObjectProxyWithErrorHandler_];
  _Block_release(v28);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  v30 = v12;
  v31 = v27;
  if (swift_dynamicCast())
  {
    v33 = v49;
    v32 = v50;
    v53 = v61;
    v34 = v56;
    v35 = v57;
    v48(v50, v57, v56);
    v36 = (v33 + 24) & ~v33;
    v37 = v31;
    v38 = (v46 + v36) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = v58;
    v47(v39 + v36, v32, v34);
    v40 = (v39 + v38);
    v31 = v37;
    *v40 = sub_1B10728B8;
    v40[1] = v30;
    v66 = sub_1B1070650;
    v67 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v64 = sub_1B1070468;
    v65 = &block_descriptor_121;
    v41 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v53 request:v54 request:v51 reply:v41];
    _Block_release(v41);
    swift_unknownObjectRelease();
    v42 = v59;
  }

  else
  {
    sub_1B1122E4C();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1B1133BA0;
    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = sub_1B106EAF4();
    strcpy((v43 + 32), "casting_failed");
    *(v43 + 47) = -18;
    v35 = v57;
    sub_1B112284C();

    v42 = v59;
    (*(v59 + 2))(v59, v27, 0, 0);
    v34 = v56;
  }

  swift_unknownObjectRelease();
  (*(v60 + 8))(v35, v34);

  _Block_release(v42);
  return v31;
}

void sub_1B109E0D8()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v62 = v2;
  v63 = v3;
  v5 = v4;
  v59 = v6;
  v7 = sub_1B11228AC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_37_1(&v52);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v65 = [v5 queryId];
  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v16 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v17 = OUTLINED_FUNCTION_64();
  *(v17 + 16) = xmmword_1B1133CF0;
  v18 = [v5 triggerEvent];
  v19 = MEMORY[0x1E69E6870];
  *(v17 + 56) = MEMORY[0x1E69E6810];
  *(v17 + 64) = v19;
  *(v17 + 32) = v18;
  v20 = [v5 queryId];
  v21 = MEMORY[0x1E69E7738];
  *(v17 + 96) = MEMORY[0x1E69E76D8];
  *(v17 + 104) = v21;
  *(v17 + 72) = v20;
  OUTLINED_FUNCTION_22_1();
  v58 = v16;
  OUTLINED_FUNCTION_32_1();
  sub_1B112284C();

  v57 = v5;
  v61 = sub_1B10700E0();
  v22 = *(v1 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v23 = v10;
  v24 = v67;
  v55 = *(v10 + 16);
  v55(v67, v15, v7);
  v66 = v15;
  v25 = *(v10 + 80);
  v26 = (v25 + 16) & ~v25;
  v53 = v12 + 7;
  v27 = (v12 + 7 + v26) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v64 = v23;
  v30 = *(v23 + 32);
  v60 = v7;
  v54 = v30;
  v30(v29 + v26, v24, v7);
  v31 = (v29 + v27);
  v33 = v62;
  v32 = v63;
  *v31 = v62;
  v31[1] = v32;
  v34 = v65;
  *(v29 + v28) = v65;
  v73 = sub_1B10A2A24;
  v74 = v29;
  OUTLINED_FUNCTION_2_5();
  v70 = 1107296256;
  OUTLINED_FUNCTION_3();
  v71 = v35;
  v72 = &block_descriptor_24;
  v36 = _Block_copy(&v69);

  v37 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v36);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_35_1())
  {
    v38 = v33;
    v39 = v67;
    v58 = v68;
    v40 = v60;
    v55(v67, v66, v60);
    v41 = (v25 + 24) & ~v25;
    v42 = (v53 + v41) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = v61;
    v54(v43 + v41, v39, v40);
    v44 = (v43 + v42);
    *v44 = v38;
    v44[1] = v32;
    v73 = sub_1B1070658;
    v74 = v43;
    OUTLINED_FUNCTION_2_5();
    v70 = 1107296256;
    v71 = sub_1B1070468;
    v72 = &block_descriptor_30;
    v45 = _Block_copy(&v69);

    swift_unknownObjectRetain();

    [v58 request:v59 request:v57 reply:v45];
    _Block_release(v45);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B1122E4C();
    v46 = OUTLINED_FUNCTION_62();
    *(v46 + 16) = xmmword_1B1133BA0;
    *(v46 + 56) = MEMORY[0x1E69E6158];
    *(v46 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v46 + 32) = v47;
    *(v46 + 40) = v48;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_32_1();
    sub_1B112284C();

    v33(v34, 0, 0);
  }

  swift_unknownObjectRelease();
  v49 = *(v64 + 8);
  v50 = OUTLINED_FUNCTION_23_0();
  v51(v50);
  OUTLINED_FUNCTION_30();
}

void sub_1B109E624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_66();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v52 = v34;
  v36 = v35;
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v37 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v37, qword_1EDAD60D0);
  v38 = v36;
  v39 = sub_1B112293C();
  v40 = sub_1B1122DDC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_40_0();
    v42 = OUTLINED_FUNCTION_55();
    a18 = v42;
    *v41 = 136315138;
    swift_getErrorValue();
    v43 = sub_1B11230FC();
    v45 = sub_1B10784E0(v43, v44, &a18);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1B1064000, v39, v40, "%s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  sub_1B1122E4C();
  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v46 = OUTLINED_FUNCTION_64();
  *(v46 + 16) = xmmword_1B1133CF0;
  v47 = MEMORY[0x1E69E6158];
  *(v46 + 56) = MEMORY[0x1E69E6158];
  v48 = sub_1B106EAF4();
  *(v46 + 64) = v48;
  *(v46 + 32) = 0xD000000000000011;
  *(v46 + 40) = 0x80000001B1136570;
  a18 = v36;
  v49 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
  v50 = sub_1B1122A7C();
  *(v46 + 96) = v47;
  *(v46 + 104) = v48;
  *(v46 + 72) = v50;
  *(v46 + 80) = v51;
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_32_1();
  sub_1B112284C();

  v52(v33, 0, v36);
  OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B109E998(uint64_t a1, uint64_t a2)
{
  result = sub_1B106AE3C();
  if (result)
  {
    v8[4] = a1;
    v8[5] = a2;
    OUTLINED_FUNCTION_14_1();
    v8[1] = 1107296256;
    v8[2] = sub_1B109EA48;
    v8[3] = &block_descriptor_33;
    v5 = _Block_copy(v8);

    v6 = OUTLINED_FUNCTION_1();
    [v6 v7];
    _Block_release(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B109EA48(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CE8, &qword_1B1134318);
    v2 = sub_1B1122B8C();
  }

  v4(v2);
}

void sub_1B109EB58(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CE8, &qword_1B1134318);
    v3 = sub_1B1122B7C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1B109EBDC()
{
  OUTLINED_FUNCTION_57();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1B11228AC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_39_0();
  v16 = sub_1B106AE3C();
  if (v16)
  {
    v28 = v16;
    v29 = v4;
    v30 = v2;
    if (qword_1EDAD5DF0 != -1)
    {
      OUTLINED_FUNCTION_5_0();
    }

    qword_1EDAD64F0;
    sub_1B112287C();
    sub_1B1122E5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v17 = OUTLINED_FUNCTION_62();
    *(v17 + 16) = xmmword_1B1133BA0;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1B106EAF4();
    *(v17 + 32) = v8;
    *(v17 + 40) = v6;

    OUTLINED_FUNCTION_23_1();
    sub_1B112284C();

    v18 = sub_1B1122A4C();
    (*(v12 + 16))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v9);
    v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v20 = swift_allocObject();
    (*(v12 + 32))(v20 + v19, &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v21 = (v20 + ((v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    v22 = v30;
    *v21 = v29;
    v21[1] = v22;
    v31[4] = sub_1B10A2A28;
    v31[5] = v20;
    OUTLINED_FUNCTION_5_5();
    v31[1] = 1107296256;
    v31[2] = sub_1B109EF84;
    v31[3] = &block_descriptor_39_0;
    v23 = _Block_copy(v31);

    [v28 fileHandleAndAttributesForResource:v18 completion:v23];
    _Block_release(v23);
    swift_unknownObjectRelease();

    v24 = *(v12 + 8);
    v25 = OUTLINED_FUNCTION_0_5();
    v26(v25);
  }

  OUTLINED_FUNCTION_4_2();
}

uint64_t sub_1B109EEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B1122E4C();
  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  sub_1B112285C();
  return a5(a1, a2, a3);
}

uint64_t sub_1B109EF84(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_1B11229EC();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a4;
  v7(a2, v8, a4);
}

void sub_1B109F104(uint64_t a1, void (**a2)(void, void))
{
  v3 = sub_1B11228AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  _Block_copy(a2);
  v11 = sub_1B106AE3C();
  if (v11)
  {
    v12 = v11;
    if (qword_1EDAD5DF0 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDAD64F0;
    sub_1B112287C();
    sub_1B1122E5C();
    sub_1B112285C();
    (*(v4 + 16))(v7, v9, v3);
    v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v15 = (v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    (*(v4 + 32))(v16 + v14, v7, v3);
    v17 = (v16 + v15);
    *v17 = sub_1B10A3090;
    v17[1] = v10;
    aBlock[4] = sub_1B10A3728;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B109F844;
    aBlock[3] = &block_descriptor_98;
    v18 = _Block_copy(aBlock);

    [v12 getImageMap_];
    _Block_release(v18);
    swift_unknownObjectRelease();
    (*(v4 + 8))(v9, v3);

    _Block_release(a2);
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      swift_once();
    }

    v19 = sub_1B112296C();
    __swift_project_value_buffer(v19, qword_1EDAD60D0);
    v20 = sub_1B112293C();
    v21 = sub_1B1122DEC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B1064000, v20, v21, "at getImageMap: remoteObjectProxyWithErrorHandler does not implement PARDaemonXPC", v22, 2u);
      MEMORY[0x1B272EDD0](v22, -1, -1);
    }

    a2[2](a2, 0);

    _Block_release(a2);
  }
}

void sub_1B109F4D8()
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_68();
  v2 = sub_1B11228AC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v9 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - v10;
  v12 = sub_1B106AE3C();
  if (v12)
  {
    v13 = v12;
    if (qword_1EDAD5DF0 != -1)
    {
      OUTLINED_FUNCTION_5_0();
    }

    v14 = qword_1EDAD64F0;
    sub_1B112287C();
    sub_1B1122E5C();
    sub_1B112285C();
    (*(v5 + 16))(v9, v11, v2);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    (*(v5 + 32))(v17 + v15, v9, v2);
    v18 = (v17 + v16);
    *v18 = v1;
    v18[1] = v0;
    v29[4] = sub_1B10A2AC4;
    v29[5] = v17;
    OUTLINED_FUNCTION_5_5();
    v29[1] = 1107296256;
    v29[2] = sub_1B109F844;
    v29[3] = &block_descriptor_45_0;
    v19 = _Block_copy(v29);

    [v13 getImageMap_];
    _Block_release(v19);
    swift_unknownObjectRelease();
    v20 = *(v5 + 8);
    v21 = OUTLINED_FUNCTION_23_0();
    v22(v21);
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v23 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v23, qword_1EDAD60D0);
    v24 = sub_1B112293C();
    v25 = sub_1B1122DEC();
    if (OUTLINED_FUNCTION_54_1(v25))
    {
      v26 = OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_78(v26);
      OUTLINED_FUNCTION_33_1(&dword_1B1064000, v27, v28, "at getImageMap: remoteObjectProxyWithErrorHandler does not implement PARDaemonXPC");
      OUTLINED_FUNCTION_40_1();
    }

    v1(0);
  }

  OUTLINED_FUNCTION_4_2();
}

uint64_t sub_1B109F798(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1B1122E4C();
  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  sub_1B112285C();
  return a3(a1);
}

uint64_t sub_1B109F844(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1B11229EC();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

void sub_1B109F92C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B11229DC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1B109F9A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char aBlock, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_66();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if (sub_1B106AE3C())
  {
    v56 = v35;
    v38 = sub_1B1099EF8(v37);
    v39 = 0;
    v40 = MEMORY[0x1E69E7CC0];
    while (v38 != v39)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1B272DFA0](v39, v37);
      }

      else
      {
        if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v41 = *(v37 + 8 * v39 + 32);
      }

      v42 = v41;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v43 = PAREngagedResult.encoded()();
      v45 = v44;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1B10A24E8(0, *(v40 + 2) + 1, 1, v40);
      }

      v47 = *(v40 + 2);
      v46 = *(v40 + 3);
      if (v47 >= v46 >> 1)
      {
        v40 = sub_1B10A24E8((v46 > 1), v47 + 1, 1, v40);
      }

      *(v40 + 2) = v47 + 1;
      v48 = &v40[16 * v47];
      *(v48 + 4) = v43;
      *(v48 + 5) = v45;
      ++v39;
    }

    v49 = sub_1B1122B7C();

    if (v56)
    {
      a17 = v56;
      a18 = v33;
      OUTLINED_FUNCTION_27_1();
      OUTLINED_FUNCTION_28_1();
      a15 = v50;
      a16 = &block_descriptor_253;
      v51 = _Block_copy(&aBlock);
    }

    else
    {
      v51 = 0;
    }

    v54 = OUTLINED_FUNCTION_1();
    [v54 v55];
    _Block_release(v51);
    swift_unknownObjectRelease();

    goto LABEL_22;
  }

  if (!v35)
  {
LABEL_22:
    OUTLINED_FUNCTION_48_1();
    return;
  }

  sub_1B10A2AC8();
  swift_allocError();
  v35();
  OUTLINED_FUNCTION_48_1();
}

void sub_1B109FBD4()
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_45();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  _Block_copy(v0);
  if (sub_1B106AE3C())
  {
    v2 = sub_1B1122A4C();
    OUTLINED_FUNCTION_50_0();
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1B10A3744;
    *(v3 + 24) = v1;
    v19[4] = sub_1B10A3144;
    v19[5] = v3;
    OUTLINED_FUNCTION_14_1();
    v19[1] = 1107296256;
    OUTLINED_FUNCTION_16_2();
    v19[2] = v4;
    v19[3] = &block_descriptor_175;
    v5 = _Block_copy(v19);

    v6 = OUTLINED_FUNCTION_45_1();
    [v6 v7];
    _Block_release(v5);

    swift_unknownObjectRelease();

    _Block_release(v0);
    OUTLINED_FUNCTION_88();
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v8 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v8, qword_1EDAD60D0);
    v9 = sub_1B112293C();
    v10 = sub_1B1122DDC();
    if (OUTLINED_FUNCTION_54_1(v10))
    {
      v11 = OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_78(v11);
      OUTLINED_FUNCTION_33_1(&dword_1B1064000, v12, v13, "Invalid XPC remote instance");
      OUTLINED_FUNCTION_40_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
    v14 = sub_1B1122B7C();
    v15 = OUTLINED_FUNCTION_44_1();
    v16(v15, v14);

    OUTLINED_FUNCTION_88();

    _Block_release(v17);
  }
}

uint64_t sub_1B109FE1C(void *a1, char *a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_1EDAD60C0 != -1)
    {
LABEL_30:
      swift_once();
    }

    v4 = sub_1B112296C();
    __swift_project_value_buffer(v4, qword_1EDAD60D0);

    v5 = sub_1B112293C();
    v6 = sub_1B1122DCC();
    v25 = a2;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3[2];

      _os_log_impl(&dword_1B1064000, v5, v6, "Received %ld recent results", v7, 0xCu);
      MEMORY[0x1B272EDD0](v7, -1, -1);
    }

    else
    {
    }

    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
    v15 = v3[2];
    v16 = (v3 + 5);
    v3 = &unk_1EDAD5570;
    v24 = v16;
LABEL_12:
    a2 = &v16[16 * v13];
    while (v15 != v13)
    {
      if (v13 >= v15)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_29;
      }

      v19 = *(a2 - 1);
      v18 = *a2;
      sub_1B1066864(0, &unk_1EDAD5570, off_1E7AC5108);
      sub_1B1070FD4(v19, v18);
      ++v13;
      a2 += 16;
      if (PAREngagedResult.init(encoded:)())
      {
        MEMORY[0x1B272DB50]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B1122BAC();
        }

        sub_1B1122BCC();
        v14 = v26;
        v13 = v17;
        v16 = v24;
        goto LABEL_12;
      }
    }

    v20 = sub_1B112293C();
    v21 = sub_1B1122DCC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = sub_1B1099EF8(v14);

      _os_log_impl(&dword_1B1064000, v20, v21, "%ld recent results deserialized", v22, 0xCu);
      MEMORY[0x1B272EDD0](v22, -1, -1);
    }

    else
    {
    }

    if (v14 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
      v23 = sub_1B112305C();
    }

    else
    {
      sub_1B11230BC();
      v23 = v14;
    }

    (v25)(v23);
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1B112296C();
    __swift_project_value_buffer(v8, qword_1EDAD60D0);
    v9 = sub_1B112293C();
    v10 = sub_1B1122DDC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B1064000, v9, v10, "Received nil for topEngagedResults", v11, 2u);
      MEMORY[0x1B272EDD0](v11, -1, -1);
    }

    return (a2)(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1B10A0268(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1B1122B8C();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

void sub_1B10A02E4()
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_45();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  _Block_copy(v0);
  if (sub_1B106AE3C())
  {
    v2 = sub_1B1122A4C();
    OUTLINED_FUNCTION_50_0();
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1B10A3134;
    *(v3 + 24) = v1;
    v19[4] = sub_1B10A313C;
    v19[5] = v3;
    OUTLINED_FUNCTION_14_1();
    v19[1] = 1107296256;
    OUTLINED_FUNCTION_16_2();
    v19[2] = v4;
    v19[3] = &block_descriptor_165;
    v5 = _Block_copy(v19);

    v6 = OUTLINED_FUNCTION_45_1();
    [v6 v7];
    _Block_release(v5);

    swift_unknownObjectRelease();

    _Block_release(v0);
    OUTLINED_FUNCTION_88();
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v8 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v8, qword_1EDAD60D0);
    v9 = sub_1B112293C();
    v10 = sub_1B1122DDC();
    if (OUTLINED_FUNCTION_54_1(v10))
    {
      v11 = OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_78(v11);
      OUTLINED_FUNCTION_33_1(&dword_1B1064000, v12, v13, "Invalid XPC remote instance");
      OUTLINED_FUNCTION_40_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
    v14 = sub_1B1122B7C();
    v15 = OUTLINED_FUNCTION_44_1();
    v16(v15, v14);

    OUTLINED_FUNCTION_88();

    _Block_release(v17);
  }
}

void sub_1B10A052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (sub_1B106AE3C())
  {
    v13 = sub_1B1122A4C();
    OUTLINED_FUNCTION_50_0();
    v14 = swift_allocObject();
    *(v14 + 16) = a5;
    *(v14 + 24) = a6;
    v30 = a8;
    v31 = v14;
    OUTLINED_FUNCTION_9_1();
    v27 = 1107296256;
    OUTLINED_FUNCTION_16_2();
    v28 = v15;
    v29 = a9;
    v16 = _Block_copy(aBlock);

    v17 = *a10;
    v18 = OUTLINED_FUNCTION_45_1();
    [v18 v19];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v20 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v20, qword_1EDAD60D0);
    v21 = sub_1B112293C();
    v22 = sub_1B1122DDC();
    if (OUTLINED_FUNCTION_54_1(v22))
    {
      v23 = OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_78(v23);
      OUTLINED_FUNCTION_33_1(&dword_1B1064000, v24, v25, "Invalid XPC remote instance");
      OUTLINED_FUNCTION_40_1();
    }

    a5(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1B10A06B0(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v19 = MEMORY[0x1E69E7CC0];
    v5 = *(a1 + 16);
    v6 = a1 + 40;
    v17 = a1 + 40;
LABEL_3:
    v7 = (v6 + 16 * v3);
    while (v5 != v3)
    {
      if (v3 >= v5)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_22;
      }

      v10 = *(v7 - 1);
      v9 = *v7;
      sub_1B1066864(0, &unk_1EDAD5570, off_1E7AC5108);
      sub_1B1070FD4(v10, v9);
      ++v3;
      v7 += 2;
      if (PAREngagedResult.init(encoded:)())
      {
        MEMORY[0x1B272DB50]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B1122BAC();
        }

        sub_1B1122BCC();
        v4 = v19;
        v3 = v8;
        v6 = v17;
        goto LABEL_3;
      }
    }

    if (!(v4 >> 62))
    {

      sub_1B11230BC();
      v11 = v4;
      goto LABEL_13;
    }

LABEL_23:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
    v11 = sub_1B112305C();

LABEL_13:

    a2(v11);
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B112296C();
    __swift_project_value_buffer(v13, qword_1EDAD60D0);
    v14 = sub_1B112293C();
    v15 = sub_1B1122DDC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B1064000, v14, v15, "Received nil for allEngagedResults", v16, 2u);
      MEMORY[0x1B272EDD0](v16, -1, -1);
    }

    return (a2)(MEMORY[0x1E69E7CC0]);
  }
}

void sub_1B10A0964()
{
  v0 = sub_1B106AE3C();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1B11218EC();
    v3 = sub_1B11218EC();
    [v1 clearEngagementsFromDate:v2 toDate:v3];
    swift_unknownObjectRelease();
  }
}

void sub_1B10A0B40()
{
  OUTLINED_FUNCTION_25_1();
  v1 = sub_1B106AE3C();
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_69();
    v3 = sub_1B1122A4C();
    [v2 clearEngagementsWithTitle:v3 type:v0];
    swift_unknownObjectRelease();
  }
}

void sub_1B10A0C50(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char aBlock, uint64_t a14, uint64_t a15, void *a16, uint64_t (*a17)(uint64_t a1), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_66();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if (sub_1B106AE3C())
  {
    v38 = sub_1B1099EF8(v37);
    v39 = 0;
    v40 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v38 == v39)
      {
        v49 = sub_1B1122B7C();

        OUTLINED_FUNCTION_50_0();
        v50 = swift_allocObject();
        *(v50 + 16) = v35;
        *(v50 + 24) = v33;
        a17 = sub_1B10A2B1C;
        a18 = v50;
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_28_1();
        a15 = v51;
        a16 = &block_descriptor_51;
        v52 = _Block_copy(&aBlock);
        sub_1B1098EF0(v35);

        v53 = OUTLINED_FUNCTION_1();
        [v53 v54];
        _Block_release(v52);
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      if ((v37 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1B272DFA0](v39, v37);
      }

      else
      {
        if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v41 = *(v37 + 8 * v39 + 32);
      }

      v42 = v41;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v43 = PAREngagedResult.encoded()();
      v45 = v44;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1B10A24E8(0, *(v40 + 2) + 1, 1, v40);
      }

      v47 = *(v40 + 2);
      v46 = *(v40 + 3);
      if (v47 >= v46 >> 1)
      {
        v40 = sub_1B10A24E8((v46 > 1), v47 + 1, 1, v40);
      }

      *(v40 + 2) = v47 + 1;
      v48 = &v40[16 * v47];
      *(v48 + 4) = v43;
      *(v48 + 5) = v45;
      ++v39;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else if (v35)
  {
    sub_1B10A2AC8();
    swift_allocError();
    v35();
    OUTLINED_FUNCTION_48_1();
  }

  else
  {
LABEL_15:
    OUTLINED_FUNCTION_48_1();
  }
}

uint64_t sub_1B10A0E94(uint64_t result, void (*a2)(uint64_t))
{
  if (a2)
  {
    v3 = result;

    a2(v3);

    return sub_1B1099F00(a2);
  }

  return result;
}

void *sub_1B10A0FEC()
{
  OUTLINED_FUNCTION_68();
  result = sub_1B106AE3C();
  if (result)
  {
    [result updateParametersForSmartSearchV1:v1 smartSearchV2:v0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void PARSearchClient.bagDidLoad(_:error:)()
{
  OUTLINED_FUNCTION_57();
  v3 = v2;
  v5 = v4;
  v6 = sub_1B112298C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_73();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_11_1();
  if (!v3)
  {
    if (v5)
    {
      v64 = v16;
      v27 = v5;
      v28 = sub_1B10A2988(v27);
      v30 = 0x69737265766F6E5BLL;
      if (v29)
      {
        v30 = v28;
      }

      v63 = v30;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0xEB000000005D6E6FLL;
      }

      if (qword_1EDAD60C0 != -1)
      {
        OUTLINED_FUNCTION_12();
      }

      v32 = sub_1B112296C();
      __swift_project_value_buffer(v32, qword_1EDAD60D0);
      v33 = v27;
      v34 = v0;

      v35 = sub_1B112293C();
      v36 = sub_1B1122DFC();

      if (os_log_type_enabled(v35, v36))
      {
        v62 = v9;
        v37 = swift_slowAlloc();
        v60 = v36;
        v59 = swift_slowAlloc();
        v61 = OUTLINED_FUNCTION_55();
        v66[0] = v61;
        *v37 = 138412802;
        *(v37 + 4) = v34;
        *v59 = v34;
        *(v37 + 12) = 2080;
        v38 = v34;
        v39 = v35;
        v40 = sub_1B10784E0(v63, v31, v66);

        *(v37 + 14) = v40;
        *(v37 + 22) = 1024;
        LODWORD(v40) = [v33 isEnabled];

        *(v37 + 24) = v40;
        _os_log_impl(&dword_1B1064000, v39, v60, "%@ got bag %s enabled %{BOOL}d", v37, 0x1Cu);
        sub_1B1067964(v59, &qword_1EB739E58, qword_1B11345F0);
        OUTLINED_FUNCTION_2_0();
        __swift_destroy_boxed_opaque_existential_1(v61);
        OUTLINED_FUNCTION_2_0();
        v9 = v62;
        OUTLINED_FUNCTION_2_0();
      }

      else
      {
      }

      v47 = *&v34[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_queue];
      OUTLINED_FUNCTION_50_0();
      v48 = swift_allocObject();
      *(v48 + 16) = v34;
      *(v48 + 24) = v33;
      v66[4] = sub_1B10A2B24;
      v66[5] = v48;
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_13_2(COERCE_DOUBLE(1107296256));
      v66[2] = v49;
      v66[3] = &block_descriptor_57;
      v50 = _Block_copy(v66);
      v51 = v33;
      v52 = v34;
      sub_1B112299C();
      OUTLINED_FUNCTION_17_1();
      sub_1B1067610(v53, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB73A1E8, &unk_1B11348D0);
      sub_1B1067F54();
      OUTLINED_FUNCTION_20_1();
      sub_1B1122F5C();
      v55 = OUTLINED_FUNCTION_60_0();
      MEMORY[0x1B272DE10](v55);
      _Block_release(v50);

      v56 = *(v9 + 8);
      v57 = OUTLINED_FUNCTION_0_5();
      v58(v57);
      (*(v64 + 8))(v1, v12);

      goto LABEL_28;
    }

    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v43 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v43, qword_1EDAD60D0);
    v65 = sub_1B112293C();
    v44 = sub_1B1122DDC();
    if (os_log_type_enabled(v65, v44))
    {
      v45 = OUTLINED_FUNCTION_37();
      *v45 = 0;
      _os_log_impl(&dword_1B1064000, v65, v44, "nil bag", v45, 2u);
      OUTLINED_FUNCTION_2_0();
    }

    OUTLINED_FUNCTION_4_2();

LABEL_18:

    return;
  }

  v17 = v3;
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v18 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v18, qword_1EDAD60D0);
  v19 = v3;
  v20 = sub_1B112293C();
  v21 = sub_1B1122DDC();

  if (!os_log_type_enabled(v20, v21))
  {

    OUTLINED_FUNCTION_4_2();

    goto LABEL_18;
  }

  v22 = OUTLINED_FUNCTION_40_0();
  v23 = OUTLINED_FUNCTION_55();
  v66[0] = v23;
  *v22 = 136315138;
  swift_getErrorValue();
  v24 = sub_1B11230FC();
  v26 = sub_1B10784E0(v24, v25, v66);

  *(v22 + 4) = v26;
  _os_log_impl(&dword_1B1064000, v20, v21, "error loading bag %s", v22, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_2_0();

LABEL_28:
  OUTLINED_FUNCTION_4_2();
}

void sub_1B10A16CC(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC10CoreParsec15PARSearchClient_sessions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  v7 = v5 + 32;

  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      return;
    }

    if (i >= *(v5 + 16))
    {
      break;
    }

    sub_1B106752C();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B1067964(&v11, &qword_1EB73A298, &qword_1B1134BE0);
    if (Strong)
    {
      v10 = a2;
      sub_1B106ECF0(a2);
    }

    v7 += 8;
  }

  __break(1u);
}

void sub_1B10A18A8()
{
  OUTLINED_FUNCTION_57();
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1B112298C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v32 = OUTLINED_FUNCTION_73();
  v15 = OUTLINED_FUNCTION_0(v32);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_1();
  v31 = *&v0[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_queue];
  OUTLINED_FUNCTION_51_1();
  v20 = swift_allocObject();
  v20[2] = v0;
  v20[3] = v8;
  v20[4] = v6;
  v33[4] = v4;
  v33[5] = v20;
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_13_2(COERCE_DOUBLE(1107296256));
  v33[2] = v21;
  v33[3] = v30;
  v22 = _Block_copy(v33);
  v23 = v0;

  sub_1B112299C();
  OUTLINED_FUNCTION_17_1();
  sub_1B1067610(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB73A1E8, &unk_1B11348D0);
  sub_1B1067F54();
  OUTLINED_FUNCTION_20_1();
  sub_1B1122F5C();
  v26 = OUTLINED_FUNCTION_60_0();
  MEMORY[0x1B272DE10](v26);
  _Block_release(v22);
  v27 = *(v12 + 8);
  v28 = OUTLINED_FUNCTION_0_5();
  v29(v28);
  (*(v17 + 8))(v1, v32);

  OUTLINED_FUNCTION_4_2();
}

void sub_1B10A1AAC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = OBJC_IVAR____TtC10CoreParsec15PARSearchClient_sessions;
  OUTLINED_FUNCTION_50_1();
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = *(v6 + 16);
  v8 = v6 + 32;

  v9 = 0;
  v10 = &qword_1EB73A298;
  v11 = 0x1FB453000uLL;
  while (1)
  {
    if (v7 == v9)
    {

      return;
    }

    if (v9 >= *(v6 + 16))
    {
      break;
    }

    sub_1B106752C();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B1067964(v21, v10, &qword_1B1134BE0);
    if (!Strong)
    {
      goto LABEL_16;
    }

    v13 = swift_unknownObjectWeakLoadStrong();
    if (!v13)
    {

      goto LABEL_16;
    }

    v14 = v13;
    v15 = v10;
    v16 = v11;
    v17 = [v13 delegate];
    if (!v17)
    {

LABEL_14:
      v11 = v16;
      goto LABEL_15;
    }

    v18 = v17;
    if ([v17 (v11 + 3320)])
    {
      if ([v18 (v11 + 3320)])
      {
        swift_unknownObjectRetain();
        v19 = sub_1B1122A4C();
        [v18 *a4];

        swift_unknownObjectRelease_n();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      goto LABEL_14;
    }

    swift_unknownObjectRelease();

LABEL_15:
    v10 = v15;
LABEL_16:
    v8 += 8;
    ++v9;
  }

  __break(1u);
}

uint64_t sub_1B10A1CB8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1B1122A5C();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t PARSearchClient.didReceiveFeedbackData(_:agent:)()
{
  v1 = v0 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_receivingStreamDelegate;
  OUTLINED_FUNCTION_50_1();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v5 = OUTLINED_FUNCTION_69();
    v6(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B10A1EC0(void *a1)
{
  if (!a1)
  {
    return 0x296C696E28;
  }

  v1 = a1;
  v2 = [v1 isSubscribed];

  if (v2)
  {
    return 7562617;
  }

  else
  {
    return 28526;
  }
}

void sub_1B10A1F34(void *a1)
{
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v2 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v2, qword_1EDAD60D0);
  v3 = a1;
  oslog = sub_1B112293C();
  v4 = sub_1B1122DDC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = OUTLINED_FUNCTION_55();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1B11230FC();
    v9 = sub_1B10784E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B1064000, oslog, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_2_0();
  }

  else
  {
  }
}

uint64_t sub_1B10A2094(void *a1, id a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5, const char *a6)
{
  if (a2)
  {
    v10 = a2;
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v11 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v11, qword_1EDAD60D0);
    v12 = a2;
    v13 = sub_1B112293C();
    v14 = sub_1B1122DDC();

    if (!os_log_type_enabled(v13, v14))
    {

      goto LABEL_12;
    }

    v15 = OUTLINED_FUNCTION_40_0();
    v37 = OUTLINED_FUNCTION_55();
    v38 = v37;
    *v15 = 136315138;
    v16 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
    v17 = sub_1B1122A7C();
    v19 = sub_1B10784E0(v17, v18, &v38);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1B1064000, v13, v14, a6, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v21 = sub_1B112296C();
    __swift_project_value_buffer(v21, qword_1EDAD60D0);
    v22 = a1;
    v23 = a3;
    v13 = sub_1B112293C();
    v24 = sub_1B1122DCC();

    if (os_log_type_enabled(v13, v24))
    {
      v25 = OUTLINED_FUNCTION_40_0();
      v26 = OUTLINED_FUNCTION_55();
      v38 = v26;
      *v25 = 136315138;
      v27 = sub_1B10A1EC0(a1);
      v29 = sub_1B10784E0(v27, v28, &v38);

      *(v25 + 4) = v29;
      OUTLINED_FUNCTION_42_0();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_2_0();
    }
  }

LABEL_12:
  v35 = OUTLINED_FUNCTION_23_0();
  return a4(v35);
}

void sub_1B10A23AC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_63();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_61_0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_1B10A2708(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_1B10A27FC(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1B10A24E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A2A0, &unk_1B1134BE8);
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

void sub_1B10A25F0(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_63();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_61_0();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A280, &qword_1B1134BB8);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[2 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_36();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A288, qword_1B1134BC0);
    OUTLINED_FUNCTION_36();
    swift_arrayInitWithCopy();
  }
}

size_t sub_1B10A2708(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  OUTLINED_FUNCTION_7(v8);
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

uint64_t sub_1B10A27FC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_79();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_11(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    v17 = OUTLINED_FUNCTION_80();

    return MEMORY[0x1EEE6BD00](v17, v18, v19, v20);
  }

  else if (a3 != v5)
  {
    v13 = OUTLINED_FUNCTION_80();

    return MEMORY[0x1EEE6BCF8](v13, v14, v15, v16);
  }

  return result;
}

unint64_t sub_1B10A28B8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  if (a3 >= result && result + 8 * a2 > a3)
  {
    if (a3 != result)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A298, &qword_1B1134BE0);

      return MEMORY[0x1EEE6BCF8](a3, v5, a2, v8);
    }
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A298, &qword_1B1134BE0);

    return MEMORY[0x1EEE6BD00](a3, v5, a2, v7);
  }

  return result;
}

uint64_t sub_1B10A2988(void *a1)
{
  v1 = [a1 version];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1122A5C();

  return v3;
}

uint64_t sub_1B10A2A28()
{
  OUTLINED_FUNCTION_25_1();
  v2 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_24_1();
  v10 = (v1 + v9);
  v11 = *v10;
  v12 = v10[1];
  v13 = OUTLINED_FUNCTION_69();

  return sub_1B109EEC0(v13, v14, v0, v15, v16);
}

unint64_t sub_1B10A2AC8()
{
  result = qword_1EB73A1D8;
  if (!qword_1EB73A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB73A1D8);
  }

  return result;
}

uint64_t sub_1B10A2EBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for PARSearchClient.SearchClientError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B10A2FC0()
{
  result = qword_1EB73A278;
  if (!qword_1EB73A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB73A278);
  }

  return result;
}

uint64_t sub_1B10A3098()
{
  OUTLINED_FUNCTION_83();
  v2 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_24_1();
  v11 = v1 + v10;
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_1B109F798(v0, v1 + v9, v12);
}

uint64_t sub_1B10A3168()
{
  OUTLINED_FUNCTION_68();
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B10A369C;

  return sub_1B1082A70(v2, v0, v1 + 16);
}

uint64_t sub_1B10A3210(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B10A32AC;

  return sub_1B1088034(a1, v1);
}

uint64_t sub_1B10A32AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_59Tm(void (*a1)(void))
{
  a1(*(v1 + 32));
  OUTLINED_FUNCTION_51_1();

  return MEMORY[0x1EEE6BDD0](v3);
}

uint64_t objectdestroy_180Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0);
}

void sub_1B10A34AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_83();
  v32 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v32);
  v34 = v33;
  v36 = v35;
  v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v38 = *(v36 + 64);
  OUTLINED_FUNCTION_24_1();
  v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v31 + v43);
  v46 = *(v31 + v44);
  v47 = *v45;
  v48 = v45[1];

  sub_1B109E624(v30, v31 + v42, v47, v48, v46, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1B10A35BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B10A35DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_54_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_72()
{

  return sub_1B1122F4C();
}

uint64_t OUTLINED_FUNCTION_73()
{

  return sub_1B11229BC();
}

uint64_t OUTLINED_FUNCTION_86()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_87(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t sub_1B10A3974()
{
  OUTLINED_FUNCTION_0_9();
  *(v1 + 24) = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1B10A39B8()
{
  sub_1B1073F28(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B10A39F0()
{
  v1 = v0;
  v16 = MEMORY[0x1E69E7CC0];
  v2 = *(*(v0 + 32) + 16);

  os_unfair_lock_lock(v2);
  sub_1B10A3B4C(v0, &v16);
  os_unfair_lock_unlock(v2);

  result = swift_unknownObjectWeakLoadStrong();
  v4 = v16;
  if (result)
  {
    v5 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v4, ObjectType, v5);
    result = swift_unknownObjectRelease();
  }

  v7 = 0;
  v8 = v4[2];
  for (i = v4 + 5; ; i += 2)
  {
    if (v8 == v7)
    {

      sub_1B1073F28(v1 + 16);
      v14 = *(v1 + 32);

      v15 = *(v1 + 40);

      return v1;
    }

    if (v7 >= v4[2])
    {
      break;
    }

    ++v7;
    v10 = *(i - 1);
    v11 = *i;
    v12 = swift_getObjectType();
    v13 = *(v11 + 72);
    swift_unknownObjectRetain();
    v13(v12, v11);
    result = swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B10A3B4C(uint64_t a1, void **a2)
{
  swift_beginAccess();
  v3 = *(a1 + 40);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(a1 + 40) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v36 = *(a1 + 40);
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v35 = v5;
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v14 = __clz(__rbit64(v9)) | (v12 << 6);
        v15 = (*(v36 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(v36 + 56) + 8 * v14);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          v21 = *(v18 + 24);
          ObjectType = swift_getObjectType();
          v23 = *(v21 + 64);

          v23(ObjectType, v21);
          v24 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = v24[2];

            sub_1B10A25F0(0, v31 + 1, 1, v24);
            v32 = *a2;
            *a2 = v33;

            v24 = *a2;
          }

          v27 = v24[2];
          v26 = v24[3];
          v5 = v35;
          if (v27 >= v26 >> 1)
          {
            sub_1B10A25F0(v26 > 1, v27 + 1, 1, v24);
            v24 = v34;
            *a2 = v34;
          }

          v24[2] = v27 + 1;
          v28 = &(*a2)[2 * v27];
          *(v28 + 32) = v20;
          *(v28 + 40) = v21;
        }

        else
        {
          sub_1B10A4258();

          v29 = sub_1B1122EBC();
          sub_1B1122DDC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1B1133BA0;
          *(v30 + 56) = MEMORY[0x1E69E6158];
          *(v30 + 64) = sub_1B106EAF4();
          *(v30 + 32) = v17;
          *(v30 + 40) = v16;

          sub_1B112282C();
        }

        v9 &= v9 - 1;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B10A3E38()
{
  sub_1B10A39F0();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B10A3E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 24);
    swift_beginAccess();
    v11 = *(a1 + 40);

    v12 = sub_1B10A7964(a2, a3, v11);

    if (v12)
    {

      ObjectType = swift_getObjectType();
      (*(v10 + 32))(a4, a5, ObjectType, v10);
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for ActivityMonitor.WeakReference();
  v14 = swift_allocObject();
  swift_unknownObjectRetain();
  sub_1B10A3974();
  swift_beginAccess();
  v15 = *(a1 + 40);
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + 40);
  sub_1B107FF44(v14, a2, a3);
  *(a1 + 40) = v17;
  return swift_endAccess();
}

uint64_t sub_1B10A3FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a1 + 40);
  v11 = sub_1B10A429C(a2, a3);
  if (v12)
  {
    v13 = v11;
    v14 = *(a1 + 40);
    swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a1 + 40);
    v15 = v31[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CC0, &qword_1B1134D50);
    sub_1B112303C();
    v16 = *(v31[6] + 16 * v13 + 8);

    v17 = *(v31[7] + 8 * v13);
    type metadata accessor for ActivityMonitor.WeakReference();
    sub_1B112304C();
    *(a1 + 40) = v31;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(a1 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 40))(a4, a5, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    v21 = swift_getObjectType();
    v22 = (*(a5 + 32))(v21, a5);
    sub_1B1122DDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1B1133CF0;
    v24 = (*(a5 + 24))(v21, a5);
    v26 = v25;
    v27 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v28 = sub_1B106EAF4();
    *(v23 + 64) = v28;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    (*(a5 + 40))(v21, a5);
    v29 = sub_1B1122FAC();
    *(v23 + 96) = v27;
    *(v23 + 104) = v28;
    *(v23 + 72) = v29;
    *(v23 + 80) = v30;
    sub_1B112282C();
  }
}

unint64_t sub_1B10A4258()
{
  result = qword_1EDAD6010;
  if (!qword_1EDAD6010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAD6010);
  }

  return result;
}

unint64_t sub_1B10A429C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B112314C();
  sub_1B1122ACC();
  v6 = sub_1B112316C();

  return sub_1B10A4398(a1, a2, v6);
}

unint64_t sub_1B10A4314(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B112186C();
  sub_1B10A4744(&qword_1EDAD5F10);
  v5 = sub_1B1122A1C();

  return sub_1B10A444C(a1, v5);
}

unint64_t sub_1B10A4398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1B11230AC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1B10A444C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1B112186C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1B10A4744(qword_1EDAD55B0);
    v10 = sub_1B1122A3C();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1B10A45F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a4 + 56))(a3, a4);
  v10 = v9;
  v11 = *(*(a2 + 32) + 16);
  os_unfair_lock_lock(v11);
  sub_1B10A3FEC(a2, v8, v10, a1, a4);

  os_unfair_lock_unlock(v11);

  return sub_1B10A46B4(a2, a1, a3, a4);
}

uint64_t sub_1B10A46B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a2, a4, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B10A4744(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B112186C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B10A4788(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = sub_1B1099EF8(a1);
  for (i = 0; v7 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B272DFA0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v11 = v9;
    sub_1B10A5728(&v11, a2, a3);

    if (v3)
    {
      return;
    }
  }
}

uint64_t sub_1B10A4860()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EB73A2F0);
  __swift_project_value_buffer(v0, qword_1EB73A2F0);
  return sub_1B112294C();
}

id PARResponse.init(reply:factory:responseData:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_1B11218AC();
  v10 = [v8 initWithReply:a1 factory:a2 responseData:v9];

  sub_1B106C204(a3, a4);
  swift_unknownObjectRelease();
  return v10;
}

id PARResponse.init(reply:factory:responseData:)(void *a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v2 = sub_1B11227EC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A308, &qword_1B1134D58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_1B1121E3C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v19 = OUTLINED_FUNCTION_2_2();
  sub_1B1070FD4(v19, v20);
  sub_1B11227DC();
  sub_1B10A5CEC(&qword_1EB73A310, MEMORY[0x1E69BCE18]);
  OUTLINED_FUNCTION_2_2();
  sub_1B112280C();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  (*(v11 + 32))(v18, v7, v8);
  swift_getObjectType();
  (*(v11 + 16))(v16, v18, v8);
  v21 = sub_1B10A4C7C(v29, v30, v16);
  v22 = OUTLINED_FUNCTION_2_2();
  sub_1B106C204(v22, v23);
  v24 = *(v11 + 8);
  v25 = OUTLINED_FUNCTION_6_4();
  v26(v25);
  swift_deallocPartialClassInstance();
  return v21;
}

id sub_1B10A4C7C(void *a1, uint64_t a2, uint64_t a3)
{
  v130 = a2;
  v129 = sub_1B1121E3C();
  v5 = OUTLINED_FUNCTION_0(v129);
  v131 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v127 = v10 - v9;
  v11 = sub_1B1121A7C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v121 = v13;
  v122 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v120 = v17 - v16;
  v18 = sub_1B11219EC();
  v19 = OUTLINED_FUNCTION_0(v18);
  v123 = v20;
  v124 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  v26 = sub_1B1121E0C();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  v34 = v33 - v32;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB73A318, &qword_1B1134D60);
  v35 = OUTLINED_FUNCTION_11(v126);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v125 = &v120 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v120 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v120 - v43;
  v45 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithReply_];
  v128 = a1;
  v46 = [a1 task];
  v132 = a3;
  if (v46)
  {
    v47 = v46;
    v48 = [v46 request];

    v49 = [v48 queryId];
    a3 = v132;
  }

  else
  {
    v49 = 0;
  }

  sub_1B1121E1C();
  v50 = sub_1B1121E2C();
  if (__swift_getEnumTagSinglePayload(v44, 1, v50) == 1)
  {
    goto LABEL_5;
  }

  sub_1B10A5C0C(v44, v42);
  v66 = *(v50 - 8);
  v67 = v66[11];
  v68 = OUTLINED_FUNCTION_4_5();
  v70 = v69(v68);
  if (v70 == *MEMORY[0x1E69BCE10])
  {
    v71 = v66[12];
    v72 = OUTLINED_FUNCTION_4_5();
    v73(v72);
    (*(v29 + 32))(v34, v42, v26);
    v74 = sub_1B1121DFC();
    sub_1B1074A10(v74, v75, v45, &selRef_setQuery_);
    v76 = sub_1B1121DFC();
    sub_1B1074A10(v76, v77, v45, &selRef_setPrefix_);
    v78 = OUTLINED_FUNCTION_6_4();
    v83 = OUTLINED_FUNCTION_3_7(v78, v79, v80, v81, v82);
    sub_1B107191C(v83, v45);
    (*(v29 + 8))(v34, v26);
LABEL_17:
    v53 = v129;
    v52 = v131;
    goto LABEL_18;
  }

  if (v70 == *MEMORY[0x1E69BCE00])
  {
    v87 = v66[12];
    v88 = OUTLINED_FUNCTION_4_5();
    v89(v88);
    v29 = v49;
    v91 = v123;
    v90 = v124;
    (*(v123 + 32))(v25, v42, v124);
    v92 = sub_1B11219BC();
    sub_1B1074A10(v92, v93, v45, &selRef_setQuery_);
    v94 = sub_1B11219CC();
    sub_1B1074A10(v94, v95, v45, &selRef_setPrefix_);
    v98 = OUTLINED_FUNCTION_3_7(v25, v29, v96, v97, MEMORY[0x1E69BCC48]);
    sub_1B107191C(v98, v45);
    (*(v91 + 8))(v25, v90);
    goto LABEL_17;
  }

  if (v70 == *MEMORY[0x1E69BCE08])
  {
    v99 = v66[12];
    v100 = OUTLINED_FUNCTION_4_5();
    v101(v100);
    v103 = v121;
    v102 = v122;
    v29 = v49;
    v104 = v120;
    (*(v121 + 32))(v120, v42, v122);
    v105 = sub_1B1121A4C();
    sub_1B1074A10(v105, v106, v45, &selRef_setQuery_);
    v107 = sub_1B1121A5C();
    sub_1B1074A10(v107, v108, v45, &selRef_setPrefix_);
    v109 = sub_1B1121A2C();
    sub_1B108152C(v109, v110, v45);
    v113 = OUTLINED_FUNCTION_3_7(v104, v29, v111, v112, MEMORY[0x1E69BCC70]);
    sub_1B107191C(v113, v45);
    (*(v103 + 8))(v104, v102);
    goto LABEL_17;
  }

  v117 = v66[1];
  v118 = OUTLINED_FUNCTION_4_5();
  v119(v118);
  a3 = v132;
LABEL_5:
  if (qword_1EB7397C0 != -1)
  {
    swift_once();
  }

  v51 = sub_1B112296C();
  __swift_project_value_buffer(v51, qword_1EB73A2F0);
  v52 = v131;
  v53 = v129;
  (*(v131 + 16))(v127, a3, v129);
  v54 = sub_1B112293C();
  v55 = sub_1B1122DBC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v133 = v57;
    *v56 = 136315138;
    sub_1B1121E1C();
    v58 = sub_1B1122A7C();
    v60 = v59;
    v61 = *(v131 + 8);
    v62 = OUTLINED_FUNCTION_6_4();
    v63(v62);
    v64 = sub_1B10784E0(v58, v60, &v133);

    *(v56 + 4) = v64;
    _os_log_impl(&dword_1B1064000, v54, v55, "Got an unhandled case %s, skipping result parsing", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x1B272EDD0](v57, -1, -1);
    v65 = v56;
    v52 = v131;
    MEMORY[0x1B272EDD0](v65, -1, -1);
  }

  else
  {

    v84 = *(v52 + 8);
    v85 = OUTLINED_FUNCTION_6_4();
    v86(v85);
  }

  v29 = v128;
LABEL_18:
  sub_1B1067964(v44, qword_1EB73A318, &qword_1B1134D60);
  v114 = sub_1B10725D4(v45);
  v115 = sub_1B10A56C4(v114);

  sub_1B10725F0(v115, v45);

  swift_unknownObjectRelease();
  (*(v52 + 8))(v132, v53);
  return v45;
}

uint64_t sub_1B10A54FC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v6 = sub_1B1121DEC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v15 = a5();
  v27 = MEMORY[0x1E69E7CC0];
  v16 = *(v15 + 16);
  if (v16)
  {
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v24 = v18;
    v19 = v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    do
    {
      v24(v14, v19, v6);
      if (!sub_1B1074C20(a3, a4, v14))
      {
        [objc_allocWithZone(MEMORY[0x1E69CA3E8]) init];
      }

      v21 = (*(v17 - 8))(v14, v6);
      MEMORY[0x1B272DB50](v21);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      v19 += v20;
      --v16;
    }

    while (v16);
    v22 = v27;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v22;
}

uint64_t sub_1B10A56C4(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    sub_1B10A4788(a1, &v3, &v4);
    v1 = v4;
  }

  return v1;
}

void sub_1B10A5728(void **a1, uint64_t *a2, void *a3)
{
  v5 = *a1;
  v6 = sub_1B1081BB4(*a1, &selRef_sectionHeader);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1B10A7800(v6, v7, *a2);
    if (!v10)
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
      if (!v11)
      {
        v14 = sub_1B10A5980(v8, v9);

        return;
      }

      v10 = v11;
      sub_1B10A5C94(v8, v9, v11);
      sub_1B1081BB4(v5, &selRef_sectionBundleIdentifier);
      if (v12)
      {
        v13 = sub_1B1122A4C();
      }

      else
      {
        v13 = 0;
      }

      [v10 setBundleIdentifier_];

      sub_1B1072550(MEMORY[0x1E69E7CC0], v10);
      v15 = v10;
      v16 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *a2;
      sub_1B107FC78(v15, v8, v9, isUniquelyReferenced_nonNull_native);
      *a2 = v22;
      v18 = v15;
      MEMORY[0x1B272DB50]();
      sub_1B10A9034(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1B1122BCC();
    }

    v19 = v5;
    v23 = sub_1B10725D4(v10);
    if (v23)
    {

      MEMORY[0x1B272DB50](v20);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
      v21 = sub_1B1122B7C();

      [v10 setResults_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1B10A5980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1B10A429C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CB8, &unk_1B1134110);
  sub_1B112303C();
  v10 = *(*(v13 + 48) + 16 * v7 + 8);

  v11 = *(*(v13 + 56) + 8 * v7);
  sub_1B1066864(0, &qword_1EDAD54B0, 0x1E69CA390);
  sub_1B112304C();
  *v3 = v13;
  return v11;
}

uint64_t sub_1B10A5A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1B10A4314(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    v10 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CC8, &unk_1B1134120);
    sub_1B112303C();
    v11 = *(v21 + 48);
    v12 = sub_1B112186C();
    OUTLINED_FUNCTION_11(v12);
    (*(v13 + 8))(v11 + *(v13 + 72) * v8, v12);
    v14 = *(v21 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
    OUTLINED_FUNCTION_11(v15);
    sub_1B10801E4(v14 + *(v16 + 72) * v8, a2);
    sub_1B10A5CEC(&qword_1EDAD5F10, MEMORY[0x1E6968FB0]);
    OUTLINED_FUNCTION_4_5();
    sub_1B112304C();
    *v3 = v21;
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
    v17 = a2;
    v18 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
}

uint64_t sub_1B10A5C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB73A318, &qword_1B1134D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B10A5C94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B1122A4C();
  [a3 setTitle_];
}

uint64_t sub_1B10A5CEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B10A5D40()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  OnceState = type metadata accessor for FetchOnceState();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_5();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18[-v13];
  v15 = *(v1 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v14, v0 + v15, OnceState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      (*(v5 + 8))(v14, OnceState);
      break;
    case 3u:
      break;
    default:
      v16 = *v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
      sub_1B1122C7C();

      break;
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  (*(v5 + 40))(v0 + v15, v11, OnceState);
  return swift_endAccess();
}

uint64_t *sub_1B10A5F38()
{
  v1 = *v0;
  sub_1B10A5D40();
  v2 = *(*v0 + 96);
  v3 = *(v1 + 80);
  OnceState = type metadata accessor for FetchOnceState();
  OUTLINED_FUNCTION_5(OnceState);
  (*(v5 + 8))(v0 + v2);
  v6 = *(v0 + *(*v0 + 112) + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B10A5FE4()
{
  sub_1B10A5F38();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B10A6010()
{
  v56 = *v0;
  v58 = v56[12];
  OnceState = type metadata accessor for FetchOnceState();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v56 - v7;
  v9 = v8;
  v10 = v56[10];
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v56 - v16;
  v78 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = sub_1B1122EDC();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_5();
  v77 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v56 - v27;
  swift_beginAccess();
  v57 = v0;
  v29 = v0[14];
  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v59 = (v31 + 63) >> 6;
  v63 = v2 + 16;
  v64 = v12 + 16;
  v62 = v12 + 32;
  v34 = (v2 + 32);
  v75 = (v20 + 32);
  v72 = v2;
  v60 = (v2 + 8);
  v69 = v12;
  v73 = v29;
  v74 = (v12 + 8);

  v36 = 0;
  v71 = v9;
  v66 = v28;
  v67 = TupleTypeMetadata2;
  v65 = v30;
  v61 = v34;
  if (v33)
  {
    while (1)
    {
      v37 = v36;
LABEL_10:
      v39 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v40 = v39 | (v37 << 6);
      v41 = v73;
      v43 = v68;
      v42 = v69;
      v44 = v78;
      (*(v69 + 16))(v68, *(v73 + 48) + *(v69 + 72) * v40, v78);
      v45 = *(v41 + 56);
      v46 = v72;
      v47 = v70;
      v48 = OnceState;
      (*(v72 + 16))(v70, v45 + *(v72 + 72) * v40, OnceState);
      TupleTypeMetadata2 = v67;
      v49 = *(v67 + 48);
      v50 = *(v42 + 32);
      v38 = v77;
      v50(v77, v43, v44);
      v34 = v61;
      (*(v46 + 32))(v38 + v49, v47, v48);
      v51 = 0;
      v9 = v71;
      v30 = v65;
      v28 = v66;
LABEL_11:
      __swift_storeEnumTagSinglePayload(v38, v51, 1, TupleTypeMetadata2);
      (*v75)(v28, v38, v76);
      if (__swift_getEnumTagSinglePayload(v28, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      (*v34)(v9, &v28[*(TupleTypeMetadata2 + 48)], OnceState);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 2u:
          (*v60)(v9, OnceState);
          break;
        case 3u:
          break;
        default:
          v52 = *v9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
          sub_1B1122C7C();

          break;
      }

      result = (*v74)(v28, v78);
      if (!v33)
      {
        goto LABEL_5;
      }
    }

    swift_getTupleTypeMetadata2();
    sub_1B1122BBC();
    v53 = v56[13];
    v54 = sub_1B1122A0C();
    v55 = v57[14];
    v57[14] = v54;
  }

  else
  {
LABEL_5:
    v38 = v77;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v59)
      {
        v33 = 0;
        v51 = 1;
        goto LABEL_11;
      }

      v33 = *(v30 + 8 * v37);
      ++v36;
      if (v33)
      {
        v36 = v37;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1B10A65A4()
{
  if (!v0[16])
  {
    sub_1B10A6010();
  }

  v1 = v0[14];

  v2 = v0[17];
  sub_1B106E740(v0[16]);
  v3 = v0[19];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B10A65E8()
{
  sub_1B10A65A4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B10A6614(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for AtomicAsyncValue.State();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B10A66C0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for AtomicAsyncValue.State();
  OUTLINED_FUNCTION_5(v3);
  (*(v4 + 8))(v0 + v1);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B10A6740()
{
  sub_1B10A66C0();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B10A67A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B10A6800(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_31;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v6)
      {
LABEL_31:
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
        if (EnumTagSinglePayload >= 3)
        {
          return EnumTagSinglePayload - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
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

  return v6 + (v7 | v15) + 1;
}

void sub_1B10A69CC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 2;
  v9 = *(*(v6 - 8) + 64);
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
  }

  v13 = 8 * v9;
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v9 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v22 = a2 + 2;

          __swift_storeEnumTagSinglePayload(a1, v22, v7, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v9 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v9)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v9 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v9] = v18;
        break;
      case 2:
        *&a1[v9] = v18;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v9] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B10A6C40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 253;
}

void sub_1B10A6D64(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1B10A6F28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B10A6F70(uint64_t *a1, int a2)
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

uint64_t sub_1B10A6FB0(uint64_t result, int a2, int a3)
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

uint64_t sub_1B10A700C(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB739D08, &qword_1B1134350);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = swift_checkMetadataState();
    TupleTypeMetadata2 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      TupleTypeMetadata2 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1B10A710C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1B10A7248(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

NSString_optional __swiftcall NSString.parsec_getHighLevelDomainFromHost()()
{
  v0 = sub_1B1122A5C();
  sub_1B10A9470(v0, v1);
  v3 = v2;

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B1122A4C();

  return v4;
}

NSString sub_1B10A749C(void *a1)
{
  v1 = a1;
  v2.value = NSString.parsec_getHighLevelDomainFromHost()().value;

  return v2.value;
}

uint64_t getEnumTagSinglePayload for ParsecFeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ParsecFeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B10A7644(uint64_t a1)
{
  result = sub_1B107B58C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B10A7670()
{
  result = qword_1EB73A420;
  if (!qword_1EB73A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB73A420);
  }

  return result;
}

const char *sub_1B10A76C4(char a1)
{
  result = "corelocation_revgeo";
  switch(a1)
  {
    case 1:
      result = "feedback_database";
      break;
    case 2:
      result = "ResponseFramework";
      break;
    case 3:
      result = "LookupSearchGRPC";
      break;
    case 4:
      result = "LookupSearchEngagementGRPC";
      break;
    case 5:
      result = "SpotlightEngagementGRPC";
      break;
    case 6:
      result = "SafariSearchGRPC";
      break;
    case 7:
      result = "SafariSearchEngagementGRPC";
      break;
    default:
      return result;
  }

  return result;
}

double sub_1B10A779C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B10A429C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1B1078A74(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void *sub_1B10A7800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B10A429C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1B10A7848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1B10A4314(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
    OUTLINED_FUNCTION_11(v9);
    sub_1B10A915C(v8 + *(v10 + 72) * v7, a3);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
    v11 = a3;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_1B10A790C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B10A429C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_1B10A7964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B10A429C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

id PARTopicResponse.init(reply:factory:dataZKW:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_7_2();
  v5 = sub_1B11218AC();
  v6 = [v4 initWithReply:a1 factory:a2 dataZKW:v5];

  v7 = OUTLINED_FUNCTION_7_2();
  sub_1B106C204(v7, v8);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1B10A7A48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A428, &qword_1B1135120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B10A7AB0@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v62 = a3;
  v8 = sub_1B112232C();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B112229C();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B11222BC();
  if ((result & 1) == 0)
  {
    *a4 = 0;
    return result;
  }

  v57 = a4;
  v58 = v4;
  v17 = [a1 createResultObject];
  v55[1] = swift_getObjectType();
  v56 = a2;
  [v17 setQueryId_];
  sub_1B112223C();
  v18 = sub_1B1122A4C();

  [v17 setUserInput_];

  [v17 setType_];
  sub_1B11221EC();
  v19 = sub_1B1122A4C();

  [v17 setResultType_];

  sub_1B11222AC();
  v20 = sub_1B1122A4C();

  [v17 setIdentifier_];

  sub_1B112233C();
  v21 = sub_1B1122A4C();

  [v17 setResultBundleId_];

  v22 = sub_1B112234C();
  v24 = v23;
  sub_1B11218BC();
  sub_1B106C204(v22, v24);
  v25 = sub_1B1122A4C();

  [v17 setFbr_];

  if (sub_1B11222CC() >= 1)
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    [v17 setMaxAge_];
  }

  v27 = sub_1B11222EC();
  v28 = v56;
  if (v27)
  {
    sub_1B11222DC();
    v29 = Apple_Parsec_Spotlight_V1alpha_Topic.queryTopic.getter();
    (*(v59 + 8))(v15, v12);
    [v17 setNormalizedTopic_];
    v30 = [v29 query];
    if (!v30)
    {
      sub_1B1122A5C();
      v30 = sub_1B1122A4C();
    }

    [v17 setCompletion_];

    v31 = [v29 query];
    if (!v31)
    {
      sub_1B1122A5C();
      v31 = sub_1B1122A4C();
    }

    [v17 setIntendedQuery_];
  }

  type metadata accessor for ProtobufHelper();
  v32 = v62;
  v33 = [v62 reply];
  sub_1B112235C();
  v34 = sub_1B112231C();
  v36 = v35;
  (*(v60 + 8))(v11, v61);
  swift_unknownObjectRetain();
  sub_1B108D438(v33, v17, v34, v36);

  swift_unknownObjectRelease();
  sub_1B106C204(v34, v36);
  sub_1B1066864(0, &qword_1EB739558, 0x1E69CA4F0);
  v37 = sub_1B10988A8(v32, &selRef_query);
  v39 = sub_1B10A87B4(v37, v38);
  [v17 setTitle_];

  v40 = [v17 inlineCard];
  if (v40)
  {
    v41 = sub_1B10A907C(v40, &selRef_cardSections, &qword_1EB739628, 0x1E69C9F08);
    if (v41)
    {
      v42 = v41;
      if (!sub_1B1099EF8(v41))
      {
        goto LABEL_22;
      }

      sub_1B10731E4(0, (v42 & 0xC000000000000001) == 0, v42);
      if ((v42 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1B272DFA0](0, v42);
      }

      else
      {
        v43 = *(v42 + 32);
      }

      v44 = v43;

      v45 = sub_1B10A907C(v44, &selRef_punchoutOptions, &qword_1EB739590, 0x1E69CA320);
      if (!v45)
      {
        goto LABEL_23;
      }

      v46 = v45;
      if (sub_1B1099EF8(v45))
      {
        sub_1B1099FA4(0, (v46 & 0xC000000000000001) == 0, v46);
        if ((v46 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x1B272DFA0](0, v46);
        }

        else
        {
          v47 = *(v46 + 32);
        }

        v48 = v47;

        v49 = [v48 bundleIdentifier];

        if (v49)
        {
          sub_1B1122A5C();

          v50 = sub_1B1122A4C();

          [v17 setApplicationBundleIdentifier_];
        }
      }

      else
      {
LABEL_22:
      }
    }
  }

LABEL_23:
  v51 = [v17 card];
  sub_1B108D578(v51, v28);

  v52 = [v17 inlineCard];
  sub_1B108D578(v52, v28);

  v53 = [v17 compactCard];
  sub_1B108D578(v53, v28);

  v54 = [v17 tophitCard];
  sub_1B108D578(v54, v28);

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    *v57 = result;
  }

  else
  {
    result = swift_unknownObjectRelease();
    *v57 = 0;
  }

  return result;
}

id Apple_Parsec_Spotlight_V1alpha_Topic.queryTopic.getter()
{
  v1 = sub_1B11221FC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v61 = v3;
  v62 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v60 = v7 - v6;
  v8 = sub_1B112222C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v63 = v10;
  v64 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = sub_1B11221DC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  v25 = sub_1B112194C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  v30 = sub_1B112242C();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2();
  v38 = v37 - v36;
  sub_1B112224C();
  v39 = (*(v33 + 88))(v38, v30);
  if (v39 == *MEMORY[0x1E69BD328] || v39 == *MEMORY[0x1E69BD358])
  {
LABEL_3:
    sub_1B11221EC();
    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_52();
    objc_allocWithZone(MEMORY[0x1E69CA328]);
    v40 = 7;
    return sub_1B10A8E98(v40, v38, v19, v0);
  }

  if (v39 == *MEMORY[0x1E69BD340])
  {
    v42 = sub_1B11221EC();
    v44 = v43;
    sub_1B112226C();
    sub_1B11221CC();
    (*(v19 + 8))(v24, v16);
    sub_1B112190C();
    v45 = objc_allocWithZone(MEMORY[0x1E69CA0E8]);
    return sub_1B10A8DF0(v42, v44, v29);
  }

  else
  {
    if (v39 == *MEMORY[0x1E69BD330])
    {
      sub_1B11221EC();
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_52();
      objc_allocWithZone(MEMORY[0x1E69CA328]);
      v40 = 1;
      return sub_1B10A8E98(v40, v38, v19, v0);
    }

    if (v39 == *MEMORY[0x1E69BD360])
    {
      v46 = [objc_allocWithZone(MEMORY[0x1E69CA190]) init];
      sub_1B112228C();
      sub_1B112221C();
      v48 = v47;
      v49 = *(v63 + 8);
      v49(v15, v64);
      [v46 setLng_];
      sub_1B112228C();
      sub_1B112220C();
      v51 = v50;
      v49(v15, v64);
      [v46 setLat_];
      sub_1B11221EC();
      OUTLINED_FUNCTION_52();
      v52 = objc_allocWithZone(MEMORY[0x1E69CA5C0]);
      return sub_1B10A8F24(v0, v0, v46);
    }

    else
    {
      if (v39 == *MEMORY[0x1E69BD338])
      {
        sub_1B11221EC();
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_52();
        objc_allocWithZone(MEMORY[0x1E69CA328]);
        v40 = 2;
        return sub_1B10A8E98(v40, v38, v19, v0);
      }

      if (v39 == *MEMORY[0x1E69BD350])
      {
        goto LABEL_3;
      }

      if (v39 == *MEMORY[0x1E69BD318])
      {
        sub_1B11221EC();
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_52();
        objc_allocWithZone(MEMORY[0x1E69CA328]);
        v40 = 6;
        return sub_1B10A8E98(v40, v38, v19, v0);
      }

      if (v39 == *MEMORY[0x1E69BD320])
      {
        sub_1B11221EC();
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_52();
        objc_allocWithZone(MEMORY[0x1E69CA328]);
        v40 = 8;
        return sub_1B10A8E98(v40, v38, v19, v0);
      }

      if (v39 == *MEMORY[0x1E69BD348])
      {
        v53 = sub_1B11221EC();
        v55 = v54;
        sub_1B112227C();
        v56 = sub_1B11221EC();
        v58 = v57;
        (*(v61 + 8))(v60, v62);
        sub_1B112223C();
        OUTLINED_FUNCTION_52();
        v59 = objc_allocWithZone(MEMORY[0x1E69CA470]);
        return sub_1B10A8F88(v53, v55, v56, v58, v0);
      }

      else
      {
        result = sub_1B112309C();
        __break(1u);
      }
    }
  }

  return result;
}

id sub_1B10A87B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1B1122A4C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textWithString_];

  return v3;
}

void sub_1B10A8824(uint64_t a1, void *a2, uint64_t *a3)
{
  v47 = a3;
  v54 = a2;
  v46 = sub_1B11224BC();
  v5 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45[1] = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B11224FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
  sub_1B1072550(MEMORY[0x1E69E7CC0], v52);
  v12 = sub_1B11224DC();
  v13 = 0;
  v55 = *(v12 + 16);
  v56 = v12;
  v53 = v12 + 32;
  v50 = v11;
  v51 = v8;
  v48 = a1;
  v49 = v7;
  while (1)
  {
LABEL_2:
    if (v13 == v55)
    {

      v3 = a1;
      v26 = sub_1B11224EC();
      v28 = v27;
      v13 = v52;
      v29 = v47;
      v30 = *v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = *v29;
      sub_1B107FC78(v13, v26, v28, isUniquelyReferenced_nonNull_native);
      *v29 = v59;

      if (qword_1EDAD5488 != -1)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (v13 >= *(v56 + 16))
    {
      goto LABEL_37;
    }

    v14 = (v53 + 16 * v13);
    v3 = *v14;
    v15 = v14[1];
    ++v13;

    v16 = sub_1B1071938(v54, &selRef_results, &qword_1EDAD5528, 0x1E69CA3E8);
    if (v16)
    {
      break;
    }
  }

  v17 = v16;
  v57 = v13;
  v58 = v15;
  v18 = sub_1B1099EF8(v16);
  v8 = 0;
  v7 = v17 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v18 == v8)
    {

      v7 = v49;
      v11 = v50;
      v8 = v51;
      goto LABEL_29;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1B272DFA0](v8, v17);
    }

    else
    {
      if (v8 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v19 = *(v17 + 8 * v8 + 32);
    }

    v13 = v19;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v20 = sub_1B10988A8(v19, &selRef_identifier);
    if (!v21)
    {
      goto LABEL_17;
    }

    v11 = v21;
    if (v20 == v3 && v21 == v58)
    {

LABEL_22:

      v59 = sub_1B10725D4(v52);
      v7 = v49;
      v11 = v50;
      v8 = v51;
      if (!v59)
      {
        __break(1u);
        goto LABEL_40;
      }

      v24 = v13;
      MEMORY[0x1B272DB50]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      if (v59)
      {
        sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
        v25 = sub_1B1122B7C();
      }

      else
      {
        v25 = 0;
      }

      [v52 setResults_];

LABEL_29:
      a1 = v48;
      v13 = v57;
      goto LABEL_2;
    }

    v23 = sub_1B11230AC();

    if (v23)
    {
      goto LABEL_22;
    }

LABEL_17:

    ++v8;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  swift_once();
LABEL_31:
  v32 = sub_1B112296C();
  __swift_project_value_buffer(v32, qword_1EDAD5490);
  (*(v8 + 16))(v11, v3, v7);
  v17 = v13;
  v33 = sub_1B112293C();
  v34 = sub_1B1122DBC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v59 = v36;
    *v35 = 134218242;
    v37 = sub_1B10725D4(v17);
    if (v37)
    {
      v38 = sub_1B1097DD8(v37);

      *(v35 + 4) = v38;

      *(v35 + 12) = 2080;
      v39 = v17;
      v40 = v50;
      sub_1B11224CC();
      v41 = sub_1B1122A7C();
      v43 = v42;
      (*(v51 + 8))(v40, v7);
      v44 = sub_1B10784E0(v41, v43, &v59);

      *(v35 + 14) = v44;
      _os_log_impl(&dword_1B1064000, v33, v34, "ZKW section decoded. Section results count: %ld, section status code: %s", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1B272EDD0](v36, -1, -1);
      MEMORY[0x1B272EDD0](v35, -1, -1);

      return;
    }

LABEL_40:

    __break(1u);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }
}

id sub_1B10A8DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_1B1122A4C();

  v7 = sub_1B11218EC();
  v8 = [v4 initWithQuery:v6 date:v7];

  v9 = sub_1B112194C();
  (*(*(v9 - 8) + 8))(a3, v9);
  return v8;
}

id sub_1B10A8E98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1B1122A4C();

  OUTLINED_FUNCTION_7_2();
  sub_1B1122A4C();
  OUTLINED_FUNCTION_8_2();
  v8 = [v4 initWithType:a1 query:v7 identifier:a4];

  return v8;
}

id sub_1B10A8F24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B1122A4C();

  v6 = [v3 initWithQuery:v5 location:a3];

  return v6;
}

id sub_1B10A8F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_1B1122A4C();

  v8 = sub_1B1122A4C();

  OUTLINED_FUNCTION_7_2();
  sub_1B1122A4C();
  OUTLINED_FUNCTION_8_2();
  v9 = [v5 initWithQuery:v7 requestedEntityType:v8 identifier:a5];

  return v9;
}

uint64_t sub_1B10A9034(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1B1122BAC();
  }

  return result;
}

uint64_t sub_1B10A907C(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  sub_1B1066864(0, a3, a4);
  v8 = sub_1B1122B8C();

  return v8;
}

unint64_t sub_1B10A90F8()
{
  result = qword_1EB73A440;
  if (!qword_1EB73A440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB73A438, &qword_1B1135140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB73A440);
  }

  return result;
}

uint64_t sub_1B10A915C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B10A91CC()
{
  v9 = *MEMORY[0x1E69E9840];
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer == sub_1B112297C())
  {
    if (qword_1EB7395D0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v1 = sub_1B112296C();
    __swift_project_value_buffer(v1, qword_1EB7395D8);
    v2 = sub_1B112293C();
    v3 = sub_1B1122DCC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134218240;
      swift_beginAccess();
      *(v4 + 4) = 0;
      *(v4 + 12) = 1024;
      *(v4 + 14) = 0;
      _os_log_impl(&dword_1B1064000, v2, v3, "Read os_eligibility_get_domain_answer API: %llu. Enabled: %{BOOL}d", v4, 0x12u);
LABEL_10:
      MEMORY[0x1B272EDD0](v4, -1, -1);
    }
  }

  else
  {
    if (qword_1EB7395D0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v5 = sub_1B112296C();
    __swift_project_value_buffer(v5, qword_1EB7395D8);
    v2 = sub_1B112293C();
    v6 = sub_1B1122DDC();
    if (os_log_type_enabled(v2, v6))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 4) = domain_answer;
      _os_log_impl(&dword_1B1064000, v2, v6, "failed to read sba os eligibility with status: %d", v4, 8u);
      goto LABEL_10;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1B10A93F0()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EB7395D8);
  __swift_project_value_buffer(v0, qword_1EB7395D8);
  return sub_1B112294C();
}

uint64_t sub_1B10A9470(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;
  v4 = sub_1B1122A4C();
  v5 = [v4 _web_looksLikeIPAddress];

  if (v5)
  {
  }

  else
  {
    sub_1B1067A94();
    v6 = sub_1B1122F0C();
    v3 = sub_1B10A954C(v6, v3);
  }

  return v3;
}

uint64_t sub_1B10A954C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1B272DAA0](16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = (a1 + 16 * v3 + 24);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      if (v4)
      {
        sub_1B1122B0C();
      }

      sub_1B10A9718();
      sub_1B1122AFC();

      v9 = sub_1B1122A4C();
      IsDomainTopLevel = _CFHostIsDomainTopLevel();

      v11 = IsDomainTopLevel != 0;
      if (!IsDomainTopLevel && v5)
      {
        break;
      }

      ++v4;
      v6 -= 2;
      v5 = IsDomainTopLevel != 0;
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    v11 = 1;
LABEL_10:
    v12 = 0xE000000000000000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  if (v11)
  {
    if (v12)
    {
      v13 = sub_1B1122ADC();
    }

    else
    {
      v13 = 0;
    }

    v14 = a2;
    v15 = sub_1B1122ADC();
    if (v12 && v13 == v15)
    {
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

  return v14;
}

unint64_t sub_1B10A9718()
{
  result = qword_1EB73A460;
  if (!qword_1EB73A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB73A460);
  }

  return result;
}

uint64_t sub_1B10A976C(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v2 || (OUTLINED_FUNCTION_8_3() & 1) != 0)
  {
    return 1;
  }

  v7 = a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000;
  if (v7 || (OUTLINED_FUNCTION_8_3() & 1) != 0)
  {
    return 2;
  }

  v5 = 3;
  if (a1 != 0x746968706F74 || a2 != 0xE600000000000000)
  {
    if (OUTLINED_FUNCTION_8_3())
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void *sub_1B10A9830()
{
  v0 = sub_1B112186C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_5();
  v60 = v6 - v7;
  OUTLINED_FUNCTION_10_3();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v57 - v12;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_1_5();
  v20 = v18 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v57 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v57 - v25;
  sub_1B1066864(0, &qword_1EB739590, 0x1E69CA320);
  sub_1B11223CC();
  sub_1B112185C();

  v27 = sub_1B1073F50(v26);
  if (!v27)
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E69CA320]) init];
  }

  v28 = v27;
  v29 = sub_1B11223DC();
  sub_1B1074A10(v29, v30, v28, &selRef_setName_);
  v31 = sub_1B11223FC();
  sub_1B1074A10(v31, v32, v28, &selRef_setBundleIdentifier_);
  v33 = sub_1B11223EC();
  sub_1B1074A10(v33, v34, v28, &selRef_setLabel_);
  sub_1B1074880(MEMORY[0x1E69E7CC0], v28);
  sub_1B11223CC();
  sub_1B112185C();

  if (__swift_getEnumTagSinglePayload(v24, 1, v0) == 1)
  {
    sub_1B10AADA8(v24);
  }

  else
  {
    v58 = v11;
    v35 = *(v3 + 32);
    v35(v15, v24, v0);
    v36 = sub_1B10AAE10(v28);
    if (v36)
    {
      v37 = v36;
      v38 = *(v3 + 16);
      v57 = v15;
      v38(v59, v15, v0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_3();
        v37 = v53;
      }

      v40 = *(v37 + 16);
      v39 = *(v37 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1B10A2334(v39 > 1, v40 + 1, 1, v37);
        v37 = v54;
      }

      *(v37 + 16) = v40 + 1;
      OUTLINED_FUNCTION_6_5();
      v35((v41 + v42 * v40), v59, v0);
      v43 = sub_1B1122B7C();

      [v28 setUrls_];

      (*(v3 + 8))(v57, v0);
    }

    else
    {
      [v28 setUrls_];
      (*(v3 + 8))(v15, v0);
    }

    v11 = v58;
  }

  sub_1B11223BC();
  sub_1B112185C();

  if (__swift_getEnumTagSinglePayload(v20, 1, v0) == 1)
  {
    sub_1B10AADA8(v20);
  }

  else
  {
    v44 = *(v3 + 32);
    v44(v11, v20, v0);
    v45 = sub_1B10AAE10(v28);
    if (v45)
    {
      v46 = v45;
      (*(v3 + 16))(v60, v11, v0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_3();
        v46 = v55;
      }

      v48 = *(v46 + 16);
      v47 = *(v46 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1B10A2334(v47 > 1, v48 + 1, 1, v46);
        v46 = v56;
      }

      *(v46 + 16) = v48 + 1;
      OUTLINED_FUNCTION_6_5();
      v44((v49 + v50 * v48), v60, v0);
      v51 = sub_1B1122B7C();

      [v28 setUrls_];
    }

    else
    {
      [v28 setUrls_];
    }

    (*(v3 + 8))(v11, v0);
  }

  return v28;
}

id sub_1B10A9D40()
{
  v0 = sub_1B112244C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = [objc_allocWithZone(MEMORY[0x1E69CA370]) init];
  v10 = sub_1B112239C();
  sub_1B1074A10(v10, v11, v9, &selRef_setName_);
  v12 = sub_1B112238C();
  sub_1B1074A10(v12, v13, v9, &selRef_setMaps_encrypted_muid_);
  v14 = [objc_allocWithZone(MEMORY[0x1E69CA1D0]) init];
  sub_1B112237C();
  v15 = sub_1B112243C();
  v17 = v16;
  (*(v3 + 8))(v8, v0);
  sub_1B1074A10(v15, v17, v14, &selRef_setAddress_);
  [v9 setLocation:v14 type:? info:?];

  return v9;
}

id sub_1B10A9E9C()
{
  v94 = sub_1B1121E9C();
  v1 = OUTLINED_FUNCTION_0(v94);
  v97 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v96 = sub_1B1121E8C();
  v8 = OUTLINED_FUNCTION_0(v96);
  v90 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v89 = v13 - v12;
  v100 = sub_1B11227CC();
  v14 = OUTLINED_FUNCTION_0(v100);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_5();
  v98 = (v19 - v20);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v87 - v22;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v87 - v24;
  v26 = sub_1B1121E5C();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  v34 = v33 - v32;
  v91 = [objc_allocWithZone(MEMORY[0x1E69C9F90]) init];
  v92 = v0;
  sub_1B11220DC();
  sub_1B11227BC();
  sub_1B10AAE70(&qword_1EB73A468, MEMORY[0x1E69BCE60]);
  sub_1B11227FC();
  v95 = v16;
  v99 = *(v16 + 8);
  v99(v25, v100);
  (*(v29 + 8))(v34, v26);
  sub_1B1066864(0, &qword_1EB73A488, 0x1E69CA600);
  v35 = OUTLINED_FUNCTION_11_2();
  sub_1B1070FD4(v35, v36);
  v37 = OUTLINED_FUNCTION_11_2();
  v39 = sub_1B10743FC(v37, v38);
  if (v39)
  {
    v40 = v39;
    v41 = [objc_allocWithZone(MEMORY[0x1E69CA138]) initWithProtobuf_];
    v42 = v91;
    if (v41)
    {
      v43 = v41;
      [v91 setImage_];
    }

    else
    {
    }

    v46 = OUTLINED_FUNCTION_11_2();
    sub_1B106C204(v46, v47);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_11_2();
    sub_1B106C204(v44, v45);
    v42 = v91;
  }

  v48 = sub_1B11220EC();
  sub_1B1074A10(v48, v49, v42, &selRef_setTitle_);
  sub_1B11220FC();
  v50 = v88;
  sub_1B11227BC();
  sub_1B10AAE70(&qword_1EB73A470, MEMORY[0x1E69BCE70]);
  v51 = sub_1B11227FC();
  v53 = v52;
  v99(v50, v100);
  v54 = OUTLINED_FUNCTION_9_3();
  v55(v54);
  sub_1B1066864(0, &qword_1EB73A480, 0x1E69CA5E8);
  sub_1B1070FD4(v51, v53);
  v56 = sub_1B10743FC(v51, v53);
  if (v56)
  {
    v57 = v56;
    v58 = [objc_allocWithZone(MEMORY[0x1E69C9F88]) initWithProtobuf_];
    if (v58)
    {
      v59 = v58;
      [v42 setCommand_];
    }

    else
    {
    }
  }

  sub_1B106C204(v51, v53);
  v60 = sub_1B11220BC();
  v61 = *(v60 + 16);
  v62 = v94;
  v63 = v97;
  if (v61)
  {
    v101 = MEMORY[0x1E69E7CC0];
    sub_1B112300C();
    v65 = v63[2];
    v64 = (v63 + 2);
    v66 = v64[64];
    v90 = v60;
    v67 = v60 + ((v66 + 32) & ~v66);
    v96 = *(v64 + 7);
    v97 = v65;
    v95 += 8;
    v68 = v64 - 8;
    v93 = v7;
    do
    {
      (v97)(v7, v67, v62);
      v69 = v98;
      sub_1B11227BC();
      sub_1B10AAE70(&qword_1EB73A478, MEMORY[0x1E69BCE90]);
      sub_1B11227FC();
      OUTLINED_FUNCTION_52();
      v70 = v64;
      v99(v69, v100);
      v71 = objc_allocWithZone(MEMORY[0x1E69CA5D8]);
      v72 = OUTLINED_FUNCTION_27();
      sub_1B1070FD4(v72, v73);
      OUTLINED_FUNCTION_27();
      v74 = sub_1B11218AC();
      v75 = [v71 initWithJSON_];

      v76 = OUTLINED_FUNCTION_27();
      sub_1B106C204(v76, v77);
      if (v75)
      {
        if ([objc_allocWithZone(MEMORY[0x1E69C9ED0]) initWithProtobuf_])
        {
          v78 = OUTLINED_FUNCTION_27();
          sub_1B106C204(v78, v79);
        }

        else
        {
          [objc_allocWithZone(MEMORY[0x1E69C9ED0]) init];

          v82 = OUTLINED_FUNCTION_27();
          sub_1B106C204(v82, v83);
        }

        v64 = v70;
        v7 = v93;
        v62 = v94;
      }

      else
      {
        v80 = OUTLINED_FUNCTION_27();
        sub_1B106C204(v80, v81);
        v64 = v70;
        v7 = v93;
        v62 = v94;
        [objc_allocWithZone(MEMORY[0x1E69C9ED0]) init];
      }

      (*v68)(v7, v62);
      sub_1B1122FEC();
      v84 = *(v101 + 16);
      sub_1B112301C();
      sub_1B112302C();
      sub_1B1122FFC();
      v67 += v96;
      --v61;
    }

    while (v61);

    v85 = v101;
    v42 = v91;
  }

  else
  {

    v85 = MEMORY[0x1E69E7CC0];
  }

  sub_1B10AAEB8(v85, v42);
  [v42 setIsDestructive_];
  return v42;
}