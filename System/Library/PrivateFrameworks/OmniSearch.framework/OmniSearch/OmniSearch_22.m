id @nonobjc CSSearchQuery.init(queryString:queryContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x25F89F4C0]();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

uint64_t partial apply for closure #1 in static EventManager.hydrateWithEvents(for:locale:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return closure #1 in static EventManager.hydrateWithEvents(for:locale:)(v5, v3, v7, v6);
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(void *a1)
{
  v2 = [a1 detectedEventTypes];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc CSSearchQueryContext.bundleIDs.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setBundleIDs_];
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_7(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t specialized static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a4;
  v7[20] = a5;
  v7[17] = a1;
  v7[18] = a2;
  v11 = type metadata accessor for OSSignpostID();
  v7[21] = v11;
  v12 = *(v11 - 8);
  v7[22] = v12;
  v13 = *(v12 + 64) + 15;
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[5] = a6;
  v7[6] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v7 + 2);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1Tm, a3, a6);

  return MEMORY[0x2822009F8](specialized static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:), 0, 0);
}

uint64_t specialized static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)()
{
  OUTLINED_FUNCTION_183_4();
  v29 = v2;
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v3 = *(v0 + 192);
  v4 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v4, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = *(v0 + 192);
    v8 = OUTLINED_FUNCTION_172();
    v9 = OUTLINED_FUNCTION_159_5(v8);
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v5, v6, v9, "EventManager.hydrateWithSourceDocuments", "", v1, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v10 = *(v0 + 184);
  v11 = *(v0 + 192);
  v12 = *(v0 + 168);
  v13 = *(v0 + 176);
  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v16 = *(v0 + 144);

  v17 = *(v13 + 16);
  v18 = OUTLINED_FUNCTION_26_2();
  v19(v18);
  v20 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v20);
  *(v0 + 200) = OUTLINED_FUNCTION_38_6();
  v21 = *(v13 + 8);
  v22 = OUTLINED_FUNCTION_64_0();
  v23(v22);
  outlined init with copy of ChatMessageRecord(v16, v0 + 56);
  outlined init with copy of ChatMessageRecord(v0 + 16, v0 + 96);
  v24 = swift_allocObject();
  *(v0 + 208) = v24;
  outlined init with take of ResponseOverrideMatcherProtocol((v0 + 56), v24 + 16);
  *(v24 + 56) = v15;
  *(v24 + 64) = v14;
  outlined init with take of ResponseOverrideMatcherProtocol((v0 + 96), v24 + 72);
  OUTLINED_FUNCTION_175_5(&async function pointer to specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:));

  v25 = swift_task_alloc();
  *(v0 + 216) = v25;
  *v25 = v0;
  v25[1] = specialized static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:);
  v26 = *(v0 + 136);

  return v28(0, &async function pointer to partial apply for closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:), v24, v26);
}

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

{
  OUTLINED_FUNCTION_78();
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];
  v5 = v0[28];

  return v4(v5);
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_5(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for EventManager(_BYTE *result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #2 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5NeverOGMd, &_sScCySSSgs5NeverOGMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(a1, v1 + v8, v9);
}

void OUTLINED_FUNCTION_4_31()
{
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
}

uint64_t OUTLINED_FUNCTION_13_14()
{
  result = *(v0 - 360);
  v2 = *(v0 - 344);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_19(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2085;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_21()
{
  result = *(v0 - 360);
  v2 = *(v0 - 344);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_22(float a1)
{
  *v1 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_17_24(float a1)
{
  *v1 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_19_19()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_20_14()
{
  *(v4 - 200) = v2;
  *(v4 - 232) = v3;
  v5 = *(v1 + 32);
  return v0;
}

uint64_t OUTLINED_FUNCTION_21_19()
{
  v2 = v0[34];
  result = v0[35];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[25];
  v10 = v0[21];
  v11 = v0[22];
  v12 = v0[18];
  return result;
}

uint64_t OUTLINED_FUNCTION_23_19(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2085;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_18(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2085;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_17()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_34_20(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  v4 = *(*(v2 - 232) + 28);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_14()
{
  result = v0;
  *(v2 - 184) = *(v1 + 8);
  return result;
}

void OUTLINED_FUNCTION_37_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_47_14()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52_14()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_13()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_54_15()
{
  v4 = v0[16];
  v5 = v0[15];
  v2 = v0[14];
  v6 = v0[11];
  v7 = v0[10];
}

uint64_t OUTLINED_FUNCTION_60_9()
{
  v2 = v0[62];
  result = v0[63];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[56];
  v6 = v0[57];
  v8 = v0[54];
  v7 = v0[55];
  v10 = v0[50];
  v9 = v0[51];
  return result;
}

uint64_t OUTLINED_FUNCTION_61_14()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_64_10()
{

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_66_12()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_67_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_68_11()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_72_9()
{

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_74_15()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_78_13(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

BOOL OUTLINED_FUNCTION_83_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_86_11()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_94_8(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_96_9(uint64_t result)
{
  *(v1 - 152) = result;
  *(v1 - 96) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_98_7(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_109_10()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_114_8()
{
  v2 = *(v0 - 344);
}

void OUTLINED_FUNCTION_118_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_126_9()
{
  v2 = *(v0 - 328);

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_130_8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_132_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);
  *(v2 - 184) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_133_8()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_134_6()
{

  static EventManager.buildEventAfterHydration(for:locale:emailDocument:with:)();
}

uint64_t OUTLINED_FUNCTION_143_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, *(v3 - 248));
  v5 = *(*(v3 - 232) + 28);
  return result;
}

uint64_t OUTLINED_FUNCTION_151_3()
{
}

uint64_t OUTLINED_FUNCTION_152_5()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_153_6()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_154_2()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_155_7(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2085;

  SearchResult.description.getter();
}

id OUTLINED_FUNCTION_156_5()
{
  v2 = *(v0 - 200);

  return v2;
}

uint64_t OUTLINED_FUNCTION_158_5(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 48));
}

uint64_t OUTLINED_FUNCTION_159_5(_WORD *a1)
{
  *a1 = 0;

  return OSSignpostID.rawValue.getter();
}

unint64_t OUTLINED_FUNCTION_160_4()
{
  v2 = *(v0 + 24);

  return type metadata accessor for CSSearchableItem();
}

uint64_t OUTLINED_FUNCTION_161_3(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 - 104);

  return _s10OmniSearch0B6ResultVWOhTm_5(v4, a2);
}

uint64_t OUTLINED_FUNCTION_162_6()
{
  result = *(v0 - 760);
  v2 = *(v0 - 696);
  return result;
}

uint64_t OUTLINED_FUNCTION_165_3()
{
  result = *(v0 - 848);
  v2 = *(v0 - 824);
  return result;
}

uint64_t OUTLINED_FUNCTION_167_3()
{
  result = *(v0 - 936);
  v2 = *(v0 - 912);
  return result;
}

uint64_t OUTLINED_FUNCTION_171_4()
{
  result = v0;
  v3 = *(v1 - 256);
  return result;
}

void OUTLINED_FUNCTION_174_4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
}

uint64_t OUTLINED_FUNCTION_181_5(uint64_t result, uint64_t a2)
{
  *(v2 - 360) = result;
  *(v2 - 344) = a2;
  return result;
}

void OUTLINED_FUNCTION_184_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_187_4()
{
  v2 = *(v0 - 152);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_190_6()
{

  return OS_os_log.signpostsEnabled.getter();
}

uint64_t OUTLINED_FUNCTION_191_6()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_192_6@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return outlined init with copy of ResourceBundle?(a1, v5, a2, a3);
}

id one-time initialization function for searchableIndex()
{
  result = [objc_opt_self() defaultSearchableIndex];
  static FileContentManager.searchableIndex = result;
  return result;
}

{
  result = [objc_opt_self() defaultSearchableIndex];
  static CSSearchableIndexDataProvider.searchableIndex = result;
  return result;
}

uint64_t static FileContentManager.hydrateFileContent(from:)(uint64_t a1)
{
  v1[36] = a1;
  v2 = type metadata accessor for SpotlightRankingItem();
  v1[37] = v2;
  OUTLINED_FUNCTION_21(v2);
  v1[38] = v3;
  v5 = *(v4 + 64) + 15;
  v1[39] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR) - 8) + 64);
  v1[40] = OUTLINED_FUNCTION_160();
  v1[41] = swift_task_alloc();
  v7 = type metadata accessor for SearchResultItem(0);
  v1[42] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[43] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12FileDocumentVSgMd, &_s15OmniSearchTypes12FileDocumentVSgMR) - 8) + 64) + 15;
  v1[44] = swift_task_alloc();
  v10 = type metadata accessor for FileDocument();
  v1[45] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[46] = v11;
  v13 = *(v12 + 64);
  v1[47] = OUTLINED_FUNCTION_160();
  v1[48] = swift_task_alloc();
  v14 = type metadata accessor for SearchResult(0);
  v1[49] = v14;
  OUTLINED_FUNCTION_21(v14);
  v1[50] = v15;
  v17 = *(v16 + 64);
  v1[51] = OUTLINED_FUNCTION_160();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v18 = type metadata accessor for OSSignpostID();
  v1[61] = v18;
  OUTLINED_FUNCTION_21(v18);
  v1[62] = v19;
  v21 = *(v20 + 64);
  v1[63] = OUTLINED_FUNCTION_160();
  v1[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](static FileContentManager.hydrateFileContent(from:), 0, 0);
}

uint64_t static FileContentManager.hydrateFileContent(from:)()
{
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 512);
  v3 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v3, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = *(v0 + 512);
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v4, v5, v8, "FileContentManager.hydrateFileContent", "", v7, 2u);
    v9 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v9);
  }

  v10 = *(v0 + 504);
  v11 = *(v0 + 512);
  v12 = *(v0 + 488);
  v13 = *(v0 + 496);
  v14 = *(v0 + 288);

  (*(v13 + 16))(v10, v11, v12);
  v15 = type metadata accessor for OSSignpostIntervalState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_65();
  *(v0 + 520) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v13 + 8))(v11, v12);
  v18 = *(v14 + 16);
  *(v0 + 528) = v18;
  if (v18)
  {
    v19 = 0;
    v20 = *(v0 + 400);
    v21 = MEMORY[0x277CCA1A0];
    v22 = MEMORY[0x277D84F90];
    *(v0 + 600) = *(v20 + 80);
    *(v0 + 536) = *(v20 + 72);
    *(v0 + 544) = *v21;
    v23 = 0x28155B000uLL;
    while (1)
    {
      *(v0 + 568) = v22;
      *(v0 + 560) = v19;
      *(v0 + 552) = 0;
      v24 = *(v0 + 536);
      v25 = *(v0 + 600);
      v26 = *(v0 + 480);
      v28 = *(v0 + 352);
      v27 = *(v0 + 360);
      v29 = *(v0 + 288);
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_3(v30, v26, v31);
      SearchResultItem.associatedValue.getter((v0 + 144));
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
      if (swift_dynamicCast())
      {
        v33 = *(v0 + 384);
        v34 = *(v0 + 360);
        v35 = *(v0 + 368);
        OUTLINED_FUNCTION_28_17();
        (*(v35 + 32))(v33, v32, v34);
        *(v0 + 248) = 0;
        v36 = FileDocument.item.getter();
        v37 = [v36 attributeSet];

        v38 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.bundleID.getter(v37);
        if (v39)
        {
          v107 = v38;
          v108 = v39;
          v109 = *(v0 + 384);
          v110 = FileDocument.id.getter();
          v112 = v111;
          if (*(v23 + 2888) != -1)
          {
            OUTLINED_FUNCTION_0_5();
            swift_once();
          }

          v113 = type metadata accessor for Logger();
          *(v0 + 576) = __swift_project_value_buffer(v113, static Logging.answerSynthesis);

          v114 = Logger.logObject.getter();
          static os_log_type_t.info.getter();

          if (OUTLINED_FUNCTION_42_15())
          {
            OUTLINED_FUNCTION_9_4();
            v115 = swift_slowAlloc();
            swift_slowAlloc();
            *v115 = 136315650;
            *(v115 + 4) = OUTLINED_FUNCTION_16_23();
            *(v115 + 12) = 2080;
            *(v115 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            *(v115 + 22) = 2080;
            *(v115 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_41_13(&dword_25D85C000, v116, v117, "%s Fetching file content with bundleID: %s, itemIdentifier: %s");
            swift_arrayDestroy();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            v118 = OUTLINED_FUNCTION_4_6();
            MEMORY[0x25F8A1050](v118);
          }

          if (one-time initialization token for searchableIndex != -1)
          {
            OUTLINED_FUNCTION_19_20();
          }

          v133 = static FileContentManager.searchableIndex;
          v119 = *(v0 + 544);
          v120 = MEMORY[0x25F89F4C0](v107, v108);
          *(v0 + 584) = v120;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v121 = swift_allocObject();
          *(v121 + 16) = xmmword_25DBC8180;
          *(v121 + 32) = v110;
          *(v121 + 40) = v112;
          isa = Array._bridgeToObjectiveC()().super.isa;
          *(v0 + 592) = isa;

          *(v0 + 16) = v0;
          OUTLINED_FUNCTION_13_15(v0 + 256);
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo8NSObjectCGSgs5NeverOGMd, &_sSccySaySo8NSObjectCGSgs5NeverOGMR);
          OUTLINED_FUNCTION_12_27(v123);
          *(v0 + 88) = 1107296256;
          OUTLINED_FUNCTION_11_25(&block_descriptor_2);
          [v133 bulkFetchCacheFileDescriptorForProtectionClass:v119 bundleID:v120 identifiers:isa reason:0 completionHandler:v0 + 80];

          return MEMORY[0x282200938](v0 + 16);
        }

        if (*(v23 + 2888) != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, static Logging.answerSynthesis);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        v43 = OUTLINED_FUNCTION_20_3();
        if (os_log_type_enabled(v43, v44))
        {
          OUTLINED_FUNCTION_28_3();
          v45 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v28 = swift_slowAlloc();
          *v45 = 136315138;
          *(v45 + 4) = OUTLINED_FUNCTION_16_23();
          _os_log_impl(&dword_25D85C000, v41, v42, "%s Expected to have item's CSSearchableItem.attributeSet.bundleID. It's OK, will just preserve existing result", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          v46 = OUTLINED_FUNCTION_6_21();
          MEMORY[0x25F8A1050](v46);
        }

        v47 = *(v0 + 480);
        v48 = *(v0 + 424);
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_3(v49, v50, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_29_12();
          v22 = v97;
        }

        v53 = *(v22 + 16);
        v52 = *(v22 + 24);
        if (v53 >= v52 >> 1)
        {
          v98 = OUTLINED_FUNCTION_22_5(v52);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v98, v99, v100, v22);
          v22 = v101;
        }

        OUTLINED_FUNCTION_15_22();
        v54 = *(v0 + 424);
        v55 = OUTLINED_FUNCTION_9_26();
        v56(v55);
        OUTLINED_FUNCTION_4_30();
        _s10OmniSearch0B6ResultVWOhTm_4(v42, v57);
        *(v22 + 16) = v53 + 1;
        v58 = v22 + v1 + v28 * v53;
        v59 = v54;
      }

      else
      {
        v61 = *(v0 + 352);
        v60 = *(v0 + 360);
        v62 = OUTLINED_FUNCTION_65();
        __swift_storeEnumTagSinglePayload(v62, v63, 1, v64);
        outlined destroy of IntentApplication?(v61, &_s15OmniSearchTypes12FileDocumentVSgMd, &_s15OmniSearchTypes12FileDocumentVSgMR);
        if (*(v23 + 2888) != -1)
        {
          swift_once();
        }

        v65 = *(v0 + 480);
        v66 = *(v0 + 416);
        v67 = type metadata accessor for Logger();
        __swift_project_value_buffer(v67, static Logging.answerSynthesis);
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_3(v65, v66, v68);
        v69 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        v70 = os_log_type_enabled(v69, v1);
        v71 = *(v0 + 416);
        if (v70)
        {
          v72 = v23;
          v73 = OUTLINED_FUNCTION_90_1();
          OUTLINED_FUNCTION_21_20();
          swift_slowAlloc();
          *v73 = 136315394;
          v74 = OUTLINED_FUNCTION_16_23();
          OUTLINED_FUNCTION_40_17(v74);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_4_30();
          _s10OmniSearch0B6ResultVWOhTm_4(v71, v75);
          v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v73 + 14) = v76;
          _os_log_impl(&dword_25D85C000, v69, v1, "%s Expected item to be of type FileDocument, but got -> %s. It's OK, will just preserve existing result", v73, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          v23 = v72;
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {

          OUTLINED_FUNCTION_4_30();
          _s10OmniSearch0B6ResultVWOhTm_4(v71, v77);
        }

        v78 = *(v0 + 480);
        v79 = *(v0 + 408);
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_3(v80, v81, v82);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_29_12();
          v22 = v92;
        }

        v84 = *(v22 + 16);
        v83 = *(v22 + 24);
        if (v84 >= v83 >> 1)
        {
          v93 = OUTLINED_FUNCTION_22_5(v83);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v93, v94, v95, v22);
          v22 = v96;
        }

        v85 = *(v0 + 536);
        v86 = *(v0 + 480);
        v87 = *(v0 + 408);
        v88 = (*(v0 + 600) + 32) & ~*(v0 + 600);
        OUTLINED_FUNCTION_4_30();
        _s10OmniSearch0B6ResultVWOhTm_4(v89, v90);
        *(v22 + 16) = v84 + 1;
        v58 = v22 + v88 + v85 * v84;
        v59 = v87;
      }

      outlined init with take of SearchResult(v59, v58);
      OUTLINED_FUNCTION_36_15();
      if (v91)
      {
        goto LABEL_32;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_32:
  v102 = *(v0 + 520);
  v104 = *(v0 + 504);
  v103 = *(v0 + 512);
  OUTLINED_FUNCTION_33_18();
  v124 = *(v0 + 416);
  v125 = *(v0 + 408);
  v126 = *(v0 + 384);
  v127 = *(v0 + 376);
  v128 = *(v0 + 352);
  v129 = *(v0 + 344);
  v130 = *(v0 + 328);
  v131 = *(v0 + 320);
  v132 = *(v0 + 312);
  $defer #1 () in static FileContentManager.hydrateFileContent(from:)();

  v105 = *(v0 + 8);

  return v105(v22);
}

{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](static FileContentManager.hydrateFileContent(from:), 0, 0);
}

{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v279 = *(v0 + 256);
      }

      v280 = *(v0 + 256);

      v281 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
      v1 = v281;
    }

    else
    {
      v3 = *(v0 + 256);

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      if (swift_dynamicCastMetatype() || (v84 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {
LABEL_4:
      }

      else
      {
        v85 = (v2 + 32);
        while (*v85)
        {
          ++v85;
          if (!--v84)
          {
            goto LABEL_4;
          }
        }

        v1 = v2 | 1;
      }
    }
  }

  v4 = 0xD000000000000019;
  v5 = *(v0 + 584);
  v6 = *(v0 + 576);
  v7 = *(v0 + 544);

  swift_beginAccess();
  *(v0 + 248) = v1;
  v8 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v9 = OUTLINED_FUNCTION_20_3();
  v11 = &loc_25DBC7000;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_21_20();
    swift_slowAlloc();
    *v12 = 136315394;
    v13 = OUTLINED_FUNCTION_10_25();
    OUTLINED_FUNCTION_94_8(v13);
    *(v0 + 280) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGSgMd, &_sSayyXlGSgMR);
    String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v12 + 14) = v14;
    OUTLINED_FUNCTION_196(&dword_25D85C000, v15, v16, "%s CSSearchableIndex bulkFetchCacheFileDescriptor returned FDs: %s");
    swift_arrayDestroy();
    v17 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v17);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v18 = "ptions";
  if (!v1)
  {
    v49 = *(v0 + 576);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v52 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v52, v53))
    {
      OUTLINED_FUNCTION_28_3();
      v54 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v329 = swift_slowAlloc();
      *v54 = 136315138;
      *(v54 + 4) = OUTLINED_FUNCTION_10_25();
      _os_log_impl(&dword_25D85C000, v50, v51, "%s CSSearchableIndex bulkFetchCacheFileDescriptor returned nil results. It's OK, will just preserve existing result", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v329);
      v55 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v55);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_35_19();
    v56 = *(v0 + 432);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v57, v58, v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v0 + 568);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_4_32();
      v61 = v282;
    }

    v63 = *(v61 + 16);
    v62 = *(v61 + 24);
    if (v63 >= v62 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v63 + 1, 1, v61);
      v61 = v283;
    }

    v64 = *(v0 + 536);
    v65 = *(v0 + 480);
    v66 = *(v0 + 432);
    v67 = (*(v0 + 600) + 32) & ~*(v0 + 600);
    (*(*(v0 + 368) + 8))(*(v0 + 384), *(v0 + 360));
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v65, v68);
    *(v61 + 16) = v63 + 1;
    outlined init with take of SearchResult(v66, v61 + v67 + v64 * v63);
    goto LABEL_45;
  }

  v20 = specialized _arrayConditionalCast<A, B>(_:)(v19);
  if (!v20)
  {
    v69 = *(v0 + 576);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v18 = "v16@?0@NSError8";
      v72 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_21_20();
      swift_slowAlloc();
      *v72 = 136315394;
      *(v72 + 4) = OUTLINED_FUNCTION_10_25();
      *(v72 + 12) = 2080;
      *(v72 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v70, v71, "%s Unable to cast cacheFileDescriptors with type %s to [xpc_object_t]. It's OK, will just preserve existing result", v72, 0x16u);
      swift_arrayDestroy();
      v73 = OUTLINED_FUNCTION_4_6();
      MEMORY[0x25F8A1050](v73);
      v74 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v74);
    }

    OUTLINED_FUNCTION_35_19();
    v75 = *(v0 + 440);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v76, v77, v78);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v0 + 568);
    if ((v79 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_32();
      v61 = v284;
    }

    v81 = *(v61 + 16);
    v80 = *(v61 + 24);
    v82 = v81 + 1;
    if (v81 >= v80 >> 1)
    {
      v285 = OUTLINED_FUNCTION_22_5(v80);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v285, v286, v287, v61);
      v61 = v288;
    }

    OUTLINED_FUNCTION_15_22();
    v83 = *(v0 + 440);
    goto LABEL_44;
  }

  v21 = v20;

  if (!specialized Array.count.getter(v21))
  {
    v86 = *(v0 + 576);

    v87 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v88 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v88, v89))
    {
      OUTLINED_FUNCTION_28_3();
      v90 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v330 = swift_slowAlloc();
      *v90 = 136315138;
      *(v90 + 4) = OUTLINED_FUNCTION_10_25();
      _os_log_impl(&dword_25D85C000, v87, v71, "%s Unable to get the first file descriptor. It's OK, will just preserve existing result", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v330);
      v91 = OUTLINED_FUNCTION_4_6();
      MEMORY[0x25F8A1050](v91);
      v92 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v92);
    }

    OUTLINED_FUNCTION_35_19();
    v93 = *(v0 + 448);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v94, v95, v96);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v0 + 568);
    if ((v97 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_32();
      v61 = v289;
    }

    v81 = *(v61 + 16);
    v98 = *(v61 + 24);
    v82 = v81 + 1;
    if (v81 >= v98 >> 1)
    {
      v290 = OUTLINED_FUNCTION_22_5(v98);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v290, v291, v292, v61);
      v61 = v293;
    }

    OUTLINED_FUNCTION_15_22();
    v83 = *(v0 + 448);
LABEL_44:
    v99 = OUTLINED_FUNCTION_9_26();
    v100(v99);
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v71, v101);
    *(v61 + 16) = v82;
    outlined init with take of SearchResult(v83, v61 - 0x2FFFFFFFFFFFFFE7 + v18 * v81);

LABEL_45:
    v102 = *(v0 + 552);
    goto LABEL_46;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v21 & 0xC000000000000001) == 0, v21);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x25F89FFD0](0, v21);
  }

  else
  {
    v22 = *(v21 + 32);
    swift_unknownObjectRetain();
  }

  v23 = *(v0 + 576);

  swift_unknownObjectRetain();
  v24 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (OUTLINED_FUNCTION_42_15())
  {
    v25 = OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_21_20();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_34_21(v26);
    *v25 = 136315394;
    v27 = OUTLINED_FUNCTION_10_25();
    OUTLINED_FUNCTION_94_8(v27);
    *(v0 + 272) = v22;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pMd, &_sSo13OS_xpc_object_pMR);
    String.init<A>(describing:)();
    v28 = v22;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v25 + 14) = v29;
    v22 = v28;
    OUTLINED_FUNCTION_196(&dword_25D85C000, v30, v31, "%s bulkFetchCacheFileDescriptor's 1st xpcObject: %s");
    OUTLINED_FUNCTION_109_10();
    v32 = OUTLINED_FUNCTION_6_21();
    MEMORY[0x25F8A1050](v32);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v33 = *(v0 + 552);
  swift_getObjectType();
  v34 = default argument 0 of OS_xpc_object.oms_read(byteCount:)();
  v35 = OS_xpc_object.oms_read(byteCount:)(v34);
  if (v36)
  {
    v37 = *(v0 + 568);
    v38 = *(v0 + 520);
    v40 = *(v0 + 504);
    v39 = *(v0 + 512);
    v41 = *(v0 + 480);
    v299 = *(v0 + 472);
    v300 = *(v0 + 464);
    v301 = *(v0 + 456);
    v302 = *(v0 + 448);
    v303 = *(v0 + 440);
    v304 = *(v0 + 432);
    v305 = *(v0 + 424);
    v306 = *(v0 + 416);
    v42 = *(v0 + 384);
    v308 = *(v0 + 408);
    v310 = *(v0 + 376);
    v44 = *(v0 + 360);
    v43 = *(v0 + 368);
    v313 = *(v0 + 352);
    v315 = *(v0 + 344);
    OUTLINED_FUNCTION_37_14();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v42, v44);
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v41, v45);

    $defer #1 () in static FileContentManager.hydrateFileContent(from:)();

    v46 = *(v0 + 8);
    OUTLINED_FUNCTION_250();

    __asm { BRAA            X1, X16 }
  }

  if (v35.value._object)
  {
    v219 = *(v0 + 464);
    v220 = *(v0 + 384);
    v221 = *(v0 + 392);
    v223 = *(v0 + 368);
    v222 = *(v0 + 376);
    v224 = *(v0 + 360);
    v225 = *(v0 + 344);
    v317 = *(v0 + 336);
    v320 = *(v0 + 328);
    v323 = *(v0 + 296);
    v327 = *(v0 + 320);
    FileDocument.updateCSSearchableItemAttributeTextContent(with:)(v35.value._countAndFlagsBits, v35.value._object);

    (*(v223 + 16))(v225, v222, v224);
    swift_storeEnumTagMultiPayload();
    v226 = FileDocument.item.getter();
    __swift_storeEnumTagSinglePayload(v320, 1, 1, v323);
    *(v219 + v221[7]) = MEMORY[0x277D84F90];
    v227 = (v219 + v221[10]);
    *v227 = 0;
    v227[1] = 0;
    _s10OmniSearch0B6ResultVWOcTm_3(v225, v219, type metadata accessor for SearchResultItem);
    v228 = v221[6];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v229 = v226;
    CodableNSSecureCoding.init(wrappedValue:)();
    outlined init with copy of SpotlightRankingItem?(v320, v327);
    v230 = OUTLINED_FUNCTION_65();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v230, v231, v323);
    v233 = *(v0 + 464);
    v234 = *(v0 + 392);
    v328 = *(v0 + 344);
    v236 = *(v0 + 320);
    v235 = *(v0 + 328);
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of IntentApplication?(*(v0 + 320), &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      v237 = *(v234 + 20);
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

      outlined destroy of IntentApplication?(v235, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_14_20();
    }

    else
    {
      v263 = *(v0 + 304);
      v262 = *(v0 + 312);
      v264 = *(v0 + 296);

      outlined destroy of IntentApplication?(v235, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_14_20();
      v265 = *(v263 + 32);
      v265(v262, v236, v264);
      v265(v233 + *(v234 + 20), v262, v264);
    }

    v266 = *(v0 + 568);
    v267 = *(v0 + 464);
    v268 = *(v0 + 472);
    v269 = *(v0 + 392);
    *(v267 + *(v269 + 32)) = 1;
    *(v267 + *(v269 + 36)) = 1;
    outlined init with take of SearchResult(v267, v268);
    v270 = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v0 + 568);
    if ((v270 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_32();
      v61 = v294;
    }

    v272 = *(v61 + 16);
    v271 = *(v61 + 24);
    if (v272 >= v271 >> 1)
    {
      OUTLINED_FUNCTION_39_15(v272 + 1, v271);
      v61 = v295;
    }

    v325 = *(v0 + 536);
    v273 = *(v0 + 600);
    v318 = *(v0 + 480);
    v321 = *(v0 + 472);
    v275 = *(v0 + 376);
    v274 = *(v0 + 384);
    v4 = *(v0 + 360);
    v276 = *(v0 + 368);
    swift_unknownObjectRelease();
    v277 = *(v276 + 8);
    v277(v275, v4);
    v277(v274, v4);
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v318, v278);
    *(v61 + 16) = v272 + 1;
    v260 = v61 + ((v273 + 32) & ~v273) + v325 * v272;
    v261 = v321;
  }

  else
  {
    v238 = *(v0 + 576);
    swift_unknownObjectRetain();
    v239 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (OUTLINED_FUNCTION_42_15())
    {
      v240 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_21_20();
      v241 = swift_slowAlloc();
      OUTLINED_FUNCTION_34_21(v241);
      *v240 = 136315394;
      v242 = OUTLINED_FUNCTION_10_25();
      OUTLINED_FUNCTION_94_8(v242);
      *(v0 + 264) = v22;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pMd, &_sSo13OS_xpc_object_pMR);
      String.init<A>(describing:)();
      v243 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v240 + 14) = v243;
      OUTLINED_FUNCTION_196(&dword_25D85C000, v244, v245, "%s Unable to read content of %s. It's OK, will just preserve existing result");
      OUTLINED_FUNCTION_109_10();
      v246 = OUTLINED_FUNCTION_6_21();
      MEMORY[0x25F8A1050](v246);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_35_19();
    v247 = *(v0 + 456);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v248, v249, v250);
    v251 = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v0 + 568);
    if ((v251 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_32();
      v61 = v296;
    }

    v4 = *(v61 + 16);
    v252 = *(v61 + 24);
    if (v4 >= v252 >> 1)
    {
      OUTLINED_FUNCTION_39_15(v4 + 1, v252);
      v61 = v297;
    }

    v324 = *(v0 + 536);
    v253 = *(v0 + 600);
    v254 = *(v0 + 480);
    v255 = *(v0 + 456);
    v256 = *(v0 + 384);
    v257 = *(v0 + 360);
    v258 = *(v0 + 368);
    swift_unknownObjectRelease();
    (*(v258 + 8))(v256, v257);
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v254, v259);
    *(v61 + 16) = v4 + 1;
    v260 = v61 + ((v253 + 32) & ~v253) + v324 * v4;
    v261 = v255;
  }

  outlined init with take of SearchResult(v261, v260);

  v102 = 0;
  v11 = &loc_25DBC7000;
LABEL_46:
  v319 = v11[199];
  v103 = &_s10OmniSearch0B4Item_pMd;
  v322 = v102;
  while (1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_36_15();
      if (v105)
      {
        v191 = *(v0 + 520);
        v193 = *(v0 + 504);
        v192 = *(v0 + 512);
        OUTLINED_FUNCTION_33_18();
        v307 = *(v0 + 416);
        v309 = *(v0 + 408);
        v311 = *(v0 + 384);
        v312 = *(v0 + 376);
        v314 = *(v0 + 352);
        v316 = *(v0 + 344);
        OUTLINED_FUNCTION_37_14();
        $defer #1 () in static FileContentManager.hydrateFileContent(from:)();

        v194 = *(v0 + 8);
        OUTLINED_FUNCTION_250();

        __asm { BRAA            X2, X16 }
      }

      *(v0 + 568) = v61;
      *(v0 + 560) = v104;
      *(v0 + 552) = v102;
      v106 = *(v0 + 536);
      v107 = *(v0 + 600);
      v108 = *(v0 + 480);
      v110 = *(v0 + 352);
      v109 = *(v0 + 360);
      v111 = *(v0 + 288);
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_3(v112, v108, v113);
      SearchResultItem.associatedValue.getter((v0 + 144));
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(v103, &_s10OmniSearch0B4Item_pMR);
      if (swift_dynamicCast())
      {
        break;
      }

      v145 = *(v0 + 352);
      v144 = *(v0 + 360);
      v146 = OUTLINED_FUNCTION_65();
      __swift_storeEnumTagSinglePayload(v146, v147, 1, v148);
      outlined destroy of IntentApplication?(v145, &_s15OmniSearchTypes12FileDocumentVSgMd, &_s15OmniSearchTypes12FileDocumentVSgMR);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v149 = *(v0 + 480);
      v150 = *(v0 + 416);
      v151 = type metadata accessor for Logger();
      __swift_project_value_buffer(v151, static Logging.answerSynthesis);
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_3(v149, v150, v152);
      v4 = Logger.logObject.getter();
      v153 = static os_log_type_t.error.getter();
      v154 = os_log_type_enabled(v4, v153);
      v155 = *(v0 + 416);
      if (v154)
      {
        v156 = v103;
        v157 = OUTLINED_FUNCTION_90_1();
        OUTLINED_FUNCTION_21_20();
        v158 = swift_slowAlloc();
        OUTLINED_FUNCTION_34_21(v158);
        *v157 = v319;
        v159 = OUTLINED_FUNCTION_10_25();
        OUTLINED_FUNCTION_40_17(v159);
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_4_30();
        _s10OmniSearch0B6ResultVWOhTm_4(v155, v160);
        v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v157 + 14) = v161;
        _os_log_impl(&dword_25D85C000, v4, v153, "%s Expected item to be of type FileDocument, but got -> %s. It's OK, will just preserve existing result", v157, 0x16u);
        OUTLINED_FUNCTION_109_10();
        v162 = OUTLINED_FUNCTION_6_21();
        MEMORY[0x25F8A1050](v162);
        v103 = v156;
        v102 = v322;
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050](v163, v164, v165, v166);
      }

      else
      {

        OUTLINED_FUNCTION_4_30();
        _s10OmniSearch0B6ResultVWOhTm_4(v155, v167);
      }

      v168 = *(v0 + 480);
      v169 = *(v0 + 408);
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_3(v170, v171, v172);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_32();
        v61 = v181;
      }

      v174 = *(v61 + 16);
      v173 = *(v61 + 24);
      if (v174 >= v173 >> 1)
      {
        v182 = OUTLINED_FUNCTION_22_5(v173);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v182, v183, v184, v61);
        v61 = v185;
      }

      v175 = *(v0 + 536);
      v176 = *(v0 + 480);
      v177 = *(v0 + 408);
      v178 = (*(v0 + 600) + 32) & ~*(v0 + 600);
      OUTLINED_FUNCTION_4_30();
      _s10OmniSearch0B6ResultVWOhTm_4(v179, v180);
      *(v61 + 16) = v174 + 1;
      outlined init with take of SearchResult(v177, v61 + v178 + v175 * v174);
    }

    v115 = *(v0 + 384);
    v117 = *(v0 + 360);
    v116 = *(v0 + 368);
    OUTLINED_FUNCTION_28_17();
    (*(v116 + 32))(v115, v110, v117);
    *(v0 + 248) = 0;
    v118 = FileDocument.item.getter();
    v119 = [v118 attributeSet];

    v120 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.bundleID.getter(v119);
    if (v121)
    {
      break;
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    __swift_project_value_buffer(v122, static Logging.answerSynthesis);
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();
    v125 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v125, v126))
    {
      OUTLINED_FUNCTION_28_3();
      v127 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v114 = swift_slowAlloc();
      *v127 = 136315138;
      *(v127 + 4) = OUTLINED_FUNCTION_10_25();
      _os_log_impl(&dword_25D85C000, v123, v124, "%s Expected to have item's CSSearchableItem.attributeSet.bundleID. It's OK, will just preserve existing result", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v128, v129, v130, v131);
      v132 = OUTLINED_FUNCTION_6_21();
      MEMORY[0x25F8A1050](v132);
    }

    v133 = *(v0 + 480);
    v134 = *(v0 + 424);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v135, v136, v137);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_32();
      v61 = v186;
    }

    v139 = *(v61 + 16);
    v138 = *(v61 + 24);
    if (v139 >= v138 >> 1)
    {
      v187 = OUTLINED_FUNCTION_22_5(v138);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v187, v188, v189, v61);
      v61 = v190;
    }

    OUTLINED_FUNCTION_15_22();
    v140 = *(v0 + 424);
    v141 = OUTLINED_FUNCTION_9_26();
    v142(v141);
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v124, v143);
    *(v61 + 16) = v139 + 1;
    outlined init with take of SearchResult(v140, v61 + v4 + v114 * v139);
  }

  v197 = v120;
  v198 = v121;
  v199 = *(v0 + 384);
  v200 = FileDocument.id.getter();
  v202 = v201;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v203 = type metadata accessor for Logger();
  *(v0 + 576) = __swift_project_value_buffer(v203, static Logging.answerSynthesis);

  v204 = Logger.logObject.getter();
  static os_log_type_t.info.getter();

  if (OUTLINED_FUNCTION_42_15())
  {
    OUTLINED_FUNCTION_9_4();
    v205 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    OUTLINED_FUNCTION_34_21(v206);
    *v205 = 136315650;
    *(v205 + 4) = OUTLINED_FUNCTION_10_25();
    *(v205 + 12) = 2080;
    *(v205 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v205 + 22) = 2080;
    *(v205 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_41_13(&dword_25D85C000, v207, v208, "%s Fetching file content with bundleID: %s, itemIdentifier: %s");
    swift_arrayDestroy();
    v209 = OUTLINED_FUNCTION_6_21();
    MEMORY[0x25F8A1050](v209);
    v210 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v210);
  }

  if (one-time initialization token for searchableIndex != -1)
  {
    OUTLINED_FUNCTION_19_20();
  }

  v326 = static FileContentManager.searchableIndex;
  v211 = *(v0 + 544);
  v212 = MEMORY[0x25F89F4C0](v197, v198);
  *(v0 + 584) = v212;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v213 = swift_allocObject();
  *(v213 + 16) = xmmword_25DBC8180;
  *(v213 + 32) = v200;
  *(v213 + 40) = v202;
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 592) = isa;

  *(v0 + 16) = v0;
  OUTLINED_FUNCTION_13_15(v215);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo8NSObjectCGSgs5NeverOGMd, &_sSccySaySo8NSObjectCGSgs5NeverOGMR);
  OUTLINED_FUNCTION_12_27(v216);
  *(v0 + 88) = 1107296256;
  OUTLINED_FUNCTION_11_25(&block_descriptor_2);
  [v326 bulkFetchCacheFileDescriptorForProtectionClass:v211 bundleID:v212 identifiers:isa reason:0 completionHandler:v0 + 80];
  OUTLINED_FUNCTION_250();

  return MEMORY[0x282200938](v217);
}

uint64_t $defer #1 () in static FileContentManager.hydrateFileContent(from:)()
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
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Logging.searchSignposter);
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "FileContentManager.hydrateFileContent", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> () with result type [NSObject]?(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, v4);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
}

{
  v7 = MEMORY[0x277D84F90];
  specialized Array.count.getter(a1);
  specialized ContiguousArray.reserveCapacity(_:)();
  result = specialized Array.count.getter(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v7;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x25F89FFD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 8 * i + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (!swift_dynamicCastObjCProtocolConditional())
    {
      swift_unknownObjectRelease();

      return 0;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v6 = *(v7 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, &lazy cache variable for type metadata for IMSPIMessage, 0x277D18DD0);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  v7 = a1 + 32;
  if (!v6)
  {
    return v11;
  }

  while (1)
  {
    outlined init with copy of Any(v7, v10);
    type metadata accessor for TRIClient(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v8 = *(v11 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v7 += 32;
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OS_xpc_object.oms_read(byteCount:)(Swift::Int byteCount)
{
  v3 = v1;
  if (xpc_fd_dup(v3) < 0)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logging.answerSynthesis);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_28_3();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v44 = swift_slowAlloc();
      *v21 = 136315138;
      *(v21 + 4) = OUTLINED_FUNCTION_17_25();
      _os_log_impl(&dword_25D85C000, v17, v18, "%s Per xpc.h 'If the descriptor could not be created or if the given object was not an XPC file descriptor, -1 is returned'.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      v22 = OUTLINED_FUNCTION_4_6();
      MEMORY[0x25F8A1050](v22);
      v23 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v23);
    }

    v14 = 0;
    v15 = 0;
    goto LABEL_27;
  }

  v5 = swift_slowAlloc();
  v6 = FileDescriptor.read(into:retryOnInterrupt:)();
  if (!v2)
  {
    v24 = v6;
    v25 = specialized Collection.prefix(_:)(v6, v5, v5 + byteCount);
    v29 = v25;
    v30 = v26;
    v31 = v28;
    if (v27)
    {
      v32 = v27;
      v33 = specialized RandomAccessCollection<>.distance(from:to:)(0, v25, v27, v28);
      v25 = specialized RandomAccessCollection<>.distance(from:to:)(v29, v30, v32, v31);
      if (__OFADD__(v33, v25))
      {
        __break(1u);
      }

      else
      {
        v26 = v25;
        if (v33 + v25 >= v33)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else if (!v25)
    {
      v25 = specialized RandomAccessCollection<>.distance(from:to:)(0, v26, 0, v28);
      if ((v25 & 0x8000000000000000) == 0)
      {
LABEL_21:
        v14 = static String._fromUTF8Repairing(_:)();
        v15 = v34;
        v35 = v24;
        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static Logging.answerSynthesis);

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v37, v38))
        {
          OUTLINED_FUNCTION_9_4();
          v39 = swift_slowAlloc();
          OUTLINED_FUNCTION_21_20();
          swift_slowAlloc();
          *v39 = 136315651;
          *(v39 + 4) = OUTLINED_FUNCTION_17_25();
          *(v39 + 12) = 2048;
          *(v39 + 14) = v35;
          *(v39 + 22) = 2085;

          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v39 + 24) = v40;
          _os_log_impl(&dword_25D85C000, v37, v38, "%s size read: %ld, content: %{sensitive}s", v39, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        v41 = OUTLINED_FUNCTION_19_5();
        MEMORY[0x25F8A1050](v41);
        if ((FileDescriptor._close()() & 0x100000000) != 0)
        {
          lazy protocol witness table accessor for type Errno and conformance Errno();
          swift_willThrowTypedImpl();
        }

        goto LABEL_27;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logging.answerSynthesis);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_28_3();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v43 = swift_slowAlloc();
    *v10 = 136315138;
    *(v10 + 4) = OUTLINED_FUNCTION_17_25();
    _os_log_impl(&dword_25D85C000, v8, v9, "%s No file size returned.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v11 = OUTLINED_FUNCTION_6_21();
    MEMORY[0x25F8A1050](v11);
    v12 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v12);
  }

  v13 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x25F8A1050](v13);
  if ((FileDescriptor._close()() & 0x100000000) != 0)
  {
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
  }

  v14 = 0;
  v15 = 0;
LABEL_27:
  v25 = v14;
  v26 = v15;
LABEL_32:
  result.value._object = v26;
  result.value._countAndFlagsBits = v25;
  return result;
}

void FileDocument.updateCSSearchableItemAttributeTextContent(with:)(uint64_t a1, uint64_t a2)
{
  v4 = FileDocument.item.getter();
  v5 = [v4 attributeSet];

  outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.textContent.setter(a1, a2, v5);
  v6 = FileDocument.item.getter();
  v7 = [v6 uniqueIdentifier];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = FileDocument.item.getter();
  v12 = outlined bridged method (ob) of @objc CSSearchableItem.domainIdentifier.getter(v11);
  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v16 = v5;
  @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v8, v10, v12, v14, v16);
  FileDocument.id.getter();
  FileDocument.init(id:item:)();
}

CSSearchableItem __swiftcall CSSearchableItem.__allocating_init(uniqueIdentifier:domainIdentifier:attributeSet:)(Swift::String_optional uniqueIdentifier, Swift::String_optional domainIdentifier, CSSearchableItemAttributeSet attributeSet)
{
  object = domainIdentifier.value._object;
  countAndFlagsBits = domainIdentifier.value._countAndFlagsBits;
  v6 = uniqueIdentifier.value._object;
  v7 = uniqueIdentifier.value._countAndFlagsBits;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v7, v6, countAndFlagsBits, object, attributeSet.super.isa);
}

uint64_t FileDescriptor.read(into:retryOnInterrupt:)()
{
  v2 = FileDescriptor._read(into:retryOnInterrupt:)();
  if (!v0 && (v1 & 1) != 0)
  {
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v3 = v2;
  }

  return v2;
}

id @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = MEMORY[0x25F89F4C0]();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = MEMORY[0x25F89F4C0](a3, a4);

LABEL_6:
  v11 = [v5 initWithUniqueIdentifier:v9 domainIdentifier:v10 attributeSet:a5];

  return v11;
}

unint64_t lazy protocol witness table accessor for type Errno and conformance Errno()
{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.textContent.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();
  [a3 setTextContent_];
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItem.domainIdentifier.getter(void *a1)
{
  v2 = [a1 domainIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_4_32()
{
  v2 = *(v0 + 16) + 1;

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_9_26()
{
  result = v0[48];
  v2 = v0[45];
  v3 = *(v0[46] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_25()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_11_25(uint64_t a1@<X8>)
{
  v2[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> () with result type [NSObject]?;
  v2[13] = a1;
  v2[14] = v1;
}

uint64_t OUTLINED_FUNCTION_12_27(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_13_15@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = static FileContentManager.hydrateFileContent(from:);

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_14_20()
{
  v2 = *(v0 - 104);

  return _s10OmniSearch0B6ResultVWOhTm_4(v2, type metadata accessor for SearchResultItem);
}

void OUTLINED_FUNCTION_15_22()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 600);
  v3 = *(v0 + 480);
}

uint64_t OUTLINED_FUNCTION_16_23()
{
  v2 = *(v0 - 88) | 0x8000000000000000;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_17_25()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_19_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_17()
{
  v3 = *(v1 + 352);

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v0);
}

void OUTLINED_FUNCTION_29_12()
{
  v2 = *(v0 + 16) + 1;

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1, v0);
}

void OUTLINED_FUNCTION_33_18()
{
  v2 = v0[59];
  v1 = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[55];
  v6 = v0[56];
  v8 = v0[53];
  v7 = v0[54];
}

void OUTLINED_FUNCTION_37_14()
{
  v2 = v0[40];
  *(v1 - 128) = v0[41];
  v3 = v0[39];
  *(v1 - 112) = v2;
  *(v1 - 104) = v3;
}

void OUTLINED_FUNCTION_39_15(uint64_t a1@<X1>, unint64_t a2@<X8>)
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a2 > 1, a1, 1, v2);
}

_OWORD *OUTLINED_FUNCTION_40_17(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2080;

  return SearchResultItem.associatedValue.getter((v1 + 184));
}

void OUTLINED_FUNCTION_41_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

BOOL OUTLINED_FUNCTION_42_15()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  return MEMORY[0x2822009F8](CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:), 0, 0);
}

uint64_t CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:)()
{
  if (one-time initialization token for searchableIndex != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = static CSSearchableIndexDataProvider.searchableIndex;
  v6 = MEMORY[0x25F89F4C0](v0[20], v0[21]);
  v0[26] = v6;
  v7 = MEMORY[0x25F89F4C0](v4, v3);
  v0[27] = v7;
  v8 = OUTLINED_FUNCTION_118_0();
  v9 = MEMORY[0x25F89F4C0](v8);
  v0[28] = v9;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:);
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4DataVs5Error_pGMd, &_sSccy10Foundation4DataVs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> () with result type Data;
  v0[13] = &block_descriptor_3;
  v0[14] = v10;
  [v5 provideDataForBundle:v6 identifier:v7 type:v9 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 232) = v4;
  if (v4)
  {
    v5 = CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:);
  }

  else
  {
    v5 = CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);

  OUTLINED_FUNCTION_32_5();

  return v5(v4, v3);
}

{
  OUTLINED_FUNCTION_72();
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[29];

  return v5();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> () with result type Data(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v5, v6);
  }

  else
  {
    v8 = a2;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v5, v9, v11);
  }
}

uint64_t protocol witness for CSSearchableIndexDataProviderProtocol.provideData(forBundle:identifier:type:) in conformance CSSearchableIndexDataProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for CSSearchableIndexDataProviderProtocol.provideData(forBundle:identifier:type:) in conformance CSSearchableIndexDataProvider;

  return CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for CSSearchableIndexDataProviderProtocol.provideData(forBundle:identifier:type:) in conformance CSSearchableIndexDataProvider()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_52();
  v7 = *(v6 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_47();
  *v9 = v8;

  OUTLINED_FUNCTION_32_5();
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

uint64_t one-time initialization function for providerDataTypeText()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.utf8PlainText.getter();
  v5 = UTType.identifier.getter();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  static GenericDataProviderManager.providerDataTypeText = v5;
  unk_27FC6FF00 = v7;
  return result;
}

uint64_t GenericDataProviderManager.fetchTextContent(from:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_28_0();
  v2[5] = v5;
  v7 = *(v6 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](GenericDataProviderManager.fetchTextContent(from:), 0, 0);
}

uint64_t GenericDataProviderManager.fetchTextContent(from:)()
{
  OUTLINED_FUNCTION_72();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = v0[7];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v0[7];
    *swift_slowAlloc() = 0;
    v5 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v6, v7, v5, "GenericDataProviderManager.fetchTextContent", "");
    OUTLINED_FUNCTION_42_0();
  }

  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];

  v12 = OUTLINED_FUNCTION_9_27();
  v13(v12);
  v14 = type metadata accessor for OSSignpostIntervalState();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[8] = OUTLINED_FUNCTION_38_6();
  (*(v11 + 8))(v9, v10);
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = GenericDataProviderManager.fetchTextContent(from:);
  v18 = v0[2];
  v19 = v0[3];

  return GenericDataProviderManager.fetchTextWithProvideDataSPI(from:)(v18);
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_52();
  v7 = v6;
  OUTLINED_FUNCTION_47();
  *v8 = v7;
  v10 = *(v9 + 72);
  v11 = *v1;
  OUTLINED_FUNCTION_47();
  *v12 = v11;

  if (v0)
  {

    v13 = GenericDataProviderManager.fetchTextContent(from:);
  }

  else
  {
    *(v7 + 80) = v3;
    *(v7 + 88) = v5;
    v13 = GenericDataProviderManager.fetchTextContent(from:);
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

{
  OUTLINED_FUNCTION_72();
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[11];
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[7];
  v4 = v0[6];
  $defer #1 () in GenericDataProviderManager.fetchTextContent(from:)(v0[8], "GenericDataProviderManager.fetchTextContent");

  OUTLINED_FUNCTION_32_5();

  return v5(v2, v1);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[7];
  v2 = v0[6];
  $defer #1 () in GenericDataProviderManager.fetchTextContent(from:)(v0[8], "GenericDataProviderManager.fetchTextContent");

  OUTLINED_FUNCTION_32_5();

  return v3(0, 0);
}

uint64_t GenericDataProviderManager.fetchTextWithProvideDataSPI(from:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for SearchResult(0);
  v2[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v5 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](GenericDataProviderManager.fetchTextWithProvideDataSPI(from:), 0, 0);
}

uint64_t GenericDataProviderManager.fetchTextWithProvideDataSPI(from:)()
{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = v0[12];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v0[12];
    *swift_slowAlloc() = 0;
    v5 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v6, v7, v5, "GenericDataProviderManager.fetchTextWithProvideDataSPI", "");
    OUTLINED_FUNCTION_42_0();
  }

  v8 = v0[11];
  v23 = v0[12];
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[6];
  v12 = v0[4];

  v13 = OUTLINED_FUNCTION_9_27();
  v14(v13);
  v15 = type metadata accessor for OSSignpostIntervalState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = OUTLINED_FUNCTION_38_6();
  v0[13] = v18;
  v20 = *(v10 + 8);
  v19 = (v10 + 8);
  v20(v23, v9);
  v21 = *(v11 + 24);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  LOBYTE(v23) = v22;
  v0[14] = v22;
  v24 = CodableNSSecureCoding.wrappedValue.getter();
  v25 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v24);
  v0[15] = v25;
  v0[16] = v26;
  if (!v26)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v48 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v48, static Logging.answerSynthesis);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (!OUTLINED_FUNCTION_77_5(v50))
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_13_16();
    *v9 = 136315138;
    *(v9 + 4) = OUTLINED_FUNCTION_2_32();
    v51 = "%s Missing bundleID. Will return nil and let ResultHydrator fallback to fetching via NoteContentManager using LinksServices ";
LABEL_26:
    _os_log_impl(&dword_25D85C000, v49, v23, v51, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_42_0();
LABEL_27:
    OUTLINED_FUNCTION_42_0();
    goto LABEL_28;
  }

  v27 = v25;
  v9 = v26;
  v64 = v18;
  v28 = CodableNSSecureCoding.wrappedValue.getter();
  v19 = [v28 attributeSet];

  v29 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.identifier.getter(v19);
  v0[17] = v29;
  v0[18] = v30;
  if (!v30)
  {

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v52 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v52, static Logging.answerSynthesis);
    v49 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();
    if (!OUTLINED_FUNCTION_77_5(v53))
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_13_16();
    *v9 = 136315138;
    *(v9 + 4) = OUTLINED_FUNCTION_2_32();
    v51 = "%s Missing MDItemExternalID. Will return nil and let ResultHydrator fallback to fetching via NoteContentManager using LinksServices ";
    goto LABEL_26;
  }

  v19 = v29;
  v31 = v30;
  v32 = CodableNSSecureCoding.wrappedValue.getter();
  v23 = [v32 attributeSet];

  v33 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.providerDataTypeIdentifiers.getter(v23);
  if (!v33)
  {

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v54 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v54, static Logging.answerSynthesis);
    v49 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    v18 = v64;
    if (!OUTLINED_FUNCTION_77_5(v55))
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_13_16();
    *v9 = 136315138;
    *(v9 + 4) = OUTLINED_FUNCTION_2_32();
    v51 = "%s Missing MDItemProviderDataTypes. Will return nil and let ResultHydrator fallback to fetching via NoteContentManager using LinksServices ";
    goto LABEL_26;
  }

  v34 = v33;
  if (one-time initialization token for providerDataTypeText != -1)
  {
    swift_once();
  }

  v36 = static GenericDataProviderManager.providerDataTypeText;
  v35 = unk_27FC6FF00;
  v0[19] = static GenericDataProviderManager.providerDataTypeText;
  v0[20] = v35;
  v0[2] = v36;
  v0[3] = v35;
  v37 = swift_task_alloc();
  *(v37 + 16) = v0 + 2;
  v38 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v37, v34);

  if (v38)
  {
    v39 = v0[5];
    v40 = v39[3];
    v41 = v39[4];
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v42 = *(v41 + 8);
    OUTLINED_FUNCTION_28_0();
    v65 = (v43 + *v43);
    OUTLINED_FUNCTION_28_0();
    v45 = *(v44 + 4);
    v46 = swift_task_alloc();
    v0[21] = v46;
    *v46 = v0;
    v46[1] = GenericDataProviderManager.fetchTextWithProvideDataSPI(from:);

    return v65(v27, v9, v19, v31, v36, v35, v40, v41);
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v61 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v61, static Logging.answerSynthesis);
  v49 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();
  v18 = v64;
  if (os_log_type_enabled(v49, v62))
  {
    v63 = swift_slowAlloc();
    swift_slowAlloc();
    OUTLINED_FUNCTION_13_16();
    *v63 = 136315394;
    *(v63 + 4) = OUTLINED_FUNCTION_2_32();
    *(v63 + 12) = 2080;
    *(v63 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v49, v62, "%s Missing %s. Will return nil and let ResultHydrator fallback to fetching via NoteContentManager using LinksServices ", v63, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    goto LABEL_27;
  }

LABEL_28:

  $defer #1 () in GenericDataProviderManager.fetchTextContent(from:)(v18, "GenericDataProviderManager.fetchTextWithProvideDataSPI");

  v57 = v0[11];
  v56 = v0[12];
  v59 = v0[7];
  v58 = v0[8];

  OUTLINED_FUNCTION_32_5();

  return v60(0, 0);
}

{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 168);
  *v3 = *v1;
  v2[22] = v6;
  v2[23] = v7;
  v2[24] = v0;

  if (v0)
  {
    v8 = GenericDataProviderManager.fetchTextWithProvideDataSPI(from:);
  }

  else
  {
    v8 = GenericDataProviderManager.fetchTextWithProvideDataSPI(from:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[18];
  v4 = v0[16];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logging.answerSynthesis);

  outlined copy of Data._Representation(v2, v1);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  outlined consume of Data._Representation(v2, v1);
  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v61 = v0[19];
    v62 = v0[20];
    v10 = v0[18];
    v60 = v0[17];
    v11 = v0[15];
    v12 = v0[16];
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 136316163;
    *(v13 + 4) = OUTLINED_FUNCTION_3_36();
    *(v13 + 12) = 2080;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v13 + 14) = v14;
    *(v13 + 22) = 2080;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v13 + 24) = v15;
    *(v13 + 32) = 2080;
    *(v13 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v13 + 42) = 2085;
    v16 = OUTLINED_FUNCTION_118_0();
    outlined copy of Data._Representation(v16, v17);
    OUTLINED_FUNCTION_118_0();
    Data.description.getter();
    v18 = OUTLINED_FUNCTION_118_0();
    outlined consume of Data._Representation(v18, v19);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v13 + 44) = v20;
    _os_log_impl(&dword_25D85C000, v6, v7, "%s CSSearchableIndex provideDataForBundle: %s, identifier: %s, type: %s returned NSData: %{sensitive}s", v13, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
    v21 = v0[18];
    v22 = v0[16];
  }

  v23 = v0[22];
  v24 = v0[23];
  v25 = v0[8];
  static String.Encoding.utf8.getter();
  v26 = String.init(data:encoding:)();
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    v30 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v30 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      outlined init with copy of SearchResult(v0[4], v0[7]);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = v0[14];
        v34 = v0[7];
        v63 = v32;
        v35 = v0[6];
        v36 = swift_slowAlloc();
        swift_slowAlloc();
        *v36 = 136315394;
        *(v36 + 4) = OUTLINED_FUNCTION_3_36();
        *(v36 + 12) = 2080;
        v37 = v34 + *(v35 + 24);
        v38 = CodableNSSecureCoding.wrappedValue.getter();
        v39 = [v38 uniqueIdentifier];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        outlined destroy of SearchResult(v34);
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v36 + 14) = v40;
        _os_log_impl(&dword_25D85C000, v31, v63, "%s Successful in fetching text content via GenericDataProviderManager for note ID: %s", v36, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {
        v47 = v0[7];

        outlined destroy of SearchResult(v47);
      }

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      v50 = os_log_type_enabled(v48, v49);
      v52 = v0[22];
      v51 = v0[23];
      if (v50)
      {
        v53 = swift_slowAlloc();
        swift_slowAlloc();
        *v53 = 136315395;
        *(v53 + 4) = OUTLINED_FUNCTION_3_36();
        *(v53 + 12) = 2085;
        *(v53 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        _os_log_impl(&dword_25D85C000, v48, v49, "%s Successful in fetching text content via GenericDataProviderManager, content: %{sensitive}s", v53, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      outlined consume of Data._Representation(v52, v51);

      goto LABEL_20;
    }
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  v43 = os_log_type_enabled(v41, v42);
  v45 = v0[22];
  v44 = v0[23];
  if (v43)
  {
    v46 = OUTLINED_FUNCTION_51_0();
    v64 = swift_slowAlloc();
    *v46 = 136315138;
    *(v46 + 4) = OUTLINED_FUNCTION_3_36();
    _os_log_impl(&dword_25D85C000, v41, v42, "%s Data should be non-empty String. Will return nil and let ResultHydrator fallback to fetching via NoteContentManager using LinksServices ", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  outlined consume of Data._Representation(v45, v44);

  v28 = 0;
  v29 = 0;
LABEL_20:
  $defer #1 () in GenericDataProviderManager.fetchTextContent(from:)(v0[13], "GenericDataProviderManager.fetchTextWithProvideDataSPI");

  v55 = v0[11];
  v54 = v0[12];
  v57 = v0[7];
  v56 = v0[8];

  OUTLINED_FUNCTION_32_5();

  return v58(v28, v29);
}

{
  OUTLINED_FUNCTION_72();
  v1 = v0[18];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];

  $defer #1 () in GenericDataProviderManager.fetchTextContent(from:)(v3, "GenericDataProviderManager.fetchTextWithProvideDataSPI");

  v8 = v0[1];
  v9 = v0[24];

  return v8();
}

uint64_t $defer #1 () in GenericDataProviderManager.fetchTextContent(from:)(uint64_t a1, const char *a2)
{
  v26 = a2;
  v2 = type metadata accessor for OSSignpostError();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v18 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v18, static Logging.searchSignposter);
  v19 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v9, v2) == *MEMORY[0x277D85B00])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v9, v2);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v19, v20, v23, v26, v21, v22, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  return (*(v13 + 8))(v17, v10);
}

uint64_t dispatch thunk of CSSearchableIndexDataProviderProtocol.provideData(forBundle:identifier:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 8);
  OUTLINED_FUNCTION_28_0();
  v23 = (v18 + *v18);
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  *(v8 + 16) = v21;
  *v21 = v8;
  v21[1] = dispatch thunk of CSSearchableIndexDataProviderProtocol.provideData(forBundle:identifier:type:);

  return v23(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of CSSearchableIndexDataProviderProtocol.provideData(forBundle:identifier:type:)()
{
  OUTLINED_FUNCTION_78();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_52();
  v6 = *(v5 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_47();
  *v8 = v7;

  OUTLINED_FUNCTION_32_5();

  return v9(v4, v2);
}

uint64_t getEnumTagSinglePayload for GenericDataProviderManager(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for GenericDataProviderManager(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.identifier.getter(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.providerDataTypeIdentifiers.getter(void *a1)
{
  v2 = [a1 providerDataTypeIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t OUTLINED_FUNCTION_2_32()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_3_36()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_11_26()
{

  return swift_slowAlloc();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10OmniSearch17ChatMessageRecord_pG_AfG_ps5NeverOTg504_s10d8Search18g43BodyManagerV05dedupC4Dict_7basedOnSDySSAA04f2C6h31_pGAG_SaySSGtFZSayAaF_pGycfu15_z10F_pSS3key_z57F_p5valuet_tcfu16_32d072148418b0b8b3f2440b1710595293SSAJ_z6F_pAKtZ13F_pTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v37 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v37;
  result = specialized Dictionary.Values.startIndex.getter(a1);
  v7 = result;
  v8 = 0;
  v9 = a1 + 64;
  v24 = v5;
  v25 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (*(a1 + 36) != v5)
    {
      goto LABEL_23;
    }

    v27 = v8;
    v28 = v5;
    v26 = v6;
    v11 = (*(a1 + 48) + 16 * v7);
    v13 = *v11;
    v12 = v11[1];
    outlined init with copy of ChatMessageRecord(*(a1 + 56) + 40 * v7, v35);
    v33[0] = v13;
    v33[1] = v12;
    outlined init with take of ResponseOverrideMatcherProtocol(v35, &v34);
    outlined init with copy of ResourceBundle?(v33, v31, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
    v29[0] = v31[0];
    v29[1] = v31[1];
    outlined init with take of ResponseOverrideMatcherProtocol(&v32, v30);
    outlined init with copy of ChatMessageRecord(v30, v36);

    outlined destroy of IntentApplication?(v29, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
    outlined destroy of IntentApplication?(v33, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
    v37 = v2;
    v15 = *(v2 + 16);
    v14 = *(v2 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v2 = v37;
    }

    *(v2 + 16) = v15 + 1;
    result = outlined init with take of ResponseOverrideMatcherProtocol(v36, v2 + 40 * v15 + 32);
    v16 = 1 << *(a1 + 32);
    if (v7 >= v16)
    {
      goto LABEL_24;
    }

    v9 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v10);
    if ((v17 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (*(a1 + 36) != v28)
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v7 & 0x3F));
    if (v18)
    {
      v16 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v16 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = outlined consume of [String : String].Index._Variant(v7, v28, v26 & 1);
          v16 = __clz(__rbit64(v22)) + v19;
          goto LABEL_19;
        }
      }

      result = outlined consume of [String : String].Index._Variant(v7, v28, v26 & 1);
    }

LABEL_19:
    v6 = 0;
    v8 = v27 + 1;
    v7 = v16;
    v5 = v24;
    if (v27 + 1 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_SaySSGSaySS_AEtGTt1g5046_s10OmniSearch18MessageBodyManagerV06enrichC19C115AssociatedGuids33_687DBA3D1536BCD45E6718749ACC92F3LL04mainC3IdsSDySSSaySSGGSayAA0C10Identifier_pG_tYaFA2G_AGtXEfU1_Tf1nc_n(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t ChatMessageRecord.text.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_21(a1, a2);
  v2();
  v3 = v9[4];
  OUTLINED_FUNCTION_77_10(v9);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_112_2();
  v7(v6, v3);
  OUTLINED_FUNCTION_140_2();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return OUTLINED_FUNCTION_94();
}

uint64_t ChatMessageRecord.from.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_21(a1, a2);
  v2();
  v3 = v10[4];
  OUTLINED_FUNCTION_77_10(v10);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_112_2();
  v8 = v7(v6, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v8;
}

uint64_t ChatMessageRecord.isFromMe.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_21(a1, a2);
  v2();
  v3 = v10[4];
  OUTLINED_FUNCTION_77_10(v10);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_112_2();
  v8 = v7(v6, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v8 & 1;
}

uint64_t ChatMessageRecord.date.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_21(a1, a2);
  v2();
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 24))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t IMSPIMessage.id.getter()
{
  result = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v0, &selRef_guid);
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t IMSPIMessage.from.getter()
{
  v2 = [v1 sender];
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v4 = v2;
  IMSPIHandle.senderName.getter();
  OUTLINED_FUNCTION_140_2();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_25DBC8180;
  *(result + 32) = v0;
  *(result + 40) = v4;
  return result;
}

uint64_t IMSPIHandle.senderName.getter()
{
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v0, &selRef_displayName);
  if (v1 || (outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v0, &selRef_address), v2) || (outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v0, &selRef_cnContactID), v3))
  {
    OUTLINED_FUNCTION_140_2();
  }

  else
  {
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v0, &selRef_businessName);
    OUTLINED_FUNCTION_140_2();
    if (!v10)
    {
      return OUTLINED_FUNCTION_94();
    }
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = OUTLINED_FUNCTION_94();
  v6 = MEMORY[0x25F89F4C0](v5);
  v7 = [v4 fetchCNContactForHandleWithID_];

  if (v7)
  {
    outlined bridged method (ob) of @objc CNContact.displayName.getter(v7);
    if (v8)
    {
    }
  }

  return OUTLINED_FUNCTION_94();
}

id IMSPIMessage.isFromMe.getter()
{
  v1 = [v0 sender];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isMe];

  return v3;
}

uint64_t @nonobjc IMSPIMessage.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 date];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

void IMSPIChat.chatParticipants.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = outlined bridged method (pb) of @objc IMSPIChat.handles.getter(v0);
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array.count.getter(v1);
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v3 == v4)
      {

        OUTLINED_FUNCTION_148();
        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25F89FFD0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = IMSPIHandle.senderName.getter();
      v11 = v10;

      ++v4;
      if (v11)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = *(v5 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v15;
        }

        v12 = *(v5 + 16);
        if (v12 >= *(v5 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v16;
        }

        *(v5 + 16) = v12 + 1;
        v13 = v5 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v11;
        v4 = v8;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized ChatMessageRecord.description.getter()
{
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  strcpy(v27, "mainMessage: ");
  HIWORD(v27[1]) = -4864;
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 8))(v1, v2);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 7104878;
    v5 = 0xE300000000000000;
  }

  MEMORY[0x25F89F6C0](v3, v5);

  MEMORY[0x25F89F6C0](0x654D74616863202CLL, 0xEF3D736567617373);
  v6 = v0[7];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    v9 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChatMessageRecord(v8, v24);
      v10 = v25;
      v11 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v12 = (*(v11 + 8))(v10, v11);
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v9 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v9 = v18;
        }

        v15 = *(v9 + 16);
        if (v15 >= *(v9 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v9 = v19;
        }

        *(v9 + 16) = v15 + 1;
        v16 = v9 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v14;
      }

      v8 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v20 = MEMORY[0x25F89F8A0](v9, MEMORY[0x277D837D0]);
  v22 = v21;

  MEMORY[0x25F89F6C0](v20, v22);

  return v27[0];
}

uint64_t ChatMessageRecord.description.getter(uint64_t a1, uint64_t a2)
{
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  strcpy(v31, "mainMessage: ");
  HIWORD(v31[1]) = -4864;
  (*(a2 + 24))(v28, a1, a2);
  v4 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v5 = OUTLINED_FUNCTION_13_17(v4);
  v6(v5, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v7 = OUTLINED_FUNCTION_64_0();
  MEMORY[0x25F89F6C0](v7);

  MEMORY[0x25F89F6C0](0x654D74616863202CLL, 0xEF3D736567617373);
  v8 = (*(a2 + 32))(a1, a2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    v11 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChatMessageRecord(v10, v28);
      v12 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v13 = OUTLINED_FUNCTION_13_17(v12);
      v15 = v14(v13, v12);
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = *(v11 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v11 = v22;
        }

        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v18);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v11 = v23;
        }

        *(v11 + 16) = v19 + 1;
        v20 = v11 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      v10 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v24 = MEMORY[0x25F89F8A0](v11, MEMORY[0x277D837D0]);
  v26 = v25;

  MEMORY[0x25F89F6C0](v24, v26);

  return v31[0];
}

uint64_t MessageBodyManager.retrieveMessages(for:)()
{
  OUTLINED_FUNCTION_48();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for OSSignpostID();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v7, "MessageBodyManager.retrieveMessages", "", v6, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];

  (*(v11 + 16))(v8, v9, v10);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[8] = OSSignpostIntervalState.init(id:isOpen:)();
  v16 = *(v11 + 8);
  v17 = OUTLINED_FUNCTION_54_0();
  v18(v17);
  if (*(v12 + 16))
  {
    v19 = swift_task_alloc();
    v0[9] = v19;
    *v19 = v0;
    v19[1] = MessageBodyManager.retrieveMessages(for:);
    v20 = v0[2];
    v21 = v0[3];

    return MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)(v20);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v23, static Logging.answerSynthesis);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v25))
    {
      OUTLINED_FUNCTION_51_0();
      v33 = OUTLINED_FUNCTION_10_23();
      *v9 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_74_16(&dword_25D85C000, v26, v27, "%s messageIdentifiers cannot be empty");
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    v28 = v0[7];
    v29 = v0[8];
    v30 = v0[6];
    $defer #1 () in MessageBodyManager.retrieveMessages(for:)();

    v31 = v0[1];
    v32 = MEMORY[0x277D84F90];

    return v31(v32);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 88);
  v5 = *(v3 + 80);
  v6 = *v0;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 96) = v8;

  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  $defer #1 () in MessageBodyManager.retrieveMessages(for:)();

  v5 = OUTLINED_FUNCTION_28();

  return v6(v5);
}

uint64_t MessageBodyManager.retrieveMessages(for:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v6 = *(v3 + 72);
  v7 = *v1;
  *v5 = *v1;
  *(v4 + 80) = a1;

  v8 = swift_task_alloc();
  *(v4 + 88) = v8;
  *v8 = v7;
  v8[1] = MessageBodyManager.retrieveMessages(for:);
  v9 = *(v3 + 24);

  return MessageBodyManager.enrichMessagesWithContext(from:)(a1);
}

uint64_t $defer #1 () in MessageBodyManager.retrieveMessages(for:)()
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
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Logging.searchSignposter);
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "MessageBodyManager.retrieveMessages", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:), 0, 0);
}

uint64_t MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)()
{
  v1 = *(v0 + 104);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_112_2();
  v6 = v5(v4, v2);
  v7 = v1[3];
  v8 = v1[4];
  v9 = OUTLINED_FUNCTION_54_0();
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v11 = *(v8 + 48);
  v12 = OUTLINED_FUNCTION_64_0();
  v14 = v13(v12);
  if (v6 | v14)
  {
    v15 = v14;
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v16 = type metadata accessor for Logger();
    *(v0 + 112) = __swift_project_value_buffer(v16, static Logging.answerSynthesis);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_88_0(v18))
    {
      v19 = OUTLINED_FUNCTION_49_0();
      v51 = OUTLINED_FUNCTION_49_0();
      *v19 = 136315650;
      OUTLINED_FUNCTION_98_2();
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v19 + 12) = 2048;
      *(v19 + 14) = v6;
      *(v19 + 22) = 2048;
      *(v19 + 24) = v15;
      _os_log_impl(&dword_25D85C000, v17, v18, "%s Enriching messages with surrounding messages (%lu before and %lu after) from corresponding chats", v19, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    outlined init with copy of MessageBodyManager(*(v0 + 104), v0 + 56);
    v20 = swift_allocObject();
    *(v0 + 120) = v20;
    v21 = *(v0 + 72);
    *(v20 + 16) = *(v0 + 56);
    *(v20 + 32) = v21;
    *(v20 + 48) = *(v0 + 88);
    *(v20 + 56) = v6;
    *(v20 + 64) = v15;
    v22 = swift_task_alloc();
    *(v0 + 128) = v22;
    *v22 = v0;
    v22[1] = MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:);
    v23 = *(v0 + 96);

    return specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(1, &async function pointer to partial apply for closure #2 in MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:), v20, v23);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v25 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v25, static Logging.answerSynthesis);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_88_0(v27))
    {
      OUTLINED_FUNCTION_51_0();
      v52 = OUTLINED_FUNCTION_10_23();
      *v1 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v1 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_74_16(&dword_25D85C000, v28, v29, "%s Skip enriching messages with surrounding messages from corresponding chats, because both messageCountBeforeTarget and messageCountAfterTarget are set to 0");
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    v30 = *(v0 + 96);
    v31 = *(v30 + 16);
    v32 = MEMORY[0x277D84F90];
    if (v31)
    {
      v53 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
      v32 = v53;
      v33 = v30 + 32;
      do
      {
        outlined init with copy of ChatMessageRecord(v33, v0 + 16);
        v34 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v35 = OUTLINED_FUNCTION_13_17(v34);
        v37 = v36(v35, v34);
        v39 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_25DBC8180;
        v41 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v42 = OUTLINED_FUNCTION_13_17(v41);
        *(v40 + 32) = v43(v42, v41);
        *(v40 + 40) = v44;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
        v46 = *(v53 + 16);
        v45 = *(v53 + 24);
        if (v46 >= v45 >> 1)
        {
          v48 = OUTLINED_FUNCTION_26_3(v45);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48, v46 + 1, 1);
        }

        *(v53 + 16) = v46 + 1;
        v47 = (v53 + 24 * v46);
        v47[4] = v37;
        v47[5] = v39;
        v47[6] = v40;
        v33 += 40;
        --v31;
      }

      while (v31);
    }

    v49 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SaySSGSaySS_AEtGTt0g5(v32);
    v50 = *(v0 + 8);

    return v50(v49);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 128);
  v5 = *(v3 + 120);
  v6 = *v0;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 136) = v8;

  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = v0[14];
  v2 = _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_SaySSGSaySS_AEtGTt1g5046_s10OmniSearch18MessageBodyManagerV06enrichC19C115AssociatedGuids33_687DBA3D1536BCD45E6718749ACC92F304mainC3IdsSDySSSaySSGGSayAA0C10Identifier_pG_tYaFA2G_AGtXEfU1_Tf1nc_n(v0[17]);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_42_15())
  {
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_51_13();
    MEMORY[0] = 136315394;
    OUTLINED_FUNCTION_98_2();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_94_8(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    Dictionary.description.getter();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    MEMORY[0xE] = v6;
    OUTLINED_FUNCTION_62_11(&dword_25D85C000, v3, v4, "%s Returning dict of target message's GUID to list of surrounding message GUIDs: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_2_8();
  }

  v7 = v0[1];

  return v7(v2);
}

uint64_t MessageBodyManager.enrichMessagesWithContext(from:)(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  return MEMORY[0x2822009F8](MessageBodyManager.enrichMessagesWithContext(from:), 0, 0);
}

uint64_t MessageBodyManager.enrichMessagesWithContext(from:)()
{
  v2 = *(v1 + 216);
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      OUTLINED_FUNCTION_7_1();
      goto LABEL_32;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
        v13 = *v11;
        v12 = v11[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = *(v9 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v9 = v16;
        }

        v0 = *(v9 + 16);
        if (v0 >= *(v9 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v9 = v17;
        }

        v6 &= v6 - 1;
        *(v9 + 16) = v0 + 1;
        v14 = v9 + 16 * v0;
        *(v14 + 32) = v13;
        *(v14 + 40) = v12;
      }

      while (v6);
    }
  }

  v18 = *(v50 + 216);

  v19 = -1 << *(v2 + 32);
  v20 = *(v2 + 64);
  OUTLINED_FUNCTION_66_13();
  v23 = v21 & v22;
  v25 = (63 - v24) >> 6;

  v26 = 0;
  v0 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v23)
      {
        while (1)
        {
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_38;
          }

          if (v27 >= v25)
          {
            goto LABEL_31;
          }

          v23 = *(v3 + 8 * v27);
          ++v26;
          if (v23)
          {
            v26 = v27;
            break;
          }
        }
      }

      v28 = (v26 << 9) | (8 * __clz(__rbit64(v23)));
      v29 = *(*(v18 + 56) + v28);
      v30 = *(v29 + 16);
      v2 = *(v0 + 16);
      if (__OFADD__(v2, v30))
      {
        goto LABEL_39;
      }

      v31 = *(*(v18 + 56) + v28);

      if (!swift_isUniquelyReferenced_nonNull_native() || v2 + v30 > *(v0 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v0 = v32;
      }

      v23 &= v23 - 1;
      if (!*(v29 + 16))
      {
        break;
      }

      if ((*(v0 + 24) >> 1) - *(v0 + 16) < v30)
      {
        goto LABEL_40;
      }

      swift_arrayInitWithCopy();

      if (v30)
      {
        v33 = *(v0 + 16);
        v34 = __OFADD__(v33, v30);
        v35 = v33 + v30;
        if (v34)
        {
          goto LABEL_41;
        }

        *(v0 + 16) = v35;
      }
    }
  }

  while (!v30);
  __break(1u);
LABEL_31:
  v2 = v50;
  v36 = *(v50 + 216);

  specialized Array.append<A>(contentsOf:)(v0);
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v9);
  if (one-time initialization token for answerSynthesis != -1)
  {
    goto LABEL_42;
  }

LABEL_32:
  v37 = type metadata accessor for Logger();
  *(v2 + 232) = OUTLINED_FUNCTION_200(v37, static Logging.answerSynthesis);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_42_15())
  {
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_51_13();
    *v0 = 136315394;
    OUTLINED_FUNCTION_98_2();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_94_8(v40);
    Set.description.getter();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v0 + 14) = v41;
    OUTLINED_FUNCTION_62_11(&dword_25D85C000, v38, v39, "%s uniq set of GUIDs of key and surrounding message GUIDs: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_2_8();
  }

  v42 = *(v2 + 224);
  v43 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  v44 = OUTLINED_FUNCTION_112_2();
  *(v2 + 240) = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v44);
  v45 = *(v43 + 8);
  v51 = (v45 + *v45);
  v46 = v45[1];
  v47 = swift_task_alloc();
  *(v2 + 248) = v47;
  *v47 = v2;
  v47[1] = MessageBodyManager.enrichMessagesWithContext(from:);
  v48 = OUTLINED_FUNCTION_32_0();

  return v51(v48);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v4 = *(v3 + 248);
  v5 = *(v3 + 240);
  v6 = *v0;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v9 + 256) = v8;

  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void MessageBodyManager.enrichMessagesWithContext(from:)()
{
  v1 = 0;
  v2 = *(v0 + 256);
  v63 = v2;
  v64 = *(v2 + 16);
  v3 = v2 + 32;
  v4 = MEMORY[0x277D84F98];
  while (v64 != v1)
  {
    if (v1 >= *(v63 + 16))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    outlined init with copy of ChatMessageRecord(v3, v0 + 16);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v6 = OUTLINED_FUNCTION_13_17(v5);
    v8 = v7(v6, v5);
    if (!v9)
    {
      goto LABEL_45;
    }

    v10 = v8;
    v11 = v9;
    outlined init with copy of ChatMessageRecord(v0 + 16, v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v4;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)();
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_43;
    }

    v18 = v13;
    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10OmniSearch13MessageRecord_pGMd, &_ss17_NativeDictionaryVySS10OmniSearch13MessageRecord_pGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
    {
      v20 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v19 & 1) != (v21 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

      v18 = v20;
    }

    if (v19)
    {

      v4 = v65;
      v22 = (v65[7] + 40 * v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 56), v22);
    }

    else
    {
      v4 = v65;
      v65[(v18 >> 6) + 8] |= 1 << v18;
      v23 = (v65[6] + 16 * v18);
      *v23 = v10;
      v23[1] = v11;
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 56), v65[7] + 40 * v18);
      v24 = v65[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_44;
      }

      v65[2] = v26;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v3 += 40;
    ++v1;
  }

  v27 = *(v0 + 256);
  v28 = *(v0 + 216);

  v29 = -1 << *(v28 + 32);
  v30 = *(v28 + 64);
  OUTLINED_FUNCTION_66_13();
  v33 = v31 & v32;
  v35 = (63 - v34) >> 6;

  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  if (!v33)
  {
    goto LABEL_16;
  }

  do
  {
    v38 = *(v0 + 216);
LABEL_20:
    v40 = __clz(__rbit64(v33)) | (v36 << 6);
    v41 = (*(v38 + 48) + 16 * v40);
    v42 = *v41;
    v43 = v41[1];
    v44 = *(*(v38 + 56) + 8 * v40);
    v45 = v4[2];

    if (v45 && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(), (v47 & 1) != 0))
    {
      outlined init with copy of ChatMessageRecord(v4[7] + 40 * v46, v0 + 136);
    }

    else
    {
      v48 = *(v0 + 232);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v62 = v37;
        v51 = OUTLINED_FUNCTION_90_1();
        OUTLINED_FUNCTION_260();
        *v51 = 136315394;
        *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        *(v51 + 12) = 2080;
        *(v51 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        _os_log_impl(&dword_25D85C000, v49, v50, "%s - Failed to fetch full body for message: %s", v51, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        v37 = v62;
        OUTLINED_FUNCTION_42_0();
      }

      *(v0 + 168) = 0;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
    }

    if (*(v0 + 160))
    {
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 136), v0 + 96);
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 96), v0 + 176);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = *(v37 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v37 = v55;
      }

      v53 = *(v37 + 16);
      v52 = *(v37 + 24);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_22_5(v52);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v37 = v56;
      }

      *(v37 + 16) = v53 + 1;
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 176), v37 + 40 * v53 + 32);
    }

    else
    {
      outlined destroy of IntentApplication?(v0 + 136, &_s10OmniSearch13MessageRecord_pSgMd, &_s10OmniSearch13MessageRecord_pSgMR);
    }

    v33 &= v33 - 1;
  }

  while (v33);
  while (1)
  {
LABEL_16:
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v39 >= v35)
    {
      break;
    }

    v38 = *(v0 + 216);
    v33 = *(v38 + 8 * v39 + 64);
    ++v36;
    if (v33)
    {
      v36 = v39;
      goto LABEL_20;
    }
  }

  v57 = *(v0 + 216);
  v58 = *(v0 + 224);

  v59 = swift_task_alloc();
  v59[2] = v57;
  v59[3] = v4;
  v59[4] = v58;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10OmniSearch13MessageRecord_pG_AF04ChatfG0_ps5NeverOTg5(partial apply for closure #5 in MessageBodyManager.enrichMessagesWithContext(from:), v59, v37);
  OUTLINED_FUNCTION_112_2();

  v60 = OUTLINED_FUNCTION_28();

  v61(v60);
}

void MessageBodyManager.hydrateMessageBody(origMessages:enrichedMessages:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v382 = v3;
  v4 = type metadata accessor for SpotlightRankingItem();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_4(v11 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v13 = OUTLINED_FUNCTION_114(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v325 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v19);
  v359 = type metadata accessor for SearchResultItem(0);
  v20 = OUTLINED_FUNCTION_17(v359);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_4(v24 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v46 = OUTLINED_FUNCTION_114(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v52 = OUTLINED_FUNCTION_114(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v58 = OUTLINED_FUNCTION_114(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v64 = OUTLINED_FUNCTION_114(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17MobileSMSDocumentVSgMd, &_s15OmniSearchTypes17MobileSMSDocumentVSgMR);
  OUTLINED_FUNCTION_114(v69);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v73);
  v74 = type metadata accessor for MobileSMSDocument();
  v75 = OUTLINED_FUNCTION_14(v74);
  v77 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v84);
  v370 = type metadata accessor for SearchResult(0);
  v85 = OUTLINED_FUNCTION_14(v370);
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_39_0();
  v395 = v90;
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_14_2();
  v396 = v97;
  v389 = v2;
  if (*(v2 + 16))
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v349 = type metadata accessor for Logger();
    v397 = __swift_project_value_buffer(v349, static Logging.answerSynthesis);
    v98 = v397;
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();
    v101 = OUTLINED_FUNCTION_105_6(v100);
    v332 = v4;
    v331 = v18;
    v388 = v74;
    if (v101)
    {
      v102 = OUTLINED_FUNCTION_51_0();
      v74 = OUTLINED_FUNCTION_49_0();
      v403[0] = v74;
      *v102 = 136315138;
      *(v102 + 4) = OUTLINED_FUNCTION_27_17();
      _os_log_impl(&dword_25D85C000, v99, v98, "%s Iterate each message and optionally create new MobileSMSDocument if body is different", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      OUTLINED_FUNCTION_63_13();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37_0();
    }

    v104 = v393;
    v105 = v396;
    v106 = v7;
    v107 = *(v382 + 16);
    if (v107)
    {
      v392 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v398 = v382 + v392;
      v391 = "er.retrieveMessages";
      v108 = *(v87 + 72);
      v386 = (v77 + 32);
      v374 = (v77 + 16);
      v390 = (v77 + 8);
      v327 = (v106 + 32);
      *&v103 = 136315138;
      v366 = v103;
      *&v103 = 136315394;
      v383 = v103;
      *&v103 = 136316163;
      v326 = v103;
      *&v103 = 136642819;
      v325 = v103;
      *&v103 = 136315395;
      v329 = v103;
      v109 = MEMORY[0x277D84F90];
      v110 = v384;
      OUTLINED_FUNCTION_70_10();
      v394 = v108;
      do
      {
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_7(v398, v105, v111);
        SearchResultItem.associatedValue.getter(v403);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v110, 0, 1, v74);
          (*v386)(v77, v110, v74);
          NoteDocument.folderName.getter();
          if (v112)
          {

            v113 = WalletPass.id.getter();
            v115 = String.oms_IMMessagePartGUID.getter(v113, v114);
            v117 = v116;

            if (*(v389 + 16) && (v118 = specialized __RawDictionaryStorage.find<A>(_:)(), (v119 & 1) != 0))
            {
              v375 = v115;
              outlined init with copy of ChatMessageRecord(*(v389 + 56) + 40 * v118, &v401);
              outlined init with take of ResponseOverrideMatcherProtocol(&v401, v403);
              v120 = OUTLINED_FUNCTION_21_21();
              v122 = ChatMessageRecord.text.getter(v120, v121);
              v365 = v123;
              if (v123)
              {
                v328 = v122;
                v368 = v117;
                v124 = MobileSMSDocument.chatName.getter();
                v373 = v125;
                if (v125)
                {
                  v347 = v124;
                }

                else
                {
                  v170 = v405;
                  v169 = v406;
                  __swift_project_boxed_opaque_existential_1(v403, v405);
                  v347 = (*(*(v169 + 8) + 8))(v170);
                  v373 = v171;
                }

                v172 = v352;
                v173 = v351;
                v174 = *(MobileSMSDocument.chatParticipants.getter() + 16);

                if (v174)
                {
                  v175 = MobileSMSDocument.chatParticipants.getter();
                }

                else
                {
                  __swift_project_boxed_opaque_existential_1(v403, v405);
                  v176 = OUTLINED_FUNCTION_15_23();
                  v175 = v177(v176);
                }

                v376 = v175;
                v178 = *v374;
                (*v374)(v173, v77, v74);
                v367 = v178;
                v178(v172, v77, v74);
                outlined init with copy of ChatMessageRecord(v403, &v401);
                outlined init with copy of ChatMessageRecord(v403, v400);
                v179 = v397;
                v180 = Logger.logObject.getter();
                v181 = static os_log_type_t.info.getter();
                v182 = OUTLINED_FUNCTION_105_6(v181);
                v382 = v109;
                if (v182)
                {
                  v183 = swift_slowAlloc();
                  v363 = swift_slowAlloc();
                  v399 = v363;
                  *v183 = v326;
                  OUTLINED_FUNCTION_9_28();
                  *(v183 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                  *(v183 + 12) = 2048;
                  v362 = v179;
                  v184 = *(MobileSMSDocument.chatParticipants.getter() + 16);

                  v185 = *v390;
                  v186 = OUTLINED_FUNCTION_64_0();
                  v185(v186);
                  *(v183 + 14) = v184;
                  *(v183 + 22) = 2085;
                  MobileSMSDocument.chatParticipants.getter();
                  MEMORY[0x25F89F8A0]();

                  v187 = OUTLINED_FUNCTION_65_15();
                  v348 = v185;
                  v185(v187);
                  OUTLINED_FUNCTION_54_0();
                  v188 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                  *(v183 + 24) = v188;
                  *(v183 + 32) = 2048;
                  __swift_project_boxed_opaque_existential_1(&v401, v402);
                  v189 = OUTLINED_FUNCTION_15_23();
                  v191 = *(v190(v189) + 16);

                  __swift_destroy_boxed_opaque_existential_1Tm(&v401);
                  *(v183 + 34) = v191;
                  *(v183 + 42) = 2085;
                  __swift_project_boxed_opaque_existential_1(v400, v400[3]);
                  v192 = OUTLINED_FUNCTION_15_23();
                  v193(v192);
                  MEMORY[0x25F89F8A0]();

                  __swift_destroy_boxed_opaque_existential_1Tm(v400);
                  OUTLINED_FUNCTION_54_0();
                  v194 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                  *(v183 + 44) = v194;
                  _os_log_impl(&dword_25D85C000, v180, v362, "%s chatParticipants from origMessage (count: %ld): %{sensitive}s, or from retrievedMessage (count: %ld): %{sensitive}s", v183, 0x34u);
                  swift_arrayDestroy();
                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_42_0();
                }

                else
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(&v401);
                  v195 = *v390;
                  v196 = OUTLINED_FUNCTION_64_0();
                  v195(v196);

                  v197 = OUTLINED_FUNCTION_65_15();
                  v348 = v195;
                  v195(v197);
                  __swift_destroy_boxed_opaque_existential_1Tm(v400);
                }

                OUTLINED_FUNCTION_21_21();
                ChatMessageRecord.chatMobileSMSDocuments.getter();
                v199 = v370;
                v200 = v376;
                if (!*(v198 + 16))
                {

                  v198 = MobileSMSDocument.chatMessages.getter();
                }

                v346 = v198;
                v345 = WalletPass.title.getter();
                v344 = v201;
                v343 = WalletPass.description.getter();
                v342 = v202;
                v203 = OUTLINED_FUNCTION_21_21();
                v341 = ChatMessageRecord.text.getter(v203, v204);
                v340 = v205;
                v206 = EmailDocument.authorNames.getter();
                v207 = MobileSMSDocument.isFromMe.getter();
                v208 = EmailDocument.to.getter();
                MobileSMSDocument.date.getter();
                MobileSMSDocument.contentURL.getter();
                v337 = MobileSMSDocument.photoAttachments.getter();
                v336 = MobileSMSDocument.serviceName.getter();
                v335 = v209;
                type metadata accessor for DataDetectorResults();
                OUTLINED_FUNCTION_92();
                __swift_storeEnumTagSinglePayload(v210, v211, v212, v213);
                type metadata accessor for PartialExtractedAttributes();
                OUTLINED_FUNCTION_92();
                __swift_storeEnumTagSinglePayload(v214, v215, v216, v217);
                v218 = v396 + *(v199 + 24);
                v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
                v339 = v218;
                v219 = CodableNSSecureCoding.wrappedValue.getter();
                type metadata accessor for FeatureFlagService();
                v334 = swift_allocObject();
                isa = v200[2].isa;
                if (!isa)
                {
                  if (one-time initialization token for search != -1)
                  {
                    OUTLINED_FUNCTION_1_31();
                    swift_once();
                  }

                  OUTLINED_FUNCTION_200(v349, static Logging.search);
                  v220 = Logger.logObject.getter();
                  v221 = static os_log_type_t.info.getter();
                  if (OUTLINED_FUNCTION_88_0(v221))
                  {
                    v222 = swift_slowAlloc();
                    *v222 = 0;
                    _os_log_impl(&dword_25D85C000, v220, v221, "MobileSMSDocument: chatParticipants set from both 'from' and 'to' as there's no chatParticipants passed-in", v222, 2u);
                    OUTLINED_FUNCTION_42_0();
                  }
                }

                v361 = v208;
                v362 = v207;
                v363 = v206;
                v223 = one-time initialization token for search;
                v224 = v219;
                if (v223 != -1)
                {
                  OUTLINED_FUNCTION_1_31();
                  swift_once();
                }

                OUTLINED_FUNCTION_200(v349, static Logging.search);
                v225 = v224;
                v226 = Logger.logObject.getter();
                v227 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v226, v227))
                {
                  OUTLINED_FUNCTION_51_0();
                  v228 = OUTLINED_FUNCTION_10_23();
                  *&v401 = v228;
                  v229 = [v225 attributeSet];
                  CSSearchableItemAttributeSet.keyStrings.getter();
                  v231 = v230;

                  MEMORY[0x25F89F8A0](v231, MEMORY[0x277D837D0]);

                  OUTLINED_FUNCTION_100_4();
                  v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                  *(v223 + 4) = v232;
                  _os_log_impl(&dword_25D85C000, v226, v227, "MobileSMSDocument: parsing attribute keys: %s", v223, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v228);
                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_42_0();
                }

                v233 = v225;
                v234 = Logger.logObject.getter();
                v235 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v234, v235))
                {
                  v236 = OUTLINED_FUNCTION_51_0();
                  v237 = OUTLINED_FUNCTION_49_0();
                  *&v401 = v237;
                  *v236 = v325;
                  v238 = [v233 attributeSet];
                  CSSearchableItemAttributeSet.kvStrings.getter();
                  v240 = v239;

                  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
                  v242 = MEMORY[0x25F89F8A0](v240, v241);

                  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                  OUTLINED_FUNCTION_71_11();

                  *(v236 + 4) = v242;
                  _os_log_impl(&dword_25D85C000, v234, v235, "MobileSMSDocument: parsing attributes: %{sensitive}s", v236, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v237);
                  OUTLINED_FUNCTION_2_8();
                  OUTLINED_FUNCTION_42_0();
                }

                else
                {
                }

                outlined init with copy of ResourceBundle?(v378, v371, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                outlined init with copy of ResourceBundle?(v379, v372, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                v387 = v107;
                if (!isa)
                {

                  *&v401 = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(v363, v362 & 1);

                  specialized Array.append<A>(contentsOf:)(v243);
                  v376 = v401;
                }

                outlined init with copy of ResourceBundle?(v380, v353, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
                outlined init with copy of ResourceBundle?(v381, v354, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
                v244 = v233;
                v245 = v334;

                PreExtractedCard.init(item:featureFlagService:)(v244, v245, v355);
                v246 = v244;
                OUTLINED_FUNCTION_112_2();

                PreExtractedContact.init(item:featureFlagService:)(v244, v245, v356);
                v247 = v244;
                PreExtractedSharedLink.init(item:)(v247, v357);
                v248 = v247;
                OUTLINED_FUNCTION_112_2();

                PreExtractedBreadcrumb.init(item:featureFlagService:)(v247, v245);

                MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

                outlined destroy of IntentApplication?(v381, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
                outlined destroy of IntentApplication?(v380, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
                outlined destroy of IntentApplication?(v379, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                outlined destroy of IntentApplication?(v378, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                v249 = v358;
                OUTLINED_FUNCTION_32_0();
                OUTLINED_FUNCTION_72_10();
                v250();
                swift_storeEnumTagMultiPayload();
                v251 = CodableNSSecureCoding.wrappedValue.getter();
                v252 = v360;
                OUTLINED_FUNCTION_92();
                v253 = v332;
                __swift_storeEnumTagSinglePayload(v254, v255, v256, v332);
                v257 = v370;
                v258 = v350;
                *(v350 + v370[7]) = MEMORY[0x277D84F90];
                v259 = (v258 + v257[10]);
                *v259 = 0;
                v259[1] = 0;
                _s10OmniSearch0B6ResultVWOcTm_7(v249, v258, type metadata accessor for SearchResultItem);
                v260 = v257[6];
                type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
                lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
                v261 = v251;
                CodableNSSecureCoding.init(wrappedValue:)();
                v262 = v331;
                outlined init with copy of ResourceBundle?(v252, v331, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
                if (__swift_getEnumTagSinglePayload(v262, 1, v253) == 1)
                {
                  outlined destroy of IntentApplication?(v262, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
                  v263 = v257[5];
                  OUTLINED_FUNCTION_55_12();
                  OUTLINED_FUNCTION_55_12();
                  OUTLINED_FUNCTION_55_12();
                  OUTLINED_FUNCTION_55_12();
                  OUTLINED_FUNCTION_55_12();
                  LOBYTE(v401) = 1;
                  SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

                  outlined destroy of IntentApplication?(v252, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
                  OUTLINED_FUNCTION_28_18();
                }

                else
                {

                  outlined destroy of IntentApplication?(v252, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
                  OUTLINED_FUNCTION_28_18();
                  v264 = *v327;
                  v265 = v330;
                  (*v327)(v330, v262, v253);
                  v264(v258 + v257[5], v265, v253);
                }

                v109 = v382;
                v107 = v387;
                *(v258 + v257[8]) = 1;
                *(v258 + v257[9]) = 1;
                outlined init with take of SearchResult(v258, v369);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v267 = v377;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v303 = *(v109 + 16);
                  v304 = OUTLINED_FUNCTION_44();
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v304, v305, v306, v109);
                  v109 = v307;
                }

                v74 = v375;
                OUTLINED_FUNCTION_29_13();
                if (v140)
                {
                  v308 = OUTLINED_FUNCTION_22_5(v268);
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v308, v309, v310, v109);
                  v109 = v311;
                }

                OUTLINED_FUNCTION_12_28();
                outlined init with take of SearchResult(v369, v269);

                v270 = Logger.logObject.getter();
                v271 = static os_log_type_t.info.getter();

                if (OUTLINED_FUNCTION_42_15())
                {
                  OUTLINED_FUNCTION_90_1();
                  *&v401 = OUTLINED_FUNCTION_51_13();
                  OUTLINED_FUNCTION_64_11(&v404);
                  v272 = OUTLINED_FUNCTION_6_22();
                  OUTLINED_FUNCTION_94_8(v272);
                  v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                  MEMORY[0xF] = v74;
                  OUTLINED_FUNCTION_62_11(&dword_25D85C000, v270, v271, "%s Replaced body of message id: %s");
                  OUTLINED_FUNCTION_154_2();
                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_2_8();
                }

                else
                {
                }

                v273 = Logger.logObject.getter();
                v274 = static os_log_type_t.debug.getter();

                if (OUTLINED_FUNCTION_42_15())
                {
                  OUTLINED_FUNCTION_90_1();
                  *&v401 = OUTLINED_FUNCTION_51_13();
                  OUTLINED_FUNCTION_64_11(&v358);
                  MEMORY[5] = OUTLINED_FUNCTION_6_22();
                  MEMORY[0xD] = 2085;
                  v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                  MEMORY[0xF] = v74;
                  OUTLINED_FUNCTION_62_11(&dword_25D85C000, v273, v274, "%s retrievedMessageBody: %{sensitive}s");
                  OUTLINED_FUNCTION_154_2();
                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_2_8();
                }

                else
                {
                }

                OUTLINED_FUNCTION_63_13();
                OUTLINED_FUNCTION_72_10();
                v275();
                v276 = Logger.logObject.getter();
                v77 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v276, v77))
                {
                  v277 = OUTLINED_FUNCTION_90_1();
                  v382 = OUTLINED_FUNCTION_260();
                  *&v401 = v382;
                  *v277 = v329;
                  *(v277 + 4) = OUTLINED_FUNCTION_6_22();
                  *(v277 + 12) = 2085;
                  v376 = v276;
                  v278 = MobileSMSDocument.chatMessages.getter();
                  MEMORY[0x25F89F8A0](v278, v74);

                  v279 = OUTLINED_FUNCTION_65_15();
                  v280 = v348;
                  v348(v279);
                  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                  OUTLINED_FUNCTION_71_11();

                  *(v277 + 14) = v278;

                  v281 = v376;
                  _os_log_impl(&dword_25D85C000, v376, v77, "%s chatMessages: %{sensitive}s", v277, 0x16u);
                  swift_arrayDestroy();
                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_37_0();

                  v280(v377, v74);
                  OUTLINED_FUNCTION_70_10();
                  v280(v77, v74);
                }

                else
                {

                  v282 = OUTLINED_FUNCTION_65_15();
                  v283 = v348;
                  v348(v282);
                  v283(v267, v74);
                  OUTLINED_FUNCTION_70_10();
                  v283(v77, v74);
                }

                OUTLINED_FUNCTION_4_30();
                v105 = v396;
                _s10OmniSearch0B6ResultVWOhTm_4(v396, v284);
                v110 = v384;
                v108 = v394;
                __swift_destroy_boxed_opaque_existential_1Tm(v403);
                v104 = v393;
              }

              else
              {

                v159 = Logger.logObject.getter();
                v160 = static os_log_type_t.error.getter();
                if (OUTLINED_FUNCTION_88_0(v160))
                {
                  v104 = OUTLINED_FUNCTION_51_0();
                  v161 = OUTLINED_FUNCTION_49_0();
                  *&v401 = v161;
                  *v104 = v366;
                  *(v104 + 4) = OUTLINED_FUNCTION_6_22();
                  _os_log_impl(&dword_25D85C000, v159, v160, "%s Expected retrievedMessage to have body. It's OK, will just preserve existing message", v104, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v161);
                  OUTLINED_FUNCTION_37_0();
                  OUTLINED_FUNCTION_30_17();
                  OUTLINED_FUNCTION_42_0();
                }

                v105 = v396;
                OUTLINED_FUNCTION_0_49();
                _s10OmniSearch0B6ResultVWOcTm_7(v105, v364, v162);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v312 = *(v109 + 16);
                  v313 = OUTLINED_FUNCTION_44();
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v313, v314, v315, v109);
                  v109 = v316;
                }

                OUTLINED_FUNCTION_29_13();
                if (v140)
                {
                  v317 = OUTLINED_FUNCTION_22_5(v163);
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v317, v318, v319, v109);
                  v109 = v320;
                }

                v164 = OUTLINED_FUNCTION_17_26();
                v165(v164);
                OUTLINED_FUNCTION_4_30();
                _s10OmniSearch0B6ResultVWOhTm_4(v105, v166);
                OUTLINED_FUNCTION_12_28();
                v108 = v167;
                outlined init with take of SearchResult(v364, v168);
                __swift_destroy_boxed_opaque_existential_1Tm(v403);
              }
            }

            else
            {
              v387 = v107;

              v144 = Logger.logObject.getter();
              v145 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v144, v145))
              {
                OUTLINED_FUNCTION_90_1();
                v104 = OUTLINED_FUNCTION_51_13();
                v403[0] = v104;
                OUTLINED_FUNCTION_64_11(&v404);
                OUTLINED_FUNCTION_9_28();
                v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                OUTLINED_FUNCTION_94_8(v146);
                v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                *(v108 + 14) = v74;
                OUTLINED_FUNCTION_63_13();
                OUTLINED_FUNCTION_62_11(&dword_25D85C000, v144, v145, "%s Dedup'd spiMessageDict dict does not contain id: %s. So we'll skip this");
                OUTLINED_FUNCTION_154_2();
                OUTLINED_FUNCTION_30_17();
                OUTLINED_FUNCTION_42_0();
                v108 = v394;
                OUTLINED_FUNCTION_42_0();
              }

              else
              {
              }

              v156 = OUTLINED_FUNCTION_17_26();
              v157(v156);
              OUTLINED_FUNCTION_4_30();
              v105 = v396;
              _s10OmniSearch0B6ResultVWOhTm_4(v396, v158);
              v107 = v387;
            }

            goto LABEL_83;
          }

          v147 = Logger.logObject.getter();
          v148 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_88_0(v148))
          {
            v104 = OUTLINED_FUNCTION_51_0();
            v149 = OUTLINED_FUNCTION_49_0();
            v403[0] = v149;
            *v104 = v366;
            OUTLINED_FUNCTION_9_28();
            *(v104 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            _os_log_impl(&dword_25D85C000, v147, v148, "%s Expected origMessage to have body. It's OK, will just preserve existing message", v104, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v149);
            OUTLINED_FUNCTION_37_0();
            OUTLINED_FUNCTION_30_17();
            OUTLINED_FUNCTION_42_0();
          }

          v105 = v396;
          OUTLINED_FUNCTION_0_49();
          _s10OmniSearch0B6ResultVWOcTm_7(v105, v385, v150);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v294 = *(v109 + 16);
            v295 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v295, v296, v297, v109);
            v109 = v298;
          }

          OUTLINED_FUNCTION_29_13();
          if (v140)
          {
            v299 = OUTLINED_FUNCTION_22_5(v151);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v299, v300, v301, v109);
            v109 = v302;
          }

          v152 = OUTLINED_FUNCTION_17_26();
          v153(v152);
          OUTLINED_FUNCTION_4_30();
          _s10OmniSearch0B6ResultVWOhTm_4(v105, v154);
          OUTLINED_FUNCTION_12_28();
          v108 = v155;
          v142 = v385;
        }

        else
        {
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v126, v127, v128, v74);
          outlined destroy of IntentApplication?(v110, &_s15OmniSearchTypes17MobileSMSDocumentVSgMd, &_s15OmniSearchTypes17MobileSMSDocumentVSgMR);
          OUTLINED_FUNCTION_0_49();
          v129 = OUTLINED_FUNCTION_100_4();
          _s10OmniSearch0B6ResultVWOcTm_7(v129, v130, v131);
          v132 = v397;
          v133 = Logger.logObject.getter();
          v77 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v133, v77))
          {
            v74 = OUTLINED_FUNCTION_90_1();
            *&v401 = OUTLINED_FUNCTION_260();
            *v74 = v383;
            *(v74 + 4) = OUTLINED_FUNCTION_6_22();
            *(v74 + 6) = 2080;
            SearchResultItem.associatedValue.getter(v403);
            String.init<A>(describing:)();
            v104 = v134;
            OUTLINED_FUNCTION_4_30();
            _s10OmniSearch0B6ResultVWOhTm_4(v393, v135);
            OUTLINED_FUNCTION_100_4();
            v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_30_17();

            *(v74 + 14) = v132;
            _os_log_impl(&dword_25D85C000, v133, v77, "%s Expected item to be of type MobileSMSDocument, but got -> %s. It's OK, will just preserve existing message", v74, 0x16u);
            swift_arrayDestroy();
            v110 = v384;
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_63_13();
            OUTLINED_FUNCTION_42_0();
          }

          else
          {

            OUTLINED_FUNCTION_4_30();
            _s10OmniSearch0B6ResultVWOhTm_4(v104, v136);
          }

          OUTLINED_FUNCTION_0_49();
          v105 = v396;
          _s10OmniSearch0B6ResultVWOcTm_7(v396, v395, v137);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_70_10();
          if ((v138 & 1) == 0)
          {
            v285 = *(v109 + 16);
            v286 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v286, v287, v288, v109);
            v109 = v289;
          }

          OUTLINED_FUNCTION_29_13();
          if (v140)
          {
            v290 = OUTLINED_FUNCTION_22_5(v139);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v290, v291, v292, v109);
            v109 = v293;
          }

          OUTLINED_FUNCTION_4_30();
          _s10OmniSearch0B6ResultVWOhTm_4(v105, v141);
          *(v109 + 16) = v132;
          v142 = v395;
          v143 = v109 + v392 + v133 * v394;
          v108 = v394;
        }

        outlined init with take of SearchResult(v142, v143);
LABEL_83:
        v398 += v108;
        --v107;
      }

      while (v107);
    }
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v321 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v321, static Logging.answerSynthesis);
    v322 = Logger.logObject.getter();
    v323 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_105_6(v323))
    {
      OUTLINED_FUNCTION_51_0();
      v324 = OUTLINED_FUNCTION_10_23();
      v403[0] = v324;
      *v87 = 136315138;
      *(v87 + 4) = OUTLINED_FUNCTION_27_17();
      _os_log_impl(&dword_25D85C000, v322, v0, "%s Didn't get any messages back from IMSPIQueryMessagesWithGUIDsAndQOS, returning original list as-is", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v324);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_2_8();
    }
  }

  OUTLINED_FUNCTION_148();
}

uint64_t String.oms_IMMessagePartGUID.getter(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277D1AA88]);

  v5 = @nonobjc IMMessagePartGUID.init(encodedMessagePartGUID:)(a1, a2);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 messageGUID];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v8, static Logging.answerSynthesis);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_49_0();
    swift_slowAlloc();
    *v11 = 136315650;
    OUTLINED_FUNCTION_98_2();
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v11 + 22) = 2080;
    OUTLINED_FUNCTION_32_0();
    *(v11 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v9, v10, "%s IMMessagePartGUID converted %s to %s", v11, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  return OUTLINED_FUNCTION_32_0();
}

void ChatMessageRecord.chatMobileSMSDocuments.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v21 = type metadata accessor for MobileSMSDocument();
  v4 = OUTLINED_FUNCTION_14(v21);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v11 = v10 - v9;
  v12 = (*(v1 + 32))(v3, v1);
  v13 = *(v12 + 16);
  if (v13)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = 0;
    v16 = v23;
    v17 = v12 + 32;
    while (v15 < *(v12 + 16))
    {
      v18 = v13;
      outlined init with copy of ChatMessageRecord(v17, v22);
      closure #1 in ChatMessageRecord.chatMobileSMSDocuments.getter(v22, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v23 = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v19);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v16 = v23;
      }

      ++v15;
      *(v16 + 16) = v20 + 1;
      v14 = (*(v6 + 32))(v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v11, v21);
      v17 += 40;
      v13 = v18;
      if (v18 == v15)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);

    __break(1u);
  }

  else
  {

LABEL_9:
    OUTLINED_FUNCTION_148();
  }
}

uint64_t closure #5 in MessageBodyManager.enrichMessagesWithContext(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 8))(v12, v13);
  if (!v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = specialized Dictionary.subscript.getter(v14, v15, a2);

  if (v16)
  {
    goto LABEL_10;
  }

  v50 = a3;
  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logging.answerSynthesis);
  outlined init with copy of ChatMessageRecord(a1, v47);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v19, v20))
  {

    v17 = __swift_destroy_boxed_opaque_existential_1Tm(v47);
    goto LABEL_9;
  }

  v44 = v5;
  v21 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  *&v45 = v43;
  *v21 = 136315394;
  *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
  *(v21 + 12) = 2080;
  v12 = v48;
  v22 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  (*(v22 + 8))(v12, v22);
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v21 + 14) = v24;
  _os_log_impl(&dword_25D85C000, v19, v20, "%s - No guids of chat messages surrounding: %s", v21, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x25F8A1050](v43, -1, -1);
  MEMORY[0x25F8A1050](v21, -1, -1);

  v6 = v44;
LABEL_9:
  v16 = MEMORY[0x277D84F90];
  a3 = v50;
LABEL_10:
  MEMORY[0x28223BE20](v17);
  v42[2] = a3;
  v42[3] = a1;
  v25 = v6;
  v26 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in closure #5 in MessageBodyManager.enrichMessagesWithContext(from:), v42, v16);
  v12 = v25;

  v47[0] = v26;

  specialized MutableCollection<>.sort(by:)(v47);
  if (v25)
  {
LABEL_16:

    __break(1u);
    return result;
  }

  v27 = v47[0];
  v28 = a4[3];
  v29 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v28);
  (*(v29 + 32))(&v45, a1, v28, v29);
  if (v46)
  {
    outlined init with take of ResponseOverrideMatcherProtocol(&v45, v47);
    a5[3] = &unk_286F7FBB8;
    a5[4] = lazy protocol witness table accessor for type IMMessageRecord and conformance IMMessageRecord();
    v30 = swift_allocObject();
    *a5 = v30;
    outlined init with copy of ChatMessageRecord(a1, (v30 + 4));
    v31 = v48;
    v32 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v33 = (*(v32 + 8))(v31, v32);
    v35 = v34;
    v36 = v48;
    v37 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v38 = (*(v37 + 16))(v36, v37);
    v30[2] = v33;
    v30[3] = v35;
    v30[9] = v27;
    v30[10] = v38;
    return __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  else
  {
    outlined destroy of IntentApplication?(&v45, &_s10OmniSearch8ChatInfo_pSgMd, &_s10OmniSearch8ChatInfo_pSgMR);
    a5[3] = &unk_286F7FBB8;
    a5[4] = lazy protocol witness table accessor for type IMMessageRecord and conformance IMMessageRecord();
    v40 = swift_allocObject();
    *a5 = v40;
    result = outlined init with copy of ChatMessageRecord(a1, (v40 + 4));
    v40[2] = 0;
    v40[3] = 0;
    v41 = MEMORY[0x277D84F90];
    v40[9] = v27;
    v40[10] = v41;
  }

  return result;
}

void closure #1 in closure #5 in MessageBodyManager.enrichMessagesWithContext(from:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a2 + 16))
  {
    v7 = *a1;
    v8 = a1[1];
    v10 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v11)
    {
      outlined init with copy of ChatMessageRecord(*(a2 + 56) + 40 * v10, a4);
      return;
    }
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logging.answerSynthesis);
  outlined init with copy of ChatMessageRecord(a3, v21);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v13, v14))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    goto LABEL_10;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v24 = v16;
  *v15 = 136315394;
  *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
  *(v15 + 12) = 2080;
  v17 = v22;
  v18 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v18 + 8))(v17, v18);
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v15 + 14) = v20;
    _os_log_impl(&dword_25D85C000, v13, v14, "%s - No full body for message: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v16, -1, -1);
    MEMORY[0x25F8A1050](v15, -1, -1);

LABEL_10:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  __break(1u);
}

uint64_t closure #2 in closure #5 in MessageBodyManager.enrichMessagesWithContext(from:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 24))(v11, v12);
  v13 = type metadata accessor for Date();
  result = __swift_getEnumTagSinglePayload(v10, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    (*(v16 + 24))(v15, v16);
    result = __swift_getEnumTagSinglePayload(v8, 1, v13);
    if (result != 1)
    {
      lazy protocol witness table accessor for type Date and conformance Date();
      v17 = dispatch thunk of static Comparable.< infix(_:_:)();
      v18 = *(*(v13 - 8) + 8);
      v18(v8, v13);
      v18(v10, v13);
      return (v17 & 1) == 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #2 in MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:), 0, 0);
}

uint64_t closure #2 in MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_71_11();
  v9(v8, v6);
  v11 = v10;
  MessageBodyManager.retrieveSurroundingChatMessages(targetMessage:countBefore:countAfter:)(v4, v2, v1);
  v12 = OUTLINED_FUNCTION_71_11();
  v13 = String.oms_IMMessagePartGUID.getter(v12, v11);
  v15 = v14;

  *v5 = v13;
  v5[1] = v15;
  v5[2] = v3;
  v16 = v0[1];

  return v16();
}

uint64_t MessageBodyManager.retrieveSurroundingChatMessages(targetMessage:countBefore:countAfter:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 16))(v6, v7);
  if (!v9)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logging.answerSynthesis);
    outlined init with copy of ChatMessageRecord(a1, v63);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v61 = v23;
      *v22 = 136315394;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v22 + 12) = 2080;
      v24 = v64;
      v25 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      (*(v25 + 8))(v24, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v22 + 14) = v26;
      _os_log_impl(&dword_25D85C000, v20, v21, "%s - Failed to get chatIdentifier from message: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8A1050](v23, -1, -1);
      MEMORY[0x25F8A1050](v22, -1, -1);

      return MEMORY[0x277D84F90];
    }

LABEL_19:
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    return MEMORY[0x277D84F90];
  }

  v10 = v8;
  v11 = v9;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v12 = v3[3];
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v12);
  (*(v13 + 16))(v10, v11, &v61, &v59, v12, v13);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 24))(v14, v15);
  if (!v17)
  {
    v18 = v60;
    if (v60)
    {
      v55 = v59;

      goto LABEL_10;
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logging.answerSynthesis);
    outlined init with copy of ChatMessageRecord(a1, v63);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v49 = 136315650;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v49 + 12) = 2080;
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v49 + 14) = v50;
      *(v49 + 22) = 2080;
      v51 = v64;
      v52 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      (*(v52 + 8))(v51, v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v49 + 24) = v53;
      _os_log_impl(&dword_25D85C000, v47, v48, "%s - Failed to get service from either Spotlight or chatGUID: %s for message: %s", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F8A1050](v58, -1, -1);
      MEMORY[0x25F8A1050](v49, -1, -1);

      return MEMORY[0x277D84F90];
    }

    goto LABEL_19;
  }

  v18 = v17;
  v55 = v16;
LABEL_10:
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = (*(v28 + 8))(v27, v28);
  v31 = String.oms_IMMessagePartGUID.getter(v29, v30);
  v33 = v32;

  v34 = v62;
  if (v62)
  {
    v10 = v61;

    v11 = v34;
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logging.answerSynthesis);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v54 = v31;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v63[0] = v39;
    *v38 = 136315906;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v38 + 12) = 2080;
    *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v38 + 22) = 2080;
    *(v38 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v38 + 32) = 2080;
    v40 = v55;
    *(v38 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v36, v37, "%s - Fetching messages surrounding the message: %s, withChatId: %s, withService: %s", v38, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v39, -1, -1);
    v41 = v38;
    v31 = v54;
    MEMORY[0x25F8A1050](v41, -1, -1);
  }

  else
  {

    v40 = v55;
  }

  v42 = v4[3];
  v43 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v42);
  v44 = (*(v43 + 24))(v31, v33, v10, v11, v40, v18, a2, a3, v42, v43);

  return v44;
}

void static MessageBodyManager.dedupMessageDict(_:basedOn:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  if (one-time initialization token for answerSynthesis != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v4, static Logging.answerSynthesis);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v5, v6))
    {

      goto LABEL_25;
    }

    v7 = OUTLINED_FUNCTION_90_1();
    v194 = OUTLINED_FUNCTION_260();
    *v7 = 136315395;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v7 + 12) = 2085;
    v8 = *(v3 + 16);
    v183 = MEMORY[0x277D84F90];
    if (!v8)
    {
      break;
    }

    v168 = v7;
    v169 = v5;
    v171 = v1;
    v193 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v183 = v193;
    v10 = specialized Dictionary.Values.startIndex.getter(v3);
    v1 = v11;
    v12 = 0;
    v181 = v3 + 64;
    v175 = v11;
    v173 = v3 + 72;
    v177 = v8;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v3 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v181 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_99;
      }

      if (*(v3 + 36) != v1)
      {
        goto LABEL_100;
      }

      v179 = v9;
      v14 = (*(v3 + 48) + 16 * v10);
      v16 = *v14;
      v15 = v14[1];
      v17 = v3;
      outlined init with copy of ChatMessageRecord(*(v3 + 56) + 40 * v10, &v196);
      v190[0] = v16;
      v190[1] = v15;
      outlined init with take of ResponseOverrideMatcherProtocol(&v196, v191);
      outlined init with copy of ResourceBundle?(v190, v187, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
      v185[0] = v187[0];
      v185[1] = v187[1];
      v3 = v185;
      outlined init with take of ResponseOverrideMatcherProtocol(&v188, v186);
      outlined init with copy of ChatMessageRecord(v186, v192);

      outlined destroy of IntentApplication?(v185, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
      outlined destroy of IntentApplication?(v190, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
      v193 = v183;
      v19 = *(v183 + 16);
      v18 = *(v183 + 24);
      if (v19 >= v18 >> 1)
      {
        v28 = OUTLINED_FUNCTION_26_3(v18);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28, v19 + 1, 1);
        v183 = v193;
      }

      *(v183 + 16) = v19 + 1;
      outlined init with take of ResponseOverrideMatcherProtocol(v192, v183 + 40 * v19 + 32);
      v20 = 1 << *(v17 + 32);
      if (v10 >= v20)
      {
        goto LABEL_101;
      }

      v21 = *(v181 + 8 * v13);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_102;
      }

      v3 = v17;
      if (*(v17 + 36) != v1)
      {
        goto LABEL_103;
      }

      v22 = v21 & (-2 << (v10 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v13 << 6;
        v24 = v13 + 1;
        v25 = (v173 + 8 * v13);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            outlined consume of [String : String].Index._Variant(v10, v1, v179 & 1);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_21;
          }
        }

        outlined consume of [String : String].Index._Variant(v10, v1, v179 & 1);
      }

LABEL_21:
      v9 = 0;
      ++v12;
      v10 = v20;
      v1 = v175;
      if (v12 == v177)
      {
        v5 = v169;
        v1 = v171;
        v7 = v168;
        goto LABEL_24;
      }
    }

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
    OUTLINED_FUNCTION_7_1();
  }

LABEL_24:
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17ChatMessageRecord_pMd, &_s10OmniSearch17ChatMessageRecord_pMR);
  MEMORY[0x25F89F8A0](v183, v29);

  v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v7 + 14) = v30;
  _os_log_impl(&dword_25D85C000, v5, v6, "%s Incoming dict %{sensitive}s", v7, 0x16u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_42_0();

LABEL_25:
  v185[0] = v3;
  if (*(v1 + 16))
  {
    v31 = *(v1 + 16);
    v172 = v1 + 32;

    v32 = MEMORY[0x277D84F90];
    *&v33 = 136315650;
    v166 = v33;
    *&v33 = 136315394;
    v167 = v33;
    v34 = v31;
    do
    {
      --v34;
      v35 = v185[0];
      if (*(v185[0] + 16) >= 2uLL)
      {
        v36 = (v172 + 16 * v34);
        v38 = *v36;
        v37 = v36[1];

        OUTLINED_FUNCTION_71_2();
        v39 = specialized __RawDictionaryStorage.find<A>(_:)();
        if (v40)
        {
          v170 = v34;
          outlined init with copy of ChatMessageRecord(*(v35 + 56) + 40 * v39, &v195);
          outlined init with take of ResponseOverrideMatcherProtocol(&v195, v190);
          v41 = v191[2];
          __swift_project_boxed_opaque_existential_1(v190, v191[1]);
          v42 = *(v41 + 32);
          v43 = OUTLINED_FUNCTION_112_2();
          v45 = v44(v43, v41);
          v46 = *(v45 + 16);
          v180 = v38;
          v182 = v37;
          if (v46)
          {
            v47 = v45 + 32;
            v48 = v32;
            do
            {
              outlined init with copy of ChatMessageRecord(v47, &v195);
              v49 = *(&v196 + 1);
              v50 = v197;
              __swift_project_boxed_opaque_existential_1(&v195, *(&v196 + 1));
              v51 = *(v50 + 8);
              v52 = OUTLINED_FUNCTION_112_2();
              v53(v52, v50);
              OUTLINED_FUNCTION_140_2();
              __swift_destroy_boxed_opaque_existential_1Tm(&v195);
              if (v35)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v57 = *(v48 + 16);
                  OUTLINED_FUNCTION_44();
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v48 = v58;
                }

                v55 = *(v48 + 16);
                v54 = *(v48 + 24);
                if (v55 >= v54 >> 1)
                {
                  OUTLINED_FUNCTION_26_3(v54);
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v48 = v59;
                }

                *(v48 + 16) = v55 + 1;
                v56 = v48 + 16 * v55;
                *(v56 + 32) = v49;
                *(v56 + 40) = v35;
              }

              v47 += 40;
              --v46;
            }

            while (v46);

            v38 = v180;
            v37 = v182;
          }

          else
          {

            v48 = v32;
          }

          v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v48);

          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v73, v74))
          {
            v75 = OUTLINED_FUNCTION_49_0();
            *&v195 = swift_slowAlloc();
            *v75 = v166;
            *(v75 + 4) = OUTLINED_FUNCTION_11_27();
            *(v75 + 12) = 2080;
            OUTLINED_FUNCTION_71_2();
            *(v75 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            *(v75 + 22) = 2080;
            Set.description.getter();
            v1 = v76;
            v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v75 + 24) = v77;
            v38 = v180;
            v37 = v182;
            _os_log_impl(&dword_25D85C000, v73, v74, "%s Checking %s's surrounding IDs: %s", v75, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_42_0();
          }

          v79 = specialized _NativeDictionary.filter(_:)(v78, v38, v37);

          v176 = v79 + 64;
          v80 = 1 << *(v79 + 32);
          if (v80 < 64)
          {
            v81 = ~(-1 << v80);
          }

          else
          {
            v81 = -1;
          }

          v3 = v81 & *(v79 + 64);
          v174 = (v80 + 63) >> 6;
          v178 = v79;

          v82 = 0;
          v83 = v32;
          while (v3)
          {
            v184 = v83;
LABEL_56:
            v85 = __clz(__rbit64(v3)) | (v82 << 6);
            v86 = (*(v178 + 48) + 16 * v85);
            v88 = *v86;
            v87 = v86[1];
            outlined init with copy of ChatMessageRecord(*(v178 + 56) + 40 * v85, &v196);
            *&v195 = v88;
            *(&v195 + 1) = v87;
            v89 = v198;
            v90 = v199;
            __swift_project_boxed_opaque_existential_1(&v196, v198);
            v91 = *(v90 + 32);

            v92 = v91(v89, v90);
            v93 = *(v92 + 16);
            if (v93)
            {
              v94 = v92 + 32;
              v95 = v32;
              do
              {
                outlined init with copy of ChatMessageRecord(v94, v187);
                v96 = v189;
                __swift_project_boxed_opaque_existential_1(v187, *(&v188 + 1));
                v97 = OUTLINED_FUNCTION_13_17(v96);
                v99 = v98(v97, v96);
                v101 = v100;
                __swift_destroy_boxed_opaque_existential_1Tm(v187);
                if (v101)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v105 = *(v95 + 16);
                    OUTLINED_FUNCTION_44();
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v95 = v106;
                  }

                  v103 = *(v95 + 16);
                  v102 = *(v95 + 24);
                  if (v103 >= v102 >> 1)
                  {
                    OUTLINED_FUNCTION_26_3(v102);
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v95 = v107;
                  }

                  *(v95 + 16) = v103 + 1;
                  v104 = v95 + 16 * v103;
                  *(v104 + 32) = v99;
                  *(v104 + 40) = v101;
                }

                v94 += 40;
                --v93;
              }

              while (v93);

              v32 = MEMORY[0x277D84F90];
            }

            else
            {

              v95 = v32;
            }

            outlined destroy of IntentApplication?(&v195, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
            v108 = *(v95 + 16);
            v109 = *(v184 + 16);
            v1 = v109 + v108;
            if (__OFADD__(v109, v108))
            {
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v111 = v184;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v1 > *(v184 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v111 = v112;
            }

            v3 &= v3 - 1;
            if (*(v95 + 16))
            {
              if ((*(v111 + 24) >> 1) - *(v111 + 16) < v108)
              {
                goto LABEL_96;
              }

              v113 = v111;
              swift_arrayInitWithCopy();

              v83 = v113;
              if (v108)
              {
                v114 = *(v113 + 16);
                v115 = __OFADD__(v114, v108);
                v116 = v114 + v108;
                if (v115)
                {
                  goto LABEL_97;
                }

                *(v113 + 16) = v116;
              }
            }

            else
            {
              v117 = v111;

              v83 = v117;
              if (v108)
              {
                goto LABEL_95;
              }
            }
          }

          while (1)
          {
            v84 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              __break(1u);
              goto LABEL_94;
            }

            if (v84 >= v174)
            {
              break;
            }

            v3 = *(v176 + 8 * v84);
            ++v82;
            if (v3)
            {
              v184 = v83;
              v82 = v84;
              goto LABEL_56;
            }
          }

          v118 = v83;

          _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v118);
          v119 = Logger.logObject.getter();
          v120 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v119, v120))
          {
            v121 = OUTLINED_FUNCTION_90_1();
            v122 = OUTLINED_FUNCTION_260();
            *v121 = OUTLINED_FUNCTION_32_22(v122, v123, v124, v125, v126, v127, v128, v129, v166, *(&v166 + 1), v167).n128_u32[0];
            v130 = OUTLINED_FUNCTION_11_27();
            OUTLINED_FUNCTION_52_15(v130);
            Set.description.getter();
            v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v121 + 14) = v131;
            _os_log_impl(&dword_25D85C000, v119, v120, "%s Checking against rest of these IDs: %s", v121, 0x16u);
            OUTLINED_FUNCTION_68_11();
            OUTLINED_FUNCTION_37_0();
            OUTLINED_FUNCTION_42_0();
          }

          v34 = v170;
          v132 = OUTLINED_FUNCTION_100_4();
          v134 = specialized Set.isDisjoint(with:)(v132, v133);

          v135 = Logger.logObject.getter();
          if (v134)
          {
            v136 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v135, v136))
            {
              v137 = OUTLINED_FUNCTION_90_1();
              v138 = OUTLINED_FUNCTION_260();
              *v137 = OUTLINED_FUNCTION_32_22(v138, v139, v140, v141, v142, v143, v144, v145, v166, *(&v166 + 1), v167).n128_u32[0];
              *(v137 + 4) = OUTLINED_FUNCTION_11_27();
              *(v137 + 12) = 2080;
              OUTLINED_FUNCTION_71_2();
              v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v137 + 14) = v146;
              _os_log_impl(&dword_25D85C000, v135, v136, "%s The lists are disjointed, so just leave it in deduped: %s", v137, 0x16u);
              OUTLINED_FUNCTION_68_11();
              OUTLINED_FUNCTION_37_0();
              OUTLINED_FUNCTION_42_0();
            }

            else
            {
            }
          }

          else
          {
            v147 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v135, v147))
            {
              v148 = OUTLINED_FUNCTION_90_1();
              v149 = OUTLINED_FUNCTION_260();
              *v148 = OUTLINED_FUNCTION_32_22(v149, v150, v151, v152, v153, v154, v155, v156, v166, *(&v166 + 1), v167).n128_u32[0];
              *(v148 + 4) = OUTLINED_FUNCTION_11_27();
              *(v148 + 12) = 2080;
              OUTLINED_FUNCTION_71_2();
              *(v148 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
              _os_log_impl(&dword_25D85C000, v135, v147, "%s Found overlap of IDs, so we drop this: %s", v148, 0x16u);
              OUTLINED_FUNCTION_68_11();
              OUTLINED_FUNCTION_37_0();
              OUTLINED_FUNCTION_42_0();
            }

            OUTLINED_FUNCTION_71_2();
            specialized Dictionary._Variant.removeValue(forKey:)(v157);

            outlined destroy of IntentApplication?(&v195, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v190);
        }

        else
        {

          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = OUTLINED_FUNCTION_90_1();
            v63 = OUTLINED_FUNCTION_260();
            *v62 = OUTLINED_FUNCTION_32_22(v63, v64, v65, v66, v67, v68, v69, v70, v166, *(&v166 + 1), v167).n128_u32[0];
            v71 = OUTLINED_FUNCTION_11_27();
            OUTLINED_FUNCTION_52_15(v71);
            OUTLINED_FUNCTION_71_2();
            v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v62 + 14) = v72;
            _os_log_impl(&dword_25D85C000, v60, v61, "%s Unabled to find %s in the deduped dict?!", v62, 0x16u);
            OUTLINED_FUNCTION_68_11();
            OUTLINED_FUNCTION_37_0();
            OUTLINED_FUNCTION_42_0();
          }

          else
          {
          }
        }
      }
    }

    while (v34);
  }

  else
  {
  }

  v158 = Logger.logObject.getter();
  v159 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = OUTLINED_FUNCTION_90_1();
    *&v195 = OUTLINED_FUNCTION_260();
    *v160 = 136315394;
    OUTLINED_FUNCTION_98_2();
    v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_52_15(v161);
    swift_beginAccess();

    v163 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10OmniSearch17ChatMessageRecord_pG_AfG_ps5NeverOTg504_s10d8Search18g43BodyManagerV05dedupC4Dict_7basedOnSDySSAA04f2C6h31_pGAG_SaySSGtFZSayAaF_pGycfu15_z10F_pSS3key_z57F_p5valuet_tcfu16_32d072148418b0b8b3f2440b1710595293SSAJ_z6F_pAKtZ13F_pTf3nnnpk_nTf1cn_n(v162);

    v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17ChatMessageRecord_pMd, &_s10OmniSearch17ChatMessageRecord_pMR);
    MEMORY[0x25F89F8A0](v163, v164);

    v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v160 + 14) = v165;
    _os_log_impl(&dword_25D85C000, v158, v159, "%s Deduped dict %s", v160, 0x16u);
    OUTLINED_FUNCTION_68_11();
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_42_0();
  }

  swift_beginAccess();
  OUTLINED_FUNCTION_148();
}

uint64_t specialized Set.isDisjoint(with:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v25 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = ~(-1 << *(v6 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v6 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v4 = v25;
          goto LABEL_13;
        }

        v22 = (*(v6 + 48) + 16 * v21);
        if (*v22 == v17 && v22[1] == v16)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t ChatMessageRecord.guid.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_21(a1, a2);
  v2();
  v3 = v9[4];
  OUTLINED_FUNCTION_77_10(v9);
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_112_2();
  v7(v6, v3);
  OUTLINED_FUNCTION_140_2();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return OUTLINED_FUNCTION_94();
}

uint64_t closure #1 in ChatMessageRecord.chatMobileSMSDocuments.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v74 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v73 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v72 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v64 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v71 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v64 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v80 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v64 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v79 = &v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v64 - v37;
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  result = (*(v40 + 8))(v39, v40);
  v69 = v42;
  v70 = result;
  if (v42)
  {
    v43 = a1[3];
    v44 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v43);
    v45 = (*(v44 + 16))(v43, v44);
    v67 = v46;
    v68 = v45;
    v47 = a1[3];
    v48 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v47);
    v78 = (*(v48 + 32))(v47, v48);
    v49 = a1[3];
    v50 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v49);
    LODWORD(v66) = (*(v50 + 40))(v49, v50);
    v51 = a1[3];
    v52 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v51);
    (*(v52 + 24))(v51, v52);
    v53 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v53);
    v54 = type metadata accessor for DataDetectorResults();
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v54);
    v55 = type metadata accessor for PartialExtractedAttributes();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v55);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logging.search);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_25D85C000, v57, v58, "MobileSMSDocument: chatParticipants set from both 'from' and 'to' as there's no chatParticipants passed-in", v59, 2u);
      MEMORY[0x25F8A1050](v59, -1, -1);
    }

    v64 = v32;

    v65 = v38;
    outlined init with copy of ResourceBundle?(v38, v79, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of ResourceBundle?(v32, v80, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v81 = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(v78, v66 & 1);
    specialized Array.append<A>(contentsOf:)(MEMORY[0x277D84F90]);
    v66 = v81;
    outlined init with copy of ResourceBundle?(v26, v71, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined init with copy of ResourceBundle?(v20, v72, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    v60 = type metadata accessor for PreExtractedCard();
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v60);
    v61 = type metadata accessor for PreExtractedContact();
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v61);
    v62 = type metadata accessor for PreExtractedSharedLink();
    __swift_storeEnumTagSinglePayload(v75, 1, 1, v62);
    v63 = type metadata accessor for PreExtractedBreadcrumb();
    __swift_storeEnumTagSinglePayload(v76, 1, 1, v63);
    MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
    outlined destroy of IntentApplication?(v20, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    outlined destroy of IntentApplication?(v26, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined destroy of IntentApplication?(v64, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return outlined destroy of IntentApplication?(v65, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t IMSPIMessageQueryHelper.queryFullBody(messageGuids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20[3];
  v22 = swift_task_alloc();
  v20[4] = v22;
  *(v22 + 16) = v21;
  v23 = *(MEMORY[0x277D859E0] + 4);
  v24 = swift_task_alloc();
  v20[5] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch13MessageRecord_pGMd, &_sSay10OmniSearch13MessageRecord_pGMR);
  *v24 = v20;
  v24[1] = IMSPIMessageQueryHelper.queryFullBody(messageGuids:);

  return MEMORY[0x2822007B8](v20 + 2, 0, 0, 0xD00000000000001CLL, 0x800000025DBF4E20, partial apply for closure #1 in IMSPIMessageQueryHelper.queryFullBody(messageGuids:), v22, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t IMSPIMessageQueryHelper.queryFullBody(messageGuids:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

void closure #1 in IMSPIMessageQueryHelper.queryFullBody(messageGuids:)(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10OmniSearch13MessageRecord_pGs5NeverOGMd, &_sScCySay10OmniSearch13MessageRecord_pGs5NeverOGMR);
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v23 - v5;
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  static DispatchQoS.userInitiated.getter();
  DispatchQoS.qosClass.getter();
  (*(v13 + 8))(v16, v12);
  DispatchQoS.QoSClass.rawValue.getter();
  (*(v8 + 8))(v11, v7);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = v25;
  (*(v3 + 16))(v6, v26, v25);
  v19 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  (*(v3 + 32))(v20 + v19, v6, v18);
  aBlock[4] = partial apply for closure #1 in closure #1 in IMSPIMessageQueryHelper.queryFullBody(messageGuids:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [Any]?) -> ();
  aBlock[3] = &block_descriptor_4;
  v21 = _Block_copy(aBlock);

  v22 = isa;
  IMSPIQueryMessagesWithGUIDsAndQOS();

  _Block_release(v21);
}

uint64_t closure #1 in closure #1 in IMSPIMessageQueryHelper.queryFullBody(messageGuids:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.answerSynthesis);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v7 + 12) = 2080;
    MEMORY[0x25F89F8A0](a2, MEMORY[0x277D837D0]);
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v7 + 14) = v8;
    _os_log_impl(&dword_25D85C000, v5, v6, "%s - Query via IMSPIQueryMessagesWithGUIDsAndQOS for full message content for messageGuids: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v17, -1, -1);
    MEMORY[0x25F8A1050](v7, -1, -1);
  }

  if (a1)
  {
    v9 = specialized _arrayConditionalCast<A, B>(_:)(a1);
    if (v9)
    {
      v10 = v9;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v13 = 136315651;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        *(v13 + 12) = 2048;
        *(v13 + 14) = specialized Array.count.getter(v10);
        *(v13 + 22) = 2085;
        v14 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for IMSPIMessage, 0x277D18DD0);
        MEMORY[0x25F89F8A0](v10, v14);
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v13 + 24) = v15;
        _os_log_impl(&dword_25D85C000, v11, v12, "%s - IMSPIQueryMessagesWithGUIDsAndQOS returned %ld messages: %{sensitive}s", v13, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F8A1050](v18, -1, -1);
        MEMORY[0x25F8A1050](v13, -1, -1);
      }

      specialized _arrayForceCast<A, B>(_:)();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10OmniSearch13MessageRecord_pGs5NeverOGMd, &_sScCySay10OmniSearch13MessageRecord_pGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [Any]?) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

void IMSPIMessageQueryHelper.parseChatGUID(from:toIdentifier:toService:)()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x25F89F4C0]();
  IMComponentsFromChatGUID();

  v1 = one-time initialization token for answerSynthesis;
  v2 = 0;
  v3 = 0;
  if (v1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.answerSynthesis);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v5, v6, "%s IMComponentsFromChatGUID unable to extract identifier and service from chatGUID: %s, return as-is.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v9, -1, -1);
    MEMORY[0x25F8A1050](v7, -1, -1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t IMSPIMessageQueryHelper.queryMessagesBeforeAndAfter(targetGuid:withChatId:withService:countBefore:countAfter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v35 = a5;
  v36 = a7;
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logging.answerSynthesis);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v34 = a1;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v17 = 136316418;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v17 + 22) = 2080;
    v18 = a3;
    *(v17 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v17 + 32) = 2080;
    v19 = v35;
    *(v17 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v17 + 42) = 2048;
    v20 = v36;
    *(v17 + 44) = v36;
    *(v17 + 52) = 2048;
    *(v17 + 54) = a8;
    _os_log_impl(&dword_25D85C000, v15, v16, "%s - parameters. targetGuid: %s, chatIdentifier: %s, service: %s, countBefore: %lu, countAfter: %lu", v17, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v38, -1, -1);
    MEMORY[0x25F8A1050](v17, -1, -1);
  }

  else
  {

    v18 = a3;
    v20 = v36;
    v19 = a5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25DBC8180;
  *(v21 + 32) = v18;
  *(v21 + 40) = a4;

  v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25DBC8180;
  *(v23 + 32) = v19;
  *(v23 + 40) = a6;

  v24.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = MEMORY[0x25F89F4C0](v34);
  if ((a8 | v20) < 0)
  {
    __break(1u);
    __break(1u);
  }

  v26 = v25;
  v27 = MEMORY[0x25F89F4C0](0, 0xE000000000000000);
  v28 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier();

  if (v28)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for IMDMessageRecord, 0x277D18ED0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v31 = 136315650;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v31 + 12) = 2080;
    *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v31 + 22) = 2080;
    *(v31 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v29, v30, "%s - Nothing returned from IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUID for message: %s, chatIdentifier: %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v39, -1, -1);
    MEMORY[0x25F8A1050](v31, -1, -1);
  }

  v32 = *MEMORY[0x277D85DE8];
  return MEMORY[0x277D84F90];
}

double IMSPIMessageQueryHelper.queryChat(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ChatMessageRecord(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13MessageRecord_pMd, &_s10OmniSearch13MessageRecord_pMR);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for IMSPIMessage, 0x277D18DD0);
  if (swift_dynamicCast())
  {
    v14 = v25;
    static DispatchQoS.userInitiated.getter();
    DispatchQoS.qosClass.getter();
    (*(v10 + 8))(v13, v9);
    v15 = DispatchQoS.QoSClass.rawValue.getter();
    (*(v5 + 8))(v8, v4);
    v16 = [v14 spiChatWithQOS_];
    if (v16)
    {
      v17 = v16;
      *(a2 + 24) = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for IMSPIChat, 0x277D18DC0);
      *(a2 + 32) = &protocol witness table for IMSPIChat;

      *a2 = v17;
      return result;
    }
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logging.answerSynthesis);
    outlined init with copy of ChatMessageRecord(a1, v26);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136315394;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v22 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      swift_getDynamicType();
      _typeName(_:qualified:)();
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v22 + 14) = v24;
      _os_log_impl(&dword_25D85C000, v20, v21, "%s - Can only query IMSPIChat for %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8A1050](v23, -1, -1);
      MEMORY[0x25F8A1050](v22, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t protocol witness for MessageQueryHelper.queryFullBody(messageGuids:) in conformance IMSPIMessageQueryHelper(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for SearchEntityPreprocess.preprocess(data:query:) in conformance SmartChunkingPreprocessing;

  return IMSPIMessageQueryHelper.queryFullBody(messageGuids:)(a1);
}

id @nonobjc IMMessagePartGUID.init(encodedMessagePartGUID:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x25F89F4C0]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithEncodedMessagePartGUID_];

  return v4;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v28 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySSGGMd, &_ss17_NativeDictionaryVySSSaySSGGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14);
      v16 = *a3;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v11 = v17;
    }

    v19 = *a3;
    if (v15)
    {
      v20 = *(v19[7] + 8 * v11);

      v21 = v19[7];
      v22 = *(v21 + 8 * v11);
      *(v21 + 8 * v11) = v20;
    }

    else
    {
      v19[(v11 >> 6) + 8] |= 1 << v11;
      v23 = (v19[6] + 16 * v11);
      *v23 = v7;
      v23[1] = v6;
      *(v19[7] + 8 * v11) = v8;
      v24 = v19[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v19[2] = v26;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13MessageRecord_pMd, &_s10OmniSearch13MessageRecord_pMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v27 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v38 = *a4;
    v16 = v38 + 40 * a3;
    v17 = a1 - a3;
    while (2)
    {
      v30 = v16;
      v31 = a3;
      v29 = v17;
      do
      {
        outlined init with copy of ChatMessageRecord(v16, &v35);
        outlined init with copy of ChatMessageRecord(v16 - 40, v32);
        v19 = v36;
        v18 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, v36);
        (*(v18 + 24))(v19, v18);
        v20 = type metadata accessor for Date();
        result = __swift_getEnumTagSinglePayload(v15, 1, v20);
        if (result == 1)
        {
          __break(1u);
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          return result;
        }

        v21 = v33;
        v22 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        (*(v22 + 24))(v21, v22);
        result = __swift_getEnumTagSinglePayload(v12, 1, v20);
        if (result == 1)
        {
          goto LABEL_13;
        }

        lazy protocol witness table accessor for type Date and conformance Date();
        v23 = dispatch thunk of static Comparable.< infix(_:_:)();
        v24 = *(*(v20 - 8) + 8);
        v24(v12, v20);
        v24(v15, v20);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v35);
        if (v23)
        {
          break;
        }

        if (!v38)
        {
          goto LABEL_14;
        }

        outlined init with take of ResponseOverrideMatcherProtocol(v16, &v35);
        v25 = *(v16 - 24);
        *v16 = *(v16 - 40);
        *(v16 + 16) = v25;
        *(v16 + 32) = *(v16 - 8);
        result = outlined init with take of ResponseOverrideMatcherProtocol(&v35, v16 - 40);
        v16 -= 40;
      }

      while (!__CFADD__(v17++, 1));
      a3 = v31 + 1;
      v16 = v30 + 40;
      v17 = v29 - 1;
      if (v31 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v8 = *(*(v38 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v28 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v35 = -v19;
    v36 = v18;
    v21 = a1 - a3;
    v29 = v19;
    v22 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v22;
      v32 = v21;
      v23 = v21;
      do
      {
        outlined init with copy of SpotlightRankingItem?(v22, v17, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        outlined init with copy of SpotlightRankingItem?(v20, v13, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        v24 = *v17;
        v25 = *v13;
        outlined destroy of IntentApplication?(v13, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        result = outlined destroy of IntentApplication?(v17, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        if (v24 >= v25)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        v26 = v37;
        outlined init with take of SearchResultItem?(v22, v37, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        swift_arrayInitWithTakeFrontToBack();
        result = outlined init with take of SearchResultItem?(v26, v20, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        v20 += v35;
        v22 += v35;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v34 + 1;
      v20 = v33 + v29;
      v21 = v32 - 1;
      v22 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  v8 = type metadata accessor for MessageAccumulationContext.Message(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v52 = &v44 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v44 - v16;
  v46 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v18 = *a4;
  v19 = *(v15 + 72);
  v20 = *a4 + v19 * (a3 - 1);
  v53 = -v19;
  v54 = v18;
  v21 = a1 - a3;
  v45 = v19;
  v22 = v18 + v19 * a3;
  v51 = v8;
  while (2)
  {
    v49 = v20;
    v50 = a3;
    v47 = v22;
    v48 = v21;
    v23 = v52;
    while (1)
    {
      outlined init with copy of MessageAccumulationContext.Message(v22, v17, type metadata accessor for MessageAccumulationContext.Message);
      outlined init with copy of MessageAccumulationContext.Message(v20, v23, type metadata accessor for MessageAccumulationContext.Message);
      v24 = *(v8 + 20);
      v25 = v17[v24];
      v26 = *(v23 + v24);
      if (v25 != v26)
      {
        v31 = v25 < v26;
        goto LABEL_36;
      }

      v27 = *(v8 + 24);
      v28 = v17[v27];
      if (v17[v27])
      {
        if (v28 == 1)
        {
          v29 = 0xE700000000000000;
          v30 = 0x73757361676570;
        }

        else
        {
          v30 = 0x7953726577736E61;
          v29 = 0xEF7369736568746ELL;
        }
      }

      else
      {
        v30 = 0x6867696C746F7073;
        v29 = 0xE900000000000074;
      }

      v32 = *(v23 + v27);
      if (*(v23 + v27))
      {
        if (v32 == 1)
        {
          v33 = 0xE700000000000000;
          v34 = 0x73757361676570;
        }

        else
        {
          v34 = 0x7953726577736E61;
          v33 = 0xEF7369736568746ELL;
        }
      }

      else
      {
        v34 = 0x6867696C746F7073;
        v33 = 0xE900000000000074;
      }

      if (v30 == v34 && v29 == v33)
      {
        break;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_42;
      }

      if (v28)
      {
        if (v28 == 1)
        {
          v37 = 0xE700000000000000;
          v38 = 0x73757361676570;
          if (!v32)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v38 = 0x7953726577736E61;
          v37 = 0xEF7369736568746ELL;
          if (!v32)
          {
LABEL_29:
            v40 = 0x6867696C746F7073;
            v39 = 0xE900000000000074;
            goto LABEL_31;
          }
        }
      }

      else
      {
        v38 = 0x6867696C746F7073;
        v37 = 0xE900000000000074;
        if (!v32)
        {
          goto LABEL_29;
        }
      }

      if (v32 == 1)
      {
        v39 = 0xE700000000000000;
        v40 = 0x73757361676570;
      }

      else
      {
        v40 = 0x7953726577736E61;
        v39 = 0xEF7369736568746ELL;
      }

LABEL_31:
      v8 = v51;
      if (v38 == v40 && v37 == v39)
      {
        break;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v23 = v52;
LABEL_36:
      outlined destroy of MessageAccumulationContext.Message(v23);
      result = outlined destroy of MessageAccumulationContext.Message(v17);
      if (v31)
      {
        if (!v54)
        {
          __break(1u);
          return result;
        }

        v42 = v55;
        outlined init with take of MessageAccumulationContext.Message(v22, v55);
        swift_arrayInitWithTakeFrontToBack();
        result = outlined init with take of MessageAccumulationContext.Message(v42, v20);
        v20 += v53;
        v22 += v53;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      goto LABEL_43;
    }

LABEL_42:
    outlined destroy of MessageAccumulationContext.Message(v52);
    result = outlined destroy of MessageAccumulationContext.Message(v17);
    v8 = v51;
LABEL_43:
    a3 = v50 + 1;
    v20 = v49 + v45;
    v21 = v48 - 1;
    v22 = v47 + v45;
    if (v50 + 1 != v46)
    {
      continue;
    }

    return result;
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v118 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v117 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  v126 = a3;
  v127 = &v117 - v16;
  v17 = a3[1];
  if (v17 >= 1)
  {
    v123 = v15;
    v117 = a4;
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    v122 = v13;
    while (1)
    {
      v20 = v18 + 1;
      v119 = v19;
      v121 = v18;
      if (v18 + 1 < v17)
      {
        v21 = v18;
        v22 = *v126;
        outlined init with copy of ChatMessageRecord(&(*v126)[40 * v20], &v133);
        outlined init with copy of ChatMessageRecord(&v22[40 * v21], v130);
        v23 = v128;
        LODWORD(v125) = closure #2 in closure #5 in MessageBodyManager.enrichMessagesWithContext(from:)(&v133, v130);
        v128 = v23;
        if (v23)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v130);
          __swift_destroy_boxed_opaque_existential_1Tm(&v133);
LABEL_108:

          return;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v130);
        __swift_destroy_boxed_opaque_existential_1Tm(&v133);
        v120 = 40 * v21;
        v19 = &v22[40 * v21 + 80];
        v24 = (v21 + 2);
        v124 = v17;
        while (1)
        {
          v25 = v24;
          if (v20 + 1 >= v17)
          {
            break;
          }

          v129 = v20;
          outlined init with copy of ChatMessageRecord(v19, &v133);
          outlined init with copy of ChatMessageRecord((v19 - 40), v130);
          v27 = v134;
          v26 = v135;
          __swift_project_boxed_opaque_existential_1(&v133, v134);
          v28 = v127;
          (*(v26 + 24))(v27, v26);
          v29 = type metadata accessor for Date();
          if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
          {
            goto LABEL_137;
          }

          v136 = v25;
          v31 = v131;
          v30 = v132;
          __swift_project_boxed_opaque_existential_1(v130, v131);
          v32 = v123;
          (*(v30 + 24))(v31, v30);
          if (__swift_getEnumTagSinglePayload(v32, 1, v29) == 1)
          {
            goto LABEL_138;
          }

          lazy protocol witness table accessor for type Date and conformance Date();
          v33 = v127;
          v34 = dispatch thunk of static Comparable.< infix(_:_:)();
          v35 = *(*(v29 - 8) + 8);
          v35(v32, v29);
          v35(v33, v29);
          __swift_destroy_boxed_opaque_existential_1Tm(v130);
          __swift_destroy_boxed_opaque_existential_1Tm(&v133);
          v19 += 40;
          v20 = v129 + 1;
          v25 = v136;
          v24 = v136 + 1;
          v17 = v124;
          if (((v125 ^ v34) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v20 = v17;
LABEL_12:
        if (v125)
        {
          v36 = v121;
          if (v20 < v121)
          {
            goto LABEL_132;
          }

          v19 = v119;
          if (v121 < v20)
          {
            if (v17 >= v25)
            {
              v37 = v25;
            }

            else
            {
              v37 = v17;
            }

            v38 = 40 * v37 - 40;
            v39 = v20;
            v40 = v120;
            do
            {
              if (v36 != --v39)
              {
                v41 = *v126;
                if (!*v126)
                {
                  goto LABEL_141;
                }

                v42 = &v41[v40];
                v43 = &v41[v38];
                outlined init with take of ResponseOverrideMatcherProtocol(&v41[v40], &v133);
                v44 = *(v43 + 32);
                v45 = *(v43 + 16);
                *v42 = *v43;
                *(v42 + 1) = v45;
                *(v42 + 4) = v44;
                outlined init with take of ResponseOverrideMatcherProtocol(&v133, v43);
                v19 = v119;
              }

              ++v36;
              v38 -= 40;
              v40 += 40;
            }

            while (v36 < v39);
          }
        }

        else
        {
          v19 = v119;
        }
      }

      v46 = v126[1];
      if (v20 < v46)
      {
        if (__OFSUB__(v20, v121))
        {
          goto LABEL_129;
        }

        if (v20 - v121 < v117)
        {
          v47 = v121 + v117;
          if (__OFADD__(v121, v117))
          {
            goto LABEL_130;
          }

          if (v47 >= v46)
          {
            v47 = v126[1];
          }

          if (v47 >= v121)
          {
            if (v20 == v47)
            {
              goto LABEL_43;
            }

            v136 = *v126;
            v48 = &v136[40 * v20];
            v49 = v121 - v20;
            v120 = v47;
LABEL_34:
            v129 = v20;
            v124 = v49;
            v125 = v48;
            v50 = v48;
            while (1)
            {
              outlined init with copy of ChatMessageRecord(v50, &v133);
              outlined init with copy of ChatMessageRecord(v50 - 40, v130);
              v51 = v134;
              v52 = v135;
              __swift_project_boxed_opaque_existential_1(&v133, v134);
              (*(v52 + 24))(v51, v52);
              v53 = type metadata accessor for Date();
              if (__swift_getEnumTagSinglePayload(v13, 1, v53) == 1)
              {
                goto LABEL_135;
              }

              v54 = v131;
              v55 = v132;
              __swift_project_boxed_opaque_existential_1(v130, v131);
              (*(v55 + 24))(v54, v55);
              if (__swift_getEnumTagSinglePayload(v10, 1, v53) == 1)
              {
                break;
              }

              lazy protocol witness table accessor for type Date and conformance Date();
              v56 = dispatch thunk of static Comparable.< infix(_:_:)();
              v57 = *(*(v53 - 8) + 8);
              v57(v10, v53);
              v57(v13, v53);
              __swift_destroy_boxed_opaque_existential_1Tm(v130);
              __swift_destroy_boxed_opaque_existential_1Tm(&v133);
              if (v56)
              {
                goto LABEL_41;
              }

              if (!v136)
              {
                goto LABEL_136;
              }

              outlined init with take of ResponseOverrideMatcherProtocol(v50, &v133);
              v58 = *(v50 - 24);
              *v50 = *(v50 - 40);
              *(v50 + 16) = v58;
              *(v50 + 32) = *(v50 - 8);
              outlined init with take of ResponseOverrideMatcherProtocol(&v133, v50 - 40);
              v50 -= 40;
              if (__CFADD__(v49++, 1))
              {
LABEL_41:
                v20 = v129 + 1;
                v48 = v125 + 40;
                v49 = v124 - 1;
                if (v129 + 1 == v120)
                {
                  v20 = v120;
                  v19 = v119;
                  goto LABEL_43;
                }

                goto LABEL_34;
              }
            }

            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
LABEL_98:
          v109 = v19 + 16;
          v110 = *(v19 + 2);
          while (v110 >= 2)
          {
            if (!*v126)
            {
              goto LABEL_140;
            }

            v111 = v19;
            v112 = &v19[16 * v110];
            v113 = *v112;
            v19 = &v109[2 * v110];
            v114 = *(v19 + 1);
            v115 = v128;
            specialized _merge<A>(low:mid:high:buffer:by:)(&(*v126)[40 * *v112], &(*v126)[40 * *v19], &(*v126)[40 * v114], v136);
            v128 = v115;
            if (v115)
            {
              break;
            }

            if (v114 < v113)
            {
              goto LABEL_124;
            }

            if (v110 - 2 >= *v109)
            {
              goto LABEL_125;
            }

            *v112 = v113;
            *(v112 + 1) = v114;
            v116 = *v109 - v110;
            if (*v109 < v110)
            {
              goto LABEL_126;
            }

            v110 = *v109 - 1;
            specialized UnsafeMutablePointer.moveInitialize(from:count:)(v19 + 16, v116, v19);
            *v109 = v110;
            v19 = v111;
          }

          goto LABEL_108;
        }
      }

LABEL_43:
      if (v20 < v121)
      {
        goto LABEL_128;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v106 = *(v19 + 2);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v107;
      }

      v61 = *(v19 + 2);
      v62 = v61 + 1;
      if (v61 >= *(v19 + 3) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v108;
      }

      *(v19 + 2) = v62;
      v63 = v19 + 32;
      v64 = &v19[16 * v61 + 32];
      v65 = v129;
      *v64 = v121;
      *(v64 + 1) = v65;
      v136 = *v118;
      if (!v136)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      if (v61)
      {
        break;
      }

LABEL_92:
      v17 = v126[1];
      v18 = v129;
      if (v129 >= v17)
      {
        goto LABEL_96;
      }
    }

    while (1)
    {
      v66 = v62 - 1;
      v67 = &v63[16 * v62 - 16];
      v68 = &v19[16 * v62];
      if (v62 >= 4)
      {
        break;
      }

      if (v62 == 3)
      {
        v69 = *(v19 + 4);
        v70 = *(v19 + 5);
        v79 = __OFSUB__(v70, v69);
        v71 = v70 - v69;
        v72 = v79;
LABEL_63:
        if (v72)
        {
          goto LABEL_115;
        }

        v84 = *v68;
        v83 = *(v68 + 1);
        v85 = __OFSUB__(v83, v84);
        v86 = v83 - v84;
        v87 = v85;
        if (v85)
        {
          goto LABEL_118;
        }

        v88 = *(v67 + 1);
        v89 = v88 - *v67;
        if (__OFSUB__(v88, *v67))
        {
          goto LABEL_121;
        }

        if (__OFADD__(v86, v89))
        {
          goto LABEL_123;
        }

        if (v86 + v89 >= v71)
        {
          if (v71 < v89)
          {
            v66 = v62 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (v62 < 2)
      {
        goto LABEL_117;
      }

      v91 = *v68;
      v90 = *(v68 + 1);
      v79 = __OFSUB__(v90, v91);
      v86 = v90 - v91;
      v87 = v79;
LABEL_78:
      if (v87)
      {
        goto LABEL_120;
      }

      v93 = *v67;
      v92 = *(v67 + 1);
      v79 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v79)
      {
        goto LABEL_122;
      }

      if (v94 < v86)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v66 - 1 >= v62)
      {
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
        goto LABEL_131;
      }

      if (!*v126)
      {
        goto LABEL_139;
      }

      v98 = v10;
      v99 = v19;
      v100 = &v63[16 * v66 - 16];
      v101 = *v100;
      v102 = v66;
      v19 = &v63[16 * v66];
      v103 = *(v19 + 1);
      v104 = v128;
      specialized _merge<A>(low:mid:high:buffer:by:)(&(*v126)[40 * *v100], &(*v126)[40 * *v19], &(*v126)[40 * v103], v136);
      v128 = v104;
      if (v104)
      {
        goto LABEL_108;
      }

      if (v103 < v101)
      {
        goto LABEL_110;
      }

      v105 = *(v99 + 2);
      if (v102 > v105)
      {
        goto LABEL_111;
      }

      *v100 = v101;
      *(v100 + 1) = v103;
      if (v102 >= v105)
      {
        goto LABEL_112;
      }

      v62 = v105 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v19 + 16, v105 - 1 - v102, v19);
      v19 = v99;
      *(v99 + 2) = v105 - 1;
      v10 = v98;
      v13 = v122;
      if (v105 <= 2)
      {
        goto LABEL_92;
      }
    }

    v73 = &v63[16 * v62];
    v74 = *(v73 - 8);
    v75 = *(v73 - 7);
    v79 = __OFSUB__(v75, v74);
    v76 = v75 - v74;
    if (v79)
    {
      goto LABEL_113;
    }

    v78 = *(v73 - 6);
    v77 = *(v73 - 5);
    v79 = __OFSUB__(v77, v78);
    v71 = v77 - v78;
    v72 = v79;
    if (v79)
    {
      goto LABEL_114;
    }

    v80 = *(v68 + 1);
    v81 = v80 - *v68;
    if (__OFSUB__(v80, *v68))
    {
      goto LABEL_116;
    }

    v79 = __OFADD__(v71, v81);
    v82 = v71 + v81;
    if (v79)
    {
      goto LABEL_119;
    }

    if (v82 >= v76)
    {
      v96 = *v67;
      v95 = *(v67 + 1);
      v79 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v79)
      {
        goto LABEL_127;
      }

      if (v71 < v97)
      {
        v66 = v62 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_96:
  v136 = *v118;
  if (v136)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_98;
    }

    goto LABEL_133;
  }

LABEL_143:
  __break(1u);
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      a2 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_SS_10i8Search17klM5_pTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAhI_pIsgnndzo_Tf1nc_n04_s10i8Search18l43BodyManagerV05dedupC4Dict_7basedOnSDySSAA04k2C6M43_pGAG_SaySSGtFZSbSS3key_AaF_p5valuet_tXEfU_SSTf1nnc_n(v15, v9, a1, a2, a3);
      MEMORY[0x25F8A1050](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10);
  v11 = v16 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v9, v11);

  v12 = specialized closure #1 in _NativeDictionary.filter(_:)(v11, v9, a1, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v13 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v25 = result;
  v26 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = (*(a3 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    outlined init with copy of ChatMessageRecord(*(a3 + 56) + 40 * v16, v29);
    v27[0] = v19;
    v27[1] = v18;
    outlined init with copy of ChatMessageRecord(v29, &v28);
    if (v19 == v30 && v18 == a5)
    {
      swift_bridgeObjectRetain_n();
      outlined destroy of IntentApplication?(v27, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRetain_n();
      outlined destroy of IntentApplication?(v27, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);

      if ((v21 & 1) == 0)
      {
        *(v25 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v26++, 1))
        {
          goto LABEL_22;
        }
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      v23 = specialized _NativeDictionary.extractDictionary(using:count:)(v25, a2, v26, a3);

      return v23;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_SS_10i8Search17klM5_pTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAhI_pIsgnndzo_Tf1nc_n04_s10i8Search18l43BodyManagerV05dedupC4Dict_7basedOnSDySSAA04k2C6M43_pGAG_SaySSGtFZSbSS3key_AaF_p5valuet_tXEfU_SSTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = specialized closure #1 in _NativeDictionary.filter(_:)(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10OmniSearch17ChatMessageRecord_pGMd, &_ss18_DictionaryStorageCySS10OmniSearch17ChatMessageRecord_pGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    outlined init with copy of ChatMessageRecord(v17 + 40 * v16, v34);
    outlined init with take of ResponseOverrideMatcherProtocol(v34, v33);
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = outlined init with take of ResponseOverrideMatcherProtocol(v33, *(v9 + 56) + 40 * v25);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined bridged method (ob) of @objc CNContact.displayName.getter(void *a1)
{
  v2 = [a1 displayName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc IMSPIChat.handles.getter(void *a1)
{
  v1 = [a1 handles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for IMSPIHandle, 0x277D18DC8);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_140_2();
  }

  return OUTLINED_FUNCTION_94();
}

uint64_t dispatch thunk of MessageQueryHelper.queryFullBody(messageGuids:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for SearchEntityPreprocess.preprocess(data:query:) in conformance SmartChunkingPreprocessing;

  return v11(a1, a2, a3);
}

uint64_t partial apply for closure #1 in closure #1 in IMSPIMessageQueryHelper.queryFullBody(messageGuids:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10OmniSearch13MessageRecord_pGs5NeverOGMd, &_sScCySay10OmniSearch13MessageRecord_pGs5NeverOGMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 80);
  v6 = *(v1 + 16);

  return closure #1 in closure #1 in IMSPIMessageQueryHelper.queryFullBody(messageGuids:)(a1, v6);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type IMMessageRecord and conformance IMMessageRecord()
{
  result = lazy protocol witness table cache variable for type IMMessageRecord and conformance IMMessageRecord;
  if (!lazy protocol witness table cache variable for type IMMessageRecord and conformance IMMessageRecord)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IMMessageRecord and conformance IMMessageRecord);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IMMessageRecord and conformance IMMessageRecord;
  if (!lazy protocol witness table cache variable for type IMMessageRecord and conformance IMMessageRecord)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IMMessageRecord and conformance IMMessageRecord);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t partial apply for closure #2 in MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in SmartChunkingPreprocessing.preprocess(data:query:);

  return closure #2 in MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)(a1, a2, v2 + 16, v6, v7);
}

uint64_t getEnumTagSinglePayload for IMMessageRecord(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for IMMessageRecord(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for IMMessageRecord(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IMMessageRecord and conformance IMMessageRecord();
  *(a1 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_22()
{
  v2 = *(v0 - 288) | 0x8000000000000000;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_11_27()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_21_21()
{
  v1 = *(v0 - 104);
  __swift_project_boxed_opaque_existential_1((v0 - 128), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_27_17()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_28_18()
{

  return _s10OmniSearch0B6ResultVWOhTm_4(v0, type metadata accessor for SearchResultItem);
}

uint64_t OUTLINED_FUNCTION_30_17()
{
  result = v0;
  v3 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_15(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void OUTLINED_FUNCTION_62_11(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

__n128 OUTLINED_FUNCTION_64_11@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *v1 = result.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_74_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t static NoteContentManager.retrieveNotesViaLinkServices(for:)(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1[21] = a1;
  v2 = type metadata accessor for LNConfigurableQueryRequest.Query.Target();
  v1[22] = v2;
  OUTLINED_FUNCTION_21(v2);
  v1[23] = v3;
  v5 = *(v4 + 64);
  v1[24] = OUTLINED_FUNCTION_199();
  v6 = type metadata accessor for LNConfigurableQueryRequest.Query();
  v1[25] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[26] = v7;
  v9 = *(v8 + 64);
  v1[27] = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for OSSignpostID();
  v1[28] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[29] = v11;
  v13 = *(v12 + 64);
  v1[30] = OUTLINED_FUNCTION_160();
  v1[31] = swift_task_alloc();
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t static NoteContentManager.retrieveNotesViaLinkServices(for:)()
{
  v109 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for searchSignposter != -1)
  {
    goto LABEL_56;
  }

LABEL_2:
  v1 = v0[31];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[31];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v7, "NoteContentManager.retrieveNotesViaLinkServices", "", v6, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v8 = v0[30];
  v9 = v0[31];
  v10 = v0[28];
  v11 = v0[29];

  v12 = *(v11 + 16);
  OUTLINED_FUNCTION_179_1();
  v13();
  v14 = type metadata accessor for OSSignpostIntervalState();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[32] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v17 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v18 = MEMORY[0x25F89F4C0](0xD000000000000015, 0x800000025DBF1D70);
  v0[18] = 0;
  v19 = [v17 entitiesForBundleIdentifier:v18 error:v0 + 18];

  v20 = v0[18];
  if (!v19)
  {
    v35 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_49;
  }

  v21 = 0x69746E4565746F4ELL;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNEntityMetadata, 0x277D23818);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v20;

  v24 = specialized Array.count.getter(v22);
  v25 = 0;
  for (i = v0; ; v0 = i)
  {
    if (v24 == v25)
    {

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v36, static Logging.answerSynthesis);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        OUTLINED_FUNCTION_30_7();
        v39 = swift_slowAlloc();
        OUTLINED_FUNCTION_260();
        *v39 = 136315394;
        v40 = OUTLINED_FUNCTION_14_21();
        OUTLINED_FUNCTION_94_8(v40);
        *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        _os_log_impl(&dword_25D85C000, v37, v38, "%s Unable to create LNMetadataProvider for: %s.", v39, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      v41 = v0[31];
      v42 = v0[32];
      v43 = v0[30];
      v44 = v0[27];
      v45 = v0[24];
      $defer #1 () in static NoteContentManager.retrieveNotesViaLinkServices(for:)();

      OUTLINED_FUNCTION_62();
      v46 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_17_4();

      __asm { BRAA            X2, X16 }
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x25F89FFD0](v25, v22);
    }

    else
    {
      if (v25 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v26 = *(v22 + 8 * v25 + 32);
    }

    v27 = v26;
    v0[33] = v26;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_54;
    }

    v28 = v21;
    v29 = [v26 identifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (v30 == v28 && v32 == 0xEA00000000007974)
    {
      break;
    }

    v21 = v28;
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_27;
    }

    ++v25;
  }

LABEL_27:

  v0 = i;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  i[34] = OUTLINED_FUNCTION_200(v49, static Logging.answerSynthesis);
  v50 = v27;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  v105 = v50;
  if (os_log_type_enabled(v51, v52))
  {
    OUTLINED_FUNCTION_30_7();
    v53 = swift_slowAlloc();
    OUTLINED_FUNCTION_260();
    *v53 = 136315395;
    *(v53 + 4) = OUTLINED_FUNCTION_14_21();
    *(v53 + 12) = 2085;
    v54 = v50;
    v55 = [v54 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v0 = i;
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v53 + 14) = v56;
    _os_log_impl(&dword_25D85C000, v51, v52, "%s Created LNEntityMetadata: %{sensitive}s", v53, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v57 = 0;
  v58 = v0[21];
  v106 = MEMORY[0x277D84F90];
  v108 = MEMORY[0x277D84F90];
  v59 = *(v58 + 16);
  v60 = v58 + 40;
  v104 = v60;
LABEL_32:
  v61 = (v60 + 16 * v57);
  while (v59 != v57)
  {
    if (v57 >= v59)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      swift_once();
      goto LABEL_2;
    }

    v0 = (v57 + 1);
    if (__OFADD__(v57, 1))
    {
      goto LABEL_53;
    }

    v63 = *(v61 - 1);
    v62 = *v61;
    objc_allocWithZone(MEMORY[0x277D23800]);

    v61 += 2;
    ++v57;
    if (@nonobjc LNEntityIdentifier.init(typeIdentifier:instanceIdentifier:)(v28, 0xEA00000000007974, v63, v62))
    {
      MEMORY[0x25F89F850]();
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v106 = v108;
      v57 = v0;
      v60 = v104;
      goto LABEL_32;
    }
  }

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v64, v65))
  {
    OUTLINED_FUNCTION_30_7();
    v66 = swift_slowAlloc();
    OUTLINED_FUNCTION_260();
    *v66 = 136315394;
    *(v66 + 4) = OUTLINED_FUNCTION_14_21();
    *(v66 + 12) = 2080;
    v67 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNEntityIdentifier, 0x277D23800);
    MEMORY[0x25F89F8A0](v106, v67);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v66 + 14) = v68;
    _os_log_impl(&dword_25D85C000, v64, v65, "%s Created LNEntityIdentifier(s): %s", v66, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v70 = i[26];
  v69 = i[27];
  v72 = i[24];
  v71 = i[25];
  v73 = i[22];
  v74 = i[23];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNConfigurableQueryRequest, 0x277D23B90);
  *v69 = v106;
  (*(v70 + 104))(v69, *MEMORY[0x277D23A18], v71);
  *v72 = v105;
  (*(v74 + 104))(v72, *MEMORY[0x277D23A40], v73);
  v75 = objc_allocWithZone(MEMORY[0x277D23C68]);
  v76 = v105;
  [v75 init];
  v77 = LNConfigurableQueryRequest.init(query:target:options:)();
  i[35] = v77;
  v78 = v77;
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v79, v80))
  {
    OUTLINED_FUNCTION_30_7();
    v81 = swift_slowAlloc();
    OUTLINED_FUNCTION_260();
    *v81 = 136315394;
    v82 = OUTLINED_FUNCTION_14_21();
    OUTLINED_FUNCTION_94_8(v82);
    v83 = v76;
    v84 = v78;
    v85 = [v84 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v81 + 14) = v86;
    v76 = v83;
    _os_log_impl(&dword_25D85C000, v79, v80, "%s Created LNConfigurableQueryRequest: %s", v81, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v87 = [objc_opt_self() policyWithEntityMetadata_];
  v0 = i;
  i[36] = v87;
  i[19] = 0;
  v88 = [v87 connectionWithError_];
  i[37] = v88;
  v89 = i[19];
  if (!v88)
  {
    v96 = v89;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_49:
    v98 = v0[31];
    v97 = v0[32];
    OUTLINED_FUNCTION_30_18();
    $defer #1 () in static NoteContentManager.retrieveNotesViaLinkServices(for:)();

    v99 = v0[1];
    v100 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_17_4();

    __asm { BRAA            X1, X16 }
  }

  v90 = v88;
  i[2] = i;
  i[7] = i + 20;
  i[3] = static NoteContentManager.retrieveNotesViaLinkServices(for:);
  v91 = swift_continuation_init();
  i[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo13LNQueryOutputCs5Error_pGMd, &_sSccySo13LNQueryOutputCs5Error_pGMR);
  i[10] = MEMORY[0x277D85DD0];
  i[11] = 1107296256;
  i[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNQueryOutput?, @unowned NSError?) -> () with result type LNQueryOutput;
  i[13] = &block_descriptor_5;
  i[14] = v91;
  v92 = v89;
  [v90 performConfigurableQuery:v78 completionHandler:i + 10];
  v93 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x282200938](v94);
}

{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  *(*v0 + 304) = *(*v0 + 48);
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 272);
  v2 = *(v0 + 160);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 288);
  v7 = *(v0 + 296);
  v8 = *(v0 + 280);
  if (v5)
  {
    OUTLINED_FUNCTION_30_7();
    v20 = v9;
    v21 = v6;
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_260();
    *v10 = 136315395;
    OUTLINED_FUNCTION_98_2();
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v10 + 12) = 2085;
    v19 = v8;
    v11 = v2;
    v12 = [v11 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v10 + 14) = v13;
    _os_log_impl(&dword_25D85C000, v3, v4, "%s LNConnection.performConfigurableQuery returned LNQueryOutput: %{sensitive}s", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {
  }

  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  OUTLINED_FUNCTION_30_18();
  $defer #1 () in static NoteContentManager.retrieveNotesViaLinkServices(for:)();

  OUTLINED_FUNCTION_62();
  v17 = *MEMORY[0x277D85DE8];

  return v16(v2);
}

{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  swift_willThrow();

  v6 = v0[38];
  v8 = v0[31];
  v7 = v0[32];
  OUTLINED_FUNCTION_30_18();
  $defer #1 () in static NoteContentManager.retrieveNotesViaLinkServices(for:)();

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t $defer #1 () in static NoteContentManager.retrieveNotesViaLinkServices(for:)()
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
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Logging.searchSignposter);
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "NoteContentManager.retrieveNotesViaLinkServices", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}