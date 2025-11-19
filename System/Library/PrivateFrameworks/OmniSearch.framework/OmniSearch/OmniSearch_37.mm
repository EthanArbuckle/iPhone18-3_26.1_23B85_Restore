id OmniSearchService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OmniSearchService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for OmniSearchServiceProtocol.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:) in conformance OmniSearchService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *((*MEMORY[0x277D85000] & **v8) + 0xE0);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = protocol witness for AnswerResolvable.extractInfo(query:results:assistantLocale:) in conformance AnswerResolver;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t partial apply for specialized closure #1 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_159();
  v1 = type metadata accessor for UserQuery();
  OUTLINED_FUNCTION_21(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_238_4();
  v6 &= 0xFFFFFFFFFFFFFFF8;
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v11 = *(v0 + v10);
  v12 = *(v0 + v6);
  v13 = *(v0 + ((v6 + 127) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_143(v14);
  *v15 = v16;
  v15[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_63_14();

  return specialized closure #1 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t partial apply for specialized closure #2 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  v1 = type metadata accessor for UserQuery();
  OUTLINED_FUNCTION_21(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_238_4();
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v11 = *(v0 + v10);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_143(v12);
  *v13 = v14;
  v13[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_63_14();

  return specialized closure #2 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t outlined assign with take of UserQuery(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserQuery();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_75();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v11 = v0[6];
  v10 = v0[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v12;
  *v12 = v13;
  v12[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)(v5, v3, v6, v7, v8, v9, v11, v10);
}

unint64_t lazy protocol witness table accessor for type SearchType and conformance SearchType()
{
  result = lazy protocol witness table cache variable for type SearchType and conformance SearchType;
  if (!lazy protocol witness table cache variable for type SearchType and conformance SearchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchType and conformance SearchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchType and conformance SearchType;
  if (!lazy protocol witness table cache variable for type SearchType and conformance SearchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchType and conformance SearchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchType and conformance SearchType;
  if (!lazy protocol witness table cache variable for type SearchType and conformance SearchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchType and conformance SearchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchType and conformance SearchType;
  if (!lazy protocol witness table cache variable for type SearchType and conformance SearchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchType and conformance SearchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchType and conformance SearchType;
  if (!lazy protocol witness table cache variable for type SearchType and conformance SearchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchType and conformance SearchType);
  }

  return result;
}

uint64_t dispatch thunk of OmniSearchServiceProtocol.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v64 = v36;
  v62 = v37;
  v63 = v38;
  v60 = v39;
  v61 = v40;
  OUTLINED_FUNCTION_133_12();
  v41 = *(a34 + 8);
  OUTLINED_FUNCTION_28_0();
  v59 = v42 + *v42;
  v44 = *(v43 + 4);
  v45 = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_63(v45);
  *v46 = v47;
  v46[1] = dispatch thunk of AnswerResolver.extractInfo(query:results:assistantLocale:);
  OUTLINED_FUNCTION_85_14();
  OUTLINED_FUNCTION_17_4();

  return v56(v48, v49, v50, v51, v52, v53, v54, v55, a9, a34 + 8, v59, v60, v61, v62, v63, v64, v34, a18, a19, a20, a21, a22, a23, a24, a25, v35);
}

uint64_t dispatch thunk of OmniSearchService.intermediateCallback.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  return (*(v3 + 160))();
}

uint64_t dispatch thunk of OmniSearchService.intermediateCallback.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  return (*(v3 + 168))();
}

uint64_t dispatch thunk of OmniSearchService.search(_:rewrittenQuery:matchedEntities:sources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_259_5();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_148_10();
  v12 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v14 = *(v13 + 208);
  v29 = v13 + 208;
  v30 = v14 + *v14;
  v15 = v14[1];
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_63(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_84(v17);
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_198();

  return v25(v19, v20, v21, v22, v23, v24, v25, v26, a9, v29, v30, a12);
}

uint64_t dispatch thunk of OmniSearchService.search(_:rewrittenQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_133_12();
  v15 = *v14;
  v16 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v18 = *(v17 + 216);
  v34 = v17 + 216;
  v35 = v18 + *v18;
  v19 = v18[1];
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_63(v20);
  *v21 = v22;
  v21[1] = dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:);
  OUTLINED_FUNCTION_85_14();
  OUTLINED_FUNCTION_83_0();

  return v31(v23, v24, v25, v26, v27, v28, v29, v30, a9, v34, v35, a12, a13, a14);
}

void dispatch thunk of OmniSearchService.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_133_12();
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v4 = *(v3 + 224);
  v11 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_63(v6);
  *v7 = v8;
  v7[1] = dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:);
  OUTLINED_FUNCTION_85_14();
  OUTLINED_FUNCTION_15_6();

  __asm { BRAA            X8, X16 }
}

uint64_t dispatch thunk of OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_259_5();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_148_10();
  v12 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v14 = *(v13 + 232);
  v29 = v13 + 232;
  v30 = v14 + *v14;
  v15 = v14[1];
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_63(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_84(v17);
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_198();

  return v25(v19, v20, v21, v22, v23, v24, v25, v26, a9, v29, v30, a12);
}

uint64_t dispatch thunk of OmniSearchService.preflightChecks(options:requestedProperties:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  return (*(v3 + 240))();
}

uint64_t dispatch thunk of OmniSearchService.localSearch(query:typeIdentifiers:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_52_23();
  v0 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v2 = *(v1 + 248);
  v16 = v1 + 248;
  v17 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_63(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_84(v5);
  OUTLINED_FUNCTION_60_14();
  OUTLINED_FUNCTION_61_18();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
}

uint64_t dispatch thunk of OmniSearchService.globalSearch(query:sources:options:)()
{
  OUTLINED_FUNCTION_72();
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v10 = (*(v3 + 256) + **(v3 + 256));
  v4 = *(*(v3 + 256) + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_63(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_84(v6);
  v8 = OUTLINED_FUNCTION_116_1();

  return v10(v8);
}

uint64_t dispatch thunk of OmniSearchService.entitySearch(_:rewrittenQuery:allowedTypes:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_52_23();
  v0 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v15 = (v1 + 264);
  v16 = *v15 + **v15;
  v2 = *(*(v1 + 264) + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_63(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_84(v4);
  OUTLINED_FUNCTION_60_14();
  OUTLINED_FUNCTION_61_18();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t dispatch thunk of OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_226_4();
  v13 = *v12;
  v14 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v30 = (v15 + 272);
  v31 = *v30 + **v30;
  v16 = *(*(v15 + 272) + 4);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_63(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_84(v18);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_136_7();

  return v27(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31, a11, a12);
}

uint64_t dispatch thunk of OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_51_19();
  v7 = *(v6 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_11();
  *v9 = v8;

  OUTLINED_FUNCTION_201_7();

  return v10(v0, v5, v3);
}

void dispatch thunk of static OmniSearchService.parseWithMemoryCreationQU(_:originatorPID:modelType:jsonParse:personNames:petNames:locations:currentTime:)()
{
  OUTLINED_FUNCTION_133_12();
  v1 = *(v0 + 288);
  OUTLINED_FUNCTION_28_0();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_63(v5);
  *v6 = v7;
  v6[1] = dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:);
  OUTLINED_FUNCTION_85_14();
  OUTLINED_FUNCTION_15_6();

  __asm { BRAA            X8, X16 }
}

uint64_t dispatch thunk of OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_52_23();
  v0 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v15 = (v1 + 296);
  v16 = *v15 + **v15;
  v2 = *(*(v1 + 296) + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_63(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_84(v4);
  OUTLINED_FUNCTION_60_14();
  OUTLINED_FUNCTION_61_18();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t dispatch thunk of OmniSearchService.createASContext(mode:assistantLocale:ecrResults:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_52_23();
  v1 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v15 = (v2 + 320);
  v16 = *v15 + **v15;
  v3 = *(*(v2 + 320) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_60_14();
  OUTLINED_FUNCTION_61_18();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t dispatch thunk of OmniSearchService.checkForOverride(query:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  return (*(v3 + 368))();
}

uint64_t partial apply for closure #1 in closure #2 in OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySSGs5NeverOGMd, &_sScCySaySSGs5NeverOGMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 80);
  v9 = OUTLINED_FUNCTION_116_0();

  return closure #1 in closure #2 in OmniSearchService.handlePhotosResultsForEval(query:typeIdentifiers:isExpectingAnswer:results:ecrResults:)(v9, v10, a3, a4);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t outlined consume of (SearchType, SearchServiceResult)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_159();
  v1 = type metadata accessor for UserQuery();
  OUTLINED_FUNCTION_21(v1);
  v4 = (((*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v0 + v4);
  v8 = v0[4];
  v9 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_143(v10);
  *v11 = v12;
  v11[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_63_14();

  return closure #1 in closure #1 in OmniSearchService.searchItems(query:searchServices:searchSources:allowedTypes:searchOptions:)(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t outlined consume of ResultsDialog.RenderOption(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t outlined init with take of UserQuery(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t outlined init with copy of UserQuery(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t outlined destroy of UserQuery()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_9_51(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
  v4 = *(*(v2 - 104) + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_32(uint64_t a1)
{
  *(a1 + 8) = OmniSearchService.composeAnswer(query:requestedProperties:results:options:runAnswerSynthesis:ecrResults:locale:);
  v2 = v1[73];
  v3 = v1[72];
  v5 = v1[59];
  result = v1[60];
  v6 = v1[53];
  v7 = v1[51];
  return result;
}

uint64_t OUTLINED_FUNCTION_40_26(uint64_t result)
{
  *(result + 8) = OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:);
  v2 = *(v1 + 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_46_25()
{
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[120];
  v5 = v0[117];
  v6 = v0[116];
  v7 = v0[115];
}

uint64_t OUTLINED_FUNCTION_53_20()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

void OUTLINED_FUNCTION_54_26()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_56_17()
{
  v2 = v0[781];
  v3 = v0[780];
  v4 = v0[777];
  v5 = v0[774];
  v6 = v0[773];
  v7 = v0[772];
  v8 = v0[771];
  v9 = v0[770];
  v10 = v0[768];
  v11 = v0[767];
  v13 = v0[766];
}

uint64_t OUTLINED_FUNCTION_57_19()
{
  result = v0[777];
  v2 = v0[776];
  v3 = v0[775];
  return result;
}

void *OUTLINED_FUNCTION_70_15(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, v1);
  v4 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_77_16()
{
  v6 = *(v4 - 96);

  return outlined init with copy of SpotlightRankingItem?(v6, v3 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_83_15()
{
  result = v0[777];
  v2 = v0[775];
  v3 = *(v0[776] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_88_11()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_98_9(uint64_t a1, uint64_t a2)
{
  v6 = *(v4 - 96);

  return outlined init with copy of SpotlightRankingItem?(v6, a2, v2, v3);
}

void OUTLINED_FUNCTION_101_10()
{
  v1 = v0[773];
  v2 = v0[772];
  v3 = v0[771];
  v4 = v0[770];
  v5 = v0[768];
}

uint64_t OUTLINED_FUNCTION_102_11@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return outlined init with copy of SpotlightRankingItem?(a1, v5, v2, v3);
}

uint64_t OUTLINED_FUNCTION_111_9@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + a1;
  *v4 = *(v1 + 6376);
  *(v4 + 4) = *(v1 + 6380);

  return outlined destroy of OmniSearchOptions(v1 + v2);
}

uint64_t OUTLINED_FUNCTION_113_12()
{
  result = v0[781];
  v2 = v0[780];
  v3 = v0[777];
  v4 = v0[774];
  v5 = v0[773];
  v6 = v0[772];
  v7 = v0[771];
  v8 = v0;
  v9 = v0[770];
  v10 = v8[768];
  v11 = v8[767];
  v12 = v8[766];
  return result;
}

uint64_t OUTLINED_FUNCTION_115_12(uint64_t a1)
{

  return outlined init with copy of SpotlightRankingItem?(a1, v3, v1, v2);
}

void *OUTLINED_FUNCTION_122_10()
{

  return memcpy((v0 + v1), (v0 + 5864), 0x62uLL);
}

uint64_t OUTLINED_FUNCTION_125_11()
{

  return outlined destroy of UserQuery();
}

uint64_t OUTLINED_FUNCTION_129_13()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_130_12()
{
  v2 = v0[765];
  v0[761] = 1;

  return memcpy(v0 + 691, v0 + 733, 0x62uLL);
}

uint64_t OUTLINED_FUNCTION_131_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_135_9(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
  v5 = *v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_144_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_146_8(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of SpotlightRankingItem?(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_155_9()
{
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 96) = 0;
  *(v0 + 120) = 0;
  v2 = *v1;
}

void OUTLINED_FUNCTION_165_6(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_176_7()
{
  v1 = v0[75];
  v2 = v0[74];
  v4 = v0[55];
  v3 = v0[56];
}

uint64_t OUTLINED_FUNCTION_185_6()
{
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[120];
  v5 = v0[117];
  v6 = v0[116];
  v7 = v0[115];
}

uint64_t OUTLINED_FUNCTION_186_5()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_188_8()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_196_6()
{
  v1 = v0[777];
  v2 = v0[774];
  v3 = v0[765];
  v4 = v0[764];
  v5 = v0[763];
}

void *OUTLINED_FUNCTION_204_8(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x69uLL);
}

uint64_t OUTLINED_FUNCTION_208_4()
{
  v3 = *(v1 + 82);
  v4 = *(v0 + 6264);
  v5 = *(v0 + 6192);
}

void *OUTLINED_FUNCTION_209_4()
{

  return memcpy((v0 + v1), (v0 + v2), 0x62uLL);
}

uint64_t OUTLINED_FUNCTION_211_4()
{
  v3 = *(v1 + *(v0 + 32) + 8);
}

uint64_t OUTLINED_FUNCTION_212_5()
{
  v3 = v1 + *(v0 + 28);

  return type metadata accessor for StructuredQueryEntity(0);
}

void *OUTLINED_FUNCTION_213_5(void *a1)
{

  return memcpy(a1, (v1 + 5864), 0x62uLL);
}

uint64_t OUTLINED_FUNCTION_214_4()
{
  v2 = *(v0 + 472);
  v3 = *(v0 + 424);

  return type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
}

uint64_t OUTLINED_FUNCTION_215_2@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return outlined init with copy of SpotlightRankingItem?(a1, v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_216_5@<X0>(unsigned int *a1@<X8>)
{
  v3 = *(v1 + 472);
  v4 = *a1;

  return type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
}

void *OUTLINED_FUNCTION_222_5(void *a1)
{

  return memcpy(a1, (v1 + 1264), 0x138uLL);
}

uint64_t OUTLINED_FUNCTION_246_3(uint64_t a1, uint64_t a2)
{
  outlined consume of OmniSearchResponseRenderOption(a1, a2);

  return outlined consume of OmniSearchResponseRenderOption(0, 3);
}

void OUTLINED_FUNCTION_254_3(char a1@<W8>)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = v1;
  *(v2 + 48) = 0;
}

uint64_t OUTLINED_FUNCTION_261_3()
{
  v2 = v0[120];
  v3 = v0[117];
  v4 = v0[116];
  v5 = v0[115];
}

uint64_t OUTLINED_FUNCTION_262_3()
{
  v2 = v0[120];
  v3 = v0[117];
  v4 = v0[116];
  v5 = v0[115];
}

uint64_t OUTLINED_FUNCTION_264_4()
{
  *(v1 + 6344) = 0;
  *(v1 + 6336) = v0;
  v3 = *(v0 + 16);
}

void OUTLINED_FUNCTION_265_4(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

uint64_t OUTLINED_FUNCTION_266_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_267_1@<X0>(uint64_t a1@<X8>)
{

  return outlined init with copy of SpotlightRankingItem?(v4, v3 + a1, v1, v2);
}

id OUTLINED_FUNCTION_271_2(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t OmniSearchServiceImp.__allocating_init(omniSearchService:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_1();
  v2 = swift_allocObject();
  OmniSearchServiceImp.init(omniSearchService:)(a1);
  return v2;
}

uint64_t OmniSearchServiceImp.init(omniSearchService:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  if (one-time initialization token for server != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.server);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_172();
    *v7 = 0;
    _os_log_impl(&dword_25D85C000, v5, v6, "init()", v7, 2u);
    MEMORY[0x25F8A1050](v7, -1, -1);
  }

  *(v2 + 24) = a1;
  return v2;
}

uint64_t OmniSearchServiceImp.__allocating_init()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static OmniSearchService.shared;
  OUTLINED_FUNCTION_1_1();
  v1 = swift_allocObject();
  OmniSearchServiceImp.init(omniSearchService:)(v0);
  return v1;
}

uint64_t OmniSearchServiceImp.activate()()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    result = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0xB8))();
    *(v0 + 16) = 1;
  }

  return result;
}

uint64_t OmniSearchServiceImp.deactivate()()
{
  if (*(v0 + 16) == 1)
  {
    result = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0xC0))();
    *(v0 + 16) = 0;
  }

  return result;
}

uint64_t OmniSearchServiceImp.search(_:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v3[145] = v2;
  v3[144] = a2;
  v3[143] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR) - 8) + 64) + 15;
  v3[146] = swift_task_alloc();
  v5 = type metadata accessor for UserQuery();
  v3[147] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();

  return MEMORY[0x2822009F8](OmniSearchServiceImp.search(_:progressReporter:), 0, 0);
}

uint64_t OmniSearchServiceImp.search(_:progressReporter:)()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1152);
  v5 = *(v0 + 1144);
  v6 = type metadata accessor for LLMSearchQuery(0);
  v7 = v6[8];
  memcpy((v0 + 16), v5 + v7, 0x69uLL);
  memcpy((v0 + 128), v5 + v7, 0x69uLL);
  outlined init with copy of OmniSearchOptions(v0 + 16, v0 + 240);
  OmniSearchServiceImp.enrichOptions(options:progressReporter:)(v0 + 128, v4);
  *(v0 + 232) = 1;
  v8 = *(v3 + 24);
  v10 = *v5;
  v9 = v5[1];
  v12 = v5[2];
  v11 = v5[3];
  outlined init with copy of StructuredQueryEntity?(v5 + v6[6], v2);
  *v1 = v10;
  v1[1] = v9;
  if (!v11)
  {
    goto LABEL_6;
  }

  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = *(v0 + 1184);
    *(v14 + 16) = v12;
    *(v14 + 24) = v11;
  }

  else
  {
LABEL_6:
    v15 = *(v0 + 1184);
    *(v15 + 16) = v10;
    *(v15 + 24) = v9;
  }

  v16 = *(v0 + 1192);
  v17 = *(v0 + 1184);
  v18 = *(v0 + 1176);
  v19 = *(v0 + 1168);
  v20 = *(v0 + 1144);
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  outlined init with copy of StructuredQueryEntity?(v19, v17 + v18[7]);
  v21 = (v17 + v18[8]);
  *v21 = 0;
  v21[1] = 0;
  v22 = v18[9];

  UtteranceNormalizer.init(locale:)();
  outlined destroy of StructuredQueryEntity?(v19);
  outlined init with take of LLMSearchQuery(v17, v16, type metadata accessor for UserQuery);
  v23 = *(v20 + v6[7]);
  OUTLINED_FUNCTION_11_54((v0 + 352));
  OUTLINED_FUNCTION_11_54((v0 + 464));
  *(v0 + 1136) = 3;
  v24 = *((*MEMORY[0x277D85000] & *v8) + 0xE8);
  outlined init with copy of OmniSearchOptions(v0 + 352, v0 + 576);
  v31 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  *(v0 + 1200) = v26;
  *v26 = v0;
  v26[1] = OmniSearchServiceImp.search(_:progressReporter:);
  v27 = *(v0 + 1192);
  v28 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];

  return v31(v27, v23, v28, v0 + 1136, v0 + 464, v29);
}

{
  v1 = v0[149];
  v2 = v0[148];
  v3 = v0[146];
  OUTLINED_FUNCTION_11_54(v0 + 114);
  outlined destroy of OmniSearchOptions((v0 + 114));

  v4 = v0[1];
  v5 = v0[152];

  return v4(v5);
}

{
  v1 = v0[149];
  v2 = v0[148];
  v3 = v0[146];
  OUTLINED_FUNCTION_11_54(v0 + 86);
  outlined destroy of OmniSearchOptions((v0 + 86));

  OUTLINED_FUNCTION_127();
  v5 = v0[151];

  return v4();
}

uint64_t OmniSearchServiceImp.search(_:progressReporter:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = v4[150];
  *v6 = *v2;
  v5[151] = v1;

  v8 = v4[149];
  if (v1)
  {
    memcpy(v5 + 100, v5 + 58, 0x69uLL);
    outlined destroy of OmniSearchOptions((v5 + 100));
    OUTLINED_FUNCTION_2_76();
    v9 = OmniSearchServiceImp.search(_:progressReporter:);
  }

  else
  {
    v5[152] = a1;
    memcpy(v5 + 128, v5 + 58, 0x69uLL);
    outlined destroy of OmniSearchOptions((v5 + 128));
    OUTLINED_FUNCTION_2_76();
    v9 = OmniSearchServiceImp.search(_:progressReporter:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void OmniSearchServiceImp.enrichOptions(options:progressReporter:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = lazy protocol witness table accessor for type SearchToolProgressReporterXPC and conformance SearchToolProgressReporterXPC(&lazy protocol witness table cache variable for type SearchToolProgressReporterXPC and conformance SearchToolProgressReporterXPC, type metadata accessor for SearchToolProgressReporterXPC);
    v5 = *(a1 + 80);

    swift_unknownObjectRelease();
    *(a1 + 80) = a2;
    *(a1 + 88) = v4;
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logging.search);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25D85C000, oslog, v7, "No progress reporter provided.", v8, 2u);
      MEMORY[0x25F8A1050](v8, -1, -1);
    }
  }
}

uint64_t OmniSearchServiceImp.deinit()
{
  OmniSearchServiceImp.deactivate()();

  return v0;
}

uint64_t OmniSearchServiceImp.__deallocating_deinit()
{
  OmniSearchServiceImp.deactivate()();

  OUTLINED_FUNCTION_1_1();

  return swift_deallocClassInstance();
}

uint64_t OmniSearchServiceImp.handle(_:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for LLMSearchQuery(0);
  v4[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v7 = *(*(type metadata accessor for OmniSearchXPCRequest(0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](OmniSearchServiceImp.handle(_:progressReporter:), 0, 0);
}

uint64_t OmniSearchServiceImp.handle(_:progressReporter:)()
{
  v1 = v0[12];
  v2 = v0[9];
  outlined init with copy of OmniSearchXPCRequest(v0[6], v1, type metadata accessor for OmniSearchXPCRequest);
  switch(__swift_getEnumTagSinglePayload(v1, 3, v2))
  {
    case 1u:
      if (one-time initialization token for server != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logging.server);
      v29 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_5_9();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_172();
        *v31 = 0;
        _os_log_impl(&dword_25D85C000, v29, v2, "preheat()", v31, 2u);
        OUTLINED_FUNCTION_2_8();
      }

      v32 = v0[8];
      v21 = v0[5];

      (*((*MEMORY[0x277D85000] & **(v32 + 24)) + 0xC8))();
      goto LABEL_21;
    case 2u:
      if (one-time initialization token for server != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logging.server);
      v16 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_5_9();
      if (os_log_type_enabled(v16, v17))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_9_8(&dword_25D85C000, v18, v19, "activate()");
        OUTLINED_FUNCTION_2_8();
      }

      v20 = v0[8];
      v21 = v0[5];

      OmniSearchServiceImp.activate()();
      goto LABEL_21;
    case 3u:
      if (one-time initialization token for server != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logging.server);
      v23 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_5_9();
      if (os_log_type_enabled(v23, v24))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_9_8(&dword_25D85C000, v25, v26, "deactivate()");
        OUTLINED_FUNCTION_2_8();
      }

      v27 = v0[8];
      v21 = v0[5];

      OmniSearchServiceImp.deactivate()();
LABEL_21:
      *v21 = 0;
      v21[1] = 0;
      v21[2] = 0;
      OUTLINED_FUNCTION_4_64();
      *(v33 + 24) = 1;

      OUTLINED_FUNCTION_127();

      result = v34();
      break;
    default:
      outlined init with take of LLMSearchQuery(v0[12], v0[11], type metadata accessor for LLMSearchQuery);
      if (one-time initialization token for server != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v3 = v0[10];
      v4 = v0[11];
      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logging.server);
      outlined init with copy of OmniSearchXPCRequest(v4, v3, type metadata accessor for LLMSearchQuery);
      v6 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_5_9();
      v8 = os_log_type_enabled(v6, v7);
      v9 = v0[10];
      if (v8)
      {
        v10 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v10 = 136315138;
        v11 = *v9;
        v12 = v9[1];

        OUTLINED_FUNCTION_0_99();
        outlined destroy of LLMSearchQuery(v9, v13);
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v10 + 4) = v14;
        _os_log_impl(&dword_25D85C000, v6, v3, "search(%s)", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x25F8A1050](v42, -1, -1);
        OUTLINED_FUNCTION_2_8();
      }

      else
      {

        OUTLINED_FUNCTION_0_99();
        outlined destroy of LLMSearchQuery(v9, v36);
      }

      v37 = v0[8];
      OmniSearchServiceImp.activate()();
      v38 = swift_task_alloc();
      v0[13] = v38;
      *v38 = v0;
      v38[1] = OmniSearchServiceImp.handle(_:progressReporter:);
      v39 = v0[11];
      v40 = v0[7];
      v41 = v0[8];

      result = OmniSearchServiceImp.search(_:progressReporter:)(v39, v40);
      break;
  }

  return result;
}

{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[5];
  OUTLINED_FUNCTION_0_99();
  outlined destroy of LLMSearchQuery(v4, v5);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = v1;
  OUTLINED_FUNCTION_4_64();
  *(v6 + 24) = 1;

  OUTLINED_FUNCTION_127();

  return v7();
}

{
  v1 = v0[14];
  v2 = v0[11];
  v0[2] = 0;
  v3 = v0[5];
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();

  v4 = v0[2];
  v5 = v0[3];
  OUTLINED_FUNCTION_0_99();
  outlined destroy of LLMSearchQuery(v2, v6);
  *v3 = 1;
  v3[1] = v4;
  v3[2] = v5;
  OUTLINED_FUNCTION_4_64();
  *(v7 + 24) = 0;

  OUTLINED_FUNCTION_127();

  return v8();
}

uint64_t OmniSearchServiceImp.handle(_:progressReporter:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v4 + 112) = v1;

  if (v1)
  {
    v8 = OmniSearchServiceImp.handle(_:progressReporter:);
  }

  else
  {
    *(v4 + 120) = a1;
    v8 = OmniSearchServiceImp.handle(_:progressReporter:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t protocol witness for ServiceProtocol.init() in conformance OmniSearchServiceImp@<X0>(uint64_t *a1@<X8>)
{
  result = OmniSearchServiceImp.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance OmniSearchServiceImp(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *a3;
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance AnswerSynthesisServiceImp;

  return OmniSearchServiceImp.handle(_:progressReporter:)(a1, a2, v7);
}

uint64_t outlined init with copy of OmniSearchXPCRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse()
{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse);
  }

  return result;
}

uint64_t outlined init with take of LLMSearchQuery(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t outlined destroy of LLMSearchQuery(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SearchToolProgressReporterXPC and conformance SearchToolProgressReporterXPC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_76()
{

  return outlined destroy of LLMSearchQuery(v0, type metadata accessor for UserQuery);
}

uint64_t OUTLINED_FUNCTION_4_64()
{
  v2 = v0[11];
  result = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  return result;
}

void *OUTLINED_FUNCTION_11_54(void *a1)
{

  return memcpy(a1, (v1 + 128), 0x69uLL);
}

void *OmniSearchProgressUpdate.__allocating_init(totalUnitCount:completedUnitCount:localizedDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_40();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t XPCServiceError.ErrorType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245)
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

uint64_t XPCServiceError.ErrorType.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0x5264696C61766E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCServiceError.ErrorType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = XPCServiceError.ErrorType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCServiceError.ErrorType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCServiceError.ErrorType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCServiceError.ErrorType.InternalErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCServiceError.ErrorType.InternalErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void XPCServiceError.ErrorType.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO08InternalG10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO08InternalG10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_49_3();
  v32 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO24InvalidRequestCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO24InvalidRequestCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v11 = OUTLINED_FUNCTION_14(v10);
  v31[0] = v12;
  v31[1] = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_64_5();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v21);
  v23 = v31 - v22;
  v24 = *v0;
  v25 = v2[4];
  OUTLINED_FUNCTION_218(v2, v2[3]);
  lazy protocol witness table accessor for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = (v18 + 8);
  if (v24)
  {
    lazy protocol witness table accessor for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys();
    v27 = v32;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v27, v34);
  }

  else
  {
    lazy protocol witness table accessor for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v28 = OUTLINED_FUNCTION_34_33();
    v30(v28, v29);
  }

  (*v26)(v23, v16);
  OUTLINED_FUNCTION_61_2();
}

Swift::Int XPCServiceError.ErrorType.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_155_3();
  MEMORY[0x25F8A0680](v1);
  return Hasher._finalize()();
}

void XPCServiceError.ErrorType.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v5 = v4;
  v45 = v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO08InternalG10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO08InternalG10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v47);
  v44 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO24InvalidRequestCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO24InvalidRequestCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v11);
  v43 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_9();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV0G4TypeO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v16);
  v46 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19_7();
  v21 = v5[4];
  OUTLINED_FUNCTION_218(v5, v5[3]);
  lazy protocol witness table accessor for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys();
  OUTLINED_FUNCTION_86_6();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_8;
  }

  v48 = v5;
  OUTLINED_FUNCTION_30_30();
  v22 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLO_Tt1g5(v22, 0);
  if (v24 == v23 >> 1)
  {
LABEL_7:
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v39 = &type metadata for XPCServiceError.ErrorType;
    OUTLINED_FUNCTION_30_30();
    KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_33_6();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v46 + 8))(v2, v16);
    v5 = v48;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
LABEL_9:
    OUTLINED_FUNCTION_61_2();
    return;
  }

  OUTLINED_FUNCTION_24_32();
  if (v28 < (v27 >> 1))
  {
    v29 = *(v26 + v25);
    specialized ArraySlice.subscript.getter(v25 + 1);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      if (v29)
      {
        lazy protocol witness table accessor for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys();
        v34 = v0;
        v35 = v16;
        OUTLINED_FUNCTION_12_7();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v45;
        swift_unknownObjectRelease();
        (*(v44 + 8))(v34, v47);
      }

      else
      {
        lazy protocol witness table accessor for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys();
        v35 = v16;
        OUTLINED_FUNCTION_12_7();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v45;
        swift_unknownObjectRelease();
        (*(v43 + 8))(v3, v11);
      }

      v41 = OUTLINED_FUNCTION_33_33();
      v42(v41, v35);
      *v36 = v29;
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t XPCServiceError.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_94();
}

uint64_t XPCServiceError.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
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

uint64_t XPCServiceError.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCServiceError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = XPCServiceError.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCServiceError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCServiceError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void XPCServiceError.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15XPCServiceErrorV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  v12 = *v0;
  v13 = *(v0 + 1);
  v15[0] = *(v0 + 2);
  v15[1] = v13;
  v14 = v3[4];
  OUTLINED_FUNCTION_218(v3, v3[3]);
  lazy protocol witness table accessor for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_29_6();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_61_2();
}

void XPCServiceError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_60_1();
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15XPCServiceErrorV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19_7();
  v25 = v16[4];
  OUTLINED_FUNCTION_218(v16, v16[3]);
  lazy protocol witness table accessor for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys();
  OUTLINED_FUNCTION_86_6();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    lazy protocol witness table accessor for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType();
    OUTLINED_FUNCTION_12_7();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_29_6();
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v27;
    (*(v21 + 8))(v14, v19);
    *v18 = a13;
    *(v18 + 8) = v26;
    *(v18 + 16) = v28;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  OUTLINED_FUNCTION_61_2();
}

void *LLMSearchQuery.init(utterance:searchQuery:structuredSearchQuery:typeIdentifiers:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void *a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  v12 = type metadata accessor for LLMSearchQuery(0);
  outlined init with take of StructuredQueryEntity?(a5, a8 + v12[6]);
  *(a8 + v12[7]) = a6;
  v13 = a8 + v12[8];

  return memcpy(v13, a7, 0x69uLL);
}

uint64_t LLMSearchQuery.utterance.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMSearchQuery.searchQuery.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t LLMSearchQuery.structuredSearchQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LLMSearchQuery(0) + 24);

  return outlined init with copy of StructuredQueryEntity?(v3, a1);
}

uint64_t LLMSearchQuery.typeIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for LLMSearchQuery(0) + 28));
}

uint64_t LLMSearchQuery.options.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for LLMSearchQuery(0) + 32);
  memcpy(__dst, (v1 + v3), 0x69uLL);
  memcpy(a1, (v1 + v3), 0x69uLL);
  return outlined init with copy of OmniSearchOptions(__dst, &v5);
}

uint64_t LLMSearchQuery.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7551686372616573 && a2 == 0xEB00000000797265;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x800000025DBF9E30 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E65644965707974 && a2 == 0xEF73726569666974;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t LLMSearchQuery.CodingKeys.stringValue.getter(char a1)
{
  result = 0x636E617265747475;
  switch(a1)
  {
    case 1:
      result = 0x7551686372616573;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6E65644965707974;
      break;
    case 4:
      result = 0x736E6F6974706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LLMSearchQuery.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LLMSearchQuery.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LLMSearchQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LLMSearchQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void LLMSearchQuery.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch14LLMSearchQueryV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch14LLMSearchQueryV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v24[-v11 - 8];
  v13 = v4[4];
  OUTLINED_FUNCTION_218(v4, v4[3]);
  lazy protocol witness table accessor for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v2;
  v15 = v2[1];
  v26[0] = 0;
  OUTLINED_FUNCTION_27_26();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    (*(v7 + 8))(v12, v5);
  }

  else
  {
    v16 = v2[2];
    v17 = v2[3];
    v26[0] = 1;
    OUTLINED_FUNCTION_27_26();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = type metadata accessor for LLMSearchQuery(0);
    v19 = v18[6];
    v26[0] = 2;
    type metadata accessor for StructuredQueryEntity(0);
    OUTLINED_FUNCTION_7_54();
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(v20, 255, v21);
    OUTLINED_FUNCTION_27_26();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = *(v2 + v18[7]);
    v26[111] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B20EntityTypeIdentifierVGMd, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMR);
    lazy protocol witness table accessor for type [SearchEntityTypeIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [SearchEntityTypeIdentifier] and conformance <A> [A], lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
    OUTLINED_FUNCTION_27_26();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v18[8];
    memcpy(v26, v2 + v22, 0x69uLL);
    memcpy(v25, v2 + v22, sizeof(v25));
    v24[111] = 4;
    outlined init with copy of OmniSearchOptions(v26, v24);
    lazy protocol witness table accessor for type OmniSearchOptions and conformance OmniSearchOptions();
    OUTLINED_FUNCTION_27_26();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v24, v25, 0x69uLL);
    outlined destroy of OmniSearchOptions(v24);
    (*(v7 + 8))(v12, v5);
  }

  OUTLINED_FUNCTION_61_2();
}

void LLMSearchQuery.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = v2;
  v25 = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_64_5();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch14LLMSearchQueryV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch14LLMSearchQueryV10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v8 = OUTLINED_FUNCTION_14(v7);
  v26 = v9;
  v27 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23_1();
  v13 = type metadata accessor for LLMSearchQuery(0);
  v14 = OUTLINED_FUNCTION_17(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v19 = (v18 - v17);
  v20 = v3[4];
  OUTLINED_FUNCTION_218(v3, v3[3]);
  lazy protocol witness table accessor for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    *v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v19[1] = v21;
    v19[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19[3] = v22;
    type metadata accessor for StructuredQueryEntity(0);
    LOBYTE(v28[0]) = 2;
    OUTLINED_FUNCTION_7_54();
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(v23, 255, v24);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of StructuredQueryEntity?(v1, v19 + v13[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B20EntityTypeIdentifierVGMd, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMR);
    lazy protocol witness table accessor for type [SearchEntityTypeIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [SearchEntityTypeIdentifier] and conformance <A> [A], lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v19 + v13[7]) = v28[0];
    lazy protocol witness table accessor for type OmniSearchOptions and conformance OmniSearchOptions();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v26 + 8))(0, v27);
    memcpy(v19 + v13[8], v28, 0x69uLL);
    outlined init with copy of LLMSearchQuery(v19, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    outlined destroy of LLMSearchQuery(v19);
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t OmniSearchXPCRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616568657270 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574617669746361 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6176697463616564 && a2 == 0xEA00000000006574;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x686372616573 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t OmniSearchXPCRequest.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74616568657270;
  switch(a1)
  {
    case 1:
      result = 0x6574617669746361;
      break;
    case 2:
      result = 0x6176697463616564;
      break;
    case 3:
      result = 0x686372616573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCRequest.ActivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCRequest.ActivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OmniSearchXPCRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OmniSearchXPCRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCRequest.DeactivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCRequest.DeactivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCRequest.PreheatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCRequest.PreheatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCRequest.SearchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCRequest.SearchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void OmniSearchXPCRequest.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v72 = v1;
  v73 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO0E10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO0E10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  v70 = v7;
  v71 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_3();
  v69 = v11;
  v12 = type metadata accessor for LLMSearchQuery(0);
  v13 = OUTLINED_FUNCTION_17(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  v68 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO20DeactivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO20DeactivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v19 = OUTLINED_FUNCTION_14(v18);
  v66 = v20;
  v67 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_49_3();
  v65 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO18ActivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO18ActivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v26 = OUTLINED_FUNCTION_14(v25);
  v63 = v27;
  v64 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_49_3();
  v62 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO17PreheatCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO17PreheatCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v33 = OUTLINED_FUNCTION_14(v32);
  v60 = v34;
  v61 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_23_1();
  v38 = type metadata accessor for OmniSearchXPCRequest(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  OUTLINED_FUNCTION_36();
  v42 = v41 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE10XPCRequestO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v43);
  v45 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v48);
  v50 = &v60 - v49;
  v51 = v4[4];
  OUTLINED_FUNCTION_218(v4, v4[3]);
  lazy protocol witness table accessor for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_1_86();
  outlined init with copy of LLMSearchQuery(v72, v42);
  switch(__swift_getEnumTagSinglePayload(v42, 3, v12))
  {
    case 1u:
      lazy protocol witness table accessor for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys();
      OUTLINED_FUNCTION_15_8();
      v59 = v60;
      v58 = v61;
      goto LABEL_6;
    case 2u:
      OUTLINED_FUNCTION_29_6();
      lazy protocol witness table accessor for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys();
      v0 = v62;
      OUTLINED_FUNCTION_15_8();
      v59 = v63;
      v58 = v64;
      goto LABEL_6;
    case 3u:
      lazy protocol witness table accessor for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys();
      v0 = v65;
      OUTLINED_FUNCTION_15_8();
      v59 = v66;
      v58 = v67;
LABEL_6:
      (*(v59 + 8))(v0, v58);
      (*(v45 + 8))(v50, v43);
      break;
    default:
      v52 = v42;
      v53 = v68;
      _s10OmniSearch14LLMSearchQueryVWObTm_0(v52, v68);
      lazy protocol witness table accessor for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys();
      v54 = v69;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_56();
      _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(v55, 255, v56);
      v57 = v71;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v70 + 8))(v54, v57);
      outlined destroy of LLMSearchQuery(v53);
      (*(v45 + 8))(v50, v43);
      break;
  }

  OUTLINED_FUNCTION_61_2();
}

void OmniSearchXPCRequest.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v112 = v0;
  v2 = v1;
  v106 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO0E10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO0E10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v5 = OUTLINED_FUNCTION_14(v4);
  v108 = v6;
  v109 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_49_3();
  v107 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO20DeactivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO20DeactivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v12 = OUTLINED_FUNCTION_14(v11);
  v102 = v13;
  v103 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_49_3();
  v111 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO18ActivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO18ActivateCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v19 = OUTLINED_FUNCTION_14(v18);
  v100 = v20;
  v101 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_49_3();
  v105 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO17PreheatCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO17PreheatCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v26 = OUTLINED_FUNCTION_14(v25);
  v98 = v27;
  v99 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_49_3();
  v104 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE10XPCRequestO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v32);
  v110 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v36);
  v38 = v94 - v37;
  v39 = type metadata accessor for OmniSearchXPCRequest(0);
  v40 = OUTLINED_FUNCTION_17(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = v94 - v46;
  v48 = v2[4];
  OUTLINED_FUNCTION_218(v2, v2[3]);
  lazy protocol witness table accessor for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys();
  v49 = v112;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v49)
  {
    goto LABEL_10;
  }

  v50 = v39;
  v96 = v44;
  v97 = v47;
  v51 = v111;
  v112 = v2;
  v52 = v38;
  v53 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLO_Tt1g5(v53, 0);
  v55 = v32;
  if (v56 == v54 >> 1)
  {
    v57 = v39;
LABEL_9:
    v78 = type metadata accessor for DecodingError();
    swift_allocError();
    v80 = v79;
    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v80 = v57;
    KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_33_6();
    (*(*(v78 - 8) + 104))(v80, *MEMORY[0x277D84160], v78);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v110 + 8))(v52, v55);
    v2 = v112;
LABEL_10:
    v82 = v2;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    OUTLINED_FUNCTION_61_2();
    return;
  }

  OUTLINED_FUNCTION_24_32();
  if (v61 < (v60 >> 1))
  {
    v62 = 0;
    v63 = v38;
    v57 = v50;
    v95 = *(v59 + v58);
    v64 = specialized ArraySlice.subscript.getter(v58 + 1);
    v66 = v65;
    v68 = v67;
    swift_unknownObjectRelease();
    if (v66 == v68 >> 1)
    {
      v94[1] = v64;
      v70 = v108;
      v69 = v109;
      v71 = v107;
      switch(v95)
      {
        case 1:
          OUTLINED_FUNCTION_29_6();
          lazy protocol witness table accessor for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys();
          v89 = v105;
          OUTLINED_FUNCTION_12_7();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v100 + 8))(v89, v101);
          v90 = OUTLINED_FUNCTION_3_9();
          v91(v90);
          type metadata accessor for LLMSearchQuery(0);
          v75 = OUTLINED_FUNCTION_21_8();
          v77 = 2;
          goto LABEL_15;
        case 2:
          lazy protocol witness table accessor for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys();
          OUTLINED_FUNCTION_12_7();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v102 + 8))(v51, v103);
          v83 = OUTLINED_FUNCTION_3_9();
          v84(v83);
          type metadata accessor for LLMSearchQuery(0);
          v75 = OUTLINED_FUNCTION_21_8();
          v77 = 3;
          goto LABEL_15;
        case 3:
          lazy protocol witness table accessor for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys();
          OUTLINED_FUNCTION_12_7();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v85 = type metadata accessor for LLMSearchQuery(0);
          OUTLINED_FUNCTION_5_56();
          _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(v86, 255, v87);
          v88 = v96;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          (*(v70 + 8))(v71, v69);
          v92 = OUTLINED_FUNCTION_33_33();
          v93(v92, v55);
          __swift_storeEnumTagSinglePayload(v88, 0, 3, v85);
          OUTLINED_FUNCTION_1_86();
          v62 = v97;
          _s10OmniSearch14LLMSearchQueryVWObTm_0(v88, v97);
          goto LABEL_16;
        default:
          lazy protocol witness table accessor for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys();
          v72 = v104;
          OUTLINED_FUNCTION_12_7();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v98 + 8))(v72, v99);
          v73 = OUTLINED_FUNCTION_3_9();
          v74(v73);
          type metadata accessor for LLMSearchQuery(0);
          v75 = OUTLINED_FUNCTION_21_8();
          v77 = 1;
LABEL_15:
          __swift_storeEnumTagSinglePayload(v75, v77, 3, v76);
LABEL_16:
          OUTLINED_FUNCTION_1_86();
          _s10OmniSearch14LLMSearchQueryVWObTm_0(v62, v106);
          v82 = v112;
          break;
      }

      goto LABEL_11;
    }

    v52 = v63;
    goto LABEL_9;
  }

  __break(1u);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCServiceError.ErrorType.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCResponse.FailureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCResponse.FailureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchXPCResponse.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchXPCResponse.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void OmniSearchXPCResponse.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE11XPCResponseO17SuccessCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE11XPCResponseO17SuccessCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  v30 = v7;
  v31 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_9();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE11XPCResponseO17FailureCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE11XPCResponseO17FailureCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v29 = OUTLINED_FUNCTION_14(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_64_5();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE11XPCResponseO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE11XPCResponseO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v33);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19_7();
  v32 = *v0;
  v27 = v0[2];
  v28 = v0[1];
  v20 = *(v0 + 24);
  v21 = v4[4];
  OUTLINED_FUNCTION_218(v4, v4[3]);
  lazy protocol witness table accessor for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys();
  OUTLINED_FUNCTION_86_6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v20)
  {
    lazy protocol witness table accessor for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys();
    v22 = v33;
    OUTLINED_FUNCTION_12_7();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    type metadata accessor for OmniSearchResponse();
    OUTLINED_FUNCTION_6_51();
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(v23, 255, v24);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(v30 + 8))(v2, v31);
  }

  else
  {
    lazy protocol witness table accessor for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys();
    v22 = v33;
    OUTLINED_FUNCTION_12_7();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = OUTLINED_FUNCTION_34_33();
    v26(v25, v29);
  }

  (*(v16 + 8))(v1, v22);
  OUTLINED_FUNCTION_61_2();
}

void OmniSearchXPCResponse.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v4 = v3;
  v51 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE11XPCResponseO17SuccessCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE11XPCResponseO17SuccessCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  v49 = OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE11XPCResponseO17FailureCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE11XPCResponseO17FailureCodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v10);
  v48 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_9();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE11XPCResponseO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE11XPCResponseO10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v15);
  v50 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19_7();
  v20 = v4[4];
  OUTLINED_FUNCTION_218(v4, v4[3]);
  lazy protocol witness table accessor for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys();
  OUTLINED_FUNCTION_86_6();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  v54 = v4;
  OUTLINED_FUNCTION_30_30();
  v21 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLO_Tt1g5(v21, 0);
  if (v23 == v22 >> 1)
  {
LABEL_7:
    v36 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v38 = &type metadata for OmniSearchXPCResponse;
    OUTLINED_FUNCTION_30_30();
    KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_33_6();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v50 + 8))(v1, v15);
    v4 = v54;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
LABEL_10:
    OUTLINED_FUNCTION_61_2();
    return;
  }

  OUTLINED_FUNCTION_24_32();
  if (v27 < (v26 >> 1))
  {
    v28 = *(v25 + v24);
    specialized ArraySlice.subscript.getter(v24 + 1);
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    if (v30 == v32 >> 1)
    {
      v33 = v28;
      if (v28)
      {
        LOBYTE(v52) = 1;
        lazy protocol witness table accessor for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys();
        OUTLINED_FUNCTION_12_7();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for OmniSearchResponse();
        OUTLINED_FUNCTION_6_51();
        _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(v34, 255, v35);
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v40 = OUTLINED_FUNCTION_34_33();
        v41(v40, v49);
        v42 = OUTLINED_FUNCTION_11_8();
        v43(v42);
        v44 = v52;
        v45 = 0uLL;
        v33 = v28;
      }

      else
      {
        lazy protocol witness table accessor for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys();
        OUTLINED_FUNCTION_12_7();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        (*(v48 + 8))(v2, v10);
        v46 = OUTLINED_FUNCTION_11_8();
        v47(v46);
        v44 = 0;
        v45 = v53;
      }

      *v51 = v44;
      *(v51 + 8) = v45;
      *(v51 + 24) = v33;
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OmniSearchProgressUpdate.__allocating_init(_:)(void *a1)
{
  OUTLINED_FUNCTION_13_40();
  v2 = swift_allocObject();
  OmniSearchProgressUpdate.init(_:)(a1);
  return v2;
}

void *OmniSearchProgressUpdate.init(_:)(void *a1)
{
  v1[2] = [a1 totalUnitCount];
  v1[3] = [a1 completedUnitCount];
  v3 = [a1 localizedDescription];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {

    v5 = 0;
    v7 = 0;
  }

  v1[4] = v5;
  v1[5] = v7;
  return v1;
}

uint64_t OmniSearchProgressUpdate.localizedDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

void *OmniSearchProgressUpdate.init(totalUnitCount:completedUnitCount:localizedDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

unint64_t lazy protocol witness table accessor for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.ErrorType.CodingKeys and conformance XPCServiceError.ErrorType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InternalErrorCodingKeys and conformance XPCServiceError.ErrorType.InternalErrorCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.ErrorType.InvalidRequestCodingKeys and conformance XPCServiceError.ErrorType.InvalidRequestCodingKeys);
  }

  return result;
}

uint64_t OmniSearchProgressUpdate.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696E556C61746F74 && a2 == 0xEE00746E756F4374;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000025DBF9DF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x800000025DBF9E10 == a2)
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

uint64_t OmniSearchProgressUpdate.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x696E556C61746F74;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000014;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LLMSearchQuery.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OmniSearchProgressUpdate.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OmniSearchProgressUpdate.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchProgressUpdate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchProgressUpdate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OmniSearchProgressUpdate.deinit()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t OmniSearchProgressUpdate.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_13_40();

  return swift_deallocClassInstance();
}

uint64_t OmniSearchProgressUpdate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE14ProgressUpdateC10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE14ProgressUpdateC10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  OUTLINED_FUNCTION_218(a1, a1[3]);
  lazy protocol witness table accessor for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v3[2];
  v19[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = v3[3];
    v19[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[4];
    v17 = v3[5];
    v19[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t OmniSearchProgressUpdate.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_13_40();
  v0 = swift_allocObject();
  OmniSearchProgressUpdate.init(from:)();
  return v0;
}

void OmniSearchProgressUpdate.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE14ProgressUpdateC10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE14ProgressUpdateC10CodingKeys33_B2200A752269E5171E058EB2E1E40C72LLOGMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_9();
  v12 = v5[4];
  OUTLINED_FUNCTION_218(v5, v5[3]);
  lazy protocol witness table accessor for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    type metadata accessor for OmniSearchProgressUpdate();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_25_32();
    *(v0 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_25_32();
    *(v0 + 24) = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_25_32();
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v8 + 8))(v2, v6);
    *(v3 + 32) = v13;
    *(v3 + 40) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  OUTLINED_FUNCTION_61_2();
}

uint64_t protocol witness for ProgressUpdate.init(_:) in conformance OmniSearchProgressUpdate@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ProgressUpdate.init(totalUnitCount:completedUnitCount:localizedDescription:) in conformance OmniSearchProgressUpdate@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance OmniSearchProgressUpdate@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.CodingKeys and conformance XPCServiceError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType()
{
  result = lazy protocol witness table cache variable for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError.ErrorType and conformance XPCServiceError.ErrorType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMSearchQuery.CodingKeys and conformance LLMSearchQuery.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchOptions and conformance OmniSearchOptions()
{
  result = lazy protocol witness table cache variable for type OmniSearchOptions and conformance OmniSearchOptions;
  if (!lazy protocol witness table cache variable for type OmniSearchOptions and conformance OmniSearchOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchOptions and conformance OmniSearchOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchOptions and conformance OmniSearchOptions;
  if (!lazy protocol witness table cache variable for type OmniSearchOptions and conformance OmniSearchOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchOptions and conformance OmniSearchOptions);
  }

  return result;
}

uint64_t _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t outlined destroy of LLMSearchQuery(uint64_t a1)
{
  v2 = type metadata accessor for LLMSearchQuery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.CodingKeys and conformance OmniSearchXPCRequest.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of LLMSearchQuery(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

unint64_t lazy protocol witness table accessor for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.SearchCodingKeys and conformance OmniSearchXPCRequest.SearchCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.DeactivateCodingKeys and conformance OmniSearchXPCRequest.DeactivateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.ActivateCodingKeys and conformance OmniSearchXPCRequest.ActivateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCRequest.PreheatCodingKeys and conformance OmniSearchXPCRequest.PreheatCodingKeys);
  }

  return result;
}

uint64_t _s10OmniSearch14LLMSearchQueryVWObTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

unint64_t lazy protocol witness table accessor for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse.CodingKeys and conformance OmniSearchXPCResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse.SuccessCodingKeys and conformance OmniSearchXPCResponse.SuccessCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchXPCResponse.FailureCodingKeys and conformance OmniSearchXPCResponse.FailureCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchProgressUpdate.CodingKeys and conformance OmniSearchProgressUpdate.CodingKeys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for OmniSearchProgressUpdate(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(&lazy protocol witness table cache variable for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate, a2, type metadata accessor for OmniSearchProgressUpdate);
  result = _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_1(&lazy protocol witness table cache variable for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate, v3, type metadata accessor for OmniSearchProgressUpdate);
  *(a1 + 16) = result;
  return result;
}

void type metadata completion function for LLMSearchQuery()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for StructuredQueryEntity?();
    if (v1 <= 0x3F)
    {
      _sSSSgMaTm_0(319, &lazy cache variable for type metadata for [SearchEntityTypeIdentifier], &type metadata for SearchEntityTypeIdentifier, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void _sSSSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for OmniSearchXPCRequest()
{
  v0 = type metadata accessor for LLMSearchQuery(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

_BYTE *storeEnumTagSinglePayload for OmniSearchProgressUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OmniSearchXPCRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OmniSearchXPCResponse.FailureCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LLMSearchQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for XPCServiceError.ErrorType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static RequestedPropertiesMapper.resolve(_:query:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C15PropertyRequestV7elementtMd, &_sSi6offset_10OmniSearch0C15PropertyRequestV7elementtMR);
  v5 = OUTLINED_FUNCTION_17(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v119 = (&v113 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C15PropertyRequestV7elementtSgMd, &_sSi6offset_10OmniSearch0C15PropertyRequestV7elementtSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v116 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v113 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v113 - v17;
  v120 = 0;
  v126 = type metadata accessor for SearchPropertyRequest(0);
  v19 = OUTLINED_FUNCTION_18_8(v126);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v22);
  v127 = &v113 - v23;
  OUTLINED_FUNCTION_10_51();
  MEMORY[0x28223BE20](v24);
  v26 = &v113 - v25;
  MEMORY[0x28223BE20](v27);
  v31 = &v113 - v30;
  v32 = *(a1 + 16);
  if (!v32)
  {
    return MEMORY[0x277D84F90];
  }

  v121 = v18;
  i = a2;
  v124 = v14;
  v117 = v29;
  v114 = v4;
  v33 = 0;
  v34 = *(v28 + 72);
  v115 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v35 = a1 + v115;
  v36 = MEMORY[0x277D84F90];
  v125 = v34;
LABEL_3:
  v37 = v35 + v34 * v33;
  while (v32 != v33)
  {
    outlined init with copy of SearchPropertyRequest(v37, v31);
    if (one-time initialization token for defaultProperty != -1)
    {
      OUTLINED_FUNCTION_2_77();
      swift_once();
    }

    v38 = __swift_project_value_buffer(v126, static SearchPropertyRequest.defaultProperty);
    if (!static SearchPropertyRequest.== infix(_:_:)(v31, v38))
    {
      outlined init with take of SearchPropertyRequest(v31, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = v36[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v36 = v129;
      }

      v42 = v36[2];
      if (v42 >= v36[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v36 = v129;
      }

      ++v33;
      v36[2] = v42 + 1;
      v43 = v36 + v115 + v42 * v125;
      v34 = v125;
      outlined init with take of SearchPropertyRequest(v26, v43);
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_0_100();
    _s10OmniSearch0B15PropertyRequestVWOhTm_0(v31, v39);
    v37 += v34;
    ++v33;
  }

  v130 = v36;
  v44 = v126;
  v45 = v114;
  v46 = v116;
  if (v36[2] < v32)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logging.search);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = i;
    if (v50)
    {
      v52 = OUTLINED_FUNCTION_51_0();
      v53 = OUTLINED_FUNCTION_49_0();
      v129 = v53;
      *v52 = 136315138;
      if (one-time initialization token for defaultProperty != -1)
      {
        OUTLINED_FUNCTION_2_77();
        swift_once();
      }

      __swift_project_value_buffer(v44, static SearchPropertyRequest.defaultProperty);
      SearchPropertyRequest.description.getter();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v52 + 4) = v54;
      v44 = v126;
      _os_log_impl(&dword_25D85C000, v48, v49, "Found a %s requested property. Attempting to do a mapping to concrete requested properties", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();

      v45 = v114;
    }

    else
    {
    }

    v56 = v121;
    v57 = type metadata accessor for UserQuery();
    outlined init with copy of StructuredQueryEntity?(v51 + *(v57 + 28), v56);
    Entity = type metadata accessor for StructuredQueryEntity(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, Entity);
    v46 = v116;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of IntentApplication?(v56, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
      v60 = MEMORY[0x277D84F90];
    }

    else
    {
      v61 = *(v56 + *(Entity + 28));
      EntityProperty.wrappedValue.getter();
      v60 = v129;
      _s10OmniSearch0B15PropertyRequestVWOhTm_0(v56, type metadata accessor for StructuredQueryEntity);
      if (!v60)
      {
        v60 = MEMORY[0x277D84F90];
      }
    }

    static RequestedPropertiesMapper.defaultPropertiesFor(preferredTypes:)(v60);
    v32 = v62;

    specialized Array.append<A>(contentsOf:)(v32);
    v36 = v130;
  }

  v123 = static RequestedPropertiesMapper.loadPlistRequestedPropertyMapping(_:)(1);
  v63 = v36[2];
  v118 = v36 + v115;

  v64 = 0;
  *&v65 = 136315138;
  v113 = v65;
  v66 = v125;
  v121 = v36;
  for (i = v63; ; v63 = i)
  {
    if (v64 == v63)
    {
      v67 = 1;
      v64 = v63;
    }

    else
    {
      if ((v64 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (v64 >= v36[2])
      {
        goto LABEL_64;
      }

      v68 = v119;
      v69 = v118 + v66 * v64;
      v70 = *(v45 + 48);
      *v119 = v64;
      outlined init with copy of SearchPropertyRequest(v69, v68 + v70);
      outlined init with take of (offset: Int, element: SearchPropertyRequest)(v68, v46, &_sSi6offset_10OmniSearch0C15PropertyRequestV7elementtMd, &_sSi6offset_10OmniSearch0C15PropertyRequestV7elementtMR);
      v67 = 0;
      ++v64;
    }

    __swift_storeEnumTagSinglePayload(v46, v67, 1, v45);
    v71 = v124;
    outlined init with take of (offset: Int, element: SearchPropertyRequest)(v46, v124, &_sSi6offset_10OmniSearch0C15PropertyRequestV7elementtSgMd, &_sSi6offset_10OmniSearch0C15PropertyRequestV7elementtSgMR);
    v72 = __swift_getEnumTagSinglePayload(v71, 1, v45);
    v73 = v123;
    if (v72 == 1)
    {
      break;
    }

    v74 = *v71;
    v75 = v71 + *(v45 + 48);
    v76 = v127;
    outlined init with take of SearchPropertyRequest(v75, v127);
    v77 = *(v76 + *(v44 + 24));
    EntityProperty.wrappedValue.getter();
    if (!*(v73 + 16))
    {

LABEL_42:
      v66 = v125;
      v36 = v121;
      goto LABEL_58;
    }

    v78 = specialized __RawDictionaryStorage.find<A>(_:)();
    v32 = v79;

    if ((v32 & 1) == 0)
    {
      goto LABEL_42;
    }

    v80 = *(*(v73 + 56) + 8 * v78);
    v81 = one-time initialization token for search;

    if (v81 != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logging.search);
    v83 = v117;
    outlined init with copy of SearchPropertyRequest(v127, v117);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = v83;
      v87 = OUTLINED_FUNCTION_51_0();
      v88 = OUTLINED_FUNCTION_49_0();
      *v87 = OUTLINED_FUNCTION_11_56(v88).n128_u32[0];
      v89 = *(v86 + *(v44 + 24));
      EntityProperty.wrappedValue.getter();
      switch(v128)
      {
        case 2:
          OUTLINED_FUNCTION_6_52();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_0_100();
      _s10OmniSearch0B15PropertyRequestVWOhTm_0(v117, v91);
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v87 + 4) = v92;
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();

      v44 = v126;
    }

    else
    {

      OUTLINED_FUNCTION_0_100();
      _s10OmniSearch0B15PropertyRequestVWOhTm_0(v83, v90);
    }

    v93 = v130;
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v114;
    v46 = v116;
    if ((v94 & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()(v93);
      v93 = v105;
    }

    v95 = *(v93 + 16);
    if (v74 >= v95)
    {
      goto LABEL_65;
    }

    v96 = v95 - 1;
    v66 = v125;
    v97 = v93 + v115 + v125 * v74;
    OUTLINED_FUNCTION_0_100();
    v99 = _s10OmniSearch0B15PropertyRequestVWOhTm_0(v97, v98);
    if (v66 > 0 || v97 >= v97 + v66 + v66 * (v96 - v74))
    {
      v99 = swift_arrayInitWithTakeFrontToBack();
      v36 = v121;
    }

    else
    {
      v36 = v121;
      if (v66)
      {
        v99 = swift_arrayInitWithTakeBackToFront();
      }
    }

    *(v93 + 16) = v96;
    v130 = v93;
    MEMORY[0x28223BE20](v99);
    *(&v113 - 2) = v127;
    v32 = v80;
    v101 = v80;
    v102 = v120;
    v103 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_10OmniSearch0E15PropertyRequestVs5NeverOTg5(partial apply for closure #2 in static RequestedPropertiesMapper.resolve(_:query:), (&v113 - 2), v101);
    v120 = v102;

    specialized Array.append<A>(contentsOf:)(v103);
LABEL_58:
    OUTLINED_FUNCTION_0_100();
    _s10OmniSearch0B15PropertyRequestVWOhTm_0(v127, v104);
  }

  if (one-time initialization token for search == -1)
  {
    goto LABEL_60;
  }

LABEL_66:
  OUTLINED_FUNCTION_1_31();
  swift_once();
LABEL_60:
  v106 = type metadata accessor for Logger();
  __swift_project_value_buffer(v106, static Logging.search);
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = OUTLINED_FUNCTION_51_0();
    v110 = OUTLINED_FUNCTION_49_0();
    *v109 = OUTLINED_FUNCTION_11_56(v110).n128_u32[0];
    swift_beginAccess();

    MEMORY[0x25F89F8A0](v111, v44);

    v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v109 + 4) = v112;
    _os_log_impl(&dword_25D85C000, v107, v108, "Updated requested properties: %s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  swift_beginAccess();
  return v130;
}

OmniSearch::RequestedPropertiesMapper::MappingType_optional __swiftcall RequestedPropertiesMapper.MappingType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestedPropertiesMapper.MappingType.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = OmniSearch_RequestedPropertiesMapper_MappingType_expandedTypes;
  }

  else
  {
    v4.value = OmniSearch_RequestedPropertiesMapper_MappingType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t RequestedPropertiesMapper.MappingType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6465646E61707865;
  }

  else
  {
    return 0x4B746C7561666564;
  }
}

OmniSearch::RequestedPropertiesMapper::MappingType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RequestedPropertiesMapper.MappingType@<W0>(Swift::String *a1@<X0>, OmniSearch::RequestedPropertiesMapper::MappingType_optional *a2@<X8>)
{
  result.value = RequestedPropertiesMapper.MappingType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RequestedPropertiesMapper.MappingType@<X0>(uint64_t *a1@<X8>)
{
  result = RequestedPropertiesMapper.MappingType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void static RequestedPropertiesMapper.defaultPropertiesFor(preferredTypes:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = static RequestedPropertiesMapper.loadPlistRequestedPropertyMapping(_:)(0);
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v21 = *v4;
      closure #1 in static RequestedPropertiesMapper.defaultPropertiesFor(preferredTypes:)(&v21, v3, &v20);
      v6 = v20;
      v7 = *(v20 + 16);
      v8 = *(v5 + 16);
      v9 = v8 + v7;
      if (__OFADD__(v8, v7))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v9 > *(v5 + 24) >> 1)
      {
        if (v8 <= v9)
        {
          v11 = v8 + v7;
        }

        else
        {
          v11 = v8;
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v5);
        v5 = v12;
      }

      if (*(v6 + 16))
      {
        v13 = (*(v5 + 24) >> 1) - *(v5 + 16);
        v14 = *(type metadata accessor for SearchPropertyRequest(0) - 8);
        if (v13 < v7)
        {
          goto LABEL_21;
        }

        v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v16 = *(v14 + 72);
        swift_arrayInitWithCopy();

        if (v7)
        {
          v17 = *(v5 + 16);
          v18 = __OFADD__(v17, v7);
          v19 = v17 + v7;
          if (v18)
          {
            goto LABEL_22;
          }

          *(v5 + 16) = v19;
        }
      }

      else
      {

        if (v7)
        {
          goto LABEL_20;
        }
      }

      ++v4;
      if (!--v1)
      {

        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t static RequestedPropertiesMapper.loadPlistRequestedPropertyMapping(_:)(char a1)
{
  type metadata accessor for OmniSearchService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = outlined bridged method (mbbnb) of @objc NSBundle.path(forResource:ofType:)(0xD000000000000019, 0x800000025DBF9E80, 0x7473696C70, 0xE500000000000000, v3);
  v6 = v5;

  if (v6)
  {
    type metadata accessor for NSDictionary();
    v7._countAndFlagsBits = v4;
    v7._object = v6;
    v8 = NSArray.__allocating_init(contentsOfFile:)(v7);
    if (v8)
    {
      v9 = v8;
      if (a1)
      {
        v10 = 0x6465646E61707865;
      }

      else
      {
        v10 = 0x4B746C7561666564;
      }

      if (a1)
      {
        v11 = 0xED00007365707954;
      }

      else
      {
        v11 = 0xEB00000000737965;
      }

      *&v26 = v10;
      *(&v26 + 1) = v11;
      v12 = [v8 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v12)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
      }

      v28[0] = v26;
      v28[1] = v27;
      if (*(&v27 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDyS2SGGMd, &_sSDySSSDyS2SGGMR);
        if (swift_dynamicCast())
        {

          return v25;
        }
      }

      else
      {
        outlined destroy of IntentApplication?(v28, &_sypSgMd, &_sypSgMR);
      }

      if (one-time initialization token for search != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logging.search);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *&v28[0] = v23;
        *v22 = 136315138;
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v22 + 4) = v24;
        _os_log_impl(&dword_25D85C000, v20, v21, "Failed to find RequestedProperty mapping: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x25F8A1050](v23, -1, -1);
        MEMORY[0x25F8A1050](v22, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
      v18 = Dictionary.init(dictionaryLiteral:)();

      return v18;
    }
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logging.search);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_25D85C000, v14, v15, "Failed to load DefaultRequestedProperties.plist", v16, 2u);
    MEMORY[0x25F8A1050](v16, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);

  return Dictionary.init(dictionaryLiteral:)();
}

void closure #2 in static RequestedPropertiesMapper.resolve(_:query:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a2 + *(type metadata accessor for SearchPropertyRequest(0) + 20));
  EntityProperty.wrappedValue.getter();

  v7._countAndFlagsBits = v4;
  v7._object = v5;
  SearchPropertyType.init(rawValue:)(v7);
  SearchPropertyRequest.init(groupingInfo:type:)();
}

void closure #1 in static RequestedPropertiesMapper.defaultPropertiesFor(preferredTypes:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for SearchPropertyRequest(0);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a1;
  LOBYTE(v44) = v42;
  v11 = PreferredType.rawValue.getter();
  v13 = specialized Dictionary.subscript.getter(v11, v12, a2);

  if (!v13)
  {
    if (one-time initialization token for search == -1)
    {
LABEL_13:
      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logging.search);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v44 = v35;
        *v34 = 136315138;
        LOBYTE(v49) = v42;
        PreferredType.rawValue.getter();
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v34 + 4) = v36;
        _os_log_impl(&dword_25D85C000, v32, v33, "Default requested property requested but preferredType %s is not handled.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x25F8A1050](v35, -1, -1);
        MEMORY[0x25F8A1050](v34, -1, -1);
      }

      goto LABEL_17;
    }

LABEL_22:
    swift_once();
    goto LABEL_13;
  }

  v14 = *(v13 + 16);
  if (v14)
  {
    v38 = a3;
    v39 = v3;
    v49 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = v49;
    v16 = specialized Dictionary.startIndex.getter(v13);
    a3 = v17;
    v19 = v18;
    v40 = v13 + 64;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v13 + 32))
    {
      if (((*(v40 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(v13 + 36) != a3)
      {
        goto LABEL_21;
      }

      v43 = v19;
      v20 = (*(v13 + 48) + 16 * v16);
      v21 = *v20;
      v22 = v20[1];
      v23 = (*(v13 + 56) + 16 * v16);
      v24 = v10;
      v25 = *v23;
      v26 = v23[1];
      v44 = v21;
      v45 = v22;
      v46 = v42;
      v47 = 0;
      v48 = 0;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v27._countAndFlagsBits = v25;
      v27._object = v26;
      SearchPropertyType.init(rawValue:)(v27);
      SearchPropertyRequest.init(groupingInfo:type:)();

      v49 = v15;
      v28 = *(v15 + 16);
      if (v28 >= *(v15 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v15 = v49;
      }

      *(v15 + 16) = v28 + 1;
      outlined init with take of SearchPropertyRequest(v24, v15 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v28);
      v16 = specialized _NativeDictionary.index(after:)(v16, a3, v43 & 1, v13);
      a3 = v29;
      v19 = v30;
      --v14;
      v10 = v24;
      if (!v14)
      {

        outlined consume of [String : String].Index._Variant(v16, a3, v19 & 1);
        a3 = v38;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
  v15 = MEMORY[0x277D84F90];
LABEL_18:
  *a3 = v15;
}

uint64_t static RequestedPropertiesMapper.groupExpandedProperties(_:extractedProperties:)(uint64_t a1, uint64_t a2)
{
  v111 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = &v92 - v6;
  v7 = type metadata accessor for SearchPropertyRequest(0);
  v8 = OUTLINED_FUNCTION_18_8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v109 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_10_51();
  MEMORY[0x28223BE20](v12);
  v104 = (&v92 - v13);
  OUTLINED_FUNCTION_10_51();
  MEMORY[0x28223BE20](v14);
  v102 = (&v92 - v15);
  OUTLINED_FUNCTION_10_51();
  MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v92 - v21;
  v23 = *(a1 + 16);
  if (!v23)
  {
    return MEMORY[0x277D84F98];
  }

  v97 = v19;
  v24 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v108 = MEMORY[0x277D84F98];
  v25 = *(v18 + 72);
  v20.n128_u64[0] = 136315138;
  v103 = v20;
  v20.n128_u64[0] = 136315650;
  v92 = v20;
  v105 = v7;
  v107 = v25;
  while (1)
  {
    outlined init with copy of SearchPropertyRequest(v24, v22);
    v26 = *&v22[v7[5]];
    EntityProperty.wrappedValue.getter();
    if (!*(v111 + 16))
    {

LABEL_12:
      v110 = v24;
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Logging.answerSynthesis);
      outlined init with copy of SearchPropertyRequest(v22, v109);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_51_0();
        v53 = OUTLINED_FUNCTION_49_0();
        v106 = v23;
        v54 = v22;
        v55 = v109;
        v56 = v53;
        *&v113[0] = v53;
        *v52 = v103.n128_u32[0];
        v57 = *(v55 + v7[5]);
        EntityProperty.wrappedValue.getter();
        OUTLINED_FUNCTION_3_69();
        _s10OmniSearch0B15PropertyRequestVWOhTm_0(v55, v58);
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        v7 = v105;

        *(v52 + 4) = v59;
        _os_log_impl(&dword_25D85C000, v50, v51, "Failed to find an answer for requested property: '%s'", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        v22 = v54;
        v23 = v106;
        v25 = v107;
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_3_69();
        _s10OmniSearch0B15PropertyRequestVWOhTm_0(v109, v60);
      }

      _s10OmniSearch0B15PropertyRequestVWOhTm_0(v22, v2);
      v24 = v110;
      goto LABEL_38;
    }

    v27 = specialized __RawDictionaryStorage.find<A>(_:)();
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      goto LABEL_12;
    }

    v30 = (*(v111 + 56) + 16 * v27);
    v32 = *v30;
    v31 = v30[1];
    v33 = &v22[v7[8]];
    v34 = v33[32];
    if (v34 == 255 || (v34 & 1) == 0)
    {
      break;
    }

    v36 = *v33;
    v35 = *(v33 + 1);
    v37 = v31;
    v38 = *(v33 + 2);
    v39 = *(v33 + 3);
    v99 = v37;

    v101 = v36;
    v40 = v36;
    v41 = v35;
    v106 = v38;
    outlined copy of SearchPropertyRequest.GroupInfo?(v40, v35, v38, v39, v34);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logging.answerSynthesis);
    v43 = v97;
    outlined init with copy of SearchPropertyRequest(v22, v97);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    v46 = os_log_type_enabled(v44, v45);
    v100 = v39;
    v98 = v41;
    if (v46)
    {
      v94 = v45;
      v95 = v32;
      v110 = v24;
      v47 = OUTLINED_FUNCTION_49_0();
      v93 = swift_slowAlloc();
      *&v114 = v93;
      *v47 = v92.n128_u32[0];
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v47 + 12) = 2080;
      *(v47 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v47 + 22) = 2080;
      v48 = *(v43 + v7[6]);
      EntityProperty.wrappedValue.getter();
      v25 = v107;
      switch(LOBYTE(v113[0]))
      {
        case 2:
          OUTLINED_FUNCTION_6_52();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_0_100();
      _s10OmniSearch0B15PropertyRequestVWOhTm_0(v97, v82);
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v47 + 24) = v83;
      _os_log_impl(&dword_25D85C000, v44, v94, "Combining group '%s' - %s:%s", v47, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();

      v24 = v110;
    }

    else
    {

      OUTLINED_FUNCTION_0_100();
      _s10OmniSearch0B15PropertyRequestVWOhTm_0(v43, v81);
      v25 = v107;
    }

    v84 = *&v22[v7[6]];
    EntityProperty.wrappedValue.getter();
    LOBYTE(v113[0]) = v114;
    v85 = type metadata accessor for HydrationContext(0);
    __swift_storeEnumTagSinglePayload(v96, 1, 1, v85);
    SearchPropertyRequest.init(name:type:hydrationContext:)();
    if (v108[2] && (v86 = specialized __RawDictionaryStorage.find<A>(_:)(v102), (v87 & 1) != 0) && (outlined init with copy of Any(v108[7] + 32 * v86, &v114), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR), (swift_dynamicCast() & 1) != 0))
    {
      v88 = *&v113[0];
    }

    else
    {
      v88 = Dictionary.init(dictionaryLiteral:)();
    }

    swift_isUniquelyReferenced_nonNull_native();
    *&v114 = v88;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

    v89 = v114;
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    *&v114 = v89;
    outlined init with take of Any(&v114, v113);
    v90 = v108;
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v90;
    v2 = v102;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    _s10OmniSearch0B15PropertyRequestVWOhTm_0(v2, type metadata accessor for SearchPropertyRequest);
    v108 = v112;
    v80 = v22;
    v79 = type metadata accessor for SearchPropertyRequest;
LABEL_37:
    _s10OmniSearch0B15PropertyRequestVWOhTm_0(v80, v79);
LABEL_38:
    v24 += v25;
    if (!--v23)
    {
      return v108;
    }
  }

  v61 = v24;
  v2 = v104;
  outlined init with copy of SearchPropertyRequest(v22, v104);
  v115 = MEMORY[0x277D837D0];
  *&v114 = v32;
  *(&v114 + 1) = v31;
  outlined init with take of Any(&v114, v113);

  v62 = v108;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v112 = v62;
  v64 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
  v66 = v62[2];
  v67 = (v65 & 1) == 0;
  v68 = v66 + v67;
  if (!__OFADD__(v66, v67))
  {
    v69 = v64;
    v70 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10OmniSearch0D15PropertyRequestVypGMd, &_ss17_NativeDictionaryVy10OmniSearch0D15PropertyRequestVypGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v68))
    {
      v71 = specialized __RawDictionaryStorage.find<A>(_:)(v104);
      v7 = v105;
      if ((v70 & 1) != (v72 & 1))
      {
        goto LABEL_44;
      }

      v69 = v71;
    }

    else
    {
      v7 = v105;
    }

    v24 = v61;
    v25 = v107;
    v108 = v112;
    if (v70)
    {
      v73 = (v112[7] + 32 * v69);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      outlined init with take of Any(v113, v73);
      OUTLINED_FUNCTION_0_100();
      _s10OmniSearch0B15PropertyRequestVWOhTm_0(v104, v74);
    }

    else
    {
      v112[(v69 >> 6) + 8] |= 1 << v69;
      v2 = v104;
      outlined init with copy of SearchPropertyRequest(v104, v108[6] + v69 * v25);
      outlined init with take of Any(v113, (v108[7] + 32 * v69));
      OUTLINED_FUNCTION_0_100();
      _s10OmniSearch0B15PropertyRequestVWOhTm_0(v2, v75);
      v76 = v108[2];
      v77 = __OFADD__(v76, 1);
      v78 = v76 + 1;
      if (v77)
      {
        goto LABEL_43;
      }

      v108[2] = v78;
    }

    OUTLINED_FUNCTION_0_100();
    v80 = v22;
    goto LABEL_37;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t SearchPropertyRequest.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for SearchPropertyRequest(0);
  v3 = *(v0 + v2[5]);
  EntityProperty.wrappedValue.getter();
  String.hash(into:)();

  v4 = *(v1 + v2[6]);
  EntityProperty.wrappedValue.getter();
  switch(v12)
  {
    case 2:
      OUTLINED_FUNCTION_6_52();
      break;
    default:
      break;
  }

  String.hash(into:)();

  v6 = (v1 + v2[8]);
  v7 = *(v6 + 32);
  if (v7 != 255)
  {
    v9 = v6[1];
    v8 = v6[2];
    v10 = *v6;
    if (v7)
    {
      v11 = v6[3];
      MEMORY[0x25F8A0680](1);
      String.hash(into:)();
      return String.hash(into:)();
    }

    else
    {
      MEMORY[0x25F8A0680](0);
      String.hash(into:)();
      PreferredType.rawValue.getter();
      String.hash(into:)();
    }
  }

  return result;
}

Swift::Int SearchPropertyRequest.hashValue.getter()
{
  Hasher.init(_seed:)();
  SearchPropertyRequest.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SearchPropertyRequest()
{
  Hasher.init(_seed:)();
  SearchPropertyRequest.hash(into:)();
  return Hasher._finalize()();
}

uint64_t outlined init with take of (offset: Int, element: SearchPropertyRequest)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_17(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t _s10OmniSearch0B15PropertyRequestVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RequestedPropertiesMapper.MappingType and conformance RequestedPropertiesMapper.MappingType()
{
  result = lazy protocol witness table cache variable for type RequestedPropertiesMapper.MappingType and conformance RequestedPropertiesMapper.MappingType;
  if (!lazy protocol witness table cache variable for type RequestedPropertiesMapper.MappingType and conformance RequestedPropertiesMapper.MappingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestedPropertiesMapper.MappingType and conformance RequestedPropertiesMapper.MappingType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchPropertyRequest and conformance SearchPropertyRequest()
{
  result = lazy protocol witness table cache variable for type SearchPropertyRequest and conformance SearchPropertyRequest;
  if (!lazy protocol witness table cache variable for type SearchPropertyRequest and conformance SearchPropertyRequest)
  {
    type metadata accessor for SearchPropertyRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyRequest and conformance SearchPropertyRequest);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RequestedPropertiesMapper.MappingType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t type metadata accessor for NSDictionary()
{
  result = lazy cache variable for type metadata for NSDictionary;
  if (!lazy cache variable for type metadata for NSDictionary)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSDictionary);
  }

  return result;
}

uint64_t RequestedPropertyController.init(globalResolutionService:queryParser:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of ResponseOverrideMatcherProtocol(a1, a3);

  return outlined init with take of ResponseOverrideMatcherProtocol(a2, a3 + 40);
}

uint64_t RequestedPropertyController.processRequestedProperties(for:using:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  OUTLINED_FUNCTION_69();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t RequestedPropertyController.processRequestedProperties(for:using:)()
{
  OUTLINED_FUNCTION_78();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logging.search);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = OUTLINED_FUNCTION_16_11(v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_51_0();
    *v8 = 134217984;
    *(v8 + 4) = *(v7 + 16);

    _os_log_impl(&dword_25D85C000, v4, v3, "Processing %ld requested properties", v8, 0xCu);
    OUTLINED_FUNCTION_37_0();
  }

  else
  {
    v9 = *(v0 + 32);
  }

  v10 = *(v0 + 40);
  *(v0 + 16) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v10;
  *(v11 + 40) = v0 + 16;
  v12 = *(MEMORY[0x277D858E8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 56) = v13;
  *v13 = v0;
  v13[1] = RequestedPropertyController.processRequestedProperties(for:using:);

  return MEMORY[0x282200600](v13);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_62();
  return v2();
}

uint64_t closure #1 in RequestedPropertyController.processRequestedProperties(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[19] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v6[24] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgSgMd, &_s10OmniSearch0B6ResultVSgSgMR) - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy10OmniSearch0C6ResultVSg_GMd, &_sScG8IteratorVy10OmniSearch0C6ResultVSg_GMR);
  v6[27] = v10;
  v11 = *(v10 - 8);
  v6[28] = v11;
  v12 = *(v11 + 64) + 15;
  v6[29] = swift_task_alloc();
  v13 = type metadata accessor for SearchResult(0);
  v6[30] = v13;
  v14 = *(v13 - 8);
  v6[31] = v14;
  v6[32] = *(v14 + 64);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in RequestedPropertyController.processRequestedProperties(for:using:), 0, 0);
}

uint64_t closure #1 in RequestedPropertyController.processRequestedProperties(for:using:)()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 248);
    v42 = **(v0 + 152);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v41 = *(v3 + 72);
    v40 = (*(v0 + 256) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = type metadata accessor for TaskPriority();
    do
    {
      v43 = v2;
      v8 = *(v0 + 288);
      v7 = *(v0 + 296);
      v9 = *(v0 + 280);
      v10 = *(v0 + 168);
      v11 = *(v0 + 176);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v6);
      OUTLINED_FUNCTION_8_55();
      _s10OmniSearch0B15PropertyRequestVWOcTm_0();
      outlined init with copy of RequestedPropertyController(v11, v0 + 16);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      OUTLINED_FUNCTION_21_36();
      outlined init with take of SearchPropertyResponse();
      *(v15 + v40) = v10;
      memcpy((v15 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)), (v0 + 16), 0x50uLL);
      outlined init with copy of EagerResolutionService?();
      LODWORD(v7) = __swift_getEnumTagSinglePayload(v8, 1, v6);

      if (v7 == 1)
      {
        outlined destroy of EagerResolutionService?(*(v0 + 288), &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        v17 = *(*(v6 - 8) + 8);
        v18 = OUTLINED_FUNCTION_88();
        v19(v18);
      }

      if (*v16)
      {
        v20 = *(v15 + 24);
        v21 = *v16;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = dispatch thunk of Actor.unownedExecutor.getter();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in RequestedPropertyController.processRequestedProperties(for:using:);
      *(v25 + 24) = v15;

      if (v24 | v22)
      {
        v26 = v0 + 96;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v22;
        *(v0 + 120) = v24;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(v0 + 296);
      v28 = *(v0 + 192);
      *(v0 + 128) = 1;
      *(v0 + 136) = v26;
      *(v0 + 144) = v42;
      swift_task_create();

      outlined destroy of EagerResolutionService?(v27, &_sScPSgMd, &_sScPSgMR);
      v5 += v41;
      v2 = v43 - 1;
    }

    while (v43 != 1);
  }

  v29 = *(v0 + 232);
  v30 = *(v0 + 192);
  v31 = **(v0 + 152);
  TaskGroup.makeAsyncIterator()();
  v32 = *(MEMORY[0x277D856B0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 304) = v33;
  *v33 = v34;
  v33[1] = closure #1 in RequestedPropertyController.processRequestedProperties(for:using:);
  v35 = *(v0 + 232);
  v36 = *(v0 + 208);
  v37 = *(v0 + 216);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822002E8](v38);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 304);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_75();
  v1 = v0[26];
  v2 = v0[24];
  v3 = OUTLINED_FUNCTION_65();
  if (__swift_getEnumTagSinglePayload(v3, v4, v5) == 1)
  {
    v7 = v0[36];
    v6 = v0[37];
    v9 = v0[34];
    v8 = v0[35];
    v10 = v0[33];
    v11 = v0[25];
    (*(v0[28] + 8))(v0[29], v0[27]);

    OUTLINED_FUNCTION_127();

    return v12();
  }

  else
  {
    v14 = v0[30];
    v15 = v0[25];
    OUTLINED_FUNCTION_88();
    outlined init with take of (Int, SearchCATEntity)();
    OUTLINED_FUNCTION_71_10(v15);
    if (v16)
    {
      outlined destroy of EagerResolutionService?(v0[25], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    }

    else
    {
      v17 = v0[33];
      v18 = v0[34];
      v19 = v0[25];
      v20 = v0[23];
      OUTLINED_FUNCTION_21_36();
      outlined init with take of SearchPropertyResponse();
      OUTLINED_FUNCTION_8_55();
      OUTLINED_FUNCTION_107();
      _s10OmniSearch0B15PropertyRequestVWOcTm_0();
      v21 = *v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = v0[23];
        v41 = OUTLINED_FUNCTION_26_30();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41, v42, v43, v44);
        v21 = v45;
        *v40 = v45;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        v46 = v0[23];
        OUTLINED_FUNCTION_26_3(v23);
        OUTLINED_FUNCTION_117();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47, v48, v49, v50);
        *v46 = v51;
      }

      v26 = v0[33];
      v25 = v0[34];
      v27 = v0[31];
      v28 = v0[23];
      OUTLINED_FUNCTION_1_87();
      outlined destroy of SearchPropertyResponse(v29, v30);
      *(*v28 + 16) = v24 + 1;
      v31 = *(v27 + 80);
      v32 = *(v27 + 72);
      OUTLINED_FUNCTION_21_36();
      outlined init with take of SearchPropertyResponse();
    }

    v33 = *(MEMORY[0x277D856B0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[38] = v34;
    *v34 = v35;
    v34[1] = closure #1 in RequestedPropertyController.processRequestedProperties(for:using:);
    v36 = v0[29];
    v37 = v0[26];
    v38 = v0[27];
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822002E8](v39);
  }
}

uint64_t partial apply for closure #1 in RequestedPropertyController.processRequestedProperties(for:using:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_204();

  return closure #1 in RequestedPropertyController.processRequestedProperties(for:using:)(v8, v9, v10, v11, v12, v13);
}

uint64_t closure #1 in closure #1 in RequestedPropertyController.processRequestedProperties(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[25] = a1;
  v6[26] = a4;
  v7 = type metadata accessor for SearchResult(0);
  v6[29] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v10 = type metadata accessor for SearchPropertyResponse(0);
  v6[35] = v10;
  v11 = *(v10 - 8);
  v6[36] = v11;
  v12 = *(v11 + 64) + 15;
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v13 = type metadata accessor for SearchPropertyRequest(0);
  v6[39] = v13;
  v14 = *(v13 - 8);
  v6[40] = v14;
  v15 = *(v14 + 64) + 15;
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v16 = type metadata accessor for Mirror();
  v6[44] = v16;
  v17 = *(v16 - 8);
  v6[45] = v17;
  v18 = *(v17 + 64) + 15;
  v6[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in RequestedPropertyController.processRequestedProperties(for:using:), 0, 0);
}

uint64_t closure #1 in closure #1 in RequestedPropertyController.processRequestedProperties(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v16 = *(v14 + 368);
  v17 = *(v14 + 208);
  v18 = *(v14 + 216);
  *(v14 + 160) = type metadata accessor for SearchResultItem(0);
  __swift_allocate_boxed_opaque_existential_1Tm((v14 + 136));
  _s10OmniSearch0B15PropertyRequestVWOcTm_0();
  Mirror.init(reflecting:)();
  v19 = *(v18 + 16);
  *(v14 + 376) = v19;
  if (v19)
  {
    v20 = *(v14 + 320);
    v21 = *(v14 + 216);
    *(v14 + 424) = *(v20 + 80);
    v22 = *(v20 + 72);
    v23 = MEMORY[0x277D84F90];
    *(v14 + 392) = 0;
    *(v14 + 400) = v23;
    *(v14 + 384) = v22;
    v24 = *(v14 + 344);
    OUTLINED_FUNCTION_3_70();
    _s10OmniSearch0B15PropertyRequestVWOcTm_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v14 + 408) = v25;
    *v25 = v26;
    OUTLINED_FUNCTION_16_45(v25);
    OUTLINED_FUNCTION_83_0();

    return RequestedPropertyController.extractPropertyValueRecursive(mirror:for:)(v27, v28, v29);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      v33 = *(v14 + 256);
      v34 = *(v14 + 232);
      v36 = *(v14 + 200);
      v35 = *(v14 + 208);
      (*(*(v14 + 360) + 8))(*(v14 + 368), *(v14 + 352));
      _s10OmniSearch0B15PropertyRequestVWOcTm_0();
      v37 = *(v34 + 28);
      v38 = *(v33 + v37);

      *(v33 + v37) = v32;
      OUTLINED_FUNCTION_74_20();
      _s10OmniSearch0B15PropertyRequestVWOcTm_0();
      v39 = OUTLINED_FUNCTION_27_27();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v34);
      OUTLINED_FUNCTION_1_87();
      outlined destroy of SearchPropertyResponse(v33, v42);
    }

    else
    {

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0();
      }

      v43 = *(v14 + 248);
      v44 = *(v14 + 208);
      v45 = type metadata accessor for Logger();
      v46 = __swift_project_value_buffer(v45, static Logging.search);
      OUTLINED_FUNCTION_8_55();
      OUTLINED_FUNCTION_94();
      _s10OmniSearch0B15PropertyRequestVWOcTm_0();
      v47 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_117_14();
      os_log_type_enabled(v47, v48);
      OUTLINED_FUNCTION_134_12();
      if (v49)
      {
        v50 = OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_193_8(4.8149e-34);
        a9 = v44;
        v51 = OUTLINED_FUNCTION_66_18();
        v52(v51);
        OUTLINED_FUNCTION_33_27();
        OUTLINED_FUNCTION_1_87();
        outlined destroy of SearchPropertyResponse(v15, v53);
        __swift_destroy_boxed_opaque_existential_1Tm((v14 + 16));
        OUTLINED_FUNCTION_107();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_112_2();

        *(v50 + 4) = v46;
        OUTLINED_FUNCTION_121_11(&dword_25D85C000, v54, v55, "No properties found for %s");
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_33_0();

        (*(v46 + 8))(a10, v44);
      }

      else
      {

        OUTLINED_FUNCTION_1_87();
        outlined destroy of SearchPropertyResponse(v15, v56);
        v57 = *(v46 + 8);
        v58 = OUTLINED_FUNCTION_107();
        v60(v58, v59);
      }

      v61 = *(v14 + 232);
      v62 = *(v14 + 200);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    }

    OUTLINED_FUNCTION_35_31();
    v76 = v67;

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_83_0();

    return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, v76, a11, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v19 = *(v16 + 272);
  v18 = *(v16 + 280);
  v20 = OUTLINED_FUNCTION_65();
  if (__swift_getEnumTagSinglePayload(v20, v21, v22) == 1)
  {
    v23 = *(v16 + 344);
    OUTLINED_FUNCTION_5_57();
    outlined destroy of SearchPropertyResponse(v24, v25);
    outlined destroy of EagerResolutionService?(v19, &_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
    v26 = *(v16 + 400);
  }

  else
  {
    v27 = *(v16 + 304);
    OUTLINED_FUNCTION_2_78();
    outlined init with take of SearchPropertyResponse();
    OUTLINED_FUNCTION_186_6();
    if (!v28)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v29 = *(v16 + 336);
    v30 = *(v16 + 344);
    v31 = *(v16 + 264);
    v32 = *(v16 + 208);
    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logging.search);
    OUTLINED_FUNCTION_3_70();
    OUTLINED_FUNCTION_107();
    _s10OmniSearch0B15PropertyRequestVWOcTm_0();
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_116_1();
    _s10OmniSearch0B15PropertyRequestVWOcTm_0();
    v14 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v14, v34);
    v36 = *(v16 + 336);
    if (v35)
    {
      v37 = *(v16 + 312);
      v38 = *(v16 + 264);
      v39 = OUTLINED_FUNCTION_90_1();
      a11 = swift_slowAlloc();
      *v39 = 136315394;
      v40 = *(v36 + *(v37 + 20));
      EntityProperty.wrappedValue.getter();
      v41 = *(v16 + 184);
      v42 = *(v16 + 192);
      OUTLINED_FUNCTION_5_57();
      outlined destroy of SearchPropertyResponse(v36, v43);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      SearchResultItem.associatedValue.getter((v16 + 96));
      v17 = *(v16 + 128);
      __swift_project_boxed_opaque_existential_1((v16 + 96), *(v16 + 120));
      v45 = *(v17 + 40);
      v46 = OUTLINED_FUNCTION_158();
      v47(v46);
      OUTLINED_FUNCTION_1_87();
      outlined destroy of SearchPropertyResponse(v38, v48);
      __swift_destroy_boxed_opaque_existential_1Tm((v16 + 96));
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v39 + 14) = v49;
      _os_log_impl(&dword_25D85C000, v14, v34, "Found property %s in %s", v39, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
      v50 = *(v16 + 264);

      OUTLINED_FUNCTION_1_87();
      outlined destroy of SearchPropertyResponse(v50, v51);
      OUTLINED_FUNCTION_5_57();
      outlined destroy of SearchPropertyResponse(v36, v52);
    }

    v53 = *(v16 + 400);
    v55 = *(v16 + 296);
    v54 = *(v16 + 304);
    OUTLINED_FUNCTION_23_28();
    _s10OmniSearch0B15PropertyRequestVWOcTm_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v16 + 400);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v118 = OUTLINED_FUNCTION_26_30();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v118, v119, v120, v121);
      v26 = v122;
    }

    OUTLINED_FUNCTION_138_5();
    if (v57)
    {
      OUTLINED_FUNCTION_117();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v123, v124, v125, v126);
      v26 = v127;
    }

    v15 = *(v16 + 344);
    v59 = *(v16 + 296);
    v58 = *(v16 + 304);
    v60 = *(v16 + 288);
    OUTLINED_FUNCTION_4_65();
    outlined destroy of SearchPropertyResponse(v61, v62);
    OUTLINED_FUNCTION_5_57();
    outlined destroy of SearchPropertyResponse(v15, v63);
    *(v26 + 16) = v14;
    v64 = *(v60 + 80);
    OUTLINED_FUNCTION_33_34();
    v65 = *(v60 + 72);
    OUTLINED_FUNCTION_2_78();
    outlined init with take of SearchPropertyResponse();
  }

  OUTLINED_FUNCTION_181_9();
  if (v28)
  {
    if (*(v26 + 16))
    {
      v67 = OUTLINED_FUNCTION_123_12();
      v68(v67);
      OUTLINED_FUNCTION_87_11();
      _s10OmniSearch0B15PropertyRequestVWOcTm_0();
      v69 = *(&v14->isa + *(v15 + 28));

      OUTLINED_FUNCTION_197_9();
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v15);
      OUTLINED_FUNCTION_1_87();
      outlined destroy of SearchPropertyResponse(v14, v73);
    }

    else
    {

      OUTLINED_FUNCTION_186_6();
      if (!v28)
      {
        OUTLINED_FUNCTION_35_0();
      }

      v85 = *(v16 + 248);
      v86 = *(v16 + 208);
      v87 = type metadata accessor for Logger();
      v88 = __swift_project_value_buffer(v87, static Logging.search);
      OUTLINED_FUNCTION_8_55();
      OUTLINED_FUNCTION_94();
      _s10OmniSearch0B15PropertyRequestVWOcTm_0();
      v89 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_117_14();
      os_log_type_enabled(v89, v90);
      OUTLINED_FUNCTION_134_12();
      if (v91)
      {
        v92 = OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_193_8(4.8149e-34);
        a9 = v86;
        v93 = OUTLINED_FUNCTION_66_18();
        v94(v93);
        OUTLINED_FUNCTION_33_27();
        OUTLINED_FUNCTION_1_87();
        outlined destroy of SearchPropertyResponse(v17, v95);
        __swift_destroy_boxed_opaque_existential_1Tm((v16 + 16));
        OUTLINED_FUNCTION_107();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_112_2();

        *(v92 + 4) = v88;
        OUTLINED_FUNCTION_121_11(&dword_25D85C000, v96, v97, "No properties found for %s");
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_33_0();

        (*(v88 + 8))(a10, v86);
      }

      else
      {

        OUTLINED_FUNCTION_1_87();
        outlined destroy of SearchPropertyResponse(v17, v98);
        v99 = *(v88 + 8);
        v100 = OUTLINED_FUNCTION_107();
        v102(v100, v101);
      }

      v103 = *(v16 + 232);
      v104 = *(v16 + 200);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
    }

    OUTLINED_FUNCTION_35_31();
    v128 = v109;

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_83_0();

    return v111(v110, v111, v112, v113, v114, v115, v116, v117, a9, v128, a11, a12, a13, a14);
  }

  else
  {
    *(v16 + 392) = v66;
    *(v16 + 400) = v26;
    v74 = *(v16 + 384);
    v75 = *(v16 + 424);
    v76 = *(v16 + 344);
    v77 = *(v16 + 216);
    OUTLINED_FUNCTION_3_70();
    _s10OmniSearch0B15PropertyRequestVWOcTm_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v16 + 408) = v78;
    *v78 = v79;
    OUTLINED_FUNCTION_16_45();
    OUTLINED_FUNCTION_83_0();

    return RequestedPropertyController.extractPropertyValueRecursive(mirror:for:)(v80, v81, v82);
  }
}

uint64_t closure #1 in closure #1 in RequestedPropertyController.processRequestedProperties(for:using:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 416) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t closure #1 in closure #1 in RequestedPropertyController.processRequestedProperties(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void), void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_186_6();
  if (!v17)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v18 = *(v16 + 416);
  v19 = *(v16 + 344);
  v20 = *(v16 + 328);
  v21 = *(v16 + 240);
  v22 = *(v16 + 208);
  v105 = type metadata accessor for Logger();
  __swift_project_value_buffer(v105, static Logging.search);
  OUTLINED_FUNCTION_3_70();
  OUTLINED_FUNCTION_88();
  _s10OmniSearch0B15PropertyRequestVWOcTm_0();
  OUTLINED_FUNCTION_8_55();
  _s10OmniSearch0B15PropertyRequestVWOcTm_0();
  v23 = v18;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v16 + 416);
  v28 = *(v16 + 344);
  v29 = *(v16 + 328);
  if (v26)
  {
    v30 = *(v16 + 312);
    v20 = *(v16 + 240);
    v31 = OUTLINED_FUNCTION_49_0();
    a11 = v28;
    v28 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    a13 = a9;
    *v31 = 136315650;
    v32 = *(v29 + *(v30 + 20));
    EntityProperty.wrappedValue.getter();
    v33 = *(v16 + 168);
    v34 = *(v16 + 176);
    OUTLINED_FUNCTION_5_57();
    a10 = v35;
    outlined destroy of SearchPropertyResponse(v29, v36);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    SearchResultItem.associatedValue.getter((v16 + 56));
    v38 = *(v16 + 88);
    __swift_project_boxed_opaque_existential_1((v16 + 56), *(v16 + 80));
    v39 = *(v38 + 40);
    v40 = OUTLINED_FUNCTION_241_0();
    v41(v40);
    v29 = v42;
    OUTLINED_FUNCTION_1_87();
    outlined destroy of SearchPropertyResponse(v20, v43);
    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 56));
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v31 + 14) = v44;
    *(v31 + 22) = 2112;
    v45 = v27;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 24) = v46;
    *v28 = v46;
    _os_log_impl(&dword_25D85C000, v24, v25, "Error extracting property %s from %s: %@", v31, 0x20u);
    outlined destroy of EagerResolutionService?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_42_0();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_33_0();

    v48 = a10;
    v47 = a11;
  }

  else
  {
    v49 = *(v16 + 240);

    OUTLINED_FUNCTION_1_87();
    outlined destroy of SearchPropertyResponse(v49, v50);
    OUTLINED_FUNCTION_9_52();
    outlined destroy of SearchPropertyResponse(v28, v51);
    v47 = v29;
    v48 = v49;
  }

  outlined destroy of SearchPropertyResponse(v47, v48);
  OUTLINED_FUNCTION_181_9();
  if (v17)
  {
    if (*(*(v16 + 400) + 16))
    {
      v53 = OUTLINED_FUNCTION_123_12();
      v54(v53);
      OUTLINED_FUNCTION_87_11();
      _s10OmniSearch0B15PropertyRequestVWOcTm_0();
      v55 = *(v28 + *(v20 + 28));

      OUTLINED_FUNCTION_197_9();
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v20);
      OUTLINED_FUNCTION_1_87();
      outlined destroy of SearchPropertyResponse(v28, v59);
    }

    else
    {
      v71 = *(v16 + 400);

      OUTLINED_FUNCTION_186_6();
      if (!v17)
      {
        OUTLINED_FUNCTION_35_0();
      }

      v72 = *(v16 + 248);
      v73 = *(v16 + 208);
      v74 = __swift_project_value_buffer(v105, static Logging.search);
      OUTLINED_FUNCTION_8_55();
      OUTLINED_FUNCTION_94();
      _s10OmniSearch0B15PropertyRequestVWOcTm_0();
      v75 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_117_14();
      os_log_type_enabled(v75, v76);
      OUTLINED_FUNCTION_134_12();
      if (v77)
      {
        v78 = OUTLINED_FUNCTION_51_0();
        v79 = OUTLINED_FUNCTION_49_0();
        *v78 = 136315138;
        a13 = v79;
        SearchResultItem.associatedValue.getter((v16 + 16));
        a11 = v73;
        v80 = OUTLINED_FUNCTION_66_18();
        v81(v80);
        OUTLINED_FUNCTION_33_27();
        OUTLINED_FUNCTION_1_87();
        outlined destroy of SearchPropertyResponse(v29, v82);
        __swift_destroy_boxed_opaque_existential_1Tm((v16 + 16));
        OUTLINED_FUNCTION_107();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_112_2();

        *(v78 + 4) = v29;
        OUTLINED_FUNCTION_121_11(&dword_25D85C000, v83, v84, "No properties found for %s");
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_33_0();

        (*(v74 + 8))(v74, v73);
      }

      else
      {

        OUTLINED_FUNCTION_1_87();
        outlined destroy of SearchPropertyResponse(v29, v85);
        v86 = *(v74 + 8);
        v87 = OUTLINED_FUNCTION_107();
        v89(v87, v88);
      }

      v90 = *(v16 + 232);
      v91 = *(v16 + 200);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
    }

    OUTLINED_FUNCTION_35_31();
    v106 = v96;

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_115();

    return v98(v97, v98, v99, v100, v101, v102, v103, v104, a9, a10, a11, v106, a13, a14, a15, a16);
  }

  else
  {
    *(v16 + 392) = v52;
    v60 = *(v16 + 384);
    v61 = *(v16 + 424);
    v62 = *(v16 + 344);
    v63 = *(v16 + 216);
    OUTLINED_FUNCTION_3_70();
    _s10OmniSearch0B15PropertyRequestVWOcTm_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v16 + 408) = v64;
    *v64 = v65;
    OUTLINED_FUNCTION_16_45();
    OUTLINED_FUNCTION_115();

    return RequestedPropertyController.extractPropertyValueRecursive(mirror:for:)(v66, v67, v68);
  }
}

uint64_t RequestedPropertyController.extractPropertyValueRecursive(mirror:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v6 = type metadata accessor for SearchPropertyResponse(0);
  v4[29] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v8 = type metadata accessor for Mirror();
  v4[31] = v8;
  v9 = *(v8 - 8);
  v4[32] = v9;
  v10 = *(v9 + 64) + 15;
  v4[33] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestedPropertyController.extractPropertyValueRecursive(mirror:for:), 0, 0);
}

uint64_t RequestedPropertyController.extractPropertyValueRecursive(mirror:for:)()
{
  OUTLINED_FUNCTION_72();
  v3 = *(v2 + 200);
  Mirror.children.getter();
  *(v2 + 280) = dispatch thunk of _AnySequenceBox._makeIterator()();

  v4 = *(v2 + 280);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (!*(v2 + 56))
  {
    v8 = *(v2 + 280);
    v9 = *(v2 + 232);
    v10 = *(v2 + 192);

    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
    OUTLINED_FUNCTION_159_7();

    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_204();

    __asm { BRAA            X1, X16 }
  }

  v5 = OUTLINED_FUNCTION_180_8();
  OUTLINED_FUNCTION_195_7(v5);
  if (v1)
  {
    if (v0 == *(v2 + 160) && v1 == *(v2 + 168))
    {
      v23 = *(v2 + 168);

LABEL_17:
      v24 = *(v2 + 272);
      v25 = *(v2 + 208);
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_155_10();
      *(v2 + 329) = *(v2 + 328);
      type metadata accessor for IntentApplication();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v2 + 296) = v30;
      *v30 = v31;
      v30[1] = RequestedPropertyController.extractPropertyValueRecursive(mirror:for:);
      v32 = *(v2 + 272);
      v33 = *(v2 + 216);
      v34 = *(v2 + 192);
      OUTLINED_FUNCTION_50_19();
      OUTLINED_FUNCTION_204();

      return RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:)();
    }

    OUTLINED_FUNCTION_32_0();
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = *(v2 + 168);
  }

  v17 = *(v2 + 264);
  outlined init with copy of EagerResolutionService?();
  v18 = *(v2 + 120);

  Mirror.init(reflecting:)();
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v2 + 312) = v19;
  *v19 = v20;
  OUTLINED_FUNCTION_67_20(v19);
  OUTLINED_FUNCTION_204();

  return RequestedPropertyController.extractPropertyValueRecursive(mirror:for:)();
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = v4[37];
  v6 = v4[36];
  v7 = v4[34];
  v8 = *v1;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  *(v10 + 304) = v0;

  outlined destroy of EagerResolutionService?(v7, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 280);

  outlined destroy of EagerResolutionService?(v0 + 64, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
  OUTLINED_FUNCTION_159_7();

  OUTLINED_FUNCTION_106();

  return v2();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_72();
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  (*(*(v1 + 256) + 8))(*(v1 + 264), *(v1 + 248));
  OUTLINED_FUNCTION_31_28();
  if (!v6)
  {
    v8 = *(v1 + 280);
    v9 = *(v1 + 232);
    v10 = *(v1 + 240);
    v11 = *(v1 + 224);
    v12 = *(v1 + 192);

    outlined init with take of SearchPropertyResponse();
    OUTLINED_FUNCTION_74_20();
    outlined init with take of SearchPropertyResponse();
    v13 = OUTLINED_FUNCTION_27_27();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    outlined destroy of EagerResolutionService?(v1 + 64, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
    goto LABEL_12;
  }

  outlined destroy of EagerResolutionService?(*(v1 + 224), &_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
  outlined destroy of EagerResolutionService?(v1 + 64, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
  v4 = *(v1 + 280);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (!*(v1 + 56))
  {
    v16 = *(v1 + 280);
    v17 = *(v1 + 232);
    v18 = *(v1 + 192);

    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v17);
LABEL_12:
    OUTLINED_FUNCTION_159_7();

    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_204();

    __asm { BRAA            X1, X16 }
  }

  v5 = OUTLINED_FUNCTION_180_8();
  OUTLINED_FUNCTION_195_7(v5);
  if (v0)
  {
    v6 = v2 == *(v1 + 160) && v0 == *(v1 + 168);
    if (v6)
    {
      v31 = *(v1 + 168);

LABEL_20:
      v32 = *(v1 + 272);
      v33 = *(v1 + 208);
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_155_10();
      *(v1 + 329) = *(v1 + 328);
      type metadata accessor for IntentApplication();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v1 + 296) = v38;
      *v38 = v39;
      v38[1] = RequestedPropertyController.extractPropertyValueRecursive(mirror:for:);
      v40 = *(v1 + 272);
      v41 = *(v1 + 216);
      v42 = *(v1 + 192);
      OUTLINED_FUNCTION_50_19();
      OUTLINED_FUNCTION_204();

      return RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:)();
    }

    OUTLINED_FUNCTION_32_0();
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v24 = *(v1 + 168);
  }

  v25 = *(v1 + 264);
  outlined init with copy of EagerResolutionService?();
  v26 = *(v1 + 120);

  Mirror.init(reflecting:)();
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 312) = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_67_20();
  OUTLINED_FUNCTION_204();

  return RequestedPropertyController.extractPropertyValueRecursive(mirror:for:)();
}

{
  OUTLINED_FUNCTION_72();
  v1 = v0[35];

  v2 = v0[38];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[30];
  v6 = v0[28];
  outlined destroy of EagerResolutionService?((v0 + 8), &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

  OUTLINED_FUNCTION_127();

  return v7();
}

{
  OUTLINED_FUNCTION_72();
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_107();
  v7(v6);
  v8 = v0[40];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[30];
  v12 = v0[28];
  outlined destroy of EagerResolutionService?((v0 + 8), &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

  OUTLINED_FUNCTION_127();

  return v13();
}

uint64_t RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  *(v1 + 744) = v0;
  *(v1 + 736) = v4;
  *(v1 + 728) = v5;
  *(v1 + 720) = v6;
  *(v1 + 712) = v7;
  *(v1 + 704) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  *(v1 + 752) = OUTLINED_FUNCTION_160();
  *(v1 + 760) = swift_task_alloc();
  *(v1 + 768) = swift_task_alloc();
  v12 = type metadata accessor for URL();
  *(v1 + 776) = v12;
  OUTLINED_FUNCTION_21(v12);
  *(v1 + 784) = v13;
  v15 = *(v14 + 64);
  *(v1 + 792) = OUTLINED_FUNCTION_199();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_114(v16);
  v18 = *(v17 + 64);
  *(v1 + 800) = OUTLINED_FUNCTION_199();
  v19 = type metadata accessor for PommesContext();
  *(v1 + 808) = v19;
  OUTLINED_FUNCTION_21(v19);
  *(v1 + 816) = v20;
  v22 = *(v21 + 64);
  *(v1 + 824) = OUTLINED_FUNCTION_199();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  OUTLINED_FUNCTION_114(v23);
  v25 = *(v24 + 64);
  *(v1 + 832) = OUTLINED_FUNCTION_160();
  *(v1 + 840) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_114(v26);
  v28 = *(v27 + 64);
  *(v1 + 848) = OUTLINED_FUNCTION_160();
  *(v1 + 856) = swift_task_alloc();
  *(v1 + 864) = swift_task_alloc();
  *(v1 + 872) = swift_task_alloc();
  *(v1 + 880) = swift_task_alloc();
  v29 = type metadata accessor for IntentFile();
  *(v1 + 888) = v29;
  OUTLINED_FUNCTION_21(v29);
  *(v1 + 896) = v30;
  v32 = *(v31 + 64);
  *(v1 + 904) = OUTLINED_FUNCTION_160();
  *(v1 + 912) = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  OUTLINED_FUNCTION_114(v33);
  v35 = *(v34 + 64);
  *(v1 + 920) = OUTLINED_FUNCTION_160();
  *(v1 + 928) = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_114(v36);
  v38 = *(v37 + 64);
  *(v1 + 936) = OUTLINED_FUNCTION_160();
  *(v1 + 944) = swift_task_alloc();
  *(v1 + 952) = swift_task_alloc();
  *(v1 + 960) = swift_task_alloc();
  v39 = type metadata accessor for DateComponents();
  *(v1 + 968) = v39;
  OUTLINED_FUNCTION_21(v39);
  *(v1 + 976) = v40;
  v42 = *(v41 + 64);
  *(v1 + 984) = OUTLINED_FUNCTION_160();
  *(v1 + 992) = swift_task_alloc();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v43);
  v45 = *(v44 + 64);
  *(v1 + 1000) = OUTLINED_FUNCTION_160();
  *(v1 + 1008) = swift_task_alloc();
  *(v1 + 1016) = swift_task_alloc();
  v46 = type metadata accessor for Date();
  *(v1 + 1024) = v46;
  OUTLINED_FUNCTION_21(v46);
  *(v1 + 1032) = v47;
  v49 = *(v48 + 64);
  *(v1 + 1040) = OUTLINED_FUNCTION_199();
  v50 = type metadata accessor for SearchPropertyResponse(0);
  *(v1 + 1048) = v50;
  OUTLINED_FUNCTION_114(v50);
  v52 = *(v51 + 64);
  *(v1 + 1056) = OUTLINED_FUNCTION_199();
  *(v1 + 699) = *v3;
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v53, v54, v55);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 1072);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 1080) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 1088);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 1096) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 1104);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 1112) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 1120);
  *v3 = *v1;
  *(v2 + 1128) = v6;
  *(v2 + 1136) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 1144);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 1152) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 1160);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 1168) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 1176);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 1184) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v33 = *(v32 + 728);
  v34 = *(v32 + 720);
  v35 = type metadata accessor for Logger();
  *(v32 + 1064) = __swift_project_value_buffer(v35, static Logging.search);
  outlined init with copy of Any(v33, v32 + 16);

  v36 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_259())
  {
    v37 = *(v32 + 699);
    v38 = *(v32 + 720);
    v39 = *(v32 + 712);
    v40 = OUTLINED_FUNCTION_49_0();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_101_11(v41);
    *v40 = 136315651;
    *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v40 + 12) = 2080;
    *(v32 + 698) = v37;
    String.init<A>(describing:)();
    v43 = v42;
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_169_10();
    *(v40 + 14) = v39;
    *(v40 + 22) = 2085;
    outlined init with copy of Any(v32 + 16, v32 + 624);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_188_3();
    OUTLINED_FUNCTION_51_20((v32 + 16));
    OUTLINED_FUNCTION_135_10();
    *(v40 + 24) = v43;
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v44, v45, v46, v47, v48, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v32 + 16));
  }

  v49 = *(v32 + 699);
  v50 = *(v32 + 1056);
  v51 = *(v32 + 1048);
  v52 = *(v32 + 720);
  v53 = *(v32 + 712);
  SearchPropertyResponse.init()();
  v54 = *(v50 + *(v51 + 20));
  *(v32 + 656) = v53;
  *(v32 + 664) = v52;

  EntityProperty.wrappedValue.setter();
  v55 = *(v50 + *(v51 + 24));
  *(v32 + 697) = v49;
  EntityProperty.wrappedValue.setter();
  switch(v49)
  {
    case 1:
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v32 + 1072) = v94;
      *v94 = v95;
      v94[1] = RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:);
      v96 = *(v32 + 1016);
      OUTLINED_FUNCTION_136_12();
      OUTLINED_FUNCTION_47_20();

      return RequestedPropertyController.convertToDate(_:)(v97, v98);
    case 2:
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v32 + 1088) = v73;
      *v73 = v74;
      v73[1] = RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:);
      v75 = *(v32 + 960);
      goto LABEL_17;
    case 3:
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v32 + 1104) = v76;
      *v76 = v77;
      v76[1] = RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:);
      v78 = *(v32 + 936);
LABEL_17:
      OUTLINED_FUNCTION_136_12();
      OUTLINED_FUNCTION_47_20();

      return RequestedPropertyController.convertToDateComponents(_:)(v79, v80);
    case 4:
      v60 = swift_task_alloc();
      *(v32 + 1120) = v60;
      *v60 = v32;
      v60[1] = RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:);
      v61 = *(v32 + 744);
      v62 = *(v32 + 728);
      OUTLINED_FUNCTION_47_20();

      return RequestedPropertyController.convertToIntentPersons(_:)(v63);
    case 5:
      v100 = *(v32 + 744);
      v101 = RequestedPropertyController.convertToDouble(_:)(*(v32 + 728));
      if ((v102 & 1) == 0)
      {
        v127 = *(*(v32 + 1056) + *(*(v32 + 1048) + 52));
        *(v32 + 688) = v101;
        *(v32 + 696) = 0;
        goto LABEL_36;
      }

      outlined init with copy of Any(*(v32 + 728), v32 + 240);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      v105 = OUTLINED_FUNCTION_85_15(v104);
      v106 = *(v32 + 1056);
      if (v105)
      {
        OUTLINED_FUNCTION_51_0();
        v107 = OUTLINED_FUNCTION_11_26();
        OUTLINED_FUNCTION_101_11(v107);
        *v50 = 136642819;
        outlined init with copy of Any(v32 + 240, v32 + 272);
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_188_3();
        OUTLINED_FUNCTION_51_20((v32 + 240));
        OUTLINED_FUNCTION_135_10();
        *(v50 + 4) = v51;
        v110 = "RequestedPropertyController: Error failed to convert %{sensitive}s to number";
        goto LABEL_40;
      }

      v133 = (v32 + 240);
      goto LABEL_43;
    case 6:
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v32 + 1144) = v111;
      *v111 = v112;
      v111[1] = RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:);
      v113 = *(v32 + 880);
      v114 = *(v32 + 744);
      v115 = *(v32 + 736);
      v116 = *(v32 + 728);
      OUTLINED_FUNCTION_47_20();

      return RequestedPropertyController.convertToMedia(_:app:)(v117, v118, v119);
    case 7:
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v32 + 1160) = v82;
      *v82 = v83;
      v82[1] = RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:);
      v84 = *(v32 + 856);
      v85 = *(v32 + 840);
      v86 = *(v32 + 744);
      v87 = *(v32 + 736);
      v88 = *(v32 + 728);
      OUTLINED_FUNCTION_47_20();

      return RequestedPropertyController.convertToNavigation(_:app:)(v89, v90, v91, v92);
    case 8:
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v32 + 1176) = v121;
      *v121 = v122;
      v121[1] = RequestedPropertyController.createSearchPropertyResponse(name:type:value:app:);
      v123 = *(v32 + 768);
      OUTLINED_FUNCTION_136_12();
      OUTLINED_FUNCTION_47_20();

      return RequestedPropertyController.convertToURL(_:)(v124, v125);
    case 9:
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_16_11(v67))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_25_6();
        _os_log_impl(v68, v69, v70, v71, v72, 2u);
        OUTLINED_FUNCTION_2_8();
      }

      goto LABEL_37;
    default:
      v56 = *(v32 + 744);
      v57 = RequestedPropertyController.convertToString(_:)(*(v32 + 728));
      if (v58)
      {
        v59 = *(*(v32 + 1056) + *(*(v32 + 1048) + 28));
        *(v32 + 672) = v57;
        *(v32 + 680) = v58;
LABEL_36:
        EntityProperty.wrappedValue.setter();
LABEL_37:
        v128 = *(v32 + 1056);
        v129 = *(v32 + 704);
        OUTLINED_FUNCTION_2_78();
        outlined init with take of SearchPropertyResponse();
      }

      else
      {
        outlined init with copy of Any(*(v32 + 728), v32 + 560);
        v103 = Logger.logObject.getter();
        v130 = static os_log_type_t.error.getter();
        v131 = OUTLINED_FUNCTION_85_15(v130);
        v106 = *(v32 + 1056);
        if (v131)
        {
          OUTLINED_FUNCTION_51_0();
          v132 = OUTLINED_FUNCTION_11_26();
          OUTLINED_FUNCTION_101_11(v132);
          *v50 = 136642819;
          outlined init with copy of Any(v32 + 560, v32 + 592);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_188_3();
          OUTLINED_FUNCTION_51_20((v32 + 560));
          OUTLINED_FUNCTION_135_10();
          *(v50 + 4) = v51;
          v110 = "RequestedPropertyController: Error failed to convert %{sensitive}s to stringValue";
LABEL_40:
          OUTLINED_FUNCTION_40_27(&dword_25D85C000, v108, v109, v110);
          OUTLINED_FUNCTION_54_26();
          OUTLINED_FUNCTION_37_0();
        }

        else
        {

          v133 = (v32 + 560);
LABEL_43:
          __swift_destroy_boxed_opaque_existential_1Tm(v133);
        }

        outlined destroy of SearchPropertyResponse(v106, type metadata accessor for SearchPropertyResponse);
      }

      v134 = *(v32 + 1056);
      v135 = *(v32 + 1048);
      v136 = *(v32 + 1040);
      v137 = *(v32 + 1016);
      v138 = *(v32 + 1008);
      v139 = *(v32 + 1000);
      v140 = *(v32 + 992);
      v141 = *(v32 + 984);
      v142 = *(v32 + 960);
      v143 = *(v32 + 952);
      OUTLINED_FUNCTION_0_101();
      OUTLINED_FUNCTION_60_15(v144, v145, v146, v147);

      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_47_20();

      return v149(v148, v149, v150, v151, v152, v153, v154, v155, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
  }
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  v36 = v33[128];
  v37 = v33[127];
  OUTLINED_FUNCTION_71_10(v37);
  if (v38)
  {
    OUTLINED_FUNCTION_153_7();
    outlined destroy of EagerResolutionService?(v37, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of Any(v36, (v33 + 62));
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v41 = OUTLINED_FUNCTION_85_15(v40);
    v42 = v33[132];
    if (v41)
    {
      OUTLINED_FUNCTION_51_0();
      v43 = OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_101_11(v43);
      *v34 = 136642819;
      outlined init with copy of Any((v33 + 62), (v33 + 66));
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_188_3();
      OUTLINED_FUNCTION_51_20(v33 + 62);
      OUTLINED_FUNCTION_135_10();
      *(v34 + 4) = v37;
      OUTLINED_FUNCTION_40_27(&dword_25D85C000, v44, v45, "RequestedPropertyController: Error failed to convert %{sensitive}s to dateValue");
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v33 + 62);
    }

    outlined destroy of SearchPropertyResponse(v42, type metadata accessor for SearchPropertyResponse);
  }

  else
  {
    OUTLINED_FUNCTION_150_7();
    v46 = v33[130];
    v47 = v33[129];
    v48 = v33[126];
    v49 = v33[125];
    v50 = OUTLINED_FUNCTION_19_41();
    v51(v50);
    v52 = OUTLINED_FUNCTION_18_30();
    v53(v52);
    v54 = OUTLINED_FUNCTION_27_27();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v36);
    v57 = *(v32 + *(v35 + 32));
    OUTLINED_FUNCTION_71_18();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_113_13();
    v58 = OUTLINED_FUNCTION_75_18();
    v59(v58);
    v60 = v33[132];
    v61 = v33[88];
    OUTLINED_FUNCTION_2_78();
    outlined init with take of SearchPropertyResponse();
  }

  v62 = v33[132];
  v63 = v33[131];
  v64 = v33[130];
  v65 = v33[127];
  v66 = v33[126];
  v67 = v33[125];
  v68 = v33[124];
  v69 = v33[123];
  v70 = v33[120];
  v71 = v33[119];
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_60_15(v72, v73, v74, v75);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_47_20();

  return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  v36 = v33[121];
  v37 = v33[120];
  OUTLINED_FUNCTION_71_10(v37);
  if (v38)
  {
    OUTLINED_FUNCTION_153_7();
    outlined destroy of EagerResolutionService?(v37, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    outlined init with copy of Any(v36, (v33 + 54));
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v41 = OUTLINED_FUNCTION_85_15(v40);
    v42 = v33[132];
    if (v41)
    {
      OUTLINED_FUNCTION_51_0();
      v43 = OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_101_11(v43);
      *v34 = 136642819;
      outlined init with copy of Any((v33 + 54), (v33 + 58));
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_188_3();
      OUTLINED_FUNCTION_51_20(v33 + 54);
      OUTLINED_FUNCTION_135_10();
      *(v34 + 4) = v37;
      OUTLINED_FUNCTION_40_27(&dword_25D85C000, v44, v45, "RequestedPropertyController: Error failed to convert %{sensitive}s to dateComponents");
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v33 + 54);
    }

    outlined destroy of SearchPropertyResponse(v42, type metadata accessor for SearchPropertyResponse);
  }

  else
  {
    OUTLINED_FUNCTION_150_7();
    v46 = v33[124];
    v47 = v33[122];
    v48 = v33[119];
    v49 = v33[118];
    v50 = OUTLINED_FUNCTION_19_41();
    v51(v50);
    v52 = OUTLINED_FUNCTION_18_30();
    v53(v52);
    v54 = OUTLINED_FUNCTION_27_27();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v36);
    v57 = *(v32 + *(v35 + 36));
    OUTLINED_FUNCTION_71_18();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_113_13();
    v58 = OUTLINED_FUNCTION_75_18();
    v59(v58);
    v60 = v33[132];
    v61 = v33[88];
    OUTLINED_FUNCTION_2_78();
    outlined init with take of SearchPropertyResponse();
  }

  v62 = v33[132];
  v63 = v33[131];
  v64 = v33[130];
  v65 = v33[127];
  v66 = v33[126];
  v67 = v33[125];
  v68 = v33[124];
  v69 = v33[123];
  v70 = v33[120];
  v71 = v33[119];
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_60_15(v72, v73, v74, v75);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_47_20();

  return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  v36 = v33[121];
  v37 = v33[117];
  OUTLINED_FUNCTION_71_10(v37);
  if (v38)
  {
    OUTLINED_FUNCTION_153_7();
    outlined destroy of EagerResolutionService?(v37, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    outlined init with copy of Any(v36, (v33 + 46));
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v41 = OUTLINED_FUNCTION_85_15(v40);
    v42 = v33[132];
    if (v41)
    {
      OUTLINED_FUNCTION_51_0();
      v43 = OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_101_11(v43);
      *v34 = 136642819;
      outlined init with copy of Any((v33 + 46), (v33 + 50));
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_188_3();
      OUTLINED_FUNCTION_51_20(v33 + 46);
      OUTLINED_FUNCTION_135_10();
      *(v34 + 4) = v37;
      OUTLINED_FUNCTION_40_27(&dword_25D85C000, v44, v45, "RequestedPropertyController: Error failed to convert %{sensitive}s to durationValue");
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v33 + 46);
    }

    outlined destroy of SearchPropertyResponse(v42, type metadata accessor for SearchPropertyResponse);
  }

  else
  {
    OUTLINED_FUNCTION_150_7();
    v46 = v33[123];
    v47 = v33[122];
    v48 = v33[119];
    v49 = v33[118];
    v50 = OUTLINED_FUNCTION_19_41();
    v51(v50);
    v52 = OUTLINED_FUNCTION_18_30();
    v53(v52);
    v54 = OUTLINED_FUNCTION_27_27();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v36);
    v57 = *(v32 + *(v35 + 40));
    OUTLINED_FUNCTION_71_18();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_113_13();
    v58 = OUTLINED_FUNCTION_75_18();
    v59(v58);
    v60 = v33[132];
    v61 = v33[88];
    OUTLINED_FUNCTION_2_78();
    outlined init with take of SearchPropertyResponse();
  }

  v62 = v33[132];
  v63 = v33[131];
  v64 = v33[130];
  v65 = v33[127];
  v66 = v33[126];
  v67 = v33[125];
  v68 = v33[124];
  v69 = v33[123];
  v70 = v33[120];
  v71 = v33[119];
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_60_15(v72, v73, v74, v75);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_47_20();

  return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  if (v32[141])
  {
    v35 = v32[132];
    v36 = v32[131];
    v37 = v32[115];
    specialized Collection.first.getter(v32[141], v32[116]);

    v38 = *(v35 + *(v36 + 48));
    OUTLINED_FUNCTION_102_12();
    outlined init with copy of EagerResolutionService?();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_94_12();
    outlined destroy of EagerResolutionService?(v39, v40, v41);
    v42 = v32[132];
    v43 = v32[88];
    OUTLINED_FUNCTION_2_78();
    outlined init with take of SearchPropertyResponse();
  }

  else
  {
    v44 = v32[133];
    outlined init with copy of Any(v32[91], (v32 + 38));
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = OUTLINED_FUNCTION_85_15(v46);
    v48 = v32[132];
    if (v47)
    {
      OUTLINED_FUNCTION_51_0();
      v49 = OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_101_11(v49);
      *v33 = 136642819;
      outlined init with copy of Any((v32 + 38), (v32 + 42));
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_188_3();
      OUTLINED_FUNCTION_51_20(v32 + 38);
      OUTLINED_FUNCTION_135_10();
      *(v33 + 4) = v34;
      OUTLINED_FUNCTION_40_27(&dword_25D85C000, v50, v51, "RequestedPropertyController: Error failed to convert %{sensitive}s to personValue");
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v32 + 38);
    }

    outlined destroy of SearchPropertyResponse(v48, type metadata accessor for SearchPropertyResponse);
  }

  v52 = v32[132];
  v53 = v32[131];
  v54 = v32[130];
  v55 = v32[127];
  v56 = v32[126];
  v57 = v32[125];
  v58 = v32[124];
  v59 = v32[123];
  v60 = v32[120];
  v61 = v32[119];
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_60_15(v62, v63, v64, v65);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_47_20();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  v36 = v33[111];
  v37 = v33[110];
  OUTLINED_FUNCTION_71_10(v37);
  if (v38)
  {
    OUTLINED_FUNCTION_153_7();
    outlined destroy of EagerResolutionService?(v37, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    outlined init with copy of Any(v36, (v33 + 22));
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v41 = OUTLINED_FUNCTION_85_15(v40);
    v42 = v33[132];
    if (v41)
    {
      OUTLINED_FUNCTION_51_0();
      v43 = OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_101_11(v43);
      *v34 = 136642819;
      outlined init with copy of Any((v33 + 22), (v33 + 26));
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_188_3();
      OUTLINED_FUNCTION_51_20(v33 + 22);
      OUTLINED_FUNCTION_135_10();
      *(v34 + 4) = v37;
      OUTLINED_FUNCTION_40_27(&dword_25D85C000, v44, v45, "RequestedPropertyController: Error failed to convert %{sensitive}s to mediaValue");
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v33 + 22);
    }

    outlined destroy of SearchPropertyResponse(v42, type metadata accessor for SearchPropertyResponse);
  }

  else
  {
    OUTLINED_FUNCTION_150_7();
    v46 = v33[114];
    v47 = v33[112];
    v48 = v33[109];
    v49 = v33[108];
    v50 = OUTLINED_FUNCTION_19_41();
    v51(v50);
    v52 = OUTLINED_FUNCTION_18_30();
    v53(v52);
    v54 = OUTLINED_FUNCTION_27_27();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v36);
    v57 = *(v32 + *(v35 + 56));
    OUTLINED_FUNCTION_71_18();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_113_13();
    v58 = OUTLINED_FUNCTION_75_18();
    v59(v58);
    v60 = v33[132];
    v61 = v33[88];
    OUTLINED_FUNCTION_2_78();
    outlined init with take of SearchPropertyResponse();
  }

  v62 = v33[132];
  v63 = v33[131];
  v64 = v33[130];
  v65 = v33[127];
  v66 = v33[126];
  v67 = v33[125];
  v68 = v33[124];
  v69 = v33[123];
  v70 = v33[120];
  v71 = v33[119];
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_60_15(v72, v73, v74, v75);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_47_20();

  return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  v34 = v32[111];
  v35 = v32[107];
  v36 = v32[106];
  outlined init with copy of EagerResolutionService?();
  OUTLINED_FUNCTION_31_28();
  if (v37)
  {
    v38 = v32[133];
    v39 = v32[91];
    outlined destroy of EagerResolutionService?(v32[106], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    outlined init with copy of Any(v39, (v32 + 14));
    v40 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_117_14();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v32[132];
    v44 = v32[107];
    v45 = v32[105];
    if (v42)
    {
      v46 = OUTLINED_FUNCTION_51_0();
      a28 = OUTLINED_FUNCTION_49_0();
      *v46 = 136642819;
      outlined init with copy of Any((v32 + 14), (v32 + 18));
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_164_4();
      __swift_destroy_boxed_opaque_existential_1Tm(v32 + 14);
      OUTLINED_FUNCTION_241_0();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v46 + 4) = v47;
      _os_log_impl(&dword_25D85C000, v40, v33, "RequestedPropertyController: Error failed to convert %{sensitive}s to navigationValue", v46, 0xCu);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_33_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v32 + 14);
    }

    outlined destroy of EagerResolutionService?(v45, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of EagerResolutionService?(v44, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    OUTLINED_FUNCTION_4_65();
    v74 = outlined destroy of SearchPropertyResponse(v43, v73);
    v76 = 1;
  }

  else
  {
    v48 = v32[132];
    v49 = v32[131];
    v50 = v32[113];
    v51 = v32[112];
    v52 = v32[111];
    v53 = v32[109];
    v54 = v32[108];
    v55 = v32[105];
    v56 = v32[104];
    v160 = v32[101];
    (*(v51 + 32))(v50, v32[106], v52);
    (*(v51 + 16))(v53, v50, v52);
    v57 = OUTLINED_FUNCTION_27_27();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v52);
    v60 = *(v48 + *(v49 + 60));
    outlined init with copy of EagerResolutionService?();
    EntityProperty.wrappedValue.setter();
    v61 = OUTLINED_FUNCTION_116_1();
    outlined destroy of EagerResolutionService?(v61, v62, &_s10AppIntents10IntentFileVSgMR);
    OUTLINED_FUNCTION_179_0();
    outlined init with copy of EagerResolutionService?();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v160);
    if (EnumTagSinglePayload == 1)
    {
      v64 = v32[107];
      v65 = v32[105];
      v66 = v32[104];
      (*(v32[112] + 8))(v32[113], v32[111]);
      OUTLINED_FUNCTION_94_12();
      outlined destroy of EagerResolutionService?(v67, v68, v69);
      outlined destroy of EagerResolutionService?(v64, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
      OUTLINED_FUNCTION_94_12();
    }

    else
    {
      v77 = v32[146];
      (*(v32[102] + 32))(v32[103], v32[104], v32[101]);
      v78 = type metadata accessor for JSONEncoder();
      v79 = *(v78 + 48);
      v80 = *(v78 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      lazy protocol witness table accessor for type PommesContext and conformance PommesContext(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, MEMORY[0x277D56698]);
      OUTLINED_FUNCTION_34_5();
      dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v77)
      {
        v81 = v32[133];

        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();
        v84 = os_log_type_enabled(v82, v83);
        v85 = v32[112];
        v86 = v32[111];
        v87 = v32[107];
        v157 = v32[113];
        v161 = v32[105];
        v88 = v32[103];
        v89 = v32[102];
        v90 = v32[101];
        if (v84)
        {
          v91 = OUTLINED_FUNCTION_172();
          *v91 = 0;
          _os_log_impl(&dword_25D85C000, v82, v83, "RequestedPropertyController: Error encoding PommesContext", v91, 2u);
          OUTLINED_FUNCTION_42_0();

          v92 = *(v89 + 8);
        }

        else
        {

          v114 = *(v89 + 8);
        }

        v93 = OUTLINED_FUNCTION_158();
        v94(v93);
        (*(v85 + 8))(v157, v86);
        outlined destroy of EagerResolutionService?(v161, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        v71 = &_s10AppIntents10IntentFileVSgMd;
        v72 = &_s10AppIntents10IntentFileVSgMR;
        v70 = v87;
      }

      else
      {
        OUTLINED_FUNCTION_188_3();
        v147 = v32[131];
        v149 = v32[132];
        v95 = v32[112];
        v96 = v32[111];
        v97 = v32[109];
        v98 = v32[108];
        v162 = v32[107];
        v155 = v32[113];
        v158 = v32[105];
        v99 = v32[102];
        v151 = v32[101];
        v153 = v32[103];
        v100 = v32[100];

        type metadata accessor for UTType();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
        v105 = OUTLINED_FUNCTION_179_0();
        outlined copy of Data._Representation(v105, v106);
        OUTLINED_FUNCTION_179_0();
        IntentFile.init(data:filename:type:)();
        OUTLINED_FUNCTION_44_0();
        v107 = v96;
        __swift_storeEnumTagSinglePayload(v108, v109, v110, v96);
        v111 = *(v149 + *(v147 + 68));
        OUTLINED_FUNCTION_32_0();
        outlined init with copy of EagerResolutionService?();
        EntityProperty.wrappedValue.setter();
        v112 = OUTLINED_FUNCTION_179_0();
        outlined consume of Data._Representation(v112, v113);
        outlined destroy of EagerResolutionService?(v97, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
        (*(v99 + 8))(v153, v151);
        (*(v95 + 8))(v155, v107);
        outlined destroy of EagerResolutionService?(v158, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        v70 = v162;
        v71 = &_s10AppIntents10IntentFileVSgMd;
        v72 = &_s10AppIntents10IntentFileVSgMR;
      }
    }

    outlined destroy of EagerResolutionService?(v70, v71, v72);
    v115 = v32[132];
    v116 = v32[88];
    OUTLINED_FUNCTION_2_78();
    v74 = outlined init with take of SearchPropertyResponse();
    v76 = 0;
  }

  v117 = v32[132];
  v118 = v32[130];
  v119 = v32[127];
  v120 = v32[126];
  v121 = v32[125];
  v122 = v32[124];
  v123 = v32[123];
  v124 = v32[120];
  v125 = v32[119];
  v135 = v32[118];
  v136 = v32[117];
  v137 = v32[116];
  v138 = v32[115];
  v139 = v32[114];
  v140 = v32[113];
  v141 = v32[110];
  v142 = v32[109];
  v143 = v32[108];
  v144 = v32[107];
  v145 = v32[106];
  v146 = v32[105];
  v148 = v32[104];
  v150 = v32[103];
  v152 = v32[100];
  v154 = v32[99];
  v156 = v32[96];
  v159 = v32[95];
  v163 = v32[94];
  OUTLINED_FUNCTION_60_15(v74, v76, v75, v32[131]);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_47_20();

  return v127(v126, v127, v128, v129, v130, v131, v132, v133, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v148, v150, v152, v154, v156, v159, v163, a28, a29, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  v36 = v33[97];
  v37 = v33[96];
  OUTLINED_FUNCTION_71_10(v37);
  if (v38)
  {
    OUTLINED_FUNCTION_153_7();
    outlined destroy of EagerResolutionService?(v37, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of Any(v36, (v33 + 6));
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v41 = OUTLINED_FUNCTION_85_15(v40);
    v42 = v33[132];
    if (v41)
    {
      OUTLINED_FUNCTION_51_0();
      v43 = OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_101_11(v43);
      *v34 = 136642819;
      outlined init with copy of Any((v33 + 6), (v33 + 10));
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_188_3();
      OUTLINED_FUNCTION_51_20(v33 + 6);
      OUTLINED_FUNCTION_135_10();
      *(v34 + 4) = v37;
      OUTLINED_FUNCTION_40_27(&dword_25D85C000, v44, v45, "RequestedPropertyController: Error failed to convert %{sensitive}s to urlValue");
      OUTLINED_FUNCTION_54_26();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v33 + 6);
    }

    outlined destroy of SearchPropertyResponse(v42, type metadata accessor for SearchPropertyResponse);
  }

  else
  {
    OUTLINED_FUNCTION_150_7();
    v46 = v33[99];
    v47 = v33[98];
    v48 = v33[95];
    v49 = v33[94];
    v50 = OUTLINED_FUNCTION_19_41();
    v51(v50);
    v52 = OUTLINED_FUNCTION_18_30();
    v53(v52);
    v54 = OUTLINED_FUNCTION_27_27();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v36);
    v57 = *(v32 + *(v35 + 64));
    OUTLINED_FUNCTION_71_18();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_113_13();
    v58 = OUTLINED_FUNCTION_75_18();
    v59(v58);
    v60 = v33[132];
    v61 = v33[88];
    OUTLINED_FUNCTION_2_78();
    outlined init with take of SearchPropertyResponse();
  }

  v62 = v33[132];
  v63 = v33[131];
  v64 = v33[130];
  v65 = v33[127];
  v66 = v33[126];
  v67 = v33[125];
  v68 = v33[124];
  v69 = v33[123];
  v70 = v33[120];
  v71 = v33[119];
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_60_15(v72, v73, v74, v75);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_47_20();

  return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  v52 = v32[135];
  v33 = v32[132];
  v34 = v32[130];
  v35 = v32[127];
  v36 = v32[126];
  v37 = v32[125];
  v38 = v32[124];
  v39 = v32[123];
  v40 = v32[120];
  v41 = v32[119];
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_4_65();
  outlined destroy of SearchPropertyResponse(v33, v42);

  OUTLINED_FUNCTION_34_34();
  OUTLINED_FUNCTION_47_20();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  v52 = v32[137];
  v33 = v32[132];
  v34 = v32[130];
  v35 = v32[127];
  v36 = v32[126];
  v37 = v32[125];
  v38 = v32[124];
  v39 = v32[123];
  v40 = v32[120];
  v41 = v32[119];
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_4_65();
  outlined destroy of SearchPropertyResponse(v33, v42);

  OUTLINED_FUNCTION_34_34();
  OUTLINED_FUNCTION_47_20();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  v52 = v32[139];
  v33 = v32[132];
  v34 = v32[130];
  v35 = v32[127];
  v36 = v32[126];
  v37 = v32[125];
  v38 = v32[124];
  v39 = v32[123];
  v40 = v32[120];
  v41 = v32[119];
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_4_65();
  outlined destroy of SearchPropertyResponse(v33, v42);

  OUTLINED_FUNCTION_34_34();
  OUTLINED_FUNCTION_47_20();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  v52 = v32[142];
  v33 = v32[132];
  v34 = v32[130];
  v35 = v32[127];
  v36 = v32[126];
  v37 = v32[125];
  v38 = v32[124];
  v39 = v32[123];
  v40 = v32[120];
  v41 = v32[119];
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_4_65();
  outlined destroy of SearchPropertyResponse(v33, v42);

  OUTLINED_FUNCTION_34_34();
  OUTLINED_FUNCTION_47_20();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  v52 = v32[144];
  v33 = v32[132];
  v34 = v32[130];
  v35 = v32[127];
  v36 = v32[126];
  v37 = v32[125];
  v38 = v32[124];
  v39 = v32[123];
  v40 = v32[120];
  v41 = v32[119];
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_4_65();
  outlined destroy of SearchPropertyResponse(v33, v42);

  OUTLINED_FUNCTION_34_34();
  OUTLINED_FUNCTION_47_20();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  v52 = v32[146];
  v33 = v32[132];
  v34 = v32[130];
  v35 = v32[127];
  v36 = v32[126];
  v37 = v32[125];
  v38 = v32[124];
  v39 = v32[123];
  v40 = v32[120];
  v41 = v32[119];
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_4_65();
  outlined destroy of SearchPropertyResponse(v33, v42);

  OUTLINED_FUNCTION_34_34();
  OUTLINED_FUNCTION_47_20();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_63_22();
  OUTLINED_FUNCTION_73_16();
  v52 = v32[148];
  v33 = v32[132];
  v34 = v32[130];
  v35 = v32[127];
  v36 = v32[126];
  v37 = v32[125];
  v38 = v32[124];
  v39 = v32[123];
  v40 = v32[120];
  v41 = v32[119];
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_4_65();
  outlined destroy of SearchPropertyResponse(v33, v42);

  OUTLINED_FUNCTION_34_34();
  OUTLINED_FUNCTION_47_20();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

uint64_t RequestedPropertyController.convertToString(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for Date();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logging.search);
  outlined init with copy of Any(a1, v35);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v6;
    v14 = v13;
    v34 = v13;
    *v12 = 136642819;
    outlined init with copy of Any(v35, &v32);
    String.init<A>(describing:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v12 + 4) = v15;
    _os_log_impl(&dword_25D85C000, v10, v11, "Trying to convert %{sensitive}s to String", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v6 = v29;
    MEMORY[0x25F8A1050](v14, -1, -1);
    MEMORY[0x25F8A1050](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  outlined init with copy of Any(a1, v35);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v16 = v32;
  v17 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v17 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

LABEL_11:
    outlined init with copy of Any(a1, v35);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
      v19 = v30;
      v18 = v31;
      (*(v31 + 32))(v30, v5, v6);
      v20 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      outlined bridged method (mbnn) of @objc NSDateFormatter.dateFormat.setter(0x2D4D4D2D79797979, 0xEA00000000006464, v20);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v22 = [v20 stringFromDate_];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v18 + 8))(v19, v6);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
      outlined destroy of EagerResolutionService?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v16 = 0;
    }
  }

  outlined init with copy of Any(a1, v35);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v25 = 136642819;
    outlined init with copy of Any(v35, &v32);
    String.init<A>(describing:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v25 + 4) = v27;
    _os_log_impl(&dword_25D85C000, v23, v24, "String value after property conversion: %{sensitive}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x25F8A1050](v26, -1, -1);
    MEMORY[0x25F8A1050](v25, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  return v16;
}

uint64_t RequestedPropertyController.convertToDate(_:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for Calendar();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3[16] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v10 = type metadata accessor for DateComponents();
  v3[21] = v10;
  v11 = *(v10 - 8);
  v3[22] = v11;
  v12 = *(v11 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestedPropertyController.convertToDate(_:), 0, 0);
}

uint64_t RequestedPropertyController.convertToDate(_:)()
{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  v0[25] = __swift_project_value_buffer(v3, static Logging.search);
  outlined init with copy of Any(v2, (v0 + 2));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_51_0();
    v13 = OUTLINED_FUNCTION_49_0();
    *v6 = 136642819;
    outlined init with copy of Any((v0 + 2), (v0 + 6));
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_166_5();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    OUTLINED_FUNCTION_63_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_167_5();
    *(v6 + 4) = v1;
    _os_log_impl(&dword_25D85C000, v4, v5, "Trying to convert %{sensitive}s to Date", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v0[26] = v7;
  *v7 = v8;
  v7[1] = RequestedPropertyController.convertToDate(_:);
  v9 = v0[20];
  v10 = v0[11];
  v11 = v0[12];

  return RequestedPropertyController.convertToDateComponents(_:)(v9, v10);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t RequestedPropertyController.convertToDate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v17 = v14[20];
  v16 = v14[21];
  OUTLINED_FUNCTION_71_10(v17);
  if (v18)
  {
    v19 = v14[10];
    outlined destroy of EagerResolutionService?(v17, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    type metadata accessor for Date();
  }

  else
  {
    (*(v14[22] + 32))(v14[24], v17, v16);
    DateComponents.year.getter();
    if ((v20 & 1) == 0)
    {
      v21 = v14[24];
      DateComponents.month.getter();
      if ((v22 & 1) == 0)
      {
        v23 = v14[24];
        DateComponents.day.getter();
        if ((v24 & 1) == 0)
        {
          v25 = v14[24];
          DateComponents.hour.getter();
          if ((v26 & 1) == 0)
          {
            v54 = v14[24];
            v53 = v14[25];
            v56 = v14[18];
            v55 = v14[19];
            v58 = v14[14];
            v57 = v14[15];
            v59 = v14[13];
            static Calendar.current.getter();
            Calendar.date(from:)();
            v60 = *(v58 + 8);
            v61 = OUTLINED_FUNCTION_63_0();
            v62(v61);
            OUTLINED_FUNCTION_54_0();
            outlined init with copy of EagerResolutionService?();
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.debug.getter();
            v65 = os_log_type_enabled(v63, v64);
            v66 = v14[24];
            v68 = v14[21];
            v67 = v14[22];
            v69 = v14[18];
            if (v65)
            {
              v71 = v14[16];
              v70 = v14[17];
              a10 = v14[21];
              v72 = OUTLINED_FUNCTION_51_0();
              OUTLINED_FUNCTION_49_0();
              OUTLINED_FUNCTION_149_10();
              *v72 = 136642819;
              a9 = v66;
              OUTLINED_FUNCTION_158();
              outlined init with copy of EagerResolutionService?();
              OUTLINED_FUNCTION_241_0();
              String.init<A>(describing:)();
              OUTLINED_FUNCTION_164_4();
              outlined destroy of EagerResolutionService?(v69, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              OUTLINED_FUNCTION_241_0();
              v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v72 + 4) = v73;
              _os_log_impl(&dword_25D85C000, v63, v64, "Date value after property conversion: %{sensitive}s", v72, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v59);
              OUTLINED_FUNCTION_33_0();
              OUTLINED_FUNCTION_72_9();

              (*(v67 + 8))(a9, a10);
            }

            else
            {

              outlined destroy of EagerResolutionService?(v69, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              (*(v67 + 8))(v66, v68);
            }

            v74 = v14[19];
            v75 = v14[10];
            outlined init with take of (Int, SearchCATEntity)();
            goto LABEL_13;
          }
        }
      }
    }

    v27 = v14[25];
    (*(v14[22] + 16))(v14[23], v14[24], v14[21]);
    v28 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_117_14();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v14[23];
    v32 = v14[24];
    v34 = v14[21];
    v33 = v14[22];
    if (v30)
    {
      a10 = v14[24];
      v35 = OUTLINED_FUNCTION_51_0();
      a9 = OUTLINED_FUNCTION_49_0();
      a11 = a9;
      *v35 = 136642819;
      lazy protocol witness table accessor for type PommesContext and conformance PommesContext(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x277CC8990]);
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_164_4();
      v36 = *(v33 + 8);
      v36(v31, v34);
      OUTLINED_FUNCTION_241_0();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v35 + 4) = v37;
      _os_log_impl(&dword_25D85C000, v28, v15, "Date components in incomplete, unable to convert to date: %{sensitive}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(a9);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_33_0();

      v36(a10, v34);
    }

    else
    {

      v38 = *(v33 + 8);
      v38(v31, v34);
      v38(v32, v34);
    }

    v39 = v14[10];
    type metadata accessor for Date();
  }

  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
LABEL_13:
  OUTLINED_FUNCTION_202_6();

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_83_0();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

void RequestedPropertyController.convertToDate(_:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_202_6();

  OUTLINED_FUNCTION_127();
  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_204();

  __asm { BRAA            X1, X16 }
}

uint64_t RequestedPropertyController.convertToDateComponents(_:)(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v3[32] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestedPropertyController.convertToDateComponents(_:), 0, 0);
}

uint64_t RequestedPropertyController.convertToDateComponents(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v12 = v10[30];
  v13 = type metadata accessor for Logger();
  v10[35] = __swift_project_value_buffer(v13, static Logging.search);
  outlined init with copy of Any(v12, (v10 + 8));
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_11(v15))
  {
    v16 = OUTLINED_FUNCTION_51_0();
    a9 = OUTLINED_FUNCTION_49_0();
    *v16 = 136642819;
    outlined init with copy of Any((v10 + 8), (v10 + 16));
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_166_5();
    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 8);
    OUTLINED_FUNCTION_63_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_167_5();
    *(v16 + 4) = v11;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a9);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_2_8();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 8);
  }

  outlined init with copy of Any(v10[30], (v10 + 12));
  if (swift_dynamicCast())
  {
    v23 = v10[26];
    v22 = v10[27];
    v10[36] = v23;
    v10[37] = v22;
    v24 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v24 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v25 = v10[31];
      v26 = swift_task_alloc();
      v10[38] = v26;
      v26[2] = v25;
      v26[3] = v23;
      v26[4] = v22;
      v27 = *(MEMORY[0x277D85A40] + 4);
      v28 = swift_task_alloc();
      v10[39] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSAttributedStringCSgMd, &_sSo18NSAttributedStringCSgMR);
      *v28 = v10;
      v28[1] = RequestedPropertyController.convertToDateComponents(_:);
      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_218_6();

      return MEMORY[0x2822008A0](v29, v30, v31, v32, v33, v34, v35, v36);
    }
  }

  v38 = v10[29];
  v39 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_36_27(v39);
  v41 = v10[33];
  v40 = v10[34];

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_218_6();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10);
}

uint64_t RequestedPropertyController.convertToDateComponents(_:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v3 + 320) = v0;

  if (!v0)
  {
    v9 = *(v3 + 304);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[33];
  v3 = v0[34];

  OUTLINED_FUNCTION_127();
  v6 = v0[40];

  return v5();
}

void RequestedPropertyController.convertToDateComponents(_:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v27 = v22[28];
  if (!v27)
  {
    v65 = v22[37];
    v66 = v22[35];

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_11(v68))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v69, v70, v71, v72, v73, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    v74 = v22[29];

    type metadata accessor for DateComponents();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
    goto LABEL_13;
  }

  v28 = v22[35];
  v29 = v27;
  v30 = Logger.logObject.getter();
  static os_log_type_t.info.getter();

  v31 = &loc_25DBC7000;
  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    v24 = OUTLINED_FUNCTION_11_26();
    a11 = v24;
    *v23 = 136642819;
    v32 = v29;
    v33 = [v32 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_164_4();

    OUTLINED_FUNCTION_241_0();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v23 + 4) = v31;
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    OUTLINED_FUNCTION_54_26();
    OUTLINED_FUNCTION_37_0();
  }

  v39 = v22[34];
  v40 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_36_27(v40);
  v41 = *MEMORY[0x277D43E50];
  if (!*MEMORY[0x277D43E50])
  {
    goto LABEL_17;
  }

  a10 = v29;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_166_5();

  v42 = *MEMORY[0x277D43E58];
  if (!*MEMORY[0x277D43E58])
  {
LABEL_18:
    __break(1u);
    return;
  }

  v43 = v22[36];
  v44 = v22[37];
  v45 = v22[34];
  v46 = *MEMORY[0x277D43E58];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_164_4();

  v47 = String.count.getter();

  v48 = swift_allocObject();
  v48[2] = v24;
  v48[3] = v31;
  v48[4] = v25;
  v48[5] = v26;
  v48[6] = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for closure #2 in RequestedPropertyController.convertToDateComponents(_:);
  *(v49 + 24) = v48;
  v22[6] = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
  v22[7] = v49;
  v22[2] = MEMORY[0x277D85DD0];
  v22[3] = 1107296256;
  v22[4] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v22[5] = &block_descriptor_13;
  v50 = _Block_copy(v22 + 2);
  v51 = v22[7];

  [a10 enumerateAttributesInRange:0 options:v47 usingBlock:{0, v50}];
  _Block_release(v50);
  LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

  if (v50)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v52 = v22[35];
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v56 = v22[33];
    v55 = v22[34];
    v57 = v22[32];
    v58 = OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_149_10();
    *v58 = 136642819;
    swift_beginAccess();
    OUTLINED_FUNCTION_158();
    outlined init with copy of EagerResolutionService?();
    OUTLINED_FUNCTION_241_0();
    String.init<A>(describing:)();
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v58 + 4) = v59;
    _os_log_impl(&dword_25D85C000, v53, v54, "QP parse final date components: %{sensitive}s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_72_9();
  }

  v60 = v22[34];
  v61 = v22[29];
  swift_beginAccess();
  OUTLINED_FUNCTION_107();
  outlined init with copy of EagerResolutionService?();
  v62 = OUTLINED_FUNCTION_74_20();
  outlined destroy of EagerResolutionService?(v62, v63, v64);

LABEL_13:
  v80 = v22[33];
  v79 = v22[34];

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_83_0();

  v82(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12, a13, a14);
}

uint64_t RequestedPropertyController.convertToIntentPersons(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v12 = v10[31];
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logging.search);
  outlined init with copy of Any(v12, (v10 + 12));
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_11(v15))
  {
    v16 = OUTLINED_FUNCTION_51_0();
    a9 = OUTLINED_FUNCTION_49_0();
    *v16 = 136642819;
    outlined init with copy of Any((v10 + 12), (v10 + 24));
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_166_5();
    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 12);
    OUTLINED_FUNCTION_63_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_167_5();
    *(v16 + 4) = v11;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a9);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_2_8();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 12);
  }

  v22 = v10[31];
  v23 = type metadata accessor for ECRClient();
  OUTLINED_FUNCTION_161();
  v24 = ECRClient.init()();
  outlined init with copy of Any(v22, (v10 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  if (swift_dynamicCast())
  {
    v25 = v10[30];
    v10[32] = v25;
    if (*(v25 + 16))
    {
      if (v24)
      {
        v26 = &protocol witness table for ECRClient;
      }

      else
      {
        v23 = 0;
        v26 = 0;
        v10[8] = 0;
        v10[9] = 0;
      }

      v10[33] = v24;
      v10[7] = v24;
      v10[10] = v23;
      v10[11] = v26;

      v39 = swift_task_alloc();
      v10[34] = v39;
      *v39 = v10;
      v39[1] = RequestedPropertyController.convertToIntentPersons(_:);
      OUTLINED_FUNCTION_218_6();

      return static IntentPerson.make(extractedFields:ecrClient:)();
    }
  }

  outlined init with copy of Any(v10[31], (v10 + 20));
  if (swift_dynamicCast())
  {
    v27 = v10[28];
    v10[37] = v10[29];
    OUTLINED_FUNCTION_175_8();
    if (v28)
    {
      if (v24)
      {
        v29 = &protocol witness table for ECRClient;
      }

      else
      {
        v23 = 0;
        v29 = 0;
        v10[3] = 0;
        v10[4] = 0;
      }

      v10[38] = v24;
      v10[2] = v24;
      v10[5] = v23;
      v10[6] = v29;

      v41 = swift_task_alloc();
      v10[39] = v41;
      *v41 = v10;
      v41[1] = RequestedPropertyController.convertToIntentPersons(_:);
      OUTLINED_FUNCTION_116_1();
      OUTLINED_FUNCTION_218_6();

      return static IntentPerson.make(dataDetectingString:ecrClient:)();
    }
  }

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_218_6();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t RequestedPropertyController.convertToIntentPersons(_:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_47();
  *v6 = v5;
  v8 = *(v7 + 272);
  v9 = *(v7 + 256);
  v10 = *v1;
  OUTLINED_FUNCTION_11();
  *v11 = v10;
  *(v5 + 280) = v0;

  if (!v0)
  {
    *(v5 + 288) = v3;
    outlined destroy of EagerResolutionService?(v5 + 56, &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 264);

  v2 = *(v0 + 288);
  OUTLINED_FUNCTION_62();

  return v3();
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_47();
  *v6 = v5;
  v8 = *(v7 + 312);
  v9 = *(v7 + 296);
  v10 = *v1;
  OUTLINED_FUNCTION_11();
  *v11 = v10;
  *(v5 + 320) = v0;

  if (!v0)
  {
    *(v5 + 328) = v3;
    outlined destroy of EagerResolutionService?(v5 + 16, &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 304);

  v2 = *(v0 + 328);
  OUTLINED_FUNCTION_62();

  return v3();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 264);

  outlined destroy of EagerResolutionService?(v0 + 56, &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
  v2 = *(v0 + 280);
  OUTLINED_FUNCTION_127();

  return v3();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 304);

  outlined destroy of EagerResolutionService?(v0 + 16, &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
  v2 = *(v0 + 320);
  OUTLINED_FUNCTION_127();

  return v3();
}

uint64_t RequestedPropertyController.convertToDouble(_:)(uint64_t a1)
{
  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logging.search);
  outlined init with copy of Any(a1, &v21);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136642819;
    outlined init with copy of Any(&v21, &v18);
    String.init<A>(describing:)();
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v5 + 4) = v7;
    _os_log_impl(&dword_25D85C000, v3, v4, "Trying to convert %{sensitive}s to Double", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x25F8A1050](v6, -1, -1);
    MEMORY[0x25F8A1050](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  outlined init with copy of Any(a1, &v21);
  if (swift_dynamicCast())
  {
    v8 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v8 = *&v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = COERCE_DOUBLE(_sSdySdSgxcSyRzlufCSS_Tt0g5(*&v18, v19));
      v11 = v10;
      goto LABEL_17;
    }
  }

  outlined init with copy of Any(a1, &v21);
  if (swift_dynamicCast())
  {
    v11 = 0;
    v9 = v18;
  }

  else
  {
    outlined init with copy of Any(a1, &v21);
    if (swift_dynamicCast())
    {
      v11 = 0;
      v9 = *&v18;
    }

    else
    {
      v9 = 0.0;
      v11 = 1;
    }
  }

LABEL_17:
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = *&v15;
    *v14 = 136642819;
    v21 = v9;
    v22 = v11 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v14 + 4) = v16;
    _os_log_impl(&dword_25D85C000, v12, v13, "Double value after property conversion: %{sensitive}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x25F8A1050](v15, -1, -1);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return *&v9;
}

uint64_t RequestedPropertyController.convertToMedia(_:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = *(*(type metadata accessor for LocalizedStringResource() - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[31] = v8;
  v9 = *(v8 - 8);
  v4[32] = v9;
  v10 = *(v9 + 64) + 15;
  v4[33] = swift_task_alloc();
  v11 = type metadata accessor for ResolvedInfo();
  v4[34] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v4[38] = v13;
  v14 = *(v13 - 8);
  v4[39] = v14;
  v15 = *(v14 + 64) + 15;
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestedPropertyController.convertToMedia(_:app:), 0, 0);
}

uint64_t RequestedPropertyController.convertToMedia(_:app:)()
{
  OUTLINED_FUNCTION_190();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v2 = v0[19];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logging.search);
  OUTLINED_FUNCTION_163_9();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_11(v5))
  {
    v6 = OUTLINED_FUNCTION_51_0();
    v74 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_166_6(4.9654e-34);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_166_5();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    OUTLINED_FUNCTION_63_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_167_5();
    *(v6 + 4) = v1;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_2_8();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  outlined init with copy of Any(v0[19], (v0 + 6));
  if (OUTLINED_FUNCTION_120_10())
  {
    v12 = v0[15];
    v0[41] = v0[14];
    v0[42] = v12;
    OUTLINED_FUNCTION_175_8();
    if (v13)
    {
      v15 = v0[39];
      v14 = v0[40];
      v16 = v0[38];
      v18 = v0[30];
      v17 = v0[31];
      UUID.init()();
      v19 = UUID.uuidString.getter();
      v21 = v20;
      v0[43] = v20;
      v22 = *(v15 + 8);
      v23 = OUTLINED_FUNCTION_63_0();
      v24(v23);

      OUTLINED_FUNCTION_116_1();
      URL.init(hostedLink:)(v25);
      if (__swift_getEnumTagSinglePayload(v18, 1, v17) == 1)
      {
        v26 = v0[21];
        outlined destroy of EagerResolutionService?(v0[30], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v27 = *(v26 + 24);
        v28 = *(v26 + 32);
        v29 = OUTLINED_FUNCTION_63_0();
        __swift_project_boxed_opaque_existential_1(v29, v30);
        v31 = *(v28 + 24);
        OUTLINED_FUNCTION_28_0();
        v71 = v32 + *v32;
        v34 = *(v33 + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_53();
        v0[46] = v35;
        *v35 = v36;
        v35[1] = RequestedPropertyController.convertToMedia(_:app:);
        v37 = v0[35];
        v38 = v0[20];
        OUTLINED_FUNCTION_115();

        __asm { BRAA            X8, X16 }
      }

      v55 = v0[21];
      (*(v0[32] + 32))(v0[33], v0[30], v0[31]);
      v56 = *(v55 + 24);
      v57 = *(v55 + 32);
      v58 = OUTLINED_FUNCTION_54_0();
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v60 = *(v57 + 32);
      OUTLINED_FUNCTION_28_0();
      v73 = (v61 + *v61);
      v63 = *(v62 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[44] = v64;
      *v64 = v65;
      v64[1] = RequestedPropertyController.convertToMedia(_:app:);
      v66 = v0[36];
      v67 = v0[33];

      return v73(v66, v67, v19, v21, v56, v57);
    }
  }

  v41 = v0[18];
  v42 = type metadata accessor for IntentFile();
  OUTLINED_FUNCTION_36_27(v42);
  v43 = v0[40];
  v44 = v0[36];
  v45 = v0[37];
  v46 = v0[35];
  v47 = v0[33];
  v49 = v0[29];
  v48 = v0[30];
  v51 = v0[27];
  v50 = v0[28];
  v52 = v0[26];
  v68 = v0[25];
  v69 = v0[24];
  v70 = v0[23];
  v72 = v0[22];

  OUTLINED_FUNCTION_106();

  return v53();
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v2 + 352);
  *v4 = *v1;
  *(v3 + 360) = v0;

  v6 = *(v2 + 344);
  if (v0)
  {
    v7 = *(v3 + 336);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  (*(v1[32] + 8))(v1[33], v1[31]);
  v41 = v1[45];
  v38 = v1[41];
  v39 = v1[42];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[34];
  OUTLINED_FUNCTION_68_20();
  v6 = v5[7];
  outlined init with copy of EagerResolutionService?();
  v7 = *(v4 + v5[8]);

  IntentFile.init(experiences:)(v8, v0);
  v9 = *(v4 + v5[9]);

  OUTLINED_FUNCTION_203_6(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_198_7();
  v34 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_112_16();
  OUTLINED_FUNCTION_209_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_162_9();
  EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_97_10();
  v11 = OUTLINED_FUNCTION_209_5();
  OUTLINED_FUNCTION_140_10(v11, v12, v13, v14, v15, v16, v17, v18, v31, v32, v33, v34, v35, v37, v38, v39);
  outlined init with copy of EagerResolutionService?();
  OUTLINED_FUNCTION_160_7();
  EntityProperty.wrappedValue.setter();
  v19 = OUTLINED_FUNCTION_54_0();
  outlined destroy of EagerResolutionService?(v19, v20, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_241_0();
  OUTLINED_FUNCTION_148_11();
  OUTLINED_FUNCTION_129_14();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_132_11();
  OUTLINED_FUNCTION_148_11();
  OUTLINED_FUNCTION_129_14();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_132_11();
  v21 = OUTLINED_FUNCTION_32_0();
  outlined destroy of EagerResolutionService?(v21, v22, &_s10AppIntents10IntentFileVSgMR);
  outlined destroy of EagerResolutionService?(v36, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  outlined destroy of EagerResolutionService?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_152_7();
  MediaEntity.intentFile.getter(v40);
  v23 = v1[37];
  OUTLINED_FUNCTION_22_32();
  outlined destroy of SearchPropertyResponse(v24, v25);

  outlined consume of Data?(0, 0xF000000000000000);
  v26 = v1[40];
  v27 = v1[36];
  v28 = v1[37];
  OUTLINED_FUNCTION_55_17();
  OUTLINED_FUNCTION_165_7();

  OUTLINED_FUNCTION_127();

  return v29();
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v2 + 368);
  *v4 = *v1;
  *(v3 + 376) = v0;

  v6 = *(v2 + 344);
  if (v0)
  {
    v7 = *(v3 + 336);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  v41 = v1[47];
  v38 = v1[41];
  v39 = v1[42];
  v3 = v1[37];
  v5 = v1[34];
  v4 = v1[35];
  OUTLINED_FUNCTION_68_20();
  v6 = v5[7];
  outlined init with copy of EagerResolutionService?();
  v7 = *(v3 + v5[8]);

  IntentFile.init(experiences:)(v8, v0);
  v9 = *(v3 + v5[9]);

  OUTLINED_FUNCTION_203_6(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_198_7();
  v34 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_112_16();
  OUTLINED_FUNCTION_209_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_162_9();
  EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_97_10();
  v11 = OUTLINED_FUNCTION_209_5();
  OUTLINED_FUNCTION_140_10(v11, v12, v13, v14, v15, v16, v17, v18, v31, v32, v33, v34, v35, v37, v38, v39);
  outlined init with copy of EagerResolutionService?();
  OUTLINED_FUNCTION_160_7();
  EntityProperty.wrappedValue.setter();
  v19 = OUTLINED_FUNCTION_54_0();
  outlined destroy of EagerResolutionService?(v19, v20, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_241_0();
  OUTLINED_FUNCTION_148_11();
  OUTLINED_FUNCTION_129_14();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_132_11();
  OUTLINED_FUNCTION_148_11();
  OUTLINED_FUNCTION_129_14();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_132_11();
  v21 = OUTLINED_FUNCTION_32_0();
  outlined destroy of EagerResolutionService?(v21, v22, &_s10AppIntents10IntentFileVSgMR);
  outlined destroy of EagerResolutionService?(v36, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  outlined destroy of EagerResolutionService?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_152_7();
  MediaEntity.intentFile.getter(v40);
  v23 = v1[37];
  OUTLINED_FUNCTION_22_32();
  outlined destroy of SearchPropertyResponse(v24, v25);

  outlined consume of Data?(0, 0xF000000000000000);
  v26 = v1[40];
  v27 = v1[36];
  v28 = v1[37];
  OUTLINED_FUNCTION_55_17();
  OUTLINED_FUNCTION_165_7();

  OUTLINED_FUNCTION_127();

  return v29();
}

uint64_t RequestedPropertyController.convertToMedia(_:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  (*(v16[32] + 8))(v16[33], v16[31]);
  v17 = v16[45];
  v18 = v16[40];
  v20 = v16[36];
  v19 = v16[37];
  OUTLINED_FUNCTION_55_17();
  OUTLINED_FUNCTION_142_7();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_115();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v17 = v16[47];
  v18 = v16[40];
  v20 = v16[36];
  v19 = v16[37];
  OUTLINED_FUNCTION_55_17();
  OUTLINED_FUNCTION_142_7();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_115();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t RequestedPropertyController.convertToNavigation(_:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = type metadata accessor for UUID();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v9 = type metadata accessor for ResolvedInfo();
  v5[24] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestedPropertyController.convertToNavigation(_:app:), 0, 0);
}

uint64_t RequestedPropertyController.convertToNavigation(_:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v18 = v16[18];
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logging.search);
  OUTLINED_FUNCTION_163_9();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_11(v21))
  {
    v22 = OUTLINED_FUNCTION_51_0();
    a13 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_166_6(4.9654e-34);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_166_5();
    __swift_destroy_boxed_opaque_existential_1Tm(v16 + 2);
    OUTLINED_FUNCTION_63_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_167_5();
    *(v22 + 4) = v17;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a13);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_2_8();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v16 + 2);
  }

  outlined init with copy of Any(v16[18], (v16 + 6));
  if (OUTLINED_FUNCTION_120_10())
  {
    v29 = v16[14];
    v28 = v16[15];
    v16[26] = v28;
    v30 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v30 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v32 = v16[22];
      v31 = v16[23];
      v33 = v16[20];
      v34 = v16[21];
      v35 = v33[4];
      v74 = __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      UUID.init()();
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_164_4();
      v16[27] = v36;
      (*(v32 + 8))(v31, v34);
      v37 = *(v35 + 16);
      OUTLINED_FUNCTION_28_0();
      v73 = v38 + *v38;
      v40 = *(v39 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v16[28] = v41;
      *v41 = v42;
      v41[1] = RequestedPropertyController.convertToNavigation(_:app:);
      v43 = v16[25];
      v44 = v16[19];
      OUTLINED_FUNCTION_115();

      return v53(v45, v46, v47, v48, v49, v50, v51, v52, a9, v35 + 16, v73, v74, a13, a14, a15, a16);
    }
  }

  v56 = v16[16];
  v57 = v16[17];
  type metadata accessor for IntentFile();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  v62 = type metadata accessor for PommesContext();
  OUTLINED_FUNCTION_36_27(v62);
  v63 = v16[25];
  v64 = v16[23];

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_115();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t RequestedPropertyController.convertToNavigation(_:app:)()
{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v5 = v2[28];
  *v4 = *v1;
  *(v3 + 232) = v0;

  v6 = v2[27];
  v7 = v2[26];

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_78();
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[16];
  v3 = v0[17];
  v5 = *(v1 + *(v2 + 32));

  IntentFile.init(experiences:)(v6, v4);
  v7 = *(v2 + 40);
  outlined init with copy of EagerResolutionService?();
  OUTLINED_FUNCTION_22_32();
  outlined destroy of SearchPropertyResponse(v1, v8);
  v9 = v0[25];
  v10 = v0[23];

  OUTLINED_FUNCTION_106();

  return v11();
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[25];
  v2 = v0[23];

  OUTLINED_FUNCTION_127();
  v4 = v0[29];

  return v3();
}