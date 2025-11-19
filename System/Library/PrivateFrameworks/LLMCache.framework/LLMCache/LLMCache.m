unint64_t lazy protocol witness table accessor for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags()
{
  result = lazy protocol witness table cache variable for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags;
  if (!lazy protocol witness table cache variable for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags;
  if (!lazy protocol witness table cache variable for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags);
  }

  return result;
}

uint64_t LLMCacheManagerFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = static LLMCacheManagerFeatureFlags.forceEnabled;
  if (static LLMCacheManagerFeatureFlags.forceEnabled == 2)
  {
    v4[3] = &type metadata for LLMCacheManagerFeatureFlags;
    v4[4] = lazy protocol witness table accessor for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags();
    LOBYTE(v4[0]) = v1;
    v2 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  return v2 & 1;
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance LLMCacheManagerFeatureFlags()
{
  v1 = "FullPlanner";
  if (*v0 != 1)
  {
    v1 = "ResponseGeneration";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "FastPlanner";
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_255A21A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255A21AEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s8LLMCache13CacheDatabase_pWOb_0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_255A21BA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_255A21CE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_255A21D3C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_255A21D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_255A21DE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t sub_255A21E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_255A21F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_255A21F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UserID();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_255A220A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UserID();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255A221CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255A22278(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255A2231C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static LLMCacheManagerFeatureFlags.forceEnabled;
  return result;
}

uint64_t sub_255A22368(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static LLMCacheManagerFeatureFlags.forceEnabled = v1;
  return result;
}

uint64_t CacheEntry.llmOutput.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

LLMCache::CacheEntry __swiftcall CacheEntry.init(llmOutput:isExactMatch:)(LLMCache::CacheEntry llmOutput, Swift::Bool isExactMatch)
{
  *v2 = llmOutput.llmOutput;
  *(v2 + 16) = isExactMatch;
  llmOutput.isExactMatch = isExactMatch;
  return llmOutput;
}

id default argument 0 of static Logger.makeSignpostID(log:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;

  return v1;
}

id default argument 1 of static Logger.withSignpost<A>(name:log:completion:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;

  return v1;
}

uint64_t getEnumTagSinglePayload for ListResponse(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ListResponse(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CacheEntry(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CacheEntry(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL Logger.Subsystem.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Subsystem.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Logger.Subsystem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Logger.Subsystem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Logger.Subsystem@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance Logger.Subsystem, *a1);

  *a2 = v3 != 0;
  return result;
}

LLMCache::Logger::Category_optional __swiftcall Logger.Category.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Category.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = LLMCache_Logger_Category_instrumentation;
  }

  else
  {
    v4.value = LLMCache_Logger_Category_unknownDefault;
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

uint64_t Logger.Category.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x656D757274736E49;
  }

  else
  {
    return 0x6E614D6568636143;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Logger.Category(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656D757274736E49;
  }

  else
  {
    v4 = 0x6E614D6568636143;
  }

  if (v3)
  {
    v5 = 0xEC00000072656761;
  }

  else
  {
    v5 = 0xEF6E6F697461746ELL;
  }

  if (*a2)
  {
    v6 = 0x656D757274736E49;
  }

  else
  {
    v6 = 0x6E614D6568636143;
  }

  if (*a2)
  {
    v7 = 0xEF6E6F697461746ELL;
  }

  else
  {
    v7 = 0xEC00000072656761;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Logger.Category()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Logger.Category()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Logger.Category()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Logger.Category@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Category.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Logger.Category(uint64_t *a1@<X8>)
{
  v2 = 0x6E614D6568636143;
  if (*v1)
  {
    v2 = 0x656D757274736E49;
  }

  v3 = 0xEC00000072656761;
  if (*v1)
  {
    v3 = 0xEF6E6F697461746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t one-time initialization function for log()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Logger.log = result;
  return result;
}

uint64_t *Logger.log.unsafeMutableAddressor()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  return &static Logger.log;
}

id static Logger.log.getter()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;

  return v1;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.logger);
  __swift_project_value_buffer(v0, static Logger.logger);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;
  return Logger.init(_:)();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t one-time initialization function for instrumentation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.instrumentation);
  __swift_project_value_buffer(v0, static Logger.instrumentation);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t Logger.logger.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Logger.logger.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t static Logger.makeSignpostID(log:)(void *a1)
{
  v1 = a1;

  return OSSignpostID.init(log:)();
}

uint64_t static Logger.begin(_:log:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.begin(_:_:log:)()
{
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.event(_:log:)()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static Logger.end(_:_:log:)()
{
  static os_signpost_type_t.end.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.withSignpost<A>(name:log:completion:)(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v19 = a3;
  v18[0] = a1;
  v18[1] = a2;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OS_os_log.signpostsEnabled.getter();
  if ((v13 & 1) == 0)
  {
    return a5(v13, v14);
  }

  v15 = a4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v16 = os_signpost(_:dso:log:name:signpostID:)();
  (a5)(v16);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v8 + 8))(v12, v7);
}

unint64_t lazy protocol witness table accessor for type Logger.Subsystem and conformance Logger.Subsystem()
{
  result = lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem;
  if (!lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Logger.Category and conformance Logger.Category()
{
  result = lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category;
  if (!lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Logger.Subsystem(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Logger.Subsystem(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Logger.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Logger.Category(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t BiomeLogEmitter.emitInsertStarted(clientTraceId:namespace:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for UUID();
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = *(v82 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v81 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v80 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v86 = &v72 - v17;
  v18 = type metadata accessor for Date();
  v84 = *(v18 - 8);
  v85 = v18;
  v19 = *(v84 + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v79 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v72 - v24;
  v26 = type metadata accessor for LLMCacheManagerTelemetry();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v72 - v34;
  v36 = *a2;
  UUID.init()();
  LOBYTE(v89[0]) = v36;
  (*(*v3 + 144))(a3, a1, v89);
  LOBYTE(v89[0]) = 3;
  v37 = *(*v3 + 152);
  v87 = v32;
  v37(a3, 0, v89);
  type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
  lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry();
  static StreamResource.source()();
  v88 = v35;
  v76 = v25;
  v73 = a3;
  v77 = v27;
  v78 = v26;
  v75 = v91;
  v74 = __swift_project_boxed_opaque_existential_1(v89, v90);
  v38 = v86;
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v39 = v84;
  v40 = v85;
  v41 = *(v84 + 48);
  v42 = v41(v38, 1, v85);
  v72 = v41;
  if (v42 == 1)
  {
    v43 = v76;
    static Date.now.getter();
    if (v41(v38, 1, v40) != 1)
    {
      outlined destroy of Date?(v38);
    }
  }

  else
  {
    v43 = v76;
    (*(v39 + 32))(v76, v38, v40);
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  v44 = *(v39 + 8);
  v44(v43, v40);
  __swift_destroy_boxed_opaque_existential_0Tm(v89);
  static StreamResource.source()();
  v45 = v40;
  v86 = v91;
  __swift_project_boxed_opaque_existential_1(v89, v90);
  v46 = v80;
  v47 = v87;
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v48 = v46;
  v49 = v46;
  v50 = v72;
  if (v72(v49, 1, v45) == 1)
  {
    v51 = v50;
    v52 = v79;
    static Date.now.getter();
    v53 = v51(v48, 1, v45);
    v54 = v81;
    if (v53 != 1)
    {
      outlined destroy of Date?(v48);
    }
  }

  else
  {
    v52 = v79;
    (*(v39 + 32))(v79, v48, v45);
    v54 = v81;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  v44(v52, v45);
  __swift_destroy_boxed_opaque_existential_0Tm(v89);
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Logger.instrumentation);
  v56 = v82;
  v57 = v83;
  (*(v82 + 16))(v54, v73, v83);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v78;
  v62 = v88;
  if (v60)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v89[0] = v64;
    *v63 = 136315138;
    v65 = UUID.uuidString.getter();
    v66 = v54;
    v68 = v67;
    (*(v56 + 8))(v66, v57);
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v68, v89);

    *(v63 + 4) = v69;
    _os_log_impl(&dword_255A20000, v58, v59, "Emitted invocation and insertStarted logging events, cmId: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    MEMORY[0x259C47EC0](v64, -1, -1);
    MEMORY[0x259C47EC0](v63, -1, -1);

    v70 = *(v77 + 8);
    v70(v87, v61);
  }

  else
  {

    (*(v56 + 8))(v54, v57);
    v70 = *(v77 + 8);
    v70(v47, v61);
  }

  return (v70)(v62, v61);
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

unint64_t lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry()
{
  result = lazy protocol witness table cache variable for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry;
  if (!lazy protocol witness table cache variable for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry)
  {
    type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry);
  }

  return result;
}

uint64_t BiomeLogEmitter.emitInsertEnded(cmId:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for Date();
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LLMCacheManagerTelemetry();
  v49 = *(v18 - 8);
  v19 = *(v49 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v50[0]) = 3;
  (*(*v1 + 152))(a1, 1, v50);
  type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
  lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry();
  static StreamResource.source()();
  v43 = v7;
  v44 = v3;
  v23 = v47;
  v45 = v18;
  v42 = v50[4];
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v24 = *(v48 + 48);
  v25 = v24(v12, 1, v13);
  v46 = v22;
  if (v25 == 1)
  {
    v26 = v48;
    static Date.now.getter();
    v27 = v24(v12, 1, v13);
    v28 = a1;
    if (v27 != 1)
    {
      outlined destroy of Date?(v12);
    }
  }

  else
  {
    v26 = v48;
    (*(v48 + 32))(v17, v12, v13);
    v28 = a1;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  (*(v26 + 8))(v17, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.instrumentation);
  v30 = v23;
  v31 = v43;
  v32 = v44;
  (*(v23 + 16))(v43, v28, v44);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50[0] = v36;
    *v35 = 136315138;
    v37 = UUID.uuidString.getter();
    v39 = v38;
    (*(v30 + 8))(v31, v32);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v50);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_255A20000, v33, v34, "Emitted insertEnded logging events, cmId: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x259C47EC0](v36, -1, -1);
    MEMORY[0x259C47EC0](v35, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v31, v32);
  }

  return (*(v49 + 8))(v46, v45);
}

uint64_t BiomeLogEmitter.emitInsertFailed(cmId:error:)(uint64_t a1, _BYTE *a2)
{
  v5 = type metadata accessor for UUID();
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Date();
  v50 = *(v15 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LLMCacheManagerTelemetry();
  v51 = *(v20 - 8);
  v21 = *(v51 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v52[0]) = *a2;
  (*(*v2 + 152))(a1, 2, v52);
  type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
  lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry();
  static StreamResource.source()();
  v45 = v9;
  v46 = v5;
  v25 = v49;
  v47 = v20;
  v44 = v52[4];
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v26 = *(v50 + 48);
  v27 = v26(v14, 1, v15);
  v48 = v24;
  if (v27 == 1)
  {
    v28 = v50;
    static Date.now.getter();
    v29 = v26(v14, 1, v15);
    v30 = a1;
    if (v29 != 1)
    {
      outlined destroy of Date?(v14);
    }
  }

  else
  {
    v28 = v50;
    (*(v50 + 32))(v19, v14, v15);
    v30 = a1;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  (*(v28 + 8))(v19, v15);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.instrumentation);
  v32 = v25;
  v33 = v45;
  v34 = v46;
  (*(v25 + 16))(v45, v30, v46);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v52[0] = v38;
    *v37 = 136315138;
    v39 = UUID.uuidString.getter();
    v41 = v40;
    (*(v32 + 8))(v33, v34);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v52);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_255A20000, v35, v36, "Emitted insertFailed logging events, cmId: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x259C47EC0](v38, -1, -1);
    MEMORY[0x259C47EC0](v37, -1, -1);
  }

  else
  {

    (*(v25 + 8))(v33, v34);
  }

  return (*(v51 + 8))(v48, v47);
}

uint64_t BiomeLogEmitter.emitSearchStarted(clientTraceId:namespace:listRequest:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v81 = v8;
  v82 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v80 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v85 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v86 = (&v73 - v19);
  v20 = type metadata accessor for Date();
  v83 = *(v20 - 8);
  v84 = v20;
  v21 = *(v83 + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v73 - v27;
  v29 = type metadata accessor for LLMCacheManagerTelemetry();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v35 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v73 - v37;
  LOBYTE(a2) = *a2;
  UUID.init()();
  LOBYTE(v90[0]) = a2;
  (*(*v4 + 144))(a4, a1, v90);
  LOBYTE(v90[0]) = 3;
  v39 = *(*v4 + 160);
  v88 = v35;
  v39(a4, 0, v87, MEMORY[0x277D84F90], v90);
  type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
  lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry();
  static StreamResource.source()();
  v89 = v38;
  v75 = v25;
  v76 = a4;
  v79 = v30;
  v87 = v29;
  v78 = v92;
  v77 = __swift_project_boxed_opaque_existential_1(v90, v91);
  v40 = v86;
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v41 = v83;
  v42 = v84;
  v43 = *(v83 + 48);
  v44 = v43(v40, 1, v84);
  v45 = v41;
  v74 = v43;
  if (v44 == 1)
  {
    static Date.now.getter();
    v46 = v43(v86, 1, v42);
    v47 = v85;
    if (v46 != 1)
    {
      outlined destroy of Date?(v86);
    }
  }

  else
  {
    (*(v41 + 32))(v28, v86, v42);
    v47 = v85;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  v48 = v28;
  v49 = *(v41 + 8);
  v49(v48, v42);
  __swift_destroy_boxed_opaque_existential_0Tm(v90);
  static StreamResource.source()();
  v86 = v49;
  v85 = v92;
  __swift_project_boxed_opaque_existential_1(v90, v91);
  v50 = v88;
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v51 = v74;
  if (v74(v47, 1, v42) == 1)
  {
    v52 = v75;
    static Date.now.getter();
    v53 = v51(v47, 1, v42);
    v54 = v80;
    if (v53 != 1)
    {
      outlined destroy of Date?(v47);
    }
  }

  else
  {
    v52 = v75;
    (*(v45 + 32))(v75, v47, v42);
    v54 = v80;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  (v86)(v52, v42);
  __swift_destroy_boxed_opaque_existential_0Tm(v90);
  v55 = v76;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, static Logger.instrumentation);
  v58 = v81;
  v57 = v82;
  (*(v82 + 16))(v54, v55, v81);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v87;
  v63 = v89;
  if (v61)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v90[0] = v65;
    *v64 = 136315138;
    v66 = UUID.uuidString.getter();
    v67 = v54;
    v69 = v68;
    (*(v57 + 8))(v67, v58);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v69, v90);

    *(v64 + 4) = v70;
    _os_log_impl(&dword_255A20000, v59, v60, "Emitted invocation and searchStarted logging events, cmId: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    MEMORY[0x259C47EC0](v65, -1, -1);
    MEMORY[0x259C47EC0](v64, -1, -1);

    v71 = *(v79 + 8);
    v71(v88, v62);
  }

  else
  {

    (*(v57 + 8))(v54, v58);
    v71 = *(v79 + 8);
    v71(v50, v62);
  }

  return (v71)(v63, v62);
}

uint64_t BiomeLogEmitter.emitSearchEnded(cmId:listRequest:listResponse:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = v46 - v15;
  v17 = type metadata accessor for Date();
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LLMCacheManagerTelemetry();
  v51 = *(v22 - 8);
  v52 = v22;
  v23 = *(v51 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v53[0]) = 3;
  (*(*v3 + 160))(a1, 1, a2, a3, v53);
  type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
  lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry();
  static StreamResource.source()();
  v47 = v11;
  v48 = v7;
  v46[1] = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v27 = v26;
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v28 = v49;
  v29 = *(v49 + 48);
  if (v29(v16, 1, v17) == 1)
  {
    static Date.now.getter();
    v30 = v29(v16, 1, v17);
    v31 = a1;
    if (v30 != 1)
    {
      outlined destroy of Date?(v16);
    }
  }

  else
  {
    (*(v28 + 32))(v21, v16, v17);
    v31 = a1;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  (*(v28 + 8))(v21, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  v32 = v47;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.instrumentation);
  v34 = v50;
  v35 = v48;
  (*(v50 + 16))(v32, v31, v48);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = v35;
    v40 = swift_slowAlloc();
    v53[0] = v40;
    *v38 = 136315138;
    v41 = UUID.uuidString.getter();
    v43 = v42;
    (*(v34 + 8))(v32, v39);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v53);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_255A20000, v36, v37, "Emitted searchEnded logging events, cmId: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x259C47EC0](v40, -1, -1);
    MEMORY[0x259C47EC0](v38, -1, -1);
  }

  else
  {

    (*(v34 + 8))(v32, v35);
  }

  return (*(v51 + 8))(v27, v52);
}

uint64_t BiomeLogEmitter.emitSearchFailed(cmId:listRequest:error:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = type metadata accessor for UUID();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = v46 - v15;
  v17 = type metadata accessor for Date();
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LLMCacheManagerTelemetry();
  v51 = *(v22 - 8);
  v52 = v22;
  v23 = *(v51 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v53[0]) = *a3;
  (*(*v3 + 160))(a1, 2, a2, MEMORY[0x277D84F90], v53);
  type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
  lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry();
  static StreamResource.source()();
  v47 = v11;
  v48 = v7;
  v46[1] = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v27 = v26;
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v28 = v49;
  v29 = *(v49 + 48);
  if (v29(v16, 1, v17) == 1)
  {
    static Date.now.getter();
    v30 = v29(v16, 1, v17);
    v31 = a1;
    if (v30 != 1)
    {
      outlined destroy of Date?(v16);
    }
  }

  else
  {
    (*(v28 + 32))(v21, v16, v17);
    v31 = a1;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  (*(v28 + 8))(v21, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  v32 = v47;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.instrumentation);
  v34 = v50;
  v35 = v48;
  (*(v50 + 16))(v32, v31, v48);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = v35;
    v40 = swift_slowAlloc();
    v53[0] = v40;
    *v38 = 136315138;
    v41 = UUID.uuidString.getter();
    v43 = v42;
    (*(v34 + 8))(v32, v39);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v53);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_255A20000, v36, v37, "Emitted searchFailed logging events, cmId: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x259C47EC0](v40, -1, -1);
    MEMORY[0x259C47EC0](v38, -1, -1);
  }

  else
  {

    (*(v34 + 8))(v32, v35);
  }

  return (*(v51 + 8))(v27, v52);
}

uint64_t BiomeLogEmitter.buildInvocationTelemetry(cmId:clientTraceId:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a2;
  v69 = a1;
  v73 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMd, &_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v75 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v74 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18CacheManagerTargetOSgMd, &_s27IntelligencePlatformLibrary18CacheManagerTargetOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v72 = &v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary34CacheManagerTelemetryEventMetadataVSgMd, &_s27IntelligencePlatformLibrary34CacheManagerTelemetryEventMetadataVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v70 = &v63 - v20;
  v21 = type metadata accessor for CacheManagerTarget();
  v67 = *(v21 - 8);
  v68 = v21;
  v22 = *(v67 + 64);
  MEMORY[0x28223BE20](v21, v23);
  v66 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary29CacheManagerRequestInvocationV0dE9NamespaceOSgMd, &_s27IntelligencePlatformLibrary29CacheManagerRequestInvocationV0dE9NamespaceOSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v63 - v28;
  v30 = type metadata accessor for CacheManagerRequestInvocation();
  v31 = *(v30 - 8);
  v77 = v30;
  v78 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8, v38);
  v40 = &v63 - v39;
  v76 = type metadata accessor for CacheManagerTelemetryEventMetadata();
  v65 = *(v76 - 8);
  v41 = *(v65 + 64);
  MEMORY[0x28223BE20](v76, v42);
  v44 = &v63 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *a3;
  CacheManagerTelemetryEventMetadata.init()();
  UUID.init()();
  v45 = type metadata accessor for UUID();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v47(v40, 0, 1, v45);
  CacheManagerRequestInvocation.clientTraceId.setter();
  v48 = *(v46 + 16);
  v48(v40, v69, v45);
  v47(v40, 0, 1, v45);
  CacheManagerTelemetryEventMetadata.cacheManagerId.setter();
  CacheManagerRequestInvocation.init()();
  v48(v40, v71, v45);
  v47(v40, 0, 1, v45);
  CacheManagerRequestInvocation.clientTraceId.setter();
  v49 = type metadata accessor for CacheManagerRequestInvocation.CacheManagerNamespace();
  v50 = *(v49 - 8);
  (*(v50 + 104))(v29, **(&unk_279806EF8 + v64), v49);
  (*(v50 + 56))(v29, 0, 1, v49);
  CacheManagerRequestInvocation.namespace.setter();
  v51 = v66;
  (*(v78 + 16))(v66, v35, v77);
  v53 = v67;
  v52 = v68;
  (*(v67 + 104))(v51, *MEMORY[0x277D20568], v68);
  LLMCacheManagerTelemetry.init()();
  v54 = v65;
  v55 = v70;
  v56 = v76;
  (*(v65 + 16))(v70, v44, v76);
  (*(v54 + 56))(v55, 0, 1, v56);
  LLMCacheManagerTelemetry.eventMetadata.setter();
  v57 = v72;
  (*(v53 + 16))(v72, v51, v52);
  (*(v53 + 56))(v57, 0, 1, v52);
  LLMCacheManagerTelemetry.target.setter();
  v58 = v74;
  static Date.now.getter();
  v59 = type metadata accessor for Date();
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  LLMCacheManagerTelemetry.writeTimestamp.setter();
  v60 = v75;
  static MonotonicTimestamp.nowForSuspendingClock()();
  v61 = type metadata accessor for MonotonicTimestamp();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  LLMCacheManagerTelemetry.monotonicTimestamp.setter();
  (*(v53 + 8))(v51, v52);
  (*(v78 + 8))(v35, v77);
  return (*(v54 + 8))(v44, v76);
}

uint64_t CacheNamespace.toBiomeCacheManagerNamespace()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for CacheManagerRequestInvocation.CacheManagerNamespace();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279806EF8 + v3);

  return v5(a1, v6, v4);
}

uint64_t BiomeLogEmitter.buildInsertTelemetry(cmId:state:error:)@<X0>(char *a1@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v118 = a2;
  v129 = a4;
  v130 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMd, &_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v128 = &v103 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v127 = &v103 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18CacheManagerTargetOSgMd, &_s27IntelligencePlatformLibrary18CacheManagerTargetOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v123 = &v103 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary34CacheManagerTelemetryEventMetadataVSgMd, &_s27IntelligencePlatformLibrary34CacheManagerTelemetryEventMetadataVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v122 = &v103 - v20;
  v21 = type metadata accessor for CacheManagerTarget();
  v125 = *(v21 - 8);
  v126 = v21;
  v22 = *(v125 + 64);
  MEMORY[0x28223BE20](v21, v23);
  v124 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary17CacheManagerErrorVSgMd, &_s27IntelligencePlatformLibrary17CacheManagerErrorVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v114 = &v103 - v28;
  v29 = type metadata accessor for CacheManagerInsert.Failed();
  v115 = *(v29 - 8);
  v116 = v29;
  v30 = *(v115 + 64);
  MEMORY[0x28223BE20](v29, v31);
  v113 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary17CacheManagerErrorV0F4TypeOSgMd, &_s27IntelligencePlatformLibrary17CacheManagerErrorV0F4TypeOSgMR);
  v34 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33 - 8, v35);
  v108 = &v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v109 = &v103 - v39;
  v40 = type metadata accessor for CacheManagerError();
  v111 = *(v40 - 8);
  v112 = v40;
  v41 = *(v111 + 64);
  MEMORY[0x28223BE20](v40, v42);
  v110 = &v103 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for CacheManagerInsert.Ended();
  v106 = *(v107 - 8);
  v44 = *(v106 + 64);
  MEMORY[0x28223BE20](v107, v45);
  v47 = &v103 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for CacheManagerInsert.Started();
  v104 = *(v105 - 8);
  v48 = *(v104 + 64);
  MEMORY[0x28223BE20](v105, v49);
  v51 = &v103 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for CacheManagerInsert();
  v121 = *(v131 - 8);
  v52 = *(v121 + 64);
  MEMORY[0x28223BE20](v131, v53);
  v55 = &v103 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8, v58);
  v60 = &v103 - v59;
  v61 = type metadata accessor for CacheManagerTelemetryEventMetadata();
  v119 = *(v61 - 8);
  v120 = v61;
  v62 = *(v119 + 64);
  MEMORY[0x28223BE20](v61, v63);
  v65 = &v103 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *a3;
  CacheManagerTelemetryEventMetadata.init()();
  UUID.init()();
  v67 = type metadata accessor for UUID();
  v68 = *(v67 - 8);
  v69 = *(v68 + 56);
  v69(v60, 0, 1, v67);
  CacheManagerRequestInvocation.clientTraceId.setter();
  (*(v68 + 16))(v60, v130, v67);
  v69(v60, 0, 1, v67);
  v130 = v65;
  v70 = CacheManagerTelemetryEventMetadata.cacheManagerId.setter();
  if (!v118)
  {
    CacheManagerInsert.Ended.init()();
    CacheManagerInsert.Ended.exists.setter();
    v72 = v55;
    (*(v104 + 32))(v55, v51, v105);
    v73 = MEMORY[0x277D20538];
    goto LABEL_5;
  }

  if (v118 != 1)
  {
    v76 = v110;
    MEMORY[0x259C47250](v70);
    v77 = MEMORY[0x277D20508];
    v78 = v55;
    if ((v66 - 1) >= 2)
    {
      if (v66)
      {
        v80 = type metadata accessor for CacheManagerError.ErrorType();
        v84 = *(v80 - 8);
        (*(v84 + 56))(v108, 1, 1, v80);
        v85 = *v77;
        v83 = v109;
        (*(v84 + 104))(v109, v85, v80);
        goto LABEL_11;
      }

      v77 = MEMORY[0x277D20510];
    }

    v79 = *v77;
    v80 = type metadata accessor for CacheManagerError.ErrorType();
    v81 = *(v80 - 8);
    v82 = v108;
    (*(v81 + 104))(v108, v79, v80);
    (*(v81 + 56))(v82, 0, 1, v80);
    v83 = v109;
    (*(v81 + 32))(v109, v82, v80);
LABEL_11:
    type metadata accessor for CacheManagerError.ErrorType();
    (*(*(v80 - 8) + 56))(v83, 0, 1, v80);
    v86 = MEMORY[0x259C47240](v83);
    v87 = v113;
    MEMORY[0x259C472B0](v86);
    v89 = v111;
    v88 = v112;
    v90 = v114;
    (*(v111 + 16))(v114, v76, v112);
    (*(v89 + 56))(v90, 0, 1, v88);
    CacheManagerInsert.Failed.reason.setter();
    (*(v89 + 8))(v76, v88);
    (*(v115 + 32))(v78, v87, v116);
    v73 = MEMORY[0x277D20530];
    v75 = v126;
    v74 = v127;
    v72 = v78;
    goto LABEL_12;
  }

  CacheManagerInsert.Ended.init()();
  CacheManagerInsert.Ended.exists.setter();
  v71 = v47;
  v72 = v55;
  (*(v106 + 32))(v55, v71, v107);
  v73 = MEMORY[0x277D20528];
LABEL_5:
  v75 = v126;
  v74 = v127;
LABEL_12:
  v92 = v124;
  v91 = v125;
  v94 = v122;
  v93 = v123;
  v95 = v131;
  v117 = v72;
  v96 = v121;
  (*(v121 + 104))(v72, *v73, v131);
  (*(v96 + 16))(v92, v72, v95);
  (*(v91 + 104))(v92, *MEMORY[0x277D20570], v75);
  LLMCacheManagerTelemetry.init()();
  v97 = v119;
  v98 = v120;
  (*(v119 + 16))(v94, v130, v120);
  (*(v97 + 56))(v94, 0, 1, v98);
  LLMCacheManagerTelemetry.eventMetadata.setter();
  (*(v91 + 16))(v93, v92, v75);
  (*(v91 + 56))(v93, 0, 1, v75);
  LLMCacheManagerTelemetry.target.setter();
  static Date.now.getter();
  v99 = type metadata accessor for Date();
  (*(*(v99 - 8) + 56))(v74, 0, 1, v99);
  LLMCacheManagerTelemetry.writeTimestamp.setter();
  v100 = v128;
  static MonotonicTimestamp.nowForSuspendingClock()();
  v101 = type metadata accessor for MonotonicTimestamp();
  (*(*(v101 - 8) + 56))(v100, 0, 1, v101);
  LLMCacheManagerTelemetry.monotonicTimestamp.setter();
  (*(v91 + 8))(v92, v75);
  (*(v96 + 8))(v117, v131);
  return (*(v97 + 8))(v130, v98);
}

uint64_t LLMCacheManagerError.toBiomeCacheManagerErrorType()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for CacheManagerError.ErrorType();
  v5 = *(*(v4 - 8) + 104);
  if ((v3 - 1) >= 2)
  {
    v6 = MEMORY[0x277D20510];
  }

  else
  {
    v6 = MEMORY[0x277D20508];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t BiomeLogEmitter.buildSearchTelemetry(cmId:state:listRequest:listResponse:error:)@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v147 = a4;
  v142 = a3;
  v159 = a2;
  v160 = a1;
  v158 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMd, &_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v157 = &v130 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v156 = &v130 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18CacheManagerTargetOSgMd, &_s27IntelligencePlatformLibrary18CacheManagerTargetOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v152 = &v130 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary34CacheManagerTelemetryEventMetadataVSgMd, &_s27IntelligencePlatformLibrary34CacheManagerTelemetryEventMetadataVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v151 = &v130 - v22;
  v23 = type metadata accessor for CacheManagerTarget();
  v154 = *(v23 - 8);
  v155 = v23;
  v24 = *(v154 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v153 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary17CacheManagerErrorVSgMd, &_s27IntelligencePlatformLibrary17CacheManagerErrorVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v144 = &v130 - v30;
  v31 = type metadata accessor for CacheManagerSearch.Failed();
  v145 = *(v31 - 8);
  v146 = v31;
  v32 = *(v145 + 64);
  MEMORY[0x28223BE20](v31, v33);
  v143 = &v130 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary17CacheManagerErrorV0F4TypeOSgMd, &_s27IntelligencePlatformLibrary17CacheManagerErrorV0F4TypeOSgMR);
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v35 - 8, v37);
  v137 = &v130 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v138 = &v130 - v41;
  v141 = type metadata accessor for CacheManagerError();
  v140 = *(v141 - 8);
  v42 = *(v140 + 64);
  MEMORY[0x28223BE20](v141, v43);
  v139 = &v130 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for AnnotatedCacheEntry(0);
  v136 = *(v131 - 8);
  v45 = *(v136 + 64);
  MEMORY[0x28223BE20](v131, v46);
  v130 = &v130 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18CacheManagerSearchO0deF8StrategyOSgMd, &_s27IntelligencePlatformLibrary18CacheManagerSearchO0deF8StrategyOSgMR);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8, v50);
  v135 = &v130 - v51;
  v133 = type metadata accessor for CacheManagerSearch.Ended();
  v132 = *(v133 - 8);
  v52 = *(v132 + 64);
  MEMORY[0x28223BE20](v133, v53);
  v55 = &v130 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for CacheManagerSearch.Started();
  v134 = *(v56 - 8);
  v57 = *(v134 + 64);
  MEMORY[0x28223BE20](v56, v58);
  v60 = &v130 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for CacheManagerSearch();
  v150 = *(v161 - 8);
  v61 = *(v150 + 64);
  MEMORY[0x28223BE20](v161, v62);
  v162 = &v130 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8, v66);
  v68 = &v130 - v67;
  v69 = type metadata accessor for CacheManagerTelemetryEventMetadata();
  v148 = *(v69 - 8);
  v149 = v69;
  v70 = *(v148 + 64);
  MEMORY[0x28223BE20](v69, v71);
  v73 = &v130 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *a5;
  CacheManagerTelemetryEventMetadata.init()();
  UUID.init()();
  v75 = type metadata accessor for UUID();
  v76 = *(v75 - 8);
  v77 = *(v76 + 56);
  v77(v68, 0, 1, v75);
  CacheManagerRequestInvocation.clientTraceId.setter();
  (*(v76 + 16))(v68, v160, v75);
  v77(v68, 0, 1, v75);
  v160 = v73;
  v78 = CacheManagerTelemetryEventMetadata.cacheManagerId.setter();
  if (!v159)
  {
    CacheManagerInsert.Ended.init()();
    CacheManagerInsert.Ended.exists.setter();
    v86 = v162;
    (*(v134 + 32))(v162, v60, v56);
    v97 = MEMORY[0x277D20560];
LABEL_16:
    v112 = v155;
    v111 = v156;
    v100 = v153;
    v101 = v154;
    v113 = v152;
LABEL_19:
    v121 = v150;
    v122 = v161;
    (*(v150 + 104))(v86, *v97, v161);
    (*(v121 + 16))(v100, v86, v122);
    (*(v101 + 104))(v100, *MEMORY[0x277D20578], v112);
    LLMCacheManagerTelemetry.init()();
    v124 = v148;
    v123 = v149;
    v125 = v151;
    (*(v148 + 16))(v151, v160, v149);
    (*(v124 + 56))(v125, 0, 1, v123);
    LLMCacheManagerTelemetry.eventMetadata.setter();
    (*(v101 + 16))(v113, v100, v112);
    (*(v101 + 56))(v113, 0, 1, v112);
    LLMCacheManagerTelemetry.target.setter();
    static Date.now.getter();
    v126 = type metadata accessor for Date();
    (*(*(v126 - 8) + 56))(v111, 0, 1, v126);
    LLMCacheManagerTelemetry.writeTimestamp.setter();
    v127 = v157;
    static MonotonicTimestamp.nowForSuspendingClock()();
    v128 = type metadata accessor for MonotonicTimestamp();
    (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
    LLMCacheManagerTelemetry.monotonicTimestamp.setter();
    (*(v101 + 8))(v100, v112);
    (*(v121 + 8))(v162, v161);
    return (*(v124 + 8))(v160, v123);
  }

  if (v159 != 1)
  {
    v98 = v139;
    MEMORY[0x259C47250](v78);
    v99 = MEMORY[0x277D20508];
    v100 = v153;
    v101 = v154;
    v102 = v152;
    v86 = v162;
    if ((v74 - 1) >= 2)
    {
      if (v74)
      {
        v104 = type metadata accessor for CacheManagerError.ErrorType();
        v114 = *(v104 - 8);
        (*(v114 + 56))(v137, 1, 1, v104);
        v115 = *v99;
        v109 = v138;
        (*(v114 + 104))(v138, v115, v104);
        goto LABEL_18;
      }

      v99 = MEMORY[0x277D20510];
    }

    v103 = *v99;
    v104 = type metadata accessor for CacheManagerError.ErrorType();
    v105 = *(v104 - 8);
    v106 = v100;
    v107 = v101;
    v108 = v137;
    (*(v105 + 104))(v137, v103, v104);
    (*(v105 + 56))(v108, 0, 1, v104);
    v109 = v138;
    v110 = v108;
    v101 = v107;
    v100 = v106;
    (*(v105 + 32))(v138, v110, v104);
LABEL_18:
    type metadata accessor for CacheManagerError.ErrorType();
    (*(*(v104 - 8) + 56))(v109, 0, 1, v104);
    v116 = MEMORY[0x259C47240](v109);
    v117 = v143;
    MEMORY[0x259C47390](v116);
    v118 = v140;
    v119 = v144;
    v120 = v141;
    (*(v140 + 16))(v144, v98, v141);
    (*(v118 + 56))(v119, 0, 1, v120);
    CacheManagerInsert.Failed.reason.setter();
    (*(v118 + 8))(v98, v120);
    (*(v145 + 32))(v86, v117, v146);
    v97 = MEMORY[0x277D20558];
    v112 = v155;
    v111 = v156;
    v113 = v102;
    goto LABEL_19;
  }

  v79 = v147;
  v163 = v147;

  specialized MutableCollection<>.sort(by:)(&v163);
  v80 = v163;
  CacheManagerSearch.Ended.init()();
  v81 = *(v142 + 16);
  v82 = type metadata accessor for CacheManagerSearch.CacheManagerSearchStrategy();
  v83 = *(v82 - 8);
  v84 = MEMORY[0x277D20540];
  if (!v81)
  {
    v84 = MEMORY[0x277D20548];
  }

  v85 = v135;
  (*(*(v82 - 8) + 104))(v135, *v84, v82);
  (*(v83 + 56))(v85, 0, 1, v82);
  MEMORY[0x259C47330](v85);
  v86 = v162;
  v87 = v136;
  if (v79[2] >> 31)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v163) = 0;
    CacheManagerSearch.Ended.resultCount.setter();
    v85 = v80[2];
    if (!v85)
    {
      CacheManagerSearch.Ended.highestMatchScore.setter();

      goto LABEL_15;
    }

    v88 = v80 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v89 = v131;
    v90 = &v88[*(v131 + 48)];
    v91 = *v90;
    v92 = v90[8];
    CacheManagerSearch.Ended.highestMatchScore.setter();
    if (v85 <= v80[2])
    {
      v93 = v130;
      outlined init with copy of AnnotatedCacheEntry(&v88[*(v87 + 72) * (v85 - 1)], v130);

      v94 = v93 + *(v89 + 48);
      v95 = *v94;
      v96 = *(v94 + 8);
      outlined destroy of AnnotatedCacheEntry(v93);
LABEL_15:
      CacheManagerSearch.Ended.lowestMatchScore.setter();
      (*(v132 + 32))(v86, v55, v133);
      v97 = MEMORY[0x277D20550];
      goto LABEL_16;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t SearchStrategy.toBiomeSearchStrategy()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for CacheManagerSearch.CacheManagerSearchStrategy();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D20540];
  if (!v3)
  {
    v6 = MEMORY[0x277D20548];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

Swift::Int BiomeLogEmitter.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C479E0](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BiomeLogEmitter.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C479E0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BiomeLogEmitter.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C479E0](v1);
  return Hasher._finalize()();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v3, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for AnnotatedCacheEntry(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
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
    if (v10 != a4 || v12 >= &v13[v8])
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
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int64VGMd, &_ss23_ContiguousArrayStorageCys5Int64VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

uint64_t outlined init with copy of AnnotatedCacheEntry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotatedCacheEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnnotatedCacheEntry(uint64_t a1)
{
  v2 = type metadata accessor for AnnotatedCacheEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type BiomeLogEmitter.State and conformance BiomeLogEmitter.State()
{
  result = lazy protocol witness table cache variable for type BiomeLogEmitter.State and conformance BiomeLogEmitter.State;
  if (!lazy protocol witness table cache variable for type BiomeLogEmitter.State and conformance BiomeLogEmitter.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BiomeLogEmitter.State and conformance BiomeLogEmitter.State);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BiomeLogEmitter.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BiomeLogEmitter.State(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
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
        type metadata accessor for AnnotatedCacheEntry(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
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
  v8 = type metadata accessor for AnnotatedCacheEntry(0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v35 - v16;
  result = MEMORY[0x28223BE20](v15, v18);
  v22 = &v35 - v21;
  v37 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v20 + 72);
    v25 = *a4 + v24 * (a3 - 1);
    v26 = -v24;
    v27 = a1 - a3;
    v36 = v24;
    v28 = v23 + v24 * a3;
LABEL_5:
    v40 = v25;
    v41 = a3;
    v38 = v28;
    v39 = v27;
    v29 = v27;
    while (1)
    {
      outlined init with copy of AnnotatedCacheEntry(v28, v22);
      outlined init with copy of AnnotatedCacheEntry(v25, v17);
      v30 = *(v8 + 48);
      if (v22[v30 + 8])
      {
        v31 = 0.0;
      }

      else
      {
        v31 = *&v22[v30];
      }

      v32 = &v17[v30];
      if (v32[8])
      {
        v33 = 0.0;
      }

      else
      {
        v33 = *v32;
      }

      outlined destroy of AnnotatedCacheEntry(v17);
      result = outlined destroy of AnnotatedCacheEntry(v22);
      if (v33 >= v31)
      {
LABEL_4:
        a3 = v41 + 1;
        v25 = v40 + v36;
        v27 = v39 - 1;
        v28 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v23)
      {
        break;
      }

      outlined init with take of AnnotatedCacheEntry(v28, v13);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of AnnotatedCacheEntry(v13, v25);
      v25 += v26;
      v28 += v26;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v134 = a1;
  v8 = type metadata accessor for AnnotatedCacheEntry(0);
  v144 = *(v8 - 8);
  v9 = *(v144 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v137 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v148 = &v130 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v130 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v130 - v22;
  v25 = MEMORY[0x28223BE20](v21, v24);
  v143 = &v130 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v142 = &v130 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v131 = &v130 - v32;
  result = MEMORY[0x28223BE20](v31, v33);
  v130 = &v130 - v35;
  v146 = a3;
  v36 = *(a3 + 8);
  if (v36 < 1)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_116:
    a4 = *v134;
    if (!*v134)
    {
      goto LABEL_155;
    }

    a3 = v38;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_149:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
    }

    v150 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v146)
      {
        v126 = *(result + 16 * a3);
        v127 = result;
        v128 = *(result + 16 * (a3 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v146 + *(v144 + 72) * v126, *v146 + *(v144 + 72) * *(result + 16 * (a3 - 1) + 32), *v146 + *(v144 + 72) * v128, a4);
        if (v5)
        {
        }

        if (v128 < v126)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = specialized _ArrayBuffer._consumeAndCreateNew()(v127);
        }

        if (a3 - 2 >= *(v127 + 2))
        {
          goto LABEL_143;
        }

        v129 = &v127[16 * a3];
        *v129 = v126;
        *(v129 + 1) = v128;
        v150 = v127;
        specialized Array.remove(at:)(a3 - 1);
        result = v150;
        a3 = *(v150 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_153;
    }
  }

  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  v133 = a4;
  v149 = v8;
  while (1)
  {
    v39 = v37;
    v40 = v37 + 1;
    v138 = v38;
    if (v40 >= v36)
    {
      v59 = v40;
    }

    else
    {
      v147 = v36;
      v132 = v5;
      a3 = *v146;
      v41 = *(v144 + 72);
      v42 = *v146 + v41 * v40;
      v43 = v130;
      outlined init with copy of AnnotatedCacheEntry(v42, v130);
      v44 = a3 + v41 * v39;
      v135 = v39;
      v45 = v131;
      outlined init with copy of AnnotatedCacheEntry(v44, v131);
      v46 = v8;
      v47 = *(v8 + 48);
      v48 = *(v43 + v47 + 8) ? 0.0 : *(v43 + v47);
      v49 = v45 + v47;
      v50 = *(v49 + 8) ? 0.0 : *v49;
      outlined destroy of AnnotatedCacheEntry(v45);
      result = outlined destroy of AnnotatedCacheEntry(v43);
      v51 = v135 + 2;
      v145 = v41;
      v52 = a3 + v41 * (v135 + 2);
      while (v147 != v51)
      {
        a3 = v50 < v48;
        v53 = v142;
        outlined init with copy of AnnotatedCacheEntry(v52, v142);
        v54 = v143;
        outlined init with copy of AnnotatedCacheEntry(v42, v143);
        v55 = *(v46 + 48);
        if (*(v53 + v55 + 8))
        {
          v56 = 0.0;
        }

        else
        {
          v56 = *(v53 + v55);
        }

        v57 = v54 + v55;
        if (*(v57 + 8))
        {
          v58 = 0.0;
        }

        else
        {
          v58 = *v57;
        }

        outlined destroy of AnnotatedCacheEntry(v54);
        result = outlined destroy of AnnotatedCacheEntry(v53);
        ++v51;
        v52 += v145;
        v42 += v145;
        if (v50 < v48 == v58 >= v56)
        {
          v59 = v51 - 1;
          goto LABEL_23;
        }
      }

      v59 = v147;
LABEL_23:
      v8 = v46;
      v39 = v135;
      a4 = v133;
      if (v50 >= v48)
      {
        v5 = v132;
      }

      else
      {
        v5 = v132;
        if (v59 < v135)
        {
          goto LABEL_146;
        }

        if (v135 < v59)
        {
          v60 = v145 * (v59 - 1);
          v61 = v59;
          v62 = v59 * v145;
          v147 = v59;
          v63 = v135;
          v64 = v135 * v145;
          do
          {
            if (v63 != --v61)
            {
              a3 = *v146;
              if (!*v146)
              {
                goto LABEL_152;
              }

              outlined init with take of AnnotatedCacheEntry(a3 + v64, v137);
              if (v64 < v60 || a3 + v64 >= a3 + v62)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v64 != v60)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = outlined init with take of AnnotatedCacheEntry(v137, a3 + v60);
            }

            ++v63;
            v60 -= v145;
            v62 -= v145;
            v64 += v145;
          }

          while (v63 < v61);
          v5 = v132;
          a4 = v133;
          v8 = v149;
          v39 = v135;
          v59 = v147;
        }
      }
    }

    v65 = v146[1];
    if (v59 < v65)
    {
      if (__OFSUB__(v59, v39))
      {
        goto LABEL_145;
      }

      if (v59 - v39 < a4)
      {
        if (__OFADD__(v39, a4))
        {
          goto LABEL_147;
        }

        if (v39 + a4 >= v65)
        {
          v66 = v146[1];
        }

        else
        {
          v66 = v39 + a4;
        }

        if (v66 < v39)
        {
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (v59 != v66)
        {
          break;
        }
      }
    }

    v67 = v59;
    if (v59 < v39)
    {
      goto LABEL_144;
    }

LABEL_48:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v38 = v138;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v138 + 2) + 1, 1, v138);
      v38 = result;
    }

    a3 = *(v38 + 2);
    v68 = *(v38 + 3);
    v69 = a3 + 1;
    if (a3 >= v68 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), a3 + 1, 1, v38);
      v38 = result;
    }

    *(v38 + 2) = v69;
    v70 = &v38[16 * a3];
    *(v70 + 4) = v39;
    *(v70 + 5) = v67;
    a4 = *v134;
    if (!*v134)
    {
      goto LABEL_154;
    }

    v139 = v67;
    if (a3)
    {
      while (1)
      {
        v71 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v72 = *(v38 + 4);
          v73 = *(v38 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_67:
          if (v75)
          {
            goto LABEL_133;
          }

          v88 = &v38[16 * v69];
          v90 = *v88;
          v89 = *(v88 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_136;
          }

          v94 = &v38[16 * v71 + 32];
          v96 = *v94;
          v95 = *(v94 + 1);
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_140;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              v71 = v69 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v98 = &v38[16 * v69];
        v100 = *v98;
        v99 = *(v98 + 1);
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_81:
        if (v93)
        {
          goto LABEL_135;
        }

        v101 = &v38[16 * v71];
        v103 = *(v101 + 4);
        v102 = *(v101 + 5);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_138;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_88:
        a3 = v71 - 1;
        if (v71 - 1 >= v69)
        {
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v146)
        {
          goto LABEL_151;
        }

        v109 = v38;
        v110 = *&v38[16 * a3 + 32];
        v111 = *&v38[16 * v71 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v146 + *(v144 + 72) * v110, *v146 + *(v144 + 72) * *&v38[16 * v71 + 32], *v146 + *(v144 + 72) * v111, a4);
        if (v5)
        {
        }

        if (v111 < v110)
        {
          goto LABEL_129;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v112 = v109;
        }

        else
        {
          v112 = specialized _ArrayBuffer._consumeAndCreateNew()(v109);
        }

        v8 = v149;
        if (a3 >= *(v112 + 2))
        {
          goto LABEL_130;
        }

        v113 = &v112[16 * a3];
        *(v113 + 4) = v110;
        *(v113 + 5) = v111;
        v150 = v112;
        result = specialized Array.remove(at:)(v71);
        v38 = v150;
        v69 = *(v150 + 16);
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = &v38[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_131;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_132;
      }

      v83 = &v38[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_134;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_137;
      }

      if (v87 >= v79)
      {
        v105 = &v38[16 * v71 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_141;
        }

        if (v74 < v108)
        {
          v71 = v69 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

LABEL_3:
    v36 = v146[1];
    v37 = v139;
    a4 = v133;
    if (v139 >= v36)
    {
      goto LABEL_116;
    }
  }

  v132 = v5;
  a3 = *v146;
  v114 = *(v144 + 72);
  v115 = *v146 + v114 * (v59 - 1);
  v116 = v39;
  v117 = -v114;
  v135 = v116;
  v136 = v114;
  v118 = v116 - v59;
  a4 = a3 + v59 * v114;
  v139 = v66;
LABEL_100:
  v147 = v59;
  v140 = a4;
  v141 = v118;
  v145 = v115;
  v119 = v149;
  while (1)
  {
    outlined init with copy of AnnotatedCacheEntry(a4, v23);
    outlined init with copy of AnnotatedCacheEntry(v115, v19);
    v120 = *(v119 + 48);
    if (v23[v120 + 8])
    {
      v121 = 0.0;
    }

    else
    {
      v121 = *&v23[v120];
    }

    v122 = &v19[v120];
    if (v122[8])
    {
      v123 = 0.0;
    }

    else
    {
      v123 = *v122;
    }

    outlined destroy of AnnotatedCacheEntry(v19);
    result = outlined destroy of AnnotatedCacheEntry(v23);
    if (v123 >= v121)
    {
LABEL_99:
      v59 = v147 + 1;
      v115 = v145 + v136;
      v118 = v141 - 1;
      a4 = v140 + v136;
      v67 = v139;
      if (v147 + 1 != v139)
      {
        goto LABEL_100;
      }

      v5 = v132;
      v8 = v149;
      v39 = v135;
      if (v139 < v135)
      {
        goto LABEL_144;
      }

      goto LABEL_48;
    }

    if (!a3)
    {
      break;
    }

    v124 = v148;
    outlined init with take of AnnotatedCacheEntry(a4, v148);
    v119 = v149;
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of AnnotatedCacheEntry(v124, v115);
    v115 += v117;
    a4 += v117;
    if (__CFADD__(v118++, 1))
    {
      goto LABEL_99;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = type metadata accessor for AnnotatedCacheEntry(0);
  v8 = *(*(v57 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v57, v9);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v55 = &v50 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v50 - v17;
  result = MEMORY[0x28223BE20](v16, v19);
  v22 = &v50 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_73;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_74;
  }

  v26 = (a2 - a1) / v24;
  v59 = a4;
  v60 = a1;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v28;
    if (v28 >= 1)
    {
      v36 = -v24;
      v37 = a4 + v28;
      v53 = v36;
      v54 = a1;
      while (2)
      {
        while (1)
        {
          v51 = v35;
          v38 = a2;
          v39 = a2 + v36;
          while (1)
          {
            if (v38 <= v54)
            {
              v60 = v38;
              v58 = v51;
              goto LABEL_71;
            }

            v40 = a3;
            v52 = v35;
            v41 = v53;
            v42 = v37 + v53;
            v43 = v55;
            outlined init with copy of AnnotatedCacheEntry(v37 + v53, v55);
            a2 = v39;
            v44 = v39;
            v45 = v56;
            outlined init with copy of AnnotatedCacheEntry(v44, v56);
            v46 = *(v57 + 48);
            v47 = *(v43 + v46 + 8) ? 0.0 : *(v43 + v46);
            v48 = v45 + v46;
            v49 = *(v48 + 8) ? 0.0 : *v48;
            a3 = v40 + v41;
            outlined destroy of AnnotatedCacheEntry(v45);
            outlined destroy of AnnotatedCacheEntry(v43);
            if (v49 < v47)
            {
              break;
            }

            v35 = v42;
            if (v40 < v37 || a3 >= v37)
            {
              swift_arrayInitWithTakeFrontToBack();
              v39 = a2;
            }

            else
            {
              v39 = a2;
              if (v40 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v37 = v42;
            if (v42 <= a4)
            {
              a2 = v38;
              goto LABEL_70;
            }
          }

          if (v40 < v38 || a3 >= v38)
          {
            break;
          }

          v35 = v52;
          v36 = v53;
          if (v40 != v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v37 <= a4)
          {
            goto LABEL_70;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v35 = v52;
        v36 = v53;
        if (v37 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_70:
    v60 = a2;
    v58 = v35;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v27;
    v58 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      do
      {
        outlined init with copy of AnnotatedCacheEntry(a2, v22);
        outlined init with copy of AnnotatedCacheEntry(a4, v18);
        v31 = *(v57 + 48);
        if (v22[v31 + 8])
        {
          v32 = 0.0;
        }

        else
        {
          v32 = *&v22[v31];
        }

        v33 = &v18[v31];
        if (v33[8])
        {
          v34 = 0.0;
        }

        else
        {
          v34 = *v33;
        }

        outlined destroy of AnnotatedCacheEntry(v18);
        outlined destroy of AnnotatedCacheEntry(v22);
        if (v34 >= v32)
        {
          if (a1 < a4 || a1 >= a4 + v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v59 = a4 + v24;
          a4 += v24;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        a1 += v24;
        v60 = a1;
      }

      while (a4 < v29 && a2 < a3);
    }
  }

LABEL_71:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v60, &v59, &v58);
  return 1;
}

uint64_t outlined init with take of AnnotatedCacheEntry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotatedCacheEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id UniversalEmbeddingProvider.init()()
{
  v0 = [objc_opt_self() service];

  return v0;
}

Swift::Void __swiftcall UniversalEmbeddingProvider.warmup()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v8 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v9 = [objc_allocWithZone(MEMORY[0x277D26890]) init];
  [v9 setExtendedContextLength_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_255A4C840;
  *(v10 + 32) = v9;
  type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextRequest, 0x277D268A8);
  v11 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = closure #1 in UniversalEmbeddingProvider.warmup();
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);
  v14 = [v1 prewarmTextRequests:isa completionHandler:v13];
  _Block_release(v13);

  if (v14 == -1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.logger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_255A20000, v16, v17, "Failed to request text embedding prewarming", v18, 2u);
      MEMORY[0x259C47EC0](v18, -1, -1);
    }
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v7, v2);
}

void closure #1 in UniversalEmbeddingProvider.warmup()(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.logger);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_255A20000, v5, v6, "Failed to prewarm text embedding, error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x259C47EC0](v8, -1, -1);
      MEMORY[0x259C47EC0](v7, -1, -1);

      return;
    }

    v15 = a1;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.logger);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_255A20000, oslog, v13, "Finished prewarming text embedding", v14, 2u);
      MEMORY[0x259C47EC0](v14, -1, -1);
    }

    v15 = oslog;
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t UniversalEmbeddingProvider.dimension()(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for OSSignpostID();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](UniversalEmbeddingProvider.dimension(), 0, 0);
}

uint64_t UniversalEmbeddingProvider.dimension()()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = static Logger.log;
  v0[7] = static Logger.log;
  v4 = v3;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v5 = [objc_allocWithZone(MEMORY[0x277D26890]) init];
  v0[8] = v5;
  [v5 setExtendedContextLength_];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = UniversalEmbeddingProvider.dimension();
  v9 = MEMORY[0x277D83B88];

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x6F69736E656D6964, 0xEB0000000029286ELL, partial apply for closure #1 in UniversalEmbeddingProvider.dimension(), v6, v9);
}

{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](UniversalEmbeddingProvider.dimension(), 0, 0);
}

{
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);

  v5 = *(v0 + 16);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6(v5);
}

void closure #1 in UniversalEmbeddingProvider.dimension()(uint64_t a1, void *a2, void *a3)
{
  v23 = a1;
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySis5NeverOGMd, &_sScCySis5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  v22 = xmmword_255A4C840;
  *(v10 + 16) = xmmword_255A4C840;
  *(v10 + 32) = a3;
  type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextRequest, 0x277D268A8);
  v11 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = swift_allocObject();
  *(v13 + 16) = v22;
  v14 = objc_allocWithZone(MEMORY[0x277D268A0]);
  v15 = MEMORY[0x259C47620](0x6F77206F6C6C6568, 0xEB00000000646C72);
  v16 = [v14 initWithText_];

  *(v13 + 32) = v16;
  type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextInput, 0x277D268A0);
  v17 = Array._bridgeToObjectiveC()().super.isa;

  (*(v5 + 16))(v9, v23, v4);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  (*(v5 + 32))(v19 + v18, v9, v4);
  *(v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  aBlock[4] = partial apply for closure #1 in closure #1 in UniversalEmbeddingProvider.dimension();
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_15;
  v20 = _Block_copy(aBlock);
  v21 = v11;

  [v24 performRequests:isa textInputs:v17 completionHandler:v20];
  _Block_release(v20);
}

void closure #1 in closure #1 in UniversalEmbeddingProvider.dimension()(int a1, id a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v8 = a2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.logger);
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v38 = v14;
      *v13 = 67109378;
      *(v13 + 4) = a1;
      *(v13 + 8) = 2080;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v38);

      *(v13 + 10) = v17;
      _os_log_impl(&dword_255A20000, v11, v12, "Failed to fetch dimension for request id %d, error: %s", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x259C47EC0](v14, -1, -1);
      MEMORY[0x259C47EC0](v13, -1, -1);
    }

    v38 = 512;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySis5NeverOGMd, &_sScCySis5NeverOGMR);
    CheckedContinuation.resume(returning:)();

    if (a1 == -1)
    {
      goto LABEL_35;
    }

    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.logger);
  v20 = a4;
  v21 = Logger.logObject.getter();
  LOBYTE(v22) = static os_log_type_t.default.getter();
  v23 = &selRef_performRequests_textInputs_completionHandler_;
  if (!os_log_type_enabled(v21, v22))
  {

    v21 = v20;
    goto LABEL_17;
  }

  v4 = swift_slowAlloc();
  *v4 = 67109376;
  *(v4 + 1) = a1;
  *(v4 + 4) = 2048;
  i = [v20 embeddingResults];
  if (!i)
  {
    goto LABEL_15;
  }

  type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextEmbeddingResult, 0x277D26898);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x259C47870](v37))
  {

LABEL_15:
    *(v4 + 10) = i;

    _os_log_impl(&dword_255A20000, v21, v22, "Finished fetching dimension for request id %d and got back %ld results", v4, 0x12u);
    MEMORY[0x259C47EC0](v4, -1, -1);
LABEL_17:

    v25 = [v20 v23[1]];
    v23 = 0x281330000;
    if (!v25)
    {
      break;
    }

    v21 = v25;
    type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextEmbeddingResult, 0x277D26898);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      if (v20 < 0)
      {
        v32 = v20;
      }

      else
      {
        v32 = v20 & 0xFFFFFFFFFFFFFF8;
      }

      if (!MEMORY[0x259C47870](v32))
      {
LABEL_33:

        break;
      }
    }

    else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x259C47850](0, v20);
    }

    else
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v26 = *(v20 + 32);
    }

    v27 = v26;

    v20 = v27;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v5 = &selRef_performRequests_textInputs_completionHandler_;
    if (os_log_type_enabled(v28, v29))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      v4 = [v20 embedding];
      v30 = [v4 type];

      *(v22 + 4) = v30;
      _os_log_impl(&dword_255A20000, v28, v29, "Embedding is of type %lu for this hardware", v22, 0xCu);
      MEMORY[0x259C47EC0](v22, -1, -1);
    }

    else
    {

      v28 = v20;
    }

    v21 = [v20 embedding];
    v31 = [v21 count];

    if ((v31 & 0x8000000000000000) == 0)
    {
      v38 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySis5NeverOGMd, &_sScCySis5NeverOGMR);
      CheckedContinuation.resume(returning:)();

      if (a1 != -1)
      {
        return;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    if (v5 < 0)
    {
      v37 = v5;
    }

    else
    {
      v37 = v5 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v38 = 512;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySis5NeverOGMd, &_sScCySis5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  if (a1 != -1)
  {
    return;
  }

LABEL_35:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.logger);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_255A20000, v34, v35, "Failed to request text embedding", v36, 2u);
    MEMORY[0x259C47EC0](v36, -1, -1);
  }
}

void thunk for @escaping @callee_guaranteed (@unowned Int32, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t UniversalEmbeddingProvider.embedding(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for OSSignpostID();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](UniversalEmbeddingProvider.embedding(input:), 0, 0);
}

uint64_t UniversalEmbeddingProvider.embedding(input:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = static Logger.log;
  v0[10] = static Logger.log;
  v6 = v5;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = [objc_allocWithZone(MEMORY[0x277D26890]) init];
  v0[11] = v7;
  [v7 setExtendedContextLength_];
  v8 = swift_task_alloc();
  v0[12] = v8;
  v8[2] = v3;
  v8[3] = v7;
  v8[4] = v4;
  v8[5] = v2;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = UniversalEmbeddingProvider.embedding(input:);
  v11 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000011, 0x8000000255A4D6E0, partial apply for closure #1 in UniversalEmbeddingProvider.embedding(input:), v8, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = UniversalEmbeddingProvider.embedding(input:);
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = UniversalEmbeddingProvider.embedding(input:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);

  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v2, v4);

  v7 = *(v0 + 8);

  return v7(v5, v6);
}

{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v5 + 8))(v3, v4);

  v6 = *(v0 + 8);
  v7 = *(v0 + 112);

  return v6();
}

void closure #1 in UniversalEmbeddingProvider.embedding(input:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v29 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v26 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  v26 = xmmword_255A4C840;
  *(v14 + 16) = xmmword_255A4C840;
  *(v14 + 32) = a3;
  type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextRequest, 0x277D268A8);
  v15 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = swift_allocObject();
  *(v16 + 16) = v26;
  v17 = objc_allocWithZone(MEMORY[0x277D268A0]);
  v18 = MEMORY[0x259C47620](a4, a5);
  v19 = [v17 initWithText_];

  *(v16 + 32) = v19;
  type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextInput, 0x277D268A0);
  v20 = Array._bridgeToObjectiveC()().super.isa;

  (*(v9 + 16))(v13, v28, v8);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v13, v8);
  *(v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  aBlock[4] = partial apply for closure #1 in closure #1 in UniversalEmbeddingProvider.embedding(input:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_9;
  v23 = _Block_copy(aBlock);
  v24 = v15;

  v25 = isa;
  [v29 performRequests:isa textInputs:v20 completionHandler:v23];
  _Block_release(v23);
}

void closure #1 in closure #1 in UniversalEmbeddingProvider.embedding(input:)(int a1, id a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.logger);
    v22 = a4;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = &selRef_performRequests_textInputs_completionHandler_;
    if (!os_log_type_enabled(v23, v24))
    {

      v23 = v22;
      goto LABEL_17;
    }

    v4 = swift_slowAlloc();
    *v4 = 67109376;
    *(v4 + 4) = a1;
    *(v4 + 8) = 2048;
    i = [v22 embeddingResults];
    if (!i)
    {
      goto LABEL_15;
    }

    type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextEmbeddingResult, 0x277D26898);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_42;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x259C47870](v48))
    {

LABEL_15:
      *(v4 + 10) = i;

      _os_log_impl(&dword_255A20000, v23, v24, "Finished generating embedding for request id %d and got back %ld results", v4, 0x12u);
      MEMORY[0x259C47EC0](v4, -1, -1);
LABEL_17:

      v27 = [v22 v25[1]];
      v25 = 0x281330000;
      if (!v27)
      {
        goto LABEL_33;
      }

      v23 = v27;
      type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextEmbeddingResult, 0x277D26898);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v22 >> 62)
      {
        if (v22 < 0)
        {
          v41 = v22;
        }

        else
        {
          v41 = v22 & 0xFFFFFFFFFFFFFF8;
        }

        if (!MEMORY[0x259C47870](v41))
        {
LABEL_32:

LABEL_33:
          lazy protocol witness table accessor for type EmbeddingError and conformance EmbeddingError();
          v42 = swift_allocError();
          *v43 = 1;
          v49[0] = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
          CheckedContinuation.resume(throwing:)();
          if (a1 != -1)
          {
            return;
          }

          goto LABEL_34;
        }
      }

      else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v28 = *(v22 + 32);
        goto LABEL_23;
      }

      __break(1u);
LABEL_42:
      if (v5 < 0)
      {
        v48 = v5;
      }

      else
      {
        v48 = v5 & 0xFFFFFFFFFFFFFF8;
      }
    }

    v28 = MEMORY[0x259C47850](0, v22);
LABEL_23:
    v29 = v28;

    v30 = v29;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      v34 = [v30 embedding];
      v35 = [v34 type];

      *(v33 + 4) = v35;
      _os_log_impl(&dword_255A20000, v31, v32, "Embedding is of type %lu for this hardware", v33, 0xCu);
      MEMORY[0x259C47EC0](v33, -1, -1);
    }

    else
    {

      v31 = v30;
    }

    v36 = [v30 embedding];
    v37 = [v36 data];

    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v49[0] = v38;
    v49[1] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
    CheckedContinuation.resume(returning:)();

    if (a1 != -1)
    {
      return;
    }

    goto LABEL_34;
  }

  v8 = a2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.logger);
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v49[0] = v14;
    *v13 = 67109378;
    *(v13 + 4) = a1;
    *(v13 + 8) = 2080;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v49);

    *(v13 + 10) = v17;
    _os_log_impl(&dword_255A20000, v11, v12, "Failed to generate embedding for request id %d, error: %s", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x259C47EC0](v14, -1, -1);
    MEMORY[0x259C47EC0](v13, -1, -1);
  }

  lazy protocol witness table accessor for type EmbeddingError and conformance EmbeddingError();
  v18 = swift_allocError();
  *v19 = 1;
  v49[0] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  CheckedContinuation.resume(throwing:)();

  if (a1 == -1)
  {
LABEL_34:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.logger);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_255A20000, v45, v46, "Failed to request text embedding", v47, 2u);
      MEMORY[0x259C47EC0](v47, -1, -1);
    }
  }
}

uint64_t protocol witness for EmbeddingProviding.dimension() in conformance UniversalEmbeddingProvider()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for EmbeddingProviding.dimension() in conformance UniversalEmbeddingProvider;

  return UniversalEmbeddingProvider.dimension()(v2);
}

uint64_t protocol witness for EmbeddingProviding.dimension() in conformance UniversalEmbeddingProvider(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t protocol witness for EmbeddingProviding.embedding(input:) in conformance UniversalEmbeddingProvider(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for EmbeddingProviding.embedding(input:) in conformance UniversalEmbeddingProvider;

  return UniversalEmbeddingProvider.embedding(input:)(a1, a2, v6);
}

{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

unint64_t lazy protocol witness table accessor for type EmbeddingError and conformance EmbeddingError()
{
  result = lazy protocol witness table cache variable for type EmbeddingError and conformance EmbeddingError;
  if (!lazy protocol witness table cache variable for type EmbeddingError and conformance EmbeddingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddingError and conformance EmbeddingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmbeddingError and conformance EmbeddingError;
  if (!lazy protocol witness table cache variable for type EmbeddingError and conformance EmbeddingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddingError and conformance EmbeddingError);
  }

  return result;
}

uint64_t type metadata accessor for MADTextRequest(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in UniversalEmbeddingProvider.embedding(input:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, v5 + v9, v10);
}

uint64_t ListRequest.searchKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ListRequest.loggingTraceId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListRequest() + 24);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ListRequest()
{
  result = type metadata singleton initialization cache for ListRequest;
  if (!type metadata singleton initialization cache for ListRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ListRequest.init(searchKey:strategy:maxResult:loggingTraceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  v10 = type metadata accessor for ListRequest();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for UUID();
  result = (*(*(v12 - 8) + 32))(a6 + v11, a5, v12);
  *(a6 + *(v10 + 28)) = a4;
  return result;
}

uint64_t ListRequest.init(searchKey:strategy:loggingTraceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  v8 = type metadata accessor for ListRequest();
  v9 = *(v8 + 24);
  v10 = type metadata accessor for UUID();
  result = (*(*(v10 - 8) + 32))(a5 + v9, a4, v10);
  *(a5 + *(v8 + 28)) = 1;
  return result;
}

uint64_t ListRequest.init(searchKey:strategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  v6 = type metadata accessor for ListRequest();
  v7 = a4 + *(v6 + 24);
  result = UUID.init()();
  *(a4 + *(v6 + 28)) = 1;
  return result;
}

LLMCache::SearchStrategy_optional __swiftcall SearchStrategy.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchStrategy.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t SearchStrategy.rawValue.getter()
{
  if (*v0)
  {
    result = 0x74614D7463617865;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

unint64_t lazy protocol witness table accessor for type SearchStrategy and conformance SearchStrategy()
{
  result = lazy protocol witness table cache variable for type SearchStrategy and conformance SearchStrategy;
  if (!lazy protocol witness table cache variable for type SearchStrategy and conformance SearchStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchStrategy and conformance SearchStrategy);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SearchStrategy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SearchStrategy()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SearchStrategy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SearchStrategy@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchStrategy.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SearchStrategy(unint64_t *a1@<X8>)
{
  v2 = 0x8000000255A4D590;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x74614D7463617865;
    v2 = 0xEA00000000006863;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SearchStrategy(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x74614D7463617865;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = 0x8000000255A4D590;
  }

  else
  {
    v5 = 0xEA00000000006863;
  }

  if (*a2)
  {
    v6 = 0x74614D7463617865;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006863;
  }

  else
  {
    v7 = 0x8000000255A4D590;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t type metadata completion function for ListRequest()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of CacheDatabase.delete(entries:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of CacheDatabase.delete(entries:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CacheDatabase.delete(entries:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of CacheDatabase.describe(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CacheDatabase.insert(entries:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CacheDatabase.list(namespace:searchKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of CacheDatabase.list(namespace:searchKey:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CacheDatabase.list(namespace:searchKey:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of CacheDatabase.listAll(namespace:nextToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of CacheDatabase.listAll(namespace:nextToken:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CacheDatabase.deleteAll(namespace:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CacheDatabase.warmup()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v9(a1, a2);
}

uint64_t LLMCacheManaging.pruneExpiredEntries()()
{
  return MEMORY[0x2822009F8](LLMCacheManaging.pruneExpiredEntries(), 0, 0);
}

{
  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

{
  return MEMORY[0x2822009F8](LLMCacheManaging.pruneExpiredEntries(), 0, 0);
}

unint64_t lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError()
{
  result = lazy protocol witness table cache variable for type LLMCacheManagerError and conformance LLMCacheManagerError;
  if (!lazy protocol witness table cache variable for type LLMCacheManagerError and conformance LLMCacheManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMCacheManagerError and conformance LLMCacheManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMCacheManagerError and conformance LLMCacheManagerError;
  if (!lazy protocol witness table cache variable for type LLMCacheManagerError and conformance LLMCacheManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMCacheManagerError and conformance LLMCacheManagerError);
  }

  return result;
}

uint64_t outlined init with copy of CacheDatabase(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LLMCacheManager.__allocating_init(namespace:databasePath:)(_BYTE *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v2 + 136) = a2;
  v4 = type metadata accessor for URL();
  *(v2 + 144) = v4;
  v5 = *(v4 - 8);
  *(v2 + 152) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  *(v2 + 168) = v7;
  v8 = *(v7 - 8);
  *(v2 + 176) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 240) = *a1;
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](LLMCacheManager.__allocating_init(namespace:databasePath:), 0, 0);
}

uint64_t LLMCacheManager.__allocating_init(namespace:databasePath:)()
{
  v43 = v0;
  v42[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[17];
  v3 = static Logger.log;
  v0[24] = static Logger.log;
  v4 = v3;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v5 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v0[15] = 0;
  v9 = [v5 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:v0 + 15];

  v10 = v0[15];
  if (v9)
  {
    (*(v0[19] + 16))(v0[20], v0[17], v0[18]);
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 service];
    v0[5] = &type metadata for UniversalEmbeddingProvider;
    v0[6] = &protocol witness table for UniversalEmbeddingProvider;
    v0[2] = v13;
    v0[25] = type metadata accessor for VectorDatabaseAccess();
    swift_allocObject();
    v14 = swift_task_alloc();
    v0[26] = v14;
    *v14 = v0;
    v14[1] = LLMCacheManager.__allocating_init(namespace:databasePath:);
    v15 = v0[20];
    v16 = *MEMORY[0x277D85DE8];

    return VectorDatabaseAccess.init(path:embeddingProvider:)(v15, (v0 + 2));
  }

  else
  {
    v18 = v10;
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.logger);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42[0] = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v27 = v0[12];
      v26 = v0[13];
      v28 = v0[14];
      v29 = Error.localizedDescription.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v42);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_255A20000, v22, v23, "Failed to initialize LLMCacheManager: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x259C47EC0](v25, -1, -1);
      MEMORY[0x259C47EC0](v24, -1, -1);
    }

    v33 = v0[23];
    v32 = v0[24];
    v34 = v0[21];
    v35 = v0[22];
    v36 = v0[19];
    v41 = v0[20];
    v38 = v0[17];
    v37 = v0[18];
    swift_willThrow();
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v36 + 8))(v38, v37);
    (*(v35 + 8))(v33, v34);

    v39 = v0[1];
    v40 = *MEMORY[0x277D85DE8];

    return v39();
  }
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 240);
  type metadata accessor for BiomeLogEmitter();
  v4 = swift_allocObject();
  *(v0 + 80) = v2;
  *(v0 + 88) = &protocol witness table for VectorDatabaseAccess;
  *(v0 + 56) = v1;
  type metadata accessor for LLMCacheManager();
  v5 = swift_allocObject();
  *(v0 + 232) = v5;
  swift_defaultActor_initialize();
  *(v5 + 112) = v3;
  _s8LLMCache13CacheDatabase_pWOb_0((v0 + 56), v5 + 120);
  *(v5 + 160) = 0x416DA9C000000000;
  *(v5 + 168) = v4;
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](LLMCacheManager.__allocating_init(namespace:databasePath:), v5, 0);
}

{
  v17 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255A20000, v2, v3, "LLMCacheManager init completed", v4, 2u);
    MEMORY[0x259C47EC0](v4, -1, -1);
  }

  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  v12 = v0[17];
  v11 = v0[18];

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v10 + 8))(v12, v11);
  (*(v8 + 8))(v6, v7);

  v13 = v0[1];
  v14 = v0[29];
  v15 = *MEMORY[0x277D85DE8];

  return v13(v14);
}

{
  v26 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = v0[27];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.logger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[14];
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v25);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_255A20000, v4, v5, "Failed to initialize LLMCacheManager: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x259C47EC0](v7, -1, -1);
    MEMORY[0x259C47EC0](v6, -1, -1);
  }

  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[21];
  v17 = v0[22];
  v18 = v0[19];
  v24 = v0[20];
  v20 = v0[17];
  v19 = v0[18];
  swift_willThrow();
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v18 + 8))(v20, v19);
  (*(v17 + 8))(v15, v16);

  v21 = v0[1];
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t LLMCacheManager.__allocating_init(namespace:databasePath:)(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 208);
  v10 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v6 = LLMCacheManager.__allocating_init(namespace:databasePath:);
  }

  else
  {
    *(v4 + 224) = a1;
    v6 = LLMCacheManager.__allocating_init(namespace:databasePath:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t LLMCacheManager.__allocating_init(namespace:databaseAccess:ttl:logEmitter:)(_BYTE *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = a2[3];
  v12 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v13, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = specialized LLMCacheManager.__allocating_init(namespace:databaseAccess:ttl:logEmitter:)(a1, v16, a3, a4 & 1, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v18;
}

uint64_t LLMCacheManager.init(namespace:databaseAccess:ttl:logEmitter:)(char *a1, __int128 *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = *a1;
  swift_defaultActor_initialize();
  *(v5 + 112) = v10;
  _s8LLMCache13CacheDatabase_pWOb_0(a2, v5 + 120);
  v11 = *&a3;
  if (a4)
  {
    v11 = 15552000.0;
  }

  *(v5 + 160) = v11;
  *(v5 + 168) = a5;
  return v5;
}

uint64_t LLMCacheManager.list(with:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[20] = v5;
  v6 = *(v5 - 8);
  v3[21] = v6;
  v7 = *(v6 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v8 = type metadata accessor for AnnotatedCacheEntry(0);
  v3[24] = v8;
  v9 = *(v8 - 8);
  v3[25] = v9;
  v10 = *(v9 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v3[31] = v11;
  v12 = *(v11 - 8);
  v3[32] = v12;
  v13 = *(v12 + 64) + 15;
  v3[33] = swift_task_alloc();
  v14 = type metadata accessor for ListRequest();
  v3[34] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v16 = type metadata accessor for OSSignpostID();
  v3[37] = v16;
  v17 = *(v16 - 8);
  v3[38] = v17;
  v18 = *(v17 + 64) + 15;
  v3[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMCacheManager.list(with:), v2, 0);
}

uint64_t LLMCacheManager.list(with:)()
{
  v51 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v5 = *(v0 + 136);
  v6 = type metadata accessor for Logger();
  *(v0 + 320) = __swift_project_value_buffer(v6, static Logger.logger);
  outlined init with copy of ListRequest(v5, v4, type metadata accessor for ListRequest);
  outlined init with copy of ListRequest(v5, v3, type metadata accessor for ListRequest);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 280);
  v11 = *(v0 + 288);
  if (v9)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50 = v13;
    *v12 = 136315394;
    v14 = *v11;
    v15 = v11[1];

    outlined destroy of ListRequest(v11, type metadata accessor for ListRequest);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v50);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    if (*(v10 + 16))
    {
      v17 = 0x74614D7463617865;
    }

    else
    {
      v17 = 0xD000000000000010;
    }

    if (*(v10 + 16))
    {
      v18 = 0xEA00000000006863;
    }

    else
    {
      v18 = 0x8000000255A4D590;
    }

    outlined destroy of ListRequest(v10, type metadata accessor for ListRequest);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v50);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_255A20000, v7, v8, "LLMCacheManager entering list with search key: %s, strategy: %s...", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C47EC0](v13, -1, -1);
    MEMORY[0x259C47EC0](v12, -1, -1);
  }

  else
  {

    outlined destroy of ListRequest(v10, type metadata accessor for ListRequest);
    outlined destroy of ListRequest(v11, type metadata accessor for ListRequest);
  }

  v20 = *(v0 + 144);
  if (LLMCacheManager.isEnabled()())
  {
    v21 = *(v0 + 264);
    v22 = *(v0 + 272);
    v23 = *(v0 + 136);
    v24 = *(v0 + 144);
    v25 = *(v24 + 168);
    *(v0 + 328) = v25;
    v26 = *(v22 + 24);
    v49 = *(v24 + 112);
    (*(*v25 + 112))(&v23[v26], &v49, v23);
    v27 = *(v24 + 144);
    v28 = *(v24 + 152);
    __swift_project_boxed_opaque_existential_1((v24 + 120), v27);
    *(v0 + 432) = *(v24 + 112);
    v29 = *v23;
    *(v0 + 336) = *v23;
    v30 = *(v23 + 1);
    *(v0 + 344) = v30;
    v31 = *(v28 + 32);
    v47 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 352) = v33;
    *v33 = v0;
    v33[1] = LLMCacheManager.list(with:);

    return v47(v0 + 432, v29, v30, v27, v28);
  }

  else
  {
    v35 = *(v0 + 312);
    **(v0 + 128) = MEMORY[0x277D84F90];
    $defer #1 () in LLMCacheManager.list(with:)(v35, "LLMCacheManager.list", 20, "LLMCacheManager leaving list...");
    v36 = *(v0 + 288);
    v37 = *(v0 + 280);
    v38 = *(v0 + 264);
    v40 = *(v0 + 232);
    v39 = *(v0 + 240);
    v42 = *(v0 + 216);
    v41 = *(v0 + 224);
    v43 = *(v0 + 208);
    v45 = *(v0 + 184);
    v46 = *(v0 + 176);
    v48 = *(v0 + 152);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

    v44 = *(v0 + 8);

    return v44();
  }
}

{
  v1 = v0[45];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[25];
    v41 = v0[24];
    v36 = v0[17];
    v37 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v4 = v1 + v37;
    v39 = (v0[21] + 8);
    v5 = v0[46];
    v6 = MEMORY[0x277D84F90];
    v38 = MEMORY[0x277D84F90];
    v40 = *(v3 + 72);
    while (1)
    {
      v43 = v2;
      v10 = v6;
      v11 = v0[30];
      v12 = v0[22];
      v13 = v0[23];
      v14 = v0[20];
      outlined init with copy of ListRequest(v4, v11, type metadata accessor for AnnotatedCacheEntry);
      v15 = *(v11 + v41[10]);
      v16 = v11 + v41[5];
      Date.addingTimeInterval(_:)();
      static Date.now.getter();
      LOBYTE(v16) = static Date.< infix(_:_:)();
      v17 = *v39;
      (*v39)(v12, v14);
      v17(v13, v14);
      if ((v16 & 1) == 0)
      {
        break;
      }

      outlined init with copy of ListRequest(v0[30], v0[29], type metadata accessor for AnnotatedCacheEntry);
      v6 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
      }

      v19 = v6[2];
      v18 = v6[3];
      if (v19 >= v18 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1, v6, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
      }

      v7 = v0[29];
      outlined destroy of ListRequest(v0[30], type metadata accessor for AnnotatedCacheEntry);
      v6[2] = v19 + 1;
      v8 = v6 + v37;
LABEL_4:
      v9 = v40;
      outlined init with take of AnnotatedCacheEntry(v7, &v8[v19 * v40]);
LABEL_5:
      v4 += v9;
      v2 = v43 - 1;
      if (v43 == 1)
      {
        v27 = v0[45];

        v28 = v38;
        goto LABEL_27;
      }
    }

    if (*(v36 + 16))
    {
      v20 = 0xEA00000000006863;
    }

    else
    {
      v20 = 0x8000000255A4D590;
    }

    v6 = v10;
    if (*(v36 + 16) == 1 && v20 == 0xEA00000000006863)
    {
    }

    else
    {
      *(v36 + 16);
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
LABEL_19:
        outlined init with copy of ListRequest(v0[30], v0[28], type metadata accessor for AnnotatedCacheEntry);
        v25 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
        }

        v19 = v25[2];
        v26 = v25[3];
        v38 = v25;
        if (v19 >= v26 >> 1)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v19 + 1, 1, v25, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
        }

        v7 = v0[28];
        outlined destroy of ListRequest(v0[30], type metadata accessor for AnnotatedCacheEntry);
        v38[2] = v19 + 1;
        v8 = v38 + v37;
        goto LABEL_4;
      }
    }

    v22 = v0[43];
    v23 = *(v0[30] + v41[9]);
    v0[11] = v0[42];
    v0[12] = v22;
    v24 = swift_task_alloc();
    *(v24 + 16) = v0 + 11;
    LOBYTE(v23) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v24, v23);

    if ((v23 & 1) == 0)
    {
      outlined destroy of ListRequest(v0[30], type metadata accessor for AnnotatedCacheEntry);
      v9 = v40;
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v6 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
LABEL_27:
  v0[47] = v6;
  v29 = v0[18];
  v0[48] = specialized static LLMCacheManager.sortAndFilterListResult(_:request:)(v28, v0[17]);

  v30 = v29[18];
  v31 = v29[19];
  __swift_project_boxed_opaque_existential_1(v29 + 15, v30);
  v32 = *(v31 + 8);

  v42 = (v32 + *v32);
  v33 = v32[1];
  v34 = swift_task_alloc();
  v0[49] = v34;
  *v34 = v0;
  v34[1] = LLMCacheManager.list(with:);

  return (v42)(v6, v30, v31);
}

{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = LLMCacheManager.list(with:);
  }

  else
  {
    v6 = LLMCacheManager.list(with:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[48];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[50];
    v4 = v0[25];
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v32 = (v0[21] + 8);
    v30 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v31 = (v4 + 56);
    v34 = MEMORY[0x277D84F90];
    v6 = *(v4 + 72);
    do
    {
      v9 = v0[23];
      v11 = v0[19];
      v10 = v0[20];
      outlined init with copy of ListRequest(v5, v0[27], type metadata accessor for AnnotatedCacheEntry);
      v12 = AnnotatedCacheEntry.builder()();
      static Date.now.getter();
      v13 = (*(*v12 + 376))(v9);

      v14 = (*v32)(v9, v10);
      (*(*v13 + 440))(v14);
      v15 = v3;
      v16 = v0[27];
      if (v15)
      {
        v7 = v0[24];
        v8 = v0[19];

        outlined destroy of ListRequest(v16, type metadata accessor for AnnotatedCacheEntry);
        (*v31)(v8, 1, 1, v7);
        outlined destroy of AnnotatedCacheEntry?(v8, &_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR);
      }

      else
      {
        v17 = v0[26];
        v18 = v0[24];
        v19 = v0[19];
        outlined destroy of ListRequest(v0[27], type metadata accessor for AnnotatedCacheEntry);

        (*v31)(v19, 0, 1, v18);
        outlined init with take of AnnotatedCacheEntry(v19, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
        }

        v21 = v34[2];
        v20 = v34[3];
        if (v21 >= v20 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v34, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
        }

        v22 = v0[26];
        v34[2] = v21 + 1;
        outlined init with take of AnnotatedCacheEntry(v22, v34 + v30 + v21 * v6);
      }

      v3 = 0;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v0[51] = v34;
  v23 = v0[18];
  v24 = v23[18];
  v25 = v23[19];
  __swift_project_boxed_opaque_existential_1(v23 + 15, v24);
  v26 = *(v25 + 24);
  v33 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  v0[52] = v28;
  *v28 = v0;
  v28[1] = LLMCacheManager.list(with:);

  return (v33)(v34, v24, v25);
}

{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v9 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = LLMCacheManager.list(with:);
  }

  else
  {
    v6 = *(v2 + 408);
    v7 = *(v2 + 144);

    v5 = LLMCacheManager.list(with:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 424);
  v2 = *(v0 + 384);
  v22 = *(v0 + 312);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  (*(**(v0 + 328) + 120))(v3, v7, v2);
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8LLMCache19AnnotatedCacheEntryVG_AF0fG0Vs5NeverOTg5(partial apply for closure #2 in LLMCacheManager.list(with:), v8, v2);

  (*(v4 + 8))(v3, v5);

  *v6 = v9;
  $defer #1 () in LLMCacheManager.list(with:)(v22, "LLMCacheManager.list", 20, "LLMCacheManager leaving list...");
  v10 = *(v0 + 288);
  v11 = *(v0 + 280);
  v12 = *(v0 + 264);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  v16 = *(v0 + 216);
  v15 = *(v0 + 224);
  v17 = *(v0 + 208);
  v20 = *(v0 + 184);
  v21 = *(v0 + 176);
  v23 = *(v0 + 152);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

  v18 = *(v0 + 8);

  return v18();
}

{
  v38 = v0;
  v1 = v0[46];
  v2 = v0[40];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[46];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v37[0] = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v37);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_255A20000, v4, v5, "Failed to list: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x259C47EC0](v8, -1, -1);
    MEMORY[0x259C47EC0](v7, -1, -1);
  }

  v15 = v0[46];
  v16 = v0[41];
  v17 = v0[38];
  v18 = v0[39];
  v19 = v0[37];
  v27 = v0[36];
  v28 = v0[35];
  v21 = v0[32];
  v20 = v0[33];
  v22 = v0[31];
  v29 = v0[30];
  v30 = v0[29];
  v31 = v0[28];
  v32 = v0[27];
  v33 = v0[26];
  v34 = v0[23];
  v35 = v0[22];
  v36 = v0[19];
  v23 = v0[17];
  LOBYTE(v37[0]) = 1;
  (*(*v16 + 128))(v20, v23, v37);
  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v24 = 1;
  swift_willThrow();

  (*(v21 + 8))(v20, v22);
  $defer #1 () in LLMCacheManager.list(with:)(v18, "LLMCacheManager.list", 20, "LLMCacheManager leaving list...");
  (*(v17 + 8))(v18, v19);

  v25 = v0[1];

  return v25();
}

{
  v46 = v0;
  v1 = v0[50];
  v2 = v0[40];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[50];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v45 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[10];
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v45);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_255A20000, v4, v5, "Failed to delete expired entries, error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x259C47EC0](v8, -1, -1);
    MEMORY[0x259C47EC0](v7, -1, -1);
  }

  else
  {
    v15 = v0[50];
  }

  v16 = v0[48];
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v0[25];
    v19 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v41 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v42 = (v0[21] + 8);
    v20 = (v18 + 56);
    v44 = MEMORY[0x277D84F90];
    v21 = *(v18 + 72);
    do
    {
      v22 = v0[23];
      v23 = v0[19];
      v24 = v0[20];
      outlined init with copy of ListRequest(v19, v0[27], type metadata accessor for AnnotatedCacheEntry);
      v25 = AnnotatedCacheEntry.builder()();
      static Date.now.getter();
      v26 = (*(*v25 + 376))(v22);

      v27 = (*v42)(v22, v24);
      (*(*v26 + 440))(v27);
      v28 = v0[26];
      v29 = v0[24];
      v30 = v0[19];
      outlined destroy of ListRequest(v0[27], type metadata accessor for AnnotatedCacheEntry);

      (*v20)(v30, 0, 1, v29);
      outlined init with take of AnnotatedCacheEntry(v30, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
      }

      v32 = v44[2];
      v31 = v44[3];
      if (v32 >= v31 >> 1)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v44, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
      }

      v33 = v0[26];
      v44[2] = v32 + 1;
      outlined init with take of AnnotatedCacheEntry(v33, v44 + v41 + v32 * v21);
      v19 += v21;
      --v17;
    }

    while (v17);
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v0[51] = v44;
  v34 = v0[18];
  v35 = v34[18];
  v36 = v34[19];
  __swift_project_boxed_opaque_existential_1(v34 + 15, v35);
  v37 = *(v36 + 24);
  v43 = (v37 + *v37);
  v38 = v37[1];
  v39 = swift_task_alloc();
  v0[52] = v39;
  *v39 = v0;
  v39[1] = LLMCacheManager.list(with:);

  return (v43)(v44, v35, v36);
}

{
  v40 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 408);
  v3 = *(v0 + 320);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 424);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = *(v0 + 56);
    v13 = Error.localizedDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v39);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_255A20000, v5, v6, "Failed to update last accessed time for entries, error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x259C47EC0](v9, -1, -1);
    MEMORY[0x259C47EC0](v8, -1, -1);
  }

  else
  {
    v16 = *(v0 + 424);
  }

  v17 = *(v0 + 384);
  v18 = *(v0 + 312);
  v20 = *(v0 + 256);
  v19 = *(v0 + 264);
  v21 = *(v0 + 248);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  (*(**(v0 + 328) + 120))(v19, v22, v17);
  v24 = swift_task_alloc();
  *(v24 + 16) = v22;
  v25 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8LLMCache19AnnotatedCacheEntryVG_AF0fG0Vs5NeverOTg5(partial apply for closure #2 in LLMCacheManager.list(with:), v24, v17);

  (*(v20 + 8))(v19, v21);

  *v23 = v25;
  $defer #1 () in LLMCacheManager.list(with:)(v18, "LLMCacheManager.list", 20, "LLMCacheManager leaving list...");
  v26 = *(v0 + 288);
  v27 = *(v0 + 280);
  v28 = *(v0 + 264);
  v30 = *(v0 + 232);
  v29 = *(v0 + 240);
  v32 = *(v0 + 216);
  v31 = *(v0 + 224);
  v33 = *(v0 + 208);
  v36 = *(v0 + 184);
  v37 = *(v0 + 176);
  v38 = *(v0 + 152);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

  v34 = *(v0 + 8);

  return v34();
}

uint64_t LLMCacheManager.list(with:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v8 = *v2;
  v3[45] = a1;
  v3[46] = v1;

  v5 = v3[18];
  if (v1)
  {
    v6 = LLMCacheManager.list(with:);
  }

  else
  {
    v6 = LLMCacheManager.list(with:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t closure #2 in LLMCacheManager.list(with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = type metadata accessor for AnnotatedCacheEntry(0);
  v8 = (a1 + *(v7 + 32));
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a1 + *(v7 + 36));
  v14[0] = v5;
  v14[1] = v6;
  v13[2] = v14;

  result = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v13, v11);
  *a3 = v10;
  *(a3 + 8) = v9;
  *(a3 + 16) = result & 1;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8LLMCache19AnnotatedCacheEntryVG_AF0fG0Vs5NeverOTg5(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v20 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v20;
  v7 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v16 = *(v7 + 72);
  while (1)
  {
    a1(v18, v8);
    if (v3)
    {
      break;
    }

    v10 = v18[0];
    v9 = v18[1];
    v11 = v19;
    v20 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v5 = v20;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 24 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v9;
    *(v14 + 48) = v11;
    v8 += v16;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t LLMCacheManager.isEnabled()()
{
  if (*(v0 + 112))
  {
    if (*(v0 + 112) == 1)
    {
      swift_beginAccess();
      v1 = static LLMCacheManagerFeatureFlags.forceEnabled;
      if (static LLMCacheManagerFeatureFlags.forceEnabled == 2)
      {
        v5 = &type metadata for LLMCacheManagerFeatureFlags;
        v6 = lazy protocol witness table accessor for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags();
        v2 = 1;
LABEL_9:
        LOBYTE(v4[0]) = v2;
        goto LABEL_10;
      }
    }

    else
    {
      swift_beginAccess();
      v1 = static LLMCacheManagerFeatureFlags.forceEnabled;
      if (static LLMCacheManagerFeatureFlags.forceEnabled == 2)
      {
        v5 = &type metadata for LLMCacheManagerFeatureFlags;
        v6 = lazy protocol witness table accessor for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags();
        v2 = 2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v1 = static LLMCacheManagerFeatureFlags.forceEnabled;
    if (static LLMCacheManagerFeatureFlags.forceEnabled == 2)
    {
      v5 = &type metadata for LLMCacheManagerFeatureFlags;
      v6 = lazy protocol witness table accessor for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags();
      LOBYTE(v4[0]) = 0;
LABEL_10:
      v1 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v4);
    }
  }

  return v1 & 1;
}

uint64_t closure #1 in static LLMCacheManager.sortAndFilterListResult(_:request:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for AnnotatedCacheEntry(0);
  v7 = *(a1 + v6[9]);
  v9 = *a3;
  v8 = a3[1];
  v33 = v9;
  v34 = v8;
  v32 = &v33;
  v10 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v31, v7);
  if (v10)
  {
    v12 = *(a2 + v6[9]);
    v33 = v9;
    v34 = v8;
    MEMORY[0x28223BE20](v10, v11);
    v30 = &v33;
    v10 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v29, v13);
    if ((v10 & 1) == 0)
    {
      v18 = 1;
      return v18 & 1;
    }
  }

  v33 = v9;
  v34 = v8;
  MEMORY[0x28223BE20](v10, v11);
  v30 = &v33;
  v14 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v29, v7);
  if ((v14 & 1) != 0 || (v16 = *(a2 + v6[9]), v33 = v9, v34 = v8, MEMORY[0x28223BE20](v14, v15), v30 = &v33, (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v29, v17) & 1) == 0))
  {
    v19 = v6[12];
    v20 = (a1 + v19);
    v21 = *(a1 + v19 + 8);
    v22 = a2 + v19;
    v23 = *(a2 + v19);
    v24 = *(v22 + 8);
    if (v21)
    {
      if ((v24 & 1) == 0)
      {
        v25 = v23;
        v26 = 0.0;
LABEL_12:
        v18 = v25 < v26;
        return v18 & 1;
      }
    }

    else
    {
      v26 = *v20;
      v25 = 0.0;
      if (v24)
      {
        goto LABEL_12;
      }

      v25 = v23;
      if (v26 != v23)
      {
        goto LABEL_12;
      }
    }

    v27 = v6[5];
    v18 = static Date.> infix(_:_:)();
    return v18 & 1;
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t LLMCacheManager.insert(searchKey:llmOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  inserted = type metadata accessor for InsertRequest();
  v5[7] = inserted;
  v7 = *(*(inserted - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMCacheManager.insert(searchKey:llmOutput:), v4, 0);
}

uint64_t LLMCacheManager.insert(searchKey:llmOutput:)()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v1 + *(v0[7] + 24);
  UUID.init()();
  *v1 = v5;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = v2;

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = LLMCacheManager.insert(searchKey:llmOutput:);
  v8 = v0[8];
  v9 = v0[6];

  return LLMCacheManager.insert(with:)(v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = LLMCacheManager.insert(searchKey:llmOutput:);
  }

  else
  {
    v6 = LLMCacheManager.insert(searchKey:llmOutput:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  outlined destroy of ListRequest(*(v0 + 64), type metadata accessor for InsertRequest);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of ListRequest(v0[8], type metadata accessor for InsertRequest);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t LLMCacheManager.insert(with:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for UserID();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v2[24] = v7;
  v8 = *(v7 - 8);
  v2[25] = v8;
  v9 = *(v8 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v10 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
  v2[28] = v10;
  v11 = *(v10 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v2[32] = v12;
  v13 = *(v12 - 8);
  v2[33] = v13;
  v14 = *(v13 + 64) + 15;
  v2[34] = swift_task_alloc();
  inserted = type metadata accessor for InsertRequest();
  v2[35] = inserted;
  v16 = *(*(inserted - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v17 = type metadata accessor for OSSignpostID();
  v2[37] = v17;
  v18 = *(v17 - 8);
  v2[38] = v18;
  v19 = *(v18 + 64) + 15;
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMCacheManager.insert(with:), v1, 0);
}

uint64_t LLMCacheManager.insert(with:)()
{
  v50 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = v0[36];
  v4 = v0[18];
  v5 = type metadata accessor for Logger();
  v0[40] = __swift_project_value_buffer(v5, static Logger.logger);
  outlined init with copy of ListRequest(v4, v3, type metadata accessor for InsertRequest);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[36];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v49 = v11;
    *v10 = 136315138;
    v12 = *v9;
    v13 = v9[1];

    outlined destroy of ListRequest(v9, type metadata accessor for InsertRequest);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v49);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_255A20000, v6, v7, "LLMCacheManager entering insert with search key %s...", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x259C47EC0](v11, -1, -1);
    MEMORY[0x259C47EC0](v10, -1, -1);
  }

  else
  {

    outlined destroy of ListRequest(v9, type metadata accessor for InsertRequest);
  }

  v15 = v0[19];
  if (LLMCacheManager.isEnabled()())
  {
    v16 = v0[34];
    v17 = v0[35];
    v18 = v0[18];
    v19 = v0[19];
    v20 = *(v19 + 168);
    v0[41] = v20;
    v21 = *(v17 + 24);
    v48 = *(v19 + 112);
    (*(*v20 + 88))(v18 + v21, &v48);
    v22 = *v18;
    v0[42] = *v18;
    v23 = v18[1];
    v0[43] = v23;
    v24 = v18[2];
    v0[44] = v24;
    v25 = v18[3];
    v0[45] = v25;
    v26 = specialized static LLMCacheManager.generateEntryId(searchKey:llmOutput:)(v22, v23, v24, v25);
    v0[46] = v26;
    v27 = *(v19 + 144);
    v28 = *(v19 + 152);
    __swift_project_boxed_opaque_existential_1((v19 + 120), v27);
    v0[14] = v26;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v0[47] = v30;
    v32 = *(v28 + 16);
    v46 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    v0[48] = v34;
    *v34 = v0;
    v34[1] = LLMCacheManager.insert(with:);
    v35 = v0[31];

    return v46(v35, v29, v31, v27, v28);
  }

  else
  {
    $defer #1 () in LLMCacheManager.list(with:)(v0[39], "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
    v37 = v0[36];
    v38 = v0[34];
    v40 = v0[30];
    v39 = v0[31];
    v41 = v0[29];
    v43 = v0[26];
    v42 = v0[27];
    v44 = v0[23];
    v47 = v0[22];
    (*(v0[38] + 8))(v0[39], v0[37]);

    v45 = v0[1];

    return v45();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v9 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = LLMCacheManager.insert(with:);
  }

  else
  {
    v6 = *(v2 + 376);
    v7 = *(v2 + 152);

    v5 = LLMCacheManager.insert(with:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v113 = v0;
  v1 = *(v0 + 320);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255A20000, v2, v3, "Found an existing cache entry, going to update it by appending new search key", v4, 2u);
    MEMORY[0x259C47EC0](v4, -1, -1);
  }

  v5 = *(v0 + 392);
  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v10 = *(v0 + 216);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);

  v13 = AnnotatedCacheEntry.builder()();
  static Date.now.getter();
  v14 = (*(*v13 + 384))(v10);

  (*(v12 + 8))(v10, v11);
  v15 = (*(*v14 + 400))(v7, v6);

  (*(*v15 + 440))(v16);
  if (!v5)
  {
    v70 = *(v0 + 240);
    v71 = *(v0 + 224);
    v72 = *(v0 + 152);

    v80 = v72[18];
    v81 = v72[19];
    __swift_project_boxed_opaque_existential_1(v72 + 15, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR);
    v73 = *(v71 + 72);
    v74 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v84 = swift_allocObject();
    *(v0 + 400) = v84;
    *(v84 + 16) = xmmword_255A4CA70;
    outlined init with copy of ListRequest(v70, v84 + v74, type metadata accessor for AnnotatedCacheEntry);
    v75 = *(v81 + 24);
    v111 = (v75 + *v75);
    v76 = v75[1];
    v87 = swift_task_alloc();
    *(v0 + 408) = v87;
    *v87 = v0;
    v88 = LLMCacheManager.insert(with:);
LABEL_15:
    v87[1] = v88;

    return v111(v84, v80, v81);
  }

  v17 = v5;
  outlined destroy of ListRequest(*(v0 + 248), type metadata accessor for AnnotatedCacheEntry);

  *(v0 + 120) = v5;
  v18 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast() && *(v0 + 448) == 2)
  {
    v19 = *(v0 + 320);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_255A20000, v20, v21, "No existing cache entry found, going to insert a new entry", v22, 2u);
      MEMORY[0x259C47EC0](v22, -1, -1);
    }

    v23 = *(v0 + 368);
    v97 = *(v0 + 352);
    v99 = *(v0 + 360);
    v101 = *(v0 + 336);
    v103 = *(v0 + 344);
    v25 = *(v0 + 200);
    v24 = *(v0 + 208);
    v27 = *(v0 + 184);
    v26 = *(v0 + 192);
    v28 = *(v0 + 168);
    v105 = *(v0 + 176);
    v107 = *(v0 + 232);
    v94 = v24;
    v95 = v28;
    v29 = *(v0 + 152);
    v109 = *(v0 + 160);

    static Date.now.getter();
    *(v0 + 136) = v23;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v31;
    v91 = v30;
    v32 = *(v29 + 112);
    v33 = type metadata accessor for AnnotatedCacheEntryBuilder(0);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    v36 = swift_allocObject();
    v92 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime;
    v89 = *(v25 + 56);
    v89(v36 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime, 1, 1, v26);
    v93 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime;
    v89(v36 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, 1, 1, v26);
    v37 = (v36 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
    *v37 = 0;
    v37[1] = 0;
    v38 = v36 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_ttl;
    *v38 = 0;
    *(v38 + 8) = 1;
    (*(v28 + 56))(v36 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId, 1, 1, v109);
    v39 = v36 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_score;
    *v39 = 0;
    *(v39 + 8) = 1;
    *(v36 + 16) = v91;
    *(v36 + 24) = v90;
    *(v36 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace) = v32;
    *(v36 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys) = MEMORY[0x277D84F90];
    v40 = *(v25 + 16);
    v40(v27, v94, v26);
    v89(v27, 0, 1, v26);
    swift_beginAccess();
    outlined assign with take of Date?(v27, v36 + v92);
    swift_endAccess();
    v40(v27, v94, v26);
    v89(v27, 0, 1, v26);
    swift_beginAccess();
    outlined assign with take of Date?(v27, v36 + v93);
    swift_endAccess();
    swift_beginAccess();
    v41 = v37[1];
    *v37 = v97;
    v37[1] = v99;

    v42 = specialized AnnotatedCacheEntryBuilder.appendSearchKey(_:)(v101, v103);

    v44.n128_u64[0] = *(v29 + 160);
    v45 = (*(*v42 + 416))(v43, v44);

    static UserID.defaultUserId.getter();
    v46 = (*(*v45 + 424))(v105);

    v47 = (*(v95 + 8))(v105, v109);
    (*(*v46 + 440))(v47);
    v78 = *(v0 + 224);
    v77 = *(v0 + 232);
    v79 = *(v0 + 152);

    v80 = v79[18];
    v81 = v79[19];
    __swift_project_boxed_opaque_existential_1(v79 + 15, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR);
    v82 = *(v78 + 72);
    v83 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v84 = swift_allocObject();
    *(v0 + 424) = v84;
    *(v84 + 16) = xmmword_255A4CA70;
    outlined init with copy of ListRequest(v77, v84 + v83, type metadata accessor for AnnotatedCacheEntry);
    v85 = *(v81 + 24);
    v111 = (v85 + *v85);
    v86 = v85[1];
    v87 = swift_task_alloc();
    *(v0 + 432) = v87;
    *v87 = v0;
    v88 = LLMCacheManager.insert(with:);
    goto LABEL_15;
  }

  v48 = *(v0 + 320);

  v49 = v5;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v112[0] = v53;
    *v52 = 136315138;
    swift_getErrorValue();
    v55 = *(v0 + 16);
    v54 = *(v0 + 24);
    v56 = *(v0 + 32);
    v57 = Error.localizedDescription.getter();
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v112);

    *(v52 + 4) = v59;
    _os_log_impl(&dword_255A20000, v50, v51, "Failed to insert: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    MEMORY[0x259C47EC0](v53, -1, -1);
    MEMORY[0x259C47EC0](v52, -1, -1);
  }

  v60 = *(v0 + 328);
  v61 = *(v0 + 304);
  v62 = *(v0 + 312);
  v63 = *(v0 + 296);
  v65 = *(v0 + 264);
  v64 = *(v0 + 272);
  v66 = *(v0 + 256);
  v96 = *(v0 + 288);
  v98 = *(v0 + 248);
  v100 = *(v0 + 240);
  v102 = *(v0 + 232);
  v104 = *(v0 + 216);
  v106 = *(v0 + 208);
  v108 = *(v0 + 184);
  v110 = *(v0 + 176);
  LOBYTE(v112[0]) = 1;
  (*(*v60 + 104))(v64, v112);
  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v67 = 1;
  swift_willThrow();

  (*(v65 + 8))(v64, v66);
  $defer #1 () in LLMCacheManager.list(with:)(v62, "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
  (*(v61 + 8))(v62, v63);

  v68 = *(v0 + 8);

  return v68();
}

{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 400);
  v6 = *(v2 + 152);

  if (v0)
  {
    v7 = LLMCacheManager.insert(with:);
  }

  else
  {
    v7 = LLMCacheManager.insert(with:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = *(v0 + 248);
  outlined destroy of ListRequest(*(v0 + 240), type metadata accessor for AnnotatedCacheEntry);
  outlined destroy of ListRequest(v1, type metadata accessor for AnnotatedCacheEntry);
  v2 = *(v0 + 312);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 256);
  (*(**(v0 + 328) + 96))(v3);
  (*(v4 + 8))(v3, v5);
  $defer #1 () in LLMCacheManager.list(with:)(v2, "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
  v6 = *(v0 + 288);
  v7 = *(v0 + 272);
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 232);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  v13 = *(v0 + 184);
  v16 = *(v0 + 176);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

  v14 = *(v0 + 8);

  return v14();
}

{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 424);
  v6 = *(v2 + 152);

  if (v0)
  {
    v7 = LLMCacheManager.insert(with:);
  }

  else
  {
    v7 = LLMCacheManager.insert(with:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  outlined destroy of ListRequest(*(v0 + 232), type metadata accessor for AnnotatedCacheEntry);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 312);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 256);
  (*(**(v0 + 328) + 96))(v5);
  (*(v6 + 8))(v5, v7);
  $defer #1 () in LLMCacheManager.list(with:)(v4, "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
  v8 = *(v0 + 288);
  v9 = *(v0 + 272);
  v11 = *(v0 + 240);
  v10 = *(v0 + 248);
  v12 = *(v0 + 232);
  v14 = *(v0 + 208);
  v13 = *(v0 + 216);
  v15 = *(v0 + 184);
  v18 = *(v0 + 176);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

  v16 = *(v0 + 8);

  return v16();
}

{
  v91 = v0;
  v1 = *(v0 + 376);

  v2 = *(v0 + 392);
  *(v0 + 120) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 448) == 2;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(v0 + 320);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_255A20000, v6, v7, "No existing cache entry found, going to insert a new entry", v8, 2u);
      MEMORY[0x259C47EC0](v8, -1, -1);
    }

    v9 = *(v0 + 368);
    v74 = *(v0 + 352);
    v75 = *(v0 + 360);
    v77 = *(v0 + 336);
    v79 = *(v0 + 344);
    v85 = *(v0 + 232);
    v10 = *(v0 + 200);
    v71 = *(v0 + 208);
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = *(v0 + 168);
    v81 = *(v0 + 176);
    v72 = v13;
    v14 = *(v0 + 152);
    v87 = *(v0 + 160);
    v73 = v14;

    static Date.now.getter();
    *(v0 + 136) = v9;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v16;
    v68 = v15;
    LOBYTE(v14) = *(v14 + 112);
    v17 = type metadata accessor for AnnotatedCacheEntryBuilder(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v69 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime;
    v66 = *(v10 + 56);
    v66(v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime, 1, 1, v11);
    v70 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime;
    v66(v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, 1, 1, v11);
    v21 = (v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
    *v21 = 0;
    v21[1] = 0;
    v22 = v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_ttl;
    *v22 = 0;
    *(v22 + 8) = 1;
    (*(v13 + 56))(v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId, 1, 1, v87);
    v23 = v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_score;
    *v23 = 0;
    *(v23 + 8) = 1;
    *(v20 + 16) = v68;
    *(v20 + 24) = v67;
    *(v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace) = v14;
    *(v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys) = MEMORY[0x277D84F90];
    v24 = *(v10 + 16);
    v24(v12, v71, v11);
    v66(v12, 0, 1, v11);
    swift_beginAccess();
    outlined assign with take of Date?(v12, v20 + v69);
    swift_endAccess();
    v24(v12, v71, v11);
    v66(v12, 0, 1, v11);
    swift_beginAccess();
    outlined assign with take of Date?(v12, v20 + v70);
    swift_endAccess();
    swift_beginAccess();
    v25 = v21[1];
    *v21 = v74;
    v21[1] = v75;

    v26 = specialized AnnotatedCacheEntryBuilder.appendSearchKey(_:)(v77, v79);

    v28.n128_u64[0] = *(v73 + 160);
    v29 = (*(*v26 + 416))(v27, v28);

    static UserID.defaultUserId.getter();
    v30 = (*(*v29 + 424))(v81);

    v31 = (*(v72 + 8))(v81, v87);
    (*(*v30 + 440))(v31);
    v56 = *(v0 + 224);
    v55 = *(v0 + 232);
    v57 = *(v0 + 152);

    v58 = v57[18];
    v59 = v57[19];
    __swift_project_boxed_opaque_existential_1(v57 + 15, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR);
    v60 = *(v56 + 72);
    v61 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v62 = swift_allocObject();
    *(v0 + 424) = v62;
    *(v62 + 16) = xmmword_255A4CA70;
    outlined init with copy of ListRequest(v55, v62 + v61, type metadata accessor for AnnotatedCacheEntry);
    v63 = *(v59 + 24);
    v89 = (v63 + *v63);
    v64 = v63[1];
    v65 = swift_task_alloc();
    *(v0 + 432) = v65;
    *v65 = v0;
    v65[1] = LLMCacheManager.insert(with:);

    return v89(v62, v58, v59);
  }

  else
  {
    v32 = *(v0 + 320);

    v33 = v2;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v90[0] = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v40 = *(v0 + 16);
      v39 = *(v0 + 24);
      v41 = *(v0 + 32);
      v42 = Error.localizedDescription.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v90);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_255A20000, v34, v35, "Failed to insert: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x259C47EC0](v38, -1, -1);
      MEMORY[0x259C47EC0](v37, -1, -1);
    }

    v45 = *(v0 + 328);
    v46 = *(v0 + 304);
    v47 = *(v0 + 312);
    v48 = *(v0 + 296);
    v50 = *(v0 + 264);
    v49 = *(v0 + 272);
    v51 = *(v0 + 256);
    v76 = *(v0 + 288);
    v78 = *(v0 + 248);
    v80 = *(v0 + 240);
    v82 = *(v0 + 232);
    v83 = *(v0 + 216);
    v84 = *(v0 + 208);
    v86 = *(v0 + 184);
    v88 = *(v0 + 176);
    LOBYTE(v90[0]) = 1;
    (*(*v45 + 104))(v49, v90);
    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();

    (*(v50 + 8))(v49, v51);
    $defer #1 () in LLMCacheManager.list(with:)(v47, "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
    (*(v46 + 8))(v47, v48);

    v53 = *(v0 + 8);

    return v53();
  }
}

{
  v91 = v0;
  v1 = *(v0 + 248);
  outlined destroy of ListRequest(*(v0 + 240), type metadata accessor for AnnotatedCacheEntry);
  outlined destroy of ListRequest(v1, type metadata accessor for AnnotatedCacheEntry);
  v2 = *(v0 + 416);
  *(v0 + 120) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 448) == 2;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(v0 + 320);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_255A20000, v6, v7, "No existing cache entry found, going to insert a new entry", v8, 2u);
      MEMORY[0x259C47EC0](v8, -1, -1);
    }

    v9 = *(v0 + 368);
    v74 = *(v0 + 352);
    v75 = *(v0 + 360);
    v77 = *(v0 + 336);
    v79 = *(v0 + 344);
    v85 = *(v0 + 232);
    v10 = *(v0 + 200);
    v71 = *(v0 + 208);
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = *(v0 + 168);
    v81 = *(v0 + 176);
    v72 = v13;
    v14 = *(v0 + 152);
    v87 = *(v0 + 160);
    v73 = v14;

    static Date.now.getter();
    *(v0 + 136) = v9;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v16;
    v68 = v15;
    LOBYTE(v14) = *(v14 + 112);
    v17 = type metadata accessor for AnnotatedCacheEntryBuilder(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v69 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime;
    v66 = *(v10 + 56);
    v66(v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime, 1, 1, v11);
    v70 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime;
    v66(v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, 1, 1, v11);
    v21 = (v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
    *v21 = 0;
    v21[1] = 0;
    v22 = v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_ttl;
    *v22 = 0;
    *(v22 + 8) = 1;
    (*(v13 + 56))(v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId, 1, 1, v87);
    v23 = v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_score;
    *v23 = 0;
    *(v23 + 8) = 1;
    *(v20 + 16) = v68;
    *(v20 + 24) = v67;
    *(v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace) = v14;
    *(v20 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys) = MEMORY[0x277D84F90];
    v24 = *(v10 + 16);
    v24(v12, v71, v11);
    v66(v12, 0, 1, v11);
    swift_beginAccess();
    outlined assign with take of Date?(v12, v20 + v69);
    swift_endAccess();
    v24(v12, v71, v11);
    v66(v12, 0, 1, v11);
    swift_beginAccess();
    outlined assign with take of Date?(v12, v20 + v70);
    swift_endAccess();
    swift_beginAccess();
    v25 = v21[1];
    *v21 = v74;
    v21[1] = v75;

    v26 = specialized AnnotatedCacheEntryBuilder.appendSearchKey(_:)(v77, v79);

    v28.n128_u64[0] = *(v73 + 160);
    v29 = (*(*v26 + 416))(v27, v28);

    static UserID.defaultUserId.getter();
    v30 = (*(*v29 + 424))(v81);

    v31 = (*(v72 + 8))(v81, v87);
    (*(*v30 + 440))(v31);
    v56 = *(v0 + 224);
    v55 = *(v0 + 232);
    v57 = *(v0 + 152);

    v58 = v57[18];
    v59 = v57[19];
    __swift_project_boxed_opaque_existential_1(v57 + 15, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR);
    v60 = *(v56 + 72);
    v61 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v62 = swift_allocObject();
    *(v0 + 424) = v62;
    *(v62 + 16) = xmmword_255A4CA70;
    outlined init with copy of ListRequest(v55, v62 + v61, type metadata accessor for AnnotatedCacheEntry);
    v63 = *(v59 + 24);
    v89 = (v63 + *v63);
    v64 = v63[1];
    v65 = swift_task_alloc();
    *(v0 + 432) = v65;
    *v65 = v0;
    v65[1] = LLMCacheManager.insert(with:);

    return v89(v62, v58, v59);
  }

  else
  {
    v32 = *(v0 + 320);

    v33 = v2;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v90[0] = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v40 = *(v0 + 16);
      v39 = *(v0 + 24);
      v41 = *(v0 + 32);
      v42 = Error.localizedDescription.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v90);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_255A20000, v34, v35, "Failed to insert: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x259C47EC0](v38, -1, -1);
      MEMORY[0x259C47EC0](v37, -1, -1);
    }

    v45 = *(v0 + 328);
    v46 = *(v0 + 304);
    v47 = *(v0 + 312);
    v48 = *(v0 + 296);
    v50 = *(v0 + 264);
    v49 = *(v0 + 272);
    v51 = *(v0 + 256);
    v76 = *(v0 + 288);
    v78 = *(v0 + 248);
    v80 = *(v0 + 240);
    v82 = *(v0 + 232);
    v83 = *(v0 + 216);
    v84 = *(v0 + 208);
    v86 = *(v0 + 184);
    v88 = *(v0 + 176);
    LOBYTE(v90[0]) = 1;
    (*(*v45 + 104))(v49, v90);
    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();

    (*(v50 + 8))(v49, v51);
    $defer #1 () in LLMCacheManager.list(with:)(v47, "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
    (*(v46 + 8))(v47, v48);

    v53 = *(v0 + 8);

    return v53();
  }
}

{
  v36 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  outlined destroy of ListRequest(*(v0 + 232), type metadata accessor for AnnotatedCacheEntry);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 440);
  v5 = *(v0 + 320);

  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35[0] = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = *(v0 + 32);
    v14 = Error.localizedDescription.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v35);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_255A20000, v7, v8, "Failed to insert: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x259C47EC0](v10, -1, -1);
    MEMORY[0x259C47EC0](v9, -1, -1);
  }

  v17 = *(v0 + 328);
  v18 = *(v0 + 304);
  v19 = *(v0 + 312);
  v20 = *(v0 + 296);
  v22 = *(v0 + 264);
  v21 = *(v0 + 272);
  v23 = *(v0 + 256);
  v27 = *(v0 + 288);
  v28 = *(v0 + 248);
  v29 = *(v0 + 240);
  v30 = *(v0 + 232);
  v31 = *(v0 + 216);
  v32 = *(v0 + 208);
  v33 = *(v0 + 184);
  v34 = *(v0 + 176);
  LOBYTE(v35[0]) = 1;
  (*(*v17 + 104))(v21, v35);
  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v24 = 1;
  swift_willThrow();

  (*(v22 + 8))(v21, v23);
  $defer #1 () in LLMCacheManager.list(with:)(v19, "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
  (*(v18 + 8))(v19, v20);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    _s8LLMCache13CacheDatabase_pWOb_0(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of AnnotatedCacheEntry?(__src, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0], v9);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data._Representation?(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data._Representation?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t LLMCacheManager.deleteAll()()
{
  v1[6] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMCacheManager.deleteAll(), v0, 0);
}

{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v0 + 80) = __swift_project_value_buffer(v3, static Logger.logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_255A20000, v4, v5, "LLMCacheManager entering deleteAll...", v6, 2u);
    MEMORY[0x259C47EC0](v6, -1, -1);
  }

  v7 = *(v0 + 48);

  if (LLMCacheManager.isEnabled()())
  {
    v8 = *(v0 + 48);
    v9 = *(v8 + 144);
    v10 = *(v8 + 152);
    __swift_project_boxed_opaque_existential_1((v8 + 120), v9);
    *(v0 + 104) = *(v8 + 112);
    v11 = *(v10 + 48);
    v16 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    *v13 = v0;
    v13[1] = LLMCacheManager.deleteAll();

    return v16(v0 + 104, v9, v10);
  }

  else
  {
    $defer #1 () in LLMCacheManager.list(with:)(*(v0 + 72), "LLMCacheManager.deleteAll", 25, "LLMCacheManager leaving deleteAll...");
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v15 = *(v0 + 8);

    return v15();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = LLMCacheManager.deleteAll();
  }

  else
  {
    v5 = LLMCacheManager.deleteAll();
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  $defer #1 () in LLMCacheManager.list(with:)(v0[9], "LLMCacheManager.deleteAll", 25, "LLMCacheManager leaving deleteAll...");
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

{
  v23 = v0;
  v1 = v0[12];
  v2 = v0[10];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v22);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_255A20000, v4, v5, "Failed to deleteAll: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x259C47EC0](v8, -1, -1);
    MEMORY[0x259C47EC0](v7, -1, -1);
  }

  v15 = v0[12];
  v17 = v0[8];
  v16 = v0[9];
  v18 = v0[7];
  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v19 = 1;
  swift_willThrow();

  $defer #1 () in LLMCacheManager.list(with:)(v16, "LLMCacheManager.deleteAll", 25, "LLMCacheManager leaving deleteAll...");
  (*(v17 + 8))(v16, v18);

  v20 = v0[1];

  return v20();
}

uint64_t LLMCacheManager.warmup()()
{
  v1[6] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMCacheManager.warmup(), v0, 0);
}

{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v0[10] = __swift_project_value_buffer(v3, static Logger.logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_255A20000, v4, v5, "LLMCacheManager entering warmup...", v6, 2u);
    MEMORY[0x259C47EC0](v6, -1, -1);
  }

  v7 = v0[6];

  if (LLMCacheManager.isEnabled()())
  {
    v8 = v0[6];
    v9 = v8[18];
    v10 = v8[19];
    __swift_project_boxed_opaque_existential_1(v8 + 15, v9);
    v11 = *(v10 + 56);
    v19 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = LLMCacheManager.warmup();

    return v19(v9, v10);
  }

  else
  {
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[7];
    $defer #1 () in LLMCacheManager.list(with:)(v15, "LLMCacheManager.warmup", 22, "LLMCacheManager leaving warmup...");
    (*(v16 + 8))(v15, v17);

    v18 = v0[1];

    return v18();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = LLMCacheManager.warmup();
  }

  else
  {
    v6 = LLMCacheManager.warmup();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  $defer #1 () in LLMCacheManager.list(with:)(v1, "LLMCacheManager.warmup", 22, "LLMCacheManager leaving warmup...");
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v23 = v0;
  v1 = v0[12];
  v2 = v0[10];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v22);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_255A20000, v4, v5, "Failed to warmup: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x259C47EC0](v8, -1, -1);
    MEMORY[0x259C47EC0](v7, -1, -1);
  }

  v15 = v0[12];
  v17 = v0[8];
  v16 = v0[9];
  v18 = v0[7];
  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v19 = 1;
  swift_willThrow();

  $defer #1 () in LLMCacheManager.list(with:)(v16, "LLMCacheManager.warmup", 22, "LLMCacheManager leaving warmup...");
  (*(v17 + 8))(v16, v18);

  v20 = v0[1];

  return v20();
}

uint64_t LLMCacheManager.pruneExpiredEntries()()
{
  v1[7] = v0;
  v2 = type metadata accessor for Date();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for AnnotatedCacheEntry(0);
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v8 = type metadata accessor for OSSignpostID();
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMCacheManager.pruneExpiredEntries(), v0, 0);
}

{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v0 + 152) = __swift_project_value_buffer(v3, static Logger.logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_255A20000, v4, v5, "LLMCacheManager entering pruneExpiredEntries", v6, 2u);
    MEMORY[0x259C47EC0](v6, -1, -1);
  }

  v7 = *(v0 + 56);

  *(v0 + 40) = MEMORY[0x277D84F90];
  v8 = *(v7 + 112);
  *(v0 + 217) = v8;
  *(v0 + 160) = 0;
  v9 = *(v0 + 56);
  v10 = v9[18];
  v11 = v9[19];
  __swift_project_boxed_opaque_existential_1(v9 + 15, v10);
  *(v0 + 216) = v8;
  v12 = *(v11 + 40);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 168) = v14;
  *v14 = v0;
  v14[1] = LLMCacheManager.pruneExpiredEntries();

  return (v16)(v0 + 216, 1000, 0, v10, v11);
}

{
  result = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(result + 16);
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (v3)
  {
    v41 = v2 + v3;
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    v42 = *(v0 + 176);
    while (v5 < *(result + 16))
    {
      v7 = *(v0 + 120);
      v9 = *(v0 + 96);
      v8 = *(v0 + 104);
      v11 = *(v0 + 80);
      v10 = *(v0 + 88);
      v13 = *(v0 + 64);
      v12 = *(v0 + 72);
      v43 = *(v8 + 72);
      v45 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      outlined init with copy of ListRequest(*(v0 + 176) + v45 + v43 * v5, v7, type metadata accessor for AnnotatedCacheEntry);
      v14 = *(v7 + *(v9 + 40));
      v15 = v7 + *(v9 + 20);
      Date.addingTimeInterval(_:)();
      static Date.now.getter();
      LOBYTE(v15) = static Date.< infix(_:_:)();
      v16 = *(v12 + 8);
      v16(v11, v13);
      v16(v10, v13);
      v17 = *(v0 + 120);
      if (v15)
      {
        outlined init with take of AnnotatedCacheEntry(v17, *(v0 + 112));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 48) = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
          v6 = *(v0 + 48);
        }

        v20 = *(v6 + 16);
        v19 = *(v6 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
          v6 = *(v0 + 48);
        }

        v21 = *(v0 + 112);
        *(v6 + 16) = v20 + 1;
        outlined init with take of AnnotatedCacheEntry(v21, v6 + v45 + v20 * v43);
      }

      else
      {
        outlined destroy of ListRequest(v17, type metadata accessor for AnnotatedCacheEntry);
      }

      ++v5;
      result = v42;
      if (v3 == v5)
      {
        v22 = *(v0 + 176);
        v4 = v41;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_15:
  v23 = *(v0 + 152);

  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v6);
  swift_endAccess();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    *(v26 + 4) = v4;
    *(v26 + 12) = 2048;
    *(v26 + 14) = *(*(v0 + 40) + 16);
    _os_log_impl(&dword_255A20000, v24, v25, "Updated offset to %ld, collected %ld expired entries", v26, 0x16u);
    MEMORY[0x259C47EC0](v26, -1, -1);
  }

  if (v3)
  {
    *(v0 + 160) = v4;
    v27 = *(v0 + 217);
    v28 = *(v0 + 56);
    v29 = v28[18];
    v30 = v28[19];
    __swift_project_boxed_opaque_existential_1(v28 + 15, v29);
    *(v0 + 216) = v27;
    v31 = *(v30 + 40);
    v46 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 168) = v33;
    *v33 = v0;
    v33[1] = LLMCacheManager.pruneExpiredEntries();

    return v46(v0 + 216, 1000, v4, v29, v30);
  }

  else
  {
    v34 = *(v0 + 56);
    v35 = v34[18];
    v36 = v34[19];
    __swift_project_boxed_opaque_existential_1(v34 + 15, v35);
    v37 = *(v0 + 40);
    *(v0 + 192) = v37;
    v38 = *(v36 + 8);

    v44 = (v38 + *v38);
    v39 = v38[1];
    v40 = swift_task_alloc();
    *(v0 + 200) = v40;
    *v40 = v0;
    v40[1] = LLMCacheManager.pruneExpiredEntries();

    return v44(v37, v35, v36);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = LLMCacheManager.pruneExpiredEntries();
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 56);

    v5 = LLMCacheManager.pruneExpiredEntries();
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[24];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];

  $defer #1 () in LLMCacheManager.list(with:)(v2, "LLMCacheManager.pruneExpiredEntries", 35, "LLMCacheManager leaving pruneExpiredEntries...");
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[5];

  v2 = v0[23];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  $defer #1 () in LLMCacheManager.list(with:)(v3, "LLMCacheManager.pruneExpiredEntries", 35, "LLMCacheManager leaving pruneExpiredEntries...");
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[24];
  swift_bridgeObjectRelease_n();
  v2 = v0[26];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  $defer #1 () in LLMCacheManager.list(with:)(v3, "LLMCacheManager.pruneExpiredEntries", 35, "LLMCacheManager leaving pruneExpiredEntries...");
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t LLMCacheManager.pruneExpiredEntries()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v8 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  v5 = v3[7];
  if (v1)
  {
    v6 = LLMCacheManager.pruneExpiredEntries();
  }

  else
  {
    v6 = LLMCacheManager.pruneExpiredEntries();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void $defer #1 () in LLMCacheManager.list(with:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.logger);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_255A20000, oslog, v6, a4, v7, 2u);
    MEMORY[0x259C47EC0](v7, -1, -1);
  }
}

uint64_t LLMCacheManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  v1 = *(v0 + 168);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LLMCacheManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  v1 = *(v0 + 168);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for LLMCacheManaging.list(with:) in conformance LLMCacheManager(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return LLMCacheManager.list(with:)(a1, a2);
}

uint64_t protocol witness for LLMCacheManaging.insert(with:) in conformance LLMCacheManager(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return LLMCacheManager.insert(with:)(a1);
}

uint64_t protocol witness for LLMCacheManaging.insert(searchKey:llmOutput:) in conformance LLMCacheManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  inserted = type metadata accessor for InsertRequest();
  v5[6] = inserted;
  v7 = *(*(inserted - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *v4;
  v5[7] = v8;
  v5[8] = v9;

  return MEMORY[0x2822009F8](protocol witness for LLMCacheManaging.insert(searchKey:llmOutput:) in conformance LLMCacheManager, v9, 0);
}

uint64_t protocol witness for LLMCacheManaging.insert(searchKey:llmOutput:) in conformance LLMCacheManager()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v1 + *(v0[6] + 24);
  UUID.init()();
  *v1 = v5;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = v2;

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = protocol witness for LLMCacheManaging.insert(searchKey:llmOutput:) in conformance LLMCacheManager;
  v8 = v0[7];
  v9 = v0[8];

  return LLMCacheManager.insert(with:)(v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = protocol witness for LLMCacheManaging.insert(searchKey:llmOutput:) in conformance LLMCacheManager;
  }

  else
  {
    v6 = protocol witness for LLMCacheManaging.insert(searchKey:llmOutput:) in conformance LLMCacheManager;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  outlined destroy of ListRequest(*(v0 + 56), type metadata accessor for InsertRequest);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of ListRequest(v0[7], type metadata accessor for InsertRequest);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t protocol witness for LLMCacheManaging.deleteAll() in conformance LLMCacheManager()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return LLMCacheManager.deleteAll()();
}

uint64_t protocol witness for LLMCacheManaging.warmup() in conformance LLMCacheManager()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return LLMCacheManager.warmup()();
}

uint64_t protocol witness for LLMCacheManaging.pruneExpiredEntries() in conformance LLMCacheManager()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of CacheDatabase.delete(entries:);

  return LLMCacheManager.pruneExpiredEntries()();
}

Swift::Int LLMCacheManagerError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C479E0](v1);
  return Hasher._finalize()();
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12VectorSearch5AssetVGMd, &_ss23_ContiguousArrayStorageCy12VectorSearch5AssetVGMR, MEMORY[0x277D782B0]);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(a1, a2);
  *v3 = v7;
  return result;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR);
      v7 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AnnotatedCacheEntry(0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v41 = a4;
  v40 = type metadata accessor for AnnotatedCacheEntry(0);
  v9 = *(*(v40 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v40, v10);
  v39 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v31 - v15;
  result = MEMORY[0x28223BE20](v14, v17);
  v21 = &v31 - v20;
  v32 = a2;
  if (a3 != a2)
  {
    v22 = *v4;
    v23 = *(v19 + 72);
    v24 = *v4 + v23 * (a3 - 1);
    v37 = -v23;
    v38 = v22;
    v25 = a1 - a3;
    v31 = v23;
    v26 = v22 + v23 * a3;
LABEL_4:
    v35 = v24;
    v36 = a3;
    v33 = v26;
    v34 = v25;
    v27 = v24;
    while (1)
    {
      outlined init with copy of ListRequest(v26, v21, type metadata accessor for AnnotatedCacheEntry);
      outlined init with copy of ListRequest(v27, v16, type metadata accessor for AnnotatedCacheEntry);
      v28 = v41(v21, v16);
      outlined destroy of ListRequest(v16, type metadata accessor for AnnotatedCacheEntry);
      result = outlined destroy of ListRequest(v21, type metadata accessor for AnnotatedCacheEntry);
      if (v5)
      {
        break;
      }

      if (v28)
      {
        if (!v38)
        {
          __break(1u);
          return result;
        }

        v29 = v39;
        outlined init with take of AnnotatedCacheEntry(v26, v39);
        swift_arrayInitWithTakeFrontToBack();
        result = outlined init with take of AnnotatedCacheEntry(v29, v27);
        v27 += v37;
        v26 += v37;
        if (!__CFADD__(v25++, 1))
        {
          continue;
        }
      }

      a3 = v36 + 1;
      v24 = v35 + v31;
      v25 = v34 - 1;
      v26 = v33 + v31;
      if (v36 + 1 != v32)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v145 = a5;
  v146 = a4;
  v133 = a1;
  v139 = type metadata accessor for AnnotatedCacheEntry(0);
  v144 = *(v139 - 8);
  v11 = *(v144 + 64);
  v13 = MEMORY[0x28223BE20](v139, v12);
  v136 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v138 = &v122 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v122 - v22;
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = &v122 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  result = MEMORY[0x28223BE20](v31, v32);
  if (a3[1] < 1)
  {
    v40 = MEMORY[0x277D84F90];
LABEL_101:
    v7 = a3;
    a3 = *v133;
    if (*v133)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_103;
    }

    goto LABEL_143;
  }

  v38 = a3[1];
  v129 = &v122 - v34;
  v130 = v37;
  v140 = v36;
  v137 = v35;
  v128 = a6;
  v39 = 0;
  v40 = MEMORY[0x277D84F90];
  v132 = v29;
  v134 = a3;
  v127 = v23;
  while (1)
  {
    v41 = v39;
    v42 = v39 + 1;
    v135 = v38;
    if (v42 >= v38)
    {
      v52 = v42;
    }

    else
    {
      v43 = *a3;
      v7 = *(v144 + 72);
      v44 = v41;
      v45 = v43 + v7 * v42;
      v46 = v129;
      outlined init with copy of ListRequest(v45, v129, type metadata accessor for AnnotatedCacheEntry);
      v143 = v43;
      v47 = v43 + v7 * v44;
      v48 = v130;
      outlined init with copy of ListRequest(v47, v130, type metadata accessor for AnnotatedCacheEntry);
      LODWORD(v142) = v146(v46, v48);
      if (v8)
      {
        outlined destroy of ListRequest(v48, type metadata accessor for AnnotatedCacheEntry);
        v121 = v46;
        goto LABEL_113;
      }

      outlined destroy of ListRequest(v48, type metadata accessor for AnnotatedCacheEntry);
      result = outlined destroy of ListRequest(v46, type metadata accessor for AnnotatedCacheEntry);
      v126 = v135 - 1;
      v141 = v135 - 2;
      v49 = v143 + v7 * (v44 + 2);
      v131 = v44;
      v50 = v7;
      v143 = v7;
      while (v141 != v44)
      {
        outlined init with copy of ListRequest(v49, v29, type metadata accessor for AnnotatedCacheEntry);
        v7 = v140;
        outlined init with copy of ListRequest(v45, v140, type metadata accessor for AnnotatedCacheEntry);
        v51 = v146(v29, v7);
        outlined destroy of ListRequest(v7, type metadata accessor for AnnotatedCacheEntry);
        result = outlined destroy of ListRequest(v29, type metadata accessor for AnnotatedCacheEntry);
        ++v44;
        v50 = v143;
        v49 += v143;
        v45 += v143;
        if ((v142 ^ v51))
        {
          v52 = v44 + 1;
          goto LABEL_11;
        }
      }

      v44 = v126;
      v52 = v135;
LABEL_11:
      v41 = v131;
      if ((v142 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v52 < v131)
      {
        goto LABEL_137;
      }

      if (v131 <= v44)
      {
        v53 = v50 * (v52 - 1);
        v54 = v52;
        v55 = v52 * v50;
        v135 = v54;
        v7 = v131 * v50;
        do
        {
          if (v41 != --v54)
          {
            v142 = v8;
            v56 = *v134;
            if (!*v134)
            {
              goto LABEL_141;
            }

            outlined init with take of AnnotatedCacheEntry(v56 + v7, v136);
            if (v7 < v53 || v56 + v7 >= (v56 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v7 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = outlined init with take of AnnotatedCacheEntry(v136, v56 + v53);
            v8 = v142;
            v50 = v143;
          }

          ++v41;
          v53 -= v50;
          v55 -= v50;
          v7 += v50;
        }

        while (v41 < v54);
        a3 = v134;
        v52 = v135;
        v23 = v127;
        v41 = v131;
      }

      else
      {
LABEL_14:
        a3 = v134;
        v23 = v127;
      }
    }

    v57 = a3[1];
    if (v52 >= v57)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v52, v41))
    {
      goto LABEL_133;
    }

    if (v52 - v41 >= v128)
    {
      goto LABEL_36;
    }

    if (__OFADD__(v41, v128))
    {
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v135 = v52;
    if (v41 + v128 >= v57)
    {
      v58 = v57;
    }

    else
    {
      v58 = v41 + v128;
    }

    if (v58 < v41)
    {
      goto LABEL_136;
    }

    if (v135 == v58)
    {
      v52 = v135;
LABEL_36:
      if (v52 < v41)
      {
        goto LABEL_132;
      }

      goto LABEL_37;
    }

    v106 = *a3;
    v107 = *(v144 + 72);
    v7 = *a3 + v107 * (v135 - 1);
    v142 = -v107;
    v143 = v106;
    v131 = v41;
    v108 = v41 - v135;
    v123 = v107;
    v109 = v106 + v135 * v107;
    v141 = v58;
    do
    {
      v124 = v109;
      v125 = v108;
      v126 = v7;
      do
      {
        outlined init with copy of ListRequest(v109, v23, type metadata accessor for AnnotatedCacheEntry);
        v110 = v23;
        v111 = v137;
        outlined init with copy of ListRequest(v7, v137, type metadata accessor for AnnotatedCacheEntry);
        v112 = v146(v110, v111);
        if (v8)
        {
          outlined destroy of ListRequest(v111, type metadata accessor for AnnotatedCacheEntry);
          v121 = v110;
LABEL_113:
          outlined destroy of ListRequest(v121, type metadata accessor for AnnotatedCacheEntry);
        }

        v113 = v112;
        outlined destroy of ListRequest(v111, type metadata accessor for AnnotatedCacheEntry);
        result = outlined destroy of ListRequest(v110, type metadata accessor for AnnotatedCacheEntry);
        v23 = v110;
        if ((v113 & 1) == 0)
        {
          break;
        }

        if (!v143)
        {
          goto LABEL_139;
        }

        v114 = v138;
        outlined init with take of AnnotatedCacheEntry(v109, v138);
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of AnnotatedCacheEntry(v114, v7);
        v7 += v142;
        v109 += v142;
      }

      while (!__CFADD__(v108++, 1));
      v7 = v126 + v123;
      v108 = v125 - 1;
      v109 = v124 + v123;
      v52 = v141;
      ++v135;
    }

    while (v135 != v141);
    a3 = v134;
    v41 = v131;
    if (v141 < v131)
    {
      goto LABEL_132;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    v59 = v8;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
      v40 = result;
    }

    v61 = *(v40 + 2);
    v60 = *(v40 + 3);
    v62 = v61 + 1;
    if (v61 >= v60 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v40);
      v40 = result;
    }

    *(v40 + 2) = v62;
    v63 = &v40[16 * v61];
    *(v63 + 4) = v41;
    *(v63 + 5) = v52;
    v7 = *v133;
    if (!*v133)
    {
      goto LABEL_142;
    }

    v141 = v52;
    if (v61)
    {
      break;
    }

    v8 = v59;
LABEL_88:
    v38 = a3[1];
    v39 = v141;
    v29 = v132;
    if (v141 >= v38)
    {
      goto LABEL_101;
    }
  }

  v8 = v59;
  while (1)
  {
    v64 = v62 - 1;
    if (v62 >= 4)
    {
      v69 = &v40[16 * v62 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_119;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_120;
      }

      v76 = &v40[16 * v62];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_122;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_125;
      }

      if (v80 >= v72)
      {
        v98 = &v40[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_131;
        }

        if (v67 < v101)
        {
          v64 = v62 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

    if (v62 == 3)
    {
      v65 = *(v40 + 4);
      v66 = *(v40 + 5);
      v75 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      v68 = v75;
LABEL_57:
      if (v68)
      {
        goto LABEL_121;
      }

      v81 = &v40[16 * v62];
      v83 = *v81;
      v82 = *(v81 + 1);
      v84 = __OFSUB__(v82, v83);
      v85 = v82 - v83;
      v86 = v84;
      if (v84)
      {
        goto LABEL_124;
      }

      v87 = &v40[16 * v64 + 32];
      v89 = *v87;
      v88 = *(v87 + 1);
      v75 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v75)
      {
        goto LABEL_127;
      }

      if (__OFADD__(v85, v90))
      {
        goto LABEL_128;
      }

      if (v85 + v90 >= v67)
      {
        if (v67 < v90)
        {
          v64 = v62 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_71;
    }

    v91 = &v40[16 * v62];
    v93 = *v91;
    v92 = *(v91 + 1);
    v75 = __OFSUB__(v92, v93);
    v85 = v92 - v93;
    v86 = v75;
LABEL_71:
    if (v86)
    {
      goto LABEL_123;
    }

    v94 = &v40[16 * v64];
    v96 = *(v94 + 4);
    v95 = *(v94 + 5);
    v75 = __OFSUB__(v95, v96);
    v97 = v95 - v96;
    if (v75)
    {
      goto LABEL_126;
    }

    if (v97 < v85)
    {
      goto LABEL_88;
    }

LABEL_78:
    v102 = v64 - 1;
    if (v64 - 1 >= v62)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_138;
    }

    v103 = *&v40[16 * v102 + 32];
    v104 = *&v40[16 * v64 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v144 + 72) * v103, *a3 + *(v144 + 72) * *&v40[16 * v64 + 32], *a3 + *(v144 + 72) * v104, v7, v146, v145);
    if (v8)
    {
    }

    if (v104 < v103)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
    }

    if (v102 >= *(v40 + 2))
    {
      goto LABEL_118;
    }

    v105 = &v40[16 * v102];
    *(v105 + 4) = v103;
    *(v105 + 5) = v104;
    v147 = v40;
    result = specialized Array.remove(at:)(v64);
    v40 = v147;
    v62 = *(v147 + 2);
    if (v62 <= 1)
    {
      goto LABEL_88;
    }
  }

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
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
  v40 = result;
LABEL_103:
  v147 = v40;
  v116 = *(v40 + 2);
  v117 = v145;
  if (v116 < 2)
  {
  }

  while (*v7)
  {
    v118 = *&v40[16 * v116];
    v119 = *&v40[16 * v116 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)(*v7 + *(v144 + 72) * v118, *v7 + *(v144 + 72) * *&v40[16 * v116 + 16], *v7 + *(v144 + 72) * v119, a3, v146, v117);
    if (v8)
    {
    }

    if (v119 < v118)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
    }

    if (v116 - 2 >= *(v40 + 2))
    {
      goto LABEL_130;
    }

    v120 = &v40[16 * v116];
    *v120 = v118;
    *(v120 + 1) = v119;
    v147 = v40;
    result = specialized Array.remove(at:)(v116 - 1);
    v40 = v147;
    v116 = *(v147 + 2);
    if (v116 <= 1)
    {
    }
  }

LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}