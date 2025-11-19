uint64_t partial apply for closure #3 in closure #1 in LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_78();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_23(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5_41(v5);

  return closure #3 in closure #1 in LocalQueryTask.run()();
}

id outlined copy of Result<SpotlightResult, Error>(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
  }
}

void outlined consume of Result<SpotlightResult, Error>?(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of Result<SpotlightResult, Error>(a1, a2, a3 & 1);
  }
}

void outlined consume of Result<SpotlightResult, Error>(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling()
{
  result = lazy protocol witness table cache variable for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling;
  if (!lazy protocol witness table cache variable for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling;
  if (!lazy protocol witness table cache variable for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of CheckedContinuation<(), Never>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for LocalQueryTask.LocalSearchTimingErrorSignaling(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_12_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_32()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

id OUTLINED_FUNCTION_19_30()
{

  return specialized LocalQueryTask.init(queryTask:startTime:diagnostics:)(v1, v4, v0, v2, v3, v6);
}

uint64_t OUTLINED_FUNCTION_22_23()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_28_23@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t *LocalSearchService.dateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    OUTLINED_FUNCTION_10_36();
  }

  return &static LocalSearchService.dateFormatter;
}

uint64_t LocalSearchService.maxItemCount.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t *LocalSearchService.iWorkBundleIds.unsafeMutableAddressor()
{
  if (one-time initialization token for iWorkBundleIds != -1)
  {
    OUTLINED_FUNCTION_9_39();
  }

  return &static LocalSearchService.iWorkBundleIds;
}

uint64_t static LocalSearchService.iWorkBundleIds.getter()
{
  if (one-time initialization token for iWorkBundleIds != -1)
  {
    OUTLINED_FUNCTION_9_39();
  }
}

void one-time initialization function for dateFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  outlined bridged method (mbnn) of @objc NSDateFormatter.dateFormat.setter(0x2D4D4D2D79797979, 0xEA00000000006464, v0);
  static LocalSearchService.dateFormatter = v0;
}

id static LocalSearchService.dateFormatter.getter()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    OUTLINED_FUNCTION_10_36();
  }

  v1 = static LocalSearchService.dateFormatter;

  return v1;
}

uint64_t LocalSearchService.init(maxItemCount:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for FeatureFlagService();
  v6 = swift_allocObject();
  type metadata accessor for LocalIndexClient();
  result = LocalIndexClient.__allocating_init()();
  *a3 = 1;
  *(a3 + 8) = 1;
  *(a3 + 16) = result;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2 & 1;
  *(a3 + 40) = v6;
  return result;
}

uint64_t LocalSearchService.init(maxItemCount:featureFlagService:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 1;
  *(a4 + 8) = 1;
  type metadata accessor for LocalIndexClient();
  result = LocalIndexClient.__allocating_init()();
  *(a4 + 16) = result;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2 & 1;
  *(a4 + 40) = a3;
  return result;
}

Swift::Void __swiftcall LocalSearchService.prewarm()()
{
  v1 = *(v0 + 16);
  LocalIndexClient.preheat()();
  LocalIndexClient.activate()();
}

uint64_t LocalSearchService.search(text:)()
{
  OUTLINED_FUNCTION_48();
  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
  *(v1 + 120) = v4;
  v5 = type metadata accessor for OSSignpostID();
  *(v1 + 144) = v5;
  OUTLINED_FUNCTION_21(v5);
  *(v1 + 152) = v6;
  v8 = *(v7 + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *v0;
  *(v1 + 168) = v9;
  *(v1 + 176) = v10;
  *(v1 + 240) = *(v0 + 8);
  *(v1 + 184) = *(v0 + 1);
  *(v1 + 241) = *(v0 + 32);
  *(v1 + 200) = v0[5];
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = *(v0 + 168);
  v2 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 168);
    v6 = OUTLINED_FUNCTION_172();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v7, "LocalSearchService.search", "", v6, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v8 = *(v0 + 241);
  v9 = *(v0 + 192);
  v25 = *(v0 + 240);
  v10 = *(v0 + 176);
  v26 = *(v0 + 184);
  v27 = *(v0 + 200);
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);
  v13 = *(v0 + 144);
  v14 = *(v0 + 152);
  v15 = *(v0 + 136);
  v24 = *(v0 + 128);

  (*(v14 + 16))(v11, v12, v13);
  v16 = type metadata accessor for OSSignpostIntervalState();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 208) = OUTLINED_FUNCTION_38_6();
  (*(v14 + 8))(v12, v13);
  type metadata accessor for LatencyProfiler();
  swift_allocObject();
  *(v0 + 216) = LatencyProfiler.init(_:)(0xD000000000000010, 0x800000025DBF72D0);
  *(v0 + 72) = v10;
  v19 = 20;
  *(v0 + 80) = v25;
  if (!v8)
  {
    v19 = v9;
  }

  *(v0 + 88) = v26;
  *(v0 + 96) = v9;
  *(v0 + 104) = v8;
  *(v0 + 112) = v27;
  *(v0 + 16) = v24;
  *(v0 + 24) = v15;
  *(v0 + 32) = v19;
  v20 = MEMORY[0x277D84F90];
  *(v0 + 40) = 0;
  *(v0 + 48) = v20;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;

  v21 = swift_task_alloc();
  *(v0 + 224) = v21;
  *v21 = v0;
  v21[1] = LocalSearchService.search(text:);
  v22 = *(v0 + 120);

  return LocalSearchService.search(spotlightRequest:)(v22, (v0 + 16));
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];

  OUTLINED_FUNCTION_133();
  (*(v6 + 152))();

  OUTLINED_FUNCTION_4_45(v7, &one-time initialization token for searchSignposter, static Logging.searchSignposter, "LocalSearchService.search");

  OUTLINED_FUNCTION_127();

  return v8();
}

{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];

  OUTLINED_FUNCTION_133();
  (*(v6 + 152))();

  OUTLINED_FUNCTION_4_45(v7, &one-time initialization token for searchSignposter, static Logging.searchSignposter, "LocalSearchService.search");

  OUTLINED_FUNCTION_127();
  v9 = v0[29];

  return v8();
}

uint64_t LocalSearchService.search(spotlightRequest:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(v3 + 72) = a1;
  *(v3 + 80) = v4;
  *(v3 + 88) = v5;
  *(v3 + 96) = *(a2 + 1);
  *(v3 + 112) = a2[4];
  *(v3 + 120) = *(a2 + 5);
  *(v3 + 136) = *(v2 + 16);
  return MEMORY[0x2822009F8](LocalSearchService.search(spotlightRequest:), 0, 0);
}

uint64_t LocalSearchService.search(spotlightRequest:)()
{
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logging.search);

  v6 = v2;

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v23 = *(v0 + 120);
    v24 = *(v0 + 128);
    v25 = v8;
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 80);
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 136315138;

    v15 = v6;

    SpotlightIndexRequest.description.getter();

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v14 + 4) = v16;
    _os_log_impl(&dword_25D85C000, v7, v25, "Start Spotlight search with request: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v17 = *(v0 + 112);
  v18 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 24) = v18;
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v17;
  *(v0 + 56) = *(v0 + 120);
  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  *v19 = v0;
  v19[1] = LocalSearchService.search(spotlightRequest:);
  v20 = *(v0 + 136);
  v21 = *(v0 + 72);

  return LocalIndexClient.search(spotlightRequest:)(v21, (v0 + 16));
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_127();

    return v12();
  }
}

{
  OUTLINED_FUNCTION_127();
  v1 = *(v0 + 152);
  return v2();
}

uint64_t LocalSearchService.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 144) = a2;
  *(v6 + 152) = a4;
  *(v6 + 136) = a1;
  v8 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  *(v6 + 160) = v8;
  OUTLINED_FUNCTION_21(v8);
  *(v6 + 168) = v9;
  v11 = *(v10 + 64);
  *(v6 + 176) = OUTLINED_FUNCTION_199();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef9SpotlightE13RetrievalTypeOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef9SpotlightE13RetrievalTypeOSgMR) - 8) + 64);
  *(v6 + 184) = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for SearchResult(0);
  *(v6 + 192) = v13;
  OUTLINED_FUNCTION_21(v13);
  *(v6 + 200) = v14;
  v16 = *(v15 + 64);
  *(v6 + 208) = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult();
  *(v6 + 216) = v17;
  OUTLINED_FUNCTION_21(v17);
  *(v6 + 224) = v18;
  v20 = *(v19 + 64);
  *(v6 + 232) = OUTLINED_FUNCTION_199();
  v21 = type metadata accessor for OSSignpostID();
  *(v6 + 240) = v21;
  OUTLINED_FUNCTION_21(v21);
  *(v6 + 248) = v22;
  v24 = *(v23 + 64) + 15;
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = *(a5 + 48);
  v25 = *(a5 + 72);
  *(v6 + 288) = *(a5 + 64);
  *(v6 + 296) = v25;
  *(v6 + 408) = *(a5 + 98);
  v26 = *v5;
  *(v6 + 409) = *(v5 + 8);
  v27 = v5[2];
  v28 = v5[3];
  *(v6 + 304) = v26;
  *(v6 + 312) = v27;
  *(v6 + 410) = *(v5 + 32);
  v29 = v5[5];
  *(v6 + 320) = v28;
  *(v6 + 328) = v29;
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t LocalSearchService.search(query:sources:allowedTypes:searchOptions:)()
{
  v51 = v0;
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    OUTLINED_FUNCTION_8_38();
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static Logging.searchComponentSignposter);
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v2 = *(v0 + 264);
  __swift_project_value_buffer(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 264);
    v6 = OUTLINED_FUNCTION_172();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v7, "LocalSearchService.search", "", v6, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v8 = *(v0 + 256);
  v9 = *(v0 + 264);
  v10 = *(v0 + 240);
  v11 = *(v0 + 248);

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 336) = OUTLINED_FUNCTION_38_6();
  (*(v11 + 8))(v9, v10);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 410);
  v17 = *(v0 + 320);
  v16 = *(v0 + 328);
  v18 = *(v0 + 409);
  v20 = *(v0 + 304);
  v19 = *(v0 + 312);
  v37 = *(v0 + 408);
  v21 = *(v0 + 288);
  v22 = *(v0 + 296);
  v35 = *(v0 + 272);
  v36 = *(v0 + 280);
  v23 = *(v0 + 144);
  v34 = *(v0 + 152);
  *(v0 + 344) = static MetricsLogger.shared;
  OUTLINED_FUNCTION_133();
  (*(v24 + 168))();
  type metadata accessor for LatencyProfiler();
  swift_allocObject();
  *(v0 + 352) = LatencyProfiler.init(_:)(0xD00000000000001DLL, 0x800000025DBF7310);
  v45 = v20;
  v46 = v18;
  v47 = v19;
  v48 = v17;
  v49 = v15;
  v50 = v16;
  LocalSearchService.constructSpotlightIndexRequest(query:allowedTypes:isExpectingAnswer:locale:)(v23, v34, v37, v35, v36, &v38);
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  *(v0 + 360) = v39;
  *(v0 + 368) = v28;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  *(v0 + 376) = v42;
  *(v0 + 384) = v31;
  *(v0 + 72) = v20;
  *(v0 + 80) = v18;
  *(v0 + 88) = v19;
  *(v0 + 96) = v17;
  *(v0 + 104) = v15;
  *(v0 + 112) = v16;
  *(v0 + 16) = v25;
  *(v0 + 24) = v26;
  *(v0 + 32) = v27;
  *(v0 + 40) = v28;
  *(v0 + 48) = v29;
  *(v0 + 56) = v30;
  *(v0 + 64) = v31;
  v32 = swift_task_alloc();
  *(v0 + 392) = v32;
  *v32 = v0;
  v32[1] = LocalSearchService.search(query:sources:allowedTypes:searchOptions:);

  return LocalSearchService.search(spotlightRequest:)(v0 + 120, (v0 + 16));
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 392);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 400) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v1 = v0[15];
  v51 = v0[16];
  v2 = *(v1 + 16);
  v52 = v1;
  if (v2)
  {
    v3 = v0[28];
    v4 = v0[25];
    v56 = v0[24];
    v58 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v54 = *(v4 + 72);
    do
    {
      v6 = v0[29];
      _s10OmniSearch0B6ResultVWOcTm_10(v5, v0[26], type metadata accessor for SearchResult);
      v7 = *(v56 + 20);
      IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.init()();
      v8 = SpotlightRankingItem.retrievalType.getter();
      if ((v9 & 1) == 0)
      {
        v10 = v0[29];
        v11 = v0[23];
        MEMORY[0x25F89E9E0](v8);
        MEMORY[0x25F89E2F0](v11);
      }

      v12 = v0[29];
      v13 = v0[26];
      SpotlightRankingItem.bundleId.getter();
      IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.bundleId.setter();
      v14 = SpotlightRankingItem.likelihood.getter();
      v15 = OUTLINED_FUNCTION_0_66(v14);
      MEMORY[0x25F89E2C0](v15);
      v16 = SpotlightRankingItem.topicality.getter();
      v17 = OUTLINED_FUNCTION_0_66(v16);
      MEMORY[0x25F89E2D0](v17);
      v18 = SpotlightRankingItem.pommesL1Score.getter();
      v19 = OUTLINED_FUNCTION_0_66(v18);
      MEMORY[0x25F89E2E0](v19);
      v20 = SpotlightRankingItem.pommesCalibratedL1Score.getter();
      v21 = OUTLINED_FUNCTION_0_66(v20);
      MEMORY[0x25F89E320](v21);
      v22 = SpotlightRankingItem.embeddingSimilarity.getter();
      v23 = OUTLINED_FUNCTION_0_66(v22);
      MEMORY[0x25F89E310](v23);
      matched = SpotlightRankingItem.keywordMatchScore.getter();
      v25 = OUTLINED_FUNCTION_0_66(matched);
      MEMORY[0x25F89E300](v25);
      v26 = SpotlightRankingItem.freshness.getter();
      v27 = OUTLINED_FUNCTION_0_66(v26);
      MEMORY[0x25F89E340](v27);
      _s10OmniSearch0B6ResultVWOhTm_8(v13, type metadata accessor for SearchResult);
      v28 = *(v58 + 16);
      if (v28 >= *(v58 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v29 = v0[29];
      v30 = v0[27];
      *(v58 + 16) = v28 + 1;
      (*(v3 + 32))(v58 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v28, v29, v30);
      v5 += v54;
      --v2;
    }

    while (v2);
  }

  v32 = v0[47];
  v31 = v0[48];
  v33 = v0[45];
  v34 = v0[46];
  v35 = v0[43];
  v36 = v0[44];
  v37 = v0[42];
  v38 = v0[36];
  v39 = v0[37];
  v48 = v0[33];
  v49 = v0[32];
  v50 = v0[29];
  v53 = v0[26];
  v55 = v0[23];
  v57 = v0[22];
  v40 = v0[17];
  OUTLINED_FUNCTION_133();
  (*(v41 + 176))();

  *v40 = v52;
  v40[1] = v51;
  (*(*v36 + 152))(v42);

  OUTLINED_FUNCTION_12_4();
  $defer #1 () in LocalSearchService.search(text:)(v37, v43, v44, v45);

  OUTLINED_FUNCTION_127();

  return v46();
}

{
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[48];
  v4 = v0[45];
  v5 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];
  v20 = v0[37];
  v21 = v0[33];
  v22 = v0[32];
  v23 = v0[29];
  v24 = v0[26];
  v9 = v0[22];
  v25 = v0[23];
  v10 = v0[21];
  v18 = v0[36];
  v19 = v0[20];

  OUTLINED_FUNCTION_133();
  (*(v11 + 152))();

  OUTLINED_FUNCTION_12_4();
  $defer #1 () in LocalSearchService.search(text:)(v8, v12, v13, v14);

  (*(*v7 + 320))(v1);
  (*(*v7 + 184))(v18, v20, v9);
  (*(v10 + 8))(v9, v19);
  swift_willThrow();

  OUTLINED_FUNCTION_127();
  v16 = v0[50];

  return v15();
}

uint64_t LocalSearchService.constructSpotlightIndexRequest(query:allowedTypes:isExpectingAnswer:locale:)@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v73 = a4;
  v74 = a5;
  v67 = a3;
  countAndFlagsBits = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v64 - v11;
  Entity = type metadata accessor for StructuredQueryEntity(0);
  v12 = OUTLINED_FUNCTION_17(Entity);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v65 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v66 = &v64 - v17;
  v18 = type metadata accessor for OSSignpostID();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v64 - v27;
  v71 = *(v6 + 24);
  v70 = *(v6 + 32);
  v68 = *(v6 + 40);
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    OUTLINED_FUNCTION_8_38();
  }

  v29 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v29, static Logging.searchComponentSignposter);
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  __swift_project_value_buffer(v29, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v30 = OSSignposter.logHandle.getter();
  v31 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v32 = OUTLINED_FUNCTION_172();
    *v32 = 0;
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v30, v31, v33, "SearchTool.ConstructSpotlightIndexRequest", "", v32, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  (*(v21 + 16))(v25, v28, v18);
  v34 = type metadata accessor for OSSignpostIntervalState();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v21 + 8))(v28, v18);
  v38 = static LocalSearchService.normalizeTypeIdentifiers(identifiers:)(countAndFlagsBits);
  v39 = type metadata accessor for UserQuery();
  v40 = *(v39 + 36);
  v41 = UtteranceNormalizer.normalize(_:preserveCase:)(a1[1], 1);
  countAndFlagsBits = v41._countAndFlagsBits;
  object = v41._object;
  v43 = a1[2]._object;
  if (v43)
  {
    v64 = v38;
    v44 = v37;
    v45 = a1[2]._countAndFlagsBits;
    OUTLINED_FUNCTION_133();
    v47 = *(v46 + 80);

    if (v47(30))
    {

      countAndFlagsBits = v45;
      object = v43;
      v37 = v44;
    }

    else
    {

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0();
      }

      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, static Logging.search);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      v37 = v44;
      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_172();
        *v51 = 0;
        _os_log_impl(&dword_25D85C000, v49, v50, "OmniSearch/simplifiedQuery FF is not enabled, ignoring simplified query", v51, 2u);
        OUTLINED_FUNCTION_42_0();
      }
    }

    v38 = v64;
  }

  v52 = v72;
  outlined init with copy of StructuredQueryEntity?(a1 + *(v39 + 28), v72);
  if (__swift_getEnumTagSinglePayload(v52, 1, Entity) == 1)
  {
    outlined destroy of StructuredQueryEntity?(v52);
    v53 = 0;
    v54 = countAndFlagsBits;
  }

  else
  {
    v55 = v66;
    outlined init with take of StructuredQueryEntity(v52, v66);
    type metadata accessor for SPQUParse();
    v56 = v65;
    _s10OmniSearch0B6ResultVWOcTm_10(v55, v65, type metadata accessor for StructuredQueryEntity);

    v54 = countAndFlagsBits;
    v53 = SPQUParse.init(from:query:isExpectingAnswer:)(v56, countAndFlagsBits, object, v67 & 1);
    _s10OmniSearch0B6ResultVWOhTm_8(v55, type metadata accessor for StructuredQueryEntity);
  }

  v57 = 20;
  if (!v70)
  {
    v57 = v71;
  }

  *a6 = v54;
  a6[1] = object;
  a6[2] = v57;
  a6[3] = v53;
  v59 = v73;
  v58 = v74;
  a6[4] = v38;
  a6[5] = v59;
  a6[6] = v58;

  OUTLINED_FUNCTION_12_4();
  $defer #1 () in LocalSearchService.search(text:)(v37, v60, v61, v62);
}

Swift::String __swiftcall LocalSearchService.toString(documents:)(Swift::OpaquePointer documents)
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_36();
  if (one-time initialization token for iso8601PrettyPrinted != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
  lazy protocol witness table accessor for type [SearchResult] and conformance <A> [A]();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;
  static String.Encoding.utf8.getter();
  v6 = String.init(data:encoding:)();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    outlined consume of Data._Representation(v3, v5);
  }

  else
  {
    outlined consume of Data._Representation(v3, v5);
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = v8;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t $defer #1 () in LocalSearchService.search(text:)(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v6 = type metadata accessor for OSSignpostError();
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  v15 = type metadata accessor for OSSignpostID();
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  v23 = v22 - v21;
  if (*a2 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v24, a3);
  v25 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v26 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v9 + 88))(v14, v6) == *MEMORY[0x277D85B00])
    {
      v27 = "[Error] Interval already ended";
    }

    else
    {
      (*(v9 + 8))(v14, v6);
      v27 = "";
    }

    v28 = OUTLINED_FUNCTION_172();
    *v28 = 0;
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v25, v26, v29, a4, v27, v28, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  return (*(v18 + 8))(v23, v15);
}

uint64_t static LocalSearchService.normalizeTypeIdentifiers(identifiers:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v3;
  }

  while (1)
  {
    v13 = *v2;

    closure #1 in static LocalSearchService.normalizeTypeIdentifiers(identifiers:)(&v13, &v12);

    v4 = v12;
    v5 = *(v12 + 16);
    v6 = *(v3 + 16);
    if (__OFADD__(v6, v5))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v3 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = v7;
    }

    if (*(v4 + 16))
    {
      if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
      {
        goto LABEL_16;
      }

      swift_arrayInitWithCopy();

      if (v5)
      {
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, v5);
        v10 = v8 + v5;
        if (v9)
        {
          goto LABEL_17;
        }

        *(v3 + 16) = v10;
      }
    }

    else
    {

      if (v5)
      {
        goto LABEL_15;
      }
    }

    ++v2;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #1 in static LocalSearchService.normalizeTypeIdentifiers(identifiers:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (one-time initialization token for iWorkBundleIds != -1)
  {
    swift_once();
  }

  v5 = static LocalSearchService.iWorkBundleIds;
  EntityProperty.wrappedValue.getter();
  LOBYTE(v5) = specialized Set.contains(_:)(v11, v12, v5);

  if ((v5 & 1) == 0)
  {
    EntityProperty.wrappedValue.getter();
    if (v11 == 0xD000000000000016 && 0x800000025DBF7360 == v12)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    EntityProperty.wrappedValue.getter();
    if (v12)
    {

LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_25DBC8180;
      *(v8 + 32) = v4;
      *(v8 + 40) = v3;
      *a2 = v8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25DBC9D00;
  EntityProperty.wrappedValue.getter();
  SearchEntityTypeIdentifier.init(bundleId:typeName:)((v10 + 32));
  EntityProperty.wrappedValue.getter();
  result = SearchEntityTypeIdentifier.init(bundleId:typeName:)((v10 + 48));
  *a2 = v10;
  return result;
}

uint64_t protocol witness for SearchService.search(query:sources:allowedTypes:searchOptions:) in conformance LocalSearchService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return LocalSearchService.search(query:sources:allowedTypes:searchOptions:)(a1, a2, v10, a4, a5);
}

Swift::Int LocalSearchService.ParseError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalSearchService.ParseError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  LocalSearchService.ParseError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t outlined init with copy of StructuredQueryEntity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of StructuredQueryEntity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for SPQUParse()
{
  result = lazy cache variable for type metadata for SPQUParse;
  if (!lazy cache variable for type metadata for SPQUParse)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SPQUParse);
  }

  return result;
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LocalSearchService.ParseError and conformance LocalSearchService.ParseError()
{
  result = lazy protocol witness table cache variable for type LocalSearchService.ParseError and conformance LocalSearchService.ParseError;
  if (!lazy protocol witness table cache variable for type LocalSearchService.ParseError and conformance LocalSearchService.ParseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalSearchService.ParseError and conformance LocalSearchService.ParseError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalSearchService(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for LocalSearchService(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalSearchService.ParseError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_4_45(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{

  return $defer #1 () in LocalSearchService.search(text:)(v4, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_8_38()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_36()
{

  return swift_once();
}

uint64_t PreExtractedCard.Keys.llmPrompt.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for NSUserDefaults();
  v4 = static NSUserDefaults.llmPromptLineBreak.getter();
  v5 = static NSUserDefaults.llmPromptLineBreak.getter();
  v7 = v6;

  MEMORY[0x25F89F6C0](v5, v7);

  v8 = a2(a1);
  v10 = v9;

  MEMORY[0x25F89F6C0](v8, v10);

  MEMORY[0x25F89F6C0](58, 0xE100000000000000);

  return v4;
}

void PartialExtractedAttributes.init(item:bundleID:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v168 = a2;
  v176 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
  v8 = OUTLINED_FUNCTION_114(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_2();
  v177 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
  v14 = OUTLINED_FUNCTION_114(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_109();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_2();
  v181 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  v23 = OUTLINED_FUNCTION_114(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_109();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_2();
  v180 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_39_0();
  v169 = v35;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_14_2();
  v179 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
  v39 = OUTLINED_FUNCTION_114(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39_0();
  v175 = v42;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_14_2();
  v178 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
  v46 = OUTLINED_FUNCTION_114(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39_0();
  v174 = v49;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_14_2();
  v52 = v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
  v54 = OUTLINED_FUNCTION_114(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_39_0();
  v173 = v57;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v58);
  v60 = &v158 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
  v62 = OUTLINED_FUNCTION_114(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_39_0();
  v172 = v65;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v66);
  v68 = &v158 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
  v70 = OUTLINED_FUNCTION_114(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_39_0();
  v171 = v73;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v74);
  v76 = &v158 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  v78 = OUTLINED_FUNCTION_114(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_39_0();
  v170 = v81;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v82);
  v84 = &v158 - v83;
  v85 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter([a1 attributeSet]);
  if (v85)
  {
    if (*(v85 + 16))
    {
      v166 = v4;
      v167 = v85;
      outlined bridged method (mbgnn) of @objc CSSearchableItem.bundleID.setter(v168, a3, a1);

      v86 = [a1 uniqueIdentifier];
      v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v163 = v87;

      v88 = type metadata accessor for RentalCarReservation();
      OUTLINED_FUNCTION_10_24(v84, v89, v90, v88);
      v91 = type metadata accessor for TicketedTransportation();
      OUTLINED_FUNCTION_10_24(v76, v92, v93, v91);
      v94 = type metadata accessor for TicketedShow();
      OUTLINED_FUNCTION_10_24(v68, v95, v96, v94);
      v97 = type metadata accessor for Appointment();
      OUTLINED_FUNCTION_10_24(v60, v98, v99, v97);
      v100 = type metadata accessor for Party();
      OUTLINED_FUNCTION_10_24(v52, v101, v102, v100);
      v103 = type metadata accessor for Trip();
      OUTLINED_FUNCTION_10_24(v178, v104, v105, v103);
      v106 = type metadata accessor for FlightReservation();
      OUTLINED_FUNCTION_10_24(v179, v107, v108, v106);
      v109 = type metadata accessor for HotelReservation();
      OUTLINED_FUNCTION_10_24(v180, v110, v111, v109);
      v112 = type metadata accessor for RestaurantReservation();
      OUTLINED_FUNCTION_10_24(v181, v113, v114, v112);
      type metadata accessor for ShippingOrder();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0();
      }

      v168 = v28;
      v119 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v119, static Logging.search);
      v120 = v167;

      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.info.getter();

      v123 = os_log_type_enabled(v121, v122);
      v165 = v19;
      v161 = a1;
      if (v123)
      {
        v160 = v122;
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v182 = v125;
        *v124 = 136315138;
        MEMORY[0x25F89F8A0](v120, MEMORY[0x277D837D0]);
        v159 = v121;
        v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v124 + 4) = v126;
        v127 = v159;
        _os_log_impl(&dword_25D85C000, v159, v160, "PartialExtractedAttributes: processing detectedEventTypes: %s", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v125);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {
      }

      v141 = *(v120 + 16);
      v142 = v161;
      for (i = (v120 + 40); v141; --v141)
      {
        v144 = *i;
        v182 = *(i - 1);
        v183 = v144;

        v157 = v177;
        v156 = v181;
        v155 = v180;
        v154 = v179;
        OUTLINED_FUNCTION_44_22();
        closure #1 in PartialExtractedAttributes.init(item:bundleID:)(v145, v146, v147, v148, v68, v60, v52, v178, v154, v155, v156, v157);

        i += 2;
      }

      outlined init with copy of RentalCarReservation?(v84, v170, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
      outlined init with copy of RentalCarReservation?(v76, v171, &_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
      outlined init with copy of RentalCarReservation?(v68, v172, &_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
      outlined init with copy of RentalCarReservation?(v60, v173, &_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
      v162 = v52;
      outlined init with copy of RentalCarReservation?(v52, v174, &_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
      outlined init with copy of RentalCarReservation?(v178, v175, &_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
      outlined init with copy of RentalCarReservation?(v179, v169, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
      outlined init with copy of RentalCarReservation?(v180, v168, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
      outlined init with copy of RentalCarReservation?(v181, v165, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
      v149 = v177;
      outlined init with copy of RentalCarReservation?(v177, v166, &_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
      PartialExtractedAttributes.init(id:rentalCarReservation:ticketedTransportation:ticketedShow:appointment:party:trip:flightReservation:hotelReservation:restaurantReservation:shippingOrder:)();

      outlined destroy of ResourceBundle?(v149, &_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
      outlined destroy of ResourceBundle?(v181, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
      outlined destroy of ResourceBundle?(v180, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
      outlined destroy of ResourceBundle?(v179, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
      outlined destroy of ResourceBundle?(v178, &_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
      outlined destroy of ResourceBundle?(v162, &_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
      outlined destroy of ResourceBundle?(v60, &_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
      outlined destroy of ResourceBundle?(v68, &_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
      outlined destroy of ResourceBundle?(v76, &_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
      outlined destroy of ResourceBundle?(v84, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
      type metadata accessor for PartialExtractedAttributes();
      OUTLINED_FUNCTION_48_13();
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
      OUTLINED_FUNCTION_148();
      return;
    }
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v128 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v128, static Logging.search);
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_105_6(v130))
  {
    v131 = OUTLINED_FUNCTION_172();
    *v131 = 0;
    OUTLINED_FUNCTION_25_25();
    _os_log_impl(v132, v133, v134, v135, v131, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  type metadata accessor for PartialExtractedAttributes();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_148();

  __swift_storeEnumTagSinglePayload(v136, v137, v138, v139);
}

void closure #1 in PartialExtractedAttributes.init(item:bundleID:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v154 = a3;
  v148 = a8;
  v149 = a7;
  v150 = a6;
  v151 = a5;
  v152 = a4;
  v153 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v142 = &v140 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v143 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v140 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v145 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v144 = &v140 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v146 = &v140 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v147 = &v140 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v140 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v140 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v140 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = &v140 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = &v140 - v51;
  v53 = *a1;
  v54 = a1[1];
  v55 = *MEMORY[0x277CC22A0];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v53 && v56 == v54)
  {

    goto LABEL_57;
  }

  v141 = v21;
  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {
LABEL_57:
    RentalCarReservation.init(item:checkEventType:)(v154, 0);
    outlined assign with take of ShippingOrder?(v52, v153, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    __swift_project_value_buffer(v100, static Logging.search);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v101, v102))
    {
      goto LABEL_62;
    }

    v103 = swift_slowAlloc();
    *v103 = 0;
    v104 = "PartialExtractedAttributes: created RentalCarReservation";
    goto LABEL_61;
  }

  v59 = *MEMORY[0x277CC22D8];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v53 && v60 == v54)
  {

    goto LABEL_64;
  }

  v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v62)
  {
LABEL_64:
    TicketedTransportation.init(item:checkEventType:)(v154, 0);
    outlined assign with take of ShippingOrder?(v48, v152, &_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    __swift_project_value_buffer(v105, static Logging.search);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v101, v102))
    {
      goto LABEL_62;
    }

    v103 = swift_slowAlloc();
    *v103 = 0;
    v104 = "PartialExtractedAttributes: created TicketedTransportation";
    goto LABEL_61;
  }

  v63 = *MEMORY[0x277CC22D0];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v53 && v64 == v54)
  {

    goto LABEL_69;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v66)
  {
LABEL_69:
    TicketedShow.init(item:checkEventType:)(v154, 0);
    outlined assign with take of ShippingOrder?(v44, v151, &_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v106 = type metadata accessor for Logger();
    __swift_project_value_buffer(v106, static Logging.search);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v101, v102))
    {
      goto LABEL_62;
    }

    v103 = swift_slowAlloc();
    *v103 = 0;
    v104 = "PartialExtractedAttributes: created TicketedShow";
    goto LABEL_61;
  }

  v67 = *MEMORY[0x277CC2298];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v53 && v68 == v54)
  {

    goto LABEL_74;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v70)
  {
LABEL_74:
    Appointment.init(item:checkEventType:)(v154, 0);
    outlined assign with take of ShippingOrder?(v40, v150, &_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v107 = type metadata accessor for Logger();
    __swift_project_value_buffer(v107, static Logging.search);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v101, v102))
    {
      goto LABEL_62;
    }

    v103 = swift_slowAlloc();
    *v103 = 0;
    v104 = "PartialExtractedAttributes: created Appointment";
    goto LABEL_61;
  }

  v71 = *MEMORY[0x277CC22C0];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v53 && v72 == v54)
  {

    goto LABEL_79;
  }

  v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v74)
  {
LABEL_79:
    Party.init(item:checkEventType:)(v154, 0);
    outlined assign with take of ShippingOrder?(v36, v149, &_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    __swift_project_value_buffer(v108, static Logging.search);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v101, v102))
    {
      goto LABEL_62;
    }

    v103 = swift_slowAlloc();
    *v103 = 0;
    v104 = "PartialExtractedAttributes: created Party";
    goto LABEL_61;
  }

  v75 = *MEMORY[0x277CC22E0];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v53 && v76 == v54)
  {

    goto LABEL_84;
  }

  v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v78)
  {
LABEL_84:
    v109 = v154;
    v110 = v147;
    Trip.init(item:checkEventType:)(v109, 0);
    outlined assign with take of ShippingOrder?(v110, v148, &_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v111 = type metadata accessor for Logger();
    __swift_project_value_buffer(v111, static Logging.search);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v101, v102))
    {
      goto LABEL_62;
    }

    v103 = swift_slowAlloc();
    *v103 = 0;
    v104 = "PartialExtractedAttributes: created Trip";
    goto LABEL_61;
  }

  v79 = *MEMORY[0x277CC22A8];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v53 && v80 == v54)
  {

    goto LABEL_89;
  }

  v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v82)
  {
LABEL_89:
    v112 = v154;
    v113 = v146;
    FlightReservation.init(item:)(v112, v146);
    outlined assign with take of ShippingOrder?(v113, a9, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    __swift_project_value_buffer(v114, static Logging.search);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v101, v102))
    {
      goto LABEL_62;
    }

    v103 = swift_slowAlloc();
    *v103 = 0;
    v104 = "PartialExtractedAttributes: created FlightReservation";
    goto LABEL_61;
  }

  v83 = *MEMORY[0x277CC22B0];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v53 && v84 == v54)
  {

    goto LABEL_94;
  }

  v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v86)
  {
LABEL_94:
    type metadata accessor for FeatureFlagService();
    v115 = swift_allocObject();
    v116 = v154;
    v117 = v145;
    HotelReservation.init(item:answerAttributes:requireDates:featureFlagService:)(v116, MEMORY[0x277D84F90], 0, v115, v118, v119, v120, v121, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153);
    v122 = type metadata accessor for HotelReservation();
    if (__swift_getEnumTagSinglePayload(v117, 1, v122))
    {
      outlined destroy of ResourceBundle?(v145, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
      v123 = 1;
    }

    else
    {
      (*(*(v122 - 8) + 32))(v144, v145, v122);
      v123 = 0;
    }

    v124 = v144;
    __swift_storeEnumTagSinglePayload(v144, v123, 1, v122);
    outlined assign with take of ShippingOrder?(v124, a10, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v125 = type metadata accessor for Logger();
    __swift_project_value_buffer(v125, static Logging.search);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v101, v102))
    {
      goto LABEL_62;
    }

    v103 = swift_slowAlloc();
    *v103 = 0;
    v104 = "PartialExtractedAttributes: created HotelReservation";
    goto LABEL_61;
  }

  v87 = *MEMORY[0x277CC22C8];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v53 && v88 == v54)
  {

    goto LABEL_102;
  }

  v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v90)
  {
LABEL_102:
    type metadata accessor for FeatureFlagService();
    v126 = swift_allocObject();
    v127 = v154;
    v128 = v143;
    RestaurantReservation.init(item:answerAttributes:requireDates:featureFlagService:)(v127, MEMORY[0x277D84F90], 0, v126, v129, v130, v131, v132, v140, SHIDWORD(v140), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
    v133 = type metadata accessor for RestaurantReservation();
    if (__swift_getEnumTagSinglePayload(v128, 1, v133))
    {
      outlined destroy of ResourceBundle?(v143, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
      v134 = 1;
    }

    else
    {
      (*(*(v133 - 8) + 32))(v141, v143, v133);
      v134 = 0;
    }

    v135 = v141;
    __swift_storeEnumTagSinglePayload(v141, v134, 1, v133);
    outlined assign with take of ShippingOrder?(v135, a11, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v136 = type metadata accessor for Logger();
    __swift_project_value_buffer(v136, static Logging.search);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v101, v102))
    {
      goto LABEL_62;
    }

    v103 = swift_slowAlloc();
    *v103 = 0;
    v104 = "PartialExtractedAttributes: created RestaurantReservation";
    goto LABEL_61;
  }

  v91 = *MEMORY[0x277CC22B8];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v53 && v92 == v54)
  {

    goto LABEL_110;
  }

  v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v94)
  {
LABEL_110:
    v137 = v154;
    v138 = v142;
    ShippingOrder.init(item:)(v137, v142);
    outlined assign with take of ShippingOrder?(v138, a12, &_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v139 = type metadata accessor for Logger();
    __swift_project_value_buffer(v139, static Logging.search);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v101, v102))
    {
      goto LABEL_62;
    }

    v103 = swift_slowAlloc();
    *v103 = 0;
    v104 = "PartialExtractedAttributes: created ShippingOrder";
LABEL_61:
    _os_log_impl(&dword_25D85C000, v101, v102, v104, v103, 2u);
    MEMORY[0x25F8A1050](v103, -1, -1);
LABEL_62:

    return;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  __swift_project_value_buffer(v95, static Logging.search);

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v155 = v99;
    *v98 = 136315138;
    *(v98 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v96, v97, "PartialExtractedAttributes: unimplemented eventType: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    MEMORY[0x25F8A1050](v99, -1, -1);
    MEMORY[0x25F8A1050](v98, -1, -1);
  }
}

void PreExtractedCard.init(item:featureFlagService:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = OUTLINED_FUNCTION_114(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_109();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v198[1] = v192 - v15;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_45_16();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v192 - v19;
  MEMORY[0x28223BE20](v18);
  v198[0] = v192 - v21;
  OUTLINED_FUNCTION_174();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v192 - v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36_21();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v192 - v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_2();
  v199 = v30;
  if ((*(*a2 + 80))(14))
  {
    v196 = v13;
    v31 = [a1 attributeSet];
    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v31, &selRef_cardType);
    if (v32)
    {
      v197 = v3;

      v33 = [a1 uniqueIdentifier];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v192[32] = v35;
      v193 = v34;

      if ([v31 attributeForKey_])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      v195[0] = a2;
      OUTLINED_FUNCTION_16_31();
      if (v57)
      {
        OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_43_13())
        {
          v58 = v201;
          v192[31] = v200;
          goto LABEL_24;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v212);
LABEL_24:
      v192[30] = v58;
      if ([v31 attributeForKey_])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v59)
      {
        OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_42_20())
        {
          v60 = v201;
          v192[29] = v200;
          goto LABEL_32;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v211);
LABEL_32:
      v192[28] = v60;
      if ([v31 attributeForKey_])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v61)
      {
        OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_42_20())
        {
          v62 = v201;
          v192[27] = v200;
          goto LABEL_40;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v210);
LABEL_40:
      v192[26] = v62;
      if ([v31 attributeForKey_])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v63)
      {
        OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_42_20())
        {
          v64 = v201;
          v192[25] = v200;
          goto LABEL_48;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v209);
LABEL_48:
      v192[24] = v64;
      if ([v31 attributeForKey_])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v65)
      {
        OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_42_20())
        {
          v66 = v201;
          v192[23] = v200;
          goto LABEL_56;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v208);
LABEL_56:
      v192[22] = v66;
      if ([v31 attributeForKey_])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v67)
      {
        OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_42_20())
        {
          v68 = v201;
          v192[21] = v200;
          goto LABEL_64;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(v207);
LABEL_64:
      v192[20] = v68;
      if ([v31 attributeForKey_])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v69)
      {
        type metadata accessor for Date();
        OUTLINED_FUNCTION_46_20();
        v70 = OUTLINED_FUNCTION_51_17();
        OUTLINED_FUNCTION_28_24(v29, v70 ^ 1u);
        OUTLINED_FUNCTION_38_5(v29);
        if (!v71)
        {
          OUTLINED_FUNCTION_51(v33);
          (*(v72 + 32))(v199, v29, v33);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v73, v74, v75, v33);
          goto LABEL_73;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
        v33 = type metadata accessor for Date();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v76, v77, v78, v33);
      }

      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v33);
      OUTLINED_FUNCTION_38_5(v29);
      if (!v71)
      {
        outlined destroy of ResourceBundle?(v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

LABEL_73:
      if ([v31 attributeForKey_])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v82)
      {
        type metadata accessor for Date();
        OUTLINED_FUNCTION_46_20();
        v83 = OUTLINED_FUNCTION_51_17();
        OUTLINED_FUNCTION_28_24(v25, v83 ^ 1u);
        OUTLINED_FUNCTION_38_5(v25);
        if (!v71)
        {
          OUTLINED_FUNCTION_51(v33);
          (*(v84 + 32))(v197, v25, v33);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v85, v86, v87, v33);
          goto LABEL_82;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
        v33 = type metadata accessor for Date();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v88, v89, v90, v33);
      }

      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v33);
      OUTLINED_FUNCTION_38_5(v25);
      if (!v71)
      {
        outlined destroy of ResourceBundle?(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

LABEL_82:
      v94 = *MEMORY[0x277CC2570];
      v95 = OUTLINED_FUNCTION_18_22();
      if ([v95 v96])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      v97 = v198[0];
      OUTLINED_FUNCTION_16_31();
      if (v98)
      {
        if (OUTLINED_FUNCTION_8_39())
        {
          v99 = v201;
          v192[19] = v200;
          goto LABEL_90;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(v206);
LABEL_90:
      v192[18] = v99;
      v100 = *MEMORY[0x277CC2590];
      v101 = OUTLINED_FUNCTION_18_22();
      if ([v101 v102])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v103)
      {
        if (OUTLINED_FUNCTION_8_39())
        {
          v104 = v201;
          v192[17] = v200;
          goto LABEL_98;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(v205);
LABEL_98:
      v192[16] = v104;
      v105 = *MEMORY[0x277CC2540];
      v106 = OUTLINED_FUNCTION_18_22();
      if ([v106 v107])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v108)
      {
        if (OUTLINED_FUNCTION_8_39())
        {
          v109 = v201;
          v192[15] = v200;
          goto LABEL_106;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(v203);
LABEL_106:
      v192[14] = v109;
      v110 = *MEMORY[0x277CC24F8];
      v111 = OUTLINED_FUNCTION_18_22();
      if ([v111 v112])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v113)
      {
        type metadata accessor for Date();
        OUTLINED_FUNCTION_46_20();
        v114 = OUTLINED_FUNCTION_51_17();
        OUTLINED_FUNCTION_28_24(v20, v114 ^ 1u);
        OUTLINED_FUNCTION_38_5(v20);
        if (!v71)
        {
          OUTLINED_FUNCTION_51(v33);
          (*(v115 + 32))(v97, v20, v33);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v116, v117, v118, v33);
          goto LABEL_115;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
        v33 = type metadata accessor for Date();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v119, v120, v121, v33);
      }

      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v33);
      OUTLINED_FUNCTION_38_5(v20);
      if (!v71)
      {
        outlined destroy of ResourceBundle?(v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

LABEL_115:
      v125 = *MEMORY[0x277CC2580];
      v126 = OUTLINED_FUNCTION_18_22();
      if ([v126 v127])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v128)
      {
        if (OUTLINED_FUNCTION_8_39())
        {
          v129 = v201;
          v192[13] = v200;
          goto LABEL_123;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(v202);
LABEL_123:
      v192[12] = v129;
      v130 = *MEMORY[0x277CC2530];
      v131 = OUTLINED_FUNCTION_18_22();
      if ([v131 v132])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v133)
      {
        if (OUTLINED_FUNCTION_8_39())
        {
          v134 = v201;
          v192[11] = v200;
          goto LABEL_131;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v201);
LABEL_131:
      v192[10] = v134;
      v135 = *MEMORY[0x277CC25A0];
      v136 = OUTLINED_FUNCTION_18_22();
      if ([v136 v137])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v138)
      {
        if (OUTLINED_FUNCTION_8_39())
        {
          v139 = v201;
          v192[9] = v200;
          goto LABEL_139;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v199);
LABEL_139:
      v192[8] = v139;
      v140 = *MEMORY[0x277CC2560];
      v141 = OUTLINED_FUNCTION_18_22();
      if ([v141 v142])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v143)
      {
        if (OUTLINED_FUNCTION_8_39())
        {
          v144 = v201;
          v192[7] = v200;
          goto LABEL_147;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(v198);
LABEL_147:
      v192[6] = v144;
      v145 = *MEMORY[0x277CC2550];
      v146 = OUTLINED_FUNCTION_18_22();
      if ([v146 v147])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v148)
      {
        if (OUTLINED_FUNCTION_8_39())
        {
          v149 = v201;
          v192[5] = v200;
          goto LABEL_155;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v196);
LABEL_155:
      v192[4] = v149;
      v150 = *MEMORY[0x277CC25C0];
      v151 = OUTLINED_FUNCTION_18_22();
      if ([v151 v152])
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v153)
      {
        if (OUTLINED_FUNCTION_8_39())
        {
          v154 = v201;
          v192[3] = v200;
          goto LABEL_163;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(v195);
LABEL_163:
      v192[2] = v154;
      v155 = *MEMORY[0x277CC2538];
      v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v157 = MEMORY[0x25F89F4C0](v156);

      v158 = OUTLINED_FUNCTION_18_22();
      v160 = [v158 v159];

      if (v160)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      v195[1] = a3;
      if (v161)
      {
        if (OUTLINED_FUNCTION_8_39())
        {
          v162 = v201;
          v192[1] = v200;
LABEL_171:
          v192[0] = v162;
          v163 = *MEMORY[0x277CC2598];
          v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v165 = MEMORY[0x25F89F4C0](v164);

          v166 = OUTLINED_FUNCTION_18_22();
          v168 = [v166 v167];

          if (v168)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          OUTLINED_FUNCTION_16_31();
          v194 = a1;
          if (v169)
          {
            OUTLINED_FUNCTION_8_39();
          }

          else
          {
            outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
          }

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_35_0();
          }

          v198[0] = v31;
          v170 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v170, static Logging.search);
          v171 = Logger.logObject.getter();
          v172 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_88_0(v172))
          {
            v173 = OUTLINED_FUNCTION_172();
            *v173 = 0;
            _os_log_impl(&dword_25D85C000, v171, v172, "PreExtractedCard: Created for the source document.", v173, 2u);
            OUTLINED_FUNCTION_42_0();
          }

          v174 = v199;
          OUTLINED_FUNCTION_44_22();
          outlined init with copy of RentalCarReservation?(v175, v176, v177, v178);
          v179 = v197;
          OUTLINED_FUNCTION_44_22();
          outlined init with copy of RentalCarReservation?(v180, v181, v182, v183);
          OUTLINED_FUNCTION_44_22();
          outlined init with copy of RentalCarReservation?(v184, v185, v186, v187);
          PreExtractedCard.init(id:cardType:cardSubType:cardProvider:cardUnderName:cardNumber:cardGroupNumber:cardIssueDate:cardExpirationDate:cardIssuedBy:cardRegion:cardCountry:birthday:cardPlaceOfBirth:cardAddress:cardSex:cardHeight:cardEyeColor:cardWeight:cardCategory:cardRestrictions:)();

          outlined destroy of ResourceBundle?(v97, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          outlined destroy of ResourceBundle?(v179, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          outlined destroy of ResourceBundle?(v174, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          type metadata accessor for PreExtractedCard();
          OUTLINED_FUNCTION_48_13();
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
          OUTLINED_FUNCTION_148();
          return;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v204, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v193);
      goto LABEL_171;
    }

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v44 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v44, static Logging.search);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v46))
    {
      v47 = OUTLINED_FUNCTION_172();
      *v47 = 0;
      OUTLINED_FUNCTION_25_25();
      _os_log_impl(v48, v49, v50, v51, v47, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v36, static Logging.search);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v38))
    {
      v39 = OUTLINED_FUNCTION_172();
      *v39 = 0;
      OUTLINED_FUNCTION_25_25();
      _os_log_impl(v40, v41, v42, v43, v39, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_148();

  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
}

uint64_t PreExtractedCard.Keys.rawValue.getter(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_24_25();
      break;
    case 2:
      result = 0x72656469766F7270;
      break;
    case 3:
      result = 0x616E207265646E75;
      break;
    case 4:
      result = 0x7265626D756ELL;
      break;
    case 5:
      result = 0x756E2070756F7267;
      break;
    case 6:
      result = 0x6164206575737369;
      break;
    case 7:
      result = 0x6974617269707865;
      break;
    case 8:
      result = OUTLINED_FUNCTION_40_20(0x75737369u);
      break;
    case 9:
      result = 0x6E6F69676572;
      break;
    case 10:
      result = 0x7972746E756F63;
      break;
    case 11:
      result = OUTLINED_FUNCTION_23_24();
      break;
    case 12:
      result = 0x666F206563616C70;
      break;
    case 13:
      result = 0x73736572646461;
      break;
    case 14:
      result = 7890291;
      break;
    case 15:
      result = 0x746867696568;
      break;
    case 16:
      result = 0x6F6C6F6320657965;
      break;
    case 17:
      result = 0x746867696577;
      break;
    case 18:
      result = 0x79726F6765746163;
      break;
    case 19:
      result = 0x7463697274736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PreExtractedCard.Keys.init(rawValue:)()
{
  OUTLINED_FUNCTION_89_7();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_112_2();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PreExtractedCard.Keys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PreExtractedCard.Keys.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PreExtractedCard.Keys()
{
  v1 = OUTLINED_FUNCTION_319();
  result = PreExtractedCard.Keys.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PreExtractedCard.init(item:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = OUTLINED_FUNCTION_114(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  type metadata accessor for FeatureFlagService();
  v18 = swift_allocObject();
  a4(a1, v18);
  v19 = a5(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v19))
  {
    outlined destroy of ResourceBundle?(v17, a2, a3);
    v20 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_51(v19);
    (*(v21 + 32))(a6, v17, v19);
    v20 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a6, v20, 1, v19);
}

void PreExtractedContact.init(item:featureFlagService:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v133 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v133 - v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_45_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_36_21();
  MEMORY[0x28223BE20](v23);
  v25 = v133 - v24;
  if ((*(*a2 + 80))(14))
  {
    v143 = v18;
    v144 = a2;
    v26 = [a1 attributeSet];
    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v26, &selRef_contactType);
    if (v27)
    {
      v134 = v14;

      v28 = [a1 uniqueIdentifier];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v139 = v30;
      v140 = v29;

      v31 = a3;
      if ([v26 attributeForKey_])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      v53 = MEMORY[0x277D84F70];
      if (v54)
      {
        OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_43_13())
        {
          v55 = v146;
          v138 = v145;
          goto LABEL_24;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
      }

      v138 = 0;
      v55 = 0xE000000000000000;
LABEL_24:
      v137 = v55;
      v56 = *MEMORY[0x277CC2600];
      if (OUTLINED_FUNCTION_30_22())
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v57)
      {
        OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_43_13())
        {
          v58 = v146;
          v136 = v145;
          goto LABEL_32;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
      }

      v136 = 0;
      v58 = 0xE000000000000000;
LABEL_32:
      v135 = v58;
      v59 = *MEMORY[0x277CC2608];
      if (OUTLINED_FUNCTION_30_22())
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v60)
      {
        OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_43_13())
        {
          v61 = v146;
          v133[12] = v145;
          goto LABEL_40;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v151);
LABEL_40:
      v133[11] = v61;
      v62 = *MEMORY[0x277CC2788];
      if (OUTLINED_FUNCTION_30_22())
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v63)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_7_41())
        {
          v64 = v145;
          goto LABEL_48;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
      }

      v64 = MEMORY[0x277D84F90];
LABEL_48:
      v133[10] = v64;
      v65 = *MEMORY[0x277CC2EB8];
      if (OUTLINED_FUNCTION_30_22())
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v66)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_7_41())
        {
          v67 = v145;
          goto LABEL_56;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
      }

      v67 = MEMORY[0x277D84F90];
LABEL_56:
      v133[9] = v67;
      v68 = *MEMORY[0x277CC2618];
      if (OUTLINED_FUNCTION_30_22())
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v69)
      {
        OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_43_13())
        {
          v70 = v146;
          v133[8] = v145;
          goto LABEL_64;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v150);
LABEL_64:
      v133[7] = v70;
      v71 = *MEMORY[0x277CC2620];
      if (OUTLINED_FUNCTION_30_22())
      {
        OUTLINED_FUNCTION_26_22();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v72)
      {
        type metadata accessor for Date();
        OUTLINED_FUNCTION_46_20();
        v73 = OUTLINED_FUNCTION_51_17();
        OUTLINED_FUNCTION_28_24(v3, v73 ^ 1u);
        OUTLINED_FUNCTION_38_5(v3);
        if (!v74)
        {
          OUTLINED_FUNCTION_51(v53);
          (*(v75 + 32))(v25, v3, v53);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v76, v77, v78, v53);
          goto LABEL_73;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
        type metadata accessor for Date();
        OUTLINED_FUNCTION_112_2();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v79, v80, v81, v53);
      }

      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v53);
      OUTLINED_FUNCTION_38_5(v3);
      if (!v74)
      {
        outlined destroy of ResourceBundle?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

LABEL_73:
      v85 = *MEMORY[0x277CC2610];
      if (OUTLINED_FUNCTION_30_22())
      {
        OUTLINED_FUNCTION_168_5();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v86)
      {
        if (OUTLINED_FUNCTION_11_38())
        {
          v87 = v146;
          v133[6] = v145;
          goto LABEL_81;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v149);
LABEL_81:
      v133[5] = v87;
      v88 = *MEMORY[0x277CC2D40];
      if (OUTLINED_FUNCTION_30_22())
      {
        OUTLINED_FUNCTION_168_5();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v89)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_7_41())
        {
          v90 = v145;
          goto LABEL_89;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
      }

      v90 = MEMORY[0x277D84F90];
LABEL_89:
      v133[4] = v90;
      v91 = *MEMORY[0x277CC24F8];
      if (OUTLINED_FUNCTION_30_22())
      {
        OUTLINED_FUNCTION_168_5();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v92)
      {
        v93 = type metadata accessor for Date();
        v94 = swift_dynamicCast();
        OUTLINED_FUNCTION_53_15(v21, v94 ^ 1u, 1);
        if (!v74)
        {
          OUTLINED_FUNCTION_51(v93);
          (*(v95 + 32))(v4, v21, v93);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v96, v97, v98, v93);
          goto LABEL_98;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
        v99 = type metadata accessor for Date();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v100, v101, v102, v99);
      }

      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_53_15(v103, v104, v105);
      if (!v74)
      {
        outlined destroy of ResourceBundle?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

LABEL_98:
      v106 = *MEMORY[0x277CC2BD0];
      if (OUTLINED_FUNCTION_30_22())
      {
        OUTLINED_FUNCTION_168_5();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v107)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_7_41())
        {
          v108 = v145;
          goto LABEL_106;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
      }

      v108 = MEMORY[0x277D84F90];
LABEL_106:
      v133[3] = v108;
      v109 = *MEMORY[0x277CC32B8];
      if (OUTLINED_FUNCTION_30_22())
      {
        OUTLINED_FUNCTION_168_5();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v110)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_7_41())
        {
          v111 = v145;
          goto LABEL_114;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
      }

      v111 = MEMORY[0x277D84F90];
LABEL_114:
      v133[2] = v111;
      v112 = *MEMORY[0x277CC3050];
      if (OUTLINED_FUNCTION_30_22())
      {
        OUTLINED_FUNCTION_168_5();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v113)
      {
        if (OUTLINED_FUNCTION_11_38())
        {
          v114 = v146;
          v133[1] = v145;
LABEL_122:
          v133[0] = v114;
          v115 = *MEMORY[0x277CC23F0];
          if (OUTLINED_FUNCTION_30_22())
          {
            OUTLINED_FUNCTION_168_5();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          OUTLINED_FUNCTION_16_31();
          v141 = v31;
          v142 = a1;
          if (v116)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            OUTLINED_FUNCTION_7_41();
          }

          else
          {
            outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
          }

          v117 = *MEMORY[0x277CC2510];
          if (OUTLINED_FUNCTION_30_22())
          {
            OUTLINED_FUNCTION_168_5();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          v118 = v134;
          OUTLINED_FUNCTION_16_31();
          if (v119)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            v120 = v4;
            OUTLINED_FUNCTION_7_41();
          }

          else
          {
            v120 = v4;
            outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
          }

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_35_0();
          }

          v121 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v121, static Logging.search);
          v122 = Logger.logObject.getter();
          v123 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_105_6(v123))
          {
            v124 = OUTLINED_FUNCTION_172();
            *v124 = 0;
            OUTLINED_FUNCTION_25_25();
            _os_log_impl(v125, v126, v127, v128, v124, 2u);
            OUTLINED_FUNCTION_42_0();
          }

          outlined init with copy of RentalCarReservation?(v25, v143, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          outlined init with copy of RentalCarReservation?(v120, v118, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          PreExtractedContact.init(id:contactType:contactName:contactNickname:emailAddresses:phoneNumbers:contactSharedBy:contactSharedDateTime:contactSharedAppName:links:birthday:homeAddresses:workAddresses:relationship:addresses:businessHours:)();

          outlined destroy of ResourceBundle?(v120, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          outlined destroy of ResourceBundle?(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          type metadata accessor for PreExtractedContact();
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v129, v130, v131, v132);
          OUTLINED_FUNCTION_148();
          return;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v147, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(v148);
      goto LABEL_122;
    }

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v40 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v40, static Logging.search);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v42))
    {
      v43 = OUTLINED_FUNCTION_172();
      *v43 = 0;
      OUTLINED_FUNCTION_25_25();
      _os_log_impl(v44, v45, v46, v47, v43, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v32 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v32, static Logging.search);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v34))
    {
      v35 = OUTLINED_FUNCTION_172();
      *v35 = 0;
      OUTLINED_FUNCTION_25_25();
      _os_log_impl(v36, v37, v38, v39, v35, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  type metadata accessor for PreExtractedContact();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_148();

  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
}

uint64_t PreExtractedContact.Keys.rawValue.getter(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_41_17();
      break;
    case 2:
      result = 0x656D616E6B63696ELL;
      break;
    case 3:
      result = 0x6461206C69616D65;
      break;
    case 4:
      result = 0x737265626D756ELL;
      break;
    case 5:
      result = OUTLINED_FUNCTION_40_20(0x72616873u);
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6120646572616873;
      break;
    case 8:
      result = 0x736B6E696CLL;
      break;
    case 9:
      result = OUTLINED_FUNCTION_23_24();
      break;
    case 10:
      v3 = 1701670760;
      goto LABEL_15;
    case 11:
      v3 = 1802661751;
LABEL_15:
      result = v3 | 0x6464612000000000;
      break;
    case 12:
      result = 0x6E6F6974616C6572;
      break;
    case 13:
      result = 0x6573736572646461;
      break;
    case 14:
      result = 0x7373656E69737562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PreExtractedContact.Keys.init(rawValue:)()
{
  OUTLINED_FUNCTION_89_7();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PreExtractedContact.Keys.init(rawValue:), v2);
  OUTLINED_FUNCTION_112_2();

  if (v1 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PreExtractedContact.Keys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PreExtractedContact.Keys.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PreExtractedContact.Keys()
{
  v1 = OUTLINED_FUNCTION_319();
  result = PreExtractedContact.Keys.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PreExtractedBreadcrumb.init(item:featureFlagService:)(void *a1, uint64_t a2)
{
  if ((*(*a2 + 80))(15))
  {
    v3 = [a1 attributeSet];
    if (static PreExtractedBreadcrumb.isValid(attr:)(v3))
    {
      v4 = [a1 uniqueIdentifier];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v255 = v6;
      v265 = v5;

      v7 = *MEMORY[0x277CC2AB0];
      if (OUTLINED_FUNCTION_34_26())
      {
        OUTLINED_FUNCTION_35_24();
        v8 = swift_unknownObjectRelease();
      }

      else
      {
        v16.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v8, v9, v10, v11, v12, v13, v14, v15, v145, v155, v165, v175, v185, v195, v205, v215, v225, v235, v245, v255, v265, v275, v285, v16);
      if (v30)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
        if (OUTLINED_FUNCTION_3_50())
        {
          v31 = v276;
          goto LABEL_24;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v295, &_sypSgMd, &_sypSgMR);
      }

      v31 = MEMORY[0x277D84F90];
LABEL_24:
      v246 = v31;
      v32 = *MEMORY[0x277CC2AF0];
      if (OUTLINED_FUNCTION_34_26())
      {
        OUTLINED_FUNCTION_35_24();
        v33 = swift_unknownObjectRelease();
      }

      else
      {
        v41.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v33, v34, v35, v36, v37, v38, v39, v40, v146, v156, v166, v176, v186, v196, v206, v216, v226, v236, v246, v256, v266, v276, v286, v41);
      if (v42)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_3_50())
        {
          v43 = v277;
          goto LABEL_32;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v295, &_sypSgMd, &_sypSgMR);
      }

      v43 = MEMORY[0x277D84F90];
LABEL_32:
      v237 = v43;
      v44 = *MEMORY[0x277CC2B08];
      if (OUTLINED_FUNCTION_34_26())
      {
        OUTLINED_FUNCTION_35_24();
        v45 = swift_unknownObjectRelease();
      }

      else
      {
        v53.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v45, v46, v47, v48, v49, v50, v51, v52, v147, v157, v167, v177, v187, v197, v207, v217, v227, v237, v247, v257, v267, v277, v287, v53);
      if (v54)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_3_50())
        {
          v55 = v278;
          goto LABEL_40;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v295, &_sypSgMd, &_sypSgMR);
      }

      v55 = MEMORY[0x277D84F90];
LABEL_40:
      v228 = v55;
      v56 = *MEMORY[0x277CC2B00];
      if (OUTLINED_FUNCTION_34_26())
      {
        OUTLINED_FUNCTION_35_24();
        v57 = swift_unknownObjectRelease();
      }

      else
      {
        v65.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v57, v58, v59, v60, v61, v62, v63, v64, v148, v158, v168, v178, v188, v198, v208, v218, v228, v238, v248, v258, v268, v278, v288, v65);
      if (v66)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_3_50())
        {
          v67 = v279;
          goto LABEL_48;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v295, &_sypSgMd, &_sypSgMR);
      }

      v67 = MEMORY[0x277D84F90];
LABEL_48:
      v219 = v67;
      v68 = *MEMORY[0x277CC2A98];
      if (OUTLINED_FUNCTION_34_26())
      {
        OUTLINED_FUNCTION_35_24();
        v69 = swift_unknownObjectRelease();
      }

      else
      {
        v77.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v69, v70, v71, v72, v73, v74, v75, v76, v149, v159, v169, v179, v189, v199, v209, v219, v229, v239, v249, v259, v269, v279, v289, v77);
      if (v78)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_3_50())
        {
          v79 = v280;
          goto LABEL_56;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v295, &_sypSgMd, &_sypSgMR);
      }

      v79 = MEMORY[0x277D84F90];
LABEL_56:
      v210 = v79;
      v80 = *MEMORY[0x277CC2AD0];
      if (OUTLINED_FUNCTION_34_26())
      {
        OUTLINED_FUNCTION_35_24();
        v81 = swift_unknownObjectRelease();
      }

      else
      {
        v89.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v81, v82, v83, v84, v85, v86, v87, v88, v150, v160, v170, v180, v190, v200, v210, v220, v230, v240, v250, v260, v270, v280, v290, v89);
      if (v90)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_3_50())
        {
          v91 = v281;
          goto LABEL_64;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v295, &_sypSgMd, &_sypSgMR);
      }

      v91 = MEMORY[0x277D84F90];
LABEL_64:
      v201 = v91;
      v92 = *MEMORY[0x277CC2AE0];
      if (OUTLINED_FUNCTION_34_26())
      {
        OUTLINED_FUNCTION_35_24();
        v93 = swift_unknownObjectRelease();
      }

      else
      {
        v101.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v93, v94, v95, v96, v97, v98, v99, v100, v151, v161, v171, v181, v191, v201, v211, v221, v231, v241, v251, v261, v271, v281, v291, v101);
      if (v102)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_3_50())
        {
          v103 = v282;
LABEL_72:
          v192 = v103;
          v104 = *MEMORY[0x277CC2B10];
          if (OUTLINED_FUNCTION_34_26())
          {
            OUTLINED_FUNCTION_35_24();
            v105 = swift_unknownObjectRelease();
          }

          else
          {
            v113.n128_f64[0] = OUTLINED_FUNCTION_19_31();
          }

          OUTLINED_FUNCTION_5_42(v105, v106, v107, v108, v109, v110, v111, v112, v152, v162, v172, v182, v192, v202, v212, v222, v232, v242, v252, v262, v272, v282, v292, v113);
          if (v114)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            OUTLINED_FUNCTION_3_50();
          }

          else
          {
            outlined destroy of ResourceBundle?(v295, &_sypSgMd, &_sypSgMR);
          }

          v115 = *MEMORY[0x277CC2AA0];
          if (OUTLINED_FUNCTION_34_26())
          {
            OUTLINED_FUNCTION_35_24();
            v116 = swift_unknownObjectRelease();
          }

          else
          {
            v124.n128_f64[0] = OUTLINED_FUNCTION_19_31();
          }

          OUTLINED_FUNCTION_5_42(v116, v117, v118, v119, v120, v121, v122, v123, v153, v163, v173, v183, v193, v203, v213, v223, v233, v243, v253, v263, v273, v283, v293, v124);
          if (v125)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            OUTLINED_FUNCTION_3_50();
          }

          else
          {
            outlined destroy of ResourceBundle?(v295, &_sypSgMd, &_sypSgMR);
          }

          v126 = *MEMORY[0x277CC2AC0];
          if (OUTLINED_FUNCTION_34_26())
          {
            OUTLINED_FUNCTION_35_24();
            v127 = swift_unknownObjectRelease();
          }

          else
          {
            v135.n128_f64[0] = OUTLINED_FUNCTION_19_31();
          }

          OUTLINED_FUNCTION_5_42(v127, v128, v129, v130, v131, v132, v133, v134, v154, v164, v174, v184, v194, v204, v214, v224, v234, v244, v254, v264, v274, v284, v294, v135);
          if (v136)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            OUTLINED_FUNCTION_3_50();
          }

          else
          {
            outlined destroy of ResourceBundle?(v295, &_sypSgMd, &_sypSgMR);
          }

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_35_0();
          }

          v137 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v137, static Logging.search);
          v138 = Logger.logObject.getter();
          v139 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_88_0(v139))
          {
            v140 = OUTLINED_FUNCTION_172();
            *v140 = 0;
            _os_log_impl(&dword_25D85C000, v138, v139, "PreExtractedBreadcrumb: Created for the source document.", v140, 2u);
            OUTLINED_FUNCTION_42_0();
          }

          PreExtractedBreadcrumb.init(id:extractedDatesValues:extractedLocationsValues:extractedPhoneNumbersLabels:extractedPhoneNumbersCountryCodes:extractedAddressesLabels:extractedFlightsLabels:extractedLinksLabels:extractedTrackingNumbersLabels:extractedCurrenciesValues:extractedEmailsLabels:)();

          type metadata accessor for PreExtractedBreadcrumb();
          OUTLINED_FUNCTION_48_13();
          OUTLINED_FUNCTION_44_0();
          return __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v295, &_sypSgMd, &_sypSgMR);
      }

      v103 = MEMORY[0x277D84F90];
      goto LABEL_72;
    }

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v21, static Logging.search);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_88_0(v23))
    {
      v24 = OUTLINED_FUNCTION_172();
      *v24 = 0;
      _os_log_impl(&dword_25D85C000, v22, v23, "PreExtractedBreadcrumb: no relevant attribute exist, skip creating PreExtractedBreadcrumb.", v24, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v17 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v17, static Logging.search);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_88_0(v19))
    {
      v20 = OUTLINED_FUNCTION_172();
      *v20 = 0;
      _os_log_impl(&dword_25D85C000, v18, v19, "PreExtractedBreadcrumb: FF OmniSearch/preExtractedBreadcrumbs disabled, skip creating PreExtractedBreadcrumb.", v20, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  type metadata accessor for PreExtractedBreadcrumb();
  OUTLINED_FUNCTION_48_13();
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

uint64_t static PreExtractedBreadcrumb.isValid(attr:)(void *a1)
{
  v2 = *MEMORY[0x277CC2AB0];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x25F89F4C0](v3);

  v5 = [a1 attributeForKey_];

  if (v5)
  {
    goto LABEL_10;
  }

  v44 = 0u;
  v45 = 0u;
  outlined destroy of ResourceBundle?(&v44, &_sypSgMd, &_sypSgMR);
  v6 = *MEMORY[0x277CC2AF0];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = MEMORY[0x25F89F4C0](v7);

  v9 = [a1 attributeForKey_];

  if (v9)
  {
    goto LABEL_10;
  }

  v44 = 0u;
  v45 = 0u;
  outlined destroy of ResourceBundle?(&v44, &_sypSgMd, &_sypSgMR);
  v10 = *MEMORY[0x277CC2B08];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = MEMORY[0x25F89F4C0](v11);

  v13 = [a1 attributeForKey_];

  if (v13)
  {
    goto LABEL_10;
  }

  v44 = 0u;
  v45 = 0u;
  outlined destroy of ResourceBundle?(&v44, &_sypSgMd, &_sypSgMR);
  v14 = *MEMORY[0x277CC2B00];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = MEMORY[0x25F89F4C0](v15);

  v17 = [a1 attributeForKey_];

  if (v17)
  {
    goto LABEL_10;
  }

  v44 = 0u;
  v45 = 0u;
  outlined destroy of ResourceBundle?(&v44, &_sypSgMd, &_sypSgMR);
  v18 = *MEMORY[0x277CC2A98];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = MEMORY[0x25F89F4C0](v19);

  v21 = [a1 attributeForKey_];

  if (v21)
  {
    goto LABEL_10;
  }

  v44 = 0u;
  v45 = 0u;
  outlined destroy of ResourceBundle?(&v44, &_sypSgMd, &_sypSgMR);
  v22 = *MEMORY[0x277CC2AD0];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = MEMORY[0x25F89F4C0](v23);

  v25 = [a1 attributeForKey_];

  if (v25)
  {
    goto LABEL_10;
  }

  v44 = 0u;
  v45 = 0u;
  outlined destroy of ResourceBundle?(&v44, &_sypSgMd, &_sypSgMR);
  v26 = *MEMORY[0x277CC2AE0];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = MEMORY[0x25F89F4C0](v27);

  v29 = [a1 attributeForKey_];

  if (v29)
  {
    goto LABEL_10;
  }

  v44 = 0u;
  v45 = 0u;
  outlined destroy of ResourceBundle?(&v44, &_sypSgMd, &_sypSgMR);
  v30 = *MEMORY[0x277CC2B10];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = MEMORY[0x25F89F4C0](v31);

  v33 = [a1 attributeForKey_];

  if (v33)
  {
    goto LABEL_10;
  }

  v44 = 0u;
  v45 = 0u;
  outlined destroy of ResourceBundle?(&v44, &_sypSgMd, &_sypSgMR);
  v34 = *MEMORY[0x277CC2AA0];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = MEMORY[0x25F89F4C0](v35);

  v37 = [a1 attributeForKey_];

  if (v37)
  {
LABEL_10:
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of ResourceBundle?(&v44, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    outlined destroy of ResourceBundle?(&v44, &_sypSgMd, &_sypSgMR);
    v40 = *MEMORY[0x277CC2AC0];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = MEMORY[0x25F89F4C0](v41);

    v43 = [a1 attributeForKey_];

    v38 = v43 != 0;
    if (v43)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    outlined destroy of ResourceBundle?(&v44, &_sypSgMd, &_sypSgMR);
  }

  return v38;
}

uint64_t PreExtractedBreadcrumb.Keys.rawValue.getter(char a1)
{
  result = 0x6574636172747865;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      OUTLINED_FUNCTION_54_21();
      result = v4 | 4;
      break;
    case 3:
      OUTLINED_FUNCTION_54_21();
      result = v5 + 18;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      OUTLINED_FUNCTION_54_21();
      result = v7 - 2;
      break;
    case 7:
      OUTLINED_FUNCTION_54_21();
      result = v6 + 7;
      break;
    case 8:
      OUTLINED_FUNCTION_54_21();
      result = v8 + 1;
      break;
    case 9:
      OUTLINED_FUNCTION_54_21();
      result = v3 - 3;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PreExtractedBreadcrumb.Keys.init(rawValue:)()
{
  OUTLINED_FUNCTION_89_7();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PreExtractedBreadcrumb.Keys.init(rawValue:), v2);
  OUTLINED_FUNCTION_112_2();

  if (v1 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PreExtractedBreadcrumb.Keys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PreExtractedBreadcrumb.Keys.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PreExtractedBreadcrumb.Keys()
{
  v1 = OUTLINED_FUNCTION_319();
  result = PreExtractedBreadcrumb.Keys.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PreExtractedSharedLink.init(item:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_109();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v83 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = OUTLINED_FUNCTION_114(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v83 - v18;
  v20 = type metadata accessor for PreExtractedSharedLink();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [a1 attributeSet];
  v26 = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v25, &selRef_linkType);
  if (v27)
  {
    v83[13] = v27;
    v83[14] = v26;
    v85 = v21;
    v28 = [a1 uniqueIdentifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83[11] = v30;
    v83[12] = v29;

    v31 = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v25, &selRef_linkSubType);
    v83[9] = v32;
    v83[10] = v31;
    v33 = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v25, &selRef_linkName);
    v83[7] = v34;
    v83[8] = v33;
    v35 = [v25 URL];
    if (v35)
    {
      v36 = v35;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = type metadata accessor for URL();
      v38 = 0;
    }

    else
    {
      v37 = type metadata accessor for URL();
      v38 = 1;
    }

    v86 = v20;
    v51 = 1;
    v83[15] = v19;
    __swift_storeEnumTagSinglePayload(v19, v38, 1, v37);
    v52 = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v25, &selRef_urlDescription);
    v83[5] = v53;
    v83[6] = v52;
    v83[4] = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v25, &selRef_artist);
    v83[3] = v54;
    v83[2] = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v25, &selRef_album);
    v83[1] = v55;
    v56 = [v25 recordingDate];
    if (v56)
    {
      v57 = v56;
      v58 = a2;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = 0;
    }

    else
    {
      v58 = a2;
    }

    v59 = type metadata accessor for Date();
    v60 = 1;
    v83[16] = v13;
    __swift_storeEnumTagSinglePayload(v13, v51, 1, v59);
    v61 = [v25 recordingDate];
    if (v61)
    {
      v62 = v61;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = 0;
    }

    __swift_storeEnumTagSinglePayload(v10, v60, 1, v59);
    v63 = [v25 duration];
    v64 = v63;
    v87 = a1;
    v88 = v58;
    v83[17] = v10;
    v84 = v24;
    if (v63)
    {
      [v63 doubleValue];
      v66 = v65;

      v83[0] = v66;
    }

    else
    {
      v83[0] = 0;
    }

    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v25, &selRef_musicalGenre);
    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v25, &selRef_curator);
    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v25, &selRef_episode);
    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v25, &selRef_podcastName);
    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v25, &selRef_textContent);
    v67 = v84;
    PreExtractedSharedLink.init(id:type:subType:name:url:urlDescription:artist:album:publishedDate:releaseDate:lengthInSeconds:musicalGenre:curator:episode:podcastName:summary:)();
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v68 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v68, static Logging.search);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.info.getter();
    v71 = OUTLINED_FUNCTION_105_6(v70);
    v73 = v87;
    v72 = v88;
    v74 = v86;
    if (v71)
    {
      v75 = OUTLINED_FUNCTION_172();
      *v75 = 0;
      OUTLINED_FUNCTION_25_25();
      _os_log_impl(v76, v77, v78, v79, v75, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    (*(v85 + 32))(v72, v67, v74);
    OUTLINED_FUNCTION_44_0();
    return __swift_storeEnumTagSinglePayload(v80, v81, v82, v74);
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v39 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v39, static Logging.search);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v41))
    {
      v42 = OUTLINED_FUNCTION_172();
      *v42 = 0;
      OUTLINED_FUNCTION_25_25();
      _os_log_impl(v43, v44, v45, v46, v42, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    OUTLINED_FUNCTION_92();

    return __swift_storeEnumTagSinglePayload(v47, v48, v49, v20);
  }
}

uint64_t PreExtractedSharedLink.Keys.rawValue.getter(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_24_25();
      break;
    case 2:
      result = OUTLINED_FUNCTION_41_17();
      break;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 0x63736564206C7275;
      break;
    case 5:
      result = 0x747369747261;
      break;
    case 6:
      result = 0x6D75626C61;
      break;
    case 7:
      result = 0x656873696C627570;
      break;
    case 8:
      result = 0x20657361656C6572;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x206C61636973756DLL;
      break;
    case 11:
      result = 0x726F7461727563;
      break;
    case 12:
      result = 0x65646F73697065;
      break;
    case 13:
      result = 0x2074736163646F70;
      break;
    case 14:
      result = 0x7972616D6D7573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PreExtractedSharedLink.Keys.init(rawValue:)()
{
  OUTLINED_FUNCTION_89_7();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PreExtractedSharedLink.Keys.init(rawValue:), v2);
  OUTLINED_FUNCTION_112_2();

  if (v1 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PreExtractedSharedLink.Keys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PreExtractedSharedLink.Keys.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PreExtractedSharedLink.Keys()
{
  v1 = OUTLINED_FUNCTION_319();
  result = PreExtractedSharedLink.Keys.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void outlined bridged method (mbgnn) of @objc CSSearchableItem.bundleID.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();
  [a3 setBundleID_];
}

uint64_t outlined init with copy of RentalCarReservation?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_51(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t instantiation function for generic protocol witness table for PartialExtractedAttributes(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, MEMORY[0x277D37478]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PartialExtractedAttributes(void *a1)
{
  v2 = MEMORY[0x277D37478];
  a1[1] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, MEMORY[0x277D37478]);
  a1[2] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, v2);
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, v2);
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PreExtractedCard.Keys and conformance PreExtractedCard.Keys()
{
  result = lazy protocol witness table cache variable for type PreExtractedCard.Keys and conformance PreExtractedCard.Keys;
  if (!lazy protocol witness table cache variable for type PreExtractedCard.Keys and conformance PreExtractedCard.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedCard.Keys and conformance PreExtractedCard.Keys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedCard(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, MEMORY[0x277D37270]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedCard(void *a1)
{
  v2 = MEMORY[0x277D37270];
  a1[1] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, MEMORY[0x277D37270]);
  a1[2] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, v2);
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, v2);
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PreExtractedContact.Keys and conformance PreExtractedContact.Keys()
{
  result = lazy protocol witness table cache variable for type PreExtractedContact.Keys and conformance PreExtractedContact.Keys;
  if (!lazy protocol witness table cache variable for type PreExtractedContact.Keys and conformance PreExtractedContact.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedContact.Keys and conformance PreExtractedContact.Keys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedContact(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, MEMORY[0x277D37308]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedContact(void *a1)
{
  v2 = MEMORY[0x277D37308];
  a1[1] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, MEMORY[0x277D37308]);
  a1[2] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, v2);
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, v2);
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PreExtractedBreadcrumb.Keys and conformance PreExtractedBreadcrumb.Keys()
{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb.Keys and conformance PreExtractedBreadcrumb.Keys;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb.Keys and conformance PreExtractedBreadcrumb.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb.Keys and conformance PreExtractedBreadcrumb.Keys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedBreadcrumb(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb, MEMORY[0x277D373F8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedBreadcrumb(void *a1)
{
  v2 = MEMORY[0x277D373F8];
  a1[1] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb, MEMORY[0x277D373F8]);
  a1[2] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb, v2);
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb, v2);
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PreExtractedSharedLink.Keys and conformance PreExtractedSharedLink.Keys()
{
  result = lazy protocol witness table cache variable for type PreExtractedSharedLink.Keys and conformance PreExtractedSharedLink.Keys;
  if (!lazy protocol witness table cache variable for type PreExtractedSharedLink.Keys and conformance PreExtractedSharedLink.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedSharedLink.Keys and conformance PreExtractedSharedLink.Keys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedSharedLink(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, MEMORY[0x277D37418]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedSharedLink(void *a1)
{
  v2 = MEMORY[0x277D37418];
  a1[1] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, MEMORY[0x277D37418]);
  a1[2] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, v2);
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, v2);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PreExtractedCard.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PreExtractedCard.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PreExtractedBreadcrumb.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PreExtractedContact.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined assign with take of ShippingOrder?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_51(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_3_50()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_5_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __n128 a24)
{
  result = a24;
  *(v24 - 128) = a23;
  *(v24 - 112) = a24;
  v26 = *(v24 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_41()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_39()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_38()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_22()
{

  return _bridgeAnyObjectToAny(_:)();
}

uint64_t OUTLINED_FUNCTION_28_24(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

id OUTLINED_FUNCTION_30_22()
{

  return [v0 (v1 + 607)];
}

id OUTLINED_FUNCTION_34_26()
{

  return [v0 (v1 + 607)];
}

uint64_t OUTLINED_FUNCTION_35_24()
{

  return _bridgeAnyObjectToAny(_:)();
}

uint64_t OUTLINED_FUNCTION_42_20()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_43_13()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_51_17()
{

  return swift_dynamicCast();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FlightReservation.setResolvedFlight(_:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  v214 = type metadata accessor for FlightSnippet.Airport(0);
  v5 = OUTLINED_FUNCTION_17(v214);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_39_0();
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
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  v19 = OUTLINED_FUNCTION_114(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_2();
  v34 = OUTLINED_FUNCTION_28_2(v33);
  v35 = type metadata accessor for FlightSnippet.Leg(v34);
  v36 = OUTLINED_FUNCTION_17(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_36();
  v212 = v40 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_194_1();
  v45 = type metadata accessor for Date();
  v46 = OUTLINED_FUNCTION_14(v45);
  v209 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v50);
  v52 = &v203[-v51];
  v53 = type metadata accessor for DateComponents();
  v54 = OUTLINED_FUNCTION_14(v53);
  v210 = v55;
  v211 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_46_14();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
  v60 = OUTLINED_FUNCTION_114(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_21();
  MEMORY[0x28223BE20](v63);
  v65 = &v203[-v64];

  FlightReservation._resolvedFlightJSON.setter();
  FlightReservation.leg.getter(v65);
  v66 = v35;
  if (__swift_getEnumTagSinglePayload(v65, 1, v35) == 1)
  {
    outlined destroy of FlightSnippet.Leg?(v65, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v67 = 1;
    v68 = 0.0;
  }

  else
  {
    countAndFlagsBits = v2;
    FlightReservation.flightDepartureDateComponents.getter();
    DateComponents.date.getter();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v45);
    v204 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      (*(v210 + 8))(v3, v211);
      outlined destroy of FlightSnippet.Leg?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v68 = 0.0;
    }

    else
    {
      v70 = v209;
      (*(v209 + 32))(v52, v4, v45);
      v71 = *&v65[*(v66 + 20)];
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v72 = *(v71 + 48);
      v73 = v208;
      Date.init(timeIntervalSince1970:)();
      Date.timeIntervalSince(_:)();
      v68 = fabs(v74);
      v75 = *(v70 + 8);
      v75(v73, v45);
      v75(v52, v45);
      (*(v210 + 8))(v3, v211);
    }

    OUTLINED_FUNCTION_17_33();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v65, v76);
    v67 = v204;
  }

  FlightReservation.leg.getter(v1);
  v77 = OUTLINED_FUNCTION_11_1();
  if (__swift_getEnumTagSinglePayload(v77, v78, v66) == 1)
  {
    outlined destroy of FlightSnippet.Leg?(v1, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    goto LABEL_17;
  }

  v79 = v1;
  v80 = v212;
  outlined init with take of FlightSnippet.Leg(v79, v212, type metadata accessor for FlightSnippet.Leg);
  if ((v67 & 1) != 0 || v68 >= 3600.0)
  {
    OUTLINED_FUNCTION_17_33();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v80, v103);
LABEL_17:
    FlightReservation._resolvedFlightJSON.setter();
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    v105 = __swift_project_value_buffer(v104, static Logging.search);
    v106 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v107 = OUTLINED_FUNCTION_60_7();
    if (!os_log_type_enabled(v107, v108))
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_28_3();
    v109 = swift_slowAlloc();
    *v109 = 134217984;
    v110 = -1.0;
    if (!v67)
    {
      v110 = v68;
    }

    if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v111 = 1;
    }

    else
    {
      v111 = v67;
    }

    if (v111 == 1)
    {
      if (v110 > -9.22337204e18)
      {
        if (v110 < 9.22337204e18)
        {
          *(v109 + 4) = v110;
          _os_log_impl(&dword_25D85C000, v106, v105, "Rejecting resolved flight - data doesn’t align with pre-extracted info (timeInterval: %ld.", v109, 0xCu);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
LABEL_29:

          lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
          swift_allocError();
          *v112 = 0;
          swift_willThrow();
          return;
        }

        goto LABEL_72;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v81 = v207;
  FlightSnippet.Leg.arrivalDateComponents.getter(v207);
  FlightReservation.flightArrivalDateComponents.setter();
  FlightSnippet.Leg.departureDateComponents.getter(v81);
  FlightReservation.flightDepartureDateComponents.setter();
  v82 = *(v80 + *(v66 + 20));
  v83 = (v82 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalTerminal);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v85 = *v83;
  v84 = v83[1];

  FlightReservation.flightArrivalTerminal.setter();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v87 = *(v82 + 64);
  v86 = *(v82 + 72);

  FlightReservation.flightDepartureTerminal.setter();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_251_1(&v233);
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of ResourceBundle?(v88, v89, v90, v91);
  OUTLINED_FUNCTION_70_12();
  LODWORD(v81) = __swift_getEnumTagSinglePayload(v92, v93, v94);
  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v95, v96, v97);
  if (v81 != 1)
  {
    OUTLINED_FUNCTION_131_2(v215);
    outlined init with copy of ResourceBundle?(v98, v99, v100, v101);
    OUTLINED_FUNCTION_11_39();
    if (v102)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      v116 = v205;
      if (!v102)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10(v216);
      outlined init with take of FlightSnippet.Leg(v113, v114, v115);
      v116 = v205;
    }

    OUTLINED_FUNCTION_320_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v87, v117);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightDepartureAirportCode.setter();
    OUTLINED_FUNCTION_131_2(v217);
    outlined init with copy of ResourceBundle?(v118, v119, v120, v121);
    OUTLINED_FUNCTION_11_39();
    if (v102)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      if (!v102)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10(v218);
      outlined init with take of FlightSnippet.Leg(v122, v123, v124);
    }

    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v87, v125);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightDepartureAirportName.setter();
    OUTLINED_FUNCTION_131_2(v219);
    outlined init with copy of ResourceBundle?(v126, v127, v128, v129);
    OUTLINED_FUNCTION_11_39();
    if (v102)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      if (!v102)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10(v220);
      outlined init with take of FlightSnippet.Leg(v130, v131, v132);
    }

    OUTLINED_FUNCTION_322_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v87, v133);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightDepartureAirportLocality.setter();
    OUTLINED_FUNCTION_131_2(v221);
    outlined init with copy of ResourceBundle?(v134, v135, v136, v137);
    OUTLINED_FUNCTION_11_39();
    if (v102)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      if (!v102)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10(v222);
      outlined init with take of FlightSnippet.Leg(v138, v139, v140);
    }

    OUTLINED_FUNCTION_321_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v87, v141);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightDepartureAirportRegion.setter();
    OUTLINED_FUNCTION_113_10(v223);
    outlined init with copy of ResourceBundle?(v142, v143, v144, v145);
    OUTLINED_FUNCTION_10_2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd);
    if (v102)
    {
      OUTLINED_FUNCTION_123_11();
      OUTLINED_FUNCTION_10_2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd);
      if (!v102)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      outlined init with take of FlightSnippet.Leg(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, v116, v146);
    }

    v147 = *(v116 + 192);
    v148 = *(v116 + 200);

    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v116, v149);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightDepartureAirportCountry.setter();
  }

  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_251_1(&v234);
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of ResourceBundle?(v150, v151, v152, v153);
  OUTLINED_FUNCTION_70_12();
  v157 = __swift_getEnumTagSinglePayload(v154, v155, v156);
  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v158, v159, v160);
  if (v157 != 1)
  {
    OUTLINED_FUNCTION_131_2(v224);
    outlined init with copy of ResourceBundle?(v161, v162, v163, v164);
    OUTLINED_FUNCTION_11_39();
    if (v102)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      v168 = v206;
      if (!v102)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10(v225);
      outlined init with take of FlightSnippet.Leg(v165, v166, v167);
      v168 = v206;
    }

    OUTLINED_FUNCTION_320_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v87, v169);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightArrivalAirportCode.setter();
    OUTLINED_FUNCTION_131_2(v226);
    outlined init with copy of ResourceBundle?(v170, v171, v172, v173);
    OUTLINED_FUNCTION_11_39();
    if (v102)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      if (!v102)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10(v227);
      outlined init with take of FlightSnippet.Leg(v174, v175, v176);
    }

    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v87, v177);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightArrivalAirportName.setter();
    OUTLINED_FUNCTION_131_2(v228);
    outlined init with copy of ResourceBundle?(v178, v179, v180, v181);
    OUTLINED_FUNCTION_11_39();
    if (v102)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      if (!v102)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10(&v229);
      outlined init with take of FlightSnippet.Leg(v182, v183, v184);
    }

    OUTLINED_FUNCTION_322_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v87, v185);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightArrivalAirportLocality.setter();
    OUTLINED_FUNCTION_131_2(&v230);
    outlined init with copy of ResourceBundle?(v186, v187, v188, v189);
    OUTLINED_FUNCTION_11_39();
    if (v102)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      if (!v102)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10(&v231);
      outlined init with take of FlightSnippet.Leg(v190, v191, v192);
    }

    OUTLINED_FUNCTION_321_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v87, v193);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightArrivalAirportRegion.setter();
    OUTLINED_FUNCTION_113_10(&v232);
    outlined init with copy of ResourceBundle?(v194, v195, v196, v197);
    OUTLINED_FUNCTION_10_2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd);
    if (v102)
    {
      OUTLINED_FUNCTION_123_11();
      OUTLINED_FUNCTION_10_2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd);
      if (!v102)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      outlined init with take of FlightSnippet.Leg(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, v168, v198);
    }

    v199 = *(v168 + 192);
    v200 = *(v168 + 200);

    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v168, v201);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightArrivalAirportCountry.setter();
  }

  FlightReservation.flightArrivalDateString.setter();
  FlightReservation.flightDepartureDateString.setter();
  OUTLINED_FUNCTION_17_33();
  _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v212, v202);
}

void FlightReservation.init(flightNumber:flightCarrierCode:bundleId:flightDepartureDateComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v22;
  a20 = v23;
  v186 = v24;
  v187 = v26;
  v188 = v25;
  v189 = v28;
  v190 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_114(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_194_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v34 = OUTLINED_FUNCTION_114(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_2();
  v185 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_49_3();
  v198 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_49_3();
  v197 = v48;
  OUTLINED_FUNCTION_78_0();
  v49 = type metadata accessor for DateComponents();
  v50 = OUTLINED_FUNCTION_14(v49);
  v184 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_7_4();
  v183 = v56;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_14_2();
  v182 = v58;
  OUTLINED_FUNCTION_78_0();
  v195 = type metadata accessor for FlightDesignator();
  v59 = OUTLINED_FUNCTION_14(v195);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_36();
  v66 = v65 - v64;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v68 = OUTLINED_FUNCTION_114(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_123_8();
  v74 = type metadata accessor for UUID();
  v75 = OUTLINED_FUNCTION_14(v74);
  v77 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_36();
  v82 = v81 - v80;
  UUID.init()();
  v83 = UUID.uuidString.getter();
  OUTLINED_FUNCTION_167_4(v83, v84);
  (*(v77 + 8))(v82, v74);
  v85 = type metadata accessor for URL();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v85);
  v181 = v20;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v85);

  FlightDesignator.init(number:airline:)();
  v92 = FlightDesignator.airline.getter();
  v94 = v93;
  v95 = FlightDesignator.number.getter();
  v97 = v96;
  v199 = v92;
  v200 = v94;

  MEMORY[0x25F89F6C0](v95, v97);

  OUTLINED_FUNCTION_288_0(v94);
  (*(v61 + 8))(v66, v195);
  v98 = *(v184 + 16);
  v98(v182, v186, v49);
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v106);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_25DBC8180;
  v180 = *MEMORY[0x277CC28F0];
  *(v111 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v111 + 40) = v112;
  v113 = (v111 + 40);
  v98(v21, v182, v49);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v49);
  v194 = dateString(fromDateComponents:)(v21);
  v118 = v117;
  outlined destroy of FlightSnippet.Leg?(v21, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v177 = v98;
  v98(v21, v183, v49);
  OUTLINED_FUNCTION_44_0();
  v179 = v49;
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v49);
  v191 = dateString(fromDateComponents:)(v21);
  v192 = v122;
  outlined destroy of FlightSnippet.Leg?(v21, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v123 = 0;
  v197 = *(v111 + 16);
  v198 = v111;
  v196 = *MEMORY[0x277CC3128];
  v193 = *MEMORY[0x277CC27A0];
  OUTLINED_FUNCTION_205_5(*MEMORY[0x277CC2898]);
  OUTLINED_FUNCTION_230_3(*MEMORY[0x277CC2848]);
  OUTLINED_FUNCTION_259_4(*MEMORY[0x277CC28C0]);
  v176 = *MEMORY[0x277CC2908];
  OUTLINED_FUNCTION_190_8(*MEMORY[0x277CC2860]);
  v124 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_188_7(*MEMORY[0x277CC28E0]);
  while (1)
  {
    if (v197 == v123)
    {
      OUTLINED_FUNCTION_8_40();
      v197 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v124, v158, v159, v160);
      OUTLINED_FUNCTION_69_15();
      outlined init with copy of ResourceBundle?(v161, v162, v163, v164);
      OUTLINED_FUNCTION_131_2(&a9);
      outlined init with copy of ResourceBundle?(v165, v166, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v167 = OUTLINED_FUNCTION_226_1(&a10);
      v177(v167, v182, v179);
      v177(v178, v183, v179);
      OUTLINED_FUNCTION_107_8(&a12);
      outlined init with copy of ResourceBundle?(v168, v169, v170, v171);
      LOBYTE(v199) = 1;
      OUTLINED_FUNCTION_120_9(&v197);
      OUTLINED_FUNCTION_126_13(&v198);
      OUTLINED_FUNCTION_136_11();
      OUTLINED_FUNCTION_241_4();
      FlightReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:flightNumber:flightCheckInUrl:flightBookingInfoUrl:flightCarrier:flightCarrierCode:flightDesignator:flightDepartureDateComponents:flightArrivalDateComponents:flightArrivalAirportAddress:flightDepartureAirportAddress:flightArrivalAirportCode:flightDepartureAirportCode:flightArrivalAirportCountry:flightDepartureAirportCountry:flightArrivalAirportLocality:flightDepartureAirportLocality:flightArrivalAirportName:flightDepartureAirportName:flightArrivalAirportRegion:flightDepartureAirportRegion:flightConfirmationNumber:flightPassengerNames:flightPassengerSeatNumbers:flightArrivalTerminal:flightDepartureTerminal:flightBookingProvider:flightBoardingTimeDate:flightDepartureGate:flightArrivalGate:flightDuration:flightCostCurrency:flightCostAmount:flightStatus:flightUpdateStatus:flightDepartureDateString:flightArrivalDateString:_resolvedFlightJSON();
      v172 = *(v184 + 8);
      v172(v186, v179);
      outlined destroy of FlightSnippet.Leg?(v185, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v172(v183, v179);
      v172(v182, v179);
      outlined destroy of FlightSnippet.Leg?(v181, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      OUTLINED_FUNCTION_33_13();
      outlined destroy of FlightSnippet.Leg?(v173, v174, v175);
      OUTLINED_FUNCTION_148();
      return;
    }

    if (v123 >= *(v198 + 16))
    {
      break;
    }

    v125 = *(v113 - 1);
    v126 = *v113;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    v128 = v128 && v127 == v126;
    if (v128)
    {

LABEL_46:
      if (!v118)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_83_14();
      v146 = v145 + 2;
      v147 = 0x800000025DBF73C0;
      v148 = v194;
      v149 = v118;
      goto LABEL_48;
    }

    v129 = OUTLINED_FUNCTION_54_22();

    if (v129)
    {
      goto LABEL_46;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    if (v128 && v130 == v126)
    {

LABEL_54:
      v149 = v192;
      if (!v192)
      {
        goto LABEL_56;
      }

      v146 = 0xD000000000000017;
      v147 = 0x800000025DBF73E0;
      v148 = v191;
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_54_22();
    OUTLINED_FUNCTION_282_1();
    if (v129)
    {
      goto LABEL_54;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    if (v128 && v132 == v126)
    {

LABEL_59:
      v199 = v188;
      v200 = v187;

      MEMORY[0x25F89F6C0](v190, v189);

      v148 = v188;
      v149 = v187;
      v146 = 0x754E746867696C66;
      v147 = 0xEC0000007265626DLL;
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_54_22();
    OUTLINED_FUNCTION_282_1();
    if (v129)
    {
      goto LABEL_59;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    if (v128 && v134 == v126)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_54_22();
    OUTLINED_FUNCTION_282_1();
    if (v129)
    {
      goto LABEL_56;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    if (v128 && v136 == v126)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_54_22();
    OUTLINED_FUNCTION_282_1();
    if (v129)
    {
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_298_0();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    if (v128 && v138 == v126)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_54_22();
    OUTLINED_FUNCTION_282_1();
    if (v129)
    {
      goto LABEL_56;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    if (v128 && v140 == v126)
    {
    }

    else
    {
      OUTLINED_FUNCTION_54_22();
      OUTLINED_FUNCTION_282_1();
      if ((v129 & 1) == 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_201_6();
        if (v128 && v142 == v126)
        {
LABEL_60:
        }

        else
        {
          v144 = OUTLINED_FUNCTION_54_22();

          if ((v144 & 1) == 0)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }
        }

LABEL_56:

        goto LABEL_57;
      }
    }

    v199 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_286_0();
    v148 = BidirectionalCollection<>.joined(separator:)();
    v149 = v156;

    OUTLINED_FUNCTION_83_14();
    v146 = v157 + 3;
    v147 = 0x800000025DBF75C0;
LABEL_48:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v153 = *(v124 + 16);
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v124 = v154;
    }

    v151 = *(v124 + 16);
    v150 = *(v124 + 24);
    if (v151 >= v150 >> 1)
    {
      OUTLINED_FUNCTION_26_3(v150);
      OUTLINED_FUNCTION_160_6();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v124 = v155;
    }

    *(v124 + 16) = v151 + 1;
    v152 = (v124 + 32 * v151);
    v152[4] = v146;
    v152[5] = v147;
    v152[6] = v148;
    v152[7] = v149;
LABEL_57:
    v113 += 2;
    ++v123;
  }

  __break(1u);
}

uint64_t FlightReservation.resolvedFlight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for JSONDecodingOptions();
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  FlightReservation._resolvedFlightJSON.getter();
  if (v6)
  {
    v7 = type metadata accessor for FlightSnippet.Flight(0);
    JSONDecodingOptions.init()();
    OUTLINED_FUNCTION_135_8();
    lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v8, v9);
    OUTLINED_FUNCTION_121_0();
    Message.init(jsonString:options:)();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  }

  else
  {
    type metadata accessor for FlightSnippet.Flight(0);
    OUTLINED_FUNCTION_92();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSaySS_AGtGTt0g5(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMd, &_ss18_DictionaryStorageCySS15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMR);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v6 = v1;
  v2 = OUTLINED_FUNCTION_11_1();
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v2, v3, v4);
  return v6;
}

uint64_t _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_326_0(a1, a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t FlightReservation.status.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
  OUTLINED_FUNCTION_114(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v5 = v15 - v4;
  FlightReservation.leg.getter(v15 - v4);
  v6 = type metadata accessor for FlightSnippet.Leg(0);
  v7 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v7, v8, v6);
  if (v9)
  {
    outlined destroy of FlightSnippet.Leg?(v5, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v10 = *&v5[*(v6 + 20)];
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    OUTLINED_FUNCTION_17_33();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v5, v13);
  }

  v15[4] = v11;
  v16 = v12;
  return String.init<A>(describing:)();
}

uint64_t FlightReservation.flightCost.getter@<X0>(uint64_t a1@<X8>)
{
  FlightReservation.flightCostAmount.getter();
  if ((v2 & 0x100000000) != 0 || (FlightReservation.flightCostCurrency.getter(), !v3))
  {
    v4 = 1;
  }

  else
  {
    IntentCurrencyAmount.init(amount:currencyCode:)();
    v4 = 0;
  }

  v5 = type metadata accessor for IntentCurrencyAmount();

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

uint64_t FlightReservation.destinationForDialog.getter()
{
  result = FlightReservation.flightArrivalAirportLocality.getter();
  if (!v1)
  {
    result = FlightReservation.flightArrivalAirportRegion.getter();
    if (!v2)
    {
      result = FlightReservation.flightArrivalAirportName.getter();
      if (!v3)
      {
        result = FlightReservation.flightArrivalAirportCode.getter();
        if (!v4)
        {
          return FlightReservation.flightArrivalAirportCountry.getter();
        }
      }
    }
  }

  return result;
}

uint64_t specialized SearchItem.llmConsumableDescription.getter()
{
  return VoiceMemo.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Reminder.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Contact.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Safari.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Photo.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Party.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Trip.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return TicketedTransportation.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return PreExtractedSharedLink.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return PreExtractedBreadcrumb.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return RestaurantReservation.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return RentalCarReservation.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return GenericSpotlightItem.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return VoicemailTranscript.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return PreExtractedContact.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return WalletTransaction.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return MobileSMSDocument.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return FlightReservation.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return PreExtractedCard.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return HotelReservation.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return ShippingOrder.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return EmailDocument.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return CalendarEvent.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return TicketedShow.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return PhoneHistory.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return NoteDocument.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return JournalEntry.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return FileDocument.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Appointment.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return WalletPass.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return WebAnswer.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return WebImage.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Answer.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return AppEntityItem.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  memcpy(v2, v0, sizeof(v2));
  return GeoLocation.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return KGDocument.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

uint64_t FlightReservation.init(item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  FlightReservation.init(item:answerAttributes:)(a1, MEMORY[0x277D84F90]);
  v10 = type metadata accessor for FlightReservation();
  v11 = OUTLINED_FUNCTION_93_6();
  if (__swift_getEnumTagSinglePayload(v11, v12, v10))
  {
    outlined destroy of FlightSnippet.Leg?(v9, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
    v13 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_51(v10);
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_103_10();
    v16();
    v13 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v13, 1, v10);
}

uint64_t HotelReservation.init(item:)(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, void, uint64_t, uint64_t), void (*a5)(void))
{
  v8 = OUTLINED_FUNCTION_326_0(a1, a2, a3);
  v9 = OUTLINED_FUNCTION_114(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_46_14();
  type metadata accessor for FeatureFlagService();
  v13 = OUTLINED_FUNCTION_197_0();
  a4(a1, MEMORY[0x277D84F90], 1, v13);
  a5(0);
  v14 = OUTLINED_FUNCTION_291_0();
  if (__swift_getEnumTagSinglePayload(v14, 1, a5))
  {
    OUTLINED_FUNCTION_103_10();
    outlined destroy of FlightSnippet.Leg?(v15, v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_51(a5);
    v19 = *(v18 + 32);
    v20 = OUTLINED_FUNCTION_65_15();
    v21(v20);
  }

  OUTLINED_FUNCTION_102_10();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = OUTLINED_FUNCTION_93_0();
  if (__swift_getEnumTagSinglePayload(v26, v27, a5))
  {
    OUTLINED_FUNCTION_103_10();
    outlined destroy of FlightSnippet.Leg?(v28, v29, v30);
  }

  else
  {
    OUTLINED_FUNCTION_51(a5);
    v32 = *(v31 + 32);
    v33 = OUTLINED_FUNCTION_242_3();
    v34(v33);
  }

  OUTLINED_FUNCTION_102_10();
  return __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
}

void preExtractedSearchResult(from:spotlightRankingItem:eventSourceItemsMap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v915 = v23;
  v911 = v24;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
  OUTLINED_FUNCTION_114(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v33);
  v844 = type metadata accessor for ShippingOrder();
  v34 = OUTLINED_FUNCTION_14(v844);
  v843 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
  OUTLINED_FUNCTION_114(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v45);
  v849 = type metadata accessor for Trip();
  v46 = OUTLINED_FUNCTION_14(v849);
  v848 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
  OUTLINED_FUNCTION_114(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v57);
  v855 = type metadata accessor for Party();
  v58 = OUTLINED_FUNCTION_14(v855);
  v853[1] = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
  OUTLINED_FUNCTION_114(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v69);
  v864 = type metadata accessor for Appointment();
  v70 = OUTLINED_FUNCTION_14(v864);
  v862 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
  OUTLINED_FUNCTION_114(v77);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v81);
  v877 = type metadata accessor for TicketedShow();
  v82 = OUTLINED_FUNCTION_14(v877);
  v872 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
  OUTLINED_FUNCTION_114(v89);
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v93);
  v884 = type metadata accessor for TicketedTransportation();
  v94 = OUTLINED_FUNCTION_14(v884);
  v880 = v95;
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v99);
  v101 = &v828 - v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  OUTLINED_FUNCTION_114(v102);
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v106);
  v107 = type metadata accessor for RentalCarReservation();
  v108 = OUTLINED_FUNCTION_156_1(v107);
  v109 = OUTLINED_FUNCTION_14(v108);
  v888 = v110;
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v115);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
  OUTLINED_FUNCTION_114(v116);
  v118 = *(v117 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v120);
  v899 = type metadata accessor for RestaurantReservation();
  v121 = OUTLINED_FUNCTION_14(v899);
  v895 = v122;
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v127);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  OUTLINED_FUNCTION_114(v128);
  v130 = *(v129 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v132);
  v909 = type metadata accessor for HotelReservation();
  v133 = OUTLINED_FUNCTION_14(v909);
  v901 = v134;
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v139);
  v140 = type metadata accessor for SpotlightRankingItem();
  v912 = OUTLINED_FUNCTION_14(v140);
  v913 = v141;
  v143 = *(v142 + 64);
  MEMORY[0x28223BE20](v912);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_14_2();
  v154 = OUTLINED_FUNCTION_28_2(v153);
  v917 = type metadata accessor for SearchResult(v154);
  v155 = OUTLINED_FUNCTION_17(v917);
  v157 = *(v156 + 64);
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_14_2();
  v908 = v167;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v169 = OUTLINED_FUNCTION_114(v168);
  v171 = *(v170 + 64);
  MEMORY[0x28223BE20](v169);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v174);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v178);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v182);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v183);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v185);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v187);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v189);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_14_2();
  v192 = OUTLINED_FUNCTION_28_2(v191);
  v910 = type metadata accessor for SearchResultItem(v192);
  v193 = OUTLINED_FUNCTION_17(v910);
  v195 = *(v194 + 64);
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v196);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v197);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v201);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v202);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v203);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_216_3();
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  OUTLINED_FUNCTION_114(v205);
  v207 = *(v206 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v208);
  v210 = (&v828 - v209);
  v211 = type metadata accessor for FlightReservation();
  v212 = OUTLINED_FUNCTION_14(v211);
  v914 = v213;
  v215 = *(v214 + 64);
  MEMORY[0x28223BE20](v212);
  OUTLINED_FUNCTION_36();
  v218 = v217 - v216;
  v916 = v26;
  v219 = [v26 attributeSet];
  v220 = [v219 attributeForKey_];
  v881 = v101;
  if (v220)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v920 = 0u;
    v921 = 0u;
  }

  OUTLINED_FUNCTION_16_31();
  if (!v221)
  {
    outlined destroy of FlightSnippet.Leg?(&v922, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_324_0() & 1) == 0)
  {
LABEL_9:
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v224 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v224, static Logging.search);
    v225 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v226 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v226, v227))
    {
      v228 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v228);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v229, v230, v231, v232, v233, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v234 = 1;
    goto LABEL_37;
  }

  v836 = v28;
  v833 = v918;
  v835 = v919;
  v222 = MEMORY[0x25F89F4C0](0xD000000000000025, 0x800000025DBF6D00);
  v223 = [v219 attributeForKey_];

  if (v223)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v920 = 0u;
    v921 = 0u;
  }

  OUTLINED_FUNCTION_16_31();
  if (v235)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v236 = v918;
      goto LABEL_20;
    }
  }

  else
  {
    outlined destroy of FlightSnippet.Leg?(&v922, &_sypSgMd, &_sypSgMR);
  }

  v236 = MEMORY[0x277D84F90];
LABEL_20:
  v834 = v236;
  v237 = [v916 uniqueIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v238 = OUTLINED_FUNCTION_232();
  v28 = v915;
  v240 = specialized Dictionary.subscript.getter(v238, v239, v915);

  if (!v240)
  {
    goto LABEL_30;
  }

  if (!specialized Array.count.getter(v240))
  {

LABEL_30:

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v260 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v260, static Logging.search);
    v261 = v916;

    v262 = Logger.logObject.getter();
    v263 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v262, v263))
    {
      v264 = swift_slowAlloc();
      v922 = swift_slowAlloc();
      OUTLINED_FUNCTION_313_0(4.8154e-34);
      v265 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v264 + 4) = v265;
      *(v264 + 12) = 2080;
      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.mailMessageID.getter([v261 attributeSet]);
      v266 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v264 + 14) = v266;
      *(v264 + 22) = 2080;
      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.getter([v261 attributeSet]);
      v267 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v264 + 24) = v267;
      *(v264 + 32) = 2080;
      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventSourceBundleIdentifier.getter([v261 attributeSet]);
      v268 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v264 + 34) = v268;
      *(v264 + 42) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16CSSearchableItemCGMd, &_sSaySo16CSSearchableItemCGMR);
      Dictionary.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v264 + 44) = v28;
      _os_log_impl(&dword_25D85C000, v262, v263, "Pre-extracted event - missing source. eventType: %s, mailMessageId: %s, eventMessageId: %s, sourceBundle:%s, sourceMapping: %s", v264, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {
    }

    goto LABEL_36;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v240 & 0xC000000000000001) == 0, v240);
  if ((v240 & 0xC000000000000001) != 0)
  {
    v241 = MEMORY[0x25F89FFD0](0, v240);
  }

  else
  {
    v241 = *(v240 + 32);
  }

  v242 = v241;

  v243 = one-time initialization token for search;
  v915 = v242;
  if (v243 != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v244 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v244, static Logging.search);
  v245 = v219;
  v832 = v240;
  v246 = Logger.logObject.getter();
  v247 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v246, v247))
  {
    v248 = swift_slowAlloc();
    v831 = swift_slowAlloc();
    *&v920 = v831;
    *v248 = 136643587;
    v922 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v245, &selRef_eventMessageIdentifier);
    v923 = v249;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    HIDWORD(v830) = v247;
    String.init<A>(describing:)();
    v250 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v248 + 4) = v250;
    v829 = v246;
    *(v248 + 12) = 2085;
    v922 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v245, &selRef_mailMessageID);
    v923 = v251;
    String.init<A>(describing:)();
    v252 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v248 + 14) = v252;
    *(v248 + 22) = 2085;
    v922 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v245, &selRef_eventSourceBundleIdentifier);
    v923 = v253;
    String.init<A>(describing:)();
    v254 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v248 + 24) = v254;
    *(v248 + 32) = 2085;
    v922 = [v245 eventSourceIsForwarded];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    String.init<A>(describing:)();
    v255 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v248 + 34) = v255;
    OUTLINED_FUNCTION_251_0(v851);
    _os_log_impl(v256, v257, v258, v259, v248, 0x2Au);
    OUTLINED_FUNCTION_48_12(v852);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v269 = v917;
  v270 = *MEMORY[0x277CC22A8];
  v271 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v273 = v272;
  v28 = v833;
  v274 = v835;
  v275 = v271 == v833 && v272 == v835;
  if (v275)
  {

    goto LABEL_47;
  }

  v276 = v245;
  v277 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v277)
  {
    v245 = v276;
LABEL_47:

    v278 = v916;
    FlightReservation.init(item:answerAttributes:)(v278, v834);
    OUTLINED_FUNCTION_166(v210, 1, v211);
    v28 = v836;
    v279 = v914;
    if (!v275)
    {
      v905 = v245;
      (*(v914 + 4))(v218, v210, v211);
      v284 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48);
      v285 = *(v279 + 2);
      OUTLINED_FUNCTION_289_0();
      v286();
      v287 = MEMORY[0x277D84F90];
      *(v20 + v284) = MEMORY[0x277D84F90];
      swift_storeEnumTagMultiPayload();
      v288 = v907;
      v289 = v269;
      v290 = v912;
      (*(v913 + 16))(v907, v911, v912);
      v291 = OUTLINED_FUNCTION_13_2();
      __swift_storeEnumTagSinglePayload(v291, v292, v293, v290);
      v294 = v908;
      *(v908 + v289[7]) = v287;
      v295 = (v294 + v289[10]);
      *v295 = 0;
      v295[1] = 0;
      outlined init with copy of SearchResultItem(v20, v294);
      v296 = v289[6];
      v297 = type metadata accessor for CSSearchableItem();
      OUTLINED_FUNCTION_4_46();
      lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v298, v299);
      v300 = v915;
      CodableNSSecureCoding.init(wrappedValue:)();
      OUTLINED_FUNCTION_251_0(&a17);
      outlined init with copy of ResourceBundle?(v301, v302, v303, v304);
      OUTLINED_FUNCTION_70_12();
      OUTLINED_FUNCTION_166(v305, v306, v307);
      if (v308)
      {
        v28 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMd;
        v309 = OUTLINED_FUNCTION_65_15();
        outlined destroy of FlightSnippet.Leg?(v309, v310, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        v269 = v917;
        OUTLINED_FUNCTION_6_34();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_63_18();

        outlined destroy of FlightSnippet.Leg?(v288, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v20, v312);
        v313 = OUTLINED_FUNCTION_306();
        v314(v313);
        OUTLINED_FUNCTION_144_10();
      }

      else
      {
        OUTLINED_FUNCTION_63_18();

        outlined destroy of FlightSnippet.Leg?(v288, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v20, v321);
        v322 = OUTLINED_FUNCTION_306();
        v323(v322);
        v28 = (v913 + 32);
        v324 = *(v913 + 32);
        v325 = OUTLINED_FUNCTION_48_12(&a12);
        v324(v325, v297, v290);
        v326 = v917;
        v324(v294 + v917[5], v300, v290);
        OUTLINED_FUNCTION_144_10();
        v269 = v326;
      }

LABEL_59:
      *(v294 + v269[8]) = 1;
      *(v294 + v269[9]) = 1;
      OUTLINED_FUNCTION_31_24();
      v328 = v294;
LABEL_60:
      outlined init with take of FlightSnippet.Leg(v328, v28, v327);
      v234 = 0;
      goto LABEL_38;
    }

    v280 = v915;
    v281 = &_s15OmniSearchTypes17FlightReservationVSgMd;
    v282 = &_s15OmniSearchTypes17FlightReservationVSgMR;
    v283 = v210;
LABEL_65:
    outlined destroy of FlightSnippet.Leg?(v283, v281, v282);
    v234 = 1;
    goto LABEL_38;
  }

  v315 = *MEMORY[0x277CC22B0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_271_1();
  if (v275 && v316 == v274)
  {

    v318 = v909;
    v319 = v905;
LABEL_62:

    type metadata accessor for FeatureFlagService();
    OUTLINED_FUNCTION_197_0();
    v329 = v916;
    OUTLINED_FUNCTION_66_10(&a13);
    OUTLINED_FUNCTION_61_19();
    HotelReservation.init(item:answerAttributes:requireDates:featureFlagService:)(v330, v331, v332, v333, v334, v335, v336, v337, v828, v829, v830, v831, v832, v833, v834, v835, v836, v837, v838, v839, v840, v841);
    v338 = OUTLINED_FUNCTION_65();
    __swift_getEnumTagSinglePayload(v338, v339, v318);
    v340 = v904;
    OUTLINED_FUNCTION_144_10();
    if (v341)
    {

      v342 = v915;
      v281 = &_s15OmniSearchTypes16HotelReservationVSgMd;
      v282 = &_s15OmniSearchTypes16HotelReservationVSgMR;
LABEL_64:
      v283 = v273;
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_269_2();
    v343 = v901;
    v344 = *(v901 + 32);
    OUTLINED_FUNCTION_47_11();
    v345();
    v346 = OUTLINED_FUNCTION_106_12();
    v273(v346);
    v347 = OUTLINED_FUNCTION_159_6();
    v273(v347);
    v348 = OUTLINED_FUNCTION_233_4();
    static os_log_type_t.info.getter();
    v349 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v349, v350))
    {
      OUTLINED_FUNCTION_90_1();
      v908 = OUTLINED_FUNCTION_51_13();
      v922 = v908;
      *v318 = 136643075;
      specialized Encodable.oms_jsonPrettyPrinted()();
      OUTLINED_FUNCTION_212_3();
      v343 = *(v343 + 8);
      (v343)(v340, v909);
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();

      v351.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
      HotelReservation.llmConsumableDescription(locale:)(v351);
      OUTLINED_FUNCTION_212_3();
      v916 = v343;
      (v343)(v319, v909);
      v269 = v917;
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();
      OUTLINED_FUNCTION_144_10();

      *(v318 + 14) = v319;
      OUTLINED_FUNCTION_53_16(&dword_25D85C000, v352, v353, "Hotel reservation found: %{sensitive}s ; %{sensitive}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      v357 = OUTLINED_FUNCTION_181_7();
      v273(v357);
      v358 = OUTLINED_FUNCTION_243_3();
      v273(v358);
    }

    OUTLINED_FUNCTION_264_3(&a10);
    OUTLINED_FUNCTION_163_5(&a16);
    v914();
    OUTLINED_FUNCTION_309();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_239_2();
    v359 = OUTLINED_FUNCTION_175_7();
    v360(v359);
    OUTLINED_FUNCTION_52_19();
    __swift_storeEnumTagSinglePayload(v361, v362, v363, v364);
    OUTLINED_FUNCTION_94_11(v269[7]);
    v365 = v269[6];
    v366 = type metadata accessor for CSSearchableItem();
    OUTLINED_FUNCTION_4_46();
    lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v367, v368);
    v369 = OUTLINED_FUNCTION_156_5();
    OUTLINED_FUNCTION_47_11();
    CodableNSSecureCoding.init(wrappedValue:)();
    OUTLINED_FUNCTION_251_0(&v924);
    outlined init with copy of ResourceBundle?(v370, v371, v372, v373);
    v374 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_166(v374, v375, v340);
    if (!v275)
    {
      OUTLINED_FUNCTION_63_18();

      outlined destroy of FlightSnippet.Leg?(v343, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_0_67();
      v388 = OUTLINED_FUNCTION_292_0();
      _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v388, v389);
      OUTLINED_FUNCTION_59_11(&a11);
      (v916)(v906, v909);
      v390 = *(v218 + 32);
      v391 = &v920 + 1;
LABEL_78:
      v392 = OUTLINED_FUNCTION_48_12(v391);
      v390(v392, v365, v340);
      v390(v319 + v269[5], v366, v340);
LABEL_112:
      *(v319 + v269[8]) = 1;
      *(v319 + v269[9]) = 1;
      OUTLINED_FUNCTION_31_24();
      v328 = v319;
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v376, v377, v378);
    OUTLINED_FUNCTION_6_34();
    OUTLINED_FUNCTION_19_18();
    OUTLINED_FUNCTION_63_18();

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v380, v381, v382);
    OUTLINED_FUNCTION_0_67();
    v383 = OUTLINED_FUNCTION_292_0();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v383, v384);
    OUTLINED_FUNCTION_59_11(&a11);
    v385 = v906;
    v386 = v909;
LABEL_111:
    (v916)(v385, v386);
    goto LABEL_112;
  }

  OUTLINED_FUNCTION_108_10();
  OUTLINED_FUNCTION_174_5();
  v318 = v909;
  v319 = v905;
  if (v273)
  {
    goto LABEL_62;
  }

  v354 = *MEMORY[0x277CC22C8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_271_1();
  if (v275 && v355 == v274)
  {

    OUTLINED_FUNCTION_293_0();
LABEL_80:
    OUTLINED_FUNCTION_144_10();

    type metadata accessor for FeatureFlagService();
    OUTLINED_FUNCTION_197_0();
    v393 = v916;
    OUTLINED_FUNCTION_66_10(&v921 + 8);
    OUTLINED_FUNCTION_61_19();
    RestaurantReservation.init(item:answerAttributes:requireDates:featureFlagService:)(v394, v395, v396, v397, v398, v399, v400, v401, v828, SHIDWORD(v828), v829, v830, v831, v832, v833, v834, v835, v836, v837, v838, v839);
    v402 = OUTLINED_FUNCTION_65();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v402, v403, v318);
    v340 = v896[1];
    if (EnumTagSinglePayload)
    {

      v405 = v915;
      v281 = &_s15OmniSearchTypes21RestaurantReservationVSgMd;
      v282 = &_s15OmniSearchTypes21RestaurantReservationVSgMR;
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_269_2();
    v406 = v895;
    v407 = *(v895 + 32);
    OUTLINED_FUNCTION_47_11();
    v408();
    v409 = OUTLINED_FUNCTION_106_12();
    v273(v409);
    v410 = OUTLINED_FUNCTION_159_6();
    v273(v410);
    v411 = OUTLINED_FUNCTION_233_4();
    static os_log_type_t.info.getter();
    v412 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v412, v413))
    {
      OUTLINED_FUNCTION_90_1();
      v414 = OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_203_5(v414);
      *v318 = 136643075;
      specialized Encodable.oms_jsonPrettyPrinted()();
      OUTLINED_FUNCTION_212_3();
      v406 = *(v406 + 8);
      (v406)(v340, v899);
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();

      v415.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
      RestaurantReservation.llmConsumableDescription(locale:)(v415);
      OUTLINED_FUNCTION_212_3();
      v916 = v406;
      (v406)(v319, v899);
      v269 = v917;
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();
      OUTLINED_FUNCTION_144_10();

      *(v318 + 14) = v319;
      OUTLINED_FUNCTION_53_16(&dword_25D85C000, v416, v417, "Restaurant reservation found: %{sensitive}s ; %{sensitive}s");
      OUTLINED_FUNCTION_61_20();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      v421 = OUTLINED_FUNCTION_181_7();
      v273(v421);
      v422 = OUTLINED_FUNCTION_243_3();
      v273(v422);
    }

    OUTLINED_FUNCTION_264_3(&v920);
    OUTLINED_FUNCTION_163_5(&v925);
    v914();
    OUTLINED_FUNCTION_309();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_239_2();
    v423 = OUTLINED_FUNCTION_175_7();
    v424(v423);
    OUTLINED_FUNCTION_52_19();
    __swift_storeEnumTagSinglePayload(v425, v426, v427, v428);
    OUTLINED_FUNCTION_94_11(v269[7]);
    v365 = v269[6];
    v366 = type metadata accessor for CSSearchableItem();
    OUTLINED_FUNCTION_4_46();
    lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v429, v430);
    v431 = OUTLINED_FUNCTION_156_5();
    OUTLINED_FUNCTION_47_11();
    CodableNSSecureCoding.init(wrappedValue:)();
    OUTLINED_FUNCTION_251_0(&v915);
    outlined init with copy of ResourceBundle?(v432, v433, v434, v435);
    v436 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_166(v436, v437, v340);
    if (!v275)
    {
      OUTLINED_FUNCTION_63_18();

      outlined destroy of FlightSnippet.Leg?(v406, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_0_67();
      v449 = OUTLINED_FUNCTION_298_0();
      _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v449, v450);
      OUTLINED_FUNCTION_59_11(&v921);
      OUTLINED_FUNCTION_119_9();
      v451();
      v390 = *(v218 + 32);
      v391 = &v909;
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v438, v439, v440);
    OUTLINED_FUNCTION_6_34();
    OUTLINED_FUNCTION_19_18();
    OUTLINED_FUNCTION_63_18();

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v442, v443, v444);
    OUTLINED_FUNCTION_0_67();
    v445 = OUTLINED_FUNCTION_298_0();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v445, v446);
    OUTLINED_FUNCTION_59_11(&v921);
    v385 = v898[3];
    v447 = &a9;
    goto LABEL_110;
  }

  OUTLINED_FUNCTION_108_10();
  OUTLINED_FUNCTION_174_5();
  OUTLINED_FUNCTION_293_0();
  if (v273)
  {
    goto LABEL_80;
  }

  v418 = *MEMORY[0x277CC22A0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_271_1();
  if (v275 && v419 == v274)
  {

    OUTLINED_FUNCTION_206_4();
    v319 = v889;
LABEL_95:
    OUTLINED_FUNCTION_144_10();

    v452 = v916;
    OUTLINED_FUNCTION_66_10(&v911);
    RentalCarReservation.init(item:)(v453, v454);
    v455 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_166(v455, v456, v318);
    v340 = v887[1];
    if (v275)
    {

      v457 = v915;
      v281 = &_s15OmniSearchTypes20RentalCarReservationVSgMd;
      v282 = &_s15OmniSearchTypes20RentalCarReservationVSgMR;
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_269_2();
    v458 = v888;
    v459 = *(v888 + 32);
    OUTLINED_FUNCTION_47_11();
    v460();
    v461 = OUTLINED_FUNCTION_106_12();
    v273(v461);
    v462 = OUTLINED_FUNCTION_159_6();
    v273(v462);
    v463 = OUTLINED_FUNCTION_233_4();
    static os_log_type_t.info.getter();
    v464 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v464, v465))
    {
      OUTLINED_FUNCTION_90_1();
      v467 = OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_203_5(v467);
      *v318 = 136643075;
      specialized Encodable.oms_jsonPrettyPrinted()();
      OUTLINED_FUNCTION_212_3();
      v458 = *(v458 + 8);
      (v458)(v340, v893);
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();

      v468.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
      RentalCarReservation.llmConsumableDescription(locale:)(v468);
      OUTLINED_FUNCTION_212_3();
      v916 = v458;
      (v458)(v319, v893);
      v269 = v917;
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();
      OUTLINED_FUNCTION_144_10();

      *(v318 + 14) = v319;
      OUTLINED_FUNCTION_53_16(&dword_25D85C000, v469, v470, "Rental car reservation found: %{sensitive}s ; %{sensitive}s");
      OUTLINED_FUNCTION_61_20();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_206_4();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      v474 = OUTLINED_FUNCTION_181_7();
      v273(v474);
      v475 = OUTLINED_FUNCTION_243_3();
      v273(v475);
    }

    OUTLINED_FUNCTION_264_3(&v910);
    OUTLINED_FUNCTION_163_5(&v918);
    v914();
    OUTLINED_FUNCTION_309();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_239_2();
    v476 = OUTLINED_FUNCTION_175_7();
    v477(v476);
    OUTLINED_FUNCTION_52_19();
    __swift_storeEnumTagSinglePayload(v478, v479, v480, v481);
    OUTLINED_FUNCTION_94_11(v269[7]);
    v365 = v269[6];
    v366 = type metadata accessor for CSSearchableItem();
    OUTLINED_FUNCTION_4_46();
    lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v482, v483);
    v484 = OUTLINED_FUNCTION_156_5();
    OUTLINED_FUNCTION_47_11();
    CodableNSSecureCoding.init(wrappedValue:)();
    OUTLINED_FUNCTION_251_0(&v906);
    outlined init with copy of ResourceBundle?(v485, v486, v487, v488);
    v489 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_166(v489, v490, v340);
    if (!v275)
    {
      OUTLINED_FUNCTION_63_18();

      outlined destroy of FlightSnippet.Leg?(v458, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_0_67();
      _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v886, v500);
      OUTLINED_FUNCTION_59_11(&v913);
      OUTLINED_FUNCTION_119_9();
      v501();
      v390 = *(v218 + 32);
      v391 = &v903;
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v491, v492, v493);
    OUTLINED_FUNCTION_6_34();
    OUTLINED_FUNCTION_19_18();
    OUTLINED_FUNCTION_63_18();

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v495, v496, v497);
    OUTLINED_FUNCTION_0_67();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v886, v498);
    OUTLINED_FUNCTION_59_11(&v913);
    v385 = v892[1];
    v447 = &v919;
LABEL_110:
    v386 = *(v447 - 32);
    goto LABEL_111;
  }

  OUTLINED_FUNCTION_108_10();
  OUTLINED_FUNCTION_174_5();
  OUTLINED_FUNCTION_206_4();
  v319 = v889;
  if (v273)
  {
    goto LABEL_95;
  }

  v471 = *MEMORY[0x277CC22D8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_271_1();
  if (v275 && v472 == v274)
  {

LABEL_114:
    v502 = v884;

    v503 = v916;
    OUTLINED_FUNCTION_66_10(&v902);
    TicketedTransportation.init(item:)(v504, v505);
    v506 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_166(v506, v507, v502);
    v28 = v836;
    if (!v275)
    {
      OUTLINED_FUNCTION_269_2();
      OUTLINED_FUNCTION_192_7(&v904);
      v510 = *(v509 + 32);
      OUTLINED_FUNCTION_47_11();
      v511();
      v512 = *(v319 + 16);
      v513 = v874[1];
      OUTLINED_FUNCTION_289_0();
      v512();
      v514 = v876;
      OUTLINED_FUNCTION_289_0();
      v914 = v512;
      v512();
      v515 = OUTLINED_FUNCTION_233_4();
      v516 = static os_log_type_t.info.getter();
      v517 = OUTLINED_FUNCTION_32_9();
      if (os_log_type_enabled(v517, v518))
      {
        OUTLINED_FUNCTION_90_1();
        v922 = OUTLINED_FUNCTION_51_13();
        *v502 = 136643075;
        specialized Encodable.oms_jsonPrettyPrinted()();
        OUTLINED_FUNCTION_212_3();
        v520 = *(v319 + 8);
        v520(v513, v884);
        OUTLINED_FUNCTION_91_8();
        OUTLINED_FUNCTION_92_11();

        v521.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
        TicketedTransportation.llmConsumableDescription(locale:)(v521);
        OUTLINED_FUNCTION_212_3();
        v916 = v520;
        v520(v514, v884);
        OUTLINED_FUNCTION_91_8();
        OUTLINED_FUNCTION_92_11();
        OUTLINED_FUNCTION_144_10();

        *(v502 + 14) = v514;
        _os_log_impl(&dword_25D85C000, v515, v516, "Ticketed transportation found: %{sensitive}s ; %{sensitive}s", v502, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        v525 = *(v319 + 8);
        v525(v514, v502);
        v916 = v525;
        v525(v513, v502);
      }

      OUTLINED_FUNCTION_264_3(&v901);
      OUTLINED_FUNCTION_289_0();
      v914();
      OUTLINED_FUNCTION_309();
      swift_storeEnumTagMultiPayload();
      v527 = v912;
      v526 = v913;
      v528 = v874[0];
      (*(v913 + 16))(v874[0], v911, v912);
      v529 = OUTLINED_FUNCTION_49_19();
      __swift_storeEnumTagSinglePayload(v529, v530, v531, v527);
      v269 = v917;
      v294 = v875;
      *(v875 + v917[7]) = MEMORY[0x277D84F90];
      v532 = (v294 + v269[10]);
      *v532 = 0;
      v532[1] = 0;
      v533 = OUTLINED_FUNCTION_34_5();
      outlined init with copy of SearchResultItem(v533, v534);
      v535 = v269[6];
      v536 = type metadata accessor for CSSearchableItem();
      OUTLINED_FUNCTION_4_46();
      lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v537, v538);
      v539 = OUTLINED_FUNCTION_156_5();
      OUTLINED_FUNCTION_47_11();
      CodableNSSecureCoding.init(wrappedValue:)();
      OUTLINED_FUNCTION_261_2(v898);
      outlined init with copy of ResourceBundle?(v540, v541, v542, v543);
      OUTLINED_FUNCTION_166(v535, 1, v527);
      if (v275)
      {
        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v544, v545, v546);
        OUTLINED_FUNCTION_6_34();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_63_18();

        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v548, v549, v550);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v878, v551);
        OUTLINED_FUNCTION_59_11(&v904);
        OUTLINED_FUNCTION_119_9();
        v552();
      }

      else
      {
        OUTLINED_FUNCTION_63_18();

        outlined destroy of FlightSnippet.Leg?(v528, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v878, v554);
        OUTLINED_FUNCTION_59_11(&v904);
        OUTLINED_FUNCTION_119_9();
        v555();
        v556 = *(v526 + 32);
        v557 = OUTLINED_FUNCTION_48_12(&v893);
        v556(v557, v535, v527);
        v556(v294 + v269[5], v536, v527);
      }

      goto LABEL_59;
    }

    v508 = v915;
    v281 = &_s15OmniSearchTypes22TicketedTransportationVSgMd;
    v282 = &_s15OmniSearchTypes22TicketedTransportationVSgMR;
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_108_10();
  OUTLINED_FUNCTION_174_5();
  if (v273)
  {
    goto LABEL_114;
  }

  OUTLINED_FUNCTION_269_2();
  v522 = *MEMORY[0x277CC22D0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_271_1();
  if (v275 && v523 == v274)
  {

    goto LABEL_131;
  }

  OUTLINED_FUNCTION_108_10();
  OUTLINED_FUNCTION_174_5();
  if (v273)
  {
    OUTLINED_FUNCTION_260_3();
LABEL_131:

    v558 = v916;
    v559 = v868;
    TicketedShow.init(item:)(v558, v868);
    v560 = OUTLINED_FUNCTION_93_6();
    v561 = v877;
    OUTLINED_FUNCTION_166(v560, v562, v877);
    if (!v275)
    {
      OUTLINED_FUNCTION_104_11(&v897);
      v568 = OUTLINED_FUNCTION_257_4();
      v569(v568, v559, v561);
      v570 = *(v218 + 16);
      v571 = OUTLINED_FUNCTION_34_27(&v894);
      (v570)(v571);
      v572 = OUTLINED_FUNCTION_34_27(&v895);
      v914 = v570;
      (v570)(v572);
      v573 = OUTLINED_FUNCTION_233_4();
      static os_log_type_t.info.getter();
      v574 = OUTLINED_FUNCTION_32_9();
      if (os_log_type_enabled(v574, v575))
      {
        OUTLINED_FUNCTION_90_1();
        v577 = OUTLINED_FUNCTION_51_13();
        OUTLINED_FUNCTION_203_5(v577);
        *v570 = 136643075;
        OUTLINED_FUNCTION_277_1(&v894);
        specialized Encodable.oms_jsonPrettyPrinted()();
        OUTLINED_FUNCTION_212_3();
        OUTLINED_FUNCTION_109_15(&v897);
        OUTLINED_FUNCTION_107_8(&v900);
        v210();
        OUTLINED_FUNCTION_91_8();
        OUTLINED_FUNCTION_92_11();

        v578.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
        v579 = v869[1];
        TicketedShow.llmConsumableDescription(locale:)(v578);
        v580 = OUTLINED_FUNCTION_27_23();
        (v210)(v580);
        OUTLINED_FUNCTION_64_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_92_11();

        *(v570 + 14) = v579;
        OUTLINED_FUNCTION_53_16(&dword_25D85C000, v581, v582, "Ticketed show found: %{sensitive}s ; %{sensitive}s");
        OUTLINED_FUNCTION_61_20();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        OUTLINED_FUNCTION_263_1(&v897);
        OUTLINED_FUNCTION_131_2(&v900);
        (v570)();
        v586 = OUTLINED_FUNCTION_68_17(&v894);
        v916 = v570;
        (v570)(v586);
      }

      OUTLINED_FUNCTION_48_12(&v891);
      OUTLINED_FUNCTION_256_4(&v900);
      v587();
      OUTLINED_FUNCTION_268_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_255_3();
      v588 = OUTLINED_FUNCTION_40_21();
      v589(v588);
      OUTLINED_FUNCTION_22_24();
      OUTLINED_FUNCTION_29_18(v590);
      v591 = OUTLINED_FUNCTION_283_0();
      OUTLINED_FUNCTION_4_46();
      lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v592, v593);
      v594 = OUTLINED_FUNCTION_156_5();
      OUTLINED_FUNCTION_47_11();
      CodableNSSecureCoding.init(wrappedValue:)();
      OUTLINED_FUNCTION_131_2(v892);
      outlined init with copy of ResourceBundle?(v595, v596, v597, v598);
      OUTLINED_FUNCTION_105_3(v591);
      if (v275)
      {
        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v599, v600, v601);
        OUTLINED_FUNCTION_7_42();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_63_18();

        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v603, v604, v605);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v865[0], v606);
        OUTLINED_FUNCTION_59_11(&v897);
        OUTLINED_FUNCTION_119_9();
        v607();
      }

      else
      {
        OUTLINED_FUNCTION_63_18();

        outlined destroy of FlightSnippet.Leg?(v866, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v865[0], v609);
        OUTLINED_FUNCTION_59_11(&v897);
        OUTLINED_FUNCTION_119_9();
        v610();
        OUTLINED_FUNCTION_254_2();
        OUTLINED_FUNCTION_226_1(&v884);
        OUTLINED_FUNCTION_163_5(v892);
        (v594)();
        OUTLINED_FUNCTION_155_8();
        v612 = OUTLINED_FUNCTION_95_8(v611);
        (v594)(v612);
      }

      OUTLINED_FUNCTION_110_13();
      v615 = v896;
LABEL_147:
      v616 = *(v615 - 32);
      *(v616 + v613) = v614;
      *(v616 + v269[9]) = v614;
      OUTLINED_FUNCTION_31_24();
      OUTLINED_FUNCTION_144_10();
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_63_18();

    v564 = v915;
    v565 = &_s15OmniSearchTypes12TicketedShowVSgMd;
    v566 = &_s15OmniSearchTypes12TicketedShowVSgMR;
    v567 = v559;
    goto LABEL_153;
  }

  v583 = *MEMORY[0x277CC2298];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_80_13();
  if (v275 && v584 == v835)
  {
    OUTLINED_FUNCTION_284_1();
    goto LABEL_149;
  }

  OUTLINED_FUNCTION_58_12();
  OUTLINED_FUNCTION_174_5();
  if (v273)
  {
    OUTLINED_FUNCTION_260_3();
LABEL_149:

    v617 = v916;
    OUTLINED_FUNCTION_104_10(&v889);
    Appointment.init(item:)(v618, v619);
    v620 = OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_166(v620, v621, v864);
    if (!v275)
    {
      OUTLINED_FUNCTION_104_11(&v888);
      OUTLINED_FUNCTION_257_4();
      OUTLINED_FUNCTION_105_4();
      v625();
      v626 = *(v218 + 16);
      v627 = OUTLINED_FUNCTION_34_27(&v885);
      (v626)(v627);
      v628 = OUTLINED_FUNCTION_34_27(&v886);
      v914 = v626;
      (v626)(v628);
      v629 = OUTLINED_FUNCTION_233_4();
      static os_log_type_t.info.getter();
      v630 = OUTLINED_FUNCTION_32_9();
      if (os_log_type_enabled(v630, v631))
      {
        OUTLINED_FUNCTION_90_1();
        v633 = OUTLINED_FUNCTION_51_13();
        OUTLINED_FUNCTION_203_5(v633);
        *v626 = 136643075;
        OUTLINED_FUNCTION_277_1(&v885);
        specialized Encodable.oms_jsonPrettyPrinted()();
        OUTLINED_FUNCTION_212_3();
        OUTLINED_FUNCTION_109_15(&v888);
        OUTLINED_FUNCTION_107_8(&v890);
        v210();
        OUTLINED_FUNCTION_91_8();
        OUTLINED_FUNCTION_92_11();

        v634.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
        v635 = v860;
        Appointment.llmConsumableDescription(locale:)(v634);
        v636 = OUTLINED_FUNCTION_27_23();
        (v210)(v636);
        OUTLINED_FUNCTION_64_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_92_11();

        *(v626 + 14) = v635;
        OUTLINED_FUNCTION_53_16(&dword_25D85C000, v637, v638, "Appointment found: %{sensitive}s ; %{sensitive}s");
        OUTLINED_FUNCTION_61_20();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        OUTLINED_FUNCTION_263_1(&v888);
        OUTLINED_FUNCTION_131_2(&v890);
        (v626)();
        v642 = OUTLINED_FUNCTION_68_17(&v885);
        v916 = v626;
        (v626)(v642);
      }

      OUTLINED_FUNCTION_48_12(&v882);
      OUTLINED_FUNCTION_256_4(&v890);
      v643();
      OUTLINED_FUNCTION_268_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_255_3();
      v644 = OUTLINED_FUNCTION_40_21();
      v645(v644);
      OUTLINED_FUNCTION_22_24();
      OUTLINED_FUNCTION_29_18(v646);
      v647 = OUTLINED_FUNCTION_283_0();
      OUTLINED_FUNCTION_4_46();
      lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v648, v649);
      v650 = OUTLINED_FUNCTION_156_5();
      OUTLINED_FUNCTION_47_11();
      CodableNSSecureCoding.init(wrappedValue:)();
      OUTLINED_FUNCTION_131_2(v883);
      outlined init with copy of ResourceBundle?(v651, v652, v653, v654);
      OUTLINED_FUNCTION_105_3(v647);
      if (v275)
      {
        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v655, v656, v657);
        OUTLINED_FUNCTION_7_42();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_63_18();

        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v659, v660, v661);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v856[0], v662);
        OUTLINED_FUNCTION_59_11(&v888);
        OUTLINED_FUNCTION_119_9();
        v663();
      }

      else
      {
        OUTLINED_FUNCTION_63_18();

        outlined destroy of FlightSnippet.Leg?(v857, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v856[0], v665);
        OUTLINED_FUNCTION_59_11(&v888);
        OUTLINED_FUNCTION_119_9();
        v666();
        OUTLINED_FUNCTION_254_2();
        OUTLINED_FUNCTION_226_1(&v875);
        OUTLINED_FUNCTION_163_5(v883);
        (v650)();
        OUTLINED_FUNCTION_155_8();
        v668 = OUTLINED_FUNCTION_95_8(v667);
        (v650)(v668);
      }

      OUTLINED_FUNCTION_110_13();
      v615 = v887;
      goto LABEL_147;
    }

    OUTLINED_FUNCTION_63_18();

    v623 = v915;
    v565 = &_s15OmniSearchTypes11AppointmentVSgMd;
    v566 = &_s15OmniSearchTypes11AppointmentVSgMR;
    v624 = &v889;
    goto LABEL_152;
  }

  v639 = *MEMORY[0x277CC22C0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_80_13();
  if (v275 && v640 == v835)
  {
    OUTLINED_FUNCTION_284_1();
    goto LABEL_168;
  }

  OUTLINED_FUNCTION_58_12();
  OUTLINED_FUNCTION_174_5();
  if (v273)
  {
    OUTLINED_FUNCTION_260_3();
LABEL_168:

    v669 = v916;
    OUTLINED_FUNCTION_104_10(&v880);
    Party.init(item:)(v670, v671);
    v672 = OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_166(v672, v673, v855);
    if (!v275)
    {
      OUTLINED_FUNCTION_104_11(&v879);
      OUTLINED_FUNCTION_257_4();
      OUTLINED_FUNCTION_105_4();
      v676();
      v677 = *(v218 + 16);
      v678 = OUTLINED_FUNCTION_34_27(&v876);
      (v677)(v678);
      v679 = OUTLINED_FUNCTION_34_27(&v877);
      v914 = v677;
      (v677)(v679);
      v680 = OUTLINED_FUNCTION_233_4();
      static os_log_type_t.info.getter();
      v681 = OUTLINED_FUNCTION_32_9();
      if (os_log_type_enabled(v681, v682))
      {
        OUTLINED_FUNCTION_90_1();
        v684 = OUTLINED_FUNCTION_51_13();
        OUTLINED_FUNCTION_203_5(v684);
        *v677 = 136643075;
        OUTLINED_FUNCTION_277_1(&v876);
        specialized Encodable.oms_jsonPrettyPrinted()();
        OUTLINED_FUNCTION_212_3();
        OUTLINED_FUNCTION_109_15(&v879);
        OUTLINED_FUNCTION_107_8(&v881);
        v210();
        OUTLINED_FUNCTION_91_8();
        OUTLINED_FUNCTION_92_11();

        v685.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
        v686 = v852[2];
        Party.llmConsumableDescription(locale:)(v685);
        v687 = OUTLINED_FUNCTION_27_23();
        (v210)(v687);
        OUTLINED_FUNCTION_64_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_92_11();

        *(v677 + 14) = v686;
        OUTLINED_FUNCTION_53_16(&dword_25D85C000, v688, v689, "Party found: %{sensitive}s ; %{sensitive}s");
        OUTLINED_FUNCTION_61_20();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        OUTLINED_FUNCTION_263_1(&v879);
        OUTLINED_FUNCTION_131_2(&v881);
        (v677)();
        v693 = OUTLINED_FUNCTION_68_17(&v876);
        v916 = v677;
        (v677)(v693);
      }

      OUTLINED_FUNCTION_48_12(&v873);
      OUTLINED_FUNCTION_256_4(&v881);
      v694();
      OUTLINED_FUNCTION_268_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_255_3();
      v695 = OUTLINED_FUNCTION_40_21();
      v696(v695);
      OUTLINED_FUNCTION_22_24();
      OUTLINED_FUNCTION_29_18(v697);
      v698 = OUTLINED_FUNCTION_283_0();
      OUTLINED_FUNCTION_4_46();
      lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v699, v700);
      v701 = OUTLINED_FUNCTION_156_5();
      OUTLINED_FUNCTION_47_11();
      CodableNSSecureCoding.init(wrappedValue:)();
      OUTLINED_FUNCTION_131_2(v874);
      outlined init with copy of ResourceBundle?(v702, v703, v704, v705);
      OUTLINED_FUNCTION_105_3(v698);
      if (v275)
      {
        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v706, v707, v708);
        OUTLINED_FUNCTION_7_42();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_63_18();

        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v710, v711, v712);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v850, v713);
        OUTLINED_FUNCTION_59_11(&v879);
        OUTLINED_FUNCTION_119_9();
        v714();
      }

      else
      {
        OUTLINED_FUNCTION_63_18();

        outlined destroy of FlightSnippet.Leg?(v851[1], &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v850, v716);
        OUTLINED_FUNCTION_59_11(&v879);
        OUTLINED_FUNCTION_119_9();
        v717();
        OUTLINED_FUNCTION_254_2();
        OUTLINED_FUNCTION_226_1(&v866);
        OUTLINED_FUNCTION_163_5(v874);
        (v701)();
        OUTLINED_FUNCTION_155_8();
        v719 = OUTLINED_FUNCTION_95_8(v718);
        (v701)(v719);
      }

      OUTLINED_FUNCTION_110_13();
      v615 = &v878;
      goto LABEL_147;
    }

    OUTLINED_FUNCTION_63_18();

    v675 = v915;
    v565 = &_s15OmniSearchTypes5PartyVSgMd;
    v566 = &_s15OmniSearchTypes5PartyVSgMR;
    v624 = &v880;
    goto LABEL_152;
  }

  v690 = *MEMORY[0x277CC22E0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_80_13();
  if (v275 && v691 == v835)
  {
    OUTLINED_FUNCTION_284_1();
  }

  else
  {
    OUTLINED_FUNCTION_58_12();
    OUTLINED_FUNCTION_174_5();
    if ((v273 & 1) == 0)
    {
      v741 = *MEMORY[0x277CC22B8];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_80_13();
      if (v275 && v742 == v835)
      {
        OUTLINED_FUNCTION_284_1();
      }

      else
      {
        OUTLINED_FUNCTION_58_12();
        OUTLINED_FUNCTION_174_5();
        if ((v273 & 1) == 0)
        {

          OUTLINED_FUNCTION_119_5(v853);

          v792 = OUTLINED_FUNCTION_233_4();
          v793 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v792, v793))
          {
            OUTLINED_FUNCTION_28_3();
            swift_slowAlloc();
            v794 = OUTLINED_FUNCTION_10_23();
            v922 = v794;
            OUTLINED_FUNCTION_313_0(4.8149e-34);
            OUTLINED_FUNCTION_252_0(v853);
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_291_0();

            *(v318 + 4) = v276;
            OUTLINED_FUNCTION_110_4();
            _os_log_impl(v795, v796, v797, v798, v799, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v794);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          else
          {
            OUTLINED_FUNCTION_284_1();
          }

          OUTLINED_FUNCTION_63_18();
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_260_3();
      }

      v771 = v916;
      OUTLINED_FUNCTION_104_10(&v861);
      ShippingOrder.init(item:)(v772, v773);
      v774 = OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_166(v774, v775, v844);
      if (!v275)
      {
        OUTLINED_FUNCTION_104_11(&v862);
        OUTLINED_FUNCTION_257_4();
        OUTLINED_FUNCTION_105_4();
        v778();
        v779 = *(v218 + 16);
        v780 = OUTLINED_FUNCTION_34_27(&v858);
        (v779)(v780);
        v781 = OUTLINED_FUNCTION_34_27(&v859);
        v914 = v779;
        (v779)(v781);
        v782 = OUTLINED_FUNCTION_233_4();
        static os_log_type_t.info.getter();
        v783 = OUTLINED_FUNCTION_32_9();
        if (os_log_type_enabled(v783, v784))
        {
          OUTLINED_FUNCTION_90_1();
          v786 = OUTLINED_FUNCTION_51_13();
          OUTLINED_FUNCTION_203_5(v786);
          *v779 = 136643075;
          OUTLINED_FUNCTION_277_1(&v858);
          specialized Encodable.oms_jsonPrettyPrinted()();
          OUTLINED_FUNCTION_212_3();
          OUTLINED_FUNCTION_109_15(&v862);
          OUTLINED_FUNCTION_107_8(&v863);
          v210();
          OUTLINED_FUNCTION_91_8();
          OUTLINED_FUNCTION_92_11();

          v787.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
          v788 = v842;
          ShippingOrder.llmConsumableDescription(locale:)(v787);
          v789 = OUTLINED_FUNCTION_27_23();
          (v210)(v789);
          OUTLINED_FUNCTION_64_0();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_92_11();

          *(v779 + 14) = v788;
          OUTLINED_FUNCTION_53_16(&dword_25D85C000, v790, v791, "Shipping Order found: %{sensitive}s ; %{sensitive}s");
          OUTLINED_FUNCTION_61_20();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {

          OUTLINED_FUNCTION_263_1(&v862);
          OUTLINED_FUNCTION_131_2(&v863);
          (v779)();
          v800 = OUTLINED_FUNCTION_68_17(&v858);
          v916 = v779;
          (v779)(v800);
        }

        OUTLINED_FUNCTION_48_12(&v855);
        OUTLINED_FUNCTION_256_4(&v863);
        v801();
        OUTLINED_FUNCTION_268_1();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_255_3();
        v802 = OUTLINED_FUNCTION_40_21();
        v803(v802);
        OUTLINED_FUNCTION_22_24();
        OUTLINED_FUNCTION_29_18(v804);
        v805 = OUTLINED_FUNCTION_283_0();
        OUTLINED_FUNCTION_4_46();
        lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v806, v807);
        v808 = OUTLINED_FUNCTION_156_5();
        OUTLINED_FUNCTION_47_11();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_131_2(v856);
        outlined init with copy of ResourceBundle?(v809, v810, v811, v812);
        OUTLINED_FUNCTION_105_3(v805);
        if (v275)
        {
          OUTLINED_FUNCTION_47_11();
          outlined destroy of FlightSnippet.Leg?(v813, v814, v815);
          OUTLINED_FUNCTION_7_42();
          OUTLINED_FUNCTION_19_18();
          OUTLINED_FUNCTION_63_18();

          OUTLINED_FUNCTION_47_11();
          outlined destroy of FlightSnippet.Leg?(v817, v818, v819);
          OUTLINED_FUNCTION_0_67();
          _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v838, v820);
          OUTLINED_FUNCTION_59_11(&v862);
          OUTLINED_FUNCTION_119_9();
          v821();
        }

        else
        {
          OUTLINED_FUNCTION_63_18();

          outlined destroy of FlightSnippet.Leg?(v840, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_67();
          _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v838, v823);
          OUTLINED_FUNCTION_59_11(&v862);
          OUTLINED_FUNCTION_119_9();
          v824();
          OUTLINED_FUNCTION_254_2();
          OUTLINED_FUNCTION_226_1(&v854);
          OUTLINED_FUNCTION_163_5(v856);
          (v808)();
          OUTLINED_FUNCTION_155_8();
          v826 = OUTLINED_FUNCTION_95_8(v825);
          (v808)(v826);
        }

        OUTLINED_FUNCTION_110_13();
        v615 = &v860;
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_63_18();

      v777 = v915;
      v565 = &_s15OmniSearchTypes13ShippingOrderVSgMd;
      v566 = &_s15OmniSearchTypes13ShippingOrderVSgMR;
      v624 = &v861;
      goto LABEL_152;
    }

    OUTLINED_FUNCTION_260_3();
  }

  v720 = v916;
  OUTLINED_FUNCTION_104_10(&v871);
  Trip.init(item:)(v721, v722);
  v723 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v723, v724, v849);
  if (!v275)
  {
    OUTLINED_FUNCTION_104_11(&v870);
    OUTLINED_FUNCTION_257_4();
    OUTLINED_FUNCTION_105_4();
    v727();
    v728 = *(v218 + 16);
    v729 = OUTLINED_FUNCTION_34_27(&v867);
    (v728)(v729);
    v730 = OUTLINED_FUNCTION_34_27(&v868);
    v914 = v728;
    (v728)(v730);
    v731 = OUTLINED_FUNCTION_233_4();
    static os_log_type_t.info.getter();
    v732 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v732, v733))
    {
      OUTLINED_FUNCTION_90_1();
      v735 = OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_203_5(v735);
      *v728 = 136643075;
      OUTLINED_FUNCTION_277_1(&v867);
      specialized Encodable.oms_jsonPrettyPrinted()();
      OUTLINED_FUNCTION_212_3();
      OUTLINED_FUNCTION_109_15(&v870);
      OUTLINED_FUNCTION_107_8(&v872);
      v210();
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();

      v736.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
      v737 = v847;
      Trip.llmConsumableDescription(locale:)(v736);
      v738 = OUTLINED_FUNCTION_27_23();
      (v210)(v738);
      OUTLINED_FUNCTION_64_0();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_92_11();

      *(v728 + 14) = v737;
      OUTLINED_FUNCTION_53_16(&dword_25D85C000, v739, v740, "Trip found: %{sensitive}s ; %{sensitive}s");
      OUTLINED_FUNCTION_61_20();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      OUTLINED_FUNCTION_263_1(&v870);
      OUTLINED_FUNCTION_131_2(&v872);
      (v728)();
      v744 = OUTLINED_FUNCTION_68_17(&v867);
      v916 = v728;
      (v728)(v744);
    }

    OUTLINED_FUNCTION_48_12(&v864);
    OUTLINED_FUNCTION_256_4(&v872);
    v745();
    OUTLINED_FUNCTION_268_1();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_3();
    v746 = OUTLINED_FUNCTION_40_21();
    v747(v746);
    OUTLINED_FUNCTION_22_24();
    OUTLINED_FUNCTION_29_18(v748);
    v749 = OUTLINED_FUNCTION_283_0();
    OUTLINED_FUNCTION_4_46();
    lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v750, v751);
    v752 = OUTLINED_FUNCTION_156_5();
    OUTLINED_FUNCTION_47_11();
    CodableNSSecureCoding.init(wrappedValue:)();
    OUTLINED_FUNCTION_131_2(v865);
    outlined init with copy of ResourceBundle?(v753, v754, v755, v756);
    OUTLINED_FUNCTION_105_3(v749);
    if (v275)
    {
      OUTLINED_FUNCTION_47_11();
      outlined destroy of FlightSnippet.Leg?(v757, v758, v759);
      OUTLINED_FUNCTION_7_42();
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_63_18();

      OUTLINED_FUNCTION_47_11();
      outlined destroy of FlightSnippet.Leg?(v761, v762, v763);
      OUTLINED_FUNCTION_0_67();
      _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v845, v764);
      OUTLINED_FUNCTION_59_11(&v870);
      OUTLINED_FUNCTION_119_9();
      v765();
    }

    else
    {
      OUTLINED_FUNCTION_63_18();

      outlined destroy of FlightSnippet.Leg?(v846, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_0_67();
      _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v845, v767);
      OUTLINED_FUNCTION_59_11(&v870);
      OUTLINED_FUNCTION_119_9();
      v768();
      OUTLINED_FUNCTION_254_2();
      OUTLINED_FUNCTION_226_1(&v857);
      OUTLINED_FUNCTION_163_5(v865);
      (v752)();
      OUTLINED_FUNCTION_155_8();
      v770 = OUTLINED_FUNCTION_95_8(v769);
      (v752)(v770);
    }

    OUTLINED_FUNCTION_110_13();
    v615 = v869;
    goto LABEL_147;
  }

  OUTLINED_FUNCTION_63_18();

  v726 = v915;
  v565 = &_s15OmniSearchTypes4TripVSgMd;
  v566 = &_s15OmniSearchTypes4TripVSgMR;
  v624 = &v871;
LABEL_152:
  v567 = *(v624 - 32);
LABEL_153:
  outlined destroy of FlightSnippet.Leg?(v567, v565, v566);
LABEL_36:
  OUTLINED_FUNCTION_144_10();
LABEL_37:
  v269 = v917;
LABEL_38:
  __swift_storeEnumTagSinglePayload(v28, v234, 1, v269);
  OUTLINED_FUNCTION_148();
}

uint64_t RentalCarReservation.init(item:checkEventType:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_59_4();
  type metadata accessor for FeatureFlagService();
  v14 = OUTLINED_FUNCTION_197_0();
  a5(a1, a2, v14);
  v15 = a6(0);
  v16 = OUTLINED_FUNCTION_93_0();
  if (__swift_getEnumTagSinglePayload(v16, v17, v15))
  {
    OUTLINED_FUNCTION_103_10();
    outlined destroy of FlightSnippet.Leg?(v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_51(v15);
    v22 = *(v21 + 32);
    v23 = OUTLINED_FUNCTION_242_3();
    v24(v23);
  }

  OUTLINED_FUNCTION_102_10();
  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

void HotelReservation.init(item:answerAttributes:requireDates:)()
{
  HotelReservation.init(item:answerAttributes:requireDates:)();
}

{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_59_4();
  type metadata accessor for FeatureFlagService();
  v16 = OUTLINED_FUNCTION_197_0();
  v3(v9, v7, v5, v16);
  v17 = v1(0);
  v18 = OUTLINED_FUNCTION_93_0();
  if (__swift_getEnumTagSinglePayload(v18, v19, v17))
  {
    OUTLINED_FUNCTION_103_10();
    outlined destroy of FlightSnippet.Leg?(v20, v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_51(v17);
    v24 = *(v23 + 32);
    v25 = OUTLINED_FUNCTION_242_3();
    v26(v25);
  }

  OUTLINED_FUNCTION_102_10();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_148();
}

uint64_t RentalCarReservation.init(item:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v9 = OUTLINED_FUNCTION_326_0(a1, a2, a3);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = OUTLINED_FUNCTION_202_5();
  a4(v15);
  v16 = a5(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v16))
  {
    OUTLINED_FUNCTION_103_10();
    outlined destroy of FlightSnippet.Leg?(v17, v18, v19);
    v20 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_51(v16);
    v22 = *(v21 + 32);
    v23 = OUTLINED_FUNCTION_34_5();
    v24(v23);
    v20 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a6, v20, 1, v16);
}

void RentalCarReservation.init(item:checkEventType:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_194_6();
  a21 = v28;
  a22 = v29;
  OUTLINED_FUNCTION_84_12();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v31 = OUTLINED_FUNCTION_114(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_123_8();
  v35 = [v25 attributeSet];
  OUTLINED_FUNCTION_218_5();
  if ((v22 & 1) != 0 && (v36 = OUTLINED_FUNCTION_229_4(), v37 = [v36 containsString_], v36, (v37 & 1) == 0))
  {

    type metadata accessor for RentalCarReservation();
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_101_9();

    __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
  }

  else
  {
    v38 = [v25 uniqueIdentifier];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v40;
    v122 = v39;

    v41 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventMessageIdentifier);
    v119 = v42;
    v120 = v41;
    v43 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventGroupIdentifier);
    OUTLINED_FUNCTION_191_8(v43);
    *(v45 - 256) = v44;
    v46 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventFallbackGroupIdentifier);
    OUTLINED_FUNCTION_179_7(v46, v47);
    v113 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventMegadomeIdentifier);
    v49 = OUTLINED_FUNCTION_161_4(v48, &a14);
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_163_7(v50, v51, &a13);

    v52 = [v23 eventSubType];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_73_15(v53, v54);

    v55 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_167_4(v55, v56);
    v57 = [v23 eventIsAllDay];
    if (v57)
    {
      OUTLINED_FUNCTION_217_5(v57);
    }

    v58 = [v23 eventSourceIsForwarded];
    if (v58)
    {
      OUTLINED_FUNCTION_217_5(v58);
    }

    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v23);
    v59 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_mailMessageID);
    OUTLINED_FUNCTION_216_0(v59);
    OUTLINED_FUNCTION_89_16();
    v61 = v60;
    v62 = OUTLINED_FUNCTION_280_2(v60, sel_attributeForKey_);

    if (v62)
    {
      OUTLINED_FUNCTION_285_0();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_276_1();
    }

    OUTLINED_FUNCTION_116_8();
    v126 = v27;
    v118 = v26;
    if (v63)
    {
      OUTLINED_FUNCTION_115_11();
      OUTLINED_FUNCTION_114_12();
      if (v65)
      {
        v66 = 0;
      }

      else
      {
        v66 = v64;
      }

      OUTLINED_FUNCTION_230_3(v66);
    }

    else
    {
      outlined destroy of FlightSnippet.Leg?(&v132, &_sypSgMd, &_sypSgMR);
    }

    v125 = v24;
    v67 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_170_6(v67, v68);
    v69 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v23, &selRef_mailboxIdentifiers);
    OUTLINED_FUNCTION_146_1(v69);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v23);
    v70 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventStatus);
    OUTLINED_FUNCTION_162_8(v70, v71, &v127);
    v72 = OUTLINED_FUNCTION_281_0();
    OUTLINED_FUNCTION_78_17(v72, v73);
    v74 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.displayName.getter(v23);
    OUTLINED_FUNCTION_43_14(v74, v75);
    v76 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventReservationID);
    OUTLINED_FUNCTION_77_15(v76, v77);
    v78 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventProvider);
    OUTLINED_FUNCTION_71_17(v78, v79);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v23, &selRef_eventCustomerNames);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventReservationForName);
    v80 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventStartLocationName);
    OUTLINED_FUNCTION_237_4(v80, v81, &v114);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventStartLocationAddress);
    v82 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventStartLocationTelephone);
    OUTLINED_FUNCTION_236_3(v82, v83, &v110);
    v84 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventEndLocationName);
    OUTLINED_FUNCTION_138_1(v84, v85);
    v86 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventEndLocationAddress);
    OUTLINED_FUNCTION_185_5(v86, v87);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventEndLocationTelephone);
    [v23 eventDuration];
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventTotalCost);
    CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v88 = [v23 startDate];
    v123 = v25;
    if (v88)
    {
      v89 = v88;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for Date();
    OUTLINED_FUNCTION_61_19();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
    v94 = [v23 endDate];
    if (v94)
    {
      v95 = v94;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    OUTLINED_FUNCTION_61_19();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_startDateTimeZone);
    OUTLINED_FUNCTION_258_3();
    OUTLINED_FUNCTION_274_2(&v109);
    OUTLINED_FUNCTION_266_2();
    OUTLINED_FUNCTION_317_0();
    OUTLINED_FUNCTION_265_3();
    OUTLINED_FUNCTION_223_4(&v110);
    OUTLINED_FUNCTION_221_5(&v111);
    OUTLINED_FUNCTION_275_1(&v112);
    OUTLINED_FUNCTION_224_4(&v113);
    OUTLINED_FUNCTION_222_4(&v114);
    OUTLINED_FUNCTION_273_2(&v115);
    OUTLINED_FUNCTION_225_5(&v116);
    OUTLINED_FUNCTION_184_6(&v117);
    OUTLINED_FUNCTION_183_6(&v118);
    OUTLINED_FUNCTION_198_5(&v119);
    OUTLINED_FUNCTION_129_12(&v120);
    OUTLINED_FUNCTION_127_14(&v121);
    OUTLINED_FUNCTION_125_10(&v122);
    OUTLINED_FUNCTION_131_8(&v123);
    OUTLINED_FUNCTION_128_10(&v124);
    OUTLINED_FUNCTION_130_11(&v125);
    OUTLINED_FUNCTION_197_7(&v126);
    OUTLINED_FUNCTION_157_5(&v127);
    OUTLINED_FUNCTION_141_6(&v128);
    OUTLINED_FUNCTION_120_9(&v129);
    OUTLINED_FUNCTION_126_13(&v130);
    OUTLINED_FUNCTION_150_6();
    OUTLINED_FUNCTION_182_8(&v131);
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_151_6();
    OUTLINED_FUNCTION_134_10();
    OUTLINED_FUNCTION_149_9();
    OUTLINED_FUNCTION_148_9();
    OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_133_11();
    OUTLINED_FUNCTION_117_12();
    OUTLINED_FUNCTION_139_9(&a14);
    OUTLINED_FUNCTION_124_14();
    OUTLINED_FUNCTION_241_4();
    RentalCarReservation.init(id:eventMessageIdentifier:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMegadomeIdentifier:eventType:eventSubType:eventSourceBundleIdentifier:eventIsAllDay:eventSourceIsForwarded:authors:mailMessageId:mailMessageHeader:accountIdentifier:mailboxes:detectedEventTypes:status:updateStatus:displayName:reservationId:provider:customerNames:reservationForName:startLocationName:startLocationAddress:startLocationTelephone:endLocationName:endLocationAddress:endLocationTelephone:durationInSeconds:totalCost:timeIsUnknown:startDate:endDate:eventSourceLLMConsumableDescription:startDateTimeZone:)();

    type metadata accessor for RentalCarReservation();
    v100 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
    OUTLINED_FUNCTION_101_9();
  }
}

void TicketedTransportation.init(item:checkEventType:featureFlagService:)()
{
  OUTLINED_FUNCTION_194_6();
  OUTLINED_FUNCTION_84_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_123_8();
  v8 = [v2 attributeSet];
  OUTLINED_FUNCTION_218_5();
  if ((v0 & 1) != 0 && (v9 = OUTLINED_FUNCTION_229_4(), v10 = [v9 containsString_], v9, (v10 & 1) == 0))
  {

    type metadata accessor for TicketedTransportation();
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_101_9();

    __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  }

  else
  {
    v11 = [v2 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventMessageIdentifier);
    v12 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventGroupIdentifier);
    OUTLINED_FUNCTION_82_15(v12, v13);
    v14 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventFallbackGroupIdentifier);
    OUTLINED_FUNCTION_75_16(v14, v15);
    v16 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventMegadomeIdentifier);
    OUTLINED_FUNCTION_81_18(v16, v17);
    v18 = OUTLINED_FUNCTION_229_4();
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_72_14(v19, v20);

    v21 = [v1 eventSubType];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_212_4(v22, v23);
    v24 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_74_19(v24, v25);
    v26 = [v1 eventIsAllDay];
    if (v26)
    {
      OUTLINED_FUNCTION_217_5(v26);
    }

    else
    {
      OUTLINED_FUNCTION_247_4();
    }

    v27 = [v1 eventSourceIsForwarded];
    if (v27)
    {
      OUTLINED_FUNCTION_217_5(v27);
    }

    else
    {
      OUTLINED_FUNCTION_248_3();
    }

    v28 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v1);
    OUTLINED_FUNCTION_248(v28);
    v29 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_mailMessageID);
    OUTLINED_FUNCTION_39_21(v29, v30);
    OUTLINED_FUNCTION_89_16();
    v32 = v31;
    v33 = OUTLINED_FUNCTION_280_2(v31, sel_attributeForKey_);

    if (v33)
    {
      OUTLINED_FUNCTION_285_0();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_276_1();
    }

    OUTLINED_FUNCTION_116_8();
    if (v34)
    {
      OUTLINED_FUNCTION_115_11();
      OUTLINED_FUNCTION_114_12();
      if (v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = v35;
      }

      OUTLINED_FUNCTION_205_5(v37);
    }

    else
    {
      outlined destroy of FlightSnippet.Leg?(&v74, &_sypSgMd, &_sypSgMR);
      OUTLINED_FUNCTION_169_8();
    }

    v73 = v2;
    v38 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_76_14(v38, v39);
    v40 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v1, &selRef_mailboxIdentifiers);
    OUTLINED_FUNCTION_156_1(v40);
    v41 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v1);
    OUTLINED_FUNCTION_146_1(v41);
    v42 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventStatus);
    OUTLINED_FUNCTION_171_6(v42, v43);
    v44 = OUTLINED_FUNCTION_281_0();
    OUTLINED_FUNCTION_178_7(v44, v45);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v1, &selRef_eventCustomerNames);
    v46 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventStartLocationName);
    OUTLINED_FUNCTION_43_14(v46, v47);
    v48 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventStartLocationAddress);
    OUTLINED_FUNCTION_77_15(v48, v49);
    v50 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventEndLocationName);
    OUTLINED_FUNCTION_71_17(v50, v51);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventEndLocationAddress);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v1, &selRef_eventSeatNumbers);
    [v1 eventDuration];
    CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v52 = [v1 startDate];
    if (v52)
    {
      v53 = v52;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for Date();
    OUTLINED_FUNCTION_61_19();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
    v58 = [v1 endDate];
    if (v58)
    {
      v59 = v58;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    OUTLINED_FUNCTION_61_19();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_startDateTimeZone);
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_15_33();
    TicketedTransportation.init(id:eventMessageIdentifier:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMegadomeIdentifier:eventType:eventSubType:eventSourceBundleIdentifier:eventIsAllDay:eventSourceIsForwarded:authors:mailMessageId:mailMessageHeader:accountIdentifier:mailboxes:detectedEventTypes:status:updateStatus:customerNames:startLocationName:startLocationAddress:endLocationName:endLocationAddress:seatNumbers:durationInSeconds:timeIsUnknown:startDate:endDate:eventSourceLLMConsumableDescription:startDateTimeZone:)();

    type metadata accessor for TicketedTransportation();
    v64 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
    OUTLINED_FUNCTION_101_9();
  }
}

void TicketedShow.init(item:checkEventType:featureFlagService:)()
{
  OUTLINED_FUNCTION_194_6();
  OUTLINED_FUNCTION_84_12();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = OUTLINED_FUNCTION_114(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_123_8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_194_1();
  v15 = [v4 attributeSet];
  OUTLINED_FUNCTION_218_5();
  if ((v0 & 1) != 0 && (v16 = OUTLINED_FUNCTION_229_4(), v17 = [v16 containsString_], v16, (v17 & 1) == 0))
  {

    type metadata accessor for TicketedShow();
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_101_9();

    __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  }

  else
  {
    v18 = [v4 uniqueIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98[4] = v20;
    v98[5] = v19;

    v21 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventMessageIdentifier);
    v98[2] = v22;
    v98[3] = v21;
    v23 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventGroupIdentifier);
    OUTLINED_FUNCTION_82_15(v23, v24);
    v25 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventFallbackGroupIdentifier);
    OUTLINED_FUNCTION_75_16(v25, v26);
    v27 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventMegadomeIdentifier);
    OUTLINED_FUNCTION_81_18(v27, v28);
    v29 = OUTLINED_FUNCTION_229_4();
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_72_14(v30, v31);

    v32 = [v1 eventSubType];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_212_4(v33, v34);
    v35 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_74_19(v35, v36);
    v37 = [v1 eventIsAllDay];
    if (v37)
    {
      OUTLINED_FUNCTION_217_5(v37);
    }

    else
    {
      OUTLINED_FUNCTION_247_4();
    }

    v38 = [v1 eventSourceIsForwarded];
    if (v38)
    {
      OUTLINED_FUNCTION_217_5(v38);
    }

    else
    {
      OUTLINED_FUNCTION_248_3();
    }

    v39 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v1);
    OUTLINED_FUNCTION_248(v39);
    v40 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_mailMessageID);
    OUTLINED_FUNCTION_39_21(v40, v41);
    OUTLINED_FUNCTION_89_16();
    v43 = v42;
    v44 = OUTLINED_FUNCTION_280_2(v42, sel_attributeForKey_);

    if (v44)
    {
      OUTLINED_FUNCTION_285_0();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_276_1();
    }

    OUTLINED_FUNCTION_116_8();
    v102 = v5;
    if (v45)
    {
      OUTLINED_FUNCTION_115_11();
      OUTLINED_FUNCTION_114_12();
      if (v47)
      {
        v48 = 0;
      }

      else
      {
        v48 = v46;
      }

      OUTLINED_FUNCTION_205_5(v48);
    }

    else
    {
      outlined destroy of FlightSnippet.Leg?(&v103, &_sypSgMd, &_sypSgMR);
      OUTLINED_FUNCTION_169_8();
    }

    v49 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_76_14(v49, v50);
    v51 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v1, &selRef_mailboxIdentifiers);
    OUTLINED_FUNCTION_156_1(v51);
    v52 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v1);
    OUTLINED_FUNCTION_146_1(v52);
    v53 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventStatus);
    OUTLINED_FUNCTION_171_6(v53, v54);
    v55 = closure #1 in RentalCarReservation.init(item:checkEventType:featureFlagService:)(v3, v1);
    OUTLINED_FUNCTION_178_7(v55, v56);
    v57 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventReservationID);
    OUTLINED_FUNCTION_174_6(v57, v58);
    v59 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventProvider);
    OUTLINED_FUNCTION_299_0(v59, v60);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v1, &selRef_eventCustomerNames);
    v61 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventStartLocationName);
    OUTLINED_FUNCTION_71_17(v61, v62);
    v63 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventStartLocationAddress);
    OUTLINED_FUNCTION_187_6(v63, v64);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v1, &selRef_eventSeatNumbers);
    [v1 eventDuration];
    v65 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventTicketType);
    OUTLINED_FUNCTION_237_4(v65, v66, &v95);
    v67 = [v1 eventURL];
    v100 = v3;
    v101 = v2;
    v99 = v4;
    if (v67)
    {
      v68 = v67;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for URL();
    OUTLINED_FUNCTION_219_4();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventTotalCost);
    CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v73 = [v1 startDate];
    if (v73)
    {
      v74 = v73;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for Date();
    OUTLINED_FUNCTION_160_6();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
    v79 = [v1 endDate];
    if (v79)
    {
      v80 = v79;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    OUTLINED_FUNCTION_160_6();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_startDateTimeZone);
    OUTLINED_FUNCTION_223_4(&v94);
    OUTLINED_FUNCTION_221_5(&v95);
    OUTLINED_FUNCTION_222_4(&v96);
    OUTLINED_FUNCTION_273_2(&v97);
    OUTLINED_FUNCTION_225_5(v98);
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_15_33();
    TicketedShow.init(id:eventMessageIdentifier:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMegadomeIdentifier:eventType:eventSubType:eventSourceBundleIdentifier:eventIsAllDay:eventSourceIsForwarded:authors:mailMessageId:mailMessageHeader:accountIdentifier:mailboxes:detectedEventTypes:status:updateStatus:reservationId:provider:customerNames:startLocationName:startLocationAddress:seatNumbers:durationInSeconds:ticketType:ticketUrl:totalCost:timeIsUnknown:startDate:endDate:eventSourceLLMConsumableDescription:startDateTimeZone:)();

    type metadata accessor for TicketedShow();
    v85 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
    OUTLINED_FUNCTION_101_9();
  }
}

void Appointment.init(item:checkEventType:featureFlagService:)()
{
  OUTLINED_FUNCTION_194_6();
  OUTLINED_FUNCTION_84_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_123_8();
  v9 = [v2 attributeSet];
  OUTLINED_FUNCTION_218_5();
  if ((v0 & 1) != 0 && (v10 = OUTLINED_FUNCTION_229_4(), v11 = [v10 containsString_], v10, (v11 & 1) == 0))
  {

    type metadata accessor for Appointment();
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_101_9();

    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  }

  else
  {
    v12 = [v2 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventMessageIdentifier);
    v13 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventGroupIdentifier);
    OUTLINED_FUNCTION_82_15(v13, v14);
    v15 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventFallbackGroupIdentifier);
    OUTLINED_FUNCTION_75_16(v15, v16);
    v17 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventMegadomeIdentifier);
    OUTLINED_FUNCTION_81_18(v17, v18);
    v19 = OUTLINED_FUNCTION_229_4();
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_72_14(v20, v21);

    v22 = [v1 eventSubType];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_212_4(v23, v24);
    v25 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_74_19(v25, v26);
    v27 = [v1 eventIsAllDay];
    if (v27)
    {
      OUTLINED_FUNCTION_217_5(v27);
    }

    else
    {
      OUTLINED_FUNCTION_247_4();
    }

    v28 = [v1 eventSourceIsForwarded];
    if (v28)
    {
      OUTLINED_FUNCTION_217_5(v28);
    }

    else
    {
      OUTLINED_FUNCTION_248_3();
    }

    v29 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v1);
    OUTLINED_FUNCTION_248(v29);
    v30 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_mailMessageID);
    OUTLINED_FUNCTION_39_21(v30, v31);
    OUTLINED_FUNCTION_89_16();
    v33 = v32;
    v34 = OUTLINED_FUNCTION_280_2(v32, sel_attributeForKey_);

    if (v34)
    {
      OUTLINED_FUNCTION_285_0();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_276_1();
    }

    OUTLINED_FUNCTION_116_8();
    if (v35)
    {
      OUTLINED_FUNCTION_115_11();
      OUTLINED_FUNCTION_114_12();
      if (v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = v36;
      }

      OUTLINED_FUNCTION_205_5(v38);
    }

    else
    {
      outlined destroy of FlightSnippet.Leg?(&v72, &_sypSgMd, &_sypSgMR);
      OUTLINED_FUNCTION_169_8();
    }

    v39 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_76_14(v39, v40);
    v41 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v1, &selRef_mailboxIdentifiers);
    OUTLINED_FUNCTION_156_1(v41);
    v42 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v1);
    OUTLINED_FUNCTION_146_1(v42);
    v43 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventStatus);
    OUTLINED_FUNCTION_171_6(v43, v44);
    v45 = OUTLINED_FUNCTION_281_0();
    OUTLINED_FUNCTION_178_7(v45, v46);
    v47 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventName);
    OUTLINED_FUNCTION_174_6(v47, v48);
    v49 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventStartLocationName);
    OUTLINED_FUNCTION_299_0(v49, v50);
    v51 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventStartLocationAddress);
    OUTLINED_FUNCTION_300_0(v51, v52);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventStartLocationTelephone);
    [v1 eventDuration];
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_eventTotalCost);
    CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v53 = [v1 startDate];
    v71 = v2;
    if (v53)
    {
      v54 = v53;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v55 = type metadata accessor for Date();
    v56 = 1;
    OUTLINED_FUNCTION_219_4();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v55);
    v60 = [v1 endDate];
    if (v60)
    {
      v61 = v60;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v56 = 0;
    }

    __swift_storeEnumTagSinglePayload(v3, v56, 1, v55);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v1, &selRef_startDateTimeZone);
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_15_33();
    Appointment.init(id:eventMessageIdentifier:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMegadomeIdentifier:eventType:eventSubType:eventSourceBundleIdentifier:eventIsAllDay:eventSourceIsForwarded:authors:mailMessageId:mailMessageHeader:accountIdentifier:mailboxes:detectedEventTypes:status:updateStatus:eventName:startLocationName:startLocationAddress:startLocationTelephone:durationInSeconds:totalCost:timeIsUnknown:startDate:endDate:eventSourceLLMConsumableDescription:startDateTimeZone:)();

    type metadata accessor for Appointment();
    v62 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    OUTLINED_FUNCTION_101_9();
  }
}

void Party.init(item:checkEventType:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v34);
  v36 = v114 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v38 = OUTLINED_FUNCTION_114(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_109();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = v114 - v45;
  v47 = [v28 attributeSet];
  OUTLINED_FUNCTION_218_5();
  if ((v26 & 1) != 0 && (v48 = OUTLINED_FUNCTION_229_4(), v49 = [v48 containsString_], v48, (v49 & 1) == 0))
  {

    type metadata accessor for Party();
    OUTLINED_FUNCTION_42_21();
    OUTLINED_FUNCTION_148();

    __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
  }

  else
  {
    v50 = [v28 uniqueIdentifier];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v52;
    v131 = v51;

    v53 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventMessageIdentifier);
    v128 = v54;
    v129 = v53;
    v55 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventGroupIdentifier);
    v126 = v56;
    v127 = v55;
    v125 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventFallbackGroupIdentifier);
    v124 = v57;
    v58 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventMegadomeIdentifier);
    OUTLINED_FUNCTION_191_8(v58);
    v61 = OUTLINED_FUNCTION_161_4(v59, v60);
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_179_7(v62, v63);

    v64 = [v20 eventSubType];
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_168_6(v65, v66);

    v67 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_163_7(v67, v68, &a11);
    v69 = [v20 eventIsAllDay];
    if (v69)
    {
      v123 = OUTLINED_FUNCTION_217_5(v69);
    }

    else
    {
      v123 = 2;
    }

    v70 = [v20 eventSourceIsForwarded];
    if (v70)
    {
      v122 = OUTLINED_FUNCTION_217_5(v70);
    }

    else
    {
      v122 = 2;
    }

    v121 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v20);
    v71 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_mailMessageID);
    OUTLINED_FUNCTION_167_4(v71, v72);
    OUTLINED_FUNCTION_89_16();
    v74 = v73;
    v75 = OUTLINED_FUNCTION_280_2(v73, sel_attributeForKey_);

    if (v75)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v137 = 0u;
      v138 = 0u;
    }

    OUTLINED_FUNCTION_16_31();
    v134 = v30;
    v132 = v28;
    if (v76)
    {
      v77 = OUTLINED_FUNCTION_324_0();
      v78 = v135;
      if (!v77)
      {
        v78 = 0;
      }

      v120 = v78;
      if (v77)
      {
        v79 = v136;
      }

      else
      {
        v79 = 0;
      }

      OUTLINED_FUNCTION_288_0(v79);
    }

    else
    {
      outlined destroy of FlightSnippet.Leg?(&v139, &_sypSgMd, &_sypSgMR);
      v120 = 0;
      v119 = 0;
    }

    v80 = v43;
    v81 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_216_0(v81);
    v118 = v82;
    v117 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v20, &selRef_mailboxIdentifiers);
    v116 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v20);
    v83 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventStatus);
    OUTLINED_FUNCTION_170_6(v83, v84);
    v133 = v24;
    v85 = closure #1 in RentalCarReservation.init(item:checkEventType:featureFlagService:)(v24, v20);
    OUTLINED_FUNCTION_146_1(v85);
    v115 = v86;
    v87 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventName);
    OUTLINED_FUNCTION_162_8(v87, v88, &v133);
    v89 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventStartLocationName);
    OUTLINED_FUNCTION_174_6(v89, v90);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventStartLocationAddress);
    v114[5] = CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v91 = [v20 startDate];
    if (v91)
    {
      v92 = v91;
      v93 = v36;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v94 = 0;
    }

    else
    {
      v93 = v36;
      v94 = 1;
    }

    v95 = v46;
    v96 = type metadata accessor for Date();
    v97 = 1;
    __swift_storeEnumTagSinglePayload(v95, v94, 1, v96);
    v98 = [v20 endDate];
    if (v98)
    {
      v99 = v98;
      v100 = v80;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v97 = 0;
    }

    else
    {
      v100 = v80;
    }

    v101 = 1;
    __swift_storeEnumTagSinglePayload(v100, v97, 1, v96);
    v102 = [v20 eventURL];
    if (v102)
    {
      v103 = v102;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v101 = 0;
    }

    v104 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v93, v101, 1, v104);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_startDateTimeZone);
    OUTLINED_FUNCTION_129_12(&v129);
    OUTLINED_FUNCTION_111_8(&v130);
    OUTLINED_FUNCTION_131_8(&v133);
    OUTLINED_FUNCTION_128_10(&v134);
    OUTLINED_FUNCTION_130_11(&v135);
    OUTLINED_FUNCTION_197_7(&v136);
    OUTLINED_FUNCTION_143_10(&v131 + 4);
    OUTLINED_FUNCTION_150_6();
    OUTLINED_FUNCTION_141_6(&v137 + 8);
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_126_13(&v138 + 8);
    OUTLINED_FUNCTION_151_6();
    OUTLINED_FUNCTION_134_10();
    OUTLINED_FUNCTION_149_9();
    OUTLINED_FUNCTION_148_9();
    OUTLINED_FUNCTION_133_11();
    OUTLINED_FUNCTION_117_12();
    OUTLINED_FUNCTION_165_5();
    OUTLINED_FUNCTION_124_14();
    OUTLINED_FUNCTION_136_11();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_139_9(&a16);
    OUTLINED_FUNCTION_180_5(&a17);
    Party.init(id:eventMessageIdentifier:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMegadomeIdentifier:eventType:eventSubType:eventSourceBundleIdentifier:eventIsAllDay:eventSourceIsForwarded:authors:mailMessageId:mailMessageHeader:accountIdentifier:mailboxes:detectedEventTypes:status:updateStatus:eventName:startLocationName:startLocationAddress:timeIsUnknown:startDate:endDate:eventUrl:eventSourceLLMConsumableDescription:startDateTimeZone:)();

    type metadata accessor for Party();
    v105 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
    OUTLINED_FUNCTION_148();
  }
}