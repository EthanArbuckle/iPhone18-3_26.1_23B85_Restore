uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x223DD3830](v8, a1);
    outlined destroy of AnyHashable(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, &_ss23_ContiguousArrayStorageCy12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12FeatureStore18InteractionWrapperVy10Foundation4DataVGMd, &_s12FeatureStore18InteractionWrapperVy10Foundation4DataVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDys11AnyHashableVypGGMd, &_ss23_ContiguousArrayStorageCySDys11AnyHashableVypGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t FeatureStoreStreamAccessor.stream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FeatureStore26FeatureStoreStreamAccessor_stream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMd, &_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeatureStoreStreamAccessor.__allocating_init(identifier:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  FeatureStoreStreamAccessor.init(identifier:)();
  return v3;
}

uint64_t FeatureStoreStreamAccessor.init(identifier:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMd, &_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMR);
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v17 - v8;
  v10 = [objc_opt_self() biomeStoreConfig];
  *(v0 + 16) = v10;
  type metadata accessor for FeatureStoreBiomeEvent();
  v11 = v10;
  Streams.StoreStream.init(_:storeConfig:)();
  v12 = OBJC_IVAR____TtC12FeatureStore26FeatureStoreStreamAccessor_stream;
  (*(v5 + 32))(v0 + OBJC_IVAR____TtC12FeatureStore26FeatureStoreStreamAccessor_stream, v9, v2);
  (*(v5 + 16))(v9, v0 + v12, v2);
  OUTLINED_FUNCTION_1_8();
  lazy protocol witness table accessor for type Streams.StoreStream<FeatureStoreBiomeEvent> and conformance Streams.StoreStream<A>(v13, v14, &_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMR);
  v15 = StoreStreamProtocol.source()();
  (*(v5 + 8))(v9, v2);
  *(v1 + OBJC_IVAR____TtC12FeatureStore26FeatureStoreStreamAccessor_streamSource) = v15;
  return v1;
}

uint64_t FeatureStoreStreamAccessor.retrieve(query:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11BiomePubSub10PublishersO6FilterVy_So12BMStoreEventCGMd, &_s11BiomePubSub10PublishersO6FilterVy_So12BMStoreEventCGMR);
  v36 = OUTLINED_FUNCTION_0(v2);
  v37 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v36);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11BiomePubSub21BookmarkablePublisherVySo12BMStoreEventCGMd, &_s11BiomePubSub21BookmarkablePublisherVySo12BMStoreEventCGMR);
  v34 = OUTLINED_FUNCTION_0(v15);
  v35 = v16;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v34);
  v21 = &v33 - v20;
  v22 = MEMORY[0x277D85000];
  v23 = (*((*MEMORY[0x277D85000] & *a1) + 0x70))(v19);
  (*((*v22 & *a1) + 0x88))(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMd, &_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMR);
  OUTLINED_FUNCTION_1_8();
  lazy protocol witness table accessor for type Streams.StoreStream<FeatureStoreBiomeEvent> and conformance Streams.StoreStream<A>(v24, v25, &_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMR);
  StoreStreamProtocol.publisher(startDate:endDate:maxEvents:lastN:reversed:)();
  outlined destroy of Date?(v12);
  outlined destroy of Date?(v14);
  OUTLINED_FUNCTION_3_5();
  v26 = swift_allocObject();
  *(v26 + 16) = MEMORY[0x277D84F90];
  v27 = (v26 + 16);
  OUTLINED_FUNCTION_3_5();
  *(swift_allocObject() + 16) = a1;
  lazy protocol witness table accessor for type Streams.StoreStream<FeatureStoreBiomeEvent> and conformance Streams.StoreStream<A>(&lazy protocol witness table cache variable for type BookmarkablePublisher<BMStoreEvent<FeatureStoreBiomeEvent>> and conformance BookmarkablePublisher<A>, &_s11BiomePubSub21BookmarkablePublisherVySo12BMStoreEventCGMd, &_s11BiomePubSub21BookmarkablePublisherVySo12BMStoreEventCGMR);
  v28 = a1;
  v29 = v34;
  PublisherProtocol.filter(isIncluded:)();

  lazy protocol witness table accessor for type Streams.StoreStream<FeatureStoreBiomeEvent> and conformance Streams.StoreStream<A>(&lazy protocol witness table cache variable for type Publishers.Filter<BMStoreEvent<FeatureStoreBiomeEvent>> and conformance Publishers.Filter<A>, &_s11BiomePubSub10PublishersO6FilterVy_So12BMStoreEventCGMd, &_s11BiomePubSub10PublishersO6FilterVy_So12BMStoreEventCGMR);

  v30 = v36;

  (*(v37 + 8))(v7, v30);
  (*(v35 + 8))(v21, v29);
  swift_beginAccess();
  v31 = *v27;

  return v31;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in FeatureStoreStreamAccessor.retrieve(query:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *((*MEMORY[0x277D85000] & *a2) + 0xA0);
  v14 = *(v13(v10) + 16);

  if (!v14)
  {
    return 1;
  }

  v16 = v13(v15);
  v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v16);
  v18 = [a1 eventBody];
  if (v18)
  {
    v19 = v18;
    v20 = *&v18[OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId];
    v21 = *&v18[OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId + 8];

    LOBYTE(v20) = specialized Set.contains(_:)(v20, v21, v17);

    return v20 & 1;
  }

  else
  {

    v23 = Logger.accessor.unsafeMutableAddressor();
    (*(v7 + 16))(v12, v23, v4);
    v24 = a1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = v28;
      *v27 = 136315138;
      v32[7] = [v24 error];
      type metadata accessor for BMStoreError();
      v29 = String.init<A>(describing:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v33);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_223066000, v25, v26, "EventBody is nil. Store error: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    (*(v7 + 8))(v12, v4);
    return 0;
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x223DD3650](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t closure #3 in FeatureStoreStreamAccessor.retrieve(query:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 eventBody];
  if (v12)
  {
    v13 = v12;
    v14 = [a1 timestamp];
    (*((*MEMORY[0x277D85000] & *v13) + 0x80))(v14);
    v15 = swift_beginAccess();
    MEMORY[0x223DD34A0](v15);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return swift_endAccess();
  }

  else
  {
    v17 = Logger.accessor.unsafeMutableAddressor();
    (*(v7 + 16))(v11, v17, v4);
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[0] = v22;
      *v21 = 136315138;
      v27 = [v18 error];
      type metadata accessor for BMStoreError();
      v23 = String.init<A>(describing:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v26);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_223066000, v19, v20, "This should not happen as we had already filtered nil eventBody instances! Store Error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    return (*(v7 + 8))(v11, v4);
  }
}

uint64_t lazy protocol witness table accessor for type Streams.StoreStream<FeatureStoreBiomeEvent> and conformance Streams.StoreStream<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FeatureStoreStreamAccessor.retrieve(interactionId:)()
{
  _StringGuts.grow(_:)(75);
  MEMORY[0x223DD3460](0xD000000000000048, 0x8000000223094060);
  v1 = *v0;
  v2 = _typeName(_:qualified:)();
  MEMORY[0x223DD3460](v2);

  MEMORY[0x223DD3460](33, 0xE100000000000000);
  lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  swift_allocError();
  *v3 = 0;
  *(v3 + 8) = 0xE000000000000000;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t FeatureStoreStreamAccessor.deinit()
{
  v1 = OBJC_IVAR____TtC12FeatureStore26FeatureStoreStreamAccessor_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMd, &_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FeatureStoreStreamAccessor.__deallocating_deinit()
{
  FeatureStoreStreamAccessor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for StreamAccessor.init(identifier:) in conformance FeatureStoreStreamAccessor@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for StreamAccessor.insert(feature:) in conformance FeatureStoreStreamAccessor(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_7();
  return (*(v2 + 112))();
}

uint64_t type metadata accessor for FeatureStoreStreamAccessor()
{
  result = type metadata singleton initialization cache for FeatureStoreStreamAccessor;
  if (!type metadata singleton initialization cache for FeatureStoreStreamAccessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for FeatureStoreStreamAccessor()
{
  type metadata accessor for Streams.StoreStream<FeatureStoreBiomeEvent>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Streams.StoreStream<FeatureStoreBiomeEvent>()
{
  if (!lazy cache variable for type metadata for Streams.StoreStream<FeatureStoreBiomeEvent>)
  {
    type metadata accessor for FeatureStoreBiomeEvent();
    v0 = type metadata accessor for Streams.StoreStream();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Streams.StoreStream<FeatureStoreBiomeEvent>);
    }
  }
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

void type metadata accessor for BMStoreError()
{
  if (!lazy cache variable for type metadata for BMStoreError)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for BMStoreError);
    }
  }
}

BOOL specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v30 + 63) >> 6, v3 + 56);
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
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
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

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_223092DE0;
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

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
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

uint64_t FeatureStoreNSCodingAccessor.insert(interactionId:feature:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 144);
  type metadata accessor for NSCodingFeatureWrapper();

  v9 = a3;
  v10 = AceObjectFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(a1, a2);
  v11 = v4[2];
  v16[0] = 0;
  if ([v11 insert:v10 error:v16])
  {
    v12 = v16[0];
  }

  else
  {
    v13 = v16[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FeatureStoreNSCodingAccessor.retrieve(interactionId:)()
{
  v2 = *v0;
  result = (*(*v0 + 112))();
  if (!v1)
  {
    v4 = result;
    v5 = *(v2 + 144);
    result = type metadata accessor for NSCodingFeatureWrapper();
    if (v4[2])
    {
      v6 = result;
      v7 = v4[4];
      v8 = v4[5];
      v9 = OUTLINED_FUNCTION_1_6();
      outlined copy of Data._Representation(v9, v10);

      v11 = *(v6 + 128);
      v12 = OUTLINED_FUNCTION_1_6();
      v14 = v13(v12);
      v15 = OUTLINED_FUNCTION_1_6();
      outlined consume of Data._Representation(v15, v16);
      if (v14)
      {
        v17 = *(v14 + 16);

        return v17;
      }

      else
      {
        lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
        v18 = swift_allocError();
        return OUTLINED_FUNCTION_0_4(v18, v19);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t FeatureStoreNSCodingAccessor.retrieve(interactionId:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = (*(*v2 + 120))();
  if (!v3)
  {
    v14[1] = v7;
    MEMORY[0x28223BE20](v7);
    v13[2] = *(v6 + 144);
    v13[3] = a1;
    v13[4] = a2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, _sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    v9 = type metadata accessor for InteractionWrapper();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    v11 = lazy protocol witness table accessor for type [InteractionWrapper<Data>] and conformance [A]();
    v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in FeatureStoreNSCodingAccessor.retrieve(interactionId:), v13, v8, v9, v10, v11, MEMORY[0x277D84950], v14);
  }

  return v2;
}

uint64_t partial apply for closure #1 in FeatureStoreNSCodingAccessor.retrieve(interactionId:)(double *a1, void *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = a1[2];
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v11 = type metadata accessor for NSCodingFeatureWrapper();
  v12 = (*(v11 + 128))(v9, v10, 0, v6, v7);
  if (v12)
  {
    v13 = *(v12 + 16);

    v14 = v13;
    v15 = OUTLINED_FUNCTION_1_6();
    InteractionWrapper.init(interactionId:timestamp:feature:)(v15, v16, v17, v5, v18, v8);
  }

  else
  {
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    v20 = swift_allocError();
    result = OUTLINED_FUNCTION_0_4(v20, v21);
    *a2 = v3;
  }

  return result;
}

uint64_t vtable thunk for BaseStreamAccessor.retrieve(interactionId:) dispatching to FeatureStoreNSCodingAccessor.retrieve(interactionId:)@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureStoreNSCodingAccessor.retrieve(interactionId:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t FeatureStoreNSCodingAccessorWithType.insert(interactionId:feature:)()
{
  lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  OUTLINED_FUNCTION_2_3();
  *v0 = xmmword_223092EF0;
  *(v0 + 16) = 1;
  return swift_willThrow();
}

unint64_t FeatureStoreNSCodingAccessorWithType.retrieve(interactionId:)(uint64_t a1, uint64_t a2)
{
  v6.isa = v2->isa;
  v7 = type metadata accessor for Logger();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = (*(v6.isa + 14))(a1, a2);
  if (v3)
  {
    return v2;
  }

  v19 = v18;
  v43 = v7;
  result = type metadata accessor for NSKeyedUnarchiver();
  if (v19[2])
  {
    v21 = *(v6.isa + 18);
    v22 = v19[4];
    v23 = v19[5];
    outlined copy of Data._Representation(v22, v23);

    v2 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    outlined consume of Data._Representation(v22, v23);
    if (!v2)
    {
      v33 = v10;
      v34 = Logger.accessor.unsafeMutableAddressor();
      v35 = *(v10 + 16);
      v36 = v43;
      v35(v17, v34, v43);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_223066000, v37, v38, "Deserialization failed. Returned nil object.", v39, 2u);
        OUTLINED_FUNCTION_1();
      }

      (*(v33 + 8))(v17, v36);
      lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
      v40 = OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_2_8(v40, v41);
      v24 = Logger.accessor.unsafeMutableAddressor();
      (*(v33 + 16))(v15, v24, v36);
      v25 = v40;
      v2 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v2, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        v29 = v40;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 4) = v30;
        *v28 = v30;
        _os_log_impl(&dword_223066000, v2, v26, "Deserialization failed. Error: %@", v27, 0xCu);
        outlined destroy of NSObject?(v28);
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_1();
      }

      (*(v33 + 8))(v15, v36);
      lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
      v31 = OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_0_6(v31, v32);
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t FeatureStoreNSCodingAccessorWithType.retrieve(interactionId:)()
{
  v2 = *v0;
  v3 = (*(*v0 + 120))();
  if (!v1)
  {
    v10[1] = v3;
    MEMORY[0x28223BE20](v3);
    v9[2] = *(v2 + 144);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, _sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    v5 = type metadata accessor for InteractionWrapper();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    v7 = lazy protocol witness table accessor for type [InteractionWrapper<Data>] and conformance [A]();
    v0 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in FeatureStoreNSCodingAccessorWithType.retrieve(interactionId:), v9, v4, v5, v6, v7, MEMORY[0x277D84950], v10);
  }

  return v0;
}

void closure #1 in FeatureStoreNSCodingAccessorWithType.retrieve(interactionId:)(double *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v46 = a3;
  v5 = v4;
  v8 = type metadata accessor for Logger();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = *(a1 + 1);
  v44 = *a1;
  v20 = a1[2];
  v22 = *(a1 + 3);
  v21 = *(a1 + 4);
  type metadata accessor for NSKeyedUnarchiver();
  v23 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (!v4)
  {
    v34 = *&v44;
    v35 = v45;
    if (v23)
    {
      v47 = v23;

      InteractionWrapper.init(interactionId:timestamp:feature:)(v34, v19, &v47, a2, v35, v20);
      return;
    }

    v36 = Logger.accessor.unsafeMutableAddressor();
    v37 = v11;
    v38 = *(v11 + 16);
    v39 = v18;
    v38(v18, v36, v8);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_223066000, v40, v41, "Deserialization failed. Returned nil object.", v5, 2u);
      OUTLINED_FUNCTION_1();
    }

    (*(v37 + 8))(v39, v8);
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    v42 = OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_0_6(v42, v43);
    v11 = v37;
  }

  v24 = Logger.accessor.unsafeMutableAddressor();
  (*(v11 + 16))(v16, v24, v8);
  v25 = v5;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v5;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_223066000, v26, v27, "Deserialization failed. Error: %@", v28, 0xCu);
    outlined destroy of NSObject?(v29);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  (*(v11 + 8))(v16, v8);
  lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  v32 = OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_8(v32, v33);

  *v46 = v32;
}

unint64_t vtable thunk for BaseStreamAccessor.retrieve(interactionId:) dispatching to FeatureStoreNSCodingAccessorWithType.retrieve(interactionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = FeatureStoreNSCodingAccessorWithType.retrieve(interactionId:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t PBCodableStreamAccessor.insert(interactionId:feature:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 144);
  type metadata accessor for PBCodableFeatureWrapper();

  v9 = a3;
  v10 = AceObjectFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(a1, a2);
  v11 = v4[2];
  v16[0] = 0;
  if ([v11 insert:v10 error:v16])
  {
    v12 = v16[0];
  }

  else
  {
    v13 = v16[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PBCodableStreamAccessor.retrieve(interactionId:)()
{
  v2 = *v0;
  result = (*(*v0 + 112))();
  if (!v1)
  {
    v4 = result;
    v5 = *(v2 + 144);
    result = type metadata accessor for PBCodableFeatureWrapper();
    if (v4[2])
    {
      v6 = result;
      v7 = v4[4];
      v8 = v4[5];
      v9 = OUTLINED_FUNCTION_1_6();
      outlined copy of Data._Representation(v9, v10);

      v11 = *(v6 + 128);
      v12 = OUTLINED_FUNCTION_1_6();
      v14 = v13(v12);
      v15 = OUTLINED_FUNCTION_1_6();
      outlined consume of Data._Representation(v15, v16);
      if (v14)
      {
        v17 = *(v14 + 16);

        return v17;
      }

      else
      {
        lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
        v18 = swift_allocError();
        return OUTLINED_FUNCTION_0_4(v18, v19);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t PBCodableStreamAccessor.retrieve(interactionId:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = (*(*v2 + 120))();
  if (!v3)
  {
    v14[1] = v7;
    MEMORY[0x28223BE20](v7);
    v13[2] = *(v6 + 144);
    v13[3] = a1;
    v13[4] = a2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, _sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    v9 = type metadata accessor for InteractionWrapper();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    v11 = lazy protocol witness table accessor for type [InteractionWrapper<Data>] and conformance [A]();
    v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in PBCodableStreamAccessor.retrieve(interactionId:), v13, v8, v9, v10, v11, MEMORY[0x277D84950], v14);
  }

  return v2;
}

uint64_t partial apply for closure #1 in PBCodableStreamAccessor.retrieve(interactionId:)(double *a1, void *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = a1[2];
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v11 = type metadata accessor for PBCodableFeatureWrapper();
  v12 = (*(v11 + 128))(v9, v10, 0, v6, v7);
  if (v12)
  {
    v13 = *(v12 + 16);

    v14 = v13;
    v15 = OUTLINED_FUNCTION_1_6();
    InteractionWrapper.init(interactionId:timestamp:feature:)(v15, v16, v17, v5, v18, v8);
  }

  else
  {
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    v20 = swift_allocError();
    result = OUTLINED_FUNCTION_0_4(v20, v21);
    *a2 = v3;
  }

  return result;
}

uint64_t vtable thunk for BaseStreamAccessor.retrieve(interactionId:) dispatching to PBCodableStreamAccessor.retrieve(interactionId:)@<X0>(uint64_t *a1@<X8>)
{
  result = PBCodableStreamAccessor.retrieve(interactionId:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SerializableStreamAccessor.insert(interactionId:feature:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = *(*v4 + 144);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v19 - v9;
  v12 = *(v11 + 152);
  type metadata accessor for SerializableFeatureWrapper();
  (*(v7 + 16))(v10, a3, v6);

  v13 = SerializableFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)();
  v14 = v4[2];
  v19[0] = 0;
  if ([v14 insert:v13 error:v19])
  {
    v15 = v19[0];
  }

  else
  {
    v16 = v19[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SerializableStreamAccessor.retrieve(interactionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *v3;
  result = (*(*v3 + 112))();
  if (!v4)
  {
    v10 = result;
    v12 = *(v8 + 144);
    v11 = *(v8 + 152);
    result = type metadata accessor for SerializableFeatureWrapper();
    if (v10[2])
    {
      v13 = result;
      v14 = v10[4];
      v15 = v10[5];
      outlined copy of Data._Representation(v14, v15);

      v16 = (*(v13 + 128))(v14, v15, 0, a1, a2);
      outlined consume of Data._Representation(v14, v15);
      if (v16)
      {
        (*(*(v12 - 8) + 16))(a3, v16 + *(*v16 + 88), v12);
      }

      else
      {
        lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
        v17 = swift_allocError();
        return OUTLINED_FUNCTION_0_4(v17, v18);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t SerializableStreamAccessor.retrieve(interactionId:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = (*(*v2 + 120))();
  if (!v3)
  {
    v17[1] = v7;
    MEMORY[0x28223BE20](v7);
    v16 = *(v6 + 144);
    v13[1] = v16;
    v14 = a1;
    v15 = a2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, _sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    v9 = type metadata accessor for InteractionWrapper();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    v11 = lazy protocol witness table accessor for type [InteractionWrapper<Data>] and conformance [A]();
    v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in SerializableStreamAccessor.retrieve(interactionId:), v13, v8, v9, v10, v11, MEMORY[0x277D84950], v17);
  }

  return v2;
}

uint64_t closure #1 in SerializableStreamAccessor.retrieve(interactionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v25 = a5;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v13[2];
  v17 = *(v13 + 3);
  v18 = *(v13 + 4);
  v19 = type metadata accessor for SerializableFeatureWrapper();
  v20 = (*(v19 + 128))(v17, v18, 0, a2, a3);
  if (v20)
  {
    (*(v11 + 16))(v15, v20 + *(*v20 + 88), a4);

    InteractionWrapper.init(interactionId:timestamp:feature:)(a2, a3, v15, a4, a6, v16);
  }

  else
  {
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    v22 = swift_allocError();
    result = OUTLINED_FUNCTION_0_4(v22, v23);
    *v25 = v6;
  }

  return result;
}

uint64_t InteractionWrapper.interactionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InteractionWrapper.init(interactionId:timestamp:feature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  v9 = type metadata accessor for InteractionWrapper();
  v10 = *(*(a4 - 8) + 32);
  v11 = a5 + *(v9 + 32);

  return v10(v11, a3, a4);
}

uint64_t type metadata completion function for InteractionWrapper(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InteractionWrapper(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 24) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for InteractionWrapper(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 24) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FeatureStoreError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureStoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t one-time initialization function for contextProviding()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.contextProviding);
  __swift_project_value_buffer(v0, static Logger.contextProviding);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for accessor(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.accessor.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t LogSignpost.name.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t LogSignpost.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LogSignpost() + 24);
  v4 = type metadata accessor for OSSignposter();
  v5 = OUTLINED_FUNCTION_2_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t LogSignpost.init(name:state:signposter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v8 = *(type metadata accessor for LogSignpost() + 24);
  v9 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_2_1(v9);
  v11 = *(v10 + 32);

  return v11(a6 + v8, a5);
}

uint64_t type metadata completion function for LogSignpost()
{
  result = type metadata accessor for OSSignpostIntervalState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OSSignposter();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t SiriTurn.dictionaryRepresentation()()
{
  v1 = type metadata accessor for UUID();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for SiriTurn();
  v10 = objc_msgSendSuper2(&v22, sel_dictionaryRepresentation);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v19 = 0x64496E727574;
  *(&v19 + 1) = 0xE600000000000000;
  v12 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  dispatch thunk of SiriTurn.turnId.getter();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v4 + 8))(v9, v1);
  v20 = v12;
  *&v19 = v13;
  *(&v19 + 1) = v15;
  outlined init with take of Any(&v19, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v21, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(v21);
  return v11;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t EventGraph.dictionaryRepresentation()()
{
  v73 = type metadata accessor for UUID();
  v1 = OUTLINED_FUNCTION_0(v73);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v72 = v7 - v6;
  v67 = v0;
  v8 = dispatch thunk of EventGraph.componentIdentifiers.getter();
  v66 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ComponentIdentifier();
    lazy protocol witness table accessor for type ComponentIdentifier and conformance NSObject(&lazy protocol witness table cache variable for type ComponentIdentifier and conformance NSObject, MEMORY[0x277D56708]);
    Set.Iterator.init(_cocoa:)();
    v10 = v80;
    v9 = v81;
    v11 = v82;
    v12 = v83;
    v13 = v84;
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);

    v12 = 0;
  }

  v65 = v11;
  v17 = (v11 + 64) >> 6;
  v70 = v9;
  v71 = (v3 + 8);
  v18 = MEMORY[0x277D84F98];
  v68 = v17;
  v69 = v10;
  if (v10 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v19 = v12;
  v20 = v13;
  v21 = v12;
  if (!v13)
  {
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v17)
      {
        goto LABEL_28;
      }

      v20 = *(v9 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_12:
  v22 = (v20 - 1) & v20;
  v23 = *(*(v10 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
  if (v23)
  {
    while (1)
    {
      v74 = v22;
      v24 = ComponentIdentifier.componentName.getter();
      v25 = @"COMPONENTNAME_UNKNOWN";
      v26 = @"COMPONENTNAME_UNKNOWN";
      if (v24 <= 0x42)
      {
        v26 = off_2784D3688[v24];
        v25 = off_2784D38A0[v24];
      }

      v27 = v26;
      v28 = v25;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v76 = v23;
      dispatch thunk of ComponentIdentifier.uuid.getter();
      v32 = UUID.uuidString.getter();
      v75 = v33;
      (*v71)(v72, v73);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v18;
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v31);
      v37 = v18[2];
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        break;
      }

      v40 = v35;
      v41 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39))
      {
        v42 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v31);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_44;
        }

        v40 = v42;
      }

      if (v41)
      {

        v18 = v78;
        v44 = (v78[7] + 16 * v40);
        v45 = v44[1];
        *v44 = v32;
        v44[1] = v75;
      }

      else
      {
        v18 = v78;
        v78[(v40 >> 6) + 8] |= 1 << v40;
        v46 = (v78[6] + 16 * v40);
        *v46 = v29;
        v46[1] = v31;
        v47 = (v78[7] + 16 * v40);
        *v47 = v32;
        v47[1] = v75;

        v48 = v78[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_42;
        }

        v78[2] = v50;
      }

      v12 = v21;
      v13 = v74;
      v10 = v69;
      v9 = v70;
      v17 = v68;
      if ((v69 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for ComponentIdentifier();
        swift_dynamicCast();
        v23 = v78;
        v21 = v12;
        v22 = v13;
        if (v78)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_28:
  v77 = v18;
  outlined consume of Set<ComponentIdentifier>.Iterator._Variant();

  v51 = dispatch thunk of EventGraph.events()();
  v52 = specialized Array.count.getter(v51);
  if (!v52)
  {

    v55 = MEMORY[0x277D84F90];
LABEL_39:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2230931E0;
    OUTLINED_FUNCTION_19_1();
    EventGraph.timestamp.getter();
    *(inited + 96) = MEMORY[0x277D839F8];
    *(inited + 72) = v63;
    OUTLINED_FUNCTION_19_1();
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    *(inited + 144) = v77;
    OUTLINED_FUNCTION_19_1();
    *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGMd, &_sSaySDys11AnyHashableVypGGMR);
    *(inited + 216) = v55;
    return Dictionary.init(dictionaryLiteral:)();
  }

  v53 = v52;
  v79 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52 & ~(v52 >> 63), 0);
  if ((v53 & 0x8000000000000000) == 0)
  {
    v54 = 0;
    v55 = v79;
    do
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x223DD38A0](v54, v51);
      }

      else
      {
        v56 = *(v51 + 8 * v54 + 32);
      }

      v57 = v56;
      v58 = [v56 dictionaryRepresentation];
      v59 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = *(v79 + 16);
      v60 = *(v79 + 24);
      if (v61 >= v60 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
      }

      ++v54;
      *(v79 + 16) = v61 + 1;
      *(v79 + 8 * v61 + 32) = v59;
    }

    while (v53 != v54);

    goto LABEL_39;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id @objc SiriTurn.dictionaryRepresentation()(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  Dictionary._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_18_1();

  return v4;
}

uint64_t variable initialization expression of CurareInteractionSELFStream.logger@<X0>(uint64_t a1@<X8>)
{
  v2 = Logger.SELF.unsafeMutableAddressor();
  v3 = type metadata accessor for Logger();
  v4 = OUTLINED_FUNCTION_2_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v2, v4);
}

double variable initialization expression of CurareInteractionSELFStream.provider@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id CurareInteractionSELFStream.__allocating_init(filter:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_18_1();
  return CurareInteractionSELFStream.init(filter:)(v2);
}

id CurareInteractionSELFStream.init(filter:)(uint64_t a1)
{
  v3 = OBJC_IVAR___FSFCurareInteractionSELFStream_logger;
  v4 = Logger.SELF.unsafeMutableAddressor();
  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_1(v5);
  (*(v6 + 16))(&v1[v3], v4);
  v7 = &v1[OBJC_IVAR___FSFCurareInteractionSELFStream_provider];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *&v1[OBJC_IVAR___FSFCurareInteractionSELFStream_filter] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CurareInteractionSELFStream();
  return objc_msgSendSuper2(&v9, sel_init);
}

void *CurareInteractionSELFStream.__allocating_init(provider:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_18_1();
  return CurareInteractionSELFStream.init(provider:)(v2);
}

void *CurareInteractionSELFStream.init(provider:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___FSFCurareInteractionSELFStream_logger;
  v5 = Logger.SELF.unsafeMutableAddressor();
  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_1(v6);
  (*(v7 + 16))(&v2[v4], v5);
  v8 = &v2[OBJC_IVAR___FSFCurareInteractionSELFStream_provider];
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  outlined init with copy of InstrumentationStreamsProviderProtocol(a1, v14);
  swift_beginAccess();
  outlined assign with take of InstrumentationStreamsProviderProtocol?(v14, v8);
  swift_endAccess();
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *&v2[OBJC_IVAR___FSFCurareInteractionSELFStream_filter] = dispatch thunk of InstrumentationStreamsProviderProtocol.filter.getter();
  v13.receiver = v2;
  v13.super_class = type metadata accessor for CurareInteractionSELFStream();
  objc_msgSendSuper2(&v13, sel_init);
  v11 = OUTLINED_FUNCTION_18_1();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v10;
}

uint64_t CurareInteractionSELFStream.retrieve()()
{
  OUTLINED_FUNCTION_6_2();
  v1[61] = v0;
  v2 = type metadata accessor for UUID();
  v1[62] = v2;
  v3 = *(v2 - 8);
  v1[63] = v3;
  v4 = *(v3 + 64) + 15;
  v1[64] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams10EventGraphCGMd, &_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams10EventGraphCGMR);
  v1[65] = v5;
  v6 = *(v5 - 8);
  v1[66] = v6;
  v7 = *(v6 + 64) + 15;
  v1[67] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v1[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](CurareInteractionSELFStream.retrieve(), 0, 0);
}

{
  OUTLINED_FUNCTION_3_7();
  v1 = v0[61];
  v2 = OBJC_IVAR___FSFCurareInteractionSELFStream_provider;
  v0[69] = OBJC_IVAR___FSFCurareInteractionSELFStream_provider;
  swift_beginAccess();
  outlined init with copy of InstrumentationStreamsProviderProtocol?(v1 + v2, (v0 + 2), &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
  v3 = v0[5];
  outlined destroy of InstrumentationStreamsProviderProtocol?((v0 + 2), &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
  if (v3)
  {
    outlined init with copy of InstrumentationStreamsProviderProtocol?(v0[61] + v0[69], (v0 + 17), &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
    if (v0[20])
    {
      OUTLINED_FUNCTION_8_4();
      v4 = *(MEMORY[0x277CE4840] + 4);
      v5 = swift_task_alloc();
      v0[72] = v5;
      lazy protocol witness table accessor for type BookmarkablePublisher<EventGraph> and conformance BookmarkablePublisher<A>();
      *v5 = v0;
      v6 = OUTLINED_FUNCTION_2_10();

      return MEMORY[0x282137760](v6);
    }

    else
    {
      v14 = v0[61];
      outlined destroy of InstrumentationStreamsProviderProtocol?((v0 + 17), &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_23_2(&dword_223066000, v17, v18, "Stream should have both provider and filter. Returning empty result.");
        OUTLINED_FUNCTION_1();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVSayypGGMd, &_sSDys11AnyHashableVSayypGGMR);
      Dictionary.init(dictionaryLiteral:)();
      OUTLINED_FUNCTION_7_4();

      v19 = OUTLINED_FUNCTION_5_3();

      return v20(v19);
    }
  }

  else
  {
    v7 = v0[68];
    v8 = v0[61];
    type metadata accessor for InstrumentationStreamsFactory();
    v9 = *(v8 + OBJC_IVAR___FSFCurareInteractionSELFStream_filter);
    v10 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
    v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams015InstrumentationB7FactoryC9construct6filter9startTime03endH09maxEvents5lastN10storageURLQrAA11EventFilterC_SdSgAMSiSgAN10Foundation0N0VSgtYaKFZQOy_Qo_Md, &_s26AIMLInstrumentationStreams015InstrumentationB7FactoryC9construct6filter9startTime03endH09maxEvents5lastN10storageURLQrAA11EventFilterC_SdSgAMSiSgAN10Foundation0N0VSgtYaKFZQOy_Qo_MR);
    v0[11] = swift_getOpaqueTypeConformance2();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    v12 = *(MEMORY[0x277CE4860] + 4);
    v13 = swift_task_alloc();
    v0[70] = v13;
    *v13 = v0;
    v13[1] = CurareInteractionSELFStream.retrieve();
    v23 = v0[68];

    return MEMORY[0x2821377B0](boxed_opaque_existential_1, v9, 0, 1, 0, 1, 0, 1);
  }
}

{
  OUTLINED_FUNCTION_3_7();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = *(v2 + 560);
  *v4 = *v1;
  *(v3 + 568) = v0;

  outlined destroy of InstrumentationStreamsProviderProtocol?(*(v2 + 544), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v0)
  {
    v6 = CurareInteractionSELFStream.retrieve();
  }

  else
  {
    v6 = CurareInteractionSELFStream.retrieve();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  OUTLINED_FUNCTION_3_7();
  v1 = v0[69];
  v2 = v0[61];
  swift_beginAccess();
  outlined assign with take of InstrumentationStreamsProviderProtocol?((v0 + 7), v2 + v1);
  swift_endAccess();
  outlined init with copy of InstrumentationStreamsProviderProtocol?(v0[61] + v0[69], (v0 + 17), &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
  if (v0[20])
  {
    OUTLINED_FUNCTION_8_4();
    v3 = *(MEMORY[0x277CE4840] + 4);
    v4 = swift_task_alloc();
    v0[72] = v4;
    lazy protocol witness table accessor for type BookmarkablePublisher<EventGraph> and conformance BookmarkablePublisher<A>();
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_2_10();

    return MEMORY[0x282137760](v5);
  }

  else
  {
    v6 = v0[61];
    outlined destroy of InstrumentationStreamsProviderProtocol?((v0 + 17), &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23_2(&dword_223066000, v9, v10, "Stream should have both provider and filter. Returning empty result.");
      OUTLINED_FUNCTION_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVSayypGGMd, &_sSDys11AnyHashableVSayypGGMR);
    Dictionary.init(dictionaryLiteral:)();
    OUTLINED_FUNCTION_7_4();

    v11 = OUTLINED_FUNCTION_5_3();

    return v12(v11);
  }
}

{
  OUTLINED_FUNCTION_3_7();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = v2[72];
  v6 = *v1;
  OUTLINED_FUNCTION_12();
  *v7 = v6;
  *(v9 + 584) = v8;
  *(v9 + 592) = v0;

  (*(v2[66] + 8))(v2[67], v2[65]);
  if (v0)
  {
    v10 = CurareInteractionSELFStream.retrieve();
  }

  else
  {
    v10 = CurareInteractionSELFStream.retrieve();
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

{
  OUTLINED_FUNCTION_3_7();
  __swift_deallocate_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 568);
  OUTLINED_FUNCTION_7_4();

  OUTLINED_FUNCTION_23();

  return v2();
}

{
  OUTLINED_FUNCTION_3_7();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 592);
  OUTLINED_FUNCTION_7_4();

  OUTLINED_FUNCTION_23();

  return v2();
}

void CurareInteractionSELFStream.retrieve()()
{
  v255 = v0;
  v1 = *(v0 + 584);
  v251 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v2 = specialized Array.count.getter(v1);
  if (!v2)
  {
LABEL_124:
    v210 = *(v0 + 584);

    *&v252 = 0;
    v211 = v251;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVSayypGGMd, &_sSDys11AnyHashableVSayypGGMR);
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v252)
    {
    }

    else
    {
      v212 = *(v0 + 488) + OBJC_IVAR___FSFCurareInteractionSELFStream_logger;
      v213 = Logger.logObject.getter();
      v214 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v213, v214))
      {
        v215 = swift_slowAlloc();
        *v215 = 0;
        OUTLINED_FUNCTION_1();
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    OUTLINED_FUNCTION_7_4();

    v216 = OUTLINED_FUNCTION_5_3();

    v217(v216);
    return;
  }

  v4 = v2;
  v5 = 0;
  v238 = (v0 + 248);
  v6 = *(v0 + 584);
  v234 = v6 & 0xC000000000000001;
  v241 = *(v0 + 488);
  v227 = v6 + 32;
  v232 = (*(v0 + 504) + 8);
  v239 = OBJC_IVAR___FSFCurareInteractionSELFStream_logger;
  v226 = OBJC_IVAR___FSFCurareInteractionSELFStream_filter;
  v7 = *(v0 + 592);
  *&v3 = 136315138;
  v235 = v3;
  *&v3 = 136315906;
  v224 = v3;
  v231 = v2;
  v233 = (v0 + 280);
  while (1)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v234 == 0, *(v0 + 584));
    if (v234)
    {
      v8 = MEMORY[0x223DD38A0](v5, *(v0 + 584));
    }

    else
    {
      v8 = *(v227 + 8 * v5);
    }

    v9 = v8;
    v10 = __OFADD__(v5, 1);
    v11 = v5 + 1;
    if (v10)
    {
      goto LABEL_135;
    }

    v237 = v11;
    v12 = dispatch thunk of EventGraph.componentIdentifiers.getter();
    v13 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSo21SISchemaComponentNameV_Shy19SiriInstrumentation0E10IdentifierCGTt1g5095_s12FeatureStore27CurareInteractionSELFStreamC8retrieveSDys11AnyHashableVSDyAFSayypGGGyYaKFSo21def3V19g19Instrumentation0J10I6CXEfU_Tf1nc_n(v12);
    v14 = specialized Dictionary.subscript.getter(1u, v13);
    if (v14)
    {
      break;
    }

    v14 = specialized Dictionary.subscript.getter(9u, v13);
    if (v14)
    {
      break;
    }

    v36 = v9;
    v44 = OUTLINED_FUNCTION_14_3(v36, v124, v125, v126, v127, v128, v129, v130, v218, v219, log, v221, v222, v223, v224, *(&v224 + 1), v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, *(&v235 + 1), v236, v11, v238, v239);
    v131 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v44, v131))
    {
LABEL_88:

      goto LABEL_90;
    }

    v46 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v141 = [v36 dictionaryRepresentation];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_21_1();
    v142 = Dictionary.description.getter();
    v144 = v143;

    v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v144, &v252);

    *(v46 + 4) = v145;
    v61 = v131;
    v62 = v44;
    v63 = "Event graph missed both orchId and mhID! Ignoring: %s";
LABEL_33:
    _os_log_impl(&dword_223066000, v62, v61, v63, v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v250);
    OUTLINED_FUNCTION_1();
    v4 = v231;
    OUTLINED_FUNCTION_1();

LABEL_90:
    v5 = v237;
    if (v237 == v4)
    {
      goto LABEL_124;
    }
  }

  v15 = v14;
  if (specialized Array.count.getter(v14) != 1 || !specialized Array.count.getter(v15))
  {

    v36 = v9;
    v44 = OUTLINED_FUNCTION_14_3(v36, v37, v38, v39, v40, v41, v42, v43, v218, v219, log, v221, v222, v223, v224, *(&v224 + 1), v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, *(&v235 + 1), v236, v11, v238, v239);
    v45 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_88;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v56 = [v36 dictionaryRepresentation];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_21_1();
    v57 = Dictionary.description.getter();
    v59 = v58;

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v252);

    *(v46 + 4) = v60;
    v61 = v45;
    v62 = v44;
    v63 = "Event graph has multiple UUIDs for component to key! Ignoring: %s";
    goto LABEL_33;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x223DD38A0](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_142;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;
  v18 = *(v0 + 512);
  v19 = *(v0 + 496);
  dispatch thunk of ComponentIdentifier.uuid.getter();

  v240 = UUID.uuidString.getter();
  v242 = v20;
  v250 = *v232;
  (*v232)(v18, v19);
  v21 = 0;
  v22 = v13;
  v25 = *(v13 + 64);
  v24 = v13 + 64;
  v23 = v25;
  v26 = -1 << *(v24 - 32);
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v23;
  v29 = (63 - v26) >> 6;
  v229 = v7;
  v230 = v9;
  while (2)
  {
    if (v28)
    {
      goto LABEL_23;
    }

    while (2)
    {
      v30 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_134;
      }

      if (v30 >= v29)
      {

        goto LABEL_35;
      }

      v28 = *(v24 + 8 * v30);
      ++v21;
      if (!v28)
      {
        continue;
      }

      break;
    }

    v21 = v30;
LABEL_23:
    v31 = __clz(__rbit64(v28)) | (v21 << 6);
    v32 = *(*(v22 + 48) + 4 * v31);
    v33 = *(*(v22 + 56) + 8 * v31);
    if (v33 >> 62)
    {
      v223 = v22;
      if (v33 < 0)
      {
        v35 = *(*(v22 + 56) + 8 * v31);
      }

      else
      {
        v35 = v33 & 0xFFFFFFFFFFFFFF8;
      }

      v34 = MEMORY[0x223DD39B0](v35);
      v22 = v223;
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 &= v28 - 1;
    if (v34 <= 1)
    {
      continue;
    }

    break;
  }

  v245 = v34;
  v146 = v22;

  v248 = v33;
  v147 = v9;
  v155 = OUTLINED_FUNCTION_14_3(v147, v148, v149, v150, v151, v152, v153, v154, v218, v219, log, v221, v222, v223, v224, *(&v224 + 1), v225, v226, v227, v228, v7, v9, v231, v232, v233, v234, v235, *(&v235 + 1), v236, v237, v238, v239);
  v156 = static os_log_type_t.info.getter();
  v221 = v147;

  if (!os_log_type_enabled(v155, v156))
  {

LABEL_35:
    v64 = dispatch thunk of EventGraph.events()();
    v65 = *(v241 + v226);
    *&v252 = MEMORY[0x277D84F90];
    v66 = specialized Array.count.getter(v64);
    v67 = v65;
    for (i = 0; v66 != i; ++i)
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v69 = MEMORY[0x223DD38A0](i, v64);
      }

      else
      {
        if (i >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_133;
        }

        v69 = *(v64 + 8 * i + 32);
      }

      v70 = v69;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      *(v0 + 200) = type metadata accessor for OrderedEvent();
      *(v0 + 208) = MEMORY[0x277CE4848];
      *(v0 + 176) = v70;
      v71 = v70;
      v72 = dispatch thunk of EventFilter.isAllowed(_:)();
      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      if (v72)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v73 = *(v252 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }
    }

    v74 = v252;
    v75 = specialized Array.count.getter(v252);
    if (v75)
    {
      v76 = v75;
      v250 = objc_opt_self();
      if (v76 < 1)
      {
        goto LABEL_143;
      }

      v77 = 0;
      v244 = v74;
      v247 = v74 & 0xC000000000000001;
      v243 = v76;
      while (2)
      {
        if (v247)
        {
          v78 = MEMORY[0x223DD38A0](v77, v74);
        }

        else
        {
          v78 = *(v74 + 8 * v77 + 32);
        }

        v79 = v78;
        v80 = [v78 dictionaryRepresentation];
        v81 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        OUTLINED_FUNCTION_21_1();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v83 = [v250 isValidJSONObject_];

        if (v83)
        {
          v84 = OrderedEvent.innerType.getter();
          if (v84)
          {
            v85 = v84;
            *(v0 + 472) = OrderedEvent.outerType.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25SISchemaTopLevelUnionTypeCmMd, &_sSo25SISchemaTopLevelUnionTypeCmMR);
            *&v252 = String.init<A>(describing:)();
            *(&v252 + 1) = v86;
            MEMORY[0x223DD3460](46, 0xE100000000000000);
            *(v0 + 480) = v85;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30SISchemaInstrumentationMessageCmMd, &_sSo30SISchemaInstrumentationMessageCmMR);
            v87 = String.init<A>(describing:)();
            MEMORY[0x223DD3460](v87);

            v89 = *(&v252 + 1);
            v88 = v252;
          }

          else
          {
            *(v0 + 440) = OrderedEvent.outerType.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25SISchemaTopLevelUnionTypeCmMd, &_sSo25SISchemaTopLevelUnionTypeCmMR);
            v88 = String.init<A>(describing:)();
            v89 = v106;
          }

          *(v0 + 360) = v88;
          *(v0 + 368) = v89;
          v107 = [v251 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v107)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v252 = 0u;
            v253 = 0u;
          }

          v108 = v252;
          *(v0 + 232) = v253;
          *(v0 + 216) = v108;
          if (*(v0 + 240))
          {
            type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x277CBEB38);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_73;
            }

            v109 = *(v0 + 456);
            *(v0 + 424) = v240;
            *(v0 + 432) = v242;

            v110 = [v109 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v110)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v252 = 0u;
              v253 = 0u;
            }

            v112 = v253;
            *v233 = v252;
            v233[1] = v112;
            if (*(v0 + 304))
            {
              type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSMutableArray, 0x277CBEB18);
              if (swift_dynamicCast())
              {

                v113 = *(v0 + 464);
                v114 = [v79 dictionaryRepresentation];
                static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                v115 = Dictionary._bridgeToObjectiveC()().super.isa;

                [v113 addObject_];

                goto LABEL_79;
              }

LABEL_73:
              *(v0 + 376) = v88;
              *(v0 + 384) = v89;

              v116 = [v251 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v116)
              {
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
              }

              else
              {
                v252 = 0u;
                v253 = 0u;
              }

              v117 = v253;
              *v238 = v252;
              v238[1] = v117;
              if (*(v0 + 272))
              {
                type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x277CBEB38);
                if (swift_dynamicCast())
                {

                  v118 = *(v0 + 448);
                  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSMutableArray, 0x277CBEB18);
                  *(&v253 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
                  *&v252 = v81;
                  v109 = @nonobjc NSMutableArray.__allocating_init(object:)(&v252);
                  *(v0 + 408) = v240;
                  *(v0 + 416) = v242;

                  [v118 __swift_setObject_forKeyedSubscript_];

                  swift_unknownObjectRelease();
LABEL_79:

LABEL_82:
                  v76 = v243;
                  v74 = v244;
LABEL_83:
                  if (v76 == ++v77)
                  {
                    goto LABEL_89;
                  }

                  continue;
                }
              }

              else
              {
                outlined destroy of InstrumentationStreamsProviderProtocol?(v238, &_sypSgMd, &_sypSgMR);
              }

              type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSMutableArray, 0x277CBEB18);
              *(&v253 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
              *&v252 = v81;
              v119 = @nonobjc NSMutableArray.__allocating_init(object:)(&v252);
              v120 = MEMORY[0x223DD33D0](v240, v242);
              v121 = objc_opt_self();
              v122 = v119;
              v123 = [v121 dictionaryWithObject:v122 forKey:v120];

              *(v0 + 392) = v88;
              *(v0 + 400) = v89;
              [v251 __swift_setObject_forKeyedSubscript_];

              swift_unknownObjectRelease();
              goto LABEL_82;
            }

            v111 = v233;
          }

          else
          {
            v111 = v0 + 216;
          }

          outlined destroy of InstrumentationStreamsProviderProtocol?(v111, &_sypSgMd, &_sypSgMR);
          goto LABEL_73;
        }

        break;
      }

      v98 = OUTLINED_FUNCTION_14_3(v90, v91, v92, v93, v94, v95, v96, v97, v218, v219, log, v221, v222, v223, v224, *(&v224 + 1), v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, *(&v235 + 1), v236, v237, v238, v239);
      v99 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v252 = v101;
        *v100 = v235;
        OUTLINED_FUNCTION_21_1();
        v102 = Dictionary.description.getter();
        v104 = v103;

        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &v252);

        *(v100 + 4) = v105;
        _os_log_impl(&dword_223066000, v98, v99, "Event is not a valid JSON Object! Ignoring: %s", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v101);
        v74 = v244;
        OUTLINED_FUNCTION_1();
        v76 = v243;
        OUTLINED_FUNCTION_1();
      }

      else
      {
      }

      goto LABEL_83;
    }

LABEL_89:

    v4 = v231;
    v7 = v229;
    goto LABEL_90;
  }

  HIDWORD(v219) = v156;
  log = v155;
  v223 = v146;
  v158 = swift_slowAlloc();
  v218 = swift_slowAlloc();
  v254[0] = v218;
  *v158 = v224;
  v159 = SISchemaComponentName.description.getter();
  v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v160, v254);

  *(v158 + 4) = v161;
  v222 = v158;
  *(v158 + 12) = 2080;
  *&v252 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v245, 0);
  v162 = 0;
  v163 = v252;
  v164 = v248;
  v228 = v248 & 0xC000000000000001;
  do
  {
    if (v228)
    {
      v165 = MEMORY[0x223DD38A0](v162);
    }

    else
    {
      v165 = *(v164 + 8 * v162 + 32);
    }

    v166 = v165;
    v167 = *(v0 + 512);
    v168 = *(v0 + 496);
    dispatch thunk of ComponentIdentifier.uuid.getter();
    v169 = UUID.uuidString.getter();
    v171 = v170;

    (v250)(v167, v168);
    *&v252 = v163;
    v173 = *(v163 + 16);
    v172 = *(v163 + 24);
    if (v173 >= v172 >> 1)
    {
      OUTLINED_FUNCTION_20_2(v172);
      v163 = v252;
    }

    ++v162;
    *(v163 + 16) = v173 + 1;
    v174 = v163 + 16 * v173;
    *(v174 + 32) = v169;
    *(v174 + 40) = v171;
    v164 = v248;
  }

  while (v245 != v162);

  v175 = MEMORY[0x223DD34D0](v163, MEMORY[0x277D837D0]);
  v177 = v176;

  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v177, v254);
  OUTLINED_FUNCTION_18_1();

  *(v222 + 14) = v175;
  *(v222 + 22) = 2080;
  v178 = *(v223 + 16);
  if (!v178)
  {

    v179 = MEMORY[0x277D84F90];
LABEL_122:
    MEMORY[0x223DD34D0](v179, MEMORY[0x277D837D0]);

    v201 = OUTLINED_FUNCTION_13_2();
    v204 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v201, v202, v203);

    *(v222 + 24) = v204;
    *(v222 + 32) = 2080;
    v205 = [v221 dictionaryRepresentation];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_13_2();
    v206 = Dictionary.description.getter();
    v208 = v207;

    v209 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v206, v208, v254);

    *(v222 + 34) = v209;
    _os_log_impl(&dword_223066000, log, BYTE4(v219), "Event graph has multiple UUIDs for some components. Could this be a product error?\nComponent: %s Identifiers: %s\nComponentIdentifiers: %s\nEventGraph: %s", v222, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();

    goto LABEL_35;
  }

  *&v252 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v178, 0);
  v179 = v252;
  v181 = specialized Dictionary.startIndex.getter(v223);
  v182 = 0;
  v183 = *(v223 + 32);
  v225 = v223 + 72;
  v228 = v178;
  v246 = v180;
  while (1)
  {
    if (v181 < 0 || v181 >= 1 << v183)
    {
      goto LABEL_136;
    }

    v184 = v181 >> 6;
    if ((*(v24 + 8 * (v181 >> 6)) & (1 << v181)) == 0)
    {
      break;
    }

    if (*(v223 + 36) != v180)
    {
      goto LABEL_138;
    }

    v185 = *(*(v223 + 48) + 4 * v181);
    v186 = *(*(v223 + 56) + 8 * v181);

    v187 = closure #3 in implicit closure #6 in CurareInteractionSELFStream.retrieve()(v185, v186);
    v249 = v188;
    v250 = v187;

    *&v252 = v179;
    v190 = *(v179 + 16);
    v189 = *(v179 + 24);
    if (v190 >= v189 >> 1)
    {
      OUTLINED_FUNCTION_20_2(v189);
      v179 = v252;
    }

    *(v179 + 16) = v190 + 1;
    v191 = v179 + 16 * v190;
    *(v191 + 32) = v250;
    *(v191 + 40) = v249;
    v183 = *(v223 + 32);
    v192 = 1 << v183;
    if (v181 >= 1 << v183)
    {
      goto LABEL_139;
    }

    v193 = *(v24 + 8 * v184);
    if ((v193 & (1 << v181)) == 0)
    {
      goto LABEL_140;
    }

    v180 = v246;
    if (*(v223 + 36) != v246)
    {
      goto LABEL_141;
    }

    v194 = v193 & (-2 << (v181 & 0x3F));
    if (v194)
    {
      v192 = __clz(__rbit64(v194)) | v181 & 0x7FFFFFFFFFFFFFC0;
      v195 = v228;
    }

    else
    {
      v196 = v184 << 6;
      v197 = (v225 + 8 * v184);
      v198 = v184 + 1;
      v195 = v228;
      while (v198 < (v192 + 63) >> 6)
      {
        v200 = *v197++;
        v199 = v200;
        v196 += 64;
        ++v198;
        if (v200)
        {
          v192 = __clz(__rbit64(v199)) + v196;
          break;
        }
      }
    }

    ++v182;
    v181 = v192;
    if (v182 == v195)
    {

      goto LABEL_122;
    }
  }

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
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSo21SISchemaComponentNameV_Shy19SiriInstrumentation0E10IdentifierCGTt1g5095_s12FeatureStore27CurareInteractionSELFStreamC8retrieveSDys11AnyHashableVSDyAFSayypGGGyYaKFSo21def3V19g19Instrumentation0J10I6CXEfU_Tf1nc_n(uint64_t a1)
{
  v37 = MEMORY[0x277D84F98];
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for ComponentIdentifier();
    lazy protocol witness table accessor for type ComponentIdentifier and conformance NSObject(&lazy protocol witness table cache variable for type ComponentIdentifier and conformance NSObject, MEMORY[0x277D56708]);
    Set.Iterator.init(_cocoa:)();
    a1 = v32;
    v1 = v33;
    v2 = v34;
    v3 = v35;
    v4 = v36;
  }

  else
  {
    v3 = 0;
    v5 = -1 << *(a1 + 32);
    v1 = a1 + 56;
    v2 = ~v5;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v4 = v7 & *(a1 + 56);
  }

  v8 = (v2 + 64) >> 6;
  v9 = MEMORY[0x277D84F98];
  v30 = a1;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = v3;
  v11 = v4;
  v12 = v3;
  if (v4)
  {
LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_28:
      outlined consume of Set<ComponentIdentifier>.Iterator._Variant();
      return v9;
    }

    while (1)
    {
      v15 = ComponentIdentifier.componentName.getter();
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      v18 = v9[2];
      v19 = (v16 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        break;
      }

      v21 = v16;
      if (v9[3] < v20)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, 1);
        v9 = v37;
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_32;
        }

        v17 = v22;
      }

      if (v21)
      {
        v24 = (v9[7] + 8 * v17);
        MEMORY[0x223DD34A0]();
        if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_2230931F0;
        *(v25 + 32) = v14;
        v9[(v17 >> 6) + 8] |= 1 << v17;
        *(v9[6] + 4 * v17) = v15;
        *(v9[7] + 8 * v17) = v25;
        v26 = v9[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_31;
        }

        v9[2] = v28;
      }

      v3 = v12;
      v4 = v13;
      a1 = v30;
      if ((v30 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for ComponentIdentifier();
        swift_dynamicCast();
        v14 = v31;
        v12 = v3;
        v13 = v4;
        if (v31)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  else
  {
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_28;
      }

      v11 = *(v1 + 8 * v12);
      ++v10;
      if (v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  type metadata accessor for SISchemaComponentName();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.subscript.getter(Swift::UInt32 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

char *closure #3 in implicit closure #6 in CurareInteractionSELFStream.retrieve()(uint64_t a1, unint64_t a2)
{
  v26 = type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_0(v26);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v29 = SISchemaComponentName.description.getter();
  MEMORY[0x223DD3460](2112032, 0xE300000000000000);
  v27 = a2;
  v11 = specialized Array.count.getter(a2);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_10:
    MEMORY[0x223DD34D0](v12, MEMORY[0x277D837D0]);

    v25 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x223DD3460](v25);

    return v29;
  }

  v13 = v11;
  v28 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v12 = v28;
    v16 = (v5 + 8);
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x223DD38A0](v15, v27);
      }

      else
      {
        v17 = *(v27 + 8 * v15 + 32);
      }

      v18 = v17;
      dispatch thunk of ComponentIdentifier.uuid.getter();
      v19 = UUID.uuidString.getter();
      v21 = v20;

      (*v16)(v10, v26);
      v23 = *(v28 + 16);
      v22 = *(v28 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      }

      ++v15;
      *(v28 + 16) = v23 + 1;
      v24 = v28 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
    }

    while (v13 != v15);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id @nonobjc NSMutableArray.__allocating_init(object:)(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = _bridgeAnythingToObjectiveC<A>(_:)();
  v3 = [swift_getObjCClassFromMetadata() arrayWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t @objc closure #1 in CurareInteractionSELFStream.retrieve()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in CurareInteractionSELFStream.retrieve();

  return CurareInteractionSELFStream.retrieve()();
}

uint64_t @objc closure #1 in CurareInteractionSELFStream.retrieve()()
{
  OUTLINED_FUNCTION_3_7();
  v2 = v0;
  OUTLINED_FUNCTION_27();
  v4 = v3;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v9 = *v1;
  OUTLINED_FUNCTION_7();
  *v10 = v9;

  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    isa = 0;
    v13 = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVSayypGGMd, &_sSDys11AnyHashableVSayypGGMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = 0;
    v13 = isa;
  }

  v14 = *(v4 + 24);
  (v14)[2](v14, isa, v11);

  _Block_release(v14);
  OUTLINED_FUNCTION_23();

  return v15();
}

uint64_t _runTaskForBridgedAsyncMethod(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &_sIeghH_IeAgH_TRTATu;
  v10[5] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v10);
}

id CurareInteractionSELFStream.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CurareInteractionSELFStream.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CurareInteractionSELFStream();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, Swift::UInt32 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SISchemaComponentName@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = SISchemaComponentName.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SISchemaComponentName@<X0>(_DWORD *a1@<X8>)
{
  result = destructiveProjectEnumData for CompressionPolicy(*v1);
  *a1 = result;
  return result;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = partial apply for closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>();

  return v8();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  outlined init with copy of InstrumentationStreamsProviderProtocol?(a3, v25 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of InstrumentationStreamsProviderProtocol?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      outlined destroy of InstrumentationStreamsProviderProtocol?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of InstrumentationStreamsProviderProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt32 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21SISchemaComponentNameVSay19SiriInstrumentation0D10IdentifierCGGMd, &_ss18_DictionaryStorageCySo21SISchemaComponentNameVSay19SiriInstrumentation0D10IdentifierCGGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v32 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v31 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 4 * v19);
    v21 = *(*(v5 + 56) + 8 * v19);
    if ((v33 & 1) == 0)
    {
    }

    v22 = *(v8 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v20);
    result = Hasher._finalize()();
    v23 = -1 << *(v8 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v8 + 48) + 4 * v26) = v20;
    *(*(v8 + 56) + 8 * v26) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v15 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd, _ss17_NativeDictionaryVys11AnyHashableVypGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v14);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {
    outlined init with copy of AnyHashable(a2, v22);
    return specialized _NativeDictionary._insert(at:key:value:)(v14, v22, a1, v19);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t type metadata accessor for CurareInteractionSELFStream()
{
  result = type metadata singleton initialization cache for CurareInteractionSELFStream;
  if (!type metadata singleton initialization cache for CurareInteractionSELFStream)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of InstrumentationStreamsProviderProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of InstrumentationStreamsProviderProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMd, &_s26AIMLInstrumentationStreams015InstrumentationB16ProviderProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x223DD4390);
  }

  return result;
}

uint64_t outlined init with take of InstrumentationStreamsProviderProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t lazy protocol witness table accessor for type BookmarkablePublisher<EventGraph> and conformance BookmarkablePublisher<A>()
{
  result = lazy protocol witness table cache variable for type BookmarkablePublisher<EventGraph> and conformance BookmarkablePublisher<A>;
  if (!lazy protocol witness table cache variable for type BookmarkablePublisher<EventGraph> and conformance BookmarkablePublisher<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams10EventGraphCGMd, &_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams10EventGraphCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BookmarkablePublisher<EventGraph> and conformance BookmarkablePublisher<A>);
  }

  return result;
}

uint64_t type metadata accessor for NSMutableArray(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Dictionary.startIndex.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t type metadata completion function for CurareInteractionSELFStream()
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of CurareInteractionSELFStream.retrieve()()
{
  OUTLINED_FUNCTION_3_7();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_4(v3);
  *v4 = v5;
  v4[1] = dispatch thunk of CurareInteractionSELFStream.retrieve();

  return v7();
}

{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  OUTLINED_FUNCTION_27();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t partial apply for @objc closure #1 in CurareInteractionSELFStream.retrieve()()
{
  OUTLINED_FUNCTION_3_7();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_4(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>();

  return @objc closure #1 in CurareInteractionSELFStream.retrieve()(v1, v2);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_4(v5);
  *v6 = v7;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;
  v8 = OUTLINED_FUNCTION_13_2();

  return v9(v8);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_4(v7);
  *v8 = v9;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v3, v4, v6);
}

uint64_t outlined init with copy of InstrumentationStreamsProviderProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of InstrumentationStreamsProviderProtocol?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_3(v4);

  return v7(v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_26()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_3(v4);

  return v7(v6);
}

void type metadata accessor for SISchemaComponentName()
{
  if (!lazy cache variable for type metadata for SISchemaComponentName)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for SISchemaComponentName);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ComponentIdentifier and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

char *OUTLINED_FUNCTION_20_2@<X0>(unint64_t a1@<X8>)
{

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((a1 > 1), v1, 1);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for StreamQuery.startDate : StreamQuery(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x78))(v7);
}

uint64_t variable initialization expression of StreamQuery.endDate()
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_25();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

Class @objc StreamQuery.startDate.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v12 - v7;
  a3(v6);
  v9 = type metadata accessor for Date();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  return isa;
}

uint64_t StreamQuery.startDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v2 + v4, a2);
}

void @objc StreamQuery.startDate.setter(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for Date();
    v12 = 0;
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v12, 1, v11);
  v13 = a1;
  a4(v10);
}

uint64_t StreamQuery.startDate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t key path setter for StreamQuery.endDate : StreamQuery(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x90))(v7);
}

uint64_t StreamQuery.interactionIds.getter()
{
  v1 = OBJC_IVAR___FSFStreamQuery_interactionIds;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t StreamQuery.interactionIds.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___FSFStreamQuery_interactionIds;
  OUTLINED_FUNCTION_4_6();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for StreamQuery.interactionIds : StreamQuery@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for StreamQuery.interactionIds : StreamQuery(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);

  return v3(v4);
}

uint64_t key path getter for StreamQuery.taskId : StreamQuery@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for StreamQuery.taskId : StreamQuery(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xC0);

  return v4(v2, v3);
}

uint64_t StreamQuery.taskId.getter()
{
  v1 = (v0 + OBJC_IVAR___FSFStreamQuery_taskId);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t StreamQuery.taskId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___FSFStreamQuery_taskId);
  OUTLINED_FUNCTION_4_6();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id StreamQuery.init(startDate:endDate:interactionIds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR___FSFStreamQuery_startDate;
  v8 = type metadata accessor for Date();
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = OBJC_IVAR___FSFStreamQuery_endDate;
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
  v16 = OBJC_IVAR___FSFStreamQuery_interactionIds;
  *&v3[OBJC_IVAR___FSFStreamQuery_interactionIds] = MEMORY[0x277D84F90];
  v17 = &v3[OBJC_IVAR___FSFStreamQuery_taskId];
  *v17 = 0;
  *(v17 + 1) = 0;
  OUTLINED_FUNCTION_2_11();
  outlined assign with copy of Date?(a1, &v3[v7]);
  swift_endAccess();
  OUTLINED_FUNCTION_2_11();
  outlined assign with copy of Date?(a2, &v3[v12]);
  swift_endAccess();
  OUTLINED_FUNCTION_4_6();
  v18 = *&v3[v16];
  *&v3[v16] = a3;

  OUTLINED_FUNCTION_4_6();
  v19 = *(v17 + 1);
  *v17 = 0;
  *(v17 + 1) = 0;

  v22.receiver = v3;
  v22.super_class = type metadata accessor for StreamQuery();
  v20 = objc_msgSendSuper2(&v22, sel_init);
  outlined destroy of Date?(a2);
  outlined destroy of Date?(a1);
  return v20;
}

uint64_t outlined assign with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for StreamQuery()
{
  result = type metadata singleton initialization cache for StreamQuery;
  if (!type metadata singleton initialization cache for StreamQuery)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id StreamQuery.init(startDate:endDate:interactionIds:taskId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR___FSFStreamQuery_startDate;
  v12 = type metadata accessor for Date();
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = OBJC_IVAR___FSFStreamQuery_endDate;
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  v20 = OBJC_IVAR___FSFStreamQuery_interactionIds;
  *&v5[OBJC_IVAR___FSFStreamQuery_interactionIds] = MEMORY[0x277D84F90];
  v21 = &v5[OBJC_IVAR___FSFStreamQuery_taskId];
  *v21 = 0;
  *(v21 + 1) = 0;
  OUTLINED_FUNCTION_2_11();
  outlined assign with copy of Date?(a1, &v5[v11]);
  swift_endAccess();
  OUTLINED_FUNCTION_2_11();
  outlined assign with copy of Date?(a2, &v5[v16]);
  swift_endAccess();
  OUTLINED_FUNCTION_4_6();
  v22 = *&v5[v20];
  *&v5[v20] = a3;

  OUTLINED_FUNCTION_4_6();
  v23 = *(v21 + 1);
  *v21 = a4;
  *(v21 + 1) = a5;

  v26.receiver = v5;
  v26.super_class = type metadata accessor for StreamQuery();
  v24 = objc_msgSendSuper2(&v26, sel_init);
  outlined destroy of Date?(a2);
  outlined destroy of Date?(a1);
  return v24;
}

uint64_t StreamQuery.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(72);
  MEMORY[0x223DD3460](0xD000000000000017, 0x8000000223094820);
  v3 = *v0;
  OUTLINED_FUNCTION_1_10();
  (*(v4 + 112))();
  v5 = String.init<A>(describing:)();
  MEMORY[0x223DD3460](v5);

  MEMORY[0x223DD3460](0x746144646E65202CLL, 0xEB00000000203A65);
  v6 = *v0;
  OUTLINED_FUNCTION_1_10();
  (*(v7 + 136))();
  v8 = String.init<A>(describing:)();
  MEMORY[0x223DD3460](v8);

  MEMORY[0x223DD3460](0xD000000000000013, 0x8000000223094840);
  v9 = *v0;
  OUTLINED_FUNCTION_1_10();
  (*(v10 + 160))();
  v11 = MEMORY[0x223DD34D0]();
  v13 = v12;

  MEMORY[0x223DD3460](v11, v13);

  MEMORY[0x223DD3460](0x64496B736174202CLL, 0xEA0000000000203ALL);
  v14 = *v0;
  OUTLINED_FUNCTION_1_10();
  v19 = (*(v15 + 184))();
  v20 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v17 = String.init<A>(describing:)();
  MEMORY[0x223DD3460](v17);

  MEMORY[0x223DD3460](41, 0xE100000000000000);
  return v21;
}

id StreamQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StreamQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StreamQuery();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for StreamQuery()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDBA0]();
}