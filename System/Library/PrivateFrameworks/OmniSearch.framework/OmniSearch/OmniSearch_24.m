uint64_t dispatch thunk of ResultHydration.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_159();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(v0 + 16);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_63(v14);
  *v15 = v16;
  v15[1] = dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:);

  return v18(v11, v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of ResultHydration.fetchFullContentForMessagesResultAndIdentifier(_:messageIdentifier:)()
{
  OUTLINED_FUNCTION_75();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 24);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_23(v12);
  *v13 = v14;
  v13[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v16(v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_75();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_133();
  v9 = *(v8 + 224);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_63(v11);
  *v12 = v13;
  v12[1] = dispatch thunk of AnswerResolver.extractInfo(query:results:assistantLocale:);

  return v15(v7, v5, v3, v1);
}

uint64_t dispatch thunk of ResultHydrator.fetchFullContentForMessagesResultAndIdentifier(_:messageIdentifier:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_133();
  v6 = (*(v0 + 280) + **(v0 + 280));
  v1 = *(*(v0 + 280) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_23(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_35_20();

  return v6();
}

uint64_t _s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a1;
  v5[18] = a2;
  v7 = type metadata accessor for OSSignpostID();
  v5[21] = v7;
  v8 = *(v7 - 8);
  v5[22] = v8;
  v9 = *(v8 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[5] = type metadata accessor for ResultHydrator();
  v5[6] = &protocol witness table for ResultHydrator;
  v5[2] = a3;

  return MEMORY[0x2822009F8](_s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5TY0_, 0, 0);
}

uint64_t _s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5TY0_()
{
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v2 = *(v0 + 192);
  v3 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v3, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = *(v0 + 192);
    v7 = OUTLINED_FUNCTION_172();
    v8 = OUTLINED_FUNCTION_159_5(v7);
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v4, v5, v8, "EventManager.hydrateWithSourceDocuments", "", v1, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  v15 = *(v0 + 144);

  v16 = OUTLINED_FUNCTION_59_12(v12);
  v17(v16, v10, v11);
  v18 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v18);
  OUTLINED_FUNCTION_45_4();
  *(v0 + 200) = OSSignpostIntervalState.init(id:isOpen:)();
  v19 = *(v12 + 8);
  v20 = OUTLINED_FUNCTION_64_0();
  v21(v20);
  outlined init with copy of ChatMessageRecord(v15, v0 + 56);
  outlined init with copy of ChatMessageRecord(v0 + 16, v0 + 96);
  v22 = swift_allocObject();
  *(v0 + 208) = v22;
  outlined init with take of ResponseOverrideMatcherProtocol((v0 + 56), v22 + 16);
  *(v22 + 56) = v14;
  *(v22 + 64) = v13;
  outlined init with take of ResponseOverrideMatcherProtocol((v0 + 96), v22 + 72);

  v23 = swift_task_alloc();
  *(v0 + 216) = v23;
  *v23 = v0;
  v23[1] = _s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5TQ1_;
  v24 = *(v0 + 136);

  return (specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:))(0, &async function pointer to partial apply for closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:), v22, v24);
}

uint64_t _s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5TQ1_()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 216);
  v5 = *(v3 + 208);
  v6 = *v0;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 224) = v8;

  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t _s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5TY2_()
{
  OUTLINED_FUNCTION_78();
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  $defer #1 () in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_62();
  v5 = v0[28];

  return v4(v5);
}

uint64_t specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(uint64_t a1)
{
  v4 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v8 = v1[2];
  v7 = v1[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = *v1;
  v11 = v1[1];
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
  v14 = *(v12 + 16);
  if (v11 + *(v13 + 72) * v8 + *(v13 + 72) * v9 != v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v14)
  {

LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v16 = *(v12 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_10:
  if (v15 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
    v2 = MEMORY[0x277D84F90];
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v20 = *(v19 - 8);
  result = v19 - 8;
  v21 = v20;
  v22 = *(v20 + 72);
  if (!v22)
  {
    goto LABEL_23;
  }

  v23 = v11 + v22 * v8 - (v2 + ((*(v21 + 80) + 32) & ~*(v21 + 80)));
  if (v22 != -1 || v23 != 0x8000000000000000)
  {
    v25 = v23 / v22;
    result = v9 + v25;
    if (!__OFADD__(v9, v25))
    {
      v6 = *(v2 + 16);
      if (result >= v6)
      {
        return v2;
      }

LABEL_25:
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(result, v6, 0);
      return v2;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_6(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t partial apply for closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_159();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 40);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_23(v9);
  *v10 = v11;
  v10[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_35_20();
  OUTLINED_FUNCTION_63_14();

  return closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_23(v6);
  *v7 = v8;
  v7[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_35_20();
  OUTLINED_FUNCTION_204();

  return closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v9, v10, v11, v12, v13, v14);
}

uint64_t outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async (@in_guaranteed [SearchResult], @in_guaranteed String?) -> (@out [SearchResult], @error @owned Error)()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_6_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v1[1] = dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:);
  OUTLINED_FUNCTION_204();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_1_48(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_44_18(uint64_t result)
{
  *(result + 8) = closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:);
  v2 = *(v1 + 168);
  v3 = *(v1 + 152);
  return result;
}

void OUTLINED_FUNCTION_52_16()
{

  JUMPOUT(0x25F8A1050);
}

void OUTLINED_FUNCTION_56_12()
{
  v2 = *(v1 - 160);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_58_8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(a1, a2, a3);
}

void OUTLINED_FUNCTION_62_12()
{
  v1 = v0[53];
  v2 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
  v7 = v0[46];
  v6 = v0[47];
  v8 = v0[45];
  v10 = v0[41];
  v9 = v0[42];
  v11 = v0[39];
  v12 = v0[40];
  v13 = v0[36];
}

uint64_t OUTLINED_FUNCTION_67_14(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *(v1 - 176);
  return result;
}

BOOL OUTLINED_FUNCTION_75_11(int a1)
{
  *(v2 - 452) = a1;

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_76_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_77_11(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v8, v6, a4, a5, a6, v7, 2u);
}

uint64_t OUTLINED_FUNCTION_81_13()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_86_12()
{
  v2 = *(v0 - 296) | 0x8000000000000000;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_103_11()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_105_9()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_106_9@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;

  return outlined init with take of SearchResult(v3 + v1, v2 + v1);
}

uint64_t OUTLINED_FUNCTION_108_7()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_124_10()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_125_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_126_10(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_127_10()
{

  return outlined consume of Data?(v1, v0);
}

uint64_t LLMQueryParser.__allocating_init(llmQUModelServer:)(uint64_t *a1)
{
  swift_allocObject();
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_12_24(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_7_28();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t static LLMQueryParser.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t LLMQueryParser.llmQUModelServer.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  outlined init with take of ResponseOverrideMatcherProtocol(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t LLMQueryParser.init(llmQUModelServer:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_12_24(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_7_28();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t LLMQueryParser.parse(_:clientId:)()
{
  OUTLINED_FUNCTION_48();
  v1[330] = v0;
  v1[329] = v2;
  v1[328] = v3;
  v1[327] = v4;
  v1[326] = v5;
  v1[325] = v6;
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  v1[331] = v7;
  v8 = *(v7 - 8);
  OUTLINED_FUNCTION_28_0();
  v1[332] = v9;
  v11 = *(v10 + 64) + 15;
  v1[333] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v1[334] = v12;
  v13 = *(v12 - 8);
  OUTLINED_FUNCTION_28_0();
  v1[335] = v14;
  v16 = *(v15 + 64) + 15;
  v1[336] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMQueryParser.parse(_:clientId:), 0, 0);
}

{
  v32 = v0;
  static SearchOverrides.match(rewrittenQuery:)(v0[326], v0[327], &v29);
  v17 = v30;
  if (v30 && (v18 = v31, v19 = v29, , outlined consume of SearchOverride?(v19, v17), v18))
  {
    if (one-time initialization token for llmQU != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logging.llmQU);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v21, v22, "LLMQU override found, skipping LLMQU model call and using override: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x25F8A1050](v24, -1, -1);
      MEMORY[0x25F8A1050](v23, -1, -1);
    }

    LLMQUModelResponse.init(jsonString:query:)(v0[325]);
    v25 = v0[336];
    v26 = v0[333];

    OUTLINED_FUNCTION_127();

    return v27();
  }

  else
  {
    v1 = v0[336];
    Date.init()();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v2 = v0[330];
    v3 = v0[329];
    v4 = v0[328];
    v0[337] = static MetricsLogger.shared;
    OUTLINED_FUNCTION_133();
    v6 = (*(v5 + 144))();
    (*(*v2 + 88))(v6);
    v7 = v0[323];
    v8 = v0[324];
    __swift_project_boxed_opaque_existential_1(v0 + 320, v7);
    v9 = *(v8 + 16);
    OUTLINED_FUNCTION_28_0();
    v28 = (v10 + *v10);
    v12 = *(v11 + 4);
    v13 = swift_task_alloc();
    v0[338] = v13;
    *v13 = v0;
    v13[1] = LLMQueryParser.parse(_:clientId:);
    v14 = v0[327];
    v15 = v0[326];

    return (v28)(v0 + 2, v15, v14, 0, 1, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_48();
  v2 = *(*v1 + 2704);
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v5 + 2712) = v0;

  if (v0)
  {
    v6 = LLMQueryParser.parse(_:clientId:);
  }

  else
  {
    v6 = LLMQueryParser.parse(_:clientId:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v15 = v0;
  v1 = *(v0 + 2696);
  v2 = *(v0 + 2688);
  v3 = *(v0 + 2680);
  v4 = *(v0 + 2672);
  v5 = *(v0 + 2632);
  v6 = *(v0 + 2624);
  v7 = *(v0 + 2600);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2560));
  *(v0 + 360) = (*(*v1 + 312))(v2);
  *(v0 + 364) = 0;
  memcpy((v0 + 1168), (v0 + 16), 0x17DuLL);
  memcpy(__dst, (v0 + 16), 0x17DuLL);
  OUTLINED_FUNCTION_133();
  v9 = *(v8 + 152);
  outlined init with copy of LLMQUResult(v0 + 1168, v0 + 1552);
  v9(v6, v5, __dst);
  memcpy((v0 + 784), __dst, 0x17DuLL);
  outlined destroy of LLMQUResult(v0 + 784);
  (*(v3 + 8))(v2, v4);
  memcpy((v0 + 1936), (v0 + 16), 0x138uLL);
  memcpy((v0 + 400), (v0 + 16), 0x17DuLL);
  outlined init with copy of LLMQUModelResponse(v0 + 1936, v0 + 2248);
  outlined destroy of LLMQUResult(v0 + 400);
  memcpy(v7, (v0 + 1936), 0x138uLL);
  v10 = *(v0 + 2688);
  v11 = *(v0 + 2664);

  OUTLINED_FUNCTION_127();

  return v12();
}

{
  v1 = v0[339];
  v2 = v0[337];
  v16 = v0[336];
  v3 = v0[335];
  v4 = v0[334];
  v5 = v0[333];
  v6 = v0[332];
  v7 = v0[331];
  v8 = v0[329];
  v9 = v0[328];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 320);
  (*(*v2 + 320))(v1);
  OUTLINED_FUNCTION_133();
  (*(v10 + 160))(v9, v8, v5);
  (*(v6 + 8))(v5, v7);
  swift_willThrow();
  (*(v3 + 8))(v16, v4);
  v11 = v0[339];
  v12 = v0[336];
  v13 = v0[333];

  OUTLINED_FUNCTION_127();

  return v14();
}

Swift::Void __swiftcall LLMQueryParser.prewarmModel()()
{
  OUTLINED_FUNCTION_133();
  (*(v0 + 88))(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = [objc_opt_self() processInfo];
  v4 = [v3 processIdentifier];

  (*(v2 + 8))(v4, v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t LLMQueryParser.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for QueryParsing.parse(_:clientId:) in conformance LLMQueryParser(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 120);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for QueryParsing.parse(_:clientId:) in conformance LLMQueryParser;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for QueryParsing.parse(_:clientId:) in conformance LLMQueryParser()
{
  OUTLINED_FUNCTION_48();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_11();
  *v3 = v2;

  OUTLINED_FUNCTION_127();

  return v4();
}

uint64_t specialized LLMQueryParser.init(llmQUModelServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  outlined init with take of ResponseOverrideMatcherProtocol(&v9, a2 + 16);
  return a2;
}

uint64_t dispatch thunk of QueryParsing.parse(_:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  OUTLINED_FUNCTION_28_0();
  v21 = (v16 + *v16);
  v18 = *(v17 + 4);
  v19 = swift_task_alloc();
  *(v7 + 16) = v19;
  *v19 = v7;
  v19[1] = protocol witness for QueryParsing.parse(_:clientId:) in conformance LLMQueryParser;

  return v21(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of LLMQueryParser.parse(_:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_133();
  v12 = *(v11 + 120);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = dispatch thunk of LLMQueryParser.parse(_:clientId:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_7_28()
{

  return specialized LLMQueryParser.init(llmQUModelServer:)(v3, v0, v1, v2);
}

double LLMQUModelResponse.init(jsonString:query:)@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  memset(v57, 0, 32);
  v57[32] = 2;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 514;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v67 = 2;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 2;
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  outlined destroy of LLMQUModelResponse(v57);
  static String.Encoding.utf8.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;

  (*(v5 + 8))(v9, v2);
  if (v12 >> 60 == 15)
  {
    lazy protocol witness table accessor for type NetworkServiceError and conformance NetworkServiceError();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  else
  {
    v15 = type metadata accessor for JSONDecoder();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type LLMQUModelResponse and conformance LLMQUModelResponse();
    v18 = v78;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v10, v12);

    if (!v18)
    {
      v19 = v31;
      v20 = v38;
      v21 = v42;
      v22 = v43;
      v23 = v48;
      v24 = v53;
      v25 = v56;
      v26 = v30[1];
      *a1 = v30[0];
      *(a1 + 16) = v26;
      *(a1 + 32) = v19;
      *(a1 + 33) = *v32;
      *(a1 + 36) = *&v32[3];
      *(a1 + 40) = v33;
      *(a1 + 56) = v34;
      *(a1 + 72) = v35;
      *(a1 + 88) = v36;
      *(a1 + 104) = v37;
      *(a1 + 120) = v20;
      *(a1 + 122) = v39;
      *(a1 + 126) = v40;
      *(a1 + 128) = v41;
      *(a1 + 144) = v21;
      *(a1 + 152) = v22;
      v27 = *v44;
      *(a1 + 156) = *&v44[3];
      *(a1 + 153) = v27;
      v28 = v46;
      *(a1 + 160) = v45;
      *(a1 + 176) = v28;
      *(a1 + 192) = v47;
      *(a1 + 208) = v23;
      *(a1 + 212) = *&v49[3];
      *(a1 + 209) = *v49;
      *(a1 + 216) = v50;
      *(a1 + 232) = v51;
      *(a1 + 248) = v52;
      *(a1 + 264) = v24;
      result = *&v54;
      v29 = v55;
      *(a1 + 272) = v54;
      *(a1 + 288) = v29;
      *(a1 + 304) = v25;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LLMQUModelResponse and conformance LLMQUModelResponse()
{
  result = lazy protocol witness table cache variable for type LLMQUModelResponse and conformance LLMQUModelResponse;
  if (!lazy protocol witness table cache variable for type LLMQUModelResponse and conformance LLMQUModelResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMQUModelResponse and conformance LLMQUModelResponse);
  }

  return result;
}

uint64_t LLMQUResult.parse.getter()
{
  memcpy(__dst, v0, 0x138uLL);
  v1 = OUTLINED_FUNCTION_94();
  memcpy(v1, v2, 0x138uLL);
  return outlined init with copy of LLMQUModelResponse(__dst, v4);
}

void *LLMQUResult.parse.setter(const void *a1)
{
  memcpy(v4, v1, 0x138uLL);
  outlined destroy of LLMQUModelResponse(v4);
  return memcpy(v1, a1, 0x138uLL);
}

uint64_t LLMQUResult.loggingMetrics.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 312), 0x45uLL);
  memcpy(a1, (v1 + 312), 0x45uLL);
  return outlined init with copy of LLMQULoggingMetrics(__dst, &v4);
}

void *LLMQUResult.loggingMetrics.setter(const void *a1)
{
  memcpy(__dst, (v1 + 312), 0x45uLL);
  outlined destroy of LLMQULoggingMetrics(__dst);
  return memcpy((v1 + 312), a1, 0x45uLL);
}

void *LLMQUResult.init(parse:loggingMetrics:)@<X0>(void *__src@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(a3, __src, 0x138uLL);

  return memcpy((a3 + 312), a2, 0x45uLL);
}

uint64_t LLMQULoggingMetrics.modelNumber.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQULoggingMetrics.modelNumber.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LLMQULoggingMetrics.requestLength.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t LLMQULoggingMetrics.responseLength.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t LLMQULoggingMetrics.overallTime.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t LLMQULoggingMetrics.promptGenerationTime.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

uint64_t LLMQULoggingMetrics.modelPrewarmTime.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t LLMQULoggingMetrics.modelInferenceTime.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t LLMQULoggingMetrics.postProcessTime.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

void LLMQULoggingMetrics.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
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
}

uint64_t LLMQULoggingMetrics.init(modelNumber:requestLength:responseLength:overallTime:promptGenerationTime:modelPrewarmTime:modelInferenceTime:postProcessTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 20) = BYTE4(a3) & 1;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 36) = BYTE4(a5) & 1;
  *(a9 + 40) = a6;
  *(a9 + 44) = BYTE4(a6) & 1;
  *(a9 + 48) = a7;
  *(a9 + 52) = BYTE4(a7) & 1;
  *(a9 + 56) = a8;
  *(a9 + 60) = BYTE4(a8) & 1;
  *(a9 + 64) = a10;
  *(a9 + 68) = a11 & 1;
  return result;
}

uint64_t LLMQUModelResponse.app_entity_status.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQUModelResponse.app_entity_status.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LLMQUModelResponse.contains_type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQUModelResponse.contains_type.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t LLMQUModelResponse.filter_type.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQUModelResponse.filter_type.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t LLMQUModelResponse.flag_color.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQUModelResponse.flag_color.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t LLMQUModelResponse.location.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t LLMQUModelResponse.location_arrival.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t LLMQUModelResponse.location_departure.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t LLMQUModelResponse.order_by_time.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQUModelResponse.order_by_time.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t LLMQUModelResponse.person.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t LLMQUModelResponse.preferred_type.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQUModelResponse.preferred_type.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t LLMQUModelResponse.receiver.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t LLMQUModelResponse.rewritten_query.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQUModelResponse.rewritten_query.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 168);

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t LLMQUModelResponse.simplified_query.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQUModelResponse.simplified_query.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 184);

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t LLMQUModelResponse.search_term.setter(uint64_t a1)
{
  v3 = *(v1 + 192);

  *(v1 + 192) = a1;
  return result;
}

uint64_t LLMQUModelResponse.sender.setter(uint64_t a1)
{
  v3 = *(v1 + 200);

  *(v1 + 200) = a1;
  return result;
}

uint64_t LLMQUModelResponse.source_type.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQUModelResponse.source_type.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 224);

  *(v1 + 216) = v2;
  *(v1 + 224) = v0;
  return result;
}

uint64_t LLMQUModelResponse.tag_name.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQUModelResponse.tag_name.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 240);

  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  return result;
}

uint64_t LLMQUModelResponse.temporal_reference.getter()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQUModelResponse.temporal_reference.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 256);

  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  return result;
}

uint64_t LLMQUModelResponse.time.setter(uint64_t a1)
{
  v3 = *(v1 + 264);

  *(v1 + 264) = a1;
  return result;
}

uint64_t LLMQUModelResponse.message_time.setter(uint64_t a1)
{
  v3 = *(v1 + 272);

  *(v1 + 272) = a1;
  return result;
}

uint64_t LLMQUModelResponse.app.getter()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQUModelResponse.app.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 288);

  *(v1 + 280) = v2;
  *(v1 + 288) = v0;
  return result;
}

uint64_t LLMQUModelResponse.extracted_type.getter()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMQUModelResponse.extracted_type.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 304);

  *(v1 + 296) = v2;
  *(v1 + 304) = v0;
  return result;
}

double LLMQUModelResponse.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 514;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 2;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 2;
  *(a1 + 216) = 0u;
  v2 = (a1 + 216);
  v2[4] = 0u;
  v2[5] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[1] = 0u;
  return result;
}

Swift::Void __swiftcall LLMQUModelResponse.postProcess()()
{
  if (*(v0 + 104))
  {
    v1 = v0;
    if (*(v0 + 121) == 2)
    {
      if (one-time initialization token for llmQU != -1)
      {
        OUTLINED_FUNCTION_55_14();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static Logging.llmQU);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_25D85C000, v3, v4, "Order by time is set but pick one is not; defaulting pick one to be true", v5, 2u);
        MEMORY[0x25F8A1050](v5, -1, -1);
      }

      *(v1 + 121) = 1;
    }
  }
}

void LLMQUModelResponse.toStructuredQuery()(uint64_t a1@<X8>)
{
  Entity = type metadata accessor for PersonQueryEntity(0);
  v354 = OUTLINED_FUNCTION_14(Entity);
  v355 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v354);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v17);
  v323 = &v316 - v18;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  v368 = &v316 - v21;
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  v367 = &v316 - v24;
  v366 = type metadata accessor for LocalizedStringResource();
  v25 = OUTLINED_FUNCTION_17(v366);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v316 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = type metadata accessor for LocationQueryEntity(0);
  v30 = OUTLINED_FUNCTION_14(v365);
  *&v364 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  v357 = v34;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7_4();
  v356 = v36;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_4();
  v361 = v38;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_4();
  v360 = v40;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v41);
  v43 = &v316 - v42;
  MEMORY[0x28223BE20](v44);
  v362 = (&v316 - v45);
  v46 = v1[1];
  v353 = *v1;
  v47 = v1[2];
  v48 = v1[3];
  v49 = *(v1 + 32);
  v50 = v1[6];
  v363 = v1[5];
  v51 = v1[7];
  v52 = v1[8];
  v358 = v47;
  v359 = v51;
  v53 = v1[9];
  v350 = v1[10];
  v54 = v1[12];
  v349 = v1[11];
  v322 = v54;
  v55 = v1[14];
  v333 = v1[13];
  v334 = v55;
  v335 = *(v1 + 120);
  v340 = *(v1 + 121);
  v56 = v1[17];
  v328 = v1[16];
  v341 = v56;
  v338 = v1[18];
  v339 = *(v1 + 152);
  v57 = v1[24];
  OUTLINED_FUNCTION_59_13(v1[25]);
  v330 = v58;
  v343 = v59;
  v60 = v1[30];
  v331 = v1[29];
  v344 = v60;
  v61 = v1[32];
  v332 = v1[31];
  v345 = v61;
  v62 = v1[34];
  v346 = v1[33];
  v347 = v62;
  v63 = v1[37];
  OUTLINED_FUNCTION_62_13(v1[38]);
  StructuredQueryEntity.init()();
  v351 = a1;
  if (v46)
  {
    v64._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v65 = String.camelCased(with:)(v64);
    AppEntityStatus.init(rawValue:)(v65);
    v66 = v370;
    v67 = *(v351 + *(type metadata accessor for StructuredQueryEntity(0) + 40));
    v369 = v66;
    a1 = v351;
    EntityProperty.wrappedValue.setter();
  }

  if (v48)
  {
    v68._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v69 = String.camelCased(with:)(v68);
    ContainsType.init(rawValue:)(v69);
    if (v370 != 38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch12ContainsTypeOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch12ContainsTypeOGMR);
      v70 = OUTLINED_FUNCTION_79_12();
      OUTLINED_FUNCTION_69_10(v70, xmmword_25DBC8180);
      v71 = *(a1 + *(type metadata accessor for StructuredQueryEntity(0) + 80));
      v370 = v70;
      EntityProperty.wrappedValue.setter();
    }
  }

  if (v49 != 2)
  {
    v72 = *(a1 + *(type metadata accessor for StructuredQueryEntity(0) + 20));
    LOBYTE(v370) = v49 & 1;
    EntityProperty.wrappedValue.setter();
  }

  if (v50)
  {
    v73._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v74 = String.camelCased(with:)(v73);
    FilterType.init(rawValue:)(v74);
    if (v370 != 39)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch10FilterTypeOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch10FilterTypeOGMR);
      v75 = OUTLINED_FUNCTION_79_12();
      OUTLINED_FUNCTION_69_10(v75, xmmword_25DBC8180);
      v76 = *(a1 + *(type metadata accessor for StructuredQueryEntity(0) + 24));
      v370 = v75;
      EntityProperty.wrappedValue.setter();
    }
  }

  if (v52)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v77 = OUTLINED_FUNCTION_78_14();
    *(v77 + 16) = xmmword_25DBC8180;
    *(v77 + 32) = v359;
    *(v77 + 40) = v52;
    v78 = *(a1 + *(type metadata accessor for StructuredQueryEntity(0) + 72));
    v370 = v77;

    EntityProperty.wrappedValue.setter();
  }

  v79 = MEMORY[0x277D84F90];
  if (v53)
  {
    v80 = v53;
  }

  else
  {
    v80 = MEMORY[0x277D84F90];
  }

  v352 = *(v80 + 16);
  v363 = "llmQUModelServer";

  v81 = 0;
  v353 = v80;
  v82 = (v80 + 40);
  v83 = v79;
  while (v352 != v81)
  {
    if (v81 >= *(v353 + 16))
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v358 = v82;
    v359 = v81;
    v52 = *(v82 - 1);
    v84 = *v82;

    OUTLINED_FUNCTION_51_14();
    v87 = OUTLINED_FUNCTION_77_12(v367, v85, v86, v366);
    OUTLINED_FUNCTION_50_13(v87);
    v88 = v362;
    DisplayRepresentation.init(title:subtitle:image:)();
    v89 = v43;
    v90 = v365;
    v91 = *(v365 + 5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
    OUTLINED_FUNCTION_28_19();
    v92 = EntityProperty<>.init(title:)();
    *(v88 + v91) = v92;
    v93 = *(v90 + 6);
    OUTLINED_FUNCTION_45_13();
    *(v88 + v93) = EntityProperty<>.init(title:)();
    v94 = *(v90 + 7);
    v43 = v89;
    OUTLINED_FUNCTION_34_22();
    *(v88 + v94) = EntityProperty<>.init(title:)();
    v370 = v52;
    v371 = v84;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_21_22();
    _s10OmniSearch19LocationQueryEntityVWOcTm_0(v88, v89, v95);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = *(v83 + 16);
      v101 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v101, v102, v103, v83);
      v83 = v104;
    }

    OUTLINED_FUNCTION_66_14();
    if (v97)
    {
      v105 = OUTLINED_FUNCTION_22_5(v96);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v105, v106, v107, v83);
      v83 = v108;
    }

    OUTLINED_FUNCTION_13_19();
    outlined init with take of LocationQueryEntity(v89, v98, v99);
    outlined destroy of LocationQueryEntity(v362, v92);
    v82 = v358 + 2;
    v81 = v359 + 1;
  }

  if (v350)
  {
    v109 = v350;
  }

  else
  {
    v109 = MEMORY[0x277D84F90];
  }

  v358 = *(v109 + 16);

  v110 = 0;
  v359 = v109;
  v111 = (v109 + 40);
  while (v358 != v110)
  {
    if (v110 >= *(v359 + 16))
    {
      goto LABEL_149;
    }

    v52 = *(v111 - 1);
    v112 = *v111;
    v362 = v111;

    OUTLINED_FUNCTION_51_14();
    v115 = OUTLINED_FUNCTION_77_12(v367, v113, v114, v366);
    OUTLINED_FUNCTION_50_13(v115);
    v116 = v360;
    DisplayRepresentation.init(title:subtitle:image:)();
    v117 = v365;
    v118 = *(v365 + 5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
    OUTLINED_FUNCTION_28_19();
    *(v116 + v118) = EntityProperty<>.init(title:)();
    v119 = *(v117 + 6);
    OUTLINED_FUNCTION_45_13();
    v120 = EntityProperty<>.init(title:)();
    *(v116 + v119) = v120;
    v121 = *(v117 + 7);
    OUTLINED_FUNCTION_34_22();
    *(v116 + v121) = EntityProperty<>.init(title:)();
    v370 = v52;
    v371 = v112;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_21_22();
    _s10OmniSearch19LocationQueryEntityVWOcTm_0(v116, v361, v122);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v126 = *(v83 + 16);
      v127 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v127, v128, v129, v83);
      v83 = v130;
    }

    OUTLINED_FUNCTION_66_14();
    if (v97)
    {
      v131 = OUTLINED_FUNCTION_22_5(v123);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v131, v132, v133, v83);
      v83 = v134;
    }

    OUTLINED_FUNCTION_13_19();
    outlined init with take of LocationQueryEntity(v361, v124, v125);
    outlined destroy of LocationQueryEntity(v360, v120);
    v111 = v362 + 2;
    v110 = (v110 + 1);
  }

  if (v349)
  {
    v135 = v349;
  }

  else
  {
    v135 = MEMORY[0x277D84F90];
  }

  v361 = *(v135 + 16);

  v136 = 0;
  v362 = v135;
  v137 = (v135 + 40);
  v138 = v365;
  while (v361 != v136)
  {
    if (v136 >= v362[2])
    {
      goto LABEL_150;
    }

    v52 = *(v137 - 1);
    v139 = *v137;

    OUTLINED_FUNCTION_51_14();
    v142 = OUTLINED_FUNCTION_77_12(v367, v140, v141, v366);
    OUTLINED_FUNCTION_50_13(v142);
    v143 = v356;
    DisplayRepresentation.init(title:subtitle:image:)();
    v144 = v138[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
    OUTLINED_FUNCTION_28_19();
    *(v143 + v144) = EntityProperty<>.init(title:)();
    v145 = v138[6];
    OUTLINED_FUNCTION_45_13();
    *(v143 + v145) = EntityProperty<>.init(title:)();
    v146 = v138[7];
    OUTLINED_FUNCTION_34_22();
    v147 = EntityProperty<>.init(title:)();
    *(v143 + v146) = v147;
    v370 = v52;
    v371 = v139;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_21_22();
    _s10OmniSearch19LocationQueryEntityVWOcTm_0(v143, v357, v148);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v152 = *(v83 + 16);
      v153 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v153, v154, v155, v83);
      v83 = v156;
    }

    OUTLINED_FUNCTION_66_14();
    if (v97)
    {
      v157 = OUTLINED_FUNCTION_22_5(v149);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v157, v158, v159, v83);
      v83 = v160;
    }

    OUTLINED_FUNCTION_13_19();
    outlined init with take of LocationQueryEntity(v357, v150, v151);
    outlined destroy of LocationQueryEntity(v356, v147);
    v137 += 2;
    ++v136;
  }

  v161 = v351;
  if (*(v83 + 16))
  {
    v162 = *(v161 + *(type metadata accessor for StructuredQueryEntity(0) + 52));
    v370 = v83;

    EntityProperty.wrappedValue.setter();
  }

  if (v333)
  {
    v163._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v164 = String.camelCased(with:)(v163);
    v165 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LLMQUModelResponse.toStructuredQuery(), v164);

    if (v165 == 1)
    {
      v166 = 1;
    }

    else
    {
      v166 = 2;
    }

    if (v165)
    {
      v167 = v166;
    }

    else
    {
      v167 = 0;
    }

    v168 = *(v161 + *(type metadata accessor for StructuredQueryEntity(0) + 36));
    LOBYTE(v370) = v167;
    EntityProperty.wrappedValue.setter();
  }

  v368 = v29;
  v363 = v83;
  if (v334)
  {
    v169 = v334;
  }

  else
  {
    v169 = MEMORY[0x277D84F90];
  }

  v170 = *(v169 + 16);
  v362 = v169;
  if (v170)
  {
    v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch17ContactHandleTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch17ContactHandleTypeOGSgGMR);
    v365 = "Source Document UT Type";
    v366 = v171;

    v172 = MEMORY[0x277D84F90];
    v173 = v169 + 40;
    v364 = xmmword_25DBC8180;
    v174 = v324;
    v175 = v323;
    do
    {
      OUTLINED_FUNCTION_75_12();
      PersonQueryEntity.init()(v175);
      OUTLINED_FUNCTION_57_12();
      EntityProperty<>.init(title:)();
      OUTLINED_FUNCTION_47_15();
      lazy protocol witness table accessor for type ContactHandleType and conformance ContactHandleType();
      v176 = OUTLINED_FUNCTION_74_17();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v177 = OUTLINED_FUNCTION_78_14();
      OUTLINED_FUNCTION_46_17(v177);

      EntityProperty.wrappedValue.setter();
      v178 = *(v175 + v354[5]);
      v370 = v52;
      v371 = v176;
      EntityProperty.wrappedValue.setter();
      OUTLINED_FUNCTION_3_38();
      _s10OmniSearch19LocationQueryEntityVWOcTm_0(v175, v174, v179);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v183 = *(v172 + 16);
        v184 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v184, v185, v186, v172);
        v172 = v187;
      }

      OUTLINED_FUNCTION_65_16();
      if (v97)
      {
        v188 = OUTLINED_FUNCTION_22_5(v180);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v188, v189, v190, v172);
        v172 = v191;
      }

      *(v172 + 16) = v178;
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_2_33();
      outlined init with take of LocationQueryEntity(v174, v181, v182);
      OUTLINED_FUNCTION_88_9();
      v173 += 16;
      --v170;
    }

    while (v170);
  }

  else
  {

    v172 = MEMORY[0x277D84F90];
  }

  if (v335 != 2 && (v335 & 1) != 0)
  {
    v192 = v316;
    PersonQueryEntity.init()(v316);
    if (one-time initialization token for oneself != -1)
    {
      OUTLINED_FUNCTION_26_15();
    }

    v193 = unk_27FC6EAE0;
    v194 = *(v192 + v354[5]);
    v370 = static Person.oneself;
    v371 = unk_27FC6EAE0;

    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_3_38();
    v195 = v317;
    _s10OmniSearch19LocationQueryEntityVWOcTm_0(v192, v317, v196);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v298 = *(v172 + 16);
      v299 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v299, v300, v301, v172);
      v172 = v302;
    }

    OUTLINED_FUNCTION_64_12();
    if (v97)
    {
      OUTLINED_FUNCTION_54_17(v197);
      v172 = v303;
    }

    *(v172 + 16) = v193;
    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_2_33();
    outlined init with take of LocationQueryEntity(v195, v198, v199);
    OUTLINED_FUNCTION_88_9();
  }

  if (v336)
  {
    v200 = v336;
  }

  else
  {
    v200 = MEMORY[0x277D84F90];
  }

  v201 = *(v200 + 16);
  v362 = v200;
  if (v201)
  {
    v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
    v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch17ContactHandleTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch17ContactHandleTypeOGSgGMR);
    v365 = "Source Document UT Type";
    v366 = v202;

    v203 = v200 + 40;
    v364 = xmmword_25DBC8180;
    v204 = v326;
    v205 = v325;
    do
    {
      OUTLINED_FUNCTION_75_12();
      PersonQueryEntity.init()(v205);
      OUTLINED_FUNCTION_57_12();
      EntityProperty<>.init(title:)();
      OUTLINED_FUNCTION_47_15();
      lazy protocol witness table accessor for type ContactHandleType and conformance ContactHandleType();
      v206 = OUTLINED_FUNCTION_74_17();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v207 = OUTLINED_FUNCTION_78_14();
      OUTLINED_FUNCTION_46_17(v207);

      EntityProperty.wrappedValue.setter();
      v208 = *(v205 + v354[6]);
      v370 = v52;
      v371 = v206;
      EntityProperty.wrappedValue.setter();
      OUTLINED_FUNCTION_3_38();
      _s10OmniSearch19LocationQueryEntityVWOcTm_0(v205, v204, v209);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v213 = *(v172 + 16);
        v214 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v214, v215, v216, v172);
        v172 = v217;
      }

      OUTLINED_FUNCTION_65_16();
      if (v97)
      {
        v218 = OUTLINED_FUNCTION_22_5(v210);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v218, v219, v220, v172);
        v172 = v221;
      }

      *(v172 + 16) = v208;
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_2_33();
      outlined init with take of LocationQueryEntity(v204, v211, v212);
      OUTLINED_FUNCTION_88_9();
      v203 += 16;
      --v201;
    }

    while (v201);
  }

  else
  {
  }

  if (v337 != 2 && (v337 & 1) != 0)
  {
    v222 = v318;
    PersonQueryEntity.init()(v318);
    if (one-time initialization token for oneself != -1)
    {
      OUTLINED_FUNCTION_26_15();
    }

    v223 = unk_27FC6EAE0;
    v224 = *(v222 + v354[6]);
    v370 = static Person.oneself;
    v371 = unk_27FC6EAE0;

    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_3_38();
    v225 = v319;
    _s10OmniSearch19LocationQueryEntityVWOcTm_0(v222, v319, v226);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v304 = *(v172 + 16);
      v305 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v305, v306, v307, v172);
      v172 = v308;
    }

    OUTLINED_FUNCTION_64_12();
    if (v97)
    {
      OUTLINED_FUNCTION_54_17(v227);
      v172 = v309;
    }

    *(v172 + 16) = v223;
    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_2_33();
    outlined init with take of LocationQueryEntity(v225, v228, v229);
    OUTLINED_FUNCTION_88_9();
  }

  v230 = v338;
  if (v338)
  {
    v231 = v338;
  }

  else
  {
    v231 = MEMORY[0x277D84F90];
  }

  v232 = *(v231 + 16);
  v362 = v231;
  if (v232)
  {
    v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
    v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch17ContactHandleTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch17ContactHandleTypeOGSgGMR);
    v365 = "Source Document UT Type";
    v366 = v233;

    v234 = v231 + 40;
    v364 = xmmword_25DBC8180;
    v235 = v329;
    v236 = v327;
    do
    {
      OUTLINED_FUNCTION_75_12();
      PersonQueryEntity.init()(v236);
      OUTLINED_FUNCTION_57_12();
      EntityProperty<>.init(title:)();
      OUTLINED_FUNCTION_47_15();
      lazy protocol witness table accessor for type ContactHandleType and conformance ContactHandleType();
      v230 = OUTLINED_FUNCTION_74_17();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v237 = OUTLINED_FUNCTION_78_14();
      OUTLINED_FUNCTION_46_17(v237);

      EntityProperty.wrappedValue.setter();
      v238 = *(v236 + v354[7]);
      v370 = v52;
      v371 = v230;
      EntityProperty.wrappedValue.setter();
      OUTLINED_FUNCTION_3_38();
      _s10OmniSearch19LocationQueryEntityVWOcTm_0(v236, v235, v239);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v243 = *(v172 + 16);
        v244 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v244, v245, v246, v172);
        v172 = v247;
      }

      OUTLINED_FUNCTION_65_16();
      if (v97)
      {
        v248 = OUTLINED_FUNCTION_22_5(v240);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v248, v249, v250, v172);
        v172 = v251;
      }

      *(v172 + 16) = v238;
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_2_33();
      outlined init with take of LocationQueryEntity(v235, v241, v242);
      outlined destroy of LocationQueryEntity(v236, v230);
      v234 += 16;
      --v232;
    }

    while (v232);
  }

  else
  {
  }

  if (v339 == 2)
  {
    v252 = v351;
    v253 = v348;
    v254 = v347;
    v255 = v346;
    OUTLINED_FUNCTION_86_13();
  }

  else
  {
    v252 = v351;
    v253 = v348;
    v254 = v347;
    v255 = v346;
    if (v339)
    {
      v256 = v321;
      PersonQueryEntity.init()(v321);
      if (one-time initialization token for oneself != -1)
      {
        OUTLINED_FUNCTION_26_15();
      }

      v230 = unk_27FC6EAE0;
      v257 = *(v256 + v354[7]);
      v370 = static Person.oneself;
      v371 = unk_27FC6EAE0;

      EntityProperty.wrappedValue.setter();
      OUTLINED_FUNCTION_3_38();
      v258 = v256;
      v169 = v320;
      _s10OmniSearch19LocationQueryEntityVWOcTm_0(v258, v320, v259);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v310 = *(v172 + 16);
        v311 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v311, v312, v313, v172);
        v172 = v314;
      }

      OUTLINED_FUNCTION_64_12();
      if (v97)
      {
        OUTLINED_FUNCTION_54_17(v260);
        v172 = v315;
      }

      *(v172 + 16) = v230;
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_2_33();
      outlined init with take of LocationQueryEntity(v169, v261, v262);
      outlined destroy of LocationQueryEntity(v321, v230);
    }

    OUTLINED_FUNCTION_86_13();
  }

  if (*(v172 + 16))
  {
    v263 = *(v252 + *(type metadata accessor for StructuredQueryEntity(0) + 64));
    v370 = v172;

    EntityProperty.wrappedValue.setter();
  }

  if (v169 != 2)
  {
    v264 = *(v252 + *(type metadata accessor for StructuredQueryEntity(0) + 44));
    LOBYTE(v370) = v169 & 1;
    EntityProperty.wrappedValue.setter();
  }

  if (v230)
  {
    v265._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v266 = String.camelCased(with:)(v265);
    PreferredType.init(rawValue:)(v266);
    if (v370 != 58)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch13PreferredTypeOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch13PreferredTypeOGMR);
      v267 = OUTLINED_FUNCTION_79_12();
      OUTLINED_FUNCTION_69_10(v267, xmmword_25DBC8180);
      v268 = *(v252 + *(type metadata accessor for StructuredQueryEntity(0) + 28));
      v370 = v267;
      EntityProperty.wrappedValue.setter();
    }
  }

  if (v342)
  {
    v269 = v342;
  }

  else
  {
    v269 = MEMORY[0x277D84F90];
  }

  v270 = type metadata accessor for StructuredQueryEntity(0);
  v271 = *(v252 + v270[12]);
  v370 = v269;
  EntityProperty.wrappedValue.setter();
  if (v343)
  {
    v272._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v273 = String.camelCased(with:)(v272);
    SourceType.init(rawValue:)(v273);
    if (v370 != 26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch10SourceTypeOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch10SourceTypeOGMR);
      v274 = OUTLINED_FUNCTION_79_12();
      v275 = OUTLINED_FUNCTION_69_10(v274, xmmword_25DBC8180);
      v276 = *(v252 + v270[19]);
      v370 = v275;
      EntityProperty.wrappedValue.setter();
    }
  }

  v277 = v344;
  if (v344)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v278 = OUTLINED_FUNCTION_78_14();
    *(v278 + 16) = xmmword_25DBC8180;
    *(v278 + 32) = v331;
    *(v278 + 40) = v277;
    v279 = *(v252 + v270[17]);
    v370 = v278;

    EntityProperty.wrappedValue.setter();
  }

  if (v345)
  {
    v280._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v281 = String.camelCased(with:)(v280);
    v282 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TemporalReference.init(rawValue:), v281);

    v283 = 3;
    if (v282 < 3)
    {
      v283 = v282;
    }

    v284 = *(v252 + v270[8]);
    LOBYTE(v370) = v283;
    EntityProperty.wrappedValue.setter();
  }

  v285 = *(v252 + v270[14]);
  v370 = v255;

  EntityProperty.wrappedValue.setter();
  v286 = *(v252 + v270[15]);
  v370 = v254;

  EntityProperty.wrappedValue.setter();
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  v287 = FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_llmQUExtractedType);
  if (v253)
  {
    LOBYTE(v29) = v287;
    v288._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v289 = String.camelCased(with:)(v288);
    ExtractedType.init(rawValue:)(v289);
    if (((v370 != 13) & v29) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch13ExtractedTypeOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch13ExtractedTypeOGMR);
      v290 = OUTLINED_FUNCTION_79_12();
      v291 = OUTLINED_FUNCTION_69_10(v290, xmmword_25DBC8180);
      v292 = *(v252 + v270[22]);
      v370 = v291;
      EntityProperty.wrappedValue.setter();
      return;
    }

    if (one-time initialization token for llmQU != -1)
    {
LABEL_151:
      OUTLINED_FUNCTION_55_14();
    }

    v293 = type metadata accessor for Logger();
    __swift_project_value_buffer(v293, static Logging.llmQU);

    v294 = Logger.logObject.getter();
    v295 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v294, v295))
    {
      v296 = swift_slowAlloc();
      v297 = swift_slowAlloc();
      v370 = v297;
      *v296 = 136315394;
      *(v296 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v296 + 12) = 1024;
      *(v296 + 14) = v29 & 1;
      _os_log_impl(&dword_25D85C000, v294, v295, "Dropping extracted_type %s because it is either an unsupported type, or llmQUExtractedType FF is not enabled. Enablement status: %{BOOL}d", v296, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v297);
      MEMORY[0x25F8A1050](v297, -1, -1);
      MEMORY[0x25F8A1050](v296, -1, -1);
    }
  }
}

uint64_t LLMQUModelResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000025DBF5600 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6961746E6F63 && a2 == 0xED0000657079745FLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6562697263736564 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x745F7265746C6966 && a2 == 0xEB00000000657079;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C6F635F67616C66 && a2 == 0xEA0000000000726FLL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x800000025DBF5620 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x800000025DBF5640 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x79625F726564726FLL && a2 == 0xED0000656D69745FLL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x695F6E6F73726570 && a2 == 0xEC000000656D5F73;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656E6F5F6B636970 && a2 == 0xE800000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6572726566657270 && a2 == 0xEE00657079745F64;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x7265766965636572 && a2 == 0xE800000000000000;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7265766965636572 && a2 == 0xEE00656D5F73695FLL;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6574746972776572 && a2 == 0xEF79726575715F6ELL;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000010 && 0x800000025DBF5660 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x745F686372616573 && a2 == 0xEB000000006D7265;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x695F7265646E6573 && a2 == 0xEC000000656D5F73;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x745F656372756F73 && a2 == 0xEB00000000657079;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x656D616E5F676174 && a2 == 0xE800000000000000;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000012 && 0x800000025DBF5680 == a2;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 1701669236 && a2 == 0xE400000000000000;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x5F6567617373656DLL && a2 == 0xEC000000656D6974;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 7368801 && a2 == 0xE300000000000000;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else if (a1 == 0x6574636172747865 && a2 == 0xEE00657079745F64)
                                                    {

                                                      return 26;
                                                    }

                                                    else
                                                    {
                                                      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                      if (v32)
                                                      {
                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        return 27;
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

uint64_t LLMQUModelResponse.CodingKeys.stringValue.getter(char a1)
{
  result = 0x736E6961746E6F63;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x6562697263736564;
    case 3:
      v3 = 0x7265746C6966;
      goto LABEL_15;
    case 4:
      return 0x6C6F635F67616C66;
    case 5:
      return 0x6E6F697461636F6CLL;
    case 6:
      return 0xD000000000000010;
    case 7:
    case 22:
      return 0xD000000000000012;
    case 8:
      return 0x79625F726564726FLL;
    case 9:
      return 0x6E6F73726570;
    case 10:
      v4 = 0x6E6F73726570;
      goto LABEL_26;
    case 11:
      return 0x656E6F5F6B636970;
    case 12:
      return 0x6572726566657270;
    case 13:
    case 14:
      return 0x7265766965636572;
    case 15:
      return 0x6574746972776572;
    case 16:
      return 0xD000000000000010;
    case 17:
      return 0x745F686372616573;
    case 18:
      return 0x7265646E6573;
    case 19:
      v4 = 0x7265646E6573;
LABEL_26:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x695F000000000000;
      break;
    case 20:
      v3 = 0x656372756F73;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x745F000000000000;
      break;
    case 21:
      result = 0x656D616E5F676174;
      break;
    case 23:
      result = 1701669236;
      break;
    case 24:
      result = 0x5F6567617373656DLL;
      break;
    case 25:
      result = 7368801;
      break;
    case 26:
      result = 0x6574636172747865;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LLMQUModelResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LLMQUModelResponse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance LLMQUModelResponse.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = LLMQUModelResponse.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LLMQUModelResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LLMQUModelResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LLMQUModelResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch18LLMQUModelResponseV10CodingKeys33_435326338C7AADA9B71CF25FC4E73CA6LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch18LLMQUModelResponseV10CodingKeys33_435326338C7AADA9B71CF25FC4E73CA6LLOGMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = v36 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v54 = v1[3];
  v55 = v13;
  v53 = *(v1 + 32);
  v14 = v1[5];
  v51 = v1[6];
  v52 = v14;
  v15 = v1[7];
  v49 = v1[8];
  v50 = v15;
  v16 = v1[9];
  v47 = v1[10];
  v48 = v16;
  v17 = v1[11];
  v18 = v1[12];
  v19 = v1[14];
  v45 = v1[13];
  v46 = v17;
  v43 = v19;
  v44 = v18;
  LODWORD(v17) = *(v1 + 120);
  v41 = *(v1 + 121);
  v42 = v17;
  v20 = v1[17];
  v39 = v1[16];
  v40 = v20;
  v38 = v1[18];
  v37 = *(v1 + 152);
  v21 = v1[21];
  v36[17] = v1[20];
  v36[18] = v21;
  v22 = v1[23];
  v36[15] = v1[22];
  v36[16] = v22;
  v23 = v1[24];
  OUTLINED_FUNCTION_59_13(v1[25]);
  v36[3] = v24;
  v36[4] = v25;
  v26 = v1[30];
  v36[5] = v1[29];
  v36[6] = v26;
  v27 = v1[32];
  v36[7] = v1[31];
  v36[8] = v27;
  v28 = v1[34];
  v36[9] = v1[33];
  v36[10] = v28;
  v29 = v1[35];
  OUTLINED_FUNCTION_62_13(v1[36]);
  v30 = v1[38];
  v36[13] = v1[37];
  v36[14] = v30;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v59) = 0;
  v32 = v56;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v32)
  {
    return (*(v5 + 8))(v10, v3);
  }

  v56 = v5;
  OUTLINED_FUNCTION_48_10(1);
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_67_15(2);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_48_10(3);
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_48_10(4);
  OUTLINED_FUNCTION_89_12();
  v59 = v48;
  v57[7] = 5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v34 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  OUTLINED_FUNCTION_61_15();
  v59 = v47;
  OUTLINED_FUNCTION_27_18(6);
  OUTLINED_FUNCTION_61_15();
  v59 = v46;
  OUTLINED_FUNCTION_27_18(7);
  OUTLINED_FUNCTION_61_15();
  v54 = v34;
  v55 = v33;
  OUTLINED_FUNCTION_48_10(8);
  OUTLINED_FUNCTION_89_12();
  v59 = v43;
  OUTLINED_FUNCTION_27_18(9);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_67_15(10);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_67_15(11);
  OUTLINED_FUNCTION_39_16();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_48_10(12);
  OUTLINED_FUNCTION_39_16();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v59 = v38;
  OUTLINED_FUNCTION_19_23(13);
  OUTLINED_FUNCTION_67_15(14);
  OUTLINED_FUNCTION_39_16();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_48_10(15);
  OUTLINED_FUNCTION_39_16();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_48_10(16);
  OUTLINED_FUNCTION_32_23(&v63);
  OUTLINED_FUNCTION_80_10(&v51);
  OUTLINED_FUNCTION_19_23(17);
  OUTLINED_FUNCTION_80_10(&v52);
  OUTLINED_FUNCTION_19_23(18);
  OUTLINED_FUNCTION_67_15(19);
  OUTLINED_FUNCTION_39_16();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_48_10(20);
  OUTLINED_FUNCTION_32_23(&v55);
  OUTLINED_FUNCTION_48_10(21);
  OUTLINED_FUNCTION_32_23(v57);
  OUTLINED_FUNCTION_48_10(22);
  OUTLINED_FUNCTION_32_23(&v58);
  OUTLINED_FUNCTION_80_10(&v59);
  OUTLINED_FUNCTION_19_23(23);
  OUTLINED_FUNCTION_80_10(&v60);
  OUTLINED_FUNCTION_19_23(24);
  OUTLINED_FUNCTION_48_10(25);
  OUTLINED_FUNCTION_32_23(&v61);
  OUTLINED_FUNCTION_48_10(26);
  OUTLINED_FUNCTION_32_23(&v62);
  return (*(v56 + 8))(0, v3);
}

uint64_t LLMQUModelResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch18LLMQUModelResponseV10CodingKeys33_435326338C7AADA9B71CF25FC4E73CA6LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch18LLMQUModelResponseV10CodingKeys33_435326338C7AADA9B71CF25FC4E73CA6LLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v101 = v2;
    OUTLINED_FUNCTION_0_51();
    OUTLINED_FUNCTION_12_29();
    OUTLINED_FUNCTION_81_14();
    OUTLINED_FUNCTION_16_25();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 2;
    v84 = v2;
    v85 = v9;
    v86 = v67;
    v87 = v69;
    *v83 = v100[0];
    *&v83[3] = *(v100 + 3);
    v88 = v65;
    v89 = v63;
    OUTLINED_FUNCTION_49_17();
    v91 = v99;
    v90 = *(v10 + 14);
    OUTLINED_FUNCTION_60_10();
    *(v92 + 3) = *(v11 + 10);
    v92[0] = *(v11 + 7);
    OUTLINED_FUNCTION_42_17();
    *(v93 + 3) = *(v12 + 3);
    v93[0] = *v96;
    OUTLINED_FUNCTION_33_20();
    v95 = 0;
    v94 = 0;
  }

  else
  {
    LOBYTE(v78) = 0;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v14;
    OUTLINED_FUNCTION_7_29(1);
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v15;
    OUTLINED_FUNCTION_7_29(2);
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_7_29(3);
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v16;
    OUTLINED_FUNCTION_7_29(4);
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v70 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    LOBYTE(v76[0]) = 5;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_6_24(6);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v66 = v78;
    OUTLINED_FUNCTION_6_24(7);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v64 = v78;
    v62 = v78;
    OUTLINED_FUNCTION_7_29(8);
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v61 = v18;
    OUTLINED_FUNCTION_6_24(9);
    OUTLINED_FUNCTION_35_21();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v59 = v78;
    OUTLINED_FUNCTION_4_34(10);
    v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_4_34(11);
    v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_4_34(12);
    v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v73 = v19;
    OUTLINED_FUNCTION_6_24(13);
    OUTLINED_FUNCTION_35_21();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v58 = v78;
    OUTLINED_FUNCTION_4_34(14);
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_4_34(15);
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v57 = v20;
    OUTLINED_FUNCTION_4_34(16);
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56 = v21;
    OUTLINED_FUNCTION_6_24(17);
    OUTLINED_FUNCTION_35_21();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v53 = v78;
    OUTLINED_FUNCTION_6_24(18);
    OUTLINED_FUNCTION_35_21();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v50 = v78;
    OUTLINED_FUNCTION_4_34(19);
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_4_34(20);
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = v22;
    OUTLINED_FUNCTION_4_34(21);
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v23;
    OUTLINED_FUNCTION_4_34(22);
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v51 = v24;
    OUTLINED_FUNCTION_6_24(23);
    OUTLINED_FUNCTION_35_21();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v48 = v78;
    OUTLINED_FUNCTION_6_24(24);
    OUTLINED_FUNCTION_35_21();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v44 = v78;
    OUTLINED_FUNCTION_4_34(25);
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v25;
    v77 = 26;
    OUTLINED_FUNCTION_35_21();
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v101 = 0;
    v27 = v26;
    v28 = OUTLINED_FUNCTION_10_26();
    v29(v28);
    *(&v76[19] + 1) = *v97;
    HIDWORD(v76[26]) = *&v96[3];
    *(&v76[26] + 1) = *v96;
    *(&v76[4] + 1) = v100[0];
    HIDWORD(v76[4]) = *(v100 + 3);
    *(&v76[15] + 2) = v98;
    HIWORD(v76[15]) = v99;
    HIDWORD(v76[19]) = *&v97[3];
    v76[0] = v39;
    v76[1] = v40;
    v76[2] = v37;
    v76[3] = v38;
    LOBYTE(v76[4]) = v36;
    v76[5] = v34;
    v76[6] = v35;
    v76[7] = v68;
    v76[8] = v70;
    v76[9] = v66;
    v76[10] = v64;
    v76[11] = v62;
    v76[12] = v60;
    v76[13] = v61;
    v76[14] = v59;
    LOBYTE(v76[15]) = v75;
    BYTE1(v76[15]) = v74;
    v76[16] = v72;
    v76[17] = v73;
    v76[18] = v58;
    LOBYTE(v76[19]) = v71;
    v76[20] = v55;
    v76[21] = v57;
    v76[22] = v54;
    v76[23] = v56;
    v76[24] = v53;
    v76[25] = v50;
    LOBYTE(v76[26]) = v41;
    v76[27] = v42;
    v76[28] = v45;
    v76[29] = v43;
    v76[30] = v49;
    v76[31] = v46;
    v76[32] = v51;
    v76[33] = v48;
    v76[34] = v44;
    v76[35] = v47;
    v76[36] = v52;
    v76[37] = v33;
    v76[38] = v27;
    memcpy(a2, v76, 0x138uLL);
    outlined init with copy of LLMQUModelResponse(v76, &v78);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v78 = v39;
    v79 = v40;
    v80 = v37;
    v81 = v38;
    v82 = v36;
    v84 = v34;
    v85 = v35;
    v86 = v68;
    v87 = v70;
    v88 = v66;
    v89 = v64;
    *v83 = v100[0];
    *&v83[3] = *(v100 + 3);
    OUTLINED_FUNCTION_49_17();
    *(v30 + 122) = v98;
    v91 = v99;
    OUTLINED_FUNCTION_60_10();
    *(v31 + 153) = *v97;
    *(v92 + 3) = *&v97[3];
    OUTLINED_FUNCTION_42_17();
    *(v93 + 3) = *&v96[3];
    *(v32 + 209) = *v96;
    OUTLINED_FUNCTION_33_20();
    v94 = v33;
    v95 = v27;
  }

  return outlined destroy of LLMQUModelResponse(&v78);
}

uint64_t LLMQUModelResponse.description.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = OUTLINED_FUNCTION_14(v1);
  v156 = v3;
  v157 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_39_0();
  v154 = v6;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_4();
  v153 = v8;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v9);
  v155 = &v121 - v10;
  v11 = *v0;
  v12 = *(v0 + 8);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  v15 = *(v0 + 32);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v18 = *(v0 + 64);
  v122 = *(v0 + 56);
  v19 = *(v0 + 72);
  v132 = *(v0 + 80);
  v20 = *(v0 + 96);
  v133 = *(v0 + 88);
  v123 = v20;
  v21 = *(v0 + 104);
  OUTLINED_FUNCTION_62_13(*(v0 + 112));
  v136 = *(v0 + 120);
  v137 = *(v0 + 121);
  v22 = *(v0 + 136);
  v124 = *(v0 + 128);
  v138 = v22;
  v139 = *(v0 + 144);
  v140 = *(v0 + 152);
  v23 = *(v0 + 168);
  v125 = *(v0 + 160);
  v141 = v23;
  v24 = *(v0 + 184);
  v126 = *(v0 + 176);
  v26 = *(v0 + 192);
  v25 = *(v0 + 200);
  v142 = v24;
  v143 = v26;
  v144 = v25;
  v145 = *(v0 + 208);
  v27 = *(v0 + 224);
  v127 = *(v0 + 216);
  v146 = v27;
  v28 = *(v0 + 240);
  v128 = *(v0 + 232);
  v147 = v28;
  v29 = *(v0 + 256);
  v129 = *(v0 + 248);
  v31 = *(v0 + 264);
  v30 = *(v0 + 272);
  v148 = v29;
  v149 = v31;
  v150 = v30;
  v32 = *(v0 + 288);
  v130 = *(v0 + 280);
  v151 = v32;
  v33 = *(v0 + 304);
  v131 = *(v0 + 296);
  v152 = v33;
  v160 = 0;
  v161 = 0xE000000000000000;
  if (v12)
  {
    v159[0] = 0;
    v159[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    OUTLINED_FUNCTION_44_6();
    v159[0] = 0xD000000000000013;
    v159[1] = v34;
    MEMORY[0x25F89F6C0](v11, v12);
    v35 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v35);
    v0 = &v160;
    MEMORY[0x25F89F6C0](v159[0], v159[1]);
  }

  if (v14)
  {
    v159[0] = 0;
    v159[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v159[0] = 0x736E6961746E6F63;
    v159[1] = 0xEF203A657079745FLL;
    MEMORY[0x25F89F6C0](v13, v14);
    v36 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v36);
    v13 = v159[1];
    v0 = &v160;
    MEMORY[0x25F89F6C0](v159[0], v159[1]);
  }

  if (v15 != 2)
  {
    strcpy(v159, "describe: ");
    BYTE3(v159[1]) = 0;
    HIDWORD(v159[1]) = -369098752;
    if (v15)
    {
      v37 = 1702195828;
    }

    else
    {
      v37 = 0x65736C6166;
    }

    if (v15)
    {
      v38 = 0xE400000000000000;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    MEMORY[0x25F89F6C0](v37, v38);

    v39 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v39);
    v13 = v159[1];
    v0 = &v160;
    MEMORY[0x25F89F6C0](v159[0], v159[1]);
  }

  if (v16)
  {
    OUTLINED_FUNCTION_84_10(0x745F7265746C6966);
    MEMORY[0x25F89F6C0](v17, v16);
    v40 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v40);
    OUTLINED_FUNCTION_143_5();
  }

  if (v18)
  {
    OUTLINED_FUNCTION_84_10(0x6C6F635F67616C66);
    MEMORY[0x25F89F6C0](v122, v18);
    v41 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v41);
    OUTLINED_FUNCTION_143_5();
  }

  OUTLINED_FUNCTION_68_12();
  if (v19)
  {
    strcpy(v159, "location: ");
    BYTE3(v159[1]) = 0;
    HIDWORD(v159[1]) = -369098752;
    v42 = MEMORY[0x277D84F90];
    if (*(v19 + 16))
    {
      v158 = MEMORY[0x277D84F90];
      v43 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43, v44, v45);
      v42 = v158;
      do
      {
        OUTLINED_FUNCTION_29_14();
        if (v17 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v42 = v158;
        }

        OUTLINED_FUNCTION_15_24();
      }

      while (!v46);
    }

    v158 = v42;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28();
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v47 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v47);
    OUTLINED_FUNCTION_143_5();
  }

  v48 = v132;
  if (v132)
  {
    OUTLINED_FUNCTION_44_6();
    v159[0] = v18 + 2;
    v159[1] = v49;
    v50 = MEMORY[0x277D84F90];
    if (*(v48 + 16))
    {
      v158 = MEMORY[0x277D84F90];
      v51 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51, v52, v53);
      v50 = v158;
      do
      {
        OUTLINED_FUNCTION_29_14();
        if (v17 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v50 = v158;
        }

        OUTLINED_FUNCTION_15_24();
      }

      while (!v46);
    }

    v158 = v50;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28();
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v54 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v54);
    OUTLINED_FUNCTION_143_5();
  }

  if (v133)
  {
    OUTLINED_FUNCTION_44_6();
    v159[0] = v18 + 4;
    v159[1] = v55;
    v57 = MEMORY[0x277D84F90];
    if (*(v56 + 16))
    {
      v158 = MEMORY[0x277D84F90];
      v58 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58, v59, v60);
      v57 = v158;
      do
      {
        OUTLINED_FUNCTION_29_14();
        if (v17 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v57 = v158;
        }

        OUTLINED_FUNCTION_15_24();
      }

      while (!v46);
    }

    v158 = v57;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28();
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v61 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v61);
    OUTLINED_FUNCTION_143_5();
  }

  if (v134)
  {
    OUTLINED_FUNCTION_84_10(0x79625F726564726FLL);
    MEMORY[0x25F89F6C0](v123);
    v62 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v62);
    OUTLINED_FUNCTION_143_5();
  }

  if (v135)
  {
    OUTLINED_FUNCTION_85_11(0x203A6E6F73726570);
    v63 = MEMORY[0x277D84F90];
    if (v13)
    {
      v158 = MEMORY[0x277D84F90];
      v64 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v64, v65, v66);
      v63 = v158;
      do
      {
        OUTLINED_FUNCTION_29_14();
        if (v17 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v63 = v158;
        }

        OUTLINED_FUNCTION_15_24();
      }

      while (!v46);
    }

    v158 = v63;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28();
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v67 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v67);
    OUTLINED_FUNCTION_143_5();
  }

  if (v136 != 2)
  {
    strcpy(v159, "person_is_me: ");
    HIBYTE(v159[1]) = -18;
    OUTLINED_FUNCTION_87_9();
    OUTLINED_FUNCTION_90_7();

    v68 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v68);
    OUTLINED_FUNCTION_143_5();
  }

  if (v137 != 2)
  {
    strcpy(v159, "pick_one: ");
    BYTE3(v159[1]) = 0;
    HIDWORD(v159[1]) = -369098752;
    OUTLINED_FUNCTION_87_9();
    OUTLINED_FUNCTION_90_7();

    v69 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v69);
    OUTLINED_FUNCTION_143_5();
  }

  if (v138)
  {
    OUTLINED_FUNCTION_44_6();
    v159[0] = v18;
    v159[1] = v70;
    v0 = v159;
    MEMORY[0x25F89F6C0](v124);
    v71 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v71);
    OUTLINED_FUNCTION_143_5();
  }

  if (v139)
  {
    strcpy(v159, "receiver: ");
    BYTE3(v159[1]) = 0;
    HIDWORD(v159[1]) = -369098752;
    v72 = MEMORY[0x277D84F90];
    if (*(v139 + 16))
    {
      v158 = MEMORY[0x277D84F90];
      v73 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v73, v74, v75);
      OUTLINED_FUNCTION_82_12();
      do
      {
        OUTLINED_FUNCTION_36_16();
        if (v18 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v72 = v158;
        }

        OUTLINED_FUNCTION_25_20();
      }

      while (!v46);
      OUTLINED_FUNCTION_68_12();
    }

    v158 = v72;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28();
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v76 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v76);
    OUTLINED_FUNCTION_143_5();
  }

  if (v140 != 2)
  {
    OUTLINED_FUNCTION_44_6();
    v159[0] = v18;
    v159[1] = v77;
    OUTLINED_FUNCTION_87_9();
    OUTLINED_FUNCTION_90_7();

    v78 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v78);
    OUTLINED_FUNCTION_143_5();
  }

  if (v141)
  {
    OUTLINED_FUNCTION_44_6();
    v159[0] = v18 + 1;
    v159[1] = v79;
    v0 = v159;
    MEMORY[0x25F89F6C0](v125);
    v80 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v80);
    OUTLINED_FUNCTION_143_5();
  }

  if (v142)
  {
    OUTLINED_FUNCTION_44_6();
    v159[0] = v18 + 2;
    v159[1] = v81;
    v0 = v159;
    MEMORY[0x25F89F6C0](v126);
    v82 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v82);
    OUTLINED_FUNCTION_143_5();
  }

  if (v143)
  {
    OUTLINED_FUNCTION_85_11(0x745F686372616573);
    v83 = MEMORY[0x277D84F90];
    if (v13)
    {
      v158 = MEMORY[0x277D84F90];
      v84 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v84, v85, v86);
      OUTLINED_FUNCTION_82_12();
      do
      {
        OUTLINED_FUNCTION_36_16();
        if (v18 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v83 = v158;
        }

        OUTLINED_FUNCTION_25_20();
      }

      while (!v46);
      OUTLINED_FUNCTION_68_12();
    }

    v158 = v83;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28();
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v87 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v87);
    OUTLINED_FUNCTION_143_5();
  }

  if (v144)
  {
    OUTLINED_FUNCTION_85_11(0x203A7265646E6573);
    v88 = MEMORY[0x277D84F90];
    if (v13)
    {
      v158 = MEMORY[0x277D84F90];
      v89 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v89, v90, v91);
      OUTLINED_FUNCTION_82_12();
      do
      {
        OUTLINED_FUNCTION_36_16();
        if (v18 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v88 = v158;
        }

        OUTLINED_FUNCTION_25_20();
      }

      while (!v46);
      OUTLINED_FUNCTION_68_12();
    }

    v158 = v88;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28();
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v92 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v92);
    OUTLINED_FUNCTION_143_5();
  }

  if (v145 != 2)
  {
    strcpy(v159, "sender_is_me: ");
    HIBYTE(v159[1]) = -18;
    OUTLINED_FUNCTION_87_9();
    OUTLINED_FUNCTION_90_7();

    v93 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v93);
    OUTLINED_FUNCTION_143_5();
  }

  if (v146)
  {
    strcpy(v159, "source_type: ");
    HIWORD(v159[1]) = -4864;
    v0 = v159;
    MEMORY[0x25F89F6C0](v127);
    v94 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v94);
    OUTLINED_FUNCTION_143_5();
  }

  if (v147)
  {
    strcpy(v159, "tag_name: ");
    BYTE3(v159[1]) = 0;
    HIDWORD(v159[1]) = -369098752;
    v0 = v159;
    MEMORY[0x25F89F6C0](v128);
    v95 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v95);
    OUTLINED_FUNCTION_143_5();
  }

  if (v148)
  {
    OUTLINED_FUNCTION_44_6();
    v159[0] = v18 + 4;
    v159[1] = v96;
    v0 = v159;
    MEMORY[0x25F89F6C0](v129);
    v97 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v97);
    OUTLINED_FUNCTION_143_5();
  }

  v98 = v150;
  if (v149)
  {
    OUTLINED_FUNCTION_85_11(0x203A656D6974);
    v99 = MEMORY[0x277D84F90];
    if (v13)
    {
      v158 = MEMORY[0x277D84F90];
      v100 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v100, v101, v102);
      OUTLINED_FUNCTION_82_12();
      do
      {
        OUTLINED_FUNCTION_36_16();
        if (v18 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v99 = v158;
        }

        OUTLINED_FUNCTION_25_20();
      }

      while (!v46);
      OUTLINED_FUNCTION_68_12();
    }

    v158 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28();
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v103 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v103);
    OUTLINED_FUNCTION_143_5();
  }

  if (v98)
  {
    strcpy(v159, "message_time: ");
    HIBYTE(v159[1]) = -18;
    v104 = MEMORY[0x277D84F90];
    if (*(v98 + 16))
    {
      v158 = MEMORY[0x277D84F90];
      v105 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v105, v106, v107);
      v104 = v158;
      do
      {
        OUTLINED_FUNCTION_29_14();
        if (v17 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v104 = v158;
        }

        OUTLINED_FUNCTION_15_24();
      }

      while (!v46);
    }

    v158 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28();
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v108 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v108);
    OUTLINED_FUNCTION_143_5();
  }

  if (v151)
  {
    OUTLINED_FUNCTION_84_10(0x203A707061);
    MEMORY[0x25F89F6C0](v130);
    v109 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v109);
    OUTLINED_FUNCTION_143_5();
  }

  if (v152)
  {
    OUTLINED_FUNCTION_44_6();
    v159[0] = v18;
    v159[1] = v110;
    MEMORY[0x25F89F6C0](v131);
    v111 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v111);
    OUTLINED_FUNCTION_143_5();
  }

  v159[0] = v160;
  v159[1] = v161;
  v112 = v153;
  static CharacterSet.whitespacesAndNewlines.getter();
  v113 = v154;
  CharacterSet.init(charactersIn:)();
  v114 = v155;
  CharacterSet.union(_:)();
  v115 = v157;
  v116 = *(v156 + 8);
  v116(v113, v157);
  v116(v112, v115);
  lazy protocol witness table accessor for type String and conformance String();
  v117 = StringProtocol.trimmingCharacters(in:)();
  v119 = v118;
  v116(v114, v115);

  v159[0] = 60;
  v159[1] = 0xE100000000000000;
  MEMORY[0x25F89F6C0](v117, v119);

  MEMORY[0x25F89F6C0](62, 0xE100000000000000);

  return v159[0];
}

uint64_t _s10OmniSearch19LocationQueryEntityVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t outlined init with take of LocationQueryEntity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t outlined destroy of LocationQueryEntity(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LLMQUResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 381))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LLMQUResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 380) = 0;
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 381) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 381) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LLMQULoggingMetrics(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 69))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LLMQULoggingMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LLMQUModelResponse(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 312))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LLMQUModelResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LLMQUModelResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LLMQUModelResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_51()
{
  v0[19] = 0;
  v0[20] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[17] = 0;
  v0[18] = 0;
  v0[10] = 0;
  v0[21] = 0;
  v0[22] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[23] = 0;
}

void OUTLINED_FUNCTION_1_49()
{
  v0[19] = 0;
  v0[20] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[17] = 0;
  v0[18] = 0;
  v0[10] = 0;
}

uint64_t OUTLINED_FUNCTION_4_34@<X0>(char a1@<W8>)
{
  *(v1 + 640) = a1;
  result = v1 + 640;
  v4 = *(v2 - 72);
  return result;
}

void OUTLINED_FUNCTION_5_31()
{
  v0[19] = 0;
  v0[20] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
}

void OUTLINED_FUNCTION_9_30()
{
  v2 = *(v1 - 248);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = *(v2 + 72);
}

void OUTLINED_FUNCTION_12_29()
{
  v0[26] = 0;
  v0[27] = 0;
  v0[37] = 0;
  v0[38] = 0;
  v0[28] = 0;
  v0[29] = 0;
  v0[30] = 0;
  v0[31] = 0;
  v0[32] = 0;
  v0[33] = 0;
  v0[35] = 0;
}

void OUTLINED_FUNCTION_14_22()
{
  v0[26] = 0;
  v0[27] = 0;
  v0[37] = 0;
  v0[38] = 0;
  v0[28] = 0;
  v0[29] = 0;
  v0[30] = 0;
  v0[31] = 0;
}

void OUTLINED_FUNCTION_15_24()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

void OUTLINED_FUNCTION_16_25()
{
  v0[19] = 2;
  v0[73] = 2;
  v0[78] = 2;
  v0[79] = 2;
}

uint64_t OUTLINED_FUNCTION_17_28()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t OUTLINED_FUNCTION_18_18()
{

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v0 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_19_23@<X0>(char a1@<W8>)
{
  *(v1 - 89) = a1;
  v4 = *(v1 - 120);
  v3 = *(v1 - 112);

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_25_20()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_26_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_19()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_29_14()
{
  v5 = *(v1 - 1);
  v4 = *v1;
  *(v2 - 128) = v0;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_32_23@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

void OUTLINED_FUNCTION_33_20()
{
  v0[107] = v0[10];
  v0[108] = v0[13];
  v0[109] = v0[11];
  v0[110] = v0[17];
  v0[111] = v0[14];
  v0[112] = v0[19];
  v0[113] = v0[16];
  v0[114] = v0[12];
  v0[115] = v0[15];
  v0[116] = v0[20];
}

uint64_t OUTLINED_FUNCTION_34_22()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_36_16()
{
  v5 = *(v1 - 1);
  v4 = *v1;
  *(v2 - 128) = v0;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_42_17()
{
  *(v0 + 800) = *(v0 + 184);
  *(v0 + 808) = *(v0 + 200);
  *(v0 + 816) = *(v0 + 176);
  *(v0 + 824) = *(v0 + 192);
  *(v0 + 832) = *(v0 + 168);
  *(v0 + 840) = *(v0 + 144);
  *(v0 + 848) = *(v0 + 76);
}

void OUTLINED_FUNCTION_44_19()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_45_13()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_46_17(uint64_t a1)
{
  *(a1 + 16) = *(v3 - 176);
  *(a1 + 32) = v2;
  *(a1 + 40) = v1;
  *(v3 - 104) = a1;
}

uint64_t OUTLINED_FUNCTION_47_15()
{
  v2 = *(v0 - 160) | 0x8000000000000000;

  return LocalizedStringResource.init(stringLiteral:)();
}

void OUTLINED_FUNCTION_49_17()
{
  *(v0 + 728) = *(v0 + 240);
  v1 = *(v0 + 232);
  *(v0 + 736) = *(v0 + 224);
  *(v0 + 744) = v1;
  *(v0 + 752) = *(v0 + 216);
  *(v0 + 760) = *(v0 + 316);
  *(v0 + 761) = *(v0 + 312);
}

uint64_t OUTLINED_FUNCTION_50_13(uint64_t a1)
{
  v4 = *(v1 - 136);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_51_14()
{
  v2 = *(v0 - 184) | 0x8000000000000000;

  return LocalizedStringResource.init(stringLiteral:)();
}

void OUTLINED_FUNCTION_54_17(unint64_t a1@<X8>)
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_55_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_57_12()
{
  v2 = *(v0 - 136);

  return LocalizedStringResource.init(stringLiteral:)();
}

void OUTLINED_FUNCTION_59_13(uint64_t a1@<X8>)
{
  *(v1 - 256) = v2;
  *(v4 - 392) = a1;
  *(v4 - 380) = *(v3 + 208);
  v6 = *(v3 + 216);
  v5 = *(v3 + 224);
}

void OUTLINED_FUNCTION_60_10()
{
  v1 = *(v0 + 304);
  *(v0 + 768) = *(v0 + 296);
  *(v0 + 776) = v1;
  *(v0 + 784) = *(v0 + 208);
  *(v0 + 792) = *(v0 + 292);
}

uint64_t OUTLINED_FUNCTION_61_15()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_63_15()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
}

__n128 *OUTLINED_FUNCTION_69_10(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_17()
{
  v2 = *(v0 - 152);

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_75_12()
{
  v3 = *(v0 - 1);
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_77_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return type metadata accessor for DisplayRepresentation.Image();
}

uint64_t OUTLINED_FUNCTION_78_14()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_79_12()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_85_11(uint64_t a1@<X8>)
{
  *(v3 - 120) = a1;
  *(v3 - 112) = v1;
  v4 = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_88_9()
{

  return outlined destroy of LocationQueryEntity(v1, v0);
}

uint64_t OUTLINED_FUNCTION_89_12()
{

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

void OUTLINED_FUNCTION_90_7()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t LLMQUModelServer.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  LLMQUModelServer.init()();
  return v3;
}

uint64_t LLMQUModelServer.modelID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LLMQUModelServer.samplingParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_samplingParameters;
  v4 = type metadata accessor for SamplingParameters();
  v5 = OUTLINED_FUNCTION_17(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t LLMQUModelServer.model.getter()
{
  v1 = OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_model;
  OUTLINED_FUNCTION_89_0();
  v2 = *(v0 + v1);
}

uint64_t LLMQUModelServer.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_model;
  OUTLINED_FUNCTION_115_9();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t LLMQUModelServer.modelOnBehalfOfPID.getter()
{
  OUTLINED_FUNCTION_74_18();
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t LLMQUModelServer.modelOnBehalfOfPID.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_73_12();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t LLMQUModelServer.modelVersionNumber.getter()
{
  OUTLINED_FUNCTION_74_18();
  v2 = *v0;
  v1 = v0[1];

  return OUTLINED_FUNCTION_107();
}

uint64_t LLMQUModelServer.modelVersionNumber.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_73_12();
  v5 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t LLMQUModelServer.modelPrewarmTimeinMS.setter(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_12();
  *v1 = a1;
  *(v1 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t LLMQUModelServer.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v6);
  v8 = &v29[-1] - v7;
  v9 = type metadata accessor for SamplingParameters();
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v17 = v16 - v15;
  *(v0 + OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_model) = 0;
  v18 = v0 + OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_modelOnBehalfOfPID;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = (v0 + OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_modelVersionNumber);
  *v19 = 0;
  v19[1] = 0;
  v20 = v0 + OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_modelPrewarmTimeinMS;
  *v20 = 0;
  *(v20 + 4) = 1;
  static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingServer()();
  v21 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v22 = *(*(*(v21 + 8) + 8) + 8);
  OUTLINED_FUNCTION_117_4();
  *(v1 + 16) = dispatch thunk of CatalogResource.id.getter();
  *(v1 + 24) = v23;
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  static SamplingStrategy.topK(_:)();
  v24 = type metadata accessor for SamplingStrategy();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v24);
  v25 = OUTLINED_FUNCTION_48_3();
  outlined init with copy of Date?(v25, v26, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();
  outlined destroy of IntentApplication?(v8, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  (*(v12 + 32))(v1 + OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_samplingParameters, v17, v9);
  return v1;
}

uint64_t LLMQUModelServer.prewarm(originatorPID:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CachePolicy();
  v5 = OUTLINED_FUNCTION_114(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v57 = v9 - v8;
  v10 = type metadata accessor for GenerativeModelSessionConfiguration();
  v11 = OUTLINED_FUNCTION_114(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v56 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  v17 = OUTLINED_FUNCTION_114(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = type metadata accessor for Date();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v26);
  v28 = &v54 - v27;
  v29 = v1 + OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_modelOnBehalfOfPID;
  OUTLINED_FUNCTION_115_9();
  if ((*(v29 + 8) & 1) != 0 || *v29 != a1 || (v30 = OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_model, OUTLINED_FUNCTION_89_0(), (v31 = *(v2 + v30)) == 0))
  {
    Date.init()();
    if (one-time initialization token for llmQU != -1)
    {
      OUTLINED_FUNCTION_55_14();
    }

    v54 = v23;
    v55 = v20;
    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logging.llmQU);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_51_0();
      *v40 = 134217984;
      *(v40 + 4) = a1;
      _os_log_impl(&dword_25D85C000, v38, v39, "Prewarming model for PID %ld", v40, 0xCu);
      OUTLINED_FUNCTION_42_0();
    }

    *v29 = a1;
    *(v29 + 8) = 0;
    type metadata accessor for TokenGenerator();
    v41 = *(v2 + 16);
    v42 = *(v2 + 24);
    type metadata accessor for LLMBundle();
    lazy protocol witness table accessor for type LLMBundle and conformance LLMBundle(&lazy protocol witness table cache variable for type LLMBundle and conformance LLMBundle, MEMORY[0x277D29CE0]);

    ResourceBundleIdentifier.init(stringLiteral:)();
    a1 = v57;
    static CachePolicy.inMemory.getter();
    GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
    v31 = TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:)();
    TokenGenerator.prewarm()();
    v43 = OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_model;
    OUTLINED_FUNCTION_115_9();
    v44 = *(v2 + v43);
    *(v2 + v43) = v31;

    Date.init()();
    Date.timeIntervalSince(_:)();
    v46 = v45;
    v47 = v55;
    v48 = *(v54 + 8);
    v49 = OUTLINED_FUNCTION_48_11();
    v48(v49);
    (v48)(v28, v47);
    v50 = v46 * 1000.0;
    if (COERCE__INT64(fabs(v46 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v50 > -1.0)
    {
      if (v50 < 4294967300.0)
      {
        v51 = v50;
        v52 = v2 + OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_modelPrewarmTimeinMS;
        OUTLINED_FUNCTION_115_9();
        *v52 = v51;
        *(v52 + 4) = 0;
        return v31;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v32 = one-time initialization token for llmQU;

  if (v32 != -1)
  {
LABEL_20:
    OUTLINED_FUNCTION_55_14();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logging.llmQU);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_51_0();
    *v36 = 134217984;
    *(v36 + 4) = a1;
    _os_log_impl(&dword_25D85C000, v34, v35, "Model for PID %ld already prewarmed, no need to prewarm again", v36, 0xCu);
    OUTLINED_FUNCTION_42_0();
  }

  return v31;
}

uint64_t LLMQUModelServer.parse(_:originatorPID:)()
{
  OUTLINED_FUNCTION_48();
  *(v1 + 3032) = v0;
  *(v1 + 2701) = v2;
  *(v1 + 3024) = v3;
  *(v1 + 3016) = v4;
  *(v1 + 3008) = v5;
  *(v1 + 3000) = v6;
  v7 = type metadata accessor for Prompt();
  *(v1 + 3040) = v7;
  OUTLINED_FUNCTION_21(v7);
  *(v1 + 3048) = v8;
  v10 = *(v9 + 64);
  *(v1 + 3056) = OUTLINED_FUNCTION_160();
  *(v1 + 3064) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  *(v1 + 3072) = OUTLINED_FUNCTION_160();
  *(v1 + 3080) = swift_task_alloc();
  *(v1 + 3088) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  OUTLINED_FUNCTION_114(v14);
  v16 = *(v15 + 64) + 15;
  *(v1 + 3096) = swift_task_alloc();
  v17 = type metadata accessor for PromptTemplate();
  *(v1 + 3104) = v17;
  OUTLINED_FUNCTION_21(v17);
  *(v1 + 3112) = v18;
  v20 = *(v19 + 64) + 15;
  *(v1 + 3120) = swift_task_alloc();
  v21 = type metadata accessor for Date();
  *(v1 + 3128) = v21;
  OUTLINED_FUNCTION_21(v21);
  *(v1 + 3136) = v22;
  v24 = *(v23 + 64);
  *(v1 + 3144) = OUTLINED_FUNCTION_160();
  *(v1 + 3152) = swift_task_alloc();
  *(v1 + 3160) = swift_task_alloc();
  v25 = type metadata accessor for OSSignpostID();
  *(v1 + 3168) = v25;
  OUTLINED_FUNCTION_21(v25);
  *(v1 + 3176) = v26;
  v28 = *(v27 + 64);
  *(v1 + 3184) = OUTLINED_FUNCTION_160();
  *(v1 + 3192) = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[347] = v1;
  v3[348] = v5;
  v3[349] = v6;
  v3[350] = v0;
  OUTLINED_FUNCTION_125_8();
  v8 = *(v7 + 3288);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  v3[412] = v0;

  OUTLINED_FUNCTION_146_6();

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_22_18();
  v6 = *(v2 + 3064);
  v7 = *(v2 + 3048);
  v8 = *(v2 + 3040);

  (*(v7 + 8))(v6, v8);
  outlined destroy of IntentApplication?(v5, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  v9 = *(v1 + 8);
  v10 = OUTLINED_FUNCTION_54_0();
  v9(v10);
  (*(v0 + 8))(v16, v4);
  (v9)(v17, v3);
  *(v2 + 2200) = v18;
  *(v2 + 2208) = v19;
  *(v2 + 2216) = v20;
  *(v2 + 2220) = *(v2 + 3384);
  OUTLINED_FUNCTION_30_19((v2 + 2221));
  *(v2 + 2223) = *(v2 + 2559);
  *(v2 + 2224) = 0;
  *(v2 + 2228) = *(v2 + 3364);
  OUTLINED_FUNCTION_30_19((v2 + 2229));
  *(v2 + 2231) = *(v2 + 2271);
  *(v2 + 2232) = 0;
  *(v2 + 2236) = *(v2 + 3368);
  OUTLINED_FUNCTION_30_19((v2 + 2237));
  *(v2 + 2239) = *(v2 + 2631);
  *(v2 + 2240) = v21;
  *(v2 + 2244) = *(v2 + 3372);
  OUTLINED_FUNCTION_30_19((v2 + 2245));
  *(v2 + 2247) = *(v2 + 2487);
  *(v2 + 2248) = v22;
  *(v2 + 2252) = *(v2 + 3360);
  *(v2 + 2255) = *(v2 + 2343);
  OUTLINED_FUNCTION_30_19((v2 + 2253));
  *(v2 + 2256) = 0;
  *(v2 + 2260) = *(v2 + 3380);
  *(v2 + 2263) = *(v2 + 2415);
  OUTLINED_FUNCTION_30_19((v2 + 2261));
  *(v2 + 2264) = 0;
  *(v2 + 2268) = *(v2 + 3376);
  outlined destroy of LLMQULoggingMetrics(v2 + 2200);
  $defer #1 () in LLMQUModelServer.parse(_:originatorPID:)();

  v23 = *(v2 + 3296);
  v11 = *(v2 + 3192);
  v12 = *(v2 + 3184);
  v13 = *(v2 + 3160);
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_117_9();

  OUTLINED_FUNCTION_127();

  return v14();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[351] = v1;
  v3[352] = v5;
  v3[353] = v6;
  v3[354] = v0;
  OUTLINED_FUNCTION_125_8();
  v8 = *(v7 + 3304);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  v3[414] = v0;

  v11 = v3[405];

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_22_18();
  v6 = *(v2 + 3056);
  v7 = *(v2 + 3048);
  v8 = *(v2 + 3040);

  (*(v7 + 8))(v6, v8);
  outlined destroy of IntentApplication?(v5, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  v9 = *(v1 + 8);
  v10 = OUTLINED_FUNCTION_54_0();
  v9(v10);
  (*(v0 + 8))(v16, v4);
  (v9)(v17, v3);
  *(v2 + 2272) = v18;
  *(v2 + 2280) = v19;
  *(v2 + 2288) = v20;
  *(v2 + 2292) = *(v2 + 3384);
  OUTLINED_FUNCTION_30_19((v2 + 2293));
  *(v2 + 2295) = *(v2 + 2559);
  *(v2 + 2296) = 0;
  *(v2 + 2300) = *(v2 + 3364);
  OUTLINED_FUNCTION_30_19((v2 + 2301));
  *(v2 + 2303) = *(v2 + 2271);
  *(v2 + 2304) = 0;
  *(v2 + 2308) = *(v2 + 3368);
  OUTLINED_FUNCTION_30_19((v2 + 2309));
  *(v2 + 2311) = *(v2 + 2631);
  *(v2 + 2312) = v21;
  *(v2 + 2316) = *(v2 + 3372);
  OUTLINED_FUNCTION_30_19((v2 + 2317));
  *(v2 + 2319) = *(v2 + 2487);
  *(v2 + 2320) = v22;
  *(v2 + 2324) = *(v2 + 3360);
  *(v2 + 2327) = *(v2 + 2343);
  OUTLINED_FUNCTION_30_19((v2 + 2325));
  *(v2 + 2328) = 0;
  *(v2 + 2332) = *(v2 + 3380);
  *(v2 + 2335) = *(v2 + 2415);
  OUTLINED_FUNCTION_30_19((v2 + 2333));
  *(v2 + 2336) = 0;
  *(v2 + 2340) = *(v2 + 3376);
  outlined destroy of LLMQULoggingMetrics(v2 + 2272);
  $defer #1 () in LLMQUModelServer.parse(_:originatorPID:)();

  v23 = *(v2 + 3312);
  v11 = *(v2 + 3192);
  v12 = *(v2 + 3184);
  v13 = *(v2 + 3160);
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_117_9();

  OUTLINED_FUNCTION_127();

  return v14();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[355] = v1;
  v3[356] = v5;
  v3[357] = v6;
  v3[358] = v0;
  OUTLINED_FUNCTION_125_8();
  v8 = *(v7 + 3320);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  v3[416] = v0;

  OUTLINED_FUNCTION_146_6();

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_32_24();
  outlined destroy of IntentApplication?(v4, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_54_0();
  v7(v8);
  v9 = *(v1 + 8);
  v10 = OUTLINED_FUNCTION_63_0();
  v11(v10);
  (v7)(v0, v3);
  *(v2 + 2344) = v6;
  *(v2 + 2352) = v18;
  *(v2 + 2360) = v19;
  *(v2 + 2364) = *(v2 + 3384);
  OUTLINED_FUNCTION_30_19((v2 + 2365));
  *(v2 + 2367) = *(v2 + 2559);
  *(v2 + 2368) = 0;
  *(v2 + 2372) = *(v2 + 3364);
  OUTLINED_FUNCTION_30_19((v2 + 2373));
  *(v2 + 2375) = *(v2 + 2271);
  *(v2 + 2376) = 0;
  *(v2 + 2380) = *(v2 + 3368);
  OUTLINED_FUNCTION_30_19((v2 + 2381));
  *(v2 + 2383) = *(v2 + 2631);
  *(v2 + 2384) = v20;
  *(v2 + 2388) = *(v2 + 3372);
  OUTLINED_FUNCTION_30_19((v2 + 2389));
  *(v2 + 2391) = *(v2 + 2487);
  *(v2 + 2392) = v21;
  *(v2 + 2396) = *(v2 + 3360);
  *(v2 + 2399) = *(v2 + 2343);
  OUTLINED_FUNCTION_30_19((v2 + 2397));
  *(v2 + 2400) = 0;
  *(v2 + 2404) = *(v2 + 3380);
  *(v2 + 2407) = *(v2 + 2415);
  OUTLINED_FUNCTION_30_19((v2 + 2405));
  *(v2 + 2408) = 0;
  *(v2 + 2412) = *(v2 + 3376);
  outlined destroy of LLMQULoggingMetrics(v2 + 2344);
  OUTLINED_FUNCTION_116_7();

  v12 = *(v2 + 3328);
  v13 = *(v2 + 3192);
  v14 = *(v2 + 3184);
  v15 = *(v2 + 3160);
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_118_6();

  OUTLINED_FUNCTION_127();

  return v16();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v3[359] = v1;
  v3[360] = v5;
  v3[361] = v6;
  v3[362] = v0;
  OUTLINED_FUNCTION_125_8();
  v8 = *(v7 + 3336);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  v3[418] = v0;

  v11 = v3[405];

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_32_24();
  outlined destroy of IntentApplication?(v4, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_54_0();
  v7(v8);
  v9 = *(v1 + 8);
  v10 = OUTLINED_FUNCTION_63_0();
  v11(v10);
  (v7)(v0, v3);
  *(v2 + 2416) = v6;
  *(v2 + 2424) = v18;
  *(v2 + 2432) = v19;
  *(v2 + 2436) = *(v2 + 3384);
  OUTLINED_FUNCTION_30_19((v2 + 2437));
  *(v2 + 2439) = *(v2 + 2559);
  *(v2 + 2440) = 0;
  *(v2 + 2444) = *(v2 + 3364);
  OUTLINED_FUNCTION_30_19((v2 + 2445));
  *(v2 + 2447) = *(v2 + 2271);
  *(v2 + 2448) = 0;
  *(v2 + 2452) = *(v2 + 3368);
  OUTLINED_FUNCTION_30_19((v2 + 2453));
  *(v2 + 2455) = *(v2 + 2631);
  *(v2 + 2456) = v20;
  *(v2 + 2460) = *(v2 + 3372);
  OUTLINED_FUNCTION_30_19((v2 + 2461));
  *(v2 + 2463) = *(v2 + 2487);
  *(v2 + 2464) = v21;
  *(v2 + 2468) = *(v2 + 3360);
  *(v2 + 2471) = *(v2 + 2343);
  OUTLINED_FUNCTION_30_19((v2 + 2469));
  *(v2 + 2472) = 0;
  *(v2 + 2476) = *(v2 + 3380);
  *(v2 + 2479) = *(v2 + 2415);
  OUTLINED_FUNCTION_30_19((v2 + 2477));
  *(v2 + 2480) = 0;
  *(v2 + 2484) = *(v2 + 3376);
  outlined destroy of LLMQULoggingMetrics(v2 + 2416);
  OUTLINED_FUNCTION_116_7();

  v12 = *(v2 + 3344);
  v13 = *(v2 + 3192);
  v14 = *(v2 + 3184);
  v15 = *(v2 + 3160);
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_118_6();

  OUTLINED_FUNCTION_127();

  return v16();
}

unint64_t LLMQUModelServer.parse(_:originatorPID:)()
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3192);
  v2 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v2, static Logging.searchComponentSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 3192);
    v6 = OUTLINED_FUNCTION_172();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v7, "SearchTool.LLMQU", "", v6, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v8 = *(v0 + 3192);
  v9 = *(v0 + 3184);
  v10 = *(v0 + 3176);
  v11 = *(v0 + 3168);
  v12 = *(v0 + 3032);
  v13 = *(v0 + 2701);

  (*(v10 + 16))(v9, v8, v11);
  v14 = type metadata accessor for OSSignpostIntervalState();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 3200) = OSSignpostIntervalState.init(id:isOpen:)();
  v17 = *(v10 + 8);
  v18 = OUTLINED_FUNCTION_54_0();
  v19(v18);
  *(v0 + 3364) = 1;
  *(v0 + 3368) = 1;
  *(v0 + 3380) = 1;
  *(v0 + 3376) = 1;
  v20 = (v12 + OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_modelVersionNumber);
  OUTLINED_FUNCTION_89_0();
  *(v0 + 3208) = *v20;
  *(v0 + 3216) = v20[1];
  if (v13)
  {
    v21 = objc_opt_self();

    v22 = [v21 processInfo];
    LODWORD(v23) = [v22 processIdentifier];

    v23 = v23;
  }

  else
  {
    v23 = *(v0 + 3024);
  }

  if (one-time initialization token for llmQU != -1)
  {
    OUTLINED_FUNCTION_55_14();
  }

  v24 = type metadata accessor for Logger();
  *(v0 + 3224) = __swift_project_value_buffer(v24, static Logging.llmQU);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_51_0();
    *v27 = 134217984;
    *(v27 + 4) = v23;
    _os_log_impl(&dword_25D85C000, v25, v26, "Calling LLM QU GMS parse on behalf of PID: %ld", v27, 0xCu);
    OUTLINED_FUNCTION_72_9();
  }

  v28 = *(v0 + 3160);
  v29 = *(v0 + 3120);
  v30 = *(v0 + 3096);
  v31 = *(v0 + 3032);
  v32 = *(v0 + 3016);
  v33 = *(v0 + 3008);

  *(v0 + 3232) = LLMQUModelServer.prewarm(originatorPID:)(v23);
  v34 = v31 + OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_modelPrewarmTimeinMS;
  OUTLINED_FUNCTION_89_0();
  *(v0 + 3352) = *v34;
  *(v0 + 3360) = *(v34 + 4);
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_25DBC8180;
  *(v35 + 32) = 0x6D6F725072657375;
  *(v35 + 40) = 0xEA00000000007470;
  *(v35 + 48) = v33;
  *(v35 + 56) = v32;

  *(v0 + 3240) = Dictionary.init(dictionaryLiteral:)();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SearchQueryUnderstandingServerID.getter();
  PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 3160);
  v37 = *(v0 + 3016);
  v38 = *(v0 + 3008);
  v39 = static MetricsLogger.shared;
  *(v0 + 3248) = static MetricsLogger.shared;
  v40 = *v39 + 312;
  v41 = *v40;
  *(v0 + 3256) = *v40;
  *(v0 + 3264) = v40 & 0xFFFFFFFFFFFFLL | 0x17EC000000000000;
  *(v0 + 3356) = v41(v36);
  *(v0 + 3372) = 0;
  result = String.count.getter();
  *(v0 + 3272) = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (HIDWORD(result))
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v43 = *(v0 + 3152);
  v44 = *(v0 + 3088);
  v45 = *(v0 + 3080);
  v46 = *(v0 + 3040);
  v47 = *(v0 + 3032);
  *(v0 + 3384) = 0;
  Date.init()();
  LLMQUModelServer.createOverridePrompt()(v44);
  LLMQUModelServer.createOverrideGrammar()();
  v49 = v48;
  *(v0 + 3280) = v48;
  outlined init with copy of Date?(v44, v45, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v46);
  v51 = *(v0 + 3080);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(*(v0 + 3080), &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    goto LABEL_25;
  }

  (*(*(v0 + 3048) + 32))(*(v0 + 3064), *(v0 + 3080), *(v0 + 3040));
  if (!v49)
  {
    v67 = *(v0 + 3064);
    OUTLINED_FUNCTION_102_8();
    v68();
LABEL_25:
    v69 = *(v0 + 3072);
    v70 = *(v0 + 3040);
    outlined init with copy of Date?(*(v0 + 3088), v69, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    v71 = __swift_getEnumTagSinglePayload(v69, 1, v70);
    v72 = *(v0 + 3072);
    if (v71 == 1)
    {
      outlined destroy of IntentApplication?(*(v0 + 3072), &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.info.getter();
      v75 = OUTLINED_FUNCTION_119_7(v74);
      if (v49)
      {
        if (v75)
        {
          v76 = OUTLINED_FUNCTION_172();
          *v76 = 0;
          OUTLINED_FUNCTION_130_9();
          _os_log_impl(v77, v78, v79, v80, v76, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        v81 = swift_task_alloc();
        *(v0 + 3320) = v81;
        *v81 = v0;
        v81[1] = LLMQUModelServer.parse(_:originatorPID:);
        OUTLINED_FUNCTION_29_15(*(v0 + 3120));
        OUTLINED_FUNCTION_63_14();

        return closure #2 in LLMQUModelServer.parseUsingGrammarOverride(overrideGrammar:promptTemplate:bindings:quModel:)(v82, v83, v84, v85, v86, v87);
      }

      else
      {
        if (v75)
        {
          v105 = OUTLINED_FUNCTION_172();
          *v105 = 0;
          OUTLINED_FUNCTION_130_9();
          _os_log_impl(v106, v107, v108, v109, v105, 2u);
          OUTLINED_FUNCTION_72_9();
        }

        v110 = swift_task_alloc();
        *(v0 + 3336) = v110;
        *v110 = v0;
        v110[1] = LLMQUModelServer.parse(_:originatorPID:);
        OUTLINED_FUNCTION_29_15(*(v0 + 3120));
        OUTLINED_FUNCTION_63_14();

        return closure #2 in LLMQUModelServer.parse(promptTemplate:bindings:quModel:)(v111, v112, v113, v114);
      }
    }

    else
    {
      v89 = *(v0 + 3056);
      v90 = *(v0 + 3048);
      v91 = *(v0 + 3040);

      (*(v90 + 32))(v89, v72, v91);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_119_7(v93))
      {
        v94 = OUTLINED_FUNCTION_172();
        *v94 = 0;
        OUTLINED_FUNCTION_130_9();
        _os_log_impl(v95, v96, v97, v98, v94, 2u);
        OUTLINED_FUNCTION_72_9();
      }

      v99 = swift_task_alloc();
      *(v0 + 3304) = v99;
      *v99 = v0;
      v99[1] = LLMQUModelServer.parse(_:originatorPID:);
      OUTLINED_FUNCTION_29_15(*(v0 + 3056));
      OUTLINED_FUNCTION_63_14();

      return closure #2 in LLMQUModelServer.parseUsingPromptOverride(overridePrompt:bindings:quModel:)(v100, v101, v102, v103);
    }
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_119_7(v53))
  {
    v54 = OUTLINED_FUNCTION_172();
    *v54 = 0;
    OUTLINED_FUNCTION_130_9();
    _os_log_impl(v55, v56, v57, v58, v54, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v59 = swift_task_alloc();
  *(v0 + 3288) = v59;
  *v59 = v0;
  v59[1] = LLMQUModelServer.parse(_:originatorPID:);
  OUTLINED_FUNCTION_29_15(*(v0 + 3064));
  OUTLINED_FUNCTION_63_14();

  return closure #2 in LLMQUModelServer.parseUsingPromptAndGrammarOverrides(overridePrompt:overrideGrammar:bindings:quModel:)(v60, v61, v62, v63, v64, v65);
}

uint64_t LLMQUModelServer.parse(_:originatorPID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v16 = *(v13 + 3064);
  OUTLINED_FUNCTION_102_8();
  v17();
  v18 = *(v13 + 3296);
  v19 = *(v13 + 2784);
  v20 = *(v13 + 2792);
  OUTLINED_FUNCTION_94_9();
  v21 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_144_7();
  if (OUTLINED_FUNCTION_143_8())
  {
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_132_9();
    *v14 = 136315138;
    OUTLINED_FUNCTION_63_0();
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_205_3(&dword_25D85C000, v22, v23, "Got response from LLM QU: %s");
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_37_0();
  }

  OUTLINED_FUNCTION_16_26();
  v24(*(v13 + 3152));
  *(v13 + 3380) = 0;
  OUTLINED_FUNCTION_63_0();
  String.count.getter();
  result = OUTLINED_FUNCTION_144_7();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(v12))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_8_29();

  OUTLINED_FUNCTION_35_22();
  v213 = v14;
  v215 = v12;
  if (v18)
  {
    OUTLINED_FUNCTION_5_32();
    v26 = OUTLINED_FUNCTION_67_16();
    (v12)(v26);
    outlined destroy of IntentApplication?(v14, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    v27 = OUTLINED_FUNCTION_48_3();
    v28 = (v12)(v27);
    v36 = OUTLINED_FUNCTION_66_15(v28, v29, v30, v31, v32, v33, v34, v35, v110, v118, v126, v132, v137, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186);
    v38 = v37(v36);
    v46 = OUTLINED_FUNCTION_123_10(v38, v39, v40, v41, v42, v43, v44, v45, v111, v119, v127, v133, v138, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v190);
    v47 = (v12)(v46);
    OUTLINED_FUNCTION_2_34(v47, v48, v49, v50, v51, v52, v53, v54, v112, v120, v128, v134, v139, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v191, v193, v195, v197, SHIDWORD(v197), v199, SHIDWORD(v199), v202, v205, v207, v209, v211, v14, v12, v217, SHIDWORD(v217), v219);
    OUTLINED_FUNCTION_152_6();

    v55 = *(v13 + 3192);
    v56 = *(v13 + 3184);
    v57 = *(v13 + 3160);
    OUTLINED_FUNCTION_4_35();
    OUTLINED_FUNCTION_59_14();

    OUTLINED_FUNCTION_127();
  }

  else
  {
    OUTLINED_FUNCTION_99_12();
    v58 = 0;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_98_8(v60))
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_89_13();
      OUTLINED_FUNCTION_131_6();
      OUTLINED_FUNCTION_38_20(4.8149e-34);
      OUTLINED_FUNCTION_86_14((v13 + 640));
      OUTLINED_FUNCTION_86_14(v222);
      OUTLINED_FUNCTION_150_5();
      v58 = v222;
      v61 = LLMQUModelResponse.description.getter();
      OUTLINED_FUNCTION_39_17(v61, v62, v63, v64, v65, v66, v67, v68, v110, v118, v126, v132, v137, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v193, v195, v197, v199, v202, v205, v207, v209, v211, v14, v12, v217, v219, v221, v222[0]);
      outlined destroy of LLMQUModelResponse(v13 + 952);
      OUTLINED_FUNCTION_97_8();
      OUTLINED_FUNCTION_117_4();

      *(v19 + 4) = v222;
      OUTLINED_FUNCTION_56_13(&dword_25D85C000, v69, v70, "Decoded response: %s");
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_72_9();
    }

    v71 = OUTLINED_FUNCTION_1_50();
    v72(v71);
    OUTLINED_FUNCTION_148_7();
    v73 = OUTLINED_FUNCTION_72_11();
    (v58)(v73);
    outlined destroy of IntentApplication?(v15, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    v74 = OUTLINED_FUNCTION_118_0();
    (v58)(v74);
    v75 = OUTLINED_FUNCTION_71_12();
    v76(v75);
    v77 = OUTLINED_FUNCTION_60_11();
    (v58)(v77);
    OUTLINED_FUNCTION_36_17();
    v78 = OUTLINED_FUNCTION_86_14((v13 + 1576));
    OUTLINED_FUNCTION_0_52(v78, v79, v80, v81, v82, v83, v84, v85, v110, v118, v126, v132, v137, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v193, v195, v197, v199, SHIDWORD(v199), v202, SHIDWORD(v202), v205, v207, v209, v211, v213, v215, v217, SHIDWORD(v217), v219);
    OUTLINED_FUNCTION_147_7();
    OUTLINED_FUNCTION_142_4();
    v86 = outlined destroy of LLMQUModelResponse(v13 + 1888);
    OUTLINED_FUNCTION_52_17(v86, v87, v88, v89, v90, v91, v92, v93, v113, v121, v129, v135, v140);
    v94 = OUTLINED_FUNCTION_90_8();
    OUTLINED_FUNCTION_3_39(v94, v95, v96, v97, v98, v99, v100, v101, v114, v115, v116, v117, v122, v123, v124, v125, v130, v131, v136, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v192, v194, v196, v198, v200, v201, v203, v204, v206, v208, v210, v212, v214, v216, v218, v220);
    OUTLINED_FUNCTION_116_7();

    OUTLINED_FUNCTION_127();
  }

  OUTLINED_FUNCTION_63_14();

  return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v16 = *(v13 + 3056);
  OUTLINED_FUNCTION_102_8();
  v17();
  v18 = *(v13 + 3312);
  v19 = *(v13 + 2816);
  v20 = *(v13 + 2824);
  OUTLINED_FUNCTION_94_9();
  v21 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_144_7();
  if (OUTLINED_FUNCTION_143_8())
  {
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_132_9();
    *v14 = 136315138;
    OUTLINED_FUNCTION_63_0();
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_205_3(&dword_25D85C000, v22, v23, "Got response from LLM QU: %s");
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_37_0();
  }

  OUTLINED_FUNCTION_16_26();
  v24(*(v13 + 3152));
  *(v13 + 3380) = 0;
  OUTLINED_FUNCTION_63_0();
  String.count.getter();
  result = OUTLINED_FUNCTION_144_7();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(v12))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_8_29();

  OUTLINED_FUNCTION_35_22();
  v213 = v14;
  v215 = v12;
  if (v18)
  {
    OUTLINED_FUNCTION_5_32();
    v26 = OUTLINED_FUNCTION_67_16();
    (v12)(v26);
    outlined destroy of IntentApplication?(v14, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    v27 = OUTLINED_FUNCTION_48_3();
    v28 = (v12)(v27);
    v36 = OUTLINED_FUNCTION_66_15(v28, v29, v30, v31, v32, v33, v34, v35, v110, v118, v126, v132, v137, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186);
    v38 = v37(v36);
    v46 = OUTLINED_FUNCTION_123_10(v38, v39, v40, v41, v42, v43, v44, v45, v111, v119, v127, v133, v138, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v190);
    v47 = (v12)(v46);
    OUTLINED_FUNCTION_2_34(v47, v48, v49, v50, v51, v52, v53, v54, v112, v120, v128, v134, v139, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v191, v193, v195, v197, SHIDWORD(v197), v199, SHIDWORD(v199), v202, v205, v207, v209, v211, v14, v12, v217, SHIDWORD(v217), v219);
    OUTLINED_FUNCTION_152_6();

    v55 = *(v13 + 3192);
    v56 = *(v13 + 3184);
    v57 = *(v13 + 3160);
    OUTLINED_FUNCTION_4_35();
    OUTLINED_FUNCTION_59_14();

    OUTLINED_FUNCTION_127();
  }

  else
  {
    OUTLINED_FUNCTION_99_12();
    v58 = 0;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_98_8(v60))
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_89_13();
      OUTLINED_FUNCTION_131_6();
      OUTLINED_FUNCTION_38_20(4.8149e-34);
      OUTLINED_FUNCTION_86_14((v13 + 640));
      OUTLINED_FUNCTION_86_14(v222);
      OUTLINED_FUNCTION_150_5();
      v58 = v222;
      v61 = LLMQUModelResponse.description.getter();
      OUTLINED_FUNCTION_39_17(v61, v62, v63, v64, v65, v66, v67, v68, v110, v118, v126, v132, v137, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v193, v195, v197, v199, v202, v205, v207, v209, v211, v14, v12, v217, v219, v221, v222[0]);
      outlined destroy of LLMQUModelResponse(v13 + 952);
      OUTLINED_FUNCTION_97_8();
      OUTLINED_FUNCTION_117_4();

      *(v19 + 4) = v222;
      OUTLINED_FUNCTION_56_13(&dword_25D85C000, v69, v70, "Decoded response: %s");
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_72_9();
    }

    v71 = OUTLINED_FUNCTION_1_50();
    v72(v71);
    OUTLINED_FUNCTION_148_7();
    v73 = OUTLINED_FUNCTION_72_11();
    (v58)(v73);
    outlined destroy of IntentApplication?(v15, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    v74 = OUTLINED_FUNCTION_118_0();
    (v58)(v74);
    v75 = OUTLINED_FUNCTION_71_12();
    v76(v75);
    v77 = OUTLINED_FUNCTION_60_11();
    (v58)(v77);
    OUTLINED_FUNCTION_36_17();
    v78 = OUTLINED_FUNCTION_86_14((v13 + 1576));
    OUTLINED_FUNCTION_0_52(v78, v79, v80, v81, v82, v83, v84, v85, v110, v118, v126, v132, v137, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v193, v195, v197, v199, SHIDWORD(v199), v202, SHIDWORD(v202), v205, v207, v209, v211, v213, v215, v217, SHIDWORD(v217), v219);
    OUTLINED_FUNCTION_147_7();
    OUTLINED_FUNCTION_142_4();
    v86 = outlined destroy of LLMQUModelResponse(v13 + 1888);
    OUTLINED_FUNCTION_52_17(v86, v87, v88, v89, v90, v91, v92, v93, v113, v121, v129, v135, v140);
    v94 = OUTLINED_FUNCTION_90_8();
    OUTLINED_FUNCTION_3_39(v94, v95, v96, v97, v98, v99, v100, v101, v114, v115, v116, v117, v122, v123, v124, v125, v130, v131, v136, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v192, v194, v196, v198, v200, v201, v203, v204, v206, v208, v210, v212, v214, v216, v218, v220);
    OUTLINED_FUNCTION_116_7();

    OUTLINED_FUNCTION_127();
  }

  OUTLINED_FUNCTION_63_14();

  return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v16 = *(v13 + 3328);
  v17 = *(v13 + 2848);
  v18 = *(v13 + 2856);
  OUTLINED_FUNCTION_94_9();
  v19 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_144_7();
  if (OUTLINED_FUNCTION_143_8())
  {
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_132_9();
    *v14 = 136315138;
    OUTLINED_FUNCTION_63_0();
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_205_3(&dword_25D85C000, v20, v21, "Got response from LLM QU: %s");
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_37_0();
  }

  OUTLINED_FUNCTION_16_26();
  v22(*(v13 + 3152));
  *(v13 + 3380) = 0;
  OUTLINED_FUNCTION_63_0();
  String.count.getter();
  result = OUTLINED_FUNCTION_144_7();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(v12))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_8_29();

  OUTLINED_FUNCTION_35_22();
  v211 = v14;
  v213 = v12;
  if (v16)
  {
    OUTLINED_FUNCTION_5_32();
    v24 = OUTLINED_FUNCTION_67_16();
    (v12)(v24);
    outlined destroy of IntentApplication?(v14, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    v25 = OUTLINED_FUNCTION_48_3();
    v26 = (v12)(v25);
    v34 = OUTLINED_FUNCTION_66_15(v26, v27, v28, v29, v30, v31, v32, v33, v108, v116, v124, v130, v135, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184);
    v36 = v35(v34);
    v44 = OUTLINED_FUNCTION_123_10(v36, v37, v38, v39, v40, v41, v42, v43, v109, v117, v125, v131, v136, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v188);
    v45 = (v12)(v44);
    OUTLINED_FUNCTION_2_34(v45, v46, v47, v48, v49, v50, v51, v52, v110, v118, v126, v132, v137, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v189, v191, v193, v195, SHIDWORD(v195), v197, SHIDWORD(v197), v200, v203, v205, v207, v209, v14, v12, v215, SHIDWORD(v215), v217);
    OUTLINED_FUNCTION_152_6();

    v53 = *(v13 + 3192);
    v54 = *(v13 + 3184);
    v55 = *(v13 + 3160);
    OUTLINED_FUNCTION_4_35();
    OUTLINED_FUNCTION_59_14();

    OUTLINED_FUNCTION_127();
  }

  else
  {
    OUTLINED_FUNCTION_99_12();
    v56 = 0;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_98_8(v58))
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_89_13();
      OUTLINED_FUNCTION_131_6();
      OUTLINED_FUNCTION_38_20(4.8149e-34);
      OUTLINED_FUNCTION_86_14((v13 + 640));
      OUTLINED_FUNCTION_86_14(v220);
      OUTLINED_FUNCTION_150_5();
      v56 = v220;
      v59 = LLMQUModelResponse.description.getter();
      OUTLINED_FUNCTION_39_17(v59, v60, v61, v62, v63, v64, v65, v66, v108, v116, v124, v130, v135, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v191, v193, v195, v197, v200, v203, v205, v207, v209, v14, v12, v215, v217, v219, v220[0]);
      outlined destroy of LLMQUModelResponse(v13 + 952);
      OUTLINED_FUNCTION_97_8();
      OUTLINED_FUNCTION_117_4();

      *(v17 + 4) = v220;
      OUTLINED_FUNCTION_56_13(&dword_25D85C000, v67, v68, "Decoded response: %s");
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_72_9();
    }

    v69 = OUTLINED_FUNCTION_1_50();
    v70(v69);
    OUTLINED_FUNCTION_148_7();
    v71 = OUTLINED_FUNCTION_72_11();
    (v56)(v71);
    outlined destroy of IntentApplication?(v15, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    v72 = OUTLINED_FUNCTION_118_0();
    (v56)(v72);
    v73 = OUTLINED_FUNCTION_71_12();
    v74(v73);
    v75 = OUTLINED_FUNCTION_60_11();
    (v56)(v75);
    OUTLINED_FUNCTION_36_17();
    v76 = OUTLINED_FUNCTION_86_14((v13 + 1576));
    OUTLINED_FUNCTION_0_52(v76, v77, v78, v79, v80, v81, v82, v83, v108, v116, v124, v130, v135, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v191, v193, v195, v197, SHIDWORD(v197), v200, SHIDWORD(v200), v203, v205, v207, v209, v211, v213, v215, SHIDWORD(v215), v217);
    OUTLINED_FUNCTION_147_7();
    OUTLINED_FUNCTION_142_4();
    v84 = outlined destroy of LLMQUModelResponse(v13 + 1888);
    OUTLINED_FUNCTION_52_17(v84, v85, v86, v87, v88, v89, v90, v91, v111, v119, v127, v133, v138);
    v92 = OUTLINED_FUNCTION_90_8();
    OUTLINED_FUNCTION_3_39(v92, v93, v94, v95, v96, v97, v98, v99, v112, v113, v114, v115, v120, v121, v122, v123, v128, v129, v134, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v190, v192, v194, v196, v198, v199, v201, v202, v204, v206, v208, v210, v212, v214, v216, v218);
    OUTLINED_FUNCTION_116_7();

    OUTLINED_FUNCTION_127();
  }

  OUTLINED_FUNCTION_63_14();

  return v101(v100, v101, v102, v103, v104, v105, v106, v107, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v16 = *(v13 + 3344);
  v17 = *(v13 + 2880);
  v18 = *(v13 + 2888);
  OUTLINED_FUNCTION_94_9();
  v19 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_144_7();
  if (OUTLINED_FUNCTION_143_8())
  {
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_132_9();
    *v14 = 136315138;
    OUTLINED_FUNCTION_63_0();
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_205_3(&dword_25D85C000, v20, v21, "Got response from LLM QU: %s");
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_37_0();
  }

  OUTLINED_FUNCTION_16_26();
  v22(*(v13 + 3152));
  *(v13 + 3380) = 0;
  OUTLINED_FUNCTION_63_0();
  String.count.getter();
  result = OUTLINED_FUNCTION_144_7();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(v12))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_8_29();

  OUTLINED_FUNCTION_35_22();
  v211 = v14;
  v213 = v12;
  if (v16)
  {
    OUTLINED_FUNCTION_5_32();
    v24 = OUTLINED_FUNCTION_67_16();
    (v12)(v24);
    outlined destroy of IntentApplication?(v14, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    v25 = OUTLINED_FUNCTION_48_3();
    v26 = (v12)(v25);
    v34 = OUTLINED_FUNCTION_66_15(v26, v27, v28, v29, v30, v31, v32, v33, v108, v116, v124, v130, v135, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184);
    v36 = v35(v34);
    v44 = OUTLINED_FUNCTION_123_10(v36, v37, v38, v39, v40, v41, v42, v43, v109, v117, v125, v131, v136, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v188);
    v45 = (v12)(v44);
    OUTLINED_FUNCTION_2_34(v45, v46, v47, v48, v49, v50, v51, v52, v110, v118, v126, v132, v137, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v189, v191, v193, v195, SHIDWORD(v195), v197, SHIDWORD(v197), v200, v203, v205, v207, v209, v14, v12, v215, SHIDWORD(v215), v217);
    OUTLINED_FUNCTION_152_6();

    v53 = *(v13 + 3192);
    v54 = *(v13 + 3184);
    v55 = *(v13 + 3160);
    OUTLINED_FUNCTION_4_35();
    OUTLINED_FUNCTION_59_14();

    OUTLINED_FUNCTION_127();
  }

  else
  {
    OUTLINED_FUNCTION_99_12();
    v56 = 0;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_98_8(v58))
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_89_13();
      OUTLINED_FUNCTION_131_6();
      OUTLINED_FUNCTION_38_20(4.8149e-34);
      OUTLINED_FUNCTION_86_14((v13 + 640));
      OUTLINED_FUNCTION_86_14(v220);
      OUTLINED_FUNCTION_150_5();
      v56 = v220;
      v59 = LLMQUModelResponse.description.getter();
      OUTLINED_FUNCTION_39_17(v59, v60, v61, v62, v63, v64, v65, v66, v108, v116, v124, v130, v135, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v191, v193, v195, v197, v200, v203, v205, v207, v209, v14, v12, v215, v217, v219, v220[0]);
      outlined destroy of LLMQUModelResponse(v13 + 952);
      OUTLINED_FUNCTION_97_8();
      OUTLINED_FUNCTION_117_4();

      *(v17 + 4) = v220;
      OUTLINED_FUNCTION_56_13(&dword_25D85C000, v67, v68, "Decoded response: %s");
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_72_9();
    }

    v69 = OUTLINED_FUNCTION_1_50();
    v70(v69);
    OUTLINED_FUNCTION_148_7();
    v71 = OUTLINED_FUNCTION_72_11();
    (v56)(v71);
    outlined destroy of IntentApplication?(v15, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    v72 = OUTLINED_FUNCTION_118_0();
    (v56)(v72);
    v73 = OUTLINED_FUNCTION_71_12();
    v74(v73);
    v75 = OUTLINED_FUNCTION_60_11();
    (v56)(v75);
    OUTLINED_FUNCTION_36_17();
    v76 = OUTLINED_FUNCTION_86_14((v13 + 1576));
    OUTLINED_FUNCTION_0_52(v76, v77, v78, v79, v80, v81, v82, v83, v108, v116, v124, v130, v135, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v191, v193, v195, v197, SHIDWORD(v197), v200, SHIDWORD(v200), v203, v205, v207, v209, v211, v213, v215, SHIDWORD(v215), v217);
    OUTLINED_FUNCTION_147_7();
    OUTLINED_FUNCTION_142_4();
    v84 = outlined destroy of LLMQUModelResponse(v13 + 1888);
    OUTLINED_FUNCTION_52_17(v84, v85, v86, v87, v88, v89, v90, v91, v111, v119, v127, v133, v138);
    v92 = OUTLINED_FUNCTION_90_8();
    OUTLINED_FUNCTION_3_39(v92, v93, v94, v95, v96, v97, v98, v99, v112, v113, v114, v115, v120, v121, v122, v123, v128, v129, v134, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v190, v192, v194, v196, v198, v199, v201, v202, v204, v206, v208, v210, v212, v214, v216, v218);
    OUTLINED_FUNCTION_116_7();

    OUTLINED_FUNCTION_127();
  }

  OUTLINED_FUNCTION_63_14();

  return v101(v100, v101, v102, v103, v104, v105, v106, v107, a9, a10, a11, a12);
}

uint64_t $defer #1 () in LLMQUModelServer.parse(_:originatorPID:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Logging.searchComponentSignposter);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "SearchTool.LLMQU", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LLMQUModelServer.createOverridePrompt()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (AFIsInternalInstall())
  {
    type metadata accessor for NSUserDefaults();
    static NSUserDefaults.llmQUPromptTemplateOverride.getter();
    if (v4)
    {
      v5 = static NSUserDefaults.makeModelCatalogAjaxUserDefaults()();
      if (v5)
      {
        v6 = v5;
        v7 = MEMORY[0x25F89F4C0](*(v2 + 16), *(v2 + 24));
        v8 = [v6 objectForKey_];

        if (v8)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = 0u;
          v24 = 0u;
        }

        v25 = v23;
        v26 = v24;
        if (*(&v24 + 1))
        {
          outlined destroy of IntentApplication?(&v25, &_sypSgMd, &_sypSgMR);
          if (one-time initialization token for llmQU != -1)
          {
            swift_once();
          }

          v11 = type metadata accessor for Logger();
          __swift_project_value_buffer(v11, static Logging.llmQU);

          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            *&v25 = v15;
            *v14 = 136315138;
            *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            _os_log_impl(&dword_25D85C000, v12, v13, "Using override prompt template for LLM QU: %s", v14, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v15);
            MEMORY[0x25F8A1050](v15, -1, -1);
            MEMORY[0x25F8A1050](v14, -1, -1);
          }

          Prompt.init(template:)();
          v20 = type metadata accessor for Prompt();
          v21 = a1;
          v22 = 0;
          return __swift_storeEnumTagSinglePayload(v21, v22, 1, v20);
        }
      }

      else
      {

        v25 = 0u;
        v26 = 0u;
      }

      outlined destroy of IntentApplication?(&v25, &_sypSgMd, &_sypSgMR);
      if (one-time initialization token for llmQU != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logging.llmQU);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_25D85C000, v17, v18, "Ignoring overridden LLM QU prompt template since ajax override is not set", v19, 2u);
        MEMORY[0x25F8A1050](v19, -1, -1);
      }

      v20 = type metadata accessor for Prompt();
      v21 = a1;
      v22 = 1;
      return __swift_storeEnumTagSinglePayload(v21, v22, 1, v20);
    }
  }

  v9 = type metadata accessor for Prompt();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
}

uint64_t LLMQUModelServer.createOverrideGrammar()()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.llmQUBNFGrammarOverride.getter();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t closure #2 in LLMQUModelServer.parse(promptTemplate:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMR);
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v7 = *(v6 + 64) + 15;
  v4[31] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMR);
  v4[33] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v11 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v4[35] = v11;
  v12 = *(v11 - 8);
  v4[36] = v12;
  v13 = *(v12 + 64) + 15;
  v4[37] = swift_task_alloc();
  v14 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v4[38] = v14;
  v15 = *(v14 - 8);
  v4[39] = v15;
  v16 = *(v15 + 64) + 15;
  v4[40] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR) - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v18 = type metadata accessor for FunctionIdentifier();
  v4[42] = v18;
  v19 = *(v18 - 8);
  v4[43] = v19;
  v20 = *(v19 + 64) + 15;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v4[46] = v21;
  v22 = *(v21 - 8);
  v4[47] = v22;
  v23 = *(v22 + 64) + 15;
  v4[48] = swift_task_alloc();
  v24 = type metadata accessor for CompletionPrompt();
  v4[49] = v24;
  v25 = *(v24 - 8);
  v4[50] = v25;
  v26 = *(v25 + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in LLMQUModelServer.parse(promptTemplate:bindings:quModel:), 0, 0);
}

uint64_t closure #2 in LLMQUModelServer.parse(promptTemplate:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_45_14();
  *(OUTLINED_FUNCTION_141_5() + 16) = v10;
  OUTLINED_FUNCTION_129_9();
  CompletionPrompt.init(_:)();

  v11[56] = OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_samplingParameters;
  v15 = type metadata accessor for SamplingParameters();
  v11[57] = v15;
  OUTLINED_FUNCTION_17(v15);
  v17 = OUTLINED_FUNCTION_133_9(*(v16 + 16));
  v19 = v18(v17);
  v20 = OUTLINED_FUNCTION_75_13(v19, *MEMORY[0x277D0E548]);
  v21(v20);
  OUTLINED_FUNCTION_7_30();
  v11[62] = lazy protocol witness table accessor for type LLMBundle and conformance LLMBundle(v22, v23);
  OUTLINED_FUNCTION_118_0();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v24 = OUTLINED_FUNCTION_96_10();
  v25(v24);
  v26 = OUTLINED_FUNCTION_82_13();
  v12(v26);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(a10);
  OUTLINED_FUNCTION_76_12();
  GenerativeConfigurationProtocol.bindVariables(_:)();

  (v12)(v14, v13);
  OUTLINED_FUNCTION_48_11();
  GenerativeConfigurationProtocol.renderedPromptSanitizerDisabled()();
  v27 = OUTLINED_FUNCTION_118_0();
  v12(v27);
  OUTLINED_FUNCTION_48_11();
  GenerativeConfigurationProtocol.responseSanitizerDisabled()();
  v28 = OUTLINED_FUNCTION_60_11();
  v12(v28);
  v29 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_100_8(v29, v30, v31, v29);
  OUTLINED_FUNCTION_54_18();
  v32 = *(MEMORY[0x277D0E538] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v11[67] = v33;
  *v33 = v34;
  v33[1] = closure #2 in LLMQUModelServer.parse(promptTemplate:bindings:quModel:);
  v35 = v11[32];
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x282166B58](v36, v37, v38);
}

uint64_t closure #2 in LLMQUModelServer.parse(promptTemplate:bindings:quModel:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 536);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 544) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v6 = v4[69];
  *v5 = *v2;
  v4[70] = v1;

  OUTLINED_FUNCTION_136_8();
  v8 = *(v7 + 248);
  v9 = v4[30];
  v10 = v4[29];
  if (!v1)
  {
    v4[71] = v0;
    v4[72] = v3;
  }

  (*(v9 + 8))(v8, v10);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t closure #2 in LLMQUModelServer.parseUsingGrammarOverride(overrideGrammar:promptTemplate:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  v6[36] = *a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMR);
  v6[37] = v7;
  v8 = *(v7 - 8);
  v6[38] = v8;
  v9 = *(v8 + 64) + 15;
  v6[39] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR) - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMR);
  v6[41] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[42] = swift_task_alloc();
  v13 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v6[43] = v13;
  v14 = *(v13 - 8);
  v6[44] = v14;
  v15 = *(v14 + 64) + 15;
  v6[45] = swift_task_alloc();
  v16 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v6[46] = v16;
  v17 = *(v16 - 8);
  v6[47] = v17;
  v18 = *(v17 + 64) + 15;
  v6[48] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR) - 8) + 64) + 15;
  v6[49] = swift_task_alloc();
  v20 = type metadata accessor for FunctionIdentifier();
  v6[50] = v20;
  v21 = *(v20 - 8);
  v6[51] = v21;
  v22 = *(v21 + 64) + 15;
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v6[54] = v23;
  v24 = *(v23 - 8);
  v6[55] = v24;
  v25 = *(v24 + 64) + 15;
  v6[56] = swift_task_alloc();
  v26 = type metadata accessor for CompletionPrompt();
  v6[57] = v26;
  v27 = *(v26 - 8);
  v6[58] = v27;
  v28 = *(v27 + 64) + 15;
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in LLMQUModelServer.parseUsingGrammarOverride(overrideGrammar:promptTemplate:bindings:quModel:), 0, 0);
}

uint64_t closure #2 in LLMQUModelServer.parseUsingGrammarOverride(overrideGrammar:promptTemplate:bindings:quModel:)()
{
  OUTLINED_FUNCTION_41_14();
  v2 = OUTLINED_FUNCTION_140_6();
  *(v2 + 16) = v0;
  OUTLINED_FUNCTION_129_9();
  CompletionPrompt.init(_:)();

  v1[65] = OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_samplingParameters;
  v3 = type metadata accessor for SamplingParameters();
  v1[66] = v3;
  OUTLINED_FUNCTION_17(v3);
  v1[67] = *(v4 + 16);
  v5 = OUTLINED_FUNCTION_134_7();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_58_10(v7, *MEMORY[0x277D0E548]);
  v9(v8);
  OUTLINED_FUNCTION_7_30();
  v1[71] = lazy protocol witness table accessor for type LLMBundle and conformance LLMBundle(v10, v11);
  OUTLINED_FUNCTION_60_11();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v12 = OUTLINED_FUNCTION_84_11();
  v13(v12);
  v14 = OUTLINED_FUNCTION_83_12();
  (v2)(v14);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v40);
  OUTLINED_FUNCTION_76_12();
  GenerativeConfigurationProtocol.bindVariables(_:)();

  v15 = OUTLINED_FUNCTION_124_11();
  v16 = (v2)(v15);
  OUTLINED_FUNCTION_103_12(v16, v17, v18, v19, v20, v21, v22, v23, v38, v39, v40, v41, v42, v43);
  v24 = OUTLINED_FUNCTION_118_0();
  (v2)(v24);
  OUTLINED_FUNCTION_48_11();
  GenerativeConfigurationProtocol.renderedPromptSanitizerDisabled()();
  v25 = OUTLINED_FUNCTION_124_11();
  (v2)(v25);
  OUTLINED_FUNCTION_48_11();
  GenerativeConfigurationProtocol.responseSanitizerDisabled()();
  v26 = OUTLINED_FUNCTION_60_11();
  (v2)(v26);
  v27 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_100_8(v27, v28, v29, v27);
  OUTLINED_FUNCTION_54_18();
  v30 = *(MEMORY[0x277D0E538] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v1[76] = v31;
  *v31 = v32;
  v31[1] = closure #2 in LLMQUModelServer.parseUsingGrammarOverride(overrideGrammar:promptTemplate:bindings:quModel:);
  v33 = v1[40];
  OUTLINED_FUNCTION_47_5();

  return MEMORY[0x282166B58](v34, v35, v36);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 608);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 616) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v6 = v4[78];
  *v5 = *v2;
  v4[79] = v1;

  OUTLINED_FUNCTION_136_8();
  v8 = *(v7 + 312);
  v9 = v4[38];
  v10 = v4[37];
  if (!v1)
  {
    v4[80] = v0;
    v4[81] = v3;
  }

  (*(v9 + 8))(v8, v10);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v2 = OUTLINED_FUNCTION_81_15();
  v3(v2);
  v4 = OUTLINED_FUNCTION_107();
  v1(v4);
  v5 = *(v0 + 616);
  OUTLINED_FUNCTION_61_16();

  OUTLINED_FUNCTION_127();

  return v6();
}

{
  v2 = OUTLINED_FUNCTION_81_15();
  v3(v2);
  v4 = OUTLINED_FUNCTION_107();
  v1(v4);
  v5 = *(v0 + 632);
  OUTLINED_FUNCTION_61_16();

  OUTLINED_FUNCTION_127();

  return v6();
}

uint64_t closure #2 in LLMQUModelServer.parseUsingGrammarOverride(overrideGrammar:promptTemplate:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v21 = v20[75];
  v22 = v20[74];
  v24 = v20[63];
  v23 = v20[64];
  v26 = v20[61];
  v25 = v20[62];
  v27 = v20[60];
  v28 = v20[57];
  v41 = v20[59];
  v42 = v20[56];
  v43 = v20[52];
  v44 = v20[49];
  v45 = v20[48];
  v46 = v20[45];
  v47 = v20[42];
  v48 = v20[40];
  v49 = v20[39];
  (*(v20[51] + 8))(v20[53], v20[50]);
  v22(v23, v28);

  v29 = v20[1];
  v30 = v20[81];
  v31 = v20[80];
  OUTLINED_FUNCTION_17_4();

  return v35(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, v44, v45, v46, v47, v48, v49, a18, a19, a20);
}

uint64_t closure #1 in closure #2 in LLMQUModelServer.parse(promptTemplate:bindings:quModel:)()
{
  v2 = type metadata accessor for Prompt();
  v3 = OUTLINED_FUNCTION_112_13(v2);
  v5 = v4;
  v6 = *(v1 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v10 = type metadata accessor for PromptTemplate();
  v19[3] = v10;
  OUTLINED_FUNCTION_11_30();
  v19[4] = lazy protocol witness table accessor for type LLMBundle and conformance LLMBundle(v11, v12);
  __swift_allocate_boxed_opaque_existential_1Tm(v19);
  OUTLINED_FUNCTION_51(v10);
  (*(v13 + 16))();
  v14 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v15 = *(v1 + 72);
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25DBC8180;
  (*(v5 + 16))(v17 + v16, v9, v0);
  MEMORY[0x25F89F150](v17, v0, v14);

  return (*(v5 + 8))(v9, v0);
}

uint64_t closure #2 in LLMQUModelServer.parseUsingPromptOverride(overridePrompt:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMR);
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v7 = *(v6 + 64) + 15;
  v4[31] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMR);
  v4[33] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v11 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v4[35] = v11;
  v12 = *(v11 - 8);
  v4[36] = v12;
  v13 = *(v12 + 64) + 15;
  v4[37] = swift_task_alloc();
  v14 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v4[38] = v14;
  v15 = *(v14 - 8);
  v4[39] = v15;
  v16 = *(v15 + 64) + 15;
  v4[40] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR) - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v18 = type metadata accessor for FunctionIdentifier();
  v4[42] = v18;
  v19 = *(v18 - 8);
  v4[43] = v19;
  v20 = *(v19 + 64) + 15;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v4[46] = v21;
  v22 = *(v21 - 8);
  v4[47] = v22;
  v23 = *(v22 + 64) + 15;
  v4[48] = swift_task_alloc();
  v24 = type metadata accessor for CompletionPrompt();
  v4[49] = v24;
  v25 = *(v24 - 8);
  v4[50] = v25;
  v26 = *(v25 + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in LLMQUModelServer.parseUsingPromptOverride(overridePrompt:bindings:quModel:), 0, 0);
}

uint64_t closure #2 in LLMQUModelServer.parseUsingPromptOverride(overridePrompt:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_45_14();
  *(OUTLINED_FUNCTION_141_5() + 16) = v10;
  OUTLINED_FUNCTION_129_9();
  CompletionPrompt.init(_:)();

  v11[56] = OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_samplingParameters;
  v15 = type metadata accessor for SamplingParameters();
  v11[57] = v15;
  OUTLINED_FUNCTION_17(v15);
  v17 = OUTLINED_FUNCTION_133_9(*(v16 + 16));
  v19 = v18(v17);
  v20 = OUTLINED_FUNCTION_75_13(v19, *MEMORY[0x277D0E548]);
  v21(v20);
  OUTLINED_FUNCTION_7_30();
  v11[62] = lazy protocol witness table accessor for type LLMBundle and conformance LLMBundle(v22, v23);
  OUTLINED_FUNCTION_118_0();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v24 = OUTLINED_FUNCTION_96_10();
  v25(v24);
  v26 = OUTLINED_FUNCTION_82_13();
  v12(v26);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(a10);
  OUTLINED_FUNCTION_76_12();
  GenerativeConfigurationProtocol.bindVariables(_:)();

  (v12)(v14, v13);
  OUTLINED_FUNCTION_48_11();
  GenerativeConfigurationProtocol.renderedPromptSanitizerDisabled()();
  v27 = OUTLINED_FUNCTION_118_0();
  v12(v27);
  OUTLINED_FUNCTION_48_11();
  GenerativeConfigurationProtocol.responseSanitizerDisabled()();
  v28 = OUTLINED_FUNCTION_60_11();
  v12(v28);
  v29 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_100_8(v29, v30, v31, v29);
  OUTLINED_FUNCTION_54_18();
  v32 = *(MEMORY[0x277D0E538] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v11[67] = v33;
  *v33 = v34;
  v33[1] = closure #2 in LLMQUModelServer.parseUsingPromptOverride(overridePrompt:bindings:quModel:);
  v35 = v11[32];
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x282166B58](v36, v37, v38);
}

uint64_t closure #2 in LLMQUModelServer.parseUsingPromptOverride(overridePrompt:bindings:quModel:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 536);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 544) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v6 = v4[69];
  *v5 = *v2;
  v4[70] = v1;

  OUTLINED_FUNCTION_136_8();
  v8 = *(v7 + 248);
  v9 = v4[30];
  v10 = v4[29];
  if (!v1)
  {
    v4[71] = v0;
    v4[72] = v3;
  }

  (*(v9 + 8))(v8, v10);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v2 = OUTLINED_FUNCTION_85_12();
  v3(v2);
  v4 = OUTLINED_FUNCTION_107();
  v1(v4);
  v5 = *(v0 + 544);
  OUTLINED_FUNCTION_62_14();

  OUTLINED_FUNCTION_127();

  return v6();
}

{
  v2 = OUTLINED_FUNCTION_85_12();
  v3(v2);
  v4 = OUTLINED_FUNCTION_107();
  v1(v4);
  v5 = *(v0 + 560);
  OUTLINED_FUNCTION_62_14();

  OUTLINED_FUNCTION_127();

  return v6();
}

uint64_t closure #2 in LLMQUModelServer.parseUsingPromptOverride(overridePrompt:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v21 = v20[66];
  v22 = v20[65];
  v24 = v20[54];
  v23 = v20[55];
  v26 = v20[52];
  v25 = v20[53];
  v27 = v20[51];
  v28 = v20[49];
  v41 = v20[48];
  v42 = v20[44];
  v43 = v20[41];
  v44 = v20[40];
  v45 = v20[37];
  v46 = v20[34];
  v47 = v20[32];
  v48 = v20[31];
  (*(v20[43] + 8))(v20[45], v20[42]);
  v22(v23, v28);

  v29 = v20[1];
  v30 = v20[72];
  v31 = v20[71];
  OUTLINED_FUNCTION_17_4();

  return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, v43, v44, v45, v46, v47, v48, a18, a19, a20);
}

uint64_t closure #2 in LLMQUModelServer.parseUsingPromptAndGrammarOverrides(overridePrompt:overrideGrammar:bindings:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  v6[36] = *a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMR);
  v6[37] = v7;
  v8 = *(v7 - 8);
  v6[38] = v8;
  v9 = *(v8 + 64) + 15;
  v6[39] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR) - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMR);
  v6[41] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[42] = swift_task_alloc();
  v13 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v6[43] = v13;
  v14 = *(v13 - 8);
  v6[44] = v14;
  v15 = *(v14 + 64) + 15;
  v6[45] = swift_task_alloc();
  v16 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v6[46] = v16;
  v17 = *(v16 - 8);
  v6[47] = v17;
  v18 = *(v17 + 64) + 15;
  v6[48] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR) - 8) + 64) + 15;
  v6[49] = swift_task_alloc();
  v20 = type metadata accessor for FunctionIdentifier();
  v6[50] = v20;
  v21 = *(v20 - 8);
  v6[51] = v21;
  v22 = *(v21 + 64) + 15;
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v6[54] = v23;
  v24 = *(v23 - 8);
  v6[55] = v24;
  v25 = *(v24 + 64) + 15;
  v6[56] = swift_task_alloc();
  v26 = type metadata accessor for CompletionPrompt();
  v6[57] = v26;
  v27 = *(v26 - 8);
  v6[58] = v27;
  v28 = *(v27 + 64) + 15;
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in LLMQUModelServer.parseUsingPromptAndGrammarOverrides(overridePrompt:overrideGrammar:bindings:quModel:), 0, 0);
}

uint64_t closure #2 in LLMQUModelServer.parseUsingPromptAndGrammarOverrides(overridePrompt:overrideGrammar:bindings:quModel:)()
{
  OUTLINED_FUNCTION_41_14();
  v2 = OUTLINED_FUNCTION_140_6();
  *(v2 + 16) = v0;
  OUTLINED_FUNCTION_129_9();
  CompletionPrompt.init(_:)();

  v1[65] = OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_samplingParameters;
  v3 = type metadata accessor for SamplingParameters();
  v1[66] = v3;
  OUTLINED_FUNCTION_17(v3);
  v1[67] = *(v4 + 16);
  v5 = OUTLINED_FUNCTION_134_7();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_58_10(v7, *MEMORY[0x277D0E548]);
  v9(v8);
  OUTLINED_FUNCTION_7_30();
  v1[71] = lazy protocol witness table accessor for type LLMBundle and conformance LLMBundle(v10, v11);
  OUTLINED_FUNCTION_60_11();
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v12 = OUTLINED_FUNCTION_84_11();
  v13(v12);
  v14 = OUTLINED_FUNCTION_83_12();
  (v2)(v14);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v40);
  OUTLINED_FUNCTION_76_12();
  GenerativeConfigurationProtocol.bindVariables(_:)();

  v15 = OUTLINED_FUNCTION_124_11();
  v16 = (v2)(v15);
  OUTLINED_FUNCTION_103_12(v16, v17, v18, v19, v20, v21, v22, v23, v38, v39, v40, v41, v42, v43);
  v24 = OUTLINED_FUNCTION_118_0();
  (v2)(v24);
  OUTLINED_FUNCTION_48_11();
  GenerativeConfigurationProtocol.renderedPromptSanitizerDisabled()();
  v25 = OUTLINED_FUNCTION_124_11();
  (v2)(v25);
  OUTLINED_FUNCTION_48_11();
  GenerativeConfigurationProtocol.responseSanitizerDisabled()();
  v26 = OUTLINED_FUNCTION_60_11();
  (v2)(v26);
  v27 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_100_8(v27, v28, v29, v27);
  OUTLINED_FUNCTION_54_18();
  v30 = *(MEMORY[0x277D0E538] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v1[76] = v31;
  *v31 = v32;
  v31[1] = closure #2 in LLMQUModelServer.parseUsingPromptAndGrammarOverrides(overridePrompt:overrideGrammar:bindings:quModel:);
  v33 = v1[40];
  OUTLINED_FUNCTION_47_5();

  return MEMORY[0x282166B58](v34, v35, v36);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 608);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 616) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v6 = v4[78];
  *v5 = *v2;
  v4[79] = v1;

  OUTLINED_FUNCTION_136_8();
  v8 = *(v7 + 312);
  v9 = v4[38];
  v10 = v4[37];
  if (!v1)
  {
    v4[80] = v0;
    v4[81] = v3;
  }

  (*(v9 + 8))(v8, v10);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t closure #1 in closure #2 in LLMQUModelServer.parseUsingPromptOverride(overridePrompt:bindings:quModel:)()
{
  v2 = type metadata accessor for Prompt();
  v3 = OUTLINED_FUNCTION_112_13(v2);
  v5 = v4;
  v6 = *(v1 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v10 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v11 = *(v1 + 72);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25DBC8180;
  (*(v5 + 16))(v13 + v12, v9, v0);
  MEMORY[0x25F89F150](v13, v0, v10);

  return (*(v5 + 8))(v9, v0);
}

uint64_t LLMQUModelServer.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_samplingParameters;
  v3 = type metadata accessor for SamplingParameters();
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_model);

  v6 = *(v0 + OBJC_IVAR____TtC10OmniSearch16LLMQUModelServer_modelVersionNumber + 8);

  return v0;
}

uint64_t LLMQUModelServer.__deallocating_deinit()
{
  LLMQUModelServer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LLMQUModelServerProtocol.parse(_:originatorPID:) in conformance LLMQUModelServer()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return LLMQUModelServer.parse(_:originatorPID:)();
}

uint64_t dispatch thunk of LLMQUModelServerProtocol.parse(_:originatorPID:)()
{
  OUTLINED_FUNCTION_159();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *(v1 + 16);
  v20 = (v15 + *v15);
  v16 = v15[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 16) = v17;
  *v17 = v18;
  v17[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return (v20)(v14, v12, v10, v8, v6 & 1, v4, v2);
}

uint64_t type metadata accessor for LLMQUModelServer()
{
  result = type metadata singleton initialization cache for LLMQUModelServer;
  if (!type metadata singleton initialization cache for LLMQUModelServer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LLMQUModelServer()
{
  result = type metadata accessor for SamplingParameters();
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

uint64_t lazy protocol witness table accessor for type LLMBundle and conformance LLMBundle(unint64_t *a1, void (*a2)(uint64_t))
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

void *OUTLINED_FUNCTION_0_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, int a32, int a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, int a42)
{
  *(v42 + 2632) = a28;
  *(v42 + 2640) = a29;
  *(v42 + 2648) = a30;
  *(v42 + 2652) = *(v42 + 3384);
  *(v42 + 2653) = *a27;
  *(v42 + 2655) = *(a27 + 2);
  *(v42 + 2656) = a42;
  *(v42 + 2660) = *(v42 + 3364);
  *(v42 + 2661) = *a36;
  *(v42 + 2663) = *(a36 + 2);
  *(v42 + 2664) = 0;
  *(v42 + 2668) = *(v42 + 3368);
  *(v42 + 2669) = *a37;
  *(v42 + 2671) = *(a37 + 2);
  *(v42 + 2672) = a32;
  *(v42 + 2676) = *(v42 + 3372);
  *(v42 + 2677) = *a35;
  *(v42 + 2679) = *(a35 + 2);
  *(v42 + 2680) = a34;
  *(v42 + 2684) = *(v42 + 3360);
  *(v42 + 2685) = *a38;
  *(v42 + 2687) = *(a38 + 2);
  *(v42 + 2688) = a40;
  *(v42 + 2692) = *(v42 + 3380);
  *(v42 + 2695) = *(a39 + 2);
  *(v42 + 2693) = *a39;
  *(v42 + 2696) = a31;
  *(v42 + 2700) = *(v42 + 3376);

  return memcpy((v42 + 1888), (v42 + 16), 0x138uLL);
}

uint64_t OUTLINED_FUNCTION_1_50()
{
  v25 = *(v0 + 3272);
  v26 = *(v0 + 3356);
  v1 = *(v0 + 3264);
  v2 = *(v0 + 3256);
  v3 = *(v0 + 3248);
  v27 = *(v0 + 3352);
  v13 = *(v0 + 3232);
  v23 = *(v0 + 3208);
  v24 = *(v0 + 3216);
  v16 = *(v0 + 3200);
  v17 = *(v0 + 3192);
  v4 = *(v0 + 3160);
  v5 = *(v0 + 3152);
  v6 = *(v0 + 3136);
  v7 = *(v0 + 3128);
  v8 = *(v0 + 3120);
  v9 = *(v0 + 3112);
  v14 = *(v0 + 3104);
  v18 = *(v0 + 3184);
  v19 = *(v0 + 3096);
  v10 = *(v0 + 3088);
  v20 = *(v0 + 3080);
  v21 = *(v0 + 3072);
  v11 = *(v0 + 3064);
  v22 = *(v0 + 3056);
  v15 = *(v0 + 3000);
  return *(v0 + 3144);
}

uint64_t OUTLINED_FUNCTION_2_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, int a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, int a42)
{
  *(v42 + 2488) = a27;
  *(v42 + 2496) = a28;
  *(v42 + 2504) = a29;
  *(v42 + 2508) = *(v42 + 3384);
  *(v42 + 2509) = *v43;
  *(v42 + 2511) = *(v43 + 2);
  *(v42 + 2512) = a42;
  *(v42 + 2516) = *(v42 + 3364);
  *(v42 + 2517) = *a36;
  *(v42 + 2519) = *(a36 + 2);
  *(v42 + 2520) = 0;
  *(v42 + 2524) = *(v42 + 3368);
  *(v42 + 2525) = *a37;
  *(v42 + 2527) = *(a37 + 2);
  *(v42 + 2528) = a31;
  *(v42 + 2532) = *(v42 + 3372);
  *(v42 + 2533) = *a35;
  *(v42 + 2535) = *(a35 + 2);
  *(v42 + 2536) = a32;
  *(v42 + 2540) = *(v42 + 3360);
  *(v42 + 2543) = *(a38 + 2);
  *(v42 + 2541) = *a38;
  *(v42 + 2544) = a40;
  *(v42 + 2548) = *(v42 + 3380);
  *(v42 + 2551) = *(a39 + 2);
  *(v42 + 2549) = *a39;
  *(v42 + 2552) = 0;
  *(v42 + 2556) = *(v42 + 3376);

  return outlined destroy of LLMQULoggingMetrics(v42 + 2488);
}

uint64_t OUTLINED_FUNCTION_3_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, __int16 a12, char a13, __int16 a14, char a15, __int16 a16, char a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, int a39, int a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48)
{
  *(v51 + 2560) = a35;
  *(v51 + 2568) = a36;
  *(v51 + 2576) = a37;
  *(v51 + 2580) = a19;
  *(v51 + 2581) = *v50;
  *(v51 + 2583) = *(v50 + 2);
  *(v51 + 2584) = a48;
  *(v51 + 2588) = a17;
  *(v51 + 2589) = *v49;
  *(v51 + 2591) = *(v49 + 2);
  *(v51 + 2592) = 0;
  *(v51 + 2596) = a15;
  v58 = *v54;
  *(v51 + 2599) = *(v54 + 2);
  *(v51 + 2597) = v58;
  *(v51 + 2600) = a39;
  *(v51 + 2604) = a13;
  *(v51 + 2605) = *v56;
  *(v51 + 2607) = *(v56 + 2);
  *(v51 + 2608) = a41;
  *(v51 + 2612) = a11;
  *(v51 + 2613) = *v48;
  *(v51 + 2615) = *(v48 + 2);
  *(v51 + 2616) = v53;
  *(v51 + 2620) = a9;
  v59 = *v55;
  *(v51 + 2623) = *(v55 + 2);
  *(v51 + 2621) = v59;
  *(v51 + 2624) = a38;
  *(v51 + 2628) = v52;

  return outlined destroy of LLMQULoggingMetrics(v51 + 2560);
}

void OUTLINED_FUNCTION_4_35()
{
  v1 = v0[394];
  v2 = v0[393];
  v3 = v0[390];
  v4 = v0[387];
  v5 = v0[386];
  v6 = v0[385];
}

uint64_t OUTLINED_FUNCTION_5_32()
{
  v2 = *(v0 + 3356);
  v17 = *(v0 + 3356);
  v18 = *(v0 + 3352);
  v3 = *(v0 + 3232);
  v15 = *(v0 + 3216);
  v16 = *(v0 + 3272);
  v19 = *(v0 + 3200);
  v13 = *(v0 + 3160);
  v14 = *(v0 + 3208);
  v4 = *(v0 + 3152);
  v5 = *(v0 + 3144);
  v6 = *(v0 + 3136);
  v7 = *(v0 + 3128);
  v12 = *(v0 + 3120);
  v8 = *(v0 + 3112);
  v9 = *(v0 + 3104);
  v10 = *(v0 + 3088);
}

uint64_t OUTLINED_FUNCTION_8_29()
{
  v2 = *(v0 + 3144);
  v3 = *(v0 + 3016);
  v4 = *(v0 + 3008);
  *(v0 + 3364) = 0;

  return Date.init()();
}

uint64_t OUTLINED_FUNCTION_13_20()
{
  v3 = *(v0 - 136);
  v2 = *(v0 - 128);
  v4 = *(v0 - 88);

  return static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:bindingConfigurations:)();
}

void OUTLINED_FUNCTION_16_26()
{
  v1 = v0[408];
  v2 = v0[407];
  v3 = v0[406];
}

uint64_t OUTLINED_FUNCTION_20_16()
{
  v3 = *(v0 + 600);
  *(v2 - 104) = *(v0 + 592);
  *(v2 - 96) = v3;
  v4 = *(v0 + 584);
  *(v2 - 152) = *(v0 + 576);
  *(v2 - 144) = v4;
  v31 = *(v0 + 552);
  v32 = *(v0 + 560);
  v30 = *(v0 + 656);
  v28 = *(v0 + 536);
  v29 = *(v0 + 544);
  v27 = *(v0 + 528);
  v25 = *(v0 + 520);
  v5 = *(v0 + 512);
  *(v2 - 136) = *(v0 + 504);
  *(v2 - 128) = v5;
  v6 = *(v0 + 464);
  *(v2 - 120) = *(v0 + 456);
  *(v2 - 112) = v6;
  v24 = *(v0 + 448);
  v26 = *(v0 + 432);
  v16 = *(v0 + 416);
  v17 = *(v0 + 408);
  v18 = *(v0 + 400);
  v19 = *(v0 + 424);
  v7 = *(v0 + 376);
  *(v2 - 88) = *(v0 + 384);
  *(v2 - 160) = v7;
  v8 = *(v0 + 368);
  v10 = *(v0 + 344);
  v9 = *(v0 + 352);
  v14 = *(v1 + 48);
  v15 = *(v0 + 360);
  v21 = *(v0 + 264);
  v22 = *(v0 + 272);
  v23 = *(v0 + 248);
  v20 = *(v0 + 240);
  v13 = *(*(v0 + 328) + 48);
  v11 = *(v7 + 32);
  return *(v0 + 336);
}

uint64_t OUTLINED_FUNCTION_21_23()
{
  v3 = *(v0 + 528);
  *(v2 - 104) = *(v0 + 520);
  *(v2 - 96) = v3;
  v4 = *(v0 + 512);
  *(v2 - 160) = *(v0 + 504);
  *(v2 - 152) = v4;
  v29 = *(v0 + 480);
  v30 = *(v0 + 488);
  v28 = *(v0 + 584);
  v26 = *(v0 + 464);
  v27 = *(v0 + 472);
  v25 = *(v0 + 456);
  v23 = *(v0 + 448);
  v5 = *(v0 + 440);
  *(v2 - 136) = *(v0 + 432);
  *(v2 - 128) = v5;
  v6 = *(v0 + 400);
  *(v2 - 120) = *(v0 + 392);
  *(v2 - 112) = v6;
  v22 = *(v0 + 384);
  v24 = *(v0 + 368);
  v16 = *(v0 + 352);
  v17 = *(v0 + 344);
  v18 = *(v0 + 336);
  v19 = *(v0 + 360);
  v7 = *(v0 + 312);
  *(v2 - 88) = *(v0 + 320);
  *(v2 - 144) = v7;
  v8 = *(v0 + 304);
  v10 = *(v0 + 280);
  v9 = *(v0 + 288);
  v14 = *(v1 + 48);
  v15 = *(v0 + 296);
  v20 = *(v0 + 192);
  v21 = *(v0 + 200);
  v13 = *(*(v0 + 264) + 48);
  v11 = *(v7 + 32);
  return *(v0 + 272);
}

uint64_t OUTLINED_FUNCTION_22_18()
{
  v13 = *(v0 + 3272);
  v14 = *(v0 + 3356);
  *(v1 - 88) = v0 + 2413;
  v15 = *(v0 + 3352);
  result = *(v0 + 3232);
  v12 = *(v0 + 3216);
  v11 = *(v0 + 3208);
  *(v1 - 80) = *(v0 + 3200);
  v3 = *(v0 + 3152);
  v4 = *(v0 + 3136);
  v5 = *(v0 + 3128);
  v6 = *(v0 + 3120);
  v10 = *(v0 + 3160);
  v7 = *(v0 + 3112);
  v8 = *(v0 + 3104);
  v9 = *(v0 + 3088);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_21()
{
  result = v0;
  v3 = *(v1 - 120);
  v5 = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_24()
{
  v14 = *(v0 + 3272);
  v15 = *(v0 + 3356);
  v16 = *(v0 + 3352);
  v2 = *(v0 + 3232);
  v13 = *(v0 + 3216);
  v3 = *(v0 + 3208);
  v17 = *(v0 + 3200);
  v4 = *(v0 + 3160);
  v5 = *(v0 + 3152);
  v6 = *(v0 + 3136);
  v7 = *(v0 + 3128);
  v8 = *(v0 + 3120);
  v9 = *(v0 + 3112);
  v10 = *(v0 + 3104);
  v11 = *(v0 + 3088);
}

uint64_t OUTLINED_FUNCTION_34_23()
{

  return GenerativeConfigurationProtocol.with<A>(model:)();
}

double OUTLINED_FUNCTION_35_22()
{

  return LLMQUModelResponse.init(jsonString:query:)(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_36_17()
{
  *(v0 + 3376) = 0;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_38_20(float a1)
{
  *v1 = a1;

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_39_17(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char __src)
{

  return memcpy((v41 + 952), &__src, 0x138uLL);
}

void OUTLINED_FUNCTION_41_14()
{
  v13 = v0[63];
  v14 = v0[64];
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[57];
  v4 = v0[58];
  v6 = v0[55];
  v5 = v0[56];
  v16 = v0[53];
  v15 = v0[49];
  v11 = v0[34];
  v12 = v0[62];
  v9 = v0[61];
  v10 = v0[33];
  v7 = v0[54];
  v8 = v0[32];
}

void OUTLINED_FUNCTION_45_14()
{
  v11 = v0[54];
  v12 = v0[55];
  v1 = v0[52];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];
  v9 = v0[46];
  v7 = v0[45];
  v13 = v0[41];
  v8 = v0[26];
  v10 = v0[53];
}

uint64_t OUTLINED_FUNCTION_46_18()
{

  return Dictionary.init(dictionaryLiteral:)();
}

void *OUTLINED_FUNCTION_52_17(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__dst)
{

  return memcpy(__dst, (v13 + 1576), 0x138uLL);
}

uint64_t OUTLINED_FUNCTION_54_18()
{

  return FunctionIdentifier.init(identifier:resourceInformation:)();
}

void OUTLINED_FUNCTION_56_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_57_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_58_10(uint64_t a1, int a2)
{
  *(v3 + 656) = a2;
  *(v3 + 552) = *(v4 + 104);
  *(v3 + 560) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  return v2;
}

uint64_t OUTLINED_FUNCTION_59_14()
{
  v2 = v0[384];
  v3 = v0[383];
  v5 = v0[382];
}

uint64_t OUTLINED_FUNCTION_61_16()
{
  v3 = v0[63];
  v2 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  v7 = v0[59];
  v6 = v0[60];
  v8 = v0[56];
  v10 = v0[52];
  v9 = v0[53];
  v11 = v0[49];
  v14 = v0[48];
  v15 = v0[45];
  v12 = v0[42];
  v16 = v0[40];
  v17 = v0[39];
}

uint64_t OUTLINED_FUNCTION_62_14()
{
  v3 = v0[54];
  v2 = v0[55];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[51];
  v7 = v0[48];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[40];
  v11 = v0[41];
  v13 = v0[37];
  v14 = v0[34];
  v15 = v0[32];
  v16 = v0[31];
}

uint64_t OUTLINED_FUNCTION_64_13()
{
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[62];
  v6 = v0[54];
  v5 = v0[55];
  v7 = v0[49];
  v8 = v0[45];
  v9 = v0[31];
  v11 = v0[27];
  v10 = v0[28];

  return GenerativeConfigurationProtocol.functionIdentifier(_:)();
}

uint64_t OUTLINED_FUNCTION_68_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = v2 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_69_11()
{
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[71];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[57];
  v8 = v0[53];
  v9 = v0[39];
  v11 = v0[35];
  v10 = v0[36];

  return GenerativeConfigurationProtocol.functionIdentifier(_:)();
}

uint64_t OUTLINED_FUNCTION_73_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_74_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_75_13(uint64_t a1, int a2)
{
  *(v2 + 584) = a2;
  *(v2 + 480) = *(v4 + 104);
  *(v2 + 488) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  return v3;
}

uint64_t OUTLINED_FUNCTION_81_15()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[64];
  v4 = v0[57];
  result = v0[53];
  v6 = v0[50];
  v7 = *(v0[51] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_82_13()
{
  *(v1 + 520) = *(v2 + 8);
  *(v1 + 528) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_83_12()
{
  *(v1 + 592) = *(v2 + 8);
  *(v1 + 600) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_84_11()
{
  *(v1 + 576) = *(v2 + 8);
  *(v1 + 584) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_85_12()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[55];
  v4 = v0[49];
  result = v0[45];
  v6 = v0[42];
  v7 = *(v0[43] + 8);
  return result;
}

void *OUTLINED_FUNCTION_86_14(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x138uLL);
}

uint64_t OUTLINED_FUNCTION_89_13()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_90_8()
{

  return memcpy((v1 + 312), (v0 + 2632), 0x45uLL);
}

uint64_t OUTLINED_FUNCTION_92_10()
{

  return _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
}

uint64_t OUTLINED_FUNCTION_94_9()
{
  v2 = *(v0 + 3224);

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_96_10()
{
  *(v0 + 504) = *(v2 + 8);
  *(v0 + 512) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_97_8()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

BOOL OUTLINED_FUNCTION_98_8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_99_12()
{
  v2 = *(v0 + 3224);

  LLMQUModelResponse.postProcess()();
}

uint64_t OUTLINED_FUNCTION_100_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_103_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return MEMORY[0x2821D9FE8](a13, a14, v15, v14);
}

uint64_t OUTLINED_FUNCTION_115_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_116_7()
{

  return $defer #1 () in LLMQUModelServer.parse(_:originatorPID:)();
}

uint64_t OUTLINED_FUNCTION_117_9()
{
  v3 = v0[384];
  v5 = v0[383];
  *(v1 - 88) = v0[382];
}

uint64_t OUTLINED_FUNCTION_118_6()
{
  v2 = v0[384];
  v4 = v0[383];
  v5 = v0[382];
}

BOOL OUTLINED_FUNCTION_119_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_121_9()
{
  *(v1 + 8) = v0;
  v3 = *(v2 + 248);
  return *(v2 + 232);
}

uint64_t OUTLINED_FUNCTION_122_8()
{
  *(v1 + 8) = v0;
  v3 = *(v2 + 312);
  return *(v2 + 296);
}

uint64_t OUTLINED_FUNCTION_133_9@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v3;
}

uint64_t OUTLINED_FUNCTION_139_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a1 + 32) = 0xD000000000000035;
  *(a1 + 40) = a2;

  return MEMORY[0x2821D9F70](a11, a12);
}

uint64_t OUTLINED_FUNCTION_140_6()
{
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_141_5()
{
  v2 = *(v0 + 192);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_142_4()
{

  return outlined init with copy of LLMQULoggingMetrics(v0 + 2632, v0 + 2704);
}

BOOL OUTLINED_FUNCTION_143_8()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_144_7()
{
}

uint64_t OUTLINED_FUNCTION_146_6()
{
  v2 = *(v0 + 3280);
  v3 = *(v0 + 3240);
}

uint64_t OUTLINED_FUNCTION_147_7()
{

  return outlined init with copy of LLMQUModelResponse(v0 + 1576, v0 + 1264);
}

uint64_t OUTLINED_FUNCTION_148_7()
{
}

uint64_t OUTLINED_FUNCTION_150_5()
{

  return outlined init with copy of LLMQUModelResponse(v0 + 640, v0 + 328);
}

uint64_t OUTLINED_FUNCTION_151_4()
{

  return static _OverrideConfigurationHelper.samplingParameters(_:)();
}

uint64_t OUTLINED_FUNCTION_152_6()
{

  return $defer #1 () in LLMQUModelServer.parse(_:originatorPID:)();
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMd, &_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_0_53();
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_12:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (a1[6] + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (a1[7] + v13);
    v18 = *v17;
    v19 = v17[1];
    v30 = MEMORY[0x277D837D0];
    v31 = MEMORY[0x277D42EC0];
    *&v29 = v18;
    *(&v29 + 1) = v19;
    outlined init with take of ResponseOverrideMatcherProtocol(&v29, v33);
    outlined init with take of ResponseOverrideMatcherProtocol(v33, v34);
    outlined init with take of ResponseOverrideMatcherProtocol(v34, &v32);

    result = specialized __RawDictionaryStorage.find<A>(_:)();
    v20 = result;
    if (v21)
    {
      v22 = (v3[6] + 16 * result);
      v23 = v22[1];
      *v22 = v16;
      v22[1] = v15;

      v24 = (v3[7] + 40 * v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      result = outlined init with take of ResponseOverrideMatcherProtocol(&v32, v24);
      v10 = v11;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_19;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v25 = (v3[6] + 16 * result);
      *v25 = v16;
      v25[1] = v15;
      result = outlined init with take of ResponseOverrideMatcherProtocol(&v32, v3[7] + 40 * result);
      v26 = v3[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_20;
      }

      v3[2] = v28;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v3;
    }

    v7 = *(v1 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_0_53();
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = v3 + 64;

  v11 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v13 = __clz(__rbit64(v7)) | (v11 << 6);
    v14 = (a1[6] + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(a1[7] + 32 * v13, v37);
    *&v36 = v16;
    *(&v36 + 1) = v15;
    v34[2] = v36;
    v35[0] = v37[0];
    v35[1] = v37[1];
    v34[0] = v36;

    swift_dynamicCast();
    outlined init with take of Any(v35, v29);
    v30 = v26;
    v31 = v27;
    v32 = v28;
    outlined init with take of Any(v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    outlined init with take of Any(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
    v17 = -1 << *(v3 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v9 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v9 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v9 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v7 &= v7 - 1;
    *(v9 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v3 + 48) + 40 * v20;
    *v25 = v26;
    *(v25 + 16) = v27;
    *(v25 + 32) = v28;
    result = outlined init with take of Any(v34, (*(v3 + 56) + 32 * v20));
    ++*(v3 + 16);
  }

  while (v7);
LABEL_8:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return v3;
    }

    v7 = *(v1 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)();
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      v20 = v19[1];
      *v19 = v13;
      v19[1] = v12;

      v21 = v2[7];
      v22 = *(v21 + 8 * v17);
      *(v21 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v23 = (v2[6] + 16 * v16);
      *v23 = v13;
      v23[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void static CALogging.logEmbeddingCompleteness(completeness:)(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x800000025DBF5900;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v3 = Dictionary.init(dictionaryLiteral:)();
  v4 = MEMORY[0x25F89F4C0](0xD000000000000020, 0x800000025DBF5920);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  while (v3 != v2)
  {
    v4 = *(type metadata accessor for SearchEntity(0) - 8);
    v5 = *(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v2 + 24);
    EntityProperty.wrappedValue.getter();
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v9, __src, sizeof(v9));
    result = _s10OmniSearch0B7ContextVSgWOg(v9);
    if (result != 1)
    {
      memcpy(__src, v9, sizeof(__src));
      v6 = SearchAnswerEntity.evalInfo.getter();
      specialized Array.append<A>(contentsOf:)(v6);
      result = outlined destroy of IntentApplication?(__dst, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
    }

    ++v2;
  }

  return result;
}

uint64_t static EvalLogging.logEvalInfo(_:_:logger:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_project_boxed_opaque_existential_1(a3, v7);

  return specialized static EvalLogging.logEvalInfo(_:_:logger:)(a1, a2, v9, a4, v7, v8);
}

uint64_t one-time initialization function for fedSearch(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t Logging.fedSearch.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Logging.fedSearch.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t one-time initialization function for encoder()
{
  v0 = type metadata accessor for JSONEncoder.KeyEncodingStrategy();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = JSONEncoder.init()();
  (*(v1 + 104))(v4, *MEMORY[0x277CC8748], v0);
  result = dispatch thunk of JSONEncoder.keyEncodingStrategy.setter();
  static EvalLogging.encoder = v8;
  return result;
}

uint64_t *EvalLogging.encoder.unsafeMutableAddressor()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_4_36();
    swift_once();
  }

  return &static EvalLogging.encoder;
}

uint64_t static EvalLogging.encoder.getter()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_4_36();
    swift_once();
  }
}

void closure #1 in static EvalLogging.logEvalInfo(_:_:logger:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_4_36();
    swift_once();
  }

  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v10 = v3;
    v11 = v4;

    v12 = OUTLINED_FUNCTION_1_28();
    outlined copy of Data._Representation(v12, v13);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    v16 = OUTLINED_FUNCTION_1_28();
    outlined consume of Data._Representation(v16, v17);
    if (!os_log_type_enabled(v14, v15))
    {

      v28 = OUTLINED_FUNCTION_1_28();
      outlined consume of Data._Representation(v28, v29);
      return;
    }

    v18 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v18 + 12) = 2080;
    v19 = OUTLINED_FUNCTION_1_28();
    outlined copy of Data._Representation(v19, v20);
    v21 = OUTLINED_FUNCTION_1_28();
    specialized Data.withContiguousStorageIfAvailable<A>(_:)(v21, v22);
    if (!v23)
    {
      v39 = v10;
      v40 = v11;
      v24 = OUTLINED_FUNCTION_1_28();
      outlined copy of Data._Representation(v24, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, &_ss19_HasContiguousBytes_pMR);
      if (swift_dynamicCast())
      {
        outlined init with take of ResponseOverrideMatcherProtocol(v37, v41);
        __swift_project_boxed_opaque_existential_1(v41, v42);
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          v26 = OUTLINED_FUNCTION_1_28();
          outlined consume of Data._Representation(v26, v27);
          __swift_project_boxed_opaque_existential_1(v41, v42);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
LABEL_20:
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v18 + 14) = v34;
          _os_log_impl(&dword_25D85C000, v14, v15, "%s: %s", v18, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_42_0();
          v35 = OUTLINED_FUNCTION_1_28();
          outlined consume of Data._Representation(v35, v36);

          return;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v41);
      }

      else
      {
        v38 = 0;
        memset(v37, 0, sizeof(v37));
        outlined destroy of IntentApplication?(v37, &_ss19_HasContiguousBytes_pSgMd, &_ss19_HasContiguousBytes_pSgMR);
      }

      v30 = OUTLINED_FUNCTION_1_28();
      _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZ10Foundation4DataV_Tt0g5(v30, v31);
    }

    v32 = OUTLINED_FUNCTION_1_28();
    outlined consume of Data._Representation(v32, v33);
    goto LABEL_20;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logging.search);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v6, v7, "%s: Failed to encode result", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }
}

uint64_t Dictionary<>.evalInfo.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v113 = v108 - v4;
  OUTLINED_FUNCTION_78_0();
  v120 = type metadata accessor for EmailDocument();
  v5 = OUTLINED_FUNCTION_14(v120);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v124 = v11 - v10;
  v12 = OUTLINED_FUNCTION_78_0();
  v122 = type metadata accessor for SearchResultItem(v12);
  v13 = OUTLINED_FUNCTION_17(v122);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  v18 = v17 - v16;
  v19 = type metadata accessor for SearchResult(0);
  v123 = *(v19 - 8);
  v20 = *(v123 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_36();
  v23 = v22 - v21;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v24 = Dictionary.init(dictionaryLiteral:)();
  v25 = *(a1 + 64);
  v115 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v114 = (v26 + 63) >> 6;
  v111 = (v7 + 32);
  v110 = (v7 + 8);
  OUTLINED_FUNCTION_44_6();
  v108[8] = v29;
  OUTLINED_FUNCTION_44_6();
  v108[7] = v30;
  OUTLINED_FUNCTION_44_6();
  v108[6] = v31;
  OUTLINED_FUNCTION_44_6();
  v108[5] = v32;
  OUTLINED_FUNCTION_44_6();
  v108[4] = v33;
  OUTLINED_FUNCTION_44_6();
  v108[3] = v34;
  OUTLINED_FUNCTION_44_6();
  v108[2] = v35;
  OUTLINED_FUNCTION_44_6();
  v108[1] = v36;
  OUTLINED_FUNCTION_44_6();
  v108[0] = v37;
  v116 = a1;

  v38 = 0;
  v121 = v18;
LABEL_4:
  while (1)
  {
    v39 = "ptions";
    if (!v28)
    {
      break;
    }

LABEL_9:
    v41 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v42 = v41 | (v38 << 6);
    if (*(*(v116 + 48) + v42) == 1)
    {
      v43 = *(*(v116 + 56) + 16 * v42);
      v44 = *(v43 + 16);
      if (v44)
      {
        v119 = v43 + ((*(v123 + 80) + 32) & ~*(v123 + 80));

        v45 = 0;
        v117 = v44;
        v118 = v43;
        v109 = v23;
        while (1)
        {
          if (v45 >= *(v43 + 16))
          {
            goto LABEL_109;
          }

          v46 = *(v123 + 72);
          OUTLINED_FUNCTION_10_27();
          _s10OmniSearch0B6ResultVWOcTm_8(v47, v23, v48);
          _s10OmniSearch0B6ResultVWOcTm_8(v23, v18, type metadata accessor for SearchResultItem);
          if (swift_getEnumCaseMultiPayload())
          {
            _s10OmniSearch0B10ResultItemOWOhTm_6(v18, type metadata accessor for SearchResultItem);
            v125 = 0;
            v127 = 0xE000000000000000;
          }

          else
          {
            (*v111)(v124, v18, v120);
            *&v128 = 0;
            *(&v128 + 1) = 0xE000000000000000;
            MEMORY[0x25F89F5D0](49);
            v131 = v128;
            MEMORY[0x25F89F6C0](0x203A6D6F7266, 0xE600000000000000);
            v49 = EmailDocument.from.getter();
            *(&v129 + 1) = v112;
            v130 = lazy protocol witness table accessor for type [String] and conformance [A]();
            *&v128 = v49;
            LLMFormatter.StringInterpolation.appendInterpolation(_:)();
            outlined destroy of IntentApplication?(&v128, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
            MEMORY[0x25F89F6C0](544497952, 0xE400000000000000);
            v50 = v113;
            EmailDocument.date.getter();
            v51 = type metadata accessor for Date();
            if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
            {
              outlined destroy of IntentApplication?(v50, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              v128 = 0u;
              v129 = 0u;
              v130 = 0;
            }

            else
            {
              *(&v129 + 1) = v51;
              v130 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
              boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v128);
              (*(*(v51 - 8) + 32))(boxed_opaque_existential_1Tm, v50, v51);
            }

            LLMFormatter.StringInterpolation.appendInterpolation(_:)();
            outlined destroy of IntentApplication?(&v128, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
            MEMORY[0x25F89F6C0](0x7463656A62757320, 0xE90000000000003ALL);
            v53 = WalletPass.description.getter();
            if (v54)
            {
              *(&v129 + 1) = MEMORY[0x277D837D0];
              v130 = MEMORY[0x277D83838];
              *&v128 = v53;
              *(&v128 + 1) = v54;
            }

            else
            {
              v130 = 0;
              v128 = 0u;
              v129 = 0u;
            }

            LLMFormatter.StringInterpolation.appendInterpolation(_:)();
            outlined destroy of IntentApplication?(&v128, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
            LLMFormatter.sanitized.getter();
            v125 = v55;
            v127 = v56;

            (*v110)(v124, v120);
          }

          v126 = v45 + 1;

          SearchResultItem.type.getter(&v128);
          switch(v128)
          {
            case 1:
              OUTLINED_FUNCTION_22_19();
              break;
            case 2:
              OUTLINED_FUNCTION_29_16();
              break;
            case 4:
              OUTLINED_FUNCTION_35_23();
              break;
            case 6:
              OUTLINED_FUNCTION_31_22();
              break;
            case 7:
              OUTLINED_FUNCTION_26_17();
              break;
            case 8:
              OUTLINED_FUNCTION_8_30();
              v57 = &v130;
              goto LABEL_44;
            case 9:
              OUTLINED_FUNCTION_15_25();
              break;
            case 10:
              OUTLINED_FUNCTION_17_29();
              break;
            case 11:
              OUTLINED_FUNCTION_36_18();
              break;
            case 13:
              OUTLINED_FUNCTION_265_1();
              v57 = &v131;
              goto LABEL_44;
            case 14:
              OUTLINED_FUNCTION_21_24();
              break;
            case 15:
              OUTLINED_FUNCTION_28_20();
              break;
            case 16:
              OUTLINED_FUNCTION_265_1();
              v57 = &v131 + 1;
              goto LABEL_44;
            case 17:
              OUTLINED_FUNCTION_8_30();
              v57 = &v132;
              goto LABEL_44;
            case 18:
              OUTLINED_FUNCTION_8_30();
              v57 = &v133;
              goto LABEL_44;
            case 19:
              OUTLINED_FUNCTION_24_19();
              break;
            case 20:
              OUTLINED_FUNCTION_8_30();
              v57 = &v134;
              goto LABEL_44;
            case 21:
              OUTLINED_FUNCTION_18_19();
              break;
            case 22:
              OUTLINED_FUNCTION_8_30();
              v57 = &v135;
              goto LABEL_44;
            case 23:
              OUTLINED_FUNCTION_16_27();
              break;
            case 24:
              OUTLINED_FUNCTION_8_30();
              v57 = &v136;
              goto LABEL_44;
            case 25:
              OUTLINED_FUNCTION_20_17();
              break;
            case 26:
              OUTLINED_FUNCTION_19_25();
              break;
            case 29:
              OUTLINED_FUNCTION_30_20();
              break;
            case 30:
              OUTLINED_FUNCTION_8_30();
              v57 = &v137;
LABEL_44:
              v58 = *(v57 - 32);
              break;
            default:
              break;
          }

          if (v24[2])
          {
            specialized __RawDictionaryStorage.find<A>(_:)();
            v60 = v59;

            if (v60)
            {
              SearchResultItem.type.getter(&v128);
              switch(v128)
              {
                case 0:
                case 3:
                case 5:
                case 12:
                case 27:
                case 28:
                  goto LABEL_93;
                case 1:
                  OUTLINED_FUNCTION_22_19();
                  goto LABEL_93;
                case 2:
                  OUTLINED_FUNCTION_29_16();
                  goto LABEL_93;
                case 4:
                  OUTLINED_FUNCTION_35_23();
                  goto LABEL_93;
                case 6:
                  OUTLINED_FUNCTION_31_22();
                  goto LABEL_93;
                case 7:
                  OUTLINED_FUNCTION_26_17();
                  goto LABEL_93;
                case 8:
                  OUTLINED_FUNCTION_8_30();
                  v82 = &v130;
                  goto LABEL_87;
                case 9:
                  OUTLINED_FUNCTION_15_25();
                  goto LABEL_93;
                case 10:
                  OUTLINED_FUNCTION_17_29();
                  goto LABEL_93;
                case 11:
                  OUTLINED_FUNCTION_36_18();
                  goto LABEL_93;
                case 13:
                  OUTLINED_FUNCTION_265_1();
                  v82 = &v131;
                  goto LABEL_87;
                case 14:
                  OUTLINED_FUNCTION_21_24();
                  goto LABEL_93;
                case 15:
                  OUTLINED_FUNCTION_28_20();
                  goto LABEL_93;
                case 16:
                  OUTLINED_FUNCTION_265_1();
                  v82 = &v131 + 1;
                  goto LABEL_87;
                case 17:
                  OUTLINED_FUNCTION_8_30();
                  v82 = &v132;
                  goto LABEL_87;
                case 18:
                  OUTLINED_FUNCTION_8_30();
                  v82 = &v133;
                  goto LABEL_87;
                case 19:
                  OUTLINED_FUNCTION_24_19();
                  goto LABEL_93;
                case 20:
                  OUTLINED_FUNCTION_8_30();
                  v82 = &v134;
                  goto LABEL_87;
                case 21:
                  OUTLINED_FUNCTION_18_19();
                  goto LABEL_93;
                case 22:
                  OUTLINED_FUNCTION_8_30();
                  v82 = &v135;
                  goto LABEL_87;
                case 23:
                  OUTLINED_FUNCTION_16_27();
                  goto LABEL_93;
                case 24:
                  OUTLINED_FUNCTION_8_30();
                  v82 = &v136;
                  goto LABEL_87;
                case 25:
                  OUTLINED_FUNCTION_20_17();
                  goto LABEL_93;
                case 26:
                  OUTLINED_FUNCTION_19_25();
                  goto LABEL_93;
                case 29:
                  OUTLINED_FUNCTION_30_20();
                  goto LABEL_93;
                case 30:
                  OUTLINED_FUNCTION_8_30();
                  v82 = &v137;
LABEL_87:
                  v83 = *(v82 - 32);
LABEL_93:
                  if (!v24[2])
                  {
                    goto LABEL_115;
                  }

                  v84 = specialized __RawDictionaryStorage.find<A>(_:)();
                  v86 = v85;

                  if ((v86 & 1) == 0)
                  {
                    goto LABEL_112;
                  }

                  if (*(*(v24[7] + 8 * v84) + 16) > 2uLL)
                  {
                    OUTLINED_FUNCTION_0_54();
                    _s10OmniSearch0B10ResultItemOWOhTm_6(v23, v102);

                    goto LABEL_65;
                  }

                  v87 = v23;
                  SearchResultItem.type.getter(&v131);
                  SearchResultKey.rawValue.getter();
                  swift_isUniquelyReferenced_nonNull_native();
                  *&v128 = v24;
                  OUTLINED_FUNCTION_43_12();
                  v88 = specialized __RawDictionaryStorage.find<A>(_:)();
                  OUTLINED_FUNCTION_38_21(v88, v89);
                  if (v71)
                  {
                    goto LABEL_113;
                  }

                  v92 = v90;
                  v93 = v91;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySSGGMd, &_ss17_NativeDictionaryVySSSaySSGGMR);
                  if (OUTLINED_FUNCTION_44_20())
                  {
                    OUTLINED_FUNCTION_43_12();
                    v94 = specialized __RawDictionaryStorage.find<A>(_:)();
                    if ((v93 & 1) != (v95 & 1))
                    {
                      goto LABEL_116;
                    }

                    v92 = v94;
                  }

                  if ((v93 & 1) == 0)
                  {
                    goto LABEL_114;
                  }

                  v96 = *(*(v128 + 56) + 8 * v92);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v103 = *(v96 + 16);
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v96 = v104;
                  }

                  v18 = v121;
                  v23 = v87;
                  v98 = *(v96 + 16);
                  v97 = *(v96 + 24);
                  if (v98 >= v97 >> 1)
                  {
                    OUTLINED_FUNCTION_26_3(v97);
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v96 = v105;
                  }

                  *(v96 + 16) = v98 + 1;
                  v99 = v96 + 16 * v98;
                  v100 = v127;
                  *(v99 + 32) = v125;
                  *(v99 + 40) = v100;

                  *(*(v128 + 56) + 8 * v92) = v96;
                  OUTLINED_FUNCTION_0_54();
                  _s10OmniSearch0B10ResultItemOWOhTm_6(v87, v101);

                  v24 = v128;
                  break;
                default:
                  goto LABEL_117;
              }

              goto LABEL_64;
            }
          }

          else
          {
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v61 = swift_allocObject();
          *(v61 + 16) = *(v39 + 24);
          v62 = v127;
          *(v61 + 32) = v125;
          *(v61 + 40) = v62;
          SearchResultItem.type.getter(&v131);
          SearchResultKey.rawValue.getter();
          v64 = v63;
          v66 = v65;
          swift_isUniquelyReferenced_nonNull_native();
          *&v128 = v24;
          v67 = specialized __RawDictionaryStorage.find<A>(_:)();
          OUTLINED_FUNCTION_38_21(v67, v68);
          if (v71)
          {
            goto LABEL_110;
          }

          v72 = v69;
          v73 = v70;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySSGGMd, &_ss17_NativeDictionaryVySSSaySSGGMR);
          if (OUTLINED_FUNCTION_44_20())
          {
            v74 = specialized __RawDictionaryStorage.find<A>(_:)();
            if ((v73 & 1) != (v75 & 1))
            {
              goto LABEL_116;
            }

            v72 = v74;
          }

          if (v73)
          {

            v24 = v128;
            v76 = *(*(v128 + 56) + 8 * v72);

            *(v24[7] + 8 * v72) = v61;
            OUTLINED_FUNCTION_0_54();
            v23 = v109;
            _s10OmniSearch0B10ResultItemOWOhTm_6(v109, v77);
          }

          else
          {
            v24 = v128;
            *(v128 + 8 * (v72 >> 6) + 64) |= 1 << v72;
            v78 = (v24[6] + 16 * v72);
            *v78 = v64;
            v78[1] = v66;
            *(v24[7] + 8 * v72) = v61;
            OUTLINED_FUNCTION_0_54();
            v23 = v109;
            _s10OmniSearch0B10ResultItemOWOhTm_6(v109, v79);
            v80 = v24[2];
            v71 = __OFADD__(v80, 1);
            v81 = v80 + 1;
            if (v71)
            {
              goto LABEL_111;
            }

            v24[2] = v81;
          }

          v18 = v121;
LABEL_64:
          v39 = "NNSStringCompareOptions" + 17;
LABEL_65:
          v43 = v118;
          v45 = v126;
          if (v117 == v126)
          {

            goto LABEL_4;
          }
        }
      }
    }
  }

  while (1)
  {
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
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
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_117:
      JUMPOUT(0);
    }

    if (v40 >= v114)
    {
      break;
    }

    v28 = *(v115 + 8 * v40);
    ++v38;
    if (v28)
    {
      v38 = v40;
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySE_pGMd, &_ss23_ContiguousArrayStorageCySE_pGMR);
  OUTLINED_FUNCTION_39_18();
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_25DBC8180;
  *(v106 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  *(v106 + 64) = lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  *(v106 + 32) = v24;
  return v106;
}

uint64_t SearchToolIntentResponse.SearchItemIdentifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D657469 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7955819 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t SearchToolIntentResponse.SearchItemIdentifier.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x64496D657469;
  }

  if (a1 == 1)
  {
    return 0x6449656C646E7562;
  }

  return 7955819;
}

uint64_t SearchToolIntentResponse.SearchItemIdentifier.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E18ToolIntentResponseV0E14ItemIdentifier33_7DC14B86B00D755ED5CABC40E540667BLLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E18ToolIntentResponseV0E14ItemIdentifier33_7DC14B86B00D755ED5CABC40E540667BLLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v18[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v18[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SearchToolIntentResponse.Record.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E45707061 && a2 == 0xE900000000000079;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676F6C616964 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t SearchToolIntentResponse.Record.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x676F6C616964;
  }

  else
  {
    return 0x7469746E45707061;
  }
}

uint64_t SearchToolIntentResponse.Record.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E18ToolIntentResponseV6Record33_7DC14B86B00D755ED5CABC40E540667BLLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E18ToolIntentResponseV6Record33_7DC14B86B00D755ED5CABC40E540667BLLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v16 = *v3;
  v17 = v11;
  v18 = v3[2];
  v15[15] = 0;
  lazy protocol witness table accessor for type SearchToolIntentResponse.SearchItemIdentifier and conformance SearchToolIntentResponse.SearchItemIdentifier();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 6);
    v13 = *(v3 + 7);
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchToolIntentResponse.SearchItemIdentifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SearchToolIntentResponse.SearchItemIdentifier(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return SearchToolIntentResponse.SearchItemIdentifier.encode(to:)(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchToolIntentResponse.Record.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchToolIntentResponse.Record.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchToolIntentResponse.Record.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchToolIntentResponse.Record.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SearchToolIntentResponse.Record(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return SearchToolIntentResponse.Record.encode(to:)(a1);
}

void SearchToolIntentResponse.evalInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v151 = &v146 - v3;
  OUTLINED_FUNCTION_78_0();
  v4 = type metadata accessor for SearchResultType();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_39_0();
  v155 = v10;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_4();
  v152 = v12;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_4();
  v156 = v14;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v15);
  v154 = &v146 - v16;
  v17 = OUTLINED_FUNCTION_78_0();
  v147 = type metadata accessor for SearchEntity(v17);
  v18 = OUTLINED_FUNCTION_14(v147);
  v163 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  v149 = v22;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_4();
  v159 = v24;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_4();
  v148 = v26;
  OUTLINED_FUNCTION_174();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v146 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v146 - v31;
  v33 = 0;
  v171 = MEMORY[0x277D84F90];
  v146 = v0;
  v34 = *v0;
  v157 = *(*v0 + 16);
  v162 = *MEMORY[0x277D37060];
  v160 = (v7 + 8);
  v161 = (v7 + 104);
  v150 = MEMORY[0x277D84F90];
  v158 = v4;
  v164 = v34;
  v153 = v30;
  while (1)
  {
    if (v157 == v33)
    {
      *&v168 = MEMORY[0x277D84F90];
      v54 = v150[2];
      if (v54)
      {
        v55 = *(v147 + 84);
        OUTLINED_FUNCTION_27_19();
        v59 = v58 + (v57 & ~v56);
        v60 = MEMORY[0x277D84F90];
        v62 = *(v61 + 72);
        v63 = v151;
        do
        {
          OUTLINED_FUNCTION_3_40();
          _s10OmniSearch0B6ResultVWOcTm_8(v59, v30, v64);
          outlined init with copy of SearchResult?(&v30[v55], v63);
          v65 = type metadata accessor for SearchResult(0);
          if (__swift_getEnumTagSinglePayload(v63, 1, v65) == 1)
          {
            OUTLINED_FUNCTION_1_51();
            _s10OmniSearch0B10ResultItemOWOhTm_6(v30, v66);
            outlined destroy of IntentApplication?(v63, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
          }

          else
          {
            v67 = *(v65 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
            CodableNSSecureCoding.wrappedValue.getter();
            OUTLINED_FUNCTION_1_51();
            _s10OmniSearch0B10ResultItemOWOhTm_6(v30, v68);
            OUTLINED_FUNCTION_0_54();
            v70 = _s10OmniSearch0B10ResultItemOWOhTm_6(v63, v69);
            MEMORY[0x25F89F850](v70);
            v71 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v168 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v71 >> 1)
            {
              OUTLINED_FUNCTION_26_3(v71);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v60 = v168;
            v63 = v151;
          }

          v59 += v62;
          --v54;
        }

        while (v54);
      }

      else
      {

        v60 = MEMORY[0x277D84F90];
      }

      v72 = specialized Array.count.getter(v60);
      v73 = v152;
      if (v72)
      {
        v74 = v72;
        *&v168 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        if (v74 < 0)
        {
          goto LABEL_71;
        }

        v75 = 0;
        v76 = v168;
        v153 = v60 & 0xC000000000000001;
        v77 = &off_2799EF000;
        v156 = v60;
        v154 = v74;
        do
        {
          v78 = v76;
          if (v153)
          {
            v79 = MEMORY[0x25F89FFD0](v75, v60);
          }

          else
          {
            v79 = *(v60 + 8 * v75 + 32);
          }

          v80 = v79;
          v81 = [v79 v77[71]];
          v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v157 = v83;

          v84 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v80);
          if (v85)
          {
            v86 = v84;
          }

          else
          {
            v86 = 0;
          }

          if (v85)
          {
            v87 = v85;
          }

          else
          {
            v87 = 0xE000000000000000;
          }

          v88 = CSSearchableItem.associatedAppEntityId.getter();
          if (v89)
          {
            v90 = v88;
            v91 = v89;
          }

          else
          {
            v92 = [v80 v77[71]];
            v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v91 = v93;
          }

          v76 = v78;
          *&v168 = v78;
          v94 = *(v78 + 2);
          v95 = *(v76 + 3);
          if (v94 >= v95 >> 1)
          {
            OUTLINED_FUNCTION_26_3(v95);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v76 = v168;
          }

          ++v75;
          *(v76 + 2) = v94 + 1;
          v96 = &v76[48 * v94];
          v97 = v157;
          *(v96 + 4) = v82;
          *(v96 + 5) = v97;
          *(v96 + 6) = v86;
          *(v96 + 7) = v87;
          *(v96 + 8) = v90;
          *(v96 + 9) = v91;
          v4 = v158;
          v60 = v156;
          v77 = &off_2799EF000;
        }

        while (v154 != v75);

        v73 = v152;
      }

      else
      {

        v76 = MEMORY[0x277D84F90];
      }

      v98 = *(v76 + 2);
      if (v98)
      {
        v165 = MEMORY[0x277D84F90];
        v154 = v76;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v98, 0);
        v99 = v154;
        v100 = v165;
        v101 = type metadata accessor for SearchToolIntentResponse(0);
        v102 = 0;
        v103 = (v146 + *(v101 + 28));
        v104 = v103[1];
        v153 = *v103;
        v150 = v103;
        v151 = (v98 - 1);
        for (i = (v99 + 72); ; i += 6)
        {
          if (v102 >= *(v99 + 2))
          {
            goto LABEL_70;
          }

          v106 = *(i - 5);
          v107 = *(i - 4);
          v108 = *(i - 2);
          v156 = *(i - 3);
          v157 = v102;
          v109 = v153;
          v110 = v104;
          v111 = *(i - 1);
          v112 = *i;
          if (!v104)
          {
            v113 = (v150 + *(type metadata accessor for DialogData(0) + 28));
            v109 = *v113;
            v110 = v113[1];
          }

          v169 = &unk_286F80460;
          v170 = lazy protocol witness table accessor for type SearchToolIntentResponse.Record and conformance SearchToolIntentResponse.Record();
          v114 = swift_allocObject();
          *&v168 = v114;
          v114[2] = v106;
          v114[3] = v107;
          v114[4] = v156;
          v114[5] = v108;
          v114[6] = v111;
          v114[7] = v112;
          v114[8] = v109;
          v114[9] = v110;
          v165 = v100;
          v115 = *(v100 + 16);
          v116 = *(v100 + 24);

          if (v115 >= v116 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v115 + 1, 1);
            v100 = v165;
          }

          *(v100 + 16) = v115 + 1;
          outlined init with take of ResponseOverrideMatcherProtocol(&v168, v100 + 40 * v115 + 32);
          v73 = v152;
          if (v151 == v157)
          {
            break;
          }

          v102 = v157 + 1;
          v99 = v154;
        }

        v4 = v158;
      }

      else
      {

        v100 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v100);
      v117 = 0;
      v118 = v164;
      v158 = *(v164 + 16);
      v156 = MEMORY[0x277D84F90];
      v119 = v160;
      while (1)
      {
        while (1)
        {
          v120 = v155;
          if (v158 == v117)
          {
            specialized Sequence.forEach(_:)(v156);

            return;
          }

          if (v117 >= *(v118 + 16))
          {
            goto LABEL_69;
          }

          OUTLINED_FUNCTION_27_19();
          v157 = (v122 & ~v121);
          v124 = *(v123 + 72);
          OUTLINED_FUNCTION_3_40();
          v125 = v159;
          _s10OmniSearch0B6ResultVWOcTm_8(v126, v159, v127);
          v128 = *(v125 + 8);
          EntityProperty.wrappedValue.getter();
          (*v161)(v120, v162, v4);
          OUTLINED_FUNCTION_9_32();
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType, v129);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v168 != v165 || *(&v168 + 1) != v166)
          {
            break;
          }

          v135 = *v160;
          v136 = OUTLINED_FUNCTION_43_12();
          v135(v136);
          (v135)(v73, v4);

LABEL_62:
          OUTLINED_FUNCTION_2_35();
          outlined init with take of SearchEntity(v159, v149, v137);
          v138 = v156;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v140 = v138;
          v167 = v138;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v141 = *(v138 + 16);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v140 = v167;
          }

          v143 = *(v140 + 16);
          v142 = *(v140 + 24);
          if (v143 >= v142 >> 1)
          {
            OUTLINED_FUNCTION_26_3(v142);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v140 = v167;
          }

          ++v117;
          *(v140 + 16) = v143 + 1;
          v156 = v140;
          OUTLINED_FUNCTION_2_35();
          outlined init with take of SearchEntity(v149, v144, v145);
          v118 = v164;
        }

        v131 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v132 = *v119;
        v133 = OUTLINED_FUNCTION_43_12();
        v132(v133);
        (v132)(v73, v4);

        if (v131)
        {
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_1_51();
        _s10OmniSearch0B10ResultItemOWOhTm_6(v159, v134);
        ++v117;
        v118 = v164;
      }
    }

    if (v33 >= *(v34 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_27_19();
    v36 = *(v35 + 72);
    OUTLINED_FUNCTION_3_40();
    _s10OmniSearch0B6ResultVWOcTm_8(v37, v32, v38);
    v39 = *(v32 + 1);
    v40 = v154;
    EntityProperty.wrappedValue.getter();
    v41 = v156;
    (*v161)(v156, v162, v4);
    OUTLINED_FUNCTION_9_32();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType, v42);
    LOBYTE(v39) = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *v160;
    (*v160)(v41, v4);
    v43(v40, v4);
    if (v39)
    {
      OUTLINED_FUNCTION_1_51();
      _s10OmniSearch0B10ResultItemOWOhTm_6(v32, v44);
      ++v33;
      v4 = v158;
      v34 = v164;
      v30 = v153;
    }

    else
    {
      OUTLINED_FUNCTION_2_35();
      outlined init with take of SearchEntity(v32, v148, v45);
      v46 = v150;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v46;
      *&v168 = v46;
      v30 = v153;
      if ((v47 & 1) == 0)
      {
        v49 = v46[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v48 = v168;
      }

      v51 = v48[2];
      v50 = v48[3];
      if (v51 >= v50 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v50);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v48 = v168;
      }

      ++v33;
      v48[2] = v51 + 1;
      v150 = v48;
      OUTLINED_FUNCTION_2_35();
      outlined init with take of SearchEntity(v148, v52, v53);
      v4 = v158;
      v34 = v164;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

uint64_t SearchAnswerEntity.evalInfo.getter()
{
  v49 = type metadata accessor for SearchResult(0);
  v1 = OUTLINED_FUNCTION_14(v49);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  v9 = *v0;
  v10 = v0[1];
  memcpy(v58, v0 + 2, sizeof(v58));
  v11 = v0[14];
  v56 = v9;
  v57 = v10;
  v59 = v11;
  v46 = *(v0 + 15);
  v60 = v46;
  SearchAnswerEntity.sourceResults.getter();
  v13 = v12;
  v14 = *(v12 + 16);
  if (v14)
  {
    v45 = v11;
    v55 = MEMORY[0x277D84F90];
    v48 = v14;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v16 = 0;
    v17 = v55;
    v47 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v16 < *(v13 + 16))
    {
      v18 = v3;
      v19 = *(v3 + 72);
      OUTLINED_FUNCTION_10_27();
      _s10OmniSearch0B6ResultVWOcTm_8(v20, v8, v21);
      v53 = 0x203A656372756F53;
      v54 = 0xE800000000000000;
      v22 = *(v49 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v23 = CodableNSSecureCoding.wrappedValue.getter();
      v24 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v23);
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      MEMORY[0x25F89F6C0](v24, v26);

      MEMORY[0x25F89F6C0](2108704, 0xE300000000000000);
      SearchResultItem.associatedValue.getter(v50);
      v27 = v51;
      v28 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      v29 = (*(v28 + 32))(v27, v28);
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x25F89F6C0](v29, v31);

      v32 = v53;
      v33 = v54;
      OUTLINED_FUNCTION_0_54();
      result = _s10OmniSearch0B10ResultItemOWOhTm_6(v8, v34);
      v55 = v17;
      v36 = *(v17 + 16);
      v35 = *(v17 + 24);
      if (v36 >= v35 >> 1)
      {
        v38 = OUTLINED_FUNCTION_26_3(v35);
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38, v36 + 1, 1);
        v17 = v55;
      }

      ++v16;
      *(v17 + 16) = v36 + 1;
      v37 = v17 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v33;
      v3 = v18;
      if (v48 == v16)
      {

        v11 = v45;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySE_pGMd, &_ss23_ContiguousArrayStorageCySE_pGMR);
    OUTLINED_FUNCTION_39_18();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_25DBC8180;

    EntityProperty.wrappedValue.getter();
    v40 = v56;
    v41 = v57;
    EntityProperty.wrappedValue.getter();
    v42 = v56;
    v43 = v57;
    *(v39 + 56) = &unk_286F803D8;
    *(v39 + 64) = lazy protocol witness table accessor for type SearchAnswerEntity.Record and conformance SearchAnswerEntity.Record();
    OUTLINED_FUNCTION_39_18();
    v44 = swift_allocObject();
    *(v39 + 32) = v44;
    v44[2] = v11;
    v44[3] = v46;
    v44[4] = v40;
    v44[5] = v41;
    v44[6] = v42;
    v44[7] = v43;
    v44[8] = v17;
    return v39;
  }

  return result;
}