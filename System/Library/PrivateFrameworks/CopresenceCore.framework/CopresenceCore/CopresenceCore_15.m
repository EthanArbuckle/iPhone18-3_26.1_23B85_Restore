CopresenceCore::EmptyPresenceContext_optional __swiftcall EmptyPresenceContext.init(dictionary:)(Swift::OpaquePointer dictionary)
{
  v1 = *(dictionary._rawValue + 2);

  return (v1 != 0);
}

uint64_t protocol witness for DictionaryConvertible.init(dictionary:) in conformance EmptyPresenceContext@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 16);

  *a2 = v3 != 0;
  return result;
}

uint64_t *ActivityListPresenceContext.defaultValue.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return &static ActivityListPresenceContext.defaultValue;
}

uint64_t static ActivityListPresenceContext.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }
}

uint64_t key path setter for ActivityListPresenceContext.activityIDs : ActivityListPresenceContext(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  ActivityListPresenceContext.activityIDs.willset();
  v4 = *a2;

  *a2 = v3;
  return result;
}

uint64_t ActivityListPresenceContext.activityIDs.setter(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.service);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v9 = Set.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Updating activity list context to current activities: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v12 = *v2;

  *v2 = a1;
  return result;
}

void ActivityListPresenceContext.activityIDs.willset()
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.service);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v4 = Set.description.getter();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1AEB26000, oslog, v1, "Updating activity list context to current activities: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1B27120C0](v3, -1, -1);
    MEMORY[0x1B27120C0](v2, -1, -1);
  }
}

uint64_t (*ActivityListPresenceContext.activityIDs.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return ActivityListPresenceContext.activityIDs.modify;
}

uint64_t ActivityListPresenceContext.activityIDs.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = one-time initialization token for service;
  if (a2)
  {
    v5 = *a1;

    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.service);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = a1[2];
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136315138;
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v13 = Set.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v28);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1AEB26000, v7, v8, "Updating activity list context to current activities: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1B27120C0](v12, -1, -1);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    v16 = *a1;
    *a1[1] = v3;
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.service);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = a1[2];
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v25 = Set.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v28);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Updating activity list context to current activities: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1B27120C0](v24, -1, -1);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

    *a1[1] = v3;
  }

  return result;
}

uint64_t ActivityListPresenceContext.makeIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  v4 = -v2;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  *a2 = a1;
  a2[1] = a1 + 56;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v6;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ActivityListPresenceContext@<X0>(void *a1@<X8>)
{
  ActivityListPresenceContext.makeIterator()(*v1, a1);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ActivityListPresenceContext()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v1;
}

BOOL ActivityListPresenceContext.DictionaryKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ActivityListPresenceContext.DictionaryKeys.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActivityListPresenceContext.DictionaryKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivityListPresenceContext.DictionaryKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ActivityListPresenceContext.DictionaryKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance ActivityListPresenceContext.DictionaryKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t ActivityListPresenceContext.dictionaryRepresentation.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B20;
  *(inited + 32) = 0x7974697669746361;
  *(inited + 40) = 0xEB00000000734449;
  v3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_SSs5NeverOTg5109_s14CopresenceCore27ActivityListPresenceContextV24dictionaryRepresentationSDySSypGvgSS10Foundation4UUIDVXEfU_Tf1cn_n(a1);
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *(inited + 48) = v3;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSObject?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  return v4;
}

Swift::Int ActivityListPresenceContext.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static PresenceContext.defaultValue.getter in conformance ActivityListPresenceContext@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static ActivityListPresenceContext.defaultValue;
}

uint64_t protocol witness for DictionaryConvertible.init(dictionary:) in conformance ActivityListPresenceContext@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized ActivityListPresenceContext.init(dictionary:)(a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for DictionaryConvertible.dictionaryRepresentation.getter in conformance ActivityListPresenceContext()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B20;
  *(inited + 32) = 0x7974697669746361;
  *(inited + 40) = 0xEB00000000734449;
  v3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_SSs5NeverOTg5109_s14CopresenceCore27ActivityListPresenceContextV24dictionaryRepresentationSDySSypGvgSS10Foundation4UUIDVXEfU_Tf1cn_n(v1);
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *(inited + 48) = v3;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSObject?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  return v4;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActivityListPresenceContext()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivityListPresenceContext()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v55 = type metadata accessor for UUID();
  v2 = *(*(v55 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v55);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v44 - v6;
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = *(v5 + 80);
  v12 = MEMORY[0x1E69E7CC0];
  v46 = v11;
  v47 = (v11 + 32) & ~v11;
  v13 = MEMORY[0x1E69E7CC0] + v47;
  v14 = (v8 + 63) >> 6;
  v48 = v5 + 16;
  v50 = v5;
  v51 = a1;
  v53 = v5 + 32;

  v16 = 0;
  v17 = 0;
  if (v10)
  {
    while (1)
    {
      v52 = v13;
      v18 = v12;
      v19 = v17;
LABEL_9:
      v20 = v50;
      v21 = *(v50 + 72);
      v22 = v49;
      v23 = v55;
      (*(v50 + 16))(v49, *(v51 + 48) + v21 * (__clz(__rbit64(v10)) | (v19 << 6)), v55);
      v24 = *(v20 + 32);
      result = v24(v54, v22, v23);
      if (v16)
      {
        v12 = v18;
        v25 = v52;
        v26 = __OFSUB__(v16--, 1);
        if (v26)
        {
          goto LABEL_41;
        }

        goto LABEL_34;
      }

      v27 = v18[3];
      if (((v27 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_42;
      }

      v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
      if (v28 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
      v30 = v47;
      v12 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v12);
      if (!v21)
      {
        goto LABEL_43;
      }

      v31 = result - v30;
      if (result - v30 == 0x8000000000000000 && v21 == -1)
      {
        goto LABEL_44;
      }

      v33 = v31 / v21;
      v12[2] = v29;
      v12[3] = 2 * (v31 / v21);
      v34 = v12 + v30;
      v35 = v18;
      v36 = v18[3] >> 1;
      v37 = v36 * v21;
      if (v18[2])
      {
        break;
      }

LABEL_33:
      v25 = &v34[v37];
      v40 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v36;

      v26 = __OFSUB__(v40, 1);
      v16 = v40 - 1;
      if (v26)
      {
        goto LABEL_41;
      }

LABEL_34:
      v10 &= v10 - 1;
      result = v24(v25, v54, v55);
      v13 = v25 + v21;
      v17 = v19;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    if (v12 < v18 || v34 >= v18 + v47 + v37)
    {
      v39 = v34;
      v52 = v31 / v21;
      v45 = v36 * v21;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v12 == v18)
      {
LABEL_32:
        v35[2] = 0;
        goto LABEL_33;
      }

      v39 = v34;
      v52 = v31 / v21;
      v45 = v36 * v21;
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = v45;
    v34 = v39;
    v33 = v52;
    goto LABEL_32;
  }

  while (1)
  {
LABEL_5:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v19 >= v14)
    {
      break;
    }

    v10 = *(v7 + 8 * v19);
    ++v17;
    if (v10)
    {
      v52 = v13;
      v18 = v12;
      goto LABEL_9;
    }
  }

  v41 = v12[3];
  if (v41 < 2)
  {
    return v12;
  }

  v42 = v41 >> 1;
  v26 = __OFSUB__(v42, v16);
  v43 = v42 - v16;
  if (!v26)
  {
    v12[2] = v43;
    return v12;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v26 = a1[2];
  v27 = v9;
  v28 = *(a1 + 8);
  v11 = *a1;
  v10 = a1[1];
  v23[0] = a1;
  v24 = v11;
  v25 = v10;
  v12 = Hasher._finalize()();
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v23[2] = v5 + 16;
  v23[3] = v12;
  v23[1] = v5 + 8;

  v18 = 0;
  for (i = 0; v15; v18 ^= v22)
  {
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v4);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
    result = (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      return MEMORY[0x1B27111E0](v18);
    }

    v15 = *(a2 + 56 + 8 * v20);
    ++i;
    if (v15)
    {
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v15 = Hasher._finalize()();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1B27111E0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized ActivityListPresenceContext.init(dictionary:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for UUID();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x7974697669746361, 0xEB00000000734449), (v11 & 1) == 0))
  {

    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v10, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 0;
  }

  v13 = v30;
  v29 = *(v30 + 16);
  if (v29)
  {
    v14 = 0;
    v15 = (v27 + 48);
    v28 = (v27 + 32);
    v16 = (v30 + 40);
    v17 = MEMORY[0x1E69E7CC0];
    v26 = v9;
    while (v14 < *(v13 + 16))
    {
      v19 = *(v16 - 1);
      v18 = *v16;

      UUID.init(uuidString:)();

      if ((*v15)(v5, 1, v6) == 1)
      {
        result = outlined destroy of NSObject?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v20 = *v28;
        (*v28)(v9, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
        }

        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v17);
        }

        v17[2] = v22 + 1;
        v23 = v17 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22;
        v9 = v26;
        result = (v20)(v23, v26, v6);
      }

      ++v14;
      v16 += 2;
      if (v29 == v14)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_18:

    v24 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v17);

    return v24;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for EmptyPresenceContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EmptyPresenceContext and conformance EmptyPresenceContext();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ActivityListPresenceContext.DictionaryKeys and conformance ActivityListPresenceContext.DictionaryKeys()
{
  result = lazy protocol witness table cache variable for type ActivityListPresenceContext.DictionaryKeys and conformance ActivityListPresenceContext.DictionaryKeys;
  if (!lazy protocol witness table cache variable for type ActivityListPresenceContext.DictionaryKeys and conformance ActivityListPresenceContext.DictionaryKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityListPresenceContext.DictionaryKeys and conformance ActivityListPresenceContext.DictionaryKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ActivityListPresenceContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ActivityListPresenceContext and conformance ActivityListPresenceContext();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ActivityListPresenceContext and conformance ActivityListPresenceContext()
{
  result = lazy protocol witness table cache variable for type ActivityListPresenceContext and conformance ActivityListPresenceContext;
  if (!lazy protocol witness table cache variable for type ActivityListPresenceContext and conformance ActivityListPresenceContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityListPresenceContext and conformance ActivityListPresenceContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivityListPresenceContext and conformance ActivityListPresenceContext;
  if (!lazy protocol witness table cache variable for type ActivityListPresenceContext and conformance ActivityListPresenceContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityListPresenceContext and conformance ActivityListPresenceContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Set<UUID>.Iterator and conformance Set<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type Set<UUID>.Iterator and conformance Set<A>.Iterator;
  if (!lazy protocol witness table cache variable for type Set<UUID>.Iterator and conformance Set<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSh8IteratorVy10Foundation4UUIDV_GMd, &_sSh8IteratorVy10Foundation4UUIDV_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<UUID>.Iterator and conformance Set<A>.Iterator);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_protocol_options) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t DatagramEndpoint.participantEndpoint(topic:participantId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(v4 + 32) == 1)
  {
    v8 = v4[2];
    v7 = v4[3];
    v10 = *v4;
    v9 = v4[1];
    v13 = MEMORY[0x1B270FF70](v10, v9);
    v14 = MEMORY[0x1B270FF70](a1, a2);
    if (v7 >> 60 == 15)
    {
      v15 = 0;
    }

    else
    {
      v15 = v8;
    }

    if (v7 >> 60 == 15)
    {
      v16 = 0xC000000000000000;
    }

    else
    {
      v16 = v7;
    }

    v17 = objc_opt_self();
    outlined copy of Data?(v8, v7);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v15, v16);
    v19 = [v17 createEndpointForSessionIDAlias:v13 topic:v14 participantIDAlias:a3 salt:isa];

    return NWEndpoint.init(_:)();
  }

  else
  {
    v21 = type metadata accessor for NWEndpoint();
    v22 = *(*(v21 - 8) + 56);

    return v22(a4, 1, 1, v21);
  }
}

uint64_t PluginClient.doCreateQuicConnection()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v46 - v3;
  v5 = type metadata accessor for NWEndpoint();
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v46 - v12;
  v13 = type metadata accessor for PluginEndpoint();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for PluginClient.Configuration(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = destructiveProjectEnumData for ActivitySession.Errors;
  v55 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_protocol_options) -> ();
  v53 = &block_descriptor_16;
  v21 = _Block_copy(&aBlock);
  v54 = partial apply for closure #2 in PluginClient.doCreateQuicConnection();
  v55 = v0;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_protocol_options) -> ();
  v53 = &block_descriptor_17_0;
  v22 = _Block_copy(&aBlock);

  quic_stream = nw_parameters_create_quic_stream();
  _Block_release(v22);
  _Block_release(v21);
  if (!quic_stream)
  {
    return 0;
  }

  (*(*v0 + 136))();
  outlined init with copy of PluginEndpoint(v20, v16);
  outlined destroy of PluginClient.Configuration(v20, type metadata accessor for PluginClient.Configuration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v16;
    v24 = v16[1];
    v26 = v16[2];
    v27 = v16[3];
    v28 = v16[4];
    v29 = objc_opt_self();
    if (v28 >> 60 == 15)
    {
      isa = MEMORY[0x1B270FF70](v25, v24);

      v31 = [v29 augmentNetworkParametersForSession:isa participantID:v26 parameters:quic_stream];
    }

    else
    {
      outlined copy of Data._Representation(v27, v28);
      v38 = MEMORY[0x1B270FF70](v25, v24);

      isa = Data._bridgeToObjectiveC()().super.isa;
      v39 = [v29 augmentNetworkParametersForSessionAlias:v38 participantIDAlias:v26 salt:isa parameters:quic_stream];
      outlined consume of Data?(v27, v28);
    }

    v40 = v49;

    swift_unknownObjectRetain();
    NWEndpoint.init(_:)();
    if ((*(v40 + 48))(v4, 1, v5) == 1)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      outlined consume of Data?(v27, v28);
      outlined destroy of NSObject?(v4, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
      return 0;
    }

    v42 = v47;
    (*(v40 + 32))(v47, v4, v5);
    (*(v40 + 16))(v48, v42, v5);
    type metadata accessor for NWParameters();
    swift_unknownObjectRetain();
    NWParameters.__allocating_init(_:)();
    v43 = type metadata accessor for NWConnection();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    v37 = NWConnection.init(to:using:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    outlined consume of Data?(v27, v28);
    (*(v40 + 8))(v42, v5);
  }

  else
  {
    v33 = v48;
    v32 = v49;
    (*(v49 + 32))(v48, v16, v5);
    (*(v32 + 16))(v11, v33, v5);
    type metadata accessor for NWParameters();
    swift_unknownObjectRetain();
    NWParameters.__allocating_init(_:)();
    v34 = type metadata accessor for NWConnection();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v37 = NWConnection.init(to:using:)();
    swift_unknownObjectRelease();
    (*(v32 + 8))(v33, v5);
  }

  return v37;
}

uint64_t closure #2 in PluginClient.doCreateQuicConnection()(uint64_t a1, uint64_t a2)
{
  nw_quic_connection_set_initial_max_streams_bidirectional();
  nw_quic_connection_set_initial_max_streams_unidirectional();
  v3 = nw_quic_connection_copy_sec_protocol_options();
  sec_protocol_options_set_pqtls_mode();
  v4 = String.utf8CString.getter();
  sec_protocol_options_add_tls_application_protocol(v3, (v4 + 32));

  v5 = swift_allocObject();
  swift_weakInit();
  v8[4] = partial apply for closure #1 in closure #2 in PluginClient.doCreateQuicConnection();
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_sec_protocol_metadata, @guaranteed OS_sec_trust, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
  v8[3] = &block_descriptor_23_1;
  v6 = _Block_copy(v8);

  sec_protocol_options_set_verify_block(v3, v6, *(a2 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_queue));
  _Block_release(v6);
  return swift_unknownObjectRelease();
}

void closure #1 in closure #2 in PluginClient.doCreateQuicConnection()(uint64_t a1, NSObject *a2, void (*a3)(void), uint64_t a4)
{
  v7 = type metadata accessor for PluginClient.Configuration(0);
  v8 = *(*(v7 - 1) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v57[-v12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(*Strong + 136);
    v17 = *Strong + 136;
    v16();
    v18 = v13[v7[7]];
    outlined destroy of PluginClient.Configuration(v13, type metadata accessor for PluginClient.Configuration);
    if (v18)
    {
      v62 = a3;
      v63 = a4;
      v61 = sec_trust_copy_ref(a2);
      v60 = MEMORY[0x1B270FF70](0x2065736E61707845, 0xEE006E6967756C50);
      v16();
      v19 = &v13[v7[8]];
      v20 = *v19;
      v21 = v19[1];

      outlined destroy of PluginClient.Configuration(v13, type metadata accessor for PluginClient.Configuration);
      v22 = MEMORY[0x1B270FF70](v20, v21);

      v59 = v17;
      (v16)(v23);
      v24 = v16;
      v25 = &v11[v7[9]];
      v26 = *v25;
      v27 = v25[1];

      outlined destroy of PluginClient.Configuration(v11, type metadata accessor for PluginClient.Configuration);
      v28 = MEMORY[0x1B270FF70](v26, v27);

      v29 = v60;
      AppleSSLPinned = SecPolicyCreateAppleSSLPinned();

      if (AppleSSLPinned)
      {
        v31 = v61;
        SecTrustSetPolicies(v61, AppleSSLPinned);
        v32 = *(v15 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_queue);
        v33 = swift_allocObject();
        v34 = v62;
        v35 = v63;
        v33[2] = v15;
        v33[3] = v34;
        v33[4] = v35;
        aBlock[4] = partial apply for closure #1 in closure #1 in closure #2 in PluginClient.doCreateQuicConnection();
        aBlock[5] = v33;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed SecTrustRef, @unowned Bool, @guaranteed CFErrorRef?) -> ();
        aBlock[3] = &block_descriptor_32;
        v36 = _Block_copy(aBlock);
        v37 = v32;

        SecTrustEvaluateAsyncWithError(v31, v37, v36);
        _Block_release(v36);
      }

      else
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, log);

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          aBlock[0] = v60;
          *v45 = 136315394;
          v58 = v44;
          v24();
          v46 = &v13[v7[8]];
          v47 = *v46;
          v48 = v46[1];

          outlined destroy of PluginClient.Configuration(v13, type metadata accessor for PluginClient.Configuration);
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, aBlock);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2080;
          (v24)(v50);
          v51 = &v13[v7[9]];
          v52 = *v51;
          v53 = v51[1];

          outlined destroy of PluginClient.Configuration(v13, type metadata accessor for PluginClient.Configuration);
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, aBlock);

          *(v45 + 14) = v54;
          _os_log_impl(&dword_1AEB26000, v43, v58, "Cannot create pinning policy, hostname=%s, leafMarkerOID=%s", v45, 0x16u);
          v55 = v60;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v55, -1, -1);
          MEMORY[0x1B27120C0](v45, -1, -1);
        }

        v56 = v61;
        v62(0);
      }
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, log);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1AEB26000, v39, v40, "Server cert validation disabled", v41, 2u);
        MEMORY[0x1B27120C0](v41, -1, -1);
      }

      a3(1);
    }
  }

  else
  {
    (a3)();
  }
}

void closure #1 in closure #1 in closure #2 in PluginClient.doCreateQuicConnection()(uint64_t a1, char a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v11 = type metadata accessor for PluginClient.Configuration(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15 = one-time initialization token for log;
    v16 = a3;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, log);
    v18 = v16;

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v21 = 136315650;
      v22 = *(*a4 + 136);
      v42 = a6;
      v40 = v20;
      v22();
      v23 = &v14[*(v11 + 32)];
      v43 = a5;
      v24 = *v23;
      v25 = v23[1];

      v39 = v19;
      outlined destroy of PluginClient.Configuration(v14, type metadata accessor for PluginClient.Configuration);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v45);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      (v22)(v27);
      v28 = &v14[*(v11 + 36)];
      v29 = *v28;
      v30 = v28[1];

      outlined destroy of PluginClient.Configuration(v14, type metadata accessor for PluginClient.Configuration);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v45);
      a5 = v43;

      *(v21 + 14) = v31;
      *(v21 + 22) = 2080;
      v44 = v18;
      type metadata accessor for CFErrorRef(0);
      v32 = v18;
      v33 = String.init<A>(reflecting:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v45);

      *(v21 + 24) = v35;
      v36 = v39;
      _os_log_impl(&dword_1AEB26000, v39, v40, "Failed to validate trust, hostname=%s, leafMarkerOID=%s: %s", v21, 0x20u);
      v37 = v41;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v37, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }

    else
    {
    }

    a5(0);
  }

  else
  {
    a5(a2 & 1);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed SecTrustRef, @unowned Bool, @guaranteed CFErrorRef?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(v10, a3, a4);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_sec_protocol_metadata, @guaranteed OS_sec_trust, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(a2, a3, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> (), v9);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t PluginClient.createQuicConnection()()
{
  v1 = type metadata accessor for PluginClient.Configuration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PluginEndpoint();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, log);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    (*(*v0 + 136))();
    outlined init with copy of PluginEndpoint(v4, v8);
    outlined destroy of PluginClient.Configuration(v4, type metadata accessor for PluginClient.Configuration);
    v14 = PluginEndpoint.description.getter();
    v16 = v15;
    outlined destroy of PluginClient.Configuration(v8, type metadata accessor for PluginEndpoint);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEB26000, v10, v11, "Creating QUIC connection to %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t closure #1 in PluginClient.createQuicConnection()(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - v8;
  v10 = type metadata accessor for PluginClient.Configuration(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PluginEndpoint();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PluginClient.doCreateQuicConnection()())
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v49 = a1;
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, log);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v48 = a2;
      v22 = v21;
      v23 = swift_slowAlloc();
      v50 = v23;
      *v22 = 134218242;
      *(v22 + 4) = NWConnection.identifier.getter();

      *(v22 + 12) = 2080;
      (*(*a3 + 136))(v24);
      outlined init with copy of PluginEndpoint(v13, v17);
      outlined destroy of PluginClient.Configuration(v13, type metadata accessor for PluginClient.Configuration);
      v25 = PluginEndpoint.description.getter();
      v27 = v26;
      outlined destroy of PluginClient.Configuration(v17, type metadata accessor for PluginEndpoint);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v50);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_1AEB26000, v19, v20, "QUIC connection C%llu created for endpoint: %s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1B27120C0](v23, -1, -1);
      v29 = v22;
      a2 = v48;
      MEMORY[0x1B27120C0](v29, -1, -1);
    }

    else
    {
    }

    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = a3;
    v44[4] = v49;
    v44[5] = a2;

    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(partial apply for closure #1 in closure #1 in PluginClient.createQuicConnection());
    NWConnection.stateUpdateHandler.setter();

    if (*(a3 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporter))
    {
      v45 = NWConnection.startDataTransferReport()();
      (*(*a3 + 216))(v45);
    }

    v46 = *(a3 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_queue);
    NWConnection.start(queue:)();
  }

  else
  {
    v48 = a2;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, log);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49 = a1;
      v50 = v34;
      v35 = v34;
      *v33 = 136315138;
      (*(*a3 + 136))();
      outlined init with copy of PluginEndpoint(v13, v17);
      outlined destroy of PluginClient.Configuration(v13, type metadata accessor for PluginClient.Configuration);
      v36 = PluginEndpoint.description.getter();
      v38 = v37;
      outlined destroy of PluginClient.Configuration(v17, type metadata accessor for PluginEndpoint);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v50);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_1AEB26000, v31, v32, "Failed to create NWConnection for QUIC connection to %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v40 = v35;
      a1 = v49;
      MEMORY[0x1B27120C0](v40, -1, -1);
      MEMORY[0x1B27120C0](v33, -1, -1);
    }

    v41 = type metadata accessor for NWError();
    (*(*(v41 - 8) + 56))(v9, 1, 3, v41);
    swift_storeEnumTagMultiPayload();
    a1(v9);
    return outlined destroy of NSObject?(v9, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  }
}

void closure #1 in closure #1 in PluginClient.createQuicConnection()(uint64_t a1, uint64_t a2, NSObject *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v144 = a5;
  v145 = a4;
  v138 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v137 = (&v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v141 = &v126 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v133 = (&v126 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v126 - v14;
  v15 = type metadata accessor for PluginClient.Configuration(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v132 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PluginEndpoint();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for NWError();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v126 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v135 = &v126 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v136 = &v126 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v139 = (&v126 - v36);
  MEMORY[0x1EEE9AC00](v35);
  v140 = (&v126 - v37);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v38 = *(*(v142 - 8) + 64);
  MEMORY[0x1EEE9AC00](v142);
  v143 = (&v126 - v39);
  v40 = type metadata accessor for NWProtocolQUIC.Metadata.KeepAliveBehavior();
  v130 = *(v40 - 8);
  v131 = v40;
  v41 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v129 = (&v126 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for NWConnection.State();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v126 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v44 + 16))(v47, a1, v43);
    v48 = (*(v44 + 88))(v47, v43);
    if (v48 == *MEMORY[0x1E6977C18])
    {
      (*(v44 + 96))(v47, v43);
      v139 = *(v23 + 32);
      v139(v30, v47, v22);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, log);
      v50 = *(v23 + 16);
      v50(v27, v30, v22);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      v53 = os_log_type_enabled(v51, v52);
      v140 = v50;
      if (v53)
      {
        LODWORD(v134) = v52;
        v138 = v51;
        v54 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v147 = v133;
        *v54 = 134218242;
        *(v54 + 4) = NWConnection.identifier.getter();

        *(v54 + 12) = 2080;
        v55 = v141;
        v50(v141, v27, v22);
        (*(v23 + 56))(v55, 0, 1, v22);
        v56 = v55;
        v57 = v137;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v56, v137, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
        if ((*(v23 + 48))(v57, 1, v22) == 1)
        {
          v58 = 7104878;
          v59 = 0xE300000000000000;
        }

        else
        {
          v92 = v136;
          v139(v136, v57, v22);
          v50(v135, v92, v22);
          v58 = String.init<A>(reflecting:)();
          v59 = v93;
          (*(v23 + 8))(v92, v22);
        }

        outlined destroy of NSObject?(v141, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
        v86 = *(v23 + 8);
        v86(v27, v22);
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v147);

        *(v54 + 14) = v94;
        v95 = v138;
        _os_log_impl(&dword_1AEB26000, v138, v134, "QUIC connection (C%llu)  in waiting state, error: %s", v54, 0x16u);
        v96 = v133;
        __swift_destroy_boxed_opaque_existential_1Tm(v133);
        MEMORY[0x1B27120C0](v96, -1, -1);
        MEMORY[0x1B27120C0](v54, -1, -1);
      }

      else
      {

        v86 = *(v23 + 8);
        v86(v27, v22);
      }

      v97 = v143;
      v140(v143, v30, v22);
      (*(v23 + 56))(v97, 0, 3, v22);
      swift_storeEnumTagMultiPayload();
      v145(v97);
      outlined destroy of NSObject?(v97, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
      NWConnection.cancel()();

      v86(v30, v22);
      return;
    }

    if (v48 == *MEMORY[0x1E6977C10])
    {
      (*(v44 + 96))(v47, v43);
      v64 = *(v23 + 32);
      v65 = v140;
      v130 = v23 + 32;
      v129 = v64;
      v64(v140, v47, v22);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      __swift_project_value_buffer(v66, log);
      v141 = v23;
      v67 = *(v23 + 16);
      v68 = v139;
      v67(v139, v65, v22);

      v69 = v138;

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      LODWORD(v131) = v71;
      v72 = os_log_type_enabled(v70, v71);
      v137 = v67;
      if (v72)
      {
        v128 = v70;
        v73 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v147 = v127;
        *v73 = 134218498;
        *(v73 + 4) = NWConnection.identifier.getter();

        *(v73 + 12) = 2080;
        v75 = v132;
        (*(v69->isa + 17))(v74);
        outlined init with copy of PluginEndpoint(v75, v21);
        outlined destroy of PluginClient.Configuration(v75, type metadata accessor for PluginClient.Configuration);
        v76 = PluginEndpoint.description.getter();
        v78 = v77;
        outlined destroy of PluginClient.Configuration(v21, type metadata accessor for PluginEndpoint);
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v147);

        *(v73 + 14) = v79;
        *(v73 + 22) = 2080;
        v80 = v134;
        v67(v134, v68, v22);
        v81 = v141;
        (*(v141 + 56))(v80, 0, 1, v22);
        v82 = v133;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v80, v133, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
        if ((*(v81 + 48))(v82, 1, v22) == 1)
        {
          v83 = 7104878;
          v84 = 0xE300000000000000;
          v85 = v141;
        }

        else
        {
          v100 = v136;
          v129(v136, v82, v22);
          v67(v135, v100, v22);
          v83 = String.init<A>(reflecting:)();
          v84 = v101;
          v85 = v141;
          v68 = v139;
          (*(v141 + 8))(v100, v22);
        }

        outlined destroy of NSObject?(v80, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
        v98 = *(v85 + 8);
        v98(v68, v22);
        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v147);

        *(v73 + 24) = v102;
        v103 = v128;
        _os_log_impl(&dword_1AEB26000, v128, v131, "QUIC connection to (C%llu) %s failed, error: %s", v73, 0x20u);
        v104 = v127;
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v104, -1, -1);
        MEMORY[0x1B27120C0](v73, -1, -1);

        v65 = v140;
      }

      else
      {

        v85 = v141;
        v98 = *(v141 + 8);
        v98(v68, v22);
      }

      v105 = v143;
      v137(v143, v65, v22);
      (*(v85 + 56))(v105, 0, 3, v22);
      swift_storeEnumTagMultiPayload();
      v145(v105);
      outlined destroy of NSObject?(v105, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
      NWConnection.cancel()();

      v98(v65, v22);
      return;
    }

    if (v48 == *MEMORY[0x1E6977C08])
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      __swift_project_value_buffer(v87, log);

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 134217984;
        *(v90 + 4) = NWConnection.identifier.getter();

        v91 = "QUIC connection (C%llu) in setup state";
LABEL_34:
        _os_log_impl(&dword_1AEB26000, v88, v89, v91, v90, 0xCu);
        MEMORY[0x1B27120C0](v90, -1, -1);

        return;
      }

      goto LABEL_48;
    }

    if (v48 == *MEMORY[0x1E6977C28])
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v99 = type metadata accessor for Logger();
      __swift_project_value_buffer(v99, log);

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 134217984;
        *(v90 + 4) = NWConnection.identifier.getter();

        v91 = "QUIC connection (C%llu) in preparing state";
        goto LABEL_34;
      }

LABEL_48:

      return;
    }

    if (v48 == *MEMORY[0x1E6977C00])
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v106 = type metadata accessor for Logger();
      __swift_project_value_buffer(v106, log);
      v107 = Strong;

      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 134217984;
        *(v110 + 4) = NWConnection.identifier.getter();

        _os_log_impl(&dword_1AEB26000, v108, v109, "QUIC connection (C%llu) in ready state", v110, 0xCu);
        MEMORY[0x1B27120C0](v110, -1, -1);
      }

      else
      {
      }

      v112 = *(&v138->isa + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporter);
      if (v112)
      {
        v114 = *(&v138->isa + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag);
        v113 = *(&v138[1].isa + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag);
        v115 = *(v112 + 16);
        v116 = swift_allocObject();
        v116[2] = v112;
        v116[3] = v114;
        v116[4] = v113;
        swift_retain_n();

        v117 = v115;
        v107 = Strong;
        v118 = v117;
        NWConnection.requestEstablishmentReport(queue:completion:)();
      }

      type metadata accessor for NWProtocolQUIC();
      static NWProtocolQUIC.definition.getter();
      v119 = NWConnection.metadata(definition:)();

      if (v119)
      {
        type metadata accessor for NWProtocolQUIC.Metadata();
        if (swift_dynamicCastClass())
        {
          v120 = v129;
          *v129 = 10;
          (*(v130 + 104))(v120, *MEMORY[0x1E6977C98], v131);

          dispatch thunk of NWProtocolQUIC.Metadata.keepAlive.setter();
        }
      }

      v125 = v143;
      *v143 = v107;
      swift_storeEnumTagMultiPayload();

      v145(v125);

      outlined destroy of NSObject?(v125, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    }

    else
    {
      if (v48 == *MEMORY[0x1E6977C20])
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v111 = type metadata accessor for Logger();
        __swift_project_value_buffer(v111, log);

        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 134217984;
          *(v90 + 4) = NWConnection.identifier.getter();

          v91 = "QUIC connection (C%llu) in cancelled state";
          goto LABEL_34;
        }

        goto LABEL_48;
      }

      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v121 = type metadata accessor for Logger();
      __swift_project_value_buffer(v121, log);

      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 134217984;
        *(v124 + 4) = NWConnection.identifier.getter();

        _os_log_impl(&dword_1AEB26000, v122, v123, "QUIC connection (C%llu) in unknown state", v124, 0xCu);
        MEMORY[0x1B27120C0](v124, -1, -1);
      }

      else
      {
      }

      (*(v44 + 8))(v47, v43);
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, log);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1AEB26000, v61, v62, "QUIC connection deallocated when getting state update callback", v63, 2u);
      MEMORY[0x1B27120C0](v63, -1, -1);
    }
  }
}

uint64_t closure #1 in closure #1 in closure #1 in PluginClient.createQuicConnection()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for NWConnection.EstablishmentReport();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v11, &_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of NSObject?(v11, &_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
  }

  (*(v13 + 32))(v16, v11, v12);
  (*(*a2 + 168))(v16, a3, a4);
  return (*(v13 + 8))(v16, v12);
}

uint64_t PluginClient.createQuicStream(quicConnection:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PluginClient.Configuration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PluginEndpoint();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, log);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    (*(*v1 + 136))();
    outlined init with copy of PluginEndpoint(v7, v11);
    outlined destroy of PluginClient.Configuration(v7, type metadata accessor for PluginClient.Configuration);
    v17 = PluginEndpoint.description.getter();
    v19 = v18;
    outlined destroy of PluginClient.Configuration(v11, type metadata accessor for PluginEndpoint);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v27);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1AEB26000, v13, v14, "Creating QUIC stream to %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t closure #1 in PluginClient.createQuicStream(quicConnection:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v38 - v7;
  v9 = type metadata accessor for PluginClient.Configuration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PluginEndpoint();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWConnection.parameters.getter();
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for NWProtocolFramer.Options();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  v20 = NWProtocolFramer.Options.init(definition:)();
  NWParameters.defaultProtocolStack.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AEE07B40;
  *(v21 + 32) = v20;

  dispatch thunk of NWParameters.ProtocolStack.applicationProtocols.setter();

  type metadata accessor for NWConnection();

  if (NWConnection.__allocating_init(connection:parameters:)())
  {
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v24 = v42;
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = a2;

    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(partial apply for closure #1 in closure #1 in PluginClient.createQuicStream(quicConnection:));
    NWConnection.stateUpdateHandler.setter();

    v25 = *(a4 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_queue);
    NWConnection.start(queue:)();
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, log);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v40 = a2;
      v31 = v30;
      v39 = swift_slowAlloc();
      v43 = v39;
      *v31 = 136315138;
      (*(*a4 + 136))();
      outlined init with copy of PluginEndpoint(v12, v16);
      outlined destroy of PluginClient.Configuration(v12, type metadata accessor for PluginClient.Configuration);
      v32 = PluginEndpoint.description.getter();
      v34 = v33;
      outlined destroy of PluginClient.Configuration(v16, type metadata accessor for PluginEndpoint);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v43);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1AEB26000, v28, v29, "Failed to create NWConnection for QUIC stream to %s", v31, 0xCu);
      v36 = v39;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1B27120C0](v36, -1, -1);
      MEMORY[0x1B27120C0](v31, -1, -1);
    }

    v37 = type metadata accessor for NWError();
    (*(*(v37 - 8) + 56))(v8, 2, 3, v37);
    swift_storeEnumTagMultiPayload();
    v42(v8);

    return outlined destroy of NSObject?(v8, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  }
}

uint64_t closure #1 in closure #1 in PluginClient.createQuicStream(quicConnection:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v115 = a4;
  v116 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v109 = (&v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v103 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v106 = (&v103 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v110 = (&v103 - v14);
  v15 = type metadata accessor for NWError();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v103 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v107 = &v103 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v108 = &v103 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v111 = &v103 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v112 = (&v103 - v30);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v31 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v114 = (&v103 - v32);
  v33 = type metadata accessor for NWConnection.State();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v117 = result;
  if (!result)
  {
    return result;
  }

  (*(v34 + 16))(v37, a1, v33);
  v39 = (*(v34 + 88))(v37, v33);
  if (v39 == *MEMORY[0x1E6977C18])
  {
    (*(v34 + 96))(v37, v33);
    v40 = v16;
    v110 = v16[4];
    (v110)(v23, v37, v15);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, log);
    v42 = v16[2];
    v42(v20, v23, v15);

    v43 = Logger.logObject.getter();
    LODWORD(v111) = static os_log_type_t.default.getter();
    v44 = os_log_type_enabled(v43, v111);
    v112 = v42;
    if (v44)
    {
      v106 = v43;
      v45 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v118 = v105;
      *v45 = 134218242;
      *(v45 + 4) = NWConnection.identifier.getter();

      v103 = v45;
      *(v45 + 12) = 2080;
      v42(v11, v20, v15);
      (v40[7])(v11, 0, 1, v15);
      v46 = v109;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v11, v109, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      v104 = v40;
      if ((v40[6])(v46, 1, v15) == 1)
      {
        v47 = 7104878;
        v48 = 0xE300000000000000;
        v49 = v104;
      }

      else
      {
        v71 = v108;
        (v110)(v108, v46, v15);
        v42(v107, v71, v15);
        v47 = String.init<A>(reflecting:)();
        v48 = v72;
        v49 = v104;
        (v104[1])(v71, v15);
      }

      outlined destroy of NSObject?(v11, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      v65 = v49[1];
      v65(v20, v15);
      v73 = v49;
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v118);

      v75 = v103;
      *(v103 + 14) = v74;
      v76 = v106;
      _os_log_impl(&dword_1AEB26000, v106, v111, "QUIC stream (C%llu) in waiting state, error: %s", v75, 0x16u);
      v77 = v105;
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      MEMORY[0x1B27120C0](v77, -1, -1);
      MEMORY[0x1B27120C0](v75, -1, -1);

      v40 = v73;
    }

    else
    {

      v65 = v40[1];
      v65(v20, v15);
    }

    v78 = v114;
    v112(v114, v23, v15);
    (v40[7])(v78, 0, 3, v15);
    swift_storeEnumTagMultiPayload();
    v116(v78);
    outlined destroy of NSObject?(v78, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    NWConnection.cancel()();

    return (v65)(v23, v15);
  }

  if (v39 == *MEMORY[0x1E6977C10])
  {
    (*(v34 + 96))(v37, v33);
    v50 = v112;
    v105 = v16[4];
    (v105)(v112, v37, v15);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, log);
    v52 = v16[2];
    v53 = v111;
    (v52)(v111, v50, v15);
    v54 = v16;

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    v57 = os_log_type_enabled(v55, v56);
    v109 = v52;
    if (v57)
    {
      LODWORD(v104) = v56;
      v58 = v53;
      v59 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v118 = v103;
      *v59 = 134218242;
      *(v59 + 4) = NWConnection.identifier.getter();

      *(v59 + 12) = 2080;
      v60 = v110;
      (v52)(v110, v58, v15);
      (v54[7])(v60, 0, 1, v15);
      v61 = v60;
      v62 = v106;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v61, v106, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      if ((v54[6])(v62, 1, v15) == 1)
      {
        v63 = 7104878;
        v64 = 0xE300000000000000;
      }

      else
      {
        v81 = v108;
        (v105)(v108, v62, v15);
        (v52)(v107, v81, v15);
        v63 = String.init<A>(reflecting:)();
        v64 = v82;
        (v54[1])(v81, v15);
      }

      outlined destroy of NSObject?(v110, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      v79 = v54[1];
      v79(v111, v15);
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v118);

      *(v59 + 14) = v83;
      _os_log_impl(&dword_1AEB26000, v55, v104, "QUIC stream (C%llu) failed, error: %s", v59, 0x16u);
      v84 = v103;
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      MEMORY[0x1B27120C0](v84, -1, -1);
      MEMORY[0x1B27120C0](v59, -1, -1);
    }

    else
    {

      v79 = v54[1];
      v79(v53, v15);
    }

    v85 = v114;
    v86 = v112;
    (v109)(v114, v112, v15);
    (v54[7])(v85, 0, 3, v15);
    swift_storeEnumTagMultiPayload();
    v116(v85);
    outlined destroy of NSObject?(v85, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    NWConnection.cancel()();

    return (v79)(v86, v15);
  }

  if (v39 == *MEMORY[0x1E6977C08])
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, log);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      *(v69 + 4) = NWConnection.identifier.getter();

      v70 = "QUIC stream (C%llu) in setup state";
LABEL_29:
      _os_log_impl(&dword_1AEB26000, v67, v68, v70, v69, 0xCu);
      MEMORY[0x1B27120C0](v69, -1, -1);
    }

    goto LABEL_43;
  }

  if (v39 == *MEMORY[0x1E6977C28])
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, log);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      *(v69 + 4) = NWConnection.identifier.getter();

      v70 = "QUIC stream (C%llu) in preparing state";
      goto LABEL_29;
    }

LABEL_43:
  }

  if (v39 == *MEMORY[0x1E6977C00])
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    __swift_project_value_buffer(v87, log);
    v88 = v117;

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 134217984;
      *(v91 + 4) = NWConnection.identifier.getter();

      _os_log_impl(&dword_1AEB26000, v89, v90, "QUIC stream (C%llu) in ready state", v91, 0xCu);
      MEMORY[0x1B27120C0](v91, -1, -1);
    }

    else
    {
    }

    type metadata accessor for NWProtocolQUIC();
    static NWProtocolQUIC.definition.getter();
    v93 = NWConnection.metadata(definition:)();

    if (v93)
    {
      type metadata accessor for NWProtocolQUIC.Metadata();
      if (swift_dynamicCastClass())
      {

        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          *v96 = 134217984;
          *(v96 + 4) = dispatch thunk of NWProtocolQUIC.Metadata.streamIdentifier.getter();

          _os_log_impl(&dword_1AEB26000, v94, v95, "QUIC stream identifier is %llu", v96, 0xCu);
          v97 = v96;
          v88 = v117;
          MEMORY[0x1B27120C0](v97, -1, -1);
        }

        else
        {
        }
      }
    }

    v102 = v114;
    *v114 = v88;
    swift_storeEnumTagMultiPayload();

    v116(v102);

    return outlined destroy of NSObject?(v102, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  }

  else
  {
    if (v39 == *MEMORY[0x1E6977C20])
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      __swift_project_value_buffer(v92, log);

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 134217984;
        *(v69 + 4) = NWConnection.identifier.getter();

        v70 = "QUIC stream (C%llu) in cancelled state";
        goto LABEL_29;
      }

      goto LABEL_43;
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    __swift_project_value_buffer(v98, log);

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 134217984;
      *(v101 + 4) = NWConnection.identifier.getter();

      _os_log_impl(&dword_1AEB26000, v99, v100, "QUIC stream (C%llu) in unknown state", v101, 0xCu);
      MEMORY[0x1B27120C0](v101, -1, -1);
    }

    else
    {
    }

    return (*(v34 + 8))(v37, v33);
  }
}

uint64_t outlined destroy of PluginClient.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PluginConnectError()
{
  result = type metadata singleton initialization cache for PluginConnectError;
  if (!type metadata singleton initialization cache for PluginConnectError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PluginConnectError()
{
  v0 = type metadata accessor for NWError();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t objectdestroy_6Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

id ParticipantTranslationRequest.__allocating_init(aliasedIdentifier:isSaltVerified:isLocalParticipant:)(uint64_t a1, char a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier] = a1;
  v7[OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified] = a2;
  v7[OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id ParticipantTranslationRequest.init(aliasedIdentifier:isSaltVerified:isLocalParticipant:)(uint64_t a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier] = a1;
  v3[OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified] = a2;
  v3[OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

Swift::Void __swiftcall ParticipantTranslationRequest.encode(with:)(NSCoder with)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v4 = MEMORY[0x1B270FF70](0xD000000000000011, 0x80000001AEE34C10);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified);
  v6 = MEMORY[0x1B270FF70](0x6556746C61537369, 0xEE00646569666972);
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant);
  v8 = MEMORY[0x1B270FF70](0xD000000000000012, 0x80000001AEE34C30);
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];
}

id ParticipantTranslationRequest.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 unsignedLongLongValue];
    *&v2[OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier] = v7;
    v8 = MEMORY[0x1B270FF70](0x6556746C61537369, 0xEE00646569666972);
    v9 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified] = v9;
    v10 = MEMORY[0x1B270FF70](0xD000000000000012, 0x80000001AEE34C30);
    v11 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant] = v11;
    v14.receiver = v2;
    v14.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v14, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

uint64_t ParticipantTranslationRequest.description.getter()
{
  _StringGuts.grow(_:)(93);
  MEMORY[0x1B2710020](0xD000000000000030, 0x80000001AEE34C50);
  v7 = *(v0 + OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v1);

  MEMORY[0x1B2710020](0xD000000000000011, 0x80000001AEE34C90);
  if (*(v0 + OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v2, v3);

  MEMORY[0x1B2710020](0xD000000000000015, 0x80000001AEE34CB0);
  if (*(v0 + OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v4, v5);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

id ParticipantTranslationRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ParticipantTranslationResponse.unaliasedIdentifier.getter()
{
  result = *(v0 + OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier);
  v2 = *(v0 + OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier + 8);
  return result;
}

uint64_t ParticipantTranslationResponse.handle.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPParticipantTranslation_handle);
  v2 = *(v0 + OBJC_IVAR___CPParticipantTranslation_handle + 8);

  return v1;
}

uint64_t ParticipantTranslationResponse.stableDeviceIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier);
  v2 = *(v0 + OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier + 8);

  return v1;
}

id ParticipantTranslationResponse.__allocating_init(aliasedIdentifier:unaliasedIdentifier:handle:stableDeviceIdentifier:isNearby:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v17 = objc_allocWithZone(v8);
  *&v17[OBJC_IVAR___CPParticipantTranslation_aliasedIdentifier] = a1;
  v18 = &v17[OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier];
  *v18 = a2;
  v18[8] = a3 & 1;
  v19 = &v17[OBJC_IVAR___CPParticipantTranslation_handle];
  *v19 = a4;
  v19[1] = a5;
  v20 = &v17[OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier];
  *v20 = a6;
  v20[1] = a7;
  v17[OBJC_IVAR___CPParticipantTranslation_isNearby] = a8;
  v22.receiver = v17;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, sel_init);
}

id ParticipantTranslationResponse.init(aliasedIdentifier:unaliasedIdentifier:handle:stableDeviceIdentifier:isNearby:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR___CPParticipantTranslation_aliasedIdentifier] = a1;
  v18 = &v8[OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier];
  *v18 = a2;
  v18[8] = a3 & 1;
  v19 = &v8[OBJC_IVAR___CPParticipantTranslation_handle];
  *v19 = a4;
  v19[1] = a5;
  v20 = &v8[OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier];
  *v20 = a6;
  v20[1] = a7;
  v8[OBJC_IVAR___CPParticipantTranslation_isNearby] = a8;
  v22.receiver = v8;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

Swift::Void __swiftcall ParticipantTranslationResponse.encode(with:)(NSCoder with)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v4 = MEMORY[0x1B270FF70](0xD000000000000011, 0x80000001AEE34C10);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if ((*(v1 + OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier + 8) & 1) == 0)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v6 = MEMORY[0x1B270FF70](0xD000000000000013, 0x80000001AEE34D20);
    [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  }

  if (*(v1 + OBJC_IVAR___CPParticipantTranslation_handle + 8))
  {
    v7 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPParticipantTranslation_handle));
    v8 = MEMORY[0x1B270FF70](0x656C646E6168, 0xE600000000000000);
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  }

  if (*(v1 + OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier + 8))
  {
    v9 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier));
    v10 = MEMORY[0x1B270FF70](0xD000000000000016, 0x80000001AEE34D00);
    [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  }

  v11 = *(v1 + OBJC_IVAR___CPParticipantTranslation_isNearby);
  v12 = MEMORY[0x1B270FF70](0x79627261654E7369, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeBool:v11 forKey:v12];
}

id ParticipantTranslationResponse.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 unsignedLongLongValue];
    *&v2[OBJC_IVAR___CPParticipantTranslation_aliasedIdentifier] = v7;
    v8 = NSCoder.decodeObject<A>(of:forKey:)();
    v9 = v8;
    if (v8)
    {
      v10 = [v8 unsignedLongLongValue];
    }

    else
    {
      v10 = 0;
    }

    v12 = &v2[OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier];
    *v12 = v10;
    v12[8] = v9 == 0;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v13 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = &v2[OBJC_IVAR___CPParticipantTranslation_handle];
    *v18 = v15;
    v18[1] = v17;
    v19 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = &v2[OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier];
    *v24 = v21;
    v24[1] = v23;
    v25 = MEMORY[0x1B270FF70](0x79627261654E7369, 0xE800000000000000);
    v26 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR___CPParticipantTranslation_isNearby] = v26;
    v28.receiver = v2;
    v28.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v28, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

id @objc ParticipantTranslationRequest.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x1B270FF70](v5, v7);

  return v8;
}

uint64_t ParticipantTranslationResponse.description.getter()
{
  _StringGuts.grow(_:)(127);
  MEMORY[0x1B2710020](0xD000000000000031, 0x80000001AEE34D40);
  v8 = *(v0 + OBJC_IVAR___CPParticipantTranslation_aliasedIdentifier);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v1);

  MEMORY[0x1B2710020](0xD000000000000016, 0x80000001AEE34D80);
  v9 = *(v0 + OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier);
  v12 = *(v0 + OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64VSgMd, &_ss6UInt64VSgMR);
  v2 = String.init<A>(describing:)();
  MEMORY[0x1B2710020](v2);

  MEMORY[0x1B2710020](0x656C646E6168202CLL, 0xE90000000000003DLL);
  v10 = *(v0 + OBJC_IVAR___CPParticipantTranslation_handle);
  v13 = *(v0 + OBJC_IVAR___CPParticipantTranslation_handle + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v3 = String.init<A>(describing:)();
  MEMORY[0x1B2710020](v3);

  MEMORY[0x1B2710020](0xD000000000000019, 0x80000001AEE34DA0);
  v11 = *(v0 + OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier);
  v14 = *(v0 + OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier + 8);

  v4 = String.init<A>(describing:)();
  MEMORY[0x1B2710020](v4);

  MEMORY[0x1B2710020](0x7261654E7369202CLL, 0xEB000000003D7962);
  if (*(v0 + OBJC_IVAR___CPParticipantTranslation_isNearby))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CPParticipantTranslation_isNearby))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v5, v6);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

id ParticipantTranslationRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path setter for CPApplicationMonitor.appVisibilityMonitor : CPApplicationMonitor(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor);
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t CPApplicationMonitor.appVisibilityMonitor.getter()
{
  v1 = (v0 + OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t CPApplicationMonitor.__allocating_init(applicationController:queue:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static CPApplicationPolicyManager.shared;
  v11[3] = type metadata accessor for CPApplicationController();
  v11[4] = &protocol witness table for CPApplicationController;
  v11[0] = a1;
  v9 = (*(ObjectType + 136))(v8, v11, a2);
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t CPApplicationMonitor.init(applicationController:queue:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static CPApplicationPolicyManager.shared;
  v8[3] = type metadata accessor for CPApplicationController();
  v8[4] = &protocol witness table for CPApplicationController;
  v8[0] = a1;
  v6 = (*(ObjectType + 136))(v5, v8, a2);
  swift_deallocPartialClassInstance();
  return v6;
}

id CPApplicationMonitor.__allocating_init(applicationPolicyManager:applicationController:queue:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v7[OBJC_IVAR___CPApplicationMonitor_appPolicyManager] = a1;
  outlined init with copy of UserNotificationCenter(a2, &v7[OBJC_IVAR___CPApplicationMonitor_applicationController]);
  *&v7[OBJC_IVAR___CPApplicationMonitor_queue] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v9;
}

id CPApplicationMonitor.init(applicationPolicyManager:applicationController:queue:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR___CPApplicationMonitor_appPolicyManager] = a1;
  outlined init with copy of UserNotificationCenter(a2, &v3[OBJC_IVAR___CPApplicationMonitor_applicationController]);
  *&v3[OBJC_IVAR___CPApplicationMonitor_queue] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for CPApplicationMonitor();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v7;
}

id CPApplicationMonitor.__deallocating_deinit()
{
  v1 = &v0[OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor];
  swift_beginAccess();
  if (*v1)
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 32);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for CPApplicationMonitor();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

Swift::Void __swiftcall CPApplicationMonitor.createAppVisibilityMonitorIfNecessary(nearbyOption:)(Swift::String_optional nearbyOption)
{
  v2 = v1;
  object = nearbyOption.value._object;
  countAndFlagsBits = nearbyOption.value._countAndFlagsBits;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR___CPApplicationMonitor_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v12 = (v6 + 8);
  v14 = v13(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & *v2) + 0x70))(v14))
  {
    if (!object)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Log.default);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_12;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Creating process monitor since conversation was joined";
      goto LABEL_11;
    }

    if (one-time initialization token for default == -1)
    {
LABEL_5:
      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Log.default);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v16, v17))
      {
LABEL_12:

        v21 = (*((*v12 & *v2) + 0xC0))(countAndFlagsBits, object);
        v23 = v22;
        v24 = (v2 + OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor);
        swift_beginAccess();
        v25 = *v24;
        *v24 = v21;
        v24[1] = v23;
        goto LABEL_13;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Creating process monitor since nearby shareplay is joinable";
LABEL_11:
      _os_log_impl(&dword_1AEB26000, v16, v17, v19, v18, 2u);
      MEMORY[0x1B27120C0](v18, -1, -1);
      goto LABEL_12;
    }

LABEL_15:
    swift_once();
    goto LABEL_5;
  }

LABEL_13:
  swift_unknownObjectRelease();
}

uint64_t CPApplicationMonitor.createAppVisibilityMonitor(nearbyOption:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___CPApplicationMonitor_appPolicyManager);
  outlined init with copy of UserNotificationCenter(v2 + OBJC_IVAR___CPApplicationMonitor_applicationController, v7);
  type metadata accessor for RunningBoardAppVisibilityMonitor();
  swift_allocObject();

  return RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:)(v5, v7, a1, a2);
}

id CPApplicationMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AppVisibilityMonitor.applicationType(forBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(v18, a3, a4);
  v8 = v19;
  v9 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v10 = (*(v9 + 8))(a1, a2, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  if ((v10 & 1) == 0)
  {
    return 2;
  }

  v11 = (*(a4 + 8))(a3, a4);
  v12 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x98))();

  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);

    v16 = [v15 BOOLValue];

    if (v16)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

id AppVisibilityMonitor.handleAppVisibilityUpdate(forBundleIdentifier:applicationType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v70 = v10;
  v71 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v66 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v66 - v25;
  (*(a5 + 24))(a4, a5);
  v68 = a1;
  if (v27)
  {
    v28 = v71;
    v67 = v26;

    v29 = objc_opt_self();
    v30 = a2;
    v31 = MEMORY[0x1B270FF70](a1, a2);
    v32 = [v29 nearbyUpdateForegroundAppURLForBundleIdentifier:v31 applicationType:a3];

    if (v32)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = *(v28 + 56);
      v34 = v21;
      v35 = 0;
    }

    else
    {
      v33 = *(v28 + 56);
      v34 = v21;
      v35 = 1;
    }

    v43 = v70;
    v33(v34, v35, 1, v70);
    v24 = v21;
    v39 = v30;
    v26 = v67;
  }

  else
  {
    v36 = objc_opt_self();
    v37 = MEMORY[0x1B270FF70](a1, a2);
    v38 = [v36 faceTimeUpdateForegroundAppURLForBundleIdentifier:v37 applicationType:a3];

    v39 = a2;
    if (v38)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = *(v71 + 56);
      v41 = v24;
      v42 = 0;
    }

    else
    {
      v40 = *(v71 + 56);
      v41 = v24;
      v42 = 1;
    }

    v43 = v70;
    v40(v41, v42, 1, v70);
  }

  outlined init with take of URL?(v24, v26);
  outlined init with copy of URL?(v26, v18);
  if ((*(v71 + 48))(v18, 1, v43) == 1)
  {
    outlined destroy of NSObject?(v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v44 = v68;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Log.default);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v26;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v73 = v50;
      *v49 = 136315394;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v39, &v73);
      *(v49 + 12) = 2080;
      v72 = a3;
      type metadata accessor for CPApplicationType(0);
      v51 = String.init<A>(reflecting:)();
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v73);

      *(v49 + 14) = v53;
      _os_log_impl(&dword_1AEB26000, v46, v47, "AppVisibilityMonitor: Unable to create update foreground app URL for bundle identifier: %s with type: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v50, -1, -1);
      MEMORY[0x1B27120C0](v49, -1, -1);

      v54 = v48;
      return outlined destroy of NSObject?(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

LABEL_18:
    v54 = v26;
    return outlined destroy of NSObject?(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  v55 = v69;
  (*(v71 + 32))(v69, v18, v43);
  v56 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B20;
  v58 = *MEMORY[0x1E699F8E8];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v59;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSObject?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v56 setFrontBoardOptions_];

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v63 = result;
    URL._bridgeToObjectiveC()(v62);
    v65 = v64;
    [v63 openURL:v64 configuration:v56 completionHandler:0];

    (*(v71 + 8))(v55, v43);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t specialized CPApplicationMonitor.conversationManager(_:conversationChanged:)(void *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  if (result)
  {
    v5 = v4;
    v6 = [a1 conversationsByUUID];
    type metadata accessor for UUID();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5(*(v7 + 16), 0);
      v10 = specialized Sequence._copySequenceContents(initializing:)(&v12, (v9 + 32), v8, v7);
      result = outlined consume of Set<String>.Iterator._Variant();
      if (v10 != v8)
      {
        __break(1u);
        return result;
      }
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    ObjectType = swift_getObjectType();
    (*(v5 + 64))(v9, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized CPApplicationMonitor.conversationManager(_:activitySessionContainersChanged:)(unint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR___CPApplicationMonitor_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v10 = (v4 + 8);
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = *MEMORY[0x1E69E7D40] & *v1;
  if (v12)
  {
    return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(0, 0);
  }

  v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  a1 = v1;
  result = v10();
  if (result)
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for default == -1)
    {
LABEL_9:
      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Log.default);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1AEB26000, v16, v17, "Invalidating process monitor since no longer in active call", v18, 2u);
        MEMORY[0x1B27120C0](v18, -1, -1);
      }

      if (v10())
      {
        v20 = v19;
        ObjectType = swift_getObjectType();
        (*(v20 + 32))(ObjectType, v20);
        swift_unknownObjectRelease();
      }

      v22 = (a1 + OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor);
      swift_beginAccess();
      v23 = *v22;
      *v22 = 0;
      v22[1] = 0;
      return swift_unknownObjectRelease();
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  return result;
}

uint64_t specialized CPApplicationMonitor.conversationManager(_:conversationAdvertisementLost:)()
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  result = v2();
  if (result)
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1AEB26000, v5, v6, "Invalidating process monitor since we no longer have a nearby shareplay session", v7, 2u);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    if (v2())
    {
      v9 = v8;
      ObjectType = swift_getObjectType();
      (*(v9 + 32))(ObjectType, v9);
      swift_unknownObjectRelease();
    }

    v11 = (v1 + OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor);
    swift_beginAccess();
    v12 = *v11;
    *v11 = 0;
    v11[1] = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized AppVisibilityMonitor.shouldHandleAppVisibilityUpdate(forBundleIdentifier:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v5 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 1);
  if (!v5)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.default);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v28);
      _os_log_impl(&dword_1AEB26000, v7, v8, "AppVisibilityMonitor: Unable to get application record for bundle identifier: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1B27120C0](v10, -1, -1);
      MEMORY[0x1B27120C0](v9, -1, -1);
    }

    goto LABEL_7;
  }

  v13 = v5;
  v14 = [v5 appTags];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28[0] = 0x6E6564646968;
  v28[1] = 0xE600000000000000;
  MEMORY[0x1EEE9AC00](v16);
  v27[2] = v28;
  LOBYTE(v14) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v27, v15);

  if (v14)
  {

LABEL_7:
    v11 = 0;
    return v11 & 1;
  }

  v17 = [v13 compatibilityObject];
  v18 = [v17 bundleType];

  if (!v18)
  {
    v25 = *MEMORY[0x1E6963570];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_18;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = *MEMORY[0x1E6963570];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v21)
  {
LABEL_18:

    v11 = 1;
    return v11 & 1;
  }

  if (v19 == v23 && v21 == v24)
  {

    v11 = 0;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v26 ^ 1;
  }

  return v11 & 1;
}

{
  return specialized AppVisibilityMonitor.shouldHandleAppVisibilityUpdate(forBundleIdentifier:)(a1, a2, _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0);
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUConversationActivitySessionContainer and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUConversationActivitySessionContainer and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversationActivitySessionContainer and conformance NSObject);
  }

  return result;
}

_BYTE *PluginRpcStatus.init(code:cause:errorMessage:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t PluginRpcStatus.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  v5 = *(v1 + 8);
  *(a1 + 8) = v5;
  *(a1 + 24) = v2;
  type metadata accessor for PluginRpcError();
  swift_storeEnumTagMultiPayload();
  v3 = v5;
}

uint64_t type metadata accessor for PluginRpcError()
{
  result = type metadata singleton initialization cache for PluginRpcError;
  if (!type metadata singleton initialization cache for PluginRpcError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

CopresenceCore::PluginRpcStatusCode_optional __swiftcall PluginRpcStatusCode.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 0x11u)
  {
    v2 = 17;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PluginRpcStatusCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PluginRpcStatusCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void *PluginRpcStatus.cause.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t PluginRpcStatus.errorMessage.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PluginRpcStatus.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];

  _StringGuts.grow(_:)(28);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v5);

  MEMORY[0x1B2710020](8236, 0xE200000000000000);
  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (!v4)
  {
    v4 = 0x80000001AEE34EE0;
  }

  MEMORY[0x1B2710020](v6, v4);

  MEMORY[0x1B2710020](0x3A6573756163202CLL, 0xE900000000000020);
  if (v2)
  {
    v7 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(reflecting:)();
    v10 = v9;
  }

  else
  {
    v10 = 0xE400000000000000;
    v8 = 1701736302;
  }

  MEMORY[0x1B2710020](v8, v10);

  return 0x7461745320435052;
}

uint64_t PluginRpcDefinition.path.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PluginRpcDefinition.init(path:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type PluginRpcStatusCode and conformance PluginRpcStatusCode()
{
  result = lazy protocol witness table cache variable for type PluginRpcStatusCode and conformance PluginRpcStatusCode;
  if (!lazy protocol witness table cache variable for type PluginRpcStatusCode and conformance PluginRpcStatusCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginRpcStatusCode and conformance PluginRpcStatusCode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PluginRpcStatusCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PluginRpcStatusCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PluginRpcStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PluginRpcStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for PluginRpcError()
{
  result = type metadata accessor for PluginConnectError();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata instantiation function for PluginRpcDefinition()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static TransparentTopicCryptorProvider.encryptionID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  UUID.init(uuidString:)();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t TransparentTopicCryptorProvider.encryptionIDPublisher.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  (*(*v0 + 80))(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMR);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v9 = CurrentValueSubject.init(_:)();
  lazy protocol witness table accessor for type CurrentValueSubject<UUID, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<UUID, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMR);
  v7 = Publisher.eraseToAnyPublisher()();

  return v7;
}

uint64_t TransparentTopicCryptorProvider.decryptionIDSet.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B20;
  (*(*v0 + 80))();
  return v4;
}

uint64_t TransparentTopicCryptorProvider.decryptionIDSetPublisher.getter()
{
  (*(*v0 + 96))();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMR);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  CurrentValueSubject.init(_:)();
  lazy protocol witness table accessor for type CurrentValueSubject<UUID, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<[UUID], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMR);
  v4 = Publisher.eraseToAnyPublisher()();

  return v4;
}

uint64_t lazy protocol witness table accessor for type CurrentValueSubject<UUID, Never> and conformance CurrentValueSubject<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t TransparentTopicCryptorProvider.validEncryptionID(data:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  outlined copy of Data._Representation(a1, a2);
  UUID.init(data:)(a1, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of UUID?(v8);
    v17 = 0;
  }

  else
  {
    v18 = (*(v10 + 32))(v16, v8, v9);
    (*(*v2 + 80))(v18);
    v17 = static UUID.== infix(_:_:)();
    v19 = *(v10 + 8);
    v19(v14, v9);
    v19(v16, v9);
  }

  return v17 & 1;
}

void *ABCReporter.__allocating_init(domain:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v8[6] = a4;
  return v8;
}

uint64_t ABCReporter.domain.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ABCReporter.type.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void *ABCReporter.init(domain:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
  return v4;
}

Swift::OpaquePointer_optional __swiftcall ABCReporter.signature(subType:context:process:)(Swift::String subType, Swift::String context, Swift::String process)
{
  object = process._object;
  countAndFlagsBits = process._countAndFlagsBits;
  v6 = context._object;
  v7 = context._countAndFlagsBits;
  v8 = subType._object;
  v9 = subType._countAndFlagsBits;
  v10 = v3[2];
  v11 = MEMORY[0x1B270FF70](v3[3], v3[4]);
  v12 = MEMORY[0x1B270FF70](v3[5], v3[6]);
  v13 = MEMORY[0x1B270FF70](v9, v8);
  v14 = MEMORY[0x1B270FF70](v7, v6);
  v15 = MEMORY[0x1B270FF70](countAndFlagsBits, object);
  v16 = [v10 signatureWithDomain:v11 type:v12 subType:v13 subtypeContext:v14 detectedProcess:v15 triggerThresholdValues:0];

  if (v16)
  {
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v18 = 0;
  result.value._rawValue = v18;
  result.is_nil = v17;
  return result;
}

uint64_t ABCReporter.report(with:duration:)(uint64_t a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 32) = a2;
  *(v3 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](ABCReporter.report(with:duration:), 0, 0);
}

uint64_t ABCReporter.report(with:duration:)()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  *v6 = v0;
  v6[1] = ABCReporter.report(with:duration:);

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0xD000000000000016, 0x80000001AEE32730, partial apply for closure #1 in ABCReporter.report(with:duration:), v4, v7);
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](ABCReporter.report(with:duration:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

void closure #1 in ABCReporter.report(with:duration:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGs5NeverOGMd, &_sScCySDys11AnyHashableVypGs5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = *(a2 + 16);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in ABCReporter.report(with:duration:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_17;
  v15 = _Block_copy(aBlock);

  [v11 snapshotWithSignature:isa duration:0 event:0 payload:v15 reply:a3];
  _Block_release(v15);
}

uint64_t closure #1 in closure #1 in ABCReporter.report(with:duration:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGs5NeverOGMd, &_sScCySDys11AnyHashableVypGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t ABCReporter.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t ABCReporter.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ABCReporterProtocol.init(domain:type:) in conformance ABCReporter@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ABCReporterProtocol.report(with:duration:) in conformance ABCReporter(uint64_t a1, double a2)
{
  v6 = *(**v2 + 120);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of ApplicationLauncher.openApplicationOptions(for:options:);
  v9.n128_f64[0] = a2;

  return v11(a1, v9);
}

uint64_t Task<>.reportFailure(on:function:process:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v21 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  outlined init with copy of UserNotificationCenter(a1, v22);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a7;
  v19[5] = a6;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  outlined init with take of ContiguousBytes(v22, (v19 + 10));

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in Task<>.reportFailure(on:function:process:), v19);

  outlined destroy of TaskPriority?(v17);
}

uint64_t closure #1 in Task<>.reportFailure(on:function:process:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v16;
  v8[13] = v17;
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v9 = *(v17 - 8);
  v8[14] = v9;
  v10 = *(v9 + 64) + 15;
  v8[15] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v8[16] = v11;
  v12 = *(v11 - 8);
  v8[17] = v12;
  v13 = *(v12 + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Task<>.reportFailure(on:function:process:), 0, 0);
}

uint64_t closure #1 in Task<>.reportFailure(on:function:process:)(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in Task<>.reportFailure(on:function:process:), 0, 0);
}

uint64_t partial apply for closure #1 in Task<>.reportFailure(on:function:process:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in Task<>.reportFailure(on:function:process:)(a1, v3, v4, v6, v7, v8, v9, v10);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of ABCReporterProtocol.report(with:duration:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(a3 + 24);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of ABCReporterProtocol.report(with:duration:);
  v12.n128_f64[0] = a4;

  return v14(a1, a2, a3, v12);
}

uint64_t dispatch thunk of ABCReporter.report(with:duration:)(uint64_t a1, double a2)
{
  v6 = *(*v2 + 120);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of ApplicationLauncher.openApplicationOptions(for:options:);
  v9.n128_f64[0] = a2;

  return v11(a1, v9);
}

uint64_t partial apply for closure #1 in closure #1 in ABCReporter.report(with:duration:)()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGs5NeverOGMd, &_sScCySDys11AnyHashableVypGs5NeverOGMR) - 8) + 80);

  return closure #1 in closure #1 in ABCReporter.report(with:duration:)();
}

uint64_t PegasusApplicationLaunchBehavior.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for PegasusApplicationLaunchBehavior.AuthorizationManager();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 112) = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = v1;
  type metadata accessor for BackgroundApplicationLaunchBehavior.AssertionStore();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = v2;
  *(v0 + 16) = v3;
  return v0;
}

uint64_t PegasusApplicationLaunchBehavior.AuthorizationManager.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t PegasusApplicationLaunchBehavior.authorizationManager.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t PegasusApplicationLaunchBehavior.authorizationManager.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t PegasusApplicationLaunchBehavior.shouldHandleAppLaunch(for:options:)(void *a1, char a2)
{
  if ((a2 & 1) != 0 && (v2 = [a1 activity], v3 = objc_msgSend(v2, sel_metadata), v2, v3))
  {
    v4 = [v3 context];

    v5 = [v4 typedIdentifier];
    v6 = *MEMORY[0x1E69D8F70];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo33PGBackgroundPIPAuthorizationStateV_GMd, &_sScS8IteratorVySo33PGBackgroundPIPAuthorizationStateV_GMR);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo33PGBackgroundPIPAuthorizationStateVGSgMd, &_sScSySo33PGBackgroundPIPAuthorizationStateVGSgMR) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo33PGBackgroundPIPAuthorizationStateVGMd, &_sScSySo33PGBackgroundPIPAuthorizationStateVGMR);
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v4[16] = v12;
  v13 = *(v12 - 8);
  v4[17] = v13;
  v14 = *(v13 + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), 0, 0);
}

uint64_t PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)()
{
  v1 = [*(v0 + 40) activity];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 128);
    v6 = *(v0 + 64);
    v7 = *(v0 + 40);
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(v0 + 152) = v8;
    *(v0 + 160) = v10;
    v11 = [v7 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 168) = UUID.uuidString.getter();
    *(v0 + 176) = v12;
    v13 = (*(v4 + 8))(v3, v5);
    v14 = (*(*v6 + 184))(v13);
    *(v0 + 184) = v14;

    return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), v14, 0);
  }

  else
  {
    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v16 = *(v0 + 144);
    v17 = *(v0 + 120);
    v19 = *(v0 + 88);
    v18 = *(v0 + 96);

    v20 = *(v0 + 8);

    return v20();
  }
}

{
  v1 = v0[23];
  PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)(v0[21], v0[22], v0[19], v0[20], v0[12]);

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), 0, 0);
}

{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[22];

    outlined destroy of AsyncStream<PGBackgroundPIPAuthorizationState>?(v3);
    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[18];
    v7 = v0[15];
    v9 = v0[11];
    v8 = v0[12];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[11];
    (*(v2 + 32))(v0[15], v3, v1);
    AsyncStream.makeAsyncIterator()();
    v13 = *(MEMORY[0x1E69E8678] + 4);
    v14 = swift_task_alloc();
    v0[24] = v14;
    *v14 = v0;
    v14[1] = PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:);
    v15 = v0[11];
    v16 = v0[9];

    return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v16);
  }
}

{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), 0, 0);
}

{
  v40 = v0;
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
LABEL_2:
    v2 = *(v0 + 176);
    v3 = *(v0 + 144);
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 72);

    (*(v9 + 8))(v8, v10);
    (*(v5 + 8))(v4, v6);

    v11 = *(v0 + 8);

    return v11();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 176);
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.default);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 168);
    v37 = *(v0 + 176);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v39[0] = v19;
    *v18 = 136315394;
    *(v0 + 32) = v1;
    type metadata accessor for PGBackgroundPIPAuthorizationState(0);
    v20 = String.init<A>(reflecting:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v39);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v37, v39);
    _os_log_impl(&dword_1AEB26000, v15, v16, "Got PGBackgroundPIPAuthorization authorization transitioned to state %s for session id %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v19, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  if ((v1 - 4) < 2)
  {
    v30 = *(v0 + 176);

    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    v31 = swift_allocError();
    *v32 = 1;
    swift_willThrow();
    *(v0 + 208) = v31;

    return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), 0, 0);
  }

  else
  {
    if (v1 == 3)
    {
      goto LABEL_2;
    }

    if (v1 == 2)
    {
      v23 = *(**(v0 + 64) + 144);
      v38 = (v23 + *v23);
      v24 = v23[1];
      v25 = swift_task_alloc();
      *(v0 + 200) = v25;
      *v25 = v0;
      v25[1] = PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:);
      v26 = *(v0 + 56);
      v27 = *(v0 + 64);
      v29 = *(v0 + 40);
      v28 = *(v0 + 48);

      return v38(v29, v28, v26);
    }

    else
    {
      v33 = *(MEMORY[0x1E69E8678] + 4);
      v34 = swift_task_alloc();
      *(v0 + 192) = v34;
      *v34 = v0;
      v34[1] = PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:);
      v35 = *(v0 + 88);
      v36 = *(v0 + 72);

      return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v36);
    }
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[22];

    v2[26] = v0;

    return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), 0, 0);
  }

  else
  {
    v6 = *(MEMORY[0x1E69E8678] + 4);
    v7 = swift_task_alloc();
    v2[24] = v7;
    *v7 = v4;
    v7[1] = PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:);
    v8 = v2[11];
    v9 = v2[9];

    return MEMORY[0x1EEE6D9C8](v2 + 2, 0, 0, v9);
  }
}

{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[26];
  v5 = v0[18];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];

  v9 = v0[1];

  return v9();
}

uint64_t PegasusApplicationLaunchBehavior.revokeBackgroundAuthorization(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.revokeBackgroundAuthorization(for:), 0, 0);
}

uint64_t PegasusApplicationLaunchBehavior.revokeBackgroundAuthorization(for:)()
{
  v1 = (*(**(v0 + 32) + 88))();
  *(v0 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.revokeBackgroundAuthorization(for:), v1, 0);
}

{
  object = v0[2]._object;
  BackgroundApplicationLaunchBehavior.AssertionStore.revokeBackgroundAuthorization(for:)(v0[1]);

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.revokeBackgroundAuthorization(for:), 0, 0);
}

{
  v1 = (*(**(v0 + 32) + 184))();
  *(v0 + 48) = v1;

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.revokeBackgroundAuthorization(for:), v1, 0);
}

{
  countAndFlagsBits = v0[3]._countAndFlagsBits;
  PegasusApplicationLaunchBehavior.AuthorizationManager.revokeAuthorization(for:)(v0[1]);

  object = v0->_object;

  return object();
}

uint64_t PegasusApplicationLaunchBehavior.authorizePiP(for:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo33PGBackgroundPIPAuthorizationStateV_GMd, &_sScS8IteratorVySo33PGBackgroundPIPAuthorizationStateV_GMR);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo33PGBackgroundPIPAuthorizationStateVGSgMd, &_sScSySo33PGBackgroundPIPAuthorizationStateVGSgMR) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo33PGBackgroundPIPAuthorizationStateVGMd, &_sScSySo33PGBackgroundPIPAuthorizationStateVGMR);
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.authorizePiP(for:), 0, 0);
}

uint64_t PegasusApplicationLaunchBehavior.authorizePiP(for:)()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 40);
  v5 = [v4 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + 136) = UUID.uuidString.getter();
  *(v0 + 144) = v6;
  (*(v2 + 8))(v1, v3);
  v7 = [v4 activity];
  v8 = [v7 metadata];

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = [v8 context];

  v10 = [v9 typedIdentifier];
  v11 = *MEMORY[0x1E69D8F70];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v18 = [*(v0 + 40) activity];
  v19 = [v18 bundleIdentifier];

  if (!v19)
  {
LABEL_13:

    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();
    v26 = *(v0 + 128);
    v27 = *(v0 + 104);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);

    v30 = *(v0 + 8);

    return v30();
  }

  v20 = *(v0 + 48);
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v0 + 152) = v21;
  *(v0 + 160) = v23;
  v24 = (*(*v20 + 184))();
  *(v0 + 168) = v24;

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.authorizePiP(for:), v24, 0);
}

{
  v1 = v0[21];
  PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)(v0[17], v0[18], v0[19], v0[20], v0[10]);

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.authorizePiP(for:), 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[18];

    outlined destroy of AsyncStream<PGBackgroundPIPAuthorizationState>?(v3);
    v5 = v0[16];
    v6 = v0[13];
    v8 = v0[9];
    v7 = v0[10];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[9];
    (*(v2 + 32))(v0[13], v3, v1);
    AsyncStream.makeAsyncIterator()();
    v12 = *(MEMORY[0x1E69E8678] + 4);
    v13 = swift_task_alloc();
    v0[22] = v13;
    *v13 = v0;
    v13[1] = PegasusApplicationLaunchBehavior.authorizePiP(for:);
    v14 = v0[9];
    v15 = v0[7];

    return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v15);
  }
}

{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.authorizePiP(for:), 0, 0);
}

{
  v43 = v0;
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 144);
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 136);
    v41 = *(v0 + 144);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v42[0] = v20;
    *v19 = 136315394;
    *(v0 + 32) = v1;
    type metadata accessor for PGBackgroundPIPAuthorizationState(0);
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v42);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v41, v42);
    _os_log_impl(&dword_1AEB26000, v16, v17, "Got PGBackgroundPIPAuthorization authorization transitioned to state %s for session id %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  if ((v1 - 4) < 2)
  {
    v24 = *(v0 + 144);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v27 = *(v0 + 88);
    v29 = *(v0 + 64);
    v28 = *(v0 + 72);
    v30 = *(v0 + 56);

    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();
    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
    v32 = *(v0 + 128);
    v33 = *(v0 + 104);
    v35 = *(v0 + 72);
    v34 = *(v0 + 80);

    v13 = *(v0 + 8);
    goto LABEL_9;
  }

  if (v1 == 2)
  {
LABEL_2:
    v2 = *(v0 + 144);
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 88);
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 56);

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);
    v9 = *(v0 + 128);
    v10 = *(v0 + 104);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);

    v13 = *(v0 + 8);
LABEL_9:

    return v13();
  }

  v37 = *(MEMORY[0x1E69E8678] + 4);
  v38 = swift_task_alloc();
  *(v0 + 176) = v38;
  *v38 = v0;
  v38[1] = PegasusApplicationLaunchBehavior.authorizePiP(for:);
  v39 = *(v0 + 72);
  v40 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v40);
}

uint64_t PegasusApplicationLaunchBehavior.init()()
{
  type metadata accessor for PegasusApplicationLaunchBehavior.AuthorizationManager();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 112) = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = v1;
  type metadata accessor for BackgroundApplicationLaunchBehavior.AssertionStore();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = v2;
  *(v0 + 16) = v3;
  return v0;
}

uint64_t PegasusApplicationLaunchBehavior.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t PegasusApplicationLaunchBehavior.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t key path setter for PegasusApplicationLaunchBehavior.AuthorizationManager.authorizations : PegasusApplicationLaunchBehavior.AuthorizationManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
}

uint64_t PegasusApplicationLaunchBehavior.AuthorizationManager.authorizations.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t PegasusApplicationLaunchBehavior.AuthorizationManager.authorizations.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v27 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo33PGBackgroundPIPAuthorizationStateV__GMd, &_sScS12ContinuationV15BufferingPolicyOySo33PGBackgroundPIPAuthorizationStateV__GMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = swift_beginAccess();
  v17 = *(v5 + 112);
  if (!*(v17 + 16))
  {
    goto LABEL_7;
  }

  v18 = *(v5 + 112);

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v20 & 1) == 0)
  {

LABEL_7:
    MEMORY[0x1EEE9AC00](v16);
    *(&v27 - 6) = a1;
    *(&v27 - 5) = a2;
    v23 = v27;
    *(&v27 - 4) = a3;
    *(&v27 - 3) = v23;
    *(&v27 - 2) = v6;
    type metadata accessor for PGBackgroundPIPAuthorizationState(0);
    (*(v12 + 104))(v15, *MEMORY[0x1E69E8650], v11);
    AsyncStream.init(_:bufferingPolicy:_:)();
    v22 = 0;
    goto LABEL_8;
  }

  v21 = *(*(v17 + 56) + 8 * v19);

  if ([v21 state] != 1 && objc_msgSend(v21, sel_state) != 2)
  {
    v26 = [v21 state];

    if (v26 == 3)
    {
      v22 = 1;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v22 = 1;
LABEL_8:
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo33PGBackgroundPIPAuthorizationStateVGMd, &_sScSySo33PGBackgroundPIPAuthorizationStateVGMR);
  return (*(*(v24 - 8) + 56))(a5, v22, 1, v24);
}

void closure #1 in PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMd, &_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  (*(v12 + 16))(&v27 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  v18 = objc_allocWithZone(MEMORY[0x1E69BCB58]);
  v19 = a2;
  v20 = MEMORY[0x1B270FF70](a2, a3);
  v21 = MEMORY[0x1B270FF70](a4, v27);
  aBlock[4] = partial apply for closure #1 in closure #1 in PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed PGBackgroundPIPAuthorization, @unowned PGBackgroundPIPAuthorizationState) -> ();
  aBlock[3] = &block_descriptor_18;
  v22 = _Block_copy(aBlock);
  v23 = [v18 initWithActivitySessionIdentifier:v20 appBundleIdentifier:v21 stateTransitionHandler:v22];

  _Block_release(v22);

  swift_beginAccess();

  v24 = v23;
  v25 = *(a6 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a6 + 112);
  *(a6 + 112) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v19, a3, isUniquelyReferenced_nonNull_native);

  *(a6 + 112) = v28;
  swift_endAccess();
}

void closure #1 in closure #1 in PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo33PGBackgroundPIPAuthorizationStateV__GMd, &_sScS12ContinuationV11YieldResultOySo33PGBackgroundPIPAuthorizationStateV__GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v8 - v6;
  v8[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMd, &_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v4 + 8))(v7, v3);
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    AsyncStream.Continuation.finish()();
  }
}

Swift::Void __swiftcall PegasusApplicationLaunchBehavior.AuthorizationManager.revokeAuthorization(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for default != -1)
  {
LABEL_27:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v36 = object;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v41);
    _os_log_impl(&dword_1AEB26000, v5, v6, "Request to remove PiP authorizations for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  swift_beginAccess();
  v9 = *(v2 + 112);
  v12 = *(v9 + 64);
  v11 = v9 + 64;
  v10 = v12;
  v13 = 1 << *(*(v2 + 112) + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  object = (v13 + 63) >> 6;
  v39 = *(v2 + 112);

  v16 = 0;
  v37 = v2;
  while (v15)
  {
LABEL_15:
    v19 = __clz(__rbit64(v15)) | (v16 << 6);
    v20 = (*(v39 + 48) + 16 * v19);
    v21 = v20[1];
    v40 = *v20;
    v22 = *(*(v39 + 56) + 8 * v19);

    v23 = v22;
    v24 = [v23 appBundleIdentifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v25 == countAndFlagsBits && v27 == v36)
    {

      v2 = v37;
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = v37;
      if ((v29 & 1) == 0)
      {

        goto LABEL_9;
      }
    }

    [v23 revoke];
    swift_beginAccess();
    v30 = *(v2 + 112);
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v21);
    LOBYTE(v30) = v32;

    if (v30)
    {
      v33 = *(v2 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v2 + 112);
      *(v2 + 112) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
      }

      v17 = *(*(v35 + 48) + 16 * v31 + 8);

      specialized _NativeDictionary._delete(at:)(v31, v35);
      *(v2 + 112) = v35;
    }

    swift_endAccess();
LABEL_9:
    v15 &= v15 - 1;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v18 >= object)
    {
      break;
    }

    v15 = *(v11 + 8 * v18);
    ++v16;
    if (v15)
    {
      v16 = v18;
      goto LABEL_15;
    }
  }
}

uint64_t PegasusApplicationLaunchBehavior.AuthorizationManager.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PegasusApplicationLaunchBehavior.AuthorizationManager.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t PegasusApplicationLaunchBehavior.AuthorizationManager.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

void thunk for @escaping @callee_guaranteed (@guaranteed PGBackgroundPIPAuthorization, @unowned PGBackgroundPIPAuthorizationState) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t outlined destroy of AsyncStream<PGBackgroundPIPAuthorizationState>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo33PGBackgroundPIPAuthorizationStateVGSgMd, &_sScSySo33PGBackgroundPIPAuthorizationStateVGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x1B27111C0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = MEMORY[0x1B27111C0](*(a2 + 40), *v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = v16 + 24 * v3;
          v18 = (v16 + 24 * v6);
          if (v3 != v6 || v17 >= v18 + 24)
          {
            v9 = *v18;
            *(v17 + 16) = *(v18 + 2);
            *v17 = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x1B27111C0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (16 * v3 != 16 * v6 || (v3 = v6, v16 >= v17 + 1))
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    v39 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = *(v16 + 56);
    v37 = (v16 - 8);
    v38 = v17;
    do
    {
      v18 = v10;
      v19 = v40 * v12;
      v20 = v15;
      v21 = v16;
      v38(v9, *(a2 + 48) + v40 * v12, v4);
      v22 = *(a2 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v40 * a1;
          v28 = v27 + v19 + v40;
          v29 = v40 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v40 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v12);
          if (a1 != v12 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    v39 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = *(v16 + 56);
    v37 = (v16 - 8);
    v38 = v17;
    do
    {
      v18 = v10;
      v19 = v40 * v12;
      v20 = v15;
      v21 = v16;
      v38(v9, *(a2 + 48) + v40 * v12, v4);
      v22 = *(a2 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v40 * a1;
          v28 = v27 + v19 + v40;
          v29 = v40 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v40 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v12);
          if (a1 != v12 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x1E6977B10]);
}

{
  return specialized _NativeDictionary._delete(at:)(a1, a2, type metadata accessor for AttachmentLedger_AttachmentEncryption);
}

{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x1E69695A8]);
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = MEMORY[0x1B27111C0](*(a2 + 40), *v12);
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 8 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for Date() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t dispatch thunk of PegasusApplicationLaunchBehavior.authorizePiP(for:)(uint64_t a1)
{
  v4 = *(*v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v8(a1);
}

void partial apply for closure #1 in closure #1 in PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMd, &_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMR) - 8) + 80);

  closure #1 in closure #1 in PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)(a1, a2);
}

uint64_t ActivitySessionClientConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for ActivitySessionClientConnection.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for ActivitySessionClientConnection.serverDisconnectedCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIg_Ieg_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4);
}

uint64_t key path setter for ActivitySessionClientConnection.serverDisconnectedCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8);
}

uint64_t key path getter for ActivitySessionClientConnection.setStateCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.setStateCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned CPActivitySessionState, @guaranteed Error?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4);
}

uint64_t key path setter for ActivitySessionClientConnection.setStateCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CPActivitySessionState, @in_guaranteed Error?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.setStateCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8);
}

uint64_t key path getter for ActivitySessionClientConnection.setAssociatedSceneCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4);
}

uint64_t key path setter for ActivitySessionClientConnection.setAssociatedSceneCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8);
}

uint64_t key path getter for ActivitySessionClientConnection.setNearbyParticipantsCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<UInt64>) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4);
}

uint64_t key path setter for ActivitySessionClientConnection.setNearbyParticipantsCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<UInt64>) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8);
}

uint64_t key path getter for ActivitySessionClientConnection.setDataCryptorCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.setDataCryptorCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed BMGroupActivitySessionEvent) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4);
}

uint64_t key path setter for ActivitySessionClientConnection.setDataCryptorCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMGroupActivitySessionEvent) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.setDataCryptorCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8);
}

uint64_t ActivitySessionClientConnection.setActivityPublisher.getter()
{
  v1 = direct field offset for ActivitySessionClientConnection.setActivityPublisher;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ActivitySessionClientConnection.setActivityPublisher.setter(uint64_t a1)
{
  v3 = direct field offset for ActivitySessionClientConnection.setActivityPublisher;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for ActivitySessionClientConnection.receivedResourceCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TUSandboxExtendedURL, @guaranteed Data, @unowned UInt64) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4);
}

uint64_t key path setter for ActivitySessionClientConnection.receivedResourceCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUSandboxExtendedURL, @in_guaranteed Data, @in_guaranteed UInt64) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8);
}

uint64_t key path getter for ActivitySessionClientConnection.setExternalParticipantsCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [TUExternalParticipant]) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4);
}

uint64_t key path setter for ActivitySessionClientConnection.setExternalParticipantsCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMGroupActivitySessionEvent) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8);
}

uint64_t ActivitySessionClientConnection.serverDisconnectedCallback.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t ActivitySessionClientConnection.serverDisconnectedCallback.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t ActivitySessionClientConnection.shouldTranslateParticipantIDs.getter()
{
  v1 = direct field offset for ActivitySessionClientConnection.$__lazy_storage_$_shouldTranslateParticipantIDs;
  v2 = v0[direct field offset for ActivitySessionClientConnection.$__lazy_storage_$_shouldTranslateParticipantIDs];
  if (v2 == 2)
  {
    LOBYTE(v2) = closure #1 in ActivitySessionClientConnection.shouldTranslateParticipantIDs.getter(v0);
    v0[v1] = v2 & 1;
  }

  return v2 & 1;
}

uint64_t closure #1 in ActivitySessionClientConnection.shouldTranslateParticipantIDs.getter(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 processInfo];
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x1B270FF70](0xD00000000000001CLL, 0x80000001AEE2ED50);
    v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

    if (v7)
    {
      *(&v40 + 1) = swift_getObjectType();

      *&v39 = v7;
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (!swift_dynamicCast() || (v8 = v37, v37 == 2))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v8 = *(v9 + 1);
  }

  v10 = [v2 processInfo];
  v11 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();

  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v13 = [objc_allocWithZone(CPFeatureFlags) init];
    v14 = [v13 gameCenterFastSyncTransport];

    v12 = v14 & v11;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v20;
    *v19 = 67110146;
    *(v19 + 4) = v12;
    *(v19 + 8) = 2080;
    v21 = [objc_opt_self() mainBundle];
    v22 = [v21 bundleIdentifier];

    if (v22)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = String.init<A>(reflecting:)();
      v25 = v24;
    }

    else
    {
      v25 = 0xE300000000000000;
      v23 = 7104878;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v38);

    *(v19 + 10) = v26;
    *(v19 + 18) = 2080;
    v27 = String.init<A>(reflecting:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v38);

    *(v19 + 20) = v29;
    *(v19 + 28) = 2080;
    v30 = String.init<A>(reflecting:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v38);

    *(v19 + 30) = v32;
    *(v19 + 38) = 2080;
    v33 = String.init<A>(reflecting:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v38);

    *(v19 + 40) = v35;
    _os_log_impl(&dword_1AEB26000, v17, v18, "[Translation] Translating=%{BOOL}d, bundleID=%s entitledToUsePrivateAPI=%s entitledToUseGameCenter=%s self=%s", v19, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);

    return v12;
  }

  else
  {
  }

  return v12;
}

Swift::Void __swiftcall ActivitySessionClientConnection.handleServerDisconnect()()
{
  v1 = v0 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v2);
  }
}

uint64_t ActivitySessionClientConnection.requestParticipantTranslations(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CD0];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v8 = 136315138;
    type metadata accessor for ParticipantTranslationRequest();
    lazy protocol witness table accessor for type ParticipantTranslationRequest and conformance NSObject(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest);
    v9 = Set.description.getter();
    v11 = (v2 + 16);
    v12 = v4;
    v13 = v2;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, aBlock);

    *(v8 + 4) = v14;
    v2 = v13;
    v4 = v12;
    v3 = v11;
    _os_log_impl(&dword_1AEB26000, v6, v7, "[Translation] Requesting translations for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1B27120C0](v25, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v15 = v27;
  v16 = *&v27[direct field offset for XPCClient.queue];
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a1;
  v17[4] = v4;
  v17[5] = v2;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #1 in ActivitySessionClientConnection.requestParticipantTranslations(_:);
  *(v18 + 24) = v17;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_19;
  v19 = _Block_copy(aBlock);

  v20 = v15;

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v22 = *v3;
    if (*v3)
    {
      v23 = *v3;
      swift_willThrow();
      v24 = v22;
    }

    else
    {
      swift_beginAccess();
      v3 = *(v4 + 16);
    }

    return v3;
  }

  return result;
}

void closure #1 in ActivitySessionClientConnection.requestParticipantTranslations(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  v9 = a1;

  v11 = specialized XPCClient.connection.getter(v10);
  v22 = partial apply for closure #2 in closure #1 in ActivitySessionClientConnection.requestParticipantTranslations(_:);
  v23 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v21 = &block_descriptor_73;
  v12 = _Block_copy(&aBlock);

  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v12);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22ActivitySessionXPCHost_pMd, &_s14CopresenceCore22ActivitySessionXPCHost_pMR);
  if (swift_dynamicCast())
  {
    type metadata accessor for ParticipantTranslationRequest();
    lazy protocol witness table accessor for type ParticipantTranslationRequest and conformance NSObject(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v22 = partial apply for closure #1 in closure #1 in closure #1 in ActivitySessionClientConnection.requestParticipantTranslations(_:);
    v23 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed (@guaranteed Set<ParticipantTranslationResponse>) -> ();
    v21 = &block_descriptor_79;
    v16 = _Block_copy(&aBlock);

    [v17 requestParticipantTranslationsFor:isa completion:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in ActivitySessionClientConnection.requestParticipantTranslations(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315394;
    type metadata accessor for ParticipantTranslationResponse();
    lazy protocol witness table accessor for type ParticipantTranslationRequest and conformance NSObject(&lazy protocol witness table cache variable for type ParticipantTranslationResponse and conformance NSObject, type metadata accessor for ParticipantTranslationResponse);
    v10 = Set.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    type metadata accessor for ParticipantTranslationRequest();
    lazy protocol witness table accessor for type ParticipantTranslationRequest and conformance NSObject(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest);
    v13 = Set.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, v6, v7, "[Translation] Received translations %s for %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  swift_beginAccess();
  v16 = *(a3 + 16);
  *(a3 + 16) = a1;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Set<ParticipantTranslationResponse>) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  type metadata accessor for ParticipantTranslationResponse();
  lazy protocol witness table accessor for type ParticipantTranslationRequest and conformance NSObject(&lazy protocol witness table cache variable for type ParticipantTranslationResponse and conformance NSObject, type metadata accessor for ParticipantTranslationResponse);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

id closure #2 in closure #1 in ActivitySessionClientConnection.requestParticipantTranslations(_:)(void *a1, void *a2, uint64_t a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *v12 = v7;
    *(v11 + 12) = 2080;
    v14 = v7;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1AEB26000, v9, v10, "[Translation] %@ connection error %s while requesting participant info", v11, 0x16u);
    outlined destroy of NSObject?(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  swift_beginAccess();
  v19 = *(a3 + 16);
  *(a3 + 16) = a1;

  return a1;
}

uint64_t @objc ActivitySessionClientConnection.setState(state:error:)(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = &a1[direct field offset for ActivitySessionClientConnection.setStateCallback];
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 1);
    v11 = a1;
    v12 = a4;
    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v9);
    v9(a3, a4);

    return _sxRi_zRi0_zlyytIseghHr_SgWOe(v9);
  }

  return result;
}

uint64_t @objc ActivitySessionClientConnection.setDataCryptor(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = &a1[direct field offset for ActivitySessionClientConnection.setDataCryptorCallback];
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {
    v8 = *(v5 + 1);
    swift_unknownObjectRetain();
    v9 = a1;
    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v7);
    v7(a3);
    swift_unknownObjectRelease();

    return _sxRi_zRi0_zlyytIseghHr_SgWOe(v7);
  }

  return result;
}

uint64_t ActivitySessionClientConnection.setActivity(activity:)()
{
  v1 = direct field offset for ActivitySessionClientConnection.setActivityPublisher;
  swift_beginAccess();
  v2 = *(v0 + v1);

  PassthroughSubject.send(_:)();
}

void @objc ActivitySessionClientConnection.setActivity(activity:)(char *a1, uint64_t a2, void *a3)
{
  v5 = direct field offset for ActivitySessionClientConnection.setActivityPublisher;
  swift_beginAccess();
  v6 = *&a1[v5];
  v7 = a3;
  v8 = a1;

  PassthroughSubject.send(_:)();
}

uint64_t ActivitySessionClientConnection.setState(state:error:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  v9 = v5 + *a3;
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 8);

    v11(a1, a2);
    return a5(v11, v12);
  }

  return result;
}

uint64_t @objc ActivitySessionClientConnection.setAssociatedScene(sceneSessionIdentifier:)(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = &a1[direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback];
  swift_beginAccess();
  v8 = *v7;
  if (!*v7)
  {
  }

  v9 = *(v7 + 1);
  v10 = a1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v8);
  v8(v4, v6);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8);
}

uint64_t @objc ActivitySessionClientConnection.setNearbyParticipants(_:)(char *a1)
{
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = &a1[direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback];
  swift_beginAccess();
  v4 = *v3;
  if (!*v3)
  {
  }

  v5 = *(v3 + 1);
  v6 = a1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4);
  v4(v2);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v4);
}

uint64_t ActivitySessionClientConnection.receivedResource(atURL:withMetadata:fromParticipantWithIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback;
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 8);

    v11(a1, a2, a3, a4);
    return _sxRi_zRi0_zlyytIseghHr_SgWOe(v11);
  }

  return result;
}

void @objc ActivitySessionClientConnection.receivedResource(atURL:withMetadata:fromParticipantWithIdentifier:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = &v10[direct field offset for ActivitySessionClientConnection.receivedResourceCallback];
  swift_beginAccess();
  v15 = *v14;
  if (*v14)
  {
    v16 = *(v14 + 1);

    v15(v8, v11, v13, a5);

    outlined consume of Data._Representation(v11, v13);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v15);
  }

  else
  {

    outlined consume of Data._Representation(v11, v13);
  }
}

uint64_t ActivitySessionClientConnection.setDataCryptor(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void (*)(uint64_t), uint64_t))
{
  v7 = v4 + *a2;
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 8);

    v9(a1);
    return a4(v9, v10);
  }

  return result;
}

uint64_t @objc ActivitySessionClientConnection.setExternalParticipants(_:)(char *a1)
{
  type metadata accessor for TUExternalParticipant();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = &a1[direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback];
  swift_beginAccess();
  v4 = *v3;
  if (!*v3)
  {
  }

  v5 = *(v3 + 1);
  v6 = a1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4);
  v4(v2);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v4);
}

id ActivitySessionClientConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitySessionClientConnection.init()()
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  v2 = &v0[direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[direct field offset for ActivitySessionClientConnection.setStateCallback];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v0[direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v0[direct field offset for ActivitySessionClientConnection.setDataCryptorCallback];
  *v6 = 0;
  v6[1] = 0;
  v7 = direct field offset for ActivitySessionClientConnection.setActivityPublisher;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMd, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v0[v7] = PassthroughSubject.init()();
  v11 = &v0[direct field offset for ActivitySessionClientConnection.receivedResourceCallback];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v0[direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback];
  *v12 = 0;
  v12[1] = 0;
  v0[direct field offset for ActivitySessionClientConnection.$__lazy_storage_$_shouldTranslateParticipantIDs] = 2;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t ActivitySessionClientConnection.__ivar_destroyer()
{
  v1 = direct field offset for ActivitySessionClientConnection.id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback));
  v4 = *(v0 + direct field offset for ActivitySessionClientConnection.setStateCallback + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for ActivitySessionClientConnection.setStateCallback));
  v5 = *(v0 + direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback));
  v6 = *(v0 + direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback));
  v7 = *(v0 + direct field offset for ActivitySessionClientConnection.setDataCryptorCallback + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for ActivitySessionClientConnection.setDataCryptorCallback));
  v8 = *(v0 + direct field offset for ActivitySessionClientConnection.setActivityPublisher);

  v9 = *(v0 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback));
  v10 = *(v0 + direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback);
  v11 = *(v0 + direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback + 8);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v10);
}

id ActivitySessionClientConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc ActivitySessionClientConnection.__ivar_destroyer(uint64_t a1)
{
  v2 = direct field offset for ActivitySessionClientConnection.id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback));
  v5 = *(a1 + direct field offset for ActivitySessionClientConnection.setStateCallback + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for ActivitySessionClientConnection.setStateCallback));
  v6 = *(a1 + direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback));
  v7 = *(a1 + direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback));
  v8 = *(a1 + direct field offset for ActivitySessionClientConnection.setDataCryptorCallback + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for ActivitySessionClientConnection.setDataCryptorCallback));
  v9 = *(a1 + direct field offset for ActivitySessionClientConnection.setActivityPublisher);

  v10 = *(a1 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback));
  v11 = *(a1 + direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback);
  v12 = *(a1 + direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback + 8);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v11);
}

uint64_t type metadata accessor for ActivitySessionClientConnection()
{
  result = type metadata singleton initialization cache for ActivitySessionClientConnection;
  if (!type metadata singleton initialization cache for ActivitySessionClientConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ActivitySessionClientConnection()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [TUExternalParticipant]) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUSandboxExtendedURL, @in_guaranteed Data, @in_guaranteed UInt64) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v9[1] = a3;
  v10 = a1;
  v8 = a4;
  v9[0] = a2;
  return v5(&v10, v9, &v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TUSandboxExtendedURL, @guaranteed Data, @unowned UInt64) -> ()(void *a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, *a2, a2[1], *a3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<UInt64>) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String?) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String?) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CPActivitySessionState, @in_guaranteed Error?) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned CPActivitySessionState, @guaranteed Error?) -> ()(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t lazy protocol witness table accessor for type ParticipantTranslationRequest and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t RTCReportingKeys.Keys.rawValue.getter(char a1)
{
  result = 0x617275642D707271;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
    case 6:
      v3 = 5;
      goto LABEL_10;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      v3 = 11;
LABEL_10:
      result = v3 | 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000024;
      break;
    case 12:
    case 14:
      result = 0xD00000000000001FLL;
      break;
    case 13:
    case 15:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Histogram.rtcRepresentation.getter()
{
  v1 = *(*v0 + 128);
  v2 = v1();
  v3 = *(v2 + 16);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = *(v2 + 8 * i + 32);
      v6 = *(v1() + 16);

      if (i < v6 - 1)
      {
        if (v5)
        {
          v9 = dispatch thunk of CustomStringConvertible.description.getter();
          v10 = v7;
          MEMORY[0x1B2710020](44, 0xE100000000000000);
          MEMORY[0x1B2710020](v9, v10);
        }

        else
        {
          MEMORY[0x1B2710020](44, 0xE100000000000000);
        }
      }
    }
  }

  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RTCReportingKeys.Keys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = RTCReportingKeys.Keys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == RTCReportingKeys.Keys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RTCReportingKeys.Keys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RTCReportingKeys.Keys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RTCReportingKeys.Keys()
{
  RTCReportingKeys.Keys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RTCReportingKeys.Keys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RTCReportingKeys.Keys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RTCReportingKeys.Keys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized RTCReportingKeys.Keys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RTCReportingKeys.Keys@<X0>(unint64_t *a1@<X8>)
{
  result = RTCReportingKeys.Keys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized RTCReportingKeys.Keys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RTCReportingKeys.Keys.init(rawValue:), v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type RTCReportingKeys.Keys and conformance RTCReportingKeys.Keys()
{
  result = lazy protocol witness table cache variable for type RTCReportingKeys.Keys and conformance RTCReportingKeys.Keys;
  if (!lazy protocol witness table cache variable for type RTCReportingKeys.Keys and conformance RTCReportingKeys.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RTCReportingKeys.Keys and conformance RTCReportingKeys.Keys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RTCReportingKeys.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RTCReportingKeys.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *PluginPubSubServiceProvider.Rpc.ListenSystemEvents.unsafeMutableAddressor()
{
  if (one-time initialization token for ListenSystemEvents != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.ListenSystemEvents;
}

uint64_t *PluginPubSubServiceProvider.Rpc.Subscribe.unsafeMutableAddressor()
{
  if (one-time initialization token for Subscribe != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.Subscribe;
}

uint64_t *PluginPubSubServiceProvider.Rpc.Publish.unsafeMutableAddressor()
{
  if (one-time initialization token for Publish != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.Publish;
}

void one-time initialization function for CreateTopic()
{
  static PluginPubSubServiceProvider.Rpc.CreateTopic = 0xD000000000000016;
  *algn_1EB617F90 = 0x80000001AEE352E0;
}

{
  static PluginAttachmentLedgerServiceProvider.Rpc.CreateTopic = 0xD00000000000002ELL;
  unk_1EB6184A8 = 0x80000001AEE37000;
}

uint64_t *PluginPubSubServiceProvider.Rpc.CreateTopic.unsafeMutableAddressor()
{
  if (one-time initialization token for CreateTopic != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.CreateTopic;
}

uint64_t *PluginPubSubServiceProvider.Rpc.UpsertTopicMetadata.unsafeMutableAddressor()
{
  if (one-time initialization token for UpsertTopicMetadata != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.UpsertTopicMetadata;
}

uint64_t *PluginPubSubServiceProvider.Rpc.FetchTopics.unsafeMutableAddressor()
{
  if (one-time initialization token for FetchTopics != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.FetchTopics;
}

uint64_t *PluginPubSubServiceProvider.Rpc.ListenTopicSubscribers.unsafeMutableAddressor()
{
  if (one-time initialization token for ListenTopicSubscribers != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.ListenTopicSubscribers;
}

uint64_t PluginPubSubServiceProvider.__allocating_init(client:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PluginPubSubServiceProvider.listen()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v44 - v2;
  v55 = type metadata accessor for Google_Protobuf_Empty();
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy21InternalSwiftProtobuf07Google_E6_EmptyVGMd, &_s7Combine4JustVy21InternalSwiftProtobuf07Google_E6_EmptyVGMR);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v44 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.pubsub);
  v47 = *(v10 + 16);
  v47(v14, v16, v9);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = v16;
    v21 = v20;
    v22 = swift_slowAlloc();
    v46 = v3;
    v23 = v22;
    v56[0] = v22;
    *v21 = 136315138;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    v27 = *(v10 + 8);
    v48 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49 = v27;
    v27(v14, v9);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v56);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_1AEB26000, v18, v19, "Creating Listen RPC stream traceId=%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v29 = v23;
    v3 = v46;
    MEMORY[0x1B27120C0](v29, -1, -1);
    v30 = v21;
    v16 = v45;
    MEMORY[0x1B27120C0](v30, -1, -1);
  }

  else
  {

    v31 = *(v10 + 8);
    v48 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49 = v31;
    v31(v14, v9);
  }

  Google_Protobuf_Empty.init()();
  v32 = v50;
  v33 = v55;
  Just.init(_:)();
  lazy protocol witness table accessor for type Just<Google_Protobuf_Empty> and conformance Just<A>(&lazy protocol witness table cache variable for type Just<Google_Protobuf_Empty> and conformance Just<A>, &_s7Combine4JustVy21InternalSwiftProtobuf07Google_E6_EmptyVGMd, &_s7Combine4JustVy21InternalSwiftProtobuf07Google_E6_EmptyVGMR);
  v34 = v53;
  v35 = Publisher.eraseToAnyPublisher()();
  (*(v52 + 8))(v32, v34);
  v36 = *(v54 + 16);
  v56[0] = 0xD00000000000001DLL;
  v56[1] = 0x80000001AEE35280;
  v47(v3, v16, v9);
  (*(v10 + 56))(v3, 0, 1, v9);
  v37 = *(*v36 + 272);
  v38 = type metadata accessor for CP_SystemEvent(0);
  v39 = v16;
  v40 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty, MEMORY[0x1E69AAB30]);
  v41 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_SystemEvent and conformance CP_SystemEvent, type metadata accessor for CP_SystemEvent);
  v42 = v37(v56, v35, v3, v33, v38, v40, v41);

  outlined destroy of UUID?(v3);

  v49(v39, v9);
  return v42;
}

uint64_t PluginPubSubServiceProvider.subscribe(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v40 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.pubsub);
  v44 = *(v8 + 16);
  v44(v12, v14, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v42 = v14;
    v21 = v20;
    v48[0] = v20;
    *v19 = 136315138;
    v22 = UUID.uuidString.getter();
    v41 = v2;
    v24 = v23;
    v25 = *(v8 + 8);
    v45 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46 = v25;
    v25(v12, v7);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v48);
    v2 = v41;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_1AEB26000, v16, v17, "Creating Subscribe RPC stream traceId=%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v27 = v21;
    v14 = v42;
    MEMORY[0x1B27120C0](v27, -1, -1);
    v28 = v19;
    a1 = v43;
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  else
  {

    v29 = *(v8 + 8);
    v45 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46 = v29;
    v29(v12, v7);
  }

  v30 = *(v2 + 16);
  v48[0] = 0xD000000000000014;
  v48[1] = 0x80000001AEE352A0;
  v31 = v47;
  v44(v47, v14, v7);
  (*(v8 + 56))(v31, 0, 1, v7);
  v32 = *(*v30 + 272);
  v33 = v14;
  v34 = type metadata accessor for CP_SubscribeRequest(0);
  v35 = type metadata accessor for CP_SubscribeResponse(0);
  v36 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest);
  v37 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_SubscribeResponse and conformance CP_SubscribeResponse, type metadata accessor for CP_SubscribeResponse);
  v38 = v32(v48, a1, v31, v34, v35, v36, v37);
  outlined destroy of UUID?(v31);

  v46(v33, v7);
  return v38;
}

uint64_t PluginPubSubServiceProvider.publish(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v40 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.pubsub);
  v44 = *(v8 + 16);
  v44(v12, v14, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v42 = v14;
    v21 = v20;
    v48[0] = v20;
    *v19 = 136315138;
    v22 = UUID.uuidString.getter();
    v41 = v2;
    v24 = v23;
    v25 = *(v8 + 8);
    v45 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46 = v25;
    v25(v12, v7);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v48);
    v2 = v41;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_1AEB26000, v16, v17, "Creating Publish RPC stream traceId=%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v27 = v21;
    v14 = v42;
    MEMORY[0x1B27120C0](v27, -1, -1);
    v28 = v19;
    a1 = v43;
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  else
  {

    v29 = *(v8 + 8);
    v45 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46 = v29;
    v29(v12, v7);
  }

  v30 = *(v2 + 16);
  v48[0] = 0xD000000000000012;
  v48[1] = 0x80000001AEE352C0;
  v31 = v47;
  v44(v47, v14, v7);
  (*(v8 + 56))(v31, 0, 1, v7);
  v32 = *(*v30 + 272);
  v33 = v14;
  v34 = type metadata accessor for CP_PublishRequest(0);
  v35 = type metadata accessor for CP_PublishResponse(0);
  v36 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_PublishRequest and conformance CP_PublishRequest, type metadata accessor for CP_PublishRequest);
  v37 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_PublishResponse and conformance CP_PublishResponse, type metadata accessor for CP_PublishResponse);
  v38 = v32(v48, a1, v31, v34, v35, v36, v37);
  outlined destroy of UUID?(v31);

  v46(v33, v7);
  return v38;
}

uint64_t PluginPubSubServiceProvider.createTopic(input:)(uint64_t a1)
{
  v54 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v45 - v3;
  TopicRequest = type metadata accessor for CP_CreateTopicRequest(0);
  v5 = *(*(TopicRequest - 8) + 64);
  MEMORY[0x1EEE9AC00](TopicRequest);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore21CP_CreateTopicRequestVGMd, &_s7Combine4JustVy14CopresenceCore21CP_CreateTopicRequestVGMR);
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v45 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.pubsub);
  v47 = *(v11 + 16);
  v47(v15, v17, v10);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v45 = v17;
    v22 = v21;
    v23 = swift_slowAlloc();
    v46 = v4;
    v24 = v23;
    v57[0] = v23;
    *v22 = 136315138;
    v25 = UUID.uuidString.getter();
    v27 = v26;
    v28 = *(v11 + 8);
    v48 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49 = v28;
    v28(v15, v10);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v57);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_1AEB26000, v19, v20, "Creating CreateTopic RPC request traceId=%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v30 = v24;
    v4 = v46;
    MEMORY[0x1B27120C0](v30, -1, -1);
    v31 = v22;
    v17 = v45;
    MEMORY[0x1B27120C0](v31, -1, -1);
  }

  else
  {

    v32 = *(v11 + 8);
    v48 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49 = v32;
    v32(v15, v10);
  }

  outlined init with copy of CP_CreateTopicRequest(v54, v51, type metadata accessor for CP_CreateTopicRequest);
  v33 = v50;
  v34 = TopicRequest;
  Just.init(_:)();
  lazy protocol witness table accessor for type Just<Google_Protobuf_Empty> and conformance Just<A>(&lazy protocol witness table cache variable for type Just<CP_CreateTopicRequest> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore21CP_CreateTopicRequestVGMd, &_s7Combine4JustVy14CopresenceCore21CP_CreateTopicRequestVGMR);
  v35 = v53;
  v36 = Publisher.eraseToAnyPublisher()();
  (*(v52 + 8))(v33, v35);
  v37 = *(v55 + 16);
  v57[0] = 0xD000000000000016;
  v57[1] = 0x80000001AEE352E0;
  v47(v4, v17, v10);
  (*(v11 + 56))(v4, 0, 1, v10);
  v38 = *(*v37 + 272);
  TopicResponse = type metadata accessor for CP_CreateTopicResponse(0);
  v40 = v17;
  v41 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_CreateTopicRequest and conformance CP_CreateTopicRequest, type metadata accessor for CP_CreateTopicRequest);
  v42 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_CreateTopicResponse and conformance CP_CreateTopicResponse, type metadata accessor for CP_CreateTopicResponse);
  v43 = v38(v57, v36, v4, v34, TopicResponse, v41, v42);

  outlined destroy of UUID?(v4);

  v49(v40, v10);
  return v43;
}

uint64_t PluginPubSubServiceProvider.upsertTopicMetadata(input:)(uint64_t a1)
{
  v54 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v45 - v3;
  v56 = type metadata accessor for CP_UpsertTopicMetadataRequest(0);
  v5 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore29CP_UpsertTopicMetadataRequestVGMd, &_s7Combine4JustVy14CopresenceCore29CP_UpsertTopicMetadataRequestVGMR);
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v45 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.pubsub);
  v47 = *(v11 + 16);
  v47(v15, v17, v10);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v45 = v17;
    v22 = v21;
    v23 = swift_slowAlloc();
    v46 = v4;
    v24 = v23;
    v57[0] = v23;
    *v22 = 136315138;
    v25 = UUID.uuidString.getter();
    v27 = v26;
    v28 = *(v11 + 8);
    v48 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49 = v28;
    v28(v15, v10);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v57);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_1AEB26000, v19, v20, "Creating UpsertTopicMetadata RPC request traceId=%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v30 = v24;
    v4 = v46;
    MEMORY[0x1B27120C0](v30, -1, -1);
    v31 = v22;
    v17 = v45;
    MEMORY[0x1B27120C0](v31, -1, -1);
  }

  else
  {

    v32 = *(v11 + 8);
    v48 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49 = v32;
    v32(v15, v10);
  }

  outlined init with copy of CP_CreateTopicRequest(v54, v51, type metadata accessor for CP_UpsertTopicMetadataRequest);
  v33 = v50;
  v34 = v56;
  Just.init(_:)();
  lazy protocol witness table accessor for type Just<Google_Protobuf_Empty> and conformance Just<A>(&lazy protocol witness table cache variable for type Just<CP_UpsertTopicMetadataRequest> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore29CP_UpsertTopicMetadataRequestVGMd, &_s7Combine4JustVy14CopresenceCore29CP_UpsertTopicMetadataRequestVGMR);
  v35 = v53;
  v36 = Publisher.eraseToAnyPublisher()();
  (*(v52 + 8))(v33, v35);
  v37 = *(v55 + 16);
  v57[0] = 0xD00000000000001ELL;
  v57[1] = 0x80000001AEE35300;
  v47(v4, v17, v10);
  (*(v11 + 56))(v4, 0, 1, v10);
  v38 = *(*v37 + 272);
  v39 = type metadata accessor for CP_UpsertTopicMetadataResponse(0);
  v40 = v17;
  v41 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataRequest and conformance CP_UpsertTopicMetadataRequest, type metadata accessor for CP_UpsertTopicMetadataRequest);
  v42 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataResponse and conformance CP_UpsertTopicMetadataResponse, type metadata accessor for CP_UpsertTopicMetadataResponse);
  v43 = v38(v57, v36, v4, v34, v39, v41, v42);

  outlined destroy of UUID?(v4);

  v49(v40, v10);
  return v43;
}

uint64_t PluginPubSubServiceProvider.fetchTopics()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v44 - v2;
  TopicsRequest = type metadata accessor for CP_FetchTopicsRequest(0);
  v4 = *(*(TopicsRequest - 8) + 64);
  MEMORY[0x1EEE9AC00](TopicsRequest);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore21CP_FetchTopicsRequestVGMd, &_s7Combine4JustVy14CopresenceCore21CP_FetchTopicsRequestVGMR);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v44 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.pubsub);
  v47 = *(v10 + 16);
  v47(v14, v16, v9);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = v16;
    v21 = v20;
    v22 = swift_slowAlloc();
    v46 = v3;
    v23 = v22;
    v56[0] = v22;
    *v21 = 136315138;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    v27 = *(v10 + 8);
    v48 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49 = v27;
    v27(v14, v9);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v56);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_1AEB26000, v18, v19, "Creating FetchTopics RPC request traceId=%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v29 = v23;
    v3 = v46;
    MEMORY[0x1B27120C0](v29, -1, -1);
    v30 = v21;
    v16 = v45;
    MEMORY[0x1B27120C0](v30, -1, -1);
  }

  else
  {

    v31 = *(v10 + 8);
    v48 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49 = v31;
    v31(v14, v9);
  }

  UnknownStorage.init()();
  v32 = v50;
  v33 = TopicsRequest;
  Just.init(_:)();
  lazy protocol witness table accessor for type Just<Google_Protobuf_Empty> and conformance Just<A>(&lazy protocol witness table cache variable for type Just<CP_FetchTopicsRequest> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore21CP_FetchTopicsRequestVGMd, &_s7Combine4JustVy14CopresenceCore21CP_FetchTopicsRequestVGMR);
  v34 = v53;
  v35 = Publisher.eraseToAnyPublisher()();
  (*(v52 + 8))(v32, v34);
  v36 = *(v54 + 16);
  v56[0] = 0xD000000000000016;
  v56[1] = 0x80000001AEE35320;
  v47(v3, v16, v9);
  (*(v10 + 56))(v3, 0, 1, v9);
  v37 = *(*v36 + 272);
  TopicsResponse = type metadata accessor for CP_FetchTopicsResponse(0);
  v39 = v16;
  v40 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_FetchTopicsRequest and conformance CP_FetchTopicsRequest, type metadata accessor for CP_FetchTopicsRequest);
  v41 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_FetchTopicsResponse and conformance CP_FetchTopicsResponse, type metadata accessor for CP_FetchTopicsResponse);
  v42 = v37(v56, v35, v3, v33, TopicsResponse, v40, v41);

  outlined destroy of UUID?(v3);

  v49(v39, v9);
  return v42;
}

uint64_t PluginPubSubServiceProvider.listenTopicSubscribers(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v40 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.pubsub);
  v44 = *(v8 + 16);
  v44(v12, v14, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v42 = v14;
    v21 = v20;
    v48[0] = v20;
    *v19 = 136315138;
    v22 = UUID.uuidString.getter();
    v41 = v2;
    v24 = v23;
    v25 = *(v8 + 8);
    v45 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46 = v25;
    v25(v12, v7);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v48);
    v2 = v41;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_1AEB26000, v16, v17, "Creating ListenTopicSubscribers RPC stream traceId=%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v27 = v21;
    v14 = v42;
    MEMORY[0x1B27120C0](v27, -1, -1);
    v28 = v19;
    a1 = v43;
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  else
  {

    v29 = *(v8 + 8);
    v45 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46 = v29;
    v29(v12, v7);
  }

  v30 = *(v2 + 16);
  v48[0] = 0xD000000000000021;
  v48[1] = 0x80000001AEE35340;
  v31 = v47;
  v44(v47, v14, v7);
  (*(v8 + 56))(v31, 0, 1, v7);
  v32 = *(*v30 + 272);
  v33 = v14;
  v34 = type metadata accessor for CP_TopicSubscribersRequest(0);
  v35 = type metadata accessor for CP_TopicSubscribers(0);
  v36 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest, type metadata accessor for CP_TopicSubscribersRequest);
  v37 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_TopicSubscribers and conformance CP_TopicSubscribers, type metadata accessor for CP_TopicSubscribers);
  v38 = v32(v48, a1, v31, v34, v35, v36, v37);
  outlined destroy of UUID?(v31);

  v46(v33, v7);
  return v38;
}

uint64_t PluginPubSubServiceProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PluginPubSubServiceProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of CP_CreateTopicRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Just<Google_Protobuf_Empty> and conformance Just<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EntitlementValueProviding.isEntitledToBypassSharePlayRestriction.getter(uint64_t a1, uint64_t a2)
{
  v5 = 15;
  v3 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(&v5, v3, a2, &v6);
  return v6 & 1;
}

uint64_t EntitlementValueProviding.isEntitled.getter(uint64_t a1, uint64_t a2)
{
  if (EntitlementValueProviding.isEntitledToUsePublicAPI.getter(a1, a2))
  {
    return 1;
  }

  return EntitlementValueProviding.isEntitledToUsePrivateAPI.getter(a1, a2);
}

uint64_t EntitlementValueProviding.isEntitledToUsePublicAPI.getter(uint64_t a1, uint64_t a2)
{
  v9 = 4;
  v4 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(&v9, v4, a2, v8);
  v5 = v8[0];
  if (v8[0] == 2)
  {
    v5 = EntitlementValueProviding.isEntitledToUseGameCenter.getter(a1, a2);
  }

  v9 = 3;
  EntitlementValueProviding.value<A>(_:forEntitlement:)(&v9, MEMORY[0x1E69E6370], a2, v8);
  if (v5 & 1) != 0 || v8[0] != 2 && (v8[0])
  {
    return 1;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  return *v7;
}

uint64_t EntitlementValueProviding.isEntitledToUsePrivateAPI.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = 5;
  v3 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v7, v3, a2, &v8);
  v4 = v8;
  if (v8 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v4 = *(v5 + 1);
  }

  return v4 & 1;
}

uint64_t EntitlementValueProviding.isEntitledToAccessAllSessions.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = 6;
  v3 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v7, v3, a2, &v8);
  v4 = v8;
  if (v8 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v4 = *(v5 + 24);
  }

  return v4 & 1;
}

uint64_t EntitlementValueProviding.isEntitledToForWebFallback.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = 7;
  v3 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v7, v3, a2, &v8);
  v4 = v8;
  if (v8 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v4 = *(v5 + 25);
  }

  return v4 & 1;
}

uint64_t EntitlementValueProviding.definedSystemActivityIdentifiers.getter(uint64_t a1, uint64_t a2)
{
  v8[0] = 8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, v4);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v8, v4, a2, &v9);
  result = v9;
  if (!v9)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v7 = *(v6 + 32);
  }

  return result;
}

uint64_t EntitlementValueProviding.definedAccessActivityIdentifiers.getter(uint64_t a1, uint64_t a2)
{
  v8[0] = 9;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, v4);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v8, v4, a2, &v9);
  result = v9;
  if (!v9)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v7 = *(v6 + 40);
  }

  return result;
}

uint64_t EntitlementValueProviding.isEntitledToAccessUnaliasedIdentifiers.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = 10;
  v3 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v7, v3, a2, &v8);
  v4 = v8;
  if (v8 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v4 = *(v5 + 48);
  }

  return v4 & 1;
}

uint64_t EntitlementValueProviding.isEntitledToUseGameCenter.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v13 = *(v12 + 8);
  v13(&v45, 0xD00000000000001FLL, 0x80000001AEE2EE80, a1, a2);
  if (v47)
  {
    if ((swift_dynamicCast() & 1) != 0 && v44 == 1)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Log.default);
      (*(v5 + 16))(v11, v2, a1);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v44 = v18;
        *v17 = 136315138;
        v19 = (*(a2 + 16))(a1, a2);
        if (v20)
        {
          v45 = v19;
          v46 = v20;
          v21 = String.init<A>(reflecting:)();
          v23 = v22;
        }

        else
        {
          v21 = 7104878;
          v23 = 0xE300000000000000;
        }

        (*(v5 + 8))(v11, a1);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v44);

        *(v17 + 4) = v42;
        _os_log_impl(&dword_1AEB26000, v15, v16, "Connection[%s] is entitled to public Game Center entitlement.", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1B27120C0](v18, -1, -1);
        MEMORY[0x1B27120C0](v17, -1, -1);

        return 1;
      }

      (*(v5 + 8))(v11, a1);
      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(&v45);
  }

  v13(&v45, 0xD00000000000001FLL, 0x80000001AEE2EE80, a1, a2);
  if (!v47)
  {
    outlined destroy of Any?(&v45);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v34 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    return *(v34 + 49);
  }

  v24 = v44;
  if (!*(v44 + 16))
  {

    goto LABEL_20;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.default);
  (*(v5 + 16))(v9, v2, a1);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v26, v27))
  {

    (*(v5 + 8))(v9, a1);
    return 1;
  }

  v28 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v44 = v43;
  *v28 = 136315394;
  v29 = (*(a2 + 16))(a1, a2);
  if (v30)
  {
    v45 = v29;
    v46 = v30;
    v31 = String.init<A>(reflecting:)();
    v33 = v32;
  }

  else
  {
    v31 = 7104878;
    v33 = 0xE300000000000000;
  }

  (*(v5 + 8))(v9, a1);
  v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v44);

  *(v28 + 4) = v36;
  *(v28 + 12) = 2080;
  v37 = MEMORY[0x1B2710180](v24, MEMORY[0x1E69E6158]);
  v39 = v38;

  v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v44);

  *(v28 + 14) = v40;
  _os_log_impl(&dword_1AEB26000, v26, v27, "Connection[%s] is entitled to internal Game Center entitlement: %s", v28, 0x16u);
  v41 = v43;
  swift_arrayDestroy();
  MEMORY[0x1B27120C0](v41, -1, -1);
  MEMORY[0x1B27120C0](v28, -1, -1);

  return 1;
}

uint64_t EntitlementValueProviding.isEntitledToProvideCustomEndpoint.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = 12;
  v3 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v7, v3, a2, &v8);
  v4 = v8;
  if (v8 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v4 = *(v5 + 50);
  }

  return v4 & 1;
}

uint64_t EntitlementValueProviding.stableAppIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v4 == 0x6C7070612E6D6F63 && v5 == 0xEF7365746F4E2E65;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0xD000000000000015 && 0x80000001AEE2E800 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 0x6C7070612E6D6F63;
    }

    if (v6 == 0xD000000000000010 && 0x80000001AEE33DF0 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0xD000000000000012 && 0x80000001AEE33E10 == v7)
    {

      return 0xD000000000000012;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return 0xD000000000000012;
    }
  }

  v15[0] = 13;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, v11);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v15, v11, a2, v16);
  if (v16[1] != 1)
  {
    return v16[0];
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  v13 = *(v12 + 56);
  v14 = *(v12 + 64);

  return v13;
}

uint64_t EntitlementTestingOverrides.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  return static EntitlementTestingOverrides.default;
}

id EntitlementValueProviding.autoGameCenterFeatureEnabled.getter()
{
  v0 = [objc_allocWithZone(CPFeatureFlags) init];
  v1 = [v0 autoGameCenterEnabled];

  return v1;
}

uint64_t EntitlementValueProviding.value<A>(_:forEntitlement:)@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19[-v11];
  v19[15] = *a1;
  v13 = Entitlement.rawValue.getter();
  (*(a3 + 8))(v20, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v14 = swift_dynamicCast();
  v15 = *(*(a2 - 8) + 56);
  if (v14)
  {
    v16 = *(a2 - 8);
    v15(v12, 0, 1, a2);
    (*(v16 + 32))(a4, v12, a2);
    v17 = 0;
  }

  else
  {
    v17 = 1;
    v15(v12, 1, 1, a2);
    (*(v9 + 8))(v12, v8);
  }

  return v15(a4, v17, 1, a2);
}

uint64_t EntitlementTestingOverrides.stableAppIdentifier.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t EntitlementValueProviding.applicationIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  EntitlementValueProviding.value<A>(_:forEntitlement:)(&v3, MEMORY[0x1E69E6158], a2, &v4);
  return v4;
}

uint64_t EntitlementValueProviding.developerTeamIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v5 = 1;
  v3 = MEMORY[0x1E69E6158];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6158]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(&v5, v3, a2, &v6);
  return v6;
}

uint64_t one-time initialization function for default()
{
  result = swift_slowAlloc();
  static EntitlementTestingOverrides.default = result;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 32) = MEMORY[0x1E69E7CC0];
  *(result + 40) = v1;
  *(result + 48) = 0;
  *(result + 50) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  return result;
}

void EntitlementTestingOverrides.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v1;
  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
}

uint64_t static EntitlementTestingOverrides.default.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  v10[0] = *v2;
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  *(v11 + 9) = *(v2 + 57);
  v10[2] = v4;
  v11[0] = v5;
  v10[1] = v3;
  v6 = v2[3];
  a1[2] = v2[2];
  a1[3] = v6;
  *(a1 + 57) = *(v2 + 57);
  v7 = v2[1];
  *a1 = *v2;
  a1[1] = v7;
  return outlined init with copy of EntitlementTestingOverrides(v10, v9);
}

uint64_t static EntitlementTestingOverrides.default.setter(_OWORD *a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  v9[0] = *v2;
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  *&v10[9] = *(v2 + 57);
  v9[2] = v4;
  *v10 = v5;
  v9[1] = v3;
  v6 = a1[3];
  v2[2] = a1[2];
  v2[3] = v6;
  *(v2 + 57) = *(a1 + 57);
  v7 = a1[1];
  *v2 = *a1;
  v2[1] = v7;
  return outlined destroy of EntitlementTestingOverrides(v9);
}

uint64_t (*static EntitlementTestingOverrides.default.modify())()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.audioSessionID.modify;
}

uint64_t key path getter for static EntitlementTestingOverrides.default : EntitlementTestingOverrides.Type@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  v10[0] = *v2;
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  *(v11 + 9) = *(v2 + 57);
  v10[2] = v4;
  v11[0] = v5;
  v10[1] = v3;
  v6 = v2[3];
  a1[2] = v2[2];
  a1[3] = v6;
  *(a1 + 57) = *(v2 + 57);
  v7 = v2[1];
  *a1 = *v2;
  a1[1] = v7;
  return outlined init with copy of EntitlementTestingOverrides(v10, v9);
}

uint64_t key path setter for static EntitlementTestingOverrides.default : EntitlementTestingOverrides.Type(__int128 *a1)
{
  v1 = a1[3];
  v13 = a1[2];
  v14[0] = v1;
  *(v14 + 9) = *(a1 + 57);
  v2 = a1[1];
  v11 = *a1;
  v12 = v2;
  outlined init with copy of EntitlementTestingOverrides(&v11, v15);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  v15[0] = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *(v16 + 9) = *(v3 + 57);
  v15[2] = v5;
  v16[0] = v6;
  v15[1] = v4;
  v8 = v13;
  v7 = v14[0];
  v9 = v12;
  *(v3 + 57) = *(v14 + 9);
  v3[2] = v8;
  v3[3] = v7;
  v3[1] = v9;
  *v3 = v11;
  return outlined destroy of EntitlementTestingOverrides(v15);
}

void key path setter for EntitlementTestingOverrides.isEntitledToUsePublicAPIOverride : EntitlementTestingOverrides(char *a1, _BYTE *a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *a2 = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToUsePublicAPIOverride.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *v1 = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.isEntitledToUsePublicAPIOverride.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return EntitlementTestingOverrides.isEntitledToUsePublicAPIOverride.modify;
}

void EntitlementTestingOverrides.isEntitledToUsePublicAPIOverride.modify(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    **a1 = v4;
    return;
  }

  __break(1u);
}

void key path setter for EntitlementTestingOverrides.isEntitledToUsePrivateAPIOverride : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 1) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToUsePrivateAPIOverride.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 1) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.isEntitledToUsePrivateAPIOverride.modify(uint64_t a1))(_BYTE *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1);
  return EntitlementTestingOverrides.isEntitledToUsePrivateAPIOverride.modify;
}

void EntitlementTestingOverrides.isEntitledToUsePrivateAPIOverride.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 1) = v4;
    return;
  }

  __break(1u);
}

uint64_t EntitlementTestingOverrides.bundleIdentifierOverride.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void key path setter for EntitlementTestingOverrides.bundleIdentifierOverride : EntitlementTestingOverrides(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 16);

  v6 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v7 = NSClassFromString(v6);

  if (v7 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
    *(a2 + 8) = v4;
    *(a2 + 16) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.bundleIdentifierOverride.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  v6 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v7 = NSClassFromString(v6);

  if (v7 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
    *(v2 + 8) = a1;
    *(v2 + 16) = a2;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.bundleIdentifierOverride.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v3;

  return EntitlementTestingOverrides.bundleIdentifierOverride.modify;
}

void EntitlementTestingOverrides.bundleIdentifierOverride.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 16);
  if ((a2 & 1) == 0)
  {
    v11 = *(v3 + 16);

    v12 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v13 = NSClassFromString(v12);

    if (v13 || (v14 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v15 = NSClassFromString(v14), v14, v15))
    {
      *(v3 + 8) = v4;
      *(v3 + 16) = v2;
      return;
    }

    goto LABEL_11;
  }

  v6 = a1[1];

  v7 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v8 = NSClassFromString(v7);

  if (!v8)
  {
    v9 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v10 = NSClassFromString(v9);

    if (!v10)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }
  }

  *(v3 + 8) = v4;
  *(v3 + 16) = v2;
}

void key path setter for EntitlementTestingOverrides.isEntitledToAccessAllSessions : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 24) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToAccessAllSessions.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.isEntitledToAccessAllSessions.modify(uint64_t a1))(_BYTE *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return EntitlementTestingOverrides.isEntitledToAccessAllSessions.modify;
}

void EntitlementTestingOverrides.isEntitledToAccessAllSessions.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 24) = v4;
    return;
  }

  __break(1u);
}

void key path setter for EntitlementTestingOverrides.isEntitledToForWebFallback : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 25) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToForWebFallback.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 25) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.isEntitledToForWebFallback.modify(uint64_t a1))(_BYTE *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 25);
  return EntitlementTestingOverrides.isEntitledToForWebFallback.modify;
}

void EntitlementTestingOverrides.isEntitledToForWebFallback.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 25) = v4;
    return;
  }

  __break(1u);
}

void key path setter for EntitlementTestingOverrides.definedSystemActivityIdentifiers : EntitlementTestingOverrides(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 32);

  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (v6 || (v7 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v8 = NSClassFromString(v7), v7, v8))
  {
    *(a2 + 32) = v3;
  }

  else
  {
    __break(1u);
  }
}