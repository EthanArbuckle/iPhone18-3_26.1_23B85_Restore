uint64_t sub_254B9E2F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id IQFLogCategoryDefault()
{
  if (IQFLogCategoryDefault_onceToken != -1)
  {
    IQFLogCategoryDefault_cold_1();
  }

  v1 = IQFLogCategoryDefault_defaultLog;

  return v1;
}

uint64_t __IQFLogCategoryDefault_block_invoke()
{
  IQFLogCategoryDefault_defaultLog = os_log_create("com.apple.pommes", "InfoQueryPersonalizationFeatures");

  return MEMORY[0x2821F96F8]();
}

void sub_254B9FAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_254BA1BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t PegasusRequestPersonalizationFeatures.__allocating_init()()
{
  v1 = [objc_allocWithZone(IQFMapsPersonalizationRanker) init];
  v2 = *(v0 + 88);

  return v2(v1);
}

uint64_t PegasusRequestPersonalizationFeatures.__allocating_init(mapsPersonalizationRanker:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PegasusRequestPersonalizationFeatures.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t PegasusResponsePersonalizationFeatures.__allocating_init()()
{
  v1 = [objc_allocWithZone(IQFMapsPersonalizationRanker) init];
  v2 = *(v0 + 88);

  return v2(v1);
}

uint64_t PegasusResponsePersonalizationFeatures.__allocating_init(mapsPersonalizationRanker:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PegasusResponsePersonalizationFeatures.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void IQFMapsPersonalizationRanker.rankedEvents(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for IQFMapsPersonalizationLocation(0, &lazy cache variable for type metadata for IQFMapsPersonalizationLocation, off_2797ACC78);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = partial apply for closure #1 in IQFMapsPersonalizationRanker.rankedEvents(for:completion:);
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [IQFMapsPersonalizationResult], @guaranteed Error?) -> ();
  v9[3] = &block_descriptor;
  v8 = _Block_copy(v9);

  [v3 rankedEventsForLocations:isa completionHandler:v8];
  _Block_release(v8);
}

void closure #1 in IQFMapsPersonalizationRanker.rankedEvents(for:completion:)(int a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = a2;
    (a3)(a2, 1);
  }

  else
  {
    a3();
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [IQFMapsPersonalizationResult], @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  type metadata accessor for IQFMapsPersonalizationLocation(0, &lazy cache variable for type metadata for IQFMapsPersonalizationResult, &off_2797ACC90);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a3;
  v5(v6, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for IQFMapsPersonalizationLocation(uint64_t a1, unint64_t *a2, uint64_t *a3)
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