uint64_t specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)()
{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_71(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi_10OmniSearch0B6ResultVtGMd, &_sSaySi_10OmniSearch0B6ResultVtGMR);
  v3 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 104) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_142(v4);
  v6 = OUTLINED_FUNCTION_38();

  return MEMORY[0x282200600](v6);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_Say10OmniSearch0B6ResultVGtMd, &_sSi_Say10OmniSearch0B6ResultVGtMR);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_152(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi_Say10OmniSearch0B6ResultVGtGMd, &_sSaySi_Say10OmniSearch0B6ResultVGtGMR);
  v3 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 56) = v4;
  *v4 = v5;
  v4[1] = specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  v6 = OUTLINED_FUNCTION_102();

  return MEMORY[0x282200600](v6);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_159();
  v12 = v0;
  v1 = *(v0 + 16);
  if ((*(v0 + 64) & 1) == 0)
  {
    v11 = *(v0 + 16);

    specialized MutableCollection<>.sort(by:)(&v11);

    v1 = v11;
    *(v0 + 16) = v11;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v11;
    v4 = *(v11 + 16);
    v5 = 40;
    do
    {
      v6 = *(v1 + v5);
      v11 = v3;
      v7 = *(v3 + 24);

      if (v4 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v7 > 1, v4 + 1, 1);
        v3 = v11;
      }

      *(v3 + 16) = v4 + 1;
      *(v3 + 8 * v4 + 32) = v6;
      v5 += 16;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v8 = OUTLINED_FUNCTION_28();

  return v9(v8);
}

{
  OUTLINED_FUNCTION_48();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 24) = v3;
  *(v0 + 112) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_21(v5);
  *(v0 + 56) = v6;
  v8 = *(v7 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_160();
  *(v0 + 72) = swift_task_alloc();
  v9 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_21(v9);
  *(v0 + 80) = v10;
  v12 = *(v11 + 64);
  *(v0 + 88) = OUTLINED_FUNCTION_199();
  v13 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_71(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi_10OmniSearch0B6ResultVtGMd, &_sSaySi_10OmniSearch0B6ResultVtGMR);
  v3 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 104) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_142(v4);
  v6 = OUTLINED_FUNCTION_38();

  return MEMORY[0x282200600](v6);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_48();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 24) = v3;
  *(v0 + 112) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B9CATEntityVtMd, &_sSi_10OmniSearch0B9CATEntityVtMR);
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_21(v5);
  *(v0 + 56) = v6;
  v8 = *(v7 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_160();
  *(v0 + 72) = swift_task_alloc();
  v9 = type metadata accessor for SearchCATEntity();
  OUTLINED_FUNCTION_21(v9);
  *(v0 + 80) = v10;
  v12 = *(v11 + 64);
  *(v0 + 88) = OUTLINED_FUNCTION_199();
  v13 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_71(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi_10OmniSearch0B9CATEntityVtGMd, &_sSaySi_10OmniSearch0B9CATEntityVtGMR);
  v3 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 104) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_142(v4);
  v6 = OUTLINED_FUNCTION_38();

  return MEMORY[0x282200600](v6);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS_SaySSGttMd, &_sSi_SS_SaySSGttMR);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_152(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi_SS_SaySSGttGMd, &_sSaySi_SS_SaySSGttGMR);
  v3 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 56) = v4;
  *v4 = v5;
  v4[1] = specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  v6 = OUTLINED_FUNCTION_102();

  return MEMORY[0x282200600](v6);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_146();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_190();
  a22 = v24;
  v28 = *(v24 + 16);
  if ((*(v24 + 112) & 1) == 0)
  {
    a12 = *(v24 + 16);

    specialized MutableCollection<>.sort(by:)(&a12);

    v28 = a12;
    *(v24 + 16) = a12;
  }

  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = *(v24 + 80);
    v31 = *(v24 + 56);
    a11 = *(v24 + 48);
    OUTLINED_FUNCTION_74();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v32 = a12;
    v33 = *(v31 + 80);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_188();
    do
    {
      OUTLINED_FUNCTION_144();
      OUTLINED_FUNCTION_197();
      v34 = *(a11 + 48);
      OUTLINED_FUNCTION_6();
      outlined init with take of ExtractedInfo();
      OUTLINED_FUNCTION_186();
      if (v36)
      {
        OUTLINED_FUNCTION_147(v35);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = a12;
      }

      v37 = *(v24 + 88);
      *(v32 + 16) = v25;
      v38 = *(v30 + 80);
      OUTLINED_FUNCTION_79();
      v39 = *(v30 + 72);
      OUTLINED_FUNCTION_6();
      outlined init with take of ExtractedInfo();
      v28 += a10;
      --v29;
    }

    while (v29);
  }

  v40 = *(v24 + 88);
  v42 = *(v24 + 64);
  v41 = *(v24 + 72);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_115();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_146();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_190();
  a22 = v24;
  v28 = *(v24 + 16);
  if ((*(v24 + 112) & 1) == 0)
  {
    a12 = *(v24 + 16);

    specialized MutableCollection<>.sort(by:)(&a12);

    v28 = a12;
    *(v24 + 16) = a12;
  }

  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = *(v24 + 80);
    v31 = *(v24 + 56);
    a11 = *(v24 + 48);
    OUTLINED_FUNCTION_74();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v32 = a12;
    v33 = *(v31 + 80);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_188();
    do
    {
      OUTLINED_FUNCTION_144();
      OUTLINED_FUNCTION_197();
      v34 = *(a11 + 48);
      OUTLINED_FUNCTION_89();
      outlined init with take of ExtractedInfo();
      OUTLINED_FUNCTION_186();
      if (v36)
      {
        OUTLINED_FUNCTION_147(v35);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = a12;
      }

      v37 = *(v24 + 88);
      *(v32 + 16) = v25;
      v38 = *(v30 + 80);
      OUTLINED_FUNCTION_79();
      v39 = *(v30 + 72);
      OUTLINED_FUNCTION_89();
      outlined init with take of ExtractedInfo();
      v28 += a10;
      --v29;
    }

    while (v29);
  }

  v40 = *(v24 + 88);
  v42 = *(v24 + 64);
  v41 = *(v24 + 72);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_115();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_146();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_190();
  a22 = v24;
  v27 = *(v24 + 16);
  if ((*(v24 + 64) & 1) == 0)
  {
    a12 = *(v24 + 16);

    specialized MutableCollection<>.sort(by:)(&a12);

    v27 = a12;
    *(v24 + 16) = a12;
  }

  v28 = *(v27 + 16);
  if (v28)
  {
    a11 = v24;
    v29 = OUTLINED_FUNCTION_74();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29, v30, v31);
    v32 = a12;
    v33 = *(a12 + 16);
    v34 = 24 * v33 + 48;
    a10 = v27;
    v35 = (v27 + 56);
    do
    {
      v37 = *(v35 - 2);
      v36 = *(v35 - 1);
      v38 = *v35;
      a12 = v32;
      v39 = *(v32 + 24);

      if (v33 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v33 + 1, 1);
        v32 = a12;
      }

      *(v32 + 16) = v33 + 1;
      v40 = (v32 + v34);
      *(v40 - 2) = v37;
      *(v40 - 1) = v36;
      *v40 = v38;
      v34 += 24;
      v35 += 4;
      ++v33;
      --v28;
    }

    while (v28);
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_115();

  return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t AnswerResolver.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of EagerResolutionService?(v0 + 24, &_s10OmniSearch22EagerResolutionService_pSgMd, &_s10OmniSearch22EagerResolutionService_pSgMR);
  v2 = *(v0 + 64);

  return v0;
}

uint64_t AnswerResolver.__deallocating_deinit()
{
  AnswerResolver.deinit();
  OUTLINED_FUNCTION_140();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AnswerResolvable.extractInfo(query:results:assistantLocale:) in conformance AnswerResolver()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_110();
  v1 = *v0;
  OUTLINED_FUNCTION_133();
  v3 = *(v2 + 128);
  v11 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_63(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_46(v6);

  return v9(v8);
}

{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;

  OUTLINED_FUNCTION_62();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t protocol witness for AnswerResolvable.resolve(extractedResults:options:) in conformance AnswerResolver()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_93();
  v1 = *v0;
  OUTLINED_FUNCTION_133();
  v3 = *(v2 + 144);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_63(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_84(v6);
  v8 = OUTLINED_FUNCTION_119();

  return v10(v8);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_28();

  return v6(v5);
}

uint64_t default argument 0 of GlobalSearchClient.init(client:session:featureFlagService:xpcClient:)()
{
  return default argument 0 of GlobalSearchClient.init(client:session:featureFlagService:xpcClient:)();
}

{
  OUTLINED_FUNCTION_176();
  v3 = v2;
  v5 = v4(0);
  result = v1();
  v3[3] = v5;
  v3[4] = v0;
  *v3 = result;
  return result;
}

id default argument 1 of GlobalSearchClient.init(client:session:featureFlagService:xpcClient:)()
{
  v0 = [objc_opt_self() sharedSession];

  return v0;
}

uint64_t default argument 2 of GlobalSearchClient.init(client:session:featureFlagService:xpcClient:)()
{
  type metadata accessor for FeatureFlagService();
  OUTLINED_FUNCTION_123();

  return swift_allocObject();
}

uint64_t default argument 3 of FlightReservation.init(flightNumber:flightCarrierCode:bundleId:flightDepartureDateComponents:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v1 = OUTLINED_FUNCTION_114(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_182();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  type metadata accessor for TimeZone();
  v12 = OUTLINED_FUNCTION_58();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  return DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
}

uint64_t default argument 0 of RequestedPropertyController.init(globalResolutionService:queryParser:)()
{
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SageSearch();
  OUTLINED_FUNCTION_112();
  v2 = SageSearch.__allocating_init()();
  v3 = [objc_opt_self() sharedSession];
  OUTLINED_FUNCTION_120();
  type metadata accessor for FeatureFlagService();
  OUTLINED_FUNCTION_123();
  swift_allocObject();
  OUTLINED_FUNCTION_187();
  type metadata accessor for GlobalSearchClient();
  v4 = OUTLINED_FUNCTION_173();
  v4[7] = v1;
  v4[8] = &protocol witness table for SageSearch;
  v4[4] = v2;
  v5.n128_f64[0] = OUTLINED_FUNCTION_13(v4);
  v7 = OUTLINED_FUNCTION_64(v6, v5);
  v15 = OUTLINED_FUNCTION_184(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23);
  outlined assign with take of SearchToolGlobalSearchXPC?(v15, v16);
  swift_endAccess();
  v17 = type metadata accessor for GlobalResolutionService();
  result = OUTLINED_FUNCTION_161();
  *(result + 16) = v4;
  v0[3] = v17;
  v0[4] = &protocol witness table for GlobalResolutionService;
  *v0 = result;
  return result;
}

uint64_t default argument 0 of TrialManager.init(trialClient:namespace:)@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() clientWithIdentifier_];
  result = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for TRIClient, 0x277D73660);
  a1[3] = result;
  a1[4] = &protocol witness table for TRIClient;
  *a1 = v2;
  return result;
}

uint64_t default argument 3 of AnswerSynthesisController.init(modelType:answerSynthesisTokenLimit:featureFlagService:hallucinationMitigator:requestedPropertyController:ecrClient:isXPC:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for HallucinationMitigator();
  OUTLINED_FUNCTION_105(v0, &protocol witness table for HallucinationMitigator);
}

id default argument 0 of SearchToolIntentController.init(omniSearchService:metricsLogger:context:)@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static OmniSearchService.shared;
  a1[3] = type metadata accessor for OmniSearchService();
  a1[4] = &protocol witness table for OmniSearchService;
  *a1 = v3;

  return v3;
}

uint64_t default argument 1 of SearchToolIntentController.init(omniSearchService:metricsLogger:context:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for MetricsLogger();
  OUTLINED_FUNCTION_105(v0, &protocol witness table for MetricsLogger);
}

uint64_t default argument 2 of static EvalLogging.logEvalInfo(_:_:logger:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for entityInfo != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logging.entityInfo);
  OUTLINED_FUNCTION_51(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t default argument 1 of SearchEntity.init(result:context:searchString:derivedType:)()
{
  type metadata accessor for SearchEntityVisualContext();
  v0 = swift_allocObject();
  v3 = &type metadata for EntityCardBuilder;
  v4 = &protocol witness table for EntityCardBuilder;
  outlined init with take of ResponseOverrideMatcherProtocol(&v2, v0 + 16);
  return v0;
}

uint64_t default argument 0 of CatDialogGenerator.init(globals:)()
{
  v0 = type metadata accessor for Locale();
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  type metadata accessor for CATGlobals();
  static Locale.current.getter();
  Locale.identifier.getter();
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_107();
  v8(v7);
  OUTLINED_FUNCTION_178();
  return CATGlobals.__allocating_init(siriLocale:siriVoiceGender:isMultiUserEnabled:requiresUserGrounding:)();
}

void default argument 0 of DialogBuilder.init(catDialogGenerator:)()
{
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for Locale();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  type metadata accessor for CATGlobals();
  static Locale.current.getter();
  Locale.identifier.getter();
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_88();
  v9(v8);
  OUTLINED_FUNCTION_178();
  v10 = CATGlobals.__allocating_init(siriLocale:siriVoiceGender:isMultiUserEnabled:requiresUserGrounding:)();
  v0[3] = &type metadata for CatDialogGenerator;
  v0[4] = &protocol witness table for CatDialogGenerator;
  *v0 = v10;
  OUTLINED_FUNCTION_203();
}

uint64_t default argument 1 of DialogBuilder.buildDialog(for:context:)()
{
  OUTLINED_FUNCTION_113();
  type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for DialogContext();
  v6 = v5[5];
  type metadata accessor for IntentSystemContext.InterfaceIdiom();
  OUTLINED_FUNCTION_92();
  result = __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v12 = (v0 + v5[6]);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + v5[7]) = 2;
  return result;
}

void default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)()
{
  OUTLINED_FUNCTION_155();
  v61 = v0;
  v66 = type metadata accessor for Calendar.Component();
  v1 = OUTLINED_FUNCTION_14(v66);
  v70 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v64 = v12 - v13;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v14);
  v65 = &v59 - v15;
  v16 = type metadata accessor for EditorialDateFormatter(0);
  v17 = OUTLINED_FUNCTION_17(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v22 = v21 - v20;
  v23 = type metadata accessor for Calendar();
  v24 = OUTLINED_FUNCTION_14(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_36();
  v31 = v30 - v29;
  v32 = type metadata accessor for Date();
  v33 = OUTLINED_FUNCTION_14(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_36();
  v40 = v39 - v38;
  Date.init()();
  static Calendar.current.getter();
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  v67 = v35;
  (*(v35 + 16))(v22, v40, v32);
  v41 = *(v16 + 28);
  v59 = v26;
  v60 = v23;
  (*(v26 + 16))(v22 + v41, v31, v23);
  v42 = FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_editorialDates);
  v68 = v22;
  v69 = v16;
  *(v22 + *(v16 + 32)) = v42;
  v43 = *MEMORY[0x277CC9968];
  v44 = v70;
  v45 = v7;
  v46 = v7;
  v47 = v66;
  v63 = *(v70 + 104);
  v63(v46, v43, v66);
  v48 = v65;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v49 = v44 + 8;
  v50 = *(v44 + 8);
  v51 = v45;
  v70 = v49;
  v62 = v50;
  v50(v45, v47);
  OUTLINED_FUNCTION_166(v48, 1, v32);
  if (v52)
  {
    __break(1u);
  }

  else
  {
    v53 = v48;
    v54 = *(v67 + 32);
    v54(v68 + *(v69 + 20), v53, v32);
    v63(v45, v43, v47);
    v55 = v64;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v62(v51, v47);
    OUTLINED_FUNCTION_166(v55, 1, v32);
    if (!v52)
    {
      (*(v59 + 8))(v31, v60);
      v56 = *(v67 + 8);
      v57 = OUTLINED_FUNCTION_158();
      v58(v57);
      v54(v68 + *(v69 + 24), v55, v32);
      outlined init with take of ExtractedInfo();
      OUTLINED_FUNCTION_148();
      return;
    }
  }

  __break(1u);
}

id default argument 0 of CalendarManager.init(eventStore:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CC5A40]);

  return [v0 init];
}

uint64_t default argument 0 of LLMQueryParser.init(llmQUModelServer:)()
{
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for LLMQUModelServer();
  OUTLINED_FUNCTION_170(v1);
  result = LLMQUModelServer.init()();
  v0[3] = v1;
  v0[4] = &protocol witness table for LLMQUModelServer;
  *v0 = result;
  return result;
}

uint64_t default argument 5 of AnswerSynthesisController.init(modelType:answerSynthesisTokenLimit:featureFlagService:hallucinationMitigator:requestedPropertyController:ecrClient:isXPC:)()
{
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for ECRClient();
  OUTLINED_FUNCTION_161();
  result = ECRClient.init()();
  if (result)
  {
    v3 = &protocol witness table for ECRClient;
  }

  else
  {
    v1 = 0;
    v3 = 0;
    v0[1] = 0;
    v0[2] = 0;
  }

  *v0 = result;
  v0[3] = v1;
  v0[4] = v3;
  return result;
}

id default argument 1 of RequestedPropertyController.init(globalResolutionService:queryParser:)@<X0>(uint64_t (*a1)(void)@<X0>, SEL *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  v8 = OUTLINED_FUNCTION_161();
  result = [objc_opt_self() *a2];
  *(v8 + 16) = result;
  a4[3] = v7;
  a4[4] = a3;
  *a4 = v8;
  return result;
}

uint64_t default argument 2 of MemoryCreationQUController.parse(_:quResponse:performanceMetrics:)()
{
  v0 = type metadata accessor for MemoryCreationQUPerformanceMetrics();
  OUTLINED_FUNCTION_170(v0);
  return MemoryCreationQUPerformanceMetrics.init()();
}

uint64_t default argument 1 of MemoryCreationQUModelResponse.init(who:what:when:where:music:mood:sort_order:trip:all_time:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);

  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t default argument 4 of MemoryCreationQUModelResponse.init(who:what:when:where:music:mood:sort_order:trip:all_time:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  OUTLINED_FUNCTION_88();
  v0 = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_88();
  v1 = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_88();
  v2 = Dictionary.init(dictionaryLiteral:)();

  return MemoryCreationQUModelResponseMusic.init(artist:genre:song:)(v0, v1, v2);
}

id default argument 1 of LocalSearchManager.init(infinitePatience:session:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277D65728]);

  return [v0 init];
}

uint64_t default argument 0 of ContactContentManager.init(contactStore:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  result = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
  a2[3] = result;
  a2[4] = a1;
  *a2 = v4;
  return result;
}

uint64_t specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *(type metadata accessor for ExtractedInfo(0) - 8);
  v4[13] = v5;
  v4[14] = *(v5 + 64);
  v4[15] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch13ExtractedInfoV7elementtMd, &_sSi6offset_10OmniSearch13ExtractedInfoV7elementtMR);
  v4[18] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch13ExtractedInfoV7elementtSgMd, &_sSi6offset_10OmniSearch13ExtractedInfoV7elementtSgMR) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:), 0, 0);
}

{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:), 0, 0);
}

{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *(type metadata accessor for SearchResult(0) - 8);
  v4[13] = v5;
  v4[14] = *(v5 + 64);
  v4[15] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v4[18] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtSgMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtSgMR) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:), 0, 0);
}

{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *(type metadata accessor for SearchEntity(0) - 8);
  v4[13] = v5;
  v4[14] = *(v5 + 64);
  v4[15] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
  v4[18] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6EntityV7elementtSgMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtSgMR) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:), 0, 0);
}

{
  v4[28] = a3;
  v4[29] = a4;
  v4[26] = a1;
  v4[27] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:), 0, 0);
}

uint64_t specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v17 = 0;
  v18 = *(v16 + 80);
  v56 = (v16 + 16);
  v57 = v18 + 32;
  v58 = *(v18 + 16);
  v19 = &_sScPSgMR;
  while (v58 != v17)
  {
    v20 = *(v16 + 104);
    v21 = *(v16 + 112);
    v22 = *(v16 + 88);
    v23 = *(v16 + 96);
    v24 = *(v57 + 8 * v17);
    v25 = v19;
    v26 = v17;
    v27 = type metadata accessor for TaskPriority();
    v28 = OUTLINED_FUNCTION_58();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
    v31 = swift_allocObject();
    v31[2] = 0;
    a12 = v31 + 2;
    v59 = v26;
    v31[3] = 0;
    v31[4] = v22;
    v31[5] = v23;
    v31[6] = v24;
    v31[7] = v26;
    v19 = v25;
    OUTLINED_FUNCTION_107();
    outlined init with copy of EagerResolutionService?();
    LODWORD(v20) = __swift_getEnumTagSinglePayload(v20, 1, v27);

    v32 = *(v16 + 104);
    if (v20 == 1)
    {
      v33 = OUTLINED_FUNCTION_88();
      outlined destroy of EagerResolutionService?(v33, v34, v25);
    }

    else
    {
      TaskPriority.rawValue.getter();
      OUTLINED_FUNCTION_51(v27);
      (*(v35 + 8))(v32, v27);
    }

    if (*a12)
    {
      v36 = v31[3];
      v37 = *a12;
      swift_getObjectType();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_180();
      v38 = dispatch thunk of Actor.unownedExecutor.getter();
      v40 = v39;
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v41 = **(v16 + 72);
    OUTLINED_FUNCTION_131();
    v42 = swift_allocObject();
    *(v42 + 16) = &async function pointer to partial apply for specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
    *(v42 + 24) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_Say10OmniSearch0B6ResultVGtMd, &_sSi_Say10OmniSearch0B6ResultVGtMR);
    v43 = v40 | v38;
    if (v40 | v38)
    {
      v43 = v16 + 16;
      *v56 = 0;
      *(v16 + 24) = 0;
      *(v16 + 32) = v38;
      *(v16 + 40) = v40;
    }

    v44 = *(v16 + 112);
    *(v16 + 48) = 1;
    *(v16 + 56) = v43;
    *(v16 + 64) = v41;
    swift_task_create();

    outlined destroy of EagerResolutionService?(v44, &_sScPSgMd, v19);
    v17 = v59 + 1;
  }

  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_60(&async function pointer to specialized TaskGroup.oms_results.getter);
  v60 = v45;
  v46 = swift_task_alloc();
  *(v16 + 120) = v46;
  *v46 = v16;
  OUTLINED_FUNCTION_73(v46);
  OUTLINED_FUNCTION_115();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, v56, v57, v58, a12, v60, a14, a15, a16);
}

uint64_t specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_45();
  v2 = v1[15];
  v3 = v1[14];
  v4 = v1[13];
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_28();

  return v8(v7);
}

{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_45();
  v2 = v1[22];
  v3 = v1[21];
  v4 = v1[20];
  v5 = v1[19];
  v6 = v1[17];
  v7 = v1[16];
  v8 = v1[15];
  v9 = *v0;
  OUTLINED_FUNCTION_11();
  *v10 = v9;

  v11 = OUTLINED_FUNCTION_28();

  return v12(v11);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_45();
  v2 = v1[32];
  v3 = v1[31];
  v4 = v1[30];
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_28();

  return v8(v7);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_45();
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  *v4 = v0;
  OUTLINED_FUNCTION_127();

  return v7();
}

void specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)()
{
  v1 = 0;
  v2 = *(v0 + 216);
  v34 = v2 + 32;
  v35 = *(v2 + 16);
  v3 = &_sScPSgMd;
  while (1)
  {
    v4 = 0uLL;
    v5 = v35;
    v6 = 0uLL;
    v7 = 0uLL;
    if (v1 != v35)
    {
      if (v1 >= v35)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_20;
      }

      *(v0 + 64) = v1;
      outlined init with copy of ExtractionRule(v34 + 40 * v1, v0 + 72);
      v4 = *(v0 + 64);
      v6 = *(v0 + 80);
      v7 = *(v0 + 96);
    }

    *(v0 + 16) = v4;
    *(v0 + 32) = v6;
    *(v0 + 48) = v7;
    if (!v7)
    {
      break;
    }

    v37 = v5;
    v8 = *(v0 + 240);
    v9 = *(v0 + 248);
    v10 = v3;
    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v36 = v4;
    v13 = type metadata accessor for TaskPriority();
    v14 = OUTLINED_FUNCTION_58();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    outlined init with take of ResponseOverrideMatcherProtocol((v0 + 24), v0 + 112);
    OUTLINED_FUNCTION_185();
    v17 = swift_allocObject();
    v17[2] = 0;
    v18 = v17 + 2;
    v17[3] = 0;
    v17[4] = v12;
    v3 = v10;
    v17[5] = v11;
    outlined init with take of ResponseOverrideMatcherProtocol((v0 + 112), (v17 + 6));
    v17[11] = v36;
    OUTLINED_FUNCTION_107();
    outlined init with copy of EagerResolutionService?();
    LODWORD(v8) = __swift_getEnumTagSinglePayload(v8, 1, v13);

    v19 = *(v0 + 240);
    if (v8 == 1)
    {
      outlined destroy of EagerResolutionService?(*(v0 + 240), v10, &_sScPSgMR);
    }

    else
    {
      TaskPriority.rawValue.getter();
      OUTLINED_FUNCTION_51(v13);
      (*(v20 + 8))(v19, v13);
    }

    if (*v18)
    {
      v21 = v17[3];
      v22 = *v18;
      swift_getObjectType();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_180();
      v23 = dispatch thunk of Actor.unownedExecutor.getter();
      v25 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v26 = **(v0 + 208);
    OUTLINED_FUNCTION_131();
    v27 = swift_allocObject();
    *(v27 + 16) = &async function pointer to partial apply for specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
    *(v27 + 24) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS_SaySSGttMd, &_sSi_SS_SaySSGttMR);
    v28 = v25 | v23;
    if (v25 | v23)
    {
      v28 = v0 + 152;
      *(v0 + 152) = 0;
      *(v0 + 160) = 0;
      *(v0 + 168) = v23;
      *(v0 + 176) = v25;
    }

    v29 = *(v0 + 248);
    *(v0 + 184) = 1;
    *(v0 + 192) = v28;
    *(v0 + 200) = v26;
    swift_task_create();

    outlined destroy of EagerResolutionService?(v29, v10, &_sScPSgMR);
    v1 = v37;
  }

  v30 = **(v0 + 208);
  OUTLINED_FUNCTION_60(&async function pointer to specialized TaskGroup.oms_results.getter);
  v38 = v31;
  v32 = swift_task_alloc();
  *(v0 + 256) = v32;
  *v32 = v0;
  v33 = OUTLINED_FUNCTION_73(v32);

  v38(v33);
}

uint64_t specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a7;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR) + 48);
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v7[4] = v13;
  *v13 = v7;
  v13[1] = specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v15(a1 + v11, a6);
}

{
  v7[2] = a1;
  v7[3] = a7;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B9CATEntityVtMd, &_sSi_10OmniSearch0B9CATEntityVtMR) + 48);
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v7[4] = v13;
  *v13 = v7;
  v13[1] = specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v15(a1 + v11, a6);
}

{
  *(v7 + 16) = a1;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(a2, a3, a4, a5, a6, a7);
}

uint64_t specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  return (*(v0 + 8))(*(v0 + 32), *(v0 + 16));
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  **(v0 + 16) = *(v0 + 24);
  OUTLINED_FUNCTION_127();
  return v1();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  return (*(v0 + 8))(*(v0 + 40), *(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  OUTLINED_FUNCTION_78();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_52();
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v0;
  OUTLINED_FUNCTION_11();
  *v9 = v8;

  *v7 = v4;
  v7[1] = v2;
  OUTLINED_FUNCTION_127();

  return v10();
}

uint64_t specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return (v10)(v6 + 2, v6 + 3);
}

{
  *(v6 + 40) = a6;
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v6 + 48) = v9;
  *v9 = v6;
  v9[1] = specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v11(v6 + 16, a5);
}

uint64_t specialized TaskGroup.oms_results.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B6ResultVtSgMd, &_sSi_10OmniSearch0B6ResultVtSgMR) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySi_10OmniSearch0C6ResultVt_GMd, &_sScG8IteratorVySi_10OmniSearch0C6ResultVt_GMR);
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized TaskGroup.oms_results.getter, 0, 0);
}

{
  v1[4] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySi_Say10OmniSearch0C6ResultVGt_GMd, &_sScG8IteratorVySi_Say10OmniSearch0C6ResultVGt_GMR);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized TaskGroup.oms_results.getter, 0, 0);
}

{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B9CATEntityVtMd, &_sSi_10OmniSearch0B9CATEntityVtMR);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B9CATEntityVtSgMd, &_sSi_10OmniSearch0B9CATEntityVtSgMR) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySi_10OmniSearch0C9CATEntityVt_GMd, &_sScG8IteratorVySi_10OmniSearch0C9CATEntityVt_GMR);
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized TaskGroup.oms_results.getter, 0, 0);
}

{
  v1[6] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySi_SS_SaySSGtt_GMd, &_sScG8IteratorVySi_SS_SaySSGtt_GMR);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized TaskGroup.oms_results.getter, 0, 0);
}

uint64_t specialized TaskGroup.oms_results.getter()
{
  OUTLINED_FUNCTION_48();
  v1 = v0[9];
  v2 = v0[2];
  v3 = v0[3];
  TaskGroup.makeAsyncIterator()();
  v0[10] = MEMORY[0x277D84F90];
  v4 = *(MEMORY[0x277D856B0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v0[11] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_32(v5);

  return MEMORY[0x2822002E8](v7);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[6];
  v2 = v0[3];
  v3 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_166(v3, v4, v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_154();
    v8(v7);

    OUTLINED_FUNCTION_62();
    v10 = v0[10];

    return v9(v10);
  }

  else
  {
    v12 = v0[10];
    v13 = v0[5];
    outlined init with take of (Int, SearchCATEntity)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v0[10];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = *(v15 + 16);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v21;
    }

    if (*(v15 + 16) >= *(v15 + 24) >> 1)
    {
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_117();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v22;
    }

    OUTLINED_FUNCTION_118();
    outlined init with take of (Int, SearchCATEntity)();
    v0[10] = v15;
    v16 = *(MEMORY[0x277D856B0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[11] = v17;
    *v17 = v18;
    v19 = OUTLINED_FUNCTION_32(v17);

    return MEMORY[0x2822002E8](v19);
  }
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_Say10OmniSearch0B6ResultVGtMd, &_sSi_Say10OmniSearch0B6ResultVGtMR);
  TaskGroup.makeAsyncIterator()();
  v0[8] = MEMORY[0x277D84F90];
  v3 = *(MEMORY[0x277D856B0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v0[9] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_77(v4);
  OUTLINED_FUNCTION_42();

  return MEMORY[0x2822002E8](v6);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_72();
  v2 = v0[2];
  v1 = v0[3];
  if (!v1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    OUTLINED_FUNCTION_62();
    v14 = v0[8];
    OUTLINED_FUNCTION_201();

    __asm { BRAA            X2, X16 }
  }

  v3 = v0[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0[8];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v5 + 16);
    v18 = OUTLINED_FUNCTION_44();
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20, v21);
  }

  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6 > 1, v7 + 1, 1, v5);
  }

  *(v5 + 16) = v7 + 1;
  v8 = v5 + 16 * v7;
  *(v8 + 32) = v2;
  *(v8 + 40) = v1;
  v0[8] = v5;
  v9 = *(MEMORY[0x277D856B0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v0[9] = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_201();

  return MEMORY[0x2822002E8](v12);
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[9];
  v2 = v0[2];
  v3 = v0[3];
  TaskGroup.makeAsyncIterator()();
  v0[10] = MEMORY[0x277D84F90];
  v4 = *(MEMORY[0x277D856B0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v0[11] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_32(v5);

  return MEMORY[0x2822002E8](v7);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[6];
  v2 = v0[3];
  v3 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_166(v3, v4, v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_154();
    v8(v7);

    OUTLINED_FUNCTION_62();
    v10 = v0[10];

    return v9(v10);
  }

  else
  {
    v12 = v0[10];
    v13 = v0[5];
    outlined init with take of (Int, SearchCATEntity)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v0[10];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = *(v15 + 16);
      OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v21;
    }

    if (*(v15 + 16) >= *(v15 + 24) >> 1)
    {
      OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_117();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v22;
    }

    OUTLINED_FUNCTION_118();
    outlined init with take of (Int, SearchCATEntity)();
    v0[10] = v15;
    v16 = *(MEMORY[0x277D856B0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[11] = v17;
    *v17 = v18;
    v19 = OUTLINED_FUNCTION_32(v17);

    return MEMORY[0x2822002E8](v19);
  }
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[9];
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS_SaySSGttMd, &_sSi_SS_SaySSGttMR);
  TaskGroup.makeAsyncIterator()();
  v0[10] = MEMORY[0x277D84F90];
  v3 = *(MEMORY[0x277D856B0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v0[11] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_76(v4);
  OUTLINED_FUNCTION_42();

  return MEMORY[0x2822002E8](v6);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_75();
  v1 = *(v0 + 32);
  if (*(v0 + 32))
  {
    v23 = *(v0 + 32);
    v24 = *(v0 + 16);
    v2 = *(v0 + 80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 80);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v4 + 16);
      v17 = OUTLINED_FUNCTION_44();
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17, v18, v19, v20);
    }

    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    v8 = v23;
    v7 = v24;
    if (v6 >= v5 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v5 > 1, v6 + 1, 1, v4);
      v8 = v23;
      v7 = v24;
      v4 = v21;
    }

    *(v4 + 16) = v6 + 1;
    v9 = v4 + 32 * v6;
    *(v9 + 32) = v7;
    *(v9 + 48) = v8;
    *(v0 + 80) = v4;
    v10 = *(MEMORY[0x277D856B0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 88) = v11;
    *v11 = v12;
    OUTLINED_FUNCTION_76();
    OUTLINED_FUNCTION_42();

    return MEMORY[0x2822002E8](v13);
  }

  else
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56), *(v0 + 16));

    OUTLINED_FUNCTION_62();
    v15 = *(v0 + 80);

    return v14(v15);
  }
}

uint64_t default argument 1 of JSONEncoder.init(dateEncodingStrategy:outputFormatting:keyEncodingStrategy:)()
{
  OUTLINED_FUNCTION_113();
  type metadata accessor for JSONEncoder.OutputFormatting();
  lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t default argument 2 of JSONEncoder.init(dateEncodingStrategy:outputFormatting:keyEncodingStrategy:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CC8740];
  v3 = type metadata accessor for JSONEncoder.KeyEncodingStrategy();
  v4 = OUTLINED_FUNCTION_17(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

BOOL specialized OptionSet<>.insert(_:)(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t default argument 1 of OmniSearchOptions.init(request:clientId:progressReporter:)()
{
  v0 = type metadata accessor for UUID();
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_107();
  v9(v8);
  return v6;
}

uint64_t default argument 4 of OmniSearchService.init(searchServices:answerResolver:maxPerSourceLimit:intermediateCallback:queryParser:answerSynthesisController:featureFlagService:resultHydrator:requestedPropertyController:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LLMQueryParser();
  OUTLINED_FUNCTION_105(v0, &protocol witness table for LLMQueryParser);
}

uint64_t default argument 5 of OmniSearchService.init(searchServices:answerResolver:maxPerSourceLimit:intermediateCallback:queryParser:answerSynthesisController:featureFlagService:resultHydrator:requestedPropertyController:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AnswerSynthesisController();
  OUTLINED_FUNCTION_105(v0, &protocol witness table for AnswerSynthesisController);
}

id default argument 4 of AnswerSynthesisController.init(modelType:answerSynthesisTokenLimit:featureFlagService:hallucinationMitigator:requestedPropertyController:ecrClient:isXPC:)()
{
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SageSearch();
  OUTLINED_FUNCTION_112();
  v2 = SageSearch.__allocating_init()();
  v3 = [objc_opt_self() sharedSession];
  OUTLINED_FUNCTION_120();
  type metadata accessor for FeatureFlagService();
  OUTLINED_FUNCTION_123();
  swift_allocObject();
  OUTLINED_FUNCTION_187();
  type metadata accessor for GlobalSearchClient();
  v4 = OUTLINED_FUNCTION_173();
  v4[7] = v1;
  v4[8] = &protocol witness table for SageSearch;
  v4[4] = v2;
  v5.n128_f64[0] = OUTLINED_FUNCTION_13(v4);
  v7 = OUTLINED_FUNCTION_64(v6, v5);
  v15 = OUTLINED_FUNCTION_184(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27);
  outlined assign with take of SearchToolGlobalSearchXPC?(v15, v16);
  swift_endAccess();
  v17 = type metadata accessor for GlobalResolutionService();
  v18 = OUTLINED_FUNCTION_161();
  *(v18 + 16) = v4;
  v0[3] = &type metadata for RequestedPropertyController;
  v0[4] = &protocol witness table for RequestedPropertyController;
  OUTLINED_FUNCTION_185();
  v19 = swift_allocObject();
  *v0 = v19;
  v19[5] = v17;
  v19[6] = &protocol witness table for GlobalResolutionService;
  v19[2] = v18;
  Parser = type metadata accessor for DefaultSpotlightQueryParser();
  v21 = OUTLINED_FUNCTION_161();
  result = [objc_opt_self() defaultManager];
  *(v21 + 16) = result;
  v19[10] = Parser;
  v19[11] = &protocol witness table for DefaultSpotlightQueryParser;
  v19[7] = v21;
  return result;
}

void default argument 1 of OmniSearchService.init(searchServices:answerResolver:maxPerSourceLimit:intermediateCallback:queryParser:answerSynthesisController:featureFlagService:resultHydrator:requestedPropertyController:)()
{
  OUTLINED_FUNCTION_113();
  v2 = type metadata accessor for SageSearch();
  OUTLINED_FUNCTION_112();
  v3 = SageSearch.__allocating_init()();
  v4 = [objc_opt_self() sharedSession];
  OUTLINED_FUNCTION_187();
  type metadata accessor for FeatureFlagService();
  OUTLINED_FUNCTION_123();
  v5 = swift_allocObject();
  type metadata accessor for GlobalSearchClient();
  v6 = OUTLINED_FUNCTION_173();
  v6[7] = v2;
  v6[8] = &protocol witness table for SageSearch;
  v6[4] = v3;
  *&v7 = OUTLINED_FUNCTION_13(v6);
  *(v8 + 88) = v7;
  v9 = v8 + 88;
  *(v8 + 72) = v1;
  *(v8 + 80) = v5;
  swift_beginAccess();
  outlined assign with take of SearchToolGlobalSearchXPC?(v25, v9);
  swift_endAccess();
  v10 = type metadata accessor for GlobalResolutionService();
  v11 = OUTLINED_FUNCTION_161();
  *(v11 + 16) = v6;
  v25[3] = v10;
  v25[4] = &protocol witness table for GlobalResolutionService;
  v25[0] = v11;
  OUTLINED_FUNCTION_123();
  swift_allocObject();
  v12 = type metadata accessor for AnswerResolver();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_184(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25[0]);
  AnswerResolver.init(resolutionService:featureFlagService:)();
  v0[3] = v12;
  v0[4] = &protocol witness table for AnswerResolver;
  *v0 = v13;
}

uint64_t default argument 7 of OmniSearchService.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v5 = OUTLINED_FUNCTION_114(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_109();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22[-v12];
  type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v23 = 1;
  v22[0] = 1;
  outlined init with copy of EagerResolutionService?();
  LOBYTE(v10) = InteractionMode.init(interactionMode:)(v10);
  result = outlined destroy of EagerResolutionService?(v13, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v19 = v23;
  v20 = v22[0];
  *a1 = 0;
  *(a1 + 8) = v19;
  *(a1 + 9) = *v26;
  *(a1 + 12) = *&v26[3];
  *(a1 + 16) = 0;
  *(a1 + 24) = v20;
  *(a1 + 25) = *v25;
  *(a1 + 28) = *&v25[3];
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  v21 = *v24;
  *(a1 + 44) = *&v24[3];
  *(a1 + 41) = v21;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE016_forceBridgeFromD1C_6resultyAD_01_D5CTypeQZ_xSgztFZSo21NSAttributedStringKeya_Tt1gq5Tm()
{
  OUTLINED_FUNCTION_134();

  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *v0 = 0;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE024_conditionallyBridgeFromD1C_6resultSbAD_01_D5CTypeQZ_xSgztFZSo21NSAttributedStringKeya_Tt1gq5Tm()
{
  OUTLINED_FUNCTION_134();

  v2 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *v0 = 0;
  return v2 & 1;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hashValue.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x25F89F760](v0);

  return v1;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hash(into:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int specialized _SwiftNewtypeWrapper<>._rawHashValue(seed:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSAttributedStringKey()
{
  v1 = OUTLINED_FUNCTION_189();
  result = NLTagScheme.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v3 = lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSAttributedStringKey@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x25F89F4C0](*a1, a1[1]);
  OUTLINED_FUNCTION_111();

  *a2 = v2;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NLTagScheme(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type NLTagScheme and conformance NLTagScheme, type metadata accessor for NLTagScheme);
  v3 = lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type NLTagScheme and conformance NLTagScheme, type metadata accessor for NLTagScheme);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    OUTLINED_FUNCTION_43();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v0 = v4;
  }
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch0I6ResultV_Tt1g5, type metadata accessor for SearchResult, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch26MessageAccumulationContextV0J0V_Tt1g5, type metadata accessor for MessageAccumulationContext.Message, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentV_Tt1g5, MEMORY[0x277D39A88], specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_GeoObjectComponentV_Tt1g5, MEMORY[0x277D397D8], specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentV_Tt1g5, MEMORY[0x277D39B70], specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV_Tt1g5, MEMORY[0x277D39A70], specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(&_ss23_ContiguousArrayStorageCySo8_NSRangeVGMd, &_ss23_ContiguousArrayStorageCySo8_NSRangeVGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return MEMORY[0x2821FC240]();
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v9;
  if (!result)
  {
    result = a4(result, *(v9 + 16) + 1, 1, v9, a1, a2, a3);
    *v4 = result;
  }

  return result;
}

void specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_43();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = v2;
  }
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch0I6ResultV_Tt1g5, type metadata accessor for SearchResult, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch26MessageAccumulationContextV0J0V_Tt1g5, type metadata accessor for MessageAccumulationContext.Message, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentV_Tt1g5, MEMORY[0x277D39A88], specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_GeoObjectComponentV_Tt1g5, MEMORY[0x277D397D8], specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentV_Tt1g5, MEMORY[0x277D39B70], specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV_Tt1g5, MEMORY[0x277D39A70], specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, &_ss23_ContiguousArrayStorageCySo8_NSRangeVGMd, &_ss23_ContiguousArrayStorageCySo8_NSRangeVGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(BOOL))
{
  v6 = *(*v5 + 24);
  if (result + 1 > (v6 >> 1))
  {
    result = a5(v6 > 1);
    *v5 = result;
  }

  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pGMd, &_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pGMR);
      v8 = OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_1(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, &_ss23CustomStringConvertible_pMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_43();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_124();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      v8 = OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_25(v8);
      OUTLINED_FUNCTION_26(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDyS2SGGMd, &_ss23_ContiguousArrayStorageCySDyS2SGGMR);
      v8 = OUTLINED_FUNCTION_100();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_18(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10OmniSearch13StackableGridOGGMd, &_ss23_ContiguousArrayStorageCySay10OmniSearch13StackableGridOGGMR);
      v8 = OUTLINED_FUNCTION_100();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_18(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch13StackableGridOGMd, &_sSay10OmniSearch13StackableGridOGMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E8OverrideVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E8OverrideVGMR);
      v8 = OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_1(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_54();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch21ECRClientPersonResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch21ECRClientPersonResultVGMR);
      v8 = OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_1(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_54();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch18SmartChunkingInputOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch18SmartChunkingInputOGMR);
      v8 = OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_1(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_54();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR);
      v8 = OUTLINED_FUNCTION_100();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_18(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_99();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_98(v7);
    if (v4)
    {
      v15 = OUTLINED_FUNCTION_82(v10, v11, v12, v13, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      v17 = OUTLINED_FUNCTION_125();
      v18 = _swift_stdlib_malloc_size(v17);
      v17[2] = v3;
      v17[3] = 2 * ((v18 - 32) / 4);
      if (v2)
      {
LABEL_9:
        v19 = OUTLINED_FUNCTION_104();
        v1(v19);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v20 = OUTLINED_FUNCTION_177();
    memcpy(v20, v21, v22);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v8)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E12GlobalEntityV15CustomAttributeOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E12GlobalEntityV15CustomAttributeOGMR);
      v8 = OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_1(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_54();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21SFCollectionStyleGridC_SitGMd, &_ss23_ContiguousArrayStorageCySo21SFCollectionStyleGridC_SitGMR);
      v8 = OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_25(v8);
      OUTLINED_FUNCTION_26(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21SFCollectionStyleGridC_SitMd, &_sSo21SFCollectionStyleGridC_SitMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo13SFCardSectionCGGMd, &_ss23_ContiguousArrayStorageCySaySo13SFCardSectionCGGMR);
      v8 = OUTLINED_FUNCTION_100();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_18(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySE_pGMd, &_ss23_ContiguousArrayStorageCySE_pGMR);
      v8 = OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_1(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pMd, &_sSE_pMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_97();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_96(v6);
    if (v3)
    {
      v14 = OUTLINED_FUNCTION_82(v9, v10, v11, v12, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
      v16 = OUTLINED_FUNCTION_125();
      v17 = _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_149((v17 - 32) / 32);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_103();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_91();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v7)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_99();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_98(v7);
    if (v4)
    {
      v15 = OUTLINED_FUNCTION_82(v10, v11, v12, v13, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      v17 = swift_allocObject();
      v18 = _swift_stdlib_malloc_size(v17);
      v17[2] = v3;
      v17[3] = 2 * v18 - 64;
      if (v2)
      {
LABEL_9:
        v19 = OUTLINED_FUNCTION_104();
        v1(v19);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v20 = OUTLINED_FUNCTION_177();
    memcpy(v20, v21, v3);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v8)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_97();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_96(v6);
    if (v3)
    {
      v14 = OUTLINED_FUNCTION_82(v9, v10, v11, v12, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_149((v17 - 32) / 64);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_103();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_91();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v7)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch13MessageRecord_pGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch13MessageRecord_pGMR);
      v8 = OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_1(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13MessageRecord_pMd, &_s10OmniSearch13MessageRecord_pMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch17MessageIdentifier_pGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch17MessageIdentifier_pGMR);
      v8 = OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_1(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17MessageIdentifier_pMd, &_s10OmniSearch17MessageIdentifier_pMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10PegasusAPI28Searchfoundation_CardSectionVGGMd, &_ss23_ContiguousArrayStorageCySay10PegasusAPI28Searchfoundation_CardSectionVGGMR);
      v8 = OUTLINED_FUNCTION_100();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_18(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI28Searchfoundation_CardSectionVGMd, &_sSay10PegasusAPI28Searchfoundation_CardSectionVGMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_202();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    OUTLINED_FUNCTION_10();
    if (v14 != v15)
    {
      OUTLINED_FUNCTION_49();
      if (v14)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9();
    }
  }

  else
  {
    v13 = v0;
  }

  v16 = *(v9 + 16);
  v17 = v1(v16, v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  OUTLINED_FUNCTION_135(v18);
  v20 = *(v19 + 80);
  OUTLINED_FUNCTION_79();
  if (v11)
  {
    v3(v9 + v21, v16, v17 + v21);
    *(v9 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_68(v21);
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_203();
}

{
  OUTLINED_FUNCTION_99();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_98(v7);
    if (v4)
    {
      v15 = OUTLINED_FUNCTION_82(v10, v11, v12, v13, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      v17 = OUTLINED_FUNCTION_125();
      _swift_stdlib_malloc_size(v17);
      OUTLINED_FUNCTION_39();
      v17[2] = v3;
      v17[3] = v18;
      if (v2)
      {
LABEL_9:
        v19 = OUTLINED_FUNCTION_104();
        v1(v19);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v20 = OUTLINED_FUNCTION_177();
    memcpy(v20, v21, v22);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v8)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_97();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_96(v7);
    if (v4)
    {
      v15 = OUTLINED_FUNCTION_82(v10, v11, v12, v13, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      v17 = OUTLINED_FUNCTION_125();
      _swift_stdlib_malloc_size(v17);
      OUTLINED_FUNCTION_39();
      v17[2] = v3;
      v17[3] = v18;
      if (v2)
      {
LABEL_9:
        v19 = OUTLINED_FUNCTION_103();
        v1(v19);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_91();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v8)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E7Service_pGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E7Service_pGMR);
      v8 = OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_1(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B7Service_pMd, &_s10OmniSearch0B7Service_pMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch0I6ResultV_Tt1g5, type metadata accessor for SearchResult, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10PegasusAPI21Searchfoundation_CardV_Tt1g5, MEMORY[0x277D38E40], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch10GlobalItemV_Tt1g5, type metadata accessor for GlobalItem, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10AppIntents12IntentPersonV6HandleV_Tt1g5, MEMORY[0x277CB9DA8], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch0I16PropertyResponseV_Tt1g5, type metadata accessor for SearchPropertyResponse, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15OmniSearchTypes34AnswerSynthesisExtractionCandidateO_Tt1g5, MEMORY[0x277D374E8], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15OmniSearchTypes30MemoryCreationQUParseSortOrderO_Tt1g5, MEMORY[0x277D374C8], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch22MemoryCreationQUResultV_Tt1g5, type metadata accessor for MemoryCreationQUResult, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch0I6EntityV_Tt1g5, type metadata accessor for SearchEntity, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch0I15PropertyRequestV_Tt1g5, type metadata accessor for SearchPropertyRequest, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentV_Tt1g5, MEMORY[0x277D39A88], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC27IntelligencePlatformLibrary0H23FlowSearchToolTelemetryV29AnswerSythesisHydrationMetricV_Tt1g5, MEMORY[0x277D1FD90], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch17PersonQueryEntityV_Tt1g5, type metadata accessor for PersonQueryEntity, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch19LocationQueryEntityV_Tt1g5, type metadata accessor for LocationQueryEntity, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch05AudioI13ResultsRankerC0jI17ResultRankingItemO_Tt1g5, type metadata accessor for AudioSearchResultsRanker.AudioSearchResultRankingItem, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10PegasusAPI28Searchfoundation_CardSectionV_Tt1g5, MEMORY[0x277D38EC8], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC13SiriInference12ContactQueryV_Tt1g5, MEMORY[0x277D55FF8], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC27IntelligencePlatformLibrary0H23FlowSearchToolTelemetryV0lm6GlobalL6ResultV_Tt1g5, MEMORY[0x277D1FD08], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC27IntelligencePlatformLibrary0H23FlowSearchToolTelemetryV0lm7GeneralL6ResultV_Tt1g5, MEMORY[0x277D1FD68], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_Say10OmniSearch0E6ResultVGtGMd, &_ss23_ContiguousArrayStorageCySi_Say10OmniSearch0E6ResultVGtGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_Say10OmniSearch0B6ResultVGtMd, &_sSi_Say10OmniSearch0B6ResultVGtMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SS_SaySSGttGMd, &_ss23_ContiguousArrayStorageCySi_SS_SaySSGttGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS_SaySSGttMd, &_sSi_SS_SaySSGttMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_10();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_49();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  a5(v15, v12);
  v16 = OUTLINED_FUNCTION_120();
  v17 = a6(v16);
  OUTLINED_FUNCTION_135(v17);
  v19 = *(v18 + 80);
  OUTLINED_FUNCTION_79();
  if (a1)
  {
    a7(a4 + v20, v15, v7 + v20);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_68(v20);
    swift_arrayInitWithCopy();
  }
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  v7 = *a1;
  *v7 = v5;
  *a1 = v7 + 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)()
{
  OUTLINED_FUNCTION_176();
  v3 = v2;

  OUTLINED_FUNCTION_69();
  v7 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v4, v5, v6, 1, v3, v1);
  v8 = v12[0];
  if (v7)
  {
    v9 = v7;

    ObjectType = swift_getObjectType();
    v12[0] = v9;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v12[0] = v3;
    v12[1] = v1;
  }

  v10 = *v0;
  if (*v0)
  {
    outlined init with copy of Any(v12, *v0);
    *v0 = v10 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v8;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
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
          result = _StringObject.sharedUTF8.getter();
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

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *specialized closure #1 in OSLogArguments.append<A>(_:)(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined assign with take of SearchToolGlobalSearchXPC?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_201();

  return closure #2 in AnswerResolver.resolve(extractedResults:options:)(v6, v7, v8, v9, v10, v11);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_127();

  return v5();
}

uint64_t outlined copy of ResultsDialog.RenderOption(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t type metadata accessor for TRIClient(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A];
  if (!lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:)()
{
  OUTLINED_FUNCTION_159();
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_59();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_63(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_84(v6);
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_198();

  __asm { BRAA            X6, X16 }
}

uint64_t dispatch thunk of AnswerResolvable.resolve(extractedResults:options:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_110();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_59();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_63(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_46(v6);

  return v9(v8);
}

uint64_t dispatch thunk of AnswerResolver.extractInfo(query:results:assistantLocale:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_133();
  v1 = *(v0 + 128);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_63(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46(v4);

  return v7(v6);
}

{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  OUTLINED_FUNCTION_52();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  OUTLINED_FUNCTION_62();

  return v7(v2);
}

uint64_t dispatch thunk of AnswerResolver.applyRules(query:result:assistantLocale:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_133();
  v1 = *(v0 + 136);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_150();

  return v7();
}

uint64_t dispatch thunk of AnswerResolver.resolve(extractedResults:options:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_133();
  v1 = *(v0 + 144);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_63(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_84(v4);
  v6 = OUTLINED_FUNCTION_119();

  return v8(v6);
}

uint64_t get_enum_tag_for_layout_string_10OmniSearch13ResultsDialogV12RenderOptionO(uint64_t a1)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ComposedAnswer(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ComposedAnswer(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd, &_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch11GeoLocationVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch11GeoLocationVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 160);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10OmniSearch0E6ResultVGGMd, &_ss23_ContiguousArrayStorageCySay10OmniSearch0E6ResultVGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDyS2SGGMd, &_ss23_ContiguousArrayStorageCySDyS2SGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo15DDScannerResultCGGMd, &_ss23_ContiguousArrayStorageCySaySo15DDScannerResultCGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15DDScannerResultCGMd, &_sSaySo15DDScannerResultCGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 4);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 4 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySSGtGMd, &_ss23_ContiguousArrayStorageCySS_SaySSGtGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E14OutputOverrideVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E14OutputOverrideVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_SS5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_SS5valuetGMR);
      v8 = OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_25(v8);
      OUTLINED_FUNCTION_26(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_SS5valuetMd, &_sSS3key_SS5valuetMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_61();
  if (v4)
  {
    OUTLINED_FUNCTION_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_49();
      if (v6)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_136(v5);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_10OmniSearch0E6ResultVtGMd, &_ss23_ContiguousArrayStorageCySi_10OmniSearch0E6ResultVtGMR);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
    OUTLINED_FUNCTION_21(v8);
    v10 = *(v9 + 72);
    v11 = OUTLINED_FUNCTION_81();
    _swift_stdlib_malloc_size(v11);
    if (v10)
    {
      OUTLINED_FUNCTION_138();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        OUTLINED_FUNCTION_137(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
  OUTLINED_FUNCTION_135(v14);
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_79();
  if (v1)
  {
    v18 = OUTLINED_FUNCTION_139(v17);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_68(v17);
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_203();
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_Say10OmniSearch0E6ResultVGtGMd, &_ss23_ContiguousArrayStorageCySi_Say10OmniSearch0E6ResultVGtGMR);
      v8 = OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_25(v8);
      OUTLINED_FUNCTION_26(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_Say10OmniSearch0B6ResultVGtMd, &_sSi_Say10OmniSearch0B6ResultVGtMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_61();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v9 = OUTLINED_FUNCTION_100();
      v10 = _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_18(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v9 + 32), (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v7)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_61();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_Sf7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_Sf7elementtGMR);
      v9 = OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_25(v9);
      OUTLINED_FUNCTION_26(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v7)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_Si5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_Si5valuetGMR);
      v8 = OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_1(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_Si5valuetMd, &_sSS3key_Si5valuetMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_202();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if ((v8 & 1) == 0)
  {
    v9 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v10 == v11)
  {
LABEL_7:
    OUTLINED_FUNCTION_96(v9);
    if (v0)
    {
      v17 = OUTLINED_FUNCTION_82(v12, v13, v14, v15, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
      v19 = swift_allocObject();
      v20 = _swift_stdlib_malloc_size(v19);
      OUTLINED_FUNCTION_149((v20 - 32) / 48);
      if (v7)
      {
LABEL_9:
        v21 = OUTLINED_FUNCTION_103();
        v3(v21);
        *(v5 + 16) = 0;
LABEL_12:

        OUTLINED_FUNCTION_203();
        return;
      }
    }

    else if (v7)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_91();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v10)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_61();
  if (v4)
  {
    OUTLINED_FUNCTION_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_49();
      if (v6)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_136(v5);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_10OmniSearch0E9CATEntityVtGMd, &_ss23_ContiguousArrayStorageCySi_10OmniSearch0E9CATEntityVtGMR);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B9CATEntityVtMd, &_sSi_10OmniSearch0B9CATEntityVtMR);
    OUTLINED_FUNCTION_21(v8);
    v10 = *(v9 + 72);
    v11 = OUTLINED_FUNCTION_81();
    _swift_stdlib_malloc_size(v11);
    if (v10)
    {
      OUTLINED_FUNCTION_138();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        OUTLINED_FUNCTION_137(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B9CATEntityVtMd, &_sSi_10OmniSearch0B9CATEntityVtMR);
  OUTLINED_FUNCTION_135(v14);
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_79();
  if (v1)
  {
    v18 = OUTLINED_FUNCTION_139(v17);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_68(v17);
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_203();
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SS_SaySSGttGMd, &_ss23_ContiguousArrayStorageCySi_SS_SaySSGttGMR);
      v8 = OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_25(v8);
      OUTLINED_FUNCTION_26(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS_SaySSGttMd, &_sSi_SS_SaySSGttMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_61();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch13MessageRecord_pGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch13MessageRecord_pGMR);
      v8 = OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_1(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_16();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13MessageRecord_pMd, &_s10OmniSearch13MessageRecord_pMR);
    OUTLINED_FUNCTION_33();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v6)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_61();
  if (v4)
  {
    OUTLINED_FUNCTION_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_49();
      if (v6)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_136(v5);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_10OmniSearch0F6ResultV7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_10OmniSearch0F6ResultV7elementtGMR);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    OUTLINED_FUNCTION_21(v8);
    v10 = *(v9 + 72);
    v11 = OUTLINED_FUNCTION_81();
    _swift_stdlib_malloc_size(v11);
    if (v10)
    {
      OUTLINED_FUNCTION_138();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        OUTLINED_FUNCTION_137(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  OUTLINED_FUNCTION_135(v14);
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_79();
  if (v1)
  {
    v18 = OUTLINED_FUNCTION_139(v17);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_68(v17);
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_203();
}

{
  OUTLINED_FUNCTION_99();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_98(v7);
    if (v4)
    {
      v15 = OUTLINED_FUNCTION_82(v10, v11, v12, v13, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      v17 = swift_allocObject();
      v18 = _swift_stdlib_malloc_size(v17);
      v17[2] = v3;
      v17[3] = 2 * v18 - 64;
      if (v2)
      {
LABEL_9:
        v19 = OUTLINED_FUNCTION_104();
        v1(v19);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v20 = OUTLINED_FUNCTION_177();
    memcpy(v20, v21, v3);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_49();
  if (!v8)
  {
    OUTLINED_FUNCTION_9();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_155();
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v10 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_10();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_49();
      if (v12)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9();
    }
  }

  else
  {
    v11 = v1;
  }

  v14 = *(v9 + 16);
  if (v11 <= v14)
  {
    v15 = *(v9 + 16);
  }

  else
  {
    v15 = v11;
  }

  if (!v15)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v16 = OUTLINED_FUNCTION_82(v0, v1, v2, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  v18 = v8(0);
  OUTLINED_FUNCTION_21(v18);
  v20 = *(v19 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v24 = _swift_stdlib_malloc_size(v23);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v24 - v22 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_149((v24 - v22) / v20);
LABEL_18:
  v26 = v8(0);
  OUTLINED_FUNCTION_135(v26);
  v28 = *(v27 + 80);
  OUTLINED_FUNCTION_79();
  if (v10)
  {
    v6(v9 + v29, v14, &v23[v29]);
    *(v9 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_148();
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch14ExtractionRule_pGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch14ExtractionRule_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch14ExtractionRule_pMd, &_s10OmniSearch14ExtractionRule_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySE_pGMd, &_ss23_ContiguousArrayStorageCySE_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pMd, &_sSE_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS8bundleId_SS03docE0tGMd, &_ss23_ContiguousArrayStorageCySS8bundleId_SS03docE0tGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS8bundleId_SS03docB0tMd, &_sSS8bundleId_SS03docB0tMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch28MessageAccumulationViewModelV7SummaryVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch28MessageAccumulationViewModelV7SummaryVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch17ChatMessageRecord_pGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch17ChatMessageRecord_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17ChatMessageRecord_pMd, &_s10OmniSearch17ChatMessageRecord_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVSgGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVSgGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_10OmniSearch0F6EntityV7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_10OmniSearch0F6EntityV7elementtGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_10OmniSearch0F6ResultV7elementSay27IntelligencePlatformLibrary0i4FlowF13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMd, &_ss23_ContiguousArrayStorageCySi6offset_10OmniSearch0F6ResultV7elementSay27IntelligencePlatformLibrary0i4FlowF13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingE0V09spotlightkE0tGMd, &_ss23_ContiguousArrayStorageCySo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingE0V09spotlightkE0tGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMd, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMd, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, &_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:));
  *a1 = v5;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6, &_sSi_Say10OmniSearch0B6ResultVGtMd, &_sSi_Say10OmniSearch0B6ResultVGtMR, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  *a1 = v2;
  return result;
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B9CATEntityVtMd, &_sSi_10OmniSearch0B9CATEntityVtMR) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, &_sSi_10OmniSearch0B9CATEntityVtMd, &_sSi_10OmniSearch0B9CATEntityVtMR, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:));
  *a1 = v3;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6, &_sSi_SS_SaySSGttMd, &_sSi_SS_SaySSGttMR, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7);
  *a1 = v3;
  return result;
}

{
  v2 = *(type metadata accessor for MessageAccumulationContext.Message(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7);
  *a1 = v3;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(unint64_t, int64_t, unint64_t), void (*a5)(unint64_t *, unint64_t *, unint64_t *))
{
  v10 = a1[1];
  result = _minimumMergeRunLength(_:)(v10);
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v14 + 16) = v13;
      }

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      OUTLINED_FUNCTION_114(v15);
      v17 = *(v16 + 80);
      OUTLINED_FUNCTION_79();
      v19[0] = v14 + v18;
      v19[1] = v13;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v19, v20, a1, v12, a2, a3, a4, a5);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v10, 1, a1, a2, a3);
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v10);
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = a3;
  v12 = OUTLINED_FUNCTION_82(a1, a2, a3, a4, a5);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v14 = *(*(v43 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v43);
  v42 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v33 - v18);
  result = MEMORY[0x28223BE20](v17);
  v23 = (&v33 - v22);
  v35 = a2;
  if (v9 != a2)
  {
    v24 = *a4;
    v25 = *(v21 + 72);
    v26 = *a4 + v25 * (v9 - 1);
    v40 = -v25;
    v41 = v24;
    v27 = a1 - v9;
    v34 = v25;
    v28 = v24 + v25 * v9;
    while (2)
    {
      v38 = v26;
      v39 = v9;
      v36 = v28;
      v37 = v27;
      v29 = v27;
      do
      {
        OUTLINED_FUNCTION_183();
        outlined init with copy of EagerResolutionService?();
        OUTLINED_FUNCTION_183();
        outlined init with copy of EagerResolutionService?();
        v30 = *v23;
        v31 = *v19;
        outlined destroy of EagerResolutionService?(v19, a5, a6);
        result = outlined destroy of EagerResolutionService?(v23, a5, a6);
        if (v31 < v30)
        {
          break;
        }

        if (!v41)
        {
          __break(1u);
          return result;
        }

        OUTLINED_FUNCTION_183();
        outlined init with take of (Int, SearchCATEntity)();
        OUTLINED_FUNCTION_153();
        swift_arrayInitWithTakeFrontToBack();
        OUTLINED_FUNCTION_183();
        result = outlined init with take of (Int, SearchCATEntity)();
        v26 += v40;
        v28 += v40;
      }

      while (!__CFADD__(v29++, 1));
      v9 = v39 + 1;
      v26 = v38 + v34;
      v27 = v37 - 1;
      v28 = v36 + v34;
      if (v39 + 1 != v35)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*v9 < v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 32;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*v9 < v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 40);
        v11 = *(v9 + 48);
        v12 = *(v9 + 16);
        *(v9 + 32) = *v9;
        *(v9 + 48) = v12;
        *v9 = v7;
        *(v9 + 8) = v10;
        *(v9 + 16) = v11;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 8);
        if (v9 >= *(v8 - 8))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v8;
        *v8 = *(v8 - 16);
        *(v8 - 8) = v9;
        *(v8 - 16) = v10;
        v8 -= 16;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = v9[1];
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 32 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 32);
        v10 = *(v12 + 40);
        v14 = *(v12 + 48);
        v15 = *(v12 + 56);
        v16 = *(v12 + 16);
        *(v12 + 32) = *v12;
        *(v12 + 48) = v16;
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 24) = v15;
        v12 -= 32;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 32;
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

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v88 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v83 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 2;
          v20 = (v13 >= v10) ^ (v17 < v19);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 >= v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (*v34 < v32)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v85 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = v8[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v81;
      }

      v37 = v8[2];
      v38 = v37 + 1;
      if (v37 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v82;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v7;
      v40[1] = v9;
      v86 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v86);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v85;
      a4 = v83;
      if (v85 >= v6)
      {
        v88 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v88, *a1, a3);
LABEL_89:
}

{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v86 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9);
        v11 = (*a3 + 32 * v7);
        v12 = 32 * v7;
        v15 = *v11;
        v14 = v11 + 8;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 4;
          v20 = (v13 >= v10) ^ (v17 < v19);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 >= v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 32 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                v29 = *(v26 - 16);
                *v25 = *(v26 - 32);
                v25[1] = v29;
                *(v26 - 32) = v27;
                *(v26 - 16) = v28;
              }

              ++v23;
              v21 -= 32;
              v12 += 32;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v9 - 32;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 32 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*v35 < v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 40);
                v37 = *(v35 + 48);
                v38 = *(v35 + 16);
                *(v35 + 32) = *v35;
                *(v35 + 48) = v38;
                *v35 = v33;
                *(v35 + 8) = v36;
                *(v35 + 16) = v37;
                v35 -= 32;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 32;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v88 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = v8[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v84;
      }

      v40 = v8[2];
      v41 = v40 + 1;
      if (v40 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v85;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v7;
      v43[1] = v9;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_56:
            if (v50)
            {
              goto LABEL_96;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_99;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_104;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v41 < 2)
          {
            goto LABEL_98;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_71:
          if (v65)
          {
            goto LABEL_101;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_103;
          }

          if (v72 < v64)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v76), (*a3 + 32 * *v78), (*a3 + 32 * v79), v89);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v79 < v77)
          {
            goto LABEL_91;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_92;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_93;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          v5 = 0;
          if (!v82)
          {
            goto LABEL_85;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_94;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_95;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_97;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_100;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_105;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v88;
      a4 = v86;
      if (v88 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v91, *a1, a3);
LABEL_89:
}

{
  v5 = v4;
  v89 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = *(v24 + 2);
                v28 = *v25;
                *v24 = *(v25 - 1);
                *(v24 + 2) = v28;
                *(v25 - 1) = v26;
                *v25 = v27;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 24 * v9;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 24 * v9 + 16);
              v33 = v31;
              v34 = v30;
              do
              {
                if (*(v34 - 1) >= v32)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *v34;
                v36 = v34[1];
                *v34 = *(v34 - 3);
                v34[2] = *(v34 - 1);
                *(v34 - 2) = v36;
                *(v34 - 1) = v32;
                *(v34 - 3) = v35;
                v34 -= 3;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 24;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = v8[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v82;
      }

      v38 = v8[2];
      v39 = v38 + 1;
      if (v38 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v83;
      }

      v8[2] = v39;
      v40 = v8 + 4;
      v41 = &v8[2 * v38 + 4];
      *v41 = v7;
      v41[1] = v86;
      v87 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v38)
      {
        while (1)
        {
          v42 = v39 - 1;
          v43 = &v40[2 * v39 - 2];
          v44 = &v8[2 * v39];
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v45 = v8[4];
            v46 = v8[5];
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_56:
            if (v48)
            {
              goto LABEL_96;
            }

            v60 = *v44;
            v59 = v44[1];
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_99;
            }

            v64 = v43[1];
            v65 = v64 - *v43;
            if (__OFSUB__(v64, *v43))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v62, v65))
            {
              goto LABEL_104;
            }

            if (v62 + v65 >= v47)
            {
              if (v47 < v65)
              {
                v42 = v39 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v39 < 2)
          {
            goto LABEL_98;
          }

          v67 = *v44;
          v66 = v44[1];
          v55 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          v63 = v55;
LABEL_71:
          if (v63)
          {
            goto LABEL_101;
          }

          v69 = *v43;
          v68 = v43[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_103;
          }

          if (v70 < v62)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v42 - 1 >= v39)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v74 = &v40[2 * v42 - 2];
          v75 = *v74;
          v76 = &v40[2 * v42];
          v77 = v76[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v74), (*a3 + 24 * *v76), *a3 + 24 * v77, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v77 < v75)
          {
            goto LABEL_91;
          }

          v78 = v8;
          v79 = v8[2];
          if (v42 > v79)
          {
            goto LABEL_92;
          }

          *v74 = v75;
          v74[1] = v77;
          if (v42 >= v79)
          {
            goto LABEL_93;
          }

          v39 = v79 - 1;
          memmove(&v40[2 * v42], v76 + 2, 16 * (v79 - 1 - v42));
          v78[2] = v79 - 1;
          v80 = v79 > 2;
          v8 = v78;
          v5 = 0;
          if (!v80)
          {
            goto LABEL_85;
          }
        }

        v49 = &v40[2 * v39];
        v50 = *(v49 - 8);
        v51 = *(v49 - 7);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_94;
        }

        v54 = *(v49 - 6);
        v53 = *(v49 - 5);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_95;
        }

        v56 = v44[1];
        v57 = v56 - *v44;
        if (__OFSUB__(v56, *v44))
        {
          goto LABEL_97;
        }

        v55 = __OFADD__(v47, v57);
        v58 = v47 + v57;
        if (v55)
        {
          goto LABEL_100;
        }

        if (v58 >= v52)
        {
          v72 = *v43;
          v71 = v43[1];
          v55 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v55)
          {
            goto LABEL_105;
          }

          if (v47 < v73)
          {
            v42 = v39 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v89, *a1, a3);
LABEL_89:
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t, int64_t, unint64_t), void (*a8)(unint64_t *, unint64_t *, unint64_t *))
{
  v135 = a7;
  v136 = a8;
  v129 = a1;
  v13 = OUTLINED_FUNCTION_82(a1, a2, a3, a4, a5);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  v15 = OUTLINED_FUNCTION_14(v145);
  v137 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_109();
  v131 = v19 - v20;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v21);
  v144 = &v127 - v22;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v23);
  v147 = &v127 - v24;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v25);
  v146 = (&v127 - v26);
  v139 = a3;
  v27 = *(a3 + 8);
  v148 = a6;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_101:
    v8 = *v129;
    if (!*v129)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v140 = v29;
      v121 = (v29 + 16);
      for (i = *(v29 + 16); i >= 2; *v121 = i)
      {
        if (!*v139)
        {
          goto LABEL_139;
        }

        v122 = v141;
        v123 = (v140 + 16 * i);
        v124 = *v123;
        v125 = &v121[2 * i];
        v29 = *(v125 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v139 + *(v137 + 72) * *v123, *v139 + *(v137 + 72) * *v125, *v139 + *(v137 + 72) * v29, v8, a5, v148, v135, v136);
        v141 = v122;
        if (v122)
        {
          break;
        }

        if (v29 < v124)
        {
          goto LABEL_127;
        }

        if (i - 2 >= *v121)
        {
          goto LABEL_128;
        }

        *v123 = v124;
        v123[1] = v29;
        v126 = *v121 - i;
        if (*v121 < i)
        {
          goto LABEL_129;
        }

        i = *v121 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v125 + 16, v126, v125);
      }

LABEL_111:

      return;
    }

LABEL_136:
    v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
    goto LABEL_103;
  }

  v127 = a4;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    v30 = v28++;
    if (v28 < v27)
    {
      v140 = v29;
      v31 = *v139;
      v8 = *(v137 + 72);
      v32 = v30;
      v33 = *v139 + v8 * v28;
      v29 = v146;
      OUTLINED_FUNCTION_157();
      v134 = v34;
      outlined init with copy of EagerResolutionService?();
      v35 = v147;
      OUTLINED_FUNCTION_157();
      outlined init with copy of EagerResolutionService?();
      v36 = *v29;
      v132 = *v35;
      v133 = v36;
      v37 = OUTLINED_FUNCTION_156();
      outlined destroy of EagerResolutionService?(v37, v38, a6);
      v39 = OUTLINED_FUNCTION_153();
      outlined destroy of EagerResolutionService?(v39, v40, a6);
      v41 = v134;
      v128 = v32;
      v42 = v32 + 2;
      v138 = v8;
      v43 = v31 + v8 * (v32 + 2);
      while (1)
      {
        v44 = v42;
        v45 = v28 + 1;
        if (v45 >= v41)
        {
          break;
        }

        LODWORD(v143) = v132 >= v133;
        v142 = v45;
        v46 = v146;
        v8 = v148;
        outlined init with copy of EagerResolutionService?();
        v47 = v147;
        outlined init with copy of EagerResolutionService?();
        v29 = *v46;
        v48 = *v47;
        OUTLINED_FUNCTION_150();
        outlined destroy of EagerResolutionService?(v49, v50, v51);
        v28 = v142;
        OUTLINED_FUNCTION_150();
        outlined destroy of EagerResolutionService?(v52, v53, v54);
        v41 = v134;
        v43 += v138;
        v33 += v138;
        v42 = v44 + 1;
        if (((v143 ^ (v48 < v29)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v28 = v41;
LABEL_9:
      if (v132 < v133)
      {
        v29 = v140;
        a6 = v148;
      }

      else
      {
        v30 = v128;
        if (v28 < v128)
        {
          goto LABEL_133;
        }

        if (v128 >= v28)
        {
          v29 = v140;
          a6 = v148;
          goto LABEL_32;
        }

        if (v41 >= v44)
        {
          v55 = v44;
        }

        else
        {
          v55 = v41;
        }

        v56 = v138 * (v55 - 1);
        v57 = v138 * v55;
        v58 = v128 * v138;
        v8 = v28;
        a6 = v148;
        do
        {
          if (v30 != --v8)
          {
            v59 = *v139;
            if (!*v139)
            {
              goto LABEL_140;
            }

            outlined init with take of (Int, SearchCATEntity)();
            v60 = v58 < v56 || v59 + v58 >= (v59 + v57);
            if (v60)
            {
              OUTLINED_FUNCTION_181();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != v56)
            {
              OUTLINED_FUNCTION_181();
              swift_arrayInitWithTakeBackToFront();
            }

            a6 = v148;
            outlined init with take of (Int, SearchCATEntity)();
          }

          ++v30;
          v56 -= v138;
          v57 -= v138;
          v58 += v138;
        }

        while (v30 < v8);
        v29 = v140;
      }

      v30 = v128;
    }

LABEL_32:
    v61 = v139[1];
    if (v28 < v61)
    {
      if (__OFSUB__(v28, v30))
      {
        goto LABEL_132;
      }

      if (v28 - v30 < v127)
      {
        break;
      }
    }

LABEL_48:
    if (v28 < v30)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v117 = *(v29 + 16);
      OUTLINED_FUNCTION_124();
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v29 = v118;
    }

    v73 = *(v29 + 16);
    v74 = v73 + 1;
    if (v73 >= *(v29 + 24) >> 1)
    {
      OUTLINED_FUNCTION_117();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v29 = v119;
    }

    *(v29 + 16) = v74;
    v75 = v29 + 32;
    v76 = (v29 + 32 + 16 * v73);
    *v76 = v30;
    v76[1] = v28;
    v143 = *v129;
    if (!v143)
    {
      goto LABEL_141;
    }

    if (v73)
    {
      v140 = v29;
      while (1)
      {
        v77 = v74 - 1;
        v78 = (v75 + 16 * (v74 - 1));
        v79 = (v29 + 16 * v74);
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_69:
          if (v83)
          {
            goto LABEL_118;
          }

          v95 = *v79;
          v94 = v79[1];
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_121;
          }

          v99 = v78[1];
          v100 = v99 - *v78;
          if (__OFSUB__(v99, *v78))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v97, v100))
          {
            goto LABEL_126;
          }

          if (v97 + v100 >= v82)
          {
            if (v82 < v100)
            {
              v77 = v74 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v74 < 2)
        {
          goto LABEL_120;
        }

        v102 = *v79;
        v101 = v79[1];
        v90 = __OFSUB__(v101, v102);
        v97 = v101 - v102;
        v98 = v90;
LABEL_84:
        if (v98)
        {
          goto LABEL_123;
        }

        v104 = *v78;
        v103 = v78[1];
        v90 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v90)
        {
          goto LABEL_125;
        }

        if (v105 < v97)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v77 - 1 >= v74)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v139)
        {
          goto LABEL_138;
        }

        v109 = v28;
        v110 = (v75 + 16 * (v77 - 1));
        v29 = *v110;
        v8 = v75;
        v111 = v77;
        v112 = v75 + 16 * v77;
        v113 = *(v112 + 8);
        v114 = v141;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v139 + *(v137 + 72) * *v110, *v139 + *(v137 + 72) * *v112, *v139 + *(v137 + 72) * v113, v143, a5, a6, v135, v136);
        v141 = v114;
        if (v114)
        {
          goto LABEL_111;
        }

        if (v113 < v29)
        {
          goto LABEL_113;
        }

        v115 = *(v140 + 16);
        if (v111 > v115)
        {
          goto LABEL_114;
        }

        *v110 = v29;
        v110[1] = v113;
        if (v111 >= v115)
        {
          goto LABEL_115;
        }

        v74 = v115 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v112 + 16), v115 - 1 - v111, v112);
        v29 = v140;
        *(v140 + 16) = v115 - 1;
        v116 = v115 > 2;
        a6 = v148;
        v75 = v8;
        v28 = v109;
        if (!v116)
        {
          goto LABEL_98;
        }
      }

      v84 = v75 + 16 * v74;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_116;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_117;
      }

      v91 = v79[1];
      v92 = v91 - *v79;
      if (__OFSUB__(v91, *v79))
      {
        goto LABEL_119;
      }

      v90 = __OFADD__(v82, v92);
      v93 = v82 + v92;
      if (v90)
      {
        goto LABEL_122;
      }

      if (v93 >= v87)
      {
        v107 = *v78;
        v106 = v78[1];
        v90 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v90)
        {
          goto LABEL_130;
        }

        if (v82 < v108)
        {
          v77 = v74 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v27 = v139[1];
    if (v28 >= v27)
    {
      goto LABEL_101;
    }
  }

  v62 = v30 + v127;
  if (__OFADD__(v30, v127))
  {
    goto LABEL_134;
  }

  if (v62 >= v61)
  {
    v62 = v139[1];
  }

  if (v62 < v30)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v28 == v62)
  {
    goto LABEL_48;
  }

  v140 = v29;
  v63 = *v139;
  v64 = *(v137 + 72);
  v65 = *v139 + v64 * (v28 - 1);
  v66 = -v64;
  v128 = v30;
  v67 = v30 - v28;
  v143 = v63;
  v130 = v64;
  v68 = v63 + v28 * v64;
  v132 = v62;
LABEL_41:
  v142 = v28;
  v133 = v68;
  v134 = v67;
  v138 = v65;
  while (1)
  {
    v8 = v146;
    OUTLINED_FUNCTION_157();
    outlined init with copy of EagerResolutionService?();
    v69 = v147;
    outlined init with copy of EagerResolutionService?();
    v70 = *v8;
    v71 = *v69;
    v72 = v69;
    a6 = v148;
    outlined destroy of EagerResolutionService?(v72, a5, v148);
    outlined destroy of EagerResolutionService?(v8, a5, a6);
    if (v71 < v70)
    {
LABEL_46:
      v28 = v142 + 1;
      v65 = v138 + v130;
      v67 = v134 - 1;
      v68 = v133 + v130;
      if (v142 + 1 == v132)
      {
        v28 = v132;
        v29 = v140;
        v30 = v128;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v143)
    {
      break;
    }

    OUTLINED_FUNCTION_157();
    outlined init with take of (Int, SearchCATEntity)();
    swift_arrayInitWithTakeFrontToBack();
    OUTLINED_FUNCTION_157();
    outlined init with take of (Int, SearchCATEntity)();
    v65 += v66;
    v68 += v66;
    v60 = __CFADD__(v67++, 1);
    if (v60)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
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
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
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
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
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

{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}