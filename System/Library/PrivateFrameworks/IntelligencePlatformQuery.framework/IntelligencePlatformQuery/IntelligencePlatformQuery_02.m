Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.StreamTombstone.Cursor.next()()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = v2;
    VirtualTable.Stream.TypeErasedStreamIterator.next()();

    v5 = *(v1 + 24);
    v4 = *(v1 + 32);
    if (v4)
    {
      v6 = *(v4 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentBookmark);
      v7 = v6;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = *(v0 + 24);
  }

  v8 = *(v5 + 152);
  *(v5 + 152) = v6;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.StreamTombstone.Cursor.eof()()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    v4 = 0u;
    v5 = 0u;
    goto LABEL_5;
  }

  outlined init with copy of Any?(v1 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentEvent, &v4);
  if (!*(&v5 + 1))
  {
LABEL_5:
    v2 = 1;
    goto LABEL_6;
  }

  v2 = 0;
LABEL_6:
  outlined destroy of Any?(&v4);
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.StreamTombstone.Cursor.column(context:index:)(Swift::OpaquePointer context, Swift::Int index)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *(v2 + 32);
  if (!v4)
  {
    memset(__src, 0, 32);
    goto LABEL_9;
  }

  outlined init with copy of Any?(v4 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentEvent, __src);
  if (!*&__src[24])
  {
LABEL_9:
    outlined destroy of Any?(__src);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BMStoreEvent_pMd, &_sSo12BMStoreEvent_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_17_1();
    *v13 = 0xD000000000000017;
    v13[1] = 0x80000002553A8590;
    memcpy(v13 + 2, __src, 0x48uLL);
    OUTLINED_FUNCTION_18();
    goto LABEL_11;
  }

  if (![v46 eventBody])
  {
    goto LABEL_14;
  }

  v7 = swift_dynamicCastObjCProtocolConditional();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v8 = v7;
  switch(index)
  {
    case 0:
      type metadata accessor for SQLConnection();
      v9 = [v8 segmentName];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      static SQLConnection.sqlite_result_string(context:string:)(context._rawValue, v10, v12);
      goto LABEL_36;
    case 1:
      v22 = [v7 offset];
      goto LABEL_24;
    case 2:
      v22 = [v7 length];
      goto LABEL_24;
    case 3:
      v22 = [v7 deletionReason];
      if ((v22 & 0x8000000000000000) == 0)
      {
LABEL_24:
        v26 = v22;
        rawValue = context._rawValue;
LABEL_43:
        sqlite3_result_int64(rawValue, v26);
        goto LABEL_44;
      }

      __break(1u);
LABEL_21:
      v23 = [v8 segmentName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      [v8 offset];
      v24 = specialized IncrementalIdentifier.Identifier.asData.getter();
      if (!v3)
      {
        v39 = v24;
        v40 = v25;

        switch(v40 >> 62)
        {
          case 1uLL:
            v45 = v39 >> 32;
            if (v39 >> 32 >= v39)
            {
              v44 = v39;
              goto LABEL_53;
            }

            __break(1u);
            return;
          case 2uLL:
            v44 = *(v39 + 16);
            v45 = *(v39 + 24);
LABEL_53:
            specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v44, v45, v40 & 0x3FFFFFFFFFFFFFFFLL, context._rawValue);
            goto LABEL_54;
          case 3uLL:
            *&__src[6] = 0;
            *__src = 0;
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              OUTLINED_FUNCTION_29();
            }

            v41 = static SQLConnection.SQLITE_TRANSIENT;
            v42 = context._rawValue;
            v43 = 0;
            goto LABEL_50;
          default:
            *__src = v39;
            *&__src[8] = v40;
            __src[10] = BYTE2(v40);
            __src[11] = BYTE3(v40);
            __src[12] = BYTE4(v40);
            __src[13] = BYTE5(v40);
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              OUTLINED_FUNCTION_29();
            }

            v41 = static SQLConnection.SQLITE_TRANSIENT;
            v42 = context._rawValue;
            v43 = BYTE6(v40);
LABEL_50:
            sqlite3_result_blob(v42, __src, v43, v41);
LABEL_54:
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            outlined consume of Data._Representation(v39, v40);
            break;
        }

        break;
      }

      goto LABEL_36;
    case 4:
      v15 = [v7 policyID];
      goto LABEL_26;
    case 5:
      v15 = [v7 processName];
LABEL_26:
      v28 = v15;
      if (v28)
      {
        v29 = v28;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        type metadata accessor for SQLConnection();
        static SQLConnection.sqlite_result_string(context:string:)(context._rawValue, v30, v32);
LABEL_36:
      }

      else
      {
        sqlite3_result_null(context._rawValue);
      }

LABEL_44:
      swift_unknownObjectRelease();
LABEL_45:
      swift_unknownObjectRelease();
      break;
    case 6:
      [v7 eventTimestamp];
      sqlite3_result_double(context._rawValue, v33);
      swift_unknownObjectRelease();
      goto LABEL_45;
    case 7:
      goto LABEL_21;
    case 8:
      [v46 timestamp];
      sqlite3_result_double(context._rawValue, v37);
      goto LABEL_44;
    case 9:
      v16 = [v46 bookmark];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 segmentName];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xE000000000000000;
      }

      type metadata accessor for SQLConnection();
      static SQLConnection.sqlite_result_string(context:string:)(context._rawValue, v19, v21);
      goto LABEL_36;
    case 10:
      v34 = [v46 bookmark];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 offset];
      }

      else
      {
        v36 = 0;
      }

      rawValue = context._rawValue;
      v26 = v36;
      goto LABEL_43;
    default:
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_17_1();
      *v38 = 0xD000000000000016;
      v38[1] = 0x80000002553A85B0;
      memcpy(v38 + 2, __src, 0x48uLL);
      OUTLINED_FUNCTION_18();
      goto LABEL_44;
  }

LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
}

void closure #1 in VirtualTable.StreamTombstone.Cursor.column(context:index:)(void *a1, uint64_t a2, sqlite3_context *a3)
{
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = a3;
  v4 = a1;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_10:
    swift_once();
  }

  sqlite3_result_blob(v3, v4, v5, static SQLConnection.SQLITE_TRANSIENT);
}

void *VirtualTable.StreamTombstone.Cursor.init(table:queryState:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 0;
  v2[2] = a1;
  return v2;
}

uint64_t VirtualTable.StreamTombstone.Cursor.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t VirtualTable.StreamTombstone.Cursor.__deallocating_deinit()
{
  VirtualTable.StreamTombstone.Cursor.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.StreamTombstone.Table.resetIncrementalState()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = 0;
  v7[3] = 0xE000000000000000;
  type metadata accessor for VirtualTable.Stream.QueryState();
  memset(v6, 0, sizeof(v6));
  swift_allocObject();

  v4 = VirtualTable.Stream.QueryState.init(storeIdentifier:startingBookmark:)(v7, v6);
  v5 = *(v1 + 56);
  *(v1 + 56) = v4;
}

uint64_t specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v6 = String.subscript.getter();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = String.subscript.getter();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = String.index(after:)();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = String.subscript.getter();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v49 + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v49 = v28;
    }

    v12 = *(v49 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v49 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v49 = v29;
    }

    *(v49 + 16) = v11;
    v26 = (v49 + 32 * v12);
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = String.index(after:)();
    if ((v22 & 1) == 0 && *(v49 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = String.subscript.getter();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    v12 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation3URLVGMd, &_ss17_NativeDictionaryVySS10Foundation3URLVGMR);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
    v13 = *(*(v21 + 48) + 16 * v9 + 8);

    v14 = *(v21 + 56);
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 32))(a3, v14 + *(*(v15 - 8) + 72) * v9, v15);
    _NativeDictionary._delete(at:)();
    *v4 = v21;
    v16 = a3;
    v17 = 0;
    v18 = 1;
    v19 = v15;
  }

  else
  {
    type metadata accessor for URL();
    OUTLINED_FUNCTION_4_3();
  }

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  return OUTLINED_FUNCTION_6_3(a1, a2, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO6StreamO0G0CGMd, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO6StreamO0G0CGMR);
}

{
  return OUTLINED_FUNCTION_6_3(a1, a2, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO4ViewO0G0CGMd, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO4ViewO0G0CGMR);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void (*a6)(uint64_t))
{
  v11 = v6;
  v12 = *v6;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v13;
  v16 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v11;
  v18 = *(*v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18);
  v19 = *(*(v22 + 48) + 16 * v15 + 8);

  v20 = *(*(v22 + 56) + 8 * v15);
  a6(a5);
  _NativeDictionary._delete(at:)();
  *v11 = v22;
  return v20;
}

void specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, sqlite3_context *a4)
{
  v7 = __DataStorage._bytes.getter();
  if (v7)
  {
    v8 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = MEMORY[0x259C322F0]();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v7[v12];
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  closure #1 in VirtualTable.StreamTombstone.Cursor.column(context:index:)(v7, v14, a4);
}

unint64_t lazy protocol witness table accessor for type [Substring] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Substring] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Substring] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySsGMd, &_sSaySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Substring] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

unint64_t type metadata accessor for BMStoreBookmark()
{
  result = lazy cache variable for type metadata for BMStoreBookmark;
  if (!lazy cache variable for type metadata for BMStoreBookmark)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BMStoreBookmark);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:hidden:objectType:enumerationType:)();
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
}

void OUTLINED_FUNCTION_20_2()
{

  JUMPOUT(0x259C32B90);
}

uint64_t specialized IncrementalIdentifier.Identifier.asData.getter(uint64_t a1, uint64_t a2)
{
  return specialized IncrementalIdentifier.Identifier.asData.getter(a1, a2, lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
}

{
  return specialized IncrementalIdentifier.Identifier.asData.getter(a1, a2, lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
}

{
  return specialized IncrementalIdentifier.Identifier.asData.getter(a1, a2, lazy protocol witness table accessor for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier);
}

{
  return specialized IncrementalIdentifier.Identifier.asData.getter(a1, a2, lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
}

uint64_t specialized IncrementalIdentifier.Identifier.asData.getter()
{
  v0 = MEMORY[0x259C331C0]();
  v1 = type metadata accessor for JSONEncoder();
  OUTLINED_FUNCTION_53(v1);
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier();
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_2_4();
  objc_autoreleasePoolPop(v0);
  return OUTLINED_FUNCTION_1_4();
}

{
  v0 = MEMORY[0x259C331C0]();
  v1 = type metadata accessor for JSONEncoder();
  OUTLINED_FUNCTION_53(v1);
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType();
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_2_4();
  objc_autoreleasePoolPop(v0);
  return OUTLINED_FUNCTION_1_4();
}

{
  v0 = MEMORY[0x259C331C0]();
  v1 = type metadata accessor for JSONEncoder();
  OUTLINED_FUNCTION_53(v1);
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier();
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_2_4();
  objc_autoreleasePoolPop(v0);
  return OUTLINED_FUNCTION_1_4();
}

{
  v0 = MEMORY[0x259C331C0]();
  v1 = type metadata accessor for JSONEncoder();
  OUTLINED_FUNCTION_53(v1);
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store();
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_2_4();
  objc_autoreleasePoolPop(v0);
  return OUTLINED_FUNCTION_1_4();
}

{
  v0 = MEMORY[0x259C331C0]();
  v1 = type metadata accessor for JSONEncoder();
  OUTLINED_FUNCTION_53(v1);
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark();
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_2_4();
  objc_autoreleasePoolPop(v0);
  return OUTLINED_FUNCTION_1_4();
}

{
  v0 = MEMORY[0x259C331C0]();
  v1 = type metadata accessor for JSONEncoder();
  OUTLINED_FUNCTION_53(v1);
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store();
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_2_4();
  objc_autoreleasePoolPop(v0);
  return OUTLINED_FUNCTION_1_4();
}

{
  v1 = MEMORY[0x259C331C0]();
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  v2 = type metadata accessor for JSONEncoder();
  OUTLINED_FUNCTION_53(v2);
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark();
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_2_4();
  objc_autoreleasePoolPop(v1);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t specialized IncrementalIdentifier.Identifier.asData.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = MEMORY[0x259C331C0]();
  v5 = type metadata accessor for JSONEncoder();
  OUTLINED_FUNCTION_53(v5);
  v6 = JSONEncoder.init()();
  a3(v6, v7);
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  OUTLINED_FUNCTION_2_4();
  objc_autoreleasePoolPop(v4);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t VirtualTable.Stream.QueryState.__allocating_init(globalBookmark:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v17[0] = *a1;
  v4 = *(a1 + 32);
  v17[1] = v3;
  v18 = v4;
  v19 = *(a1 + 48);
  outlined init with copy of IncrementalIdentifier.PersistableGlobalBookmark(v17, &v12);
  _s25IntelligencePlatformQuery21IncrementalIdentifierO05StoreE0PAAE18persistentBookmarkxAC017PersistableGlobalH0V_tKcfCAC6StreamO0F0V_Tt1B5();
  if (v2)
  {
    outlined destroy of IncrementalIdentifier.PersistableGlobalBookmark(v17);
  }

  else
  {
    v11[0] = v13;
    v11[1] = v14;
    v11[2] = v15;
    v11[3] = v16;
    v5 = *(&v18 + 1);
    v6 = v19;
    v7 = outlined copy of Data._Representation(*(&v18 + 1), v19);
    v8 = MEMORY[0x259C331C0](v7);
    v9 = type metadata accessor for JSONDecoder();
    OUTLINED_FUNCTION_53(v9);
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    objc_autoreleasePoolPop(v8);
    outlined destroy of IncrementalIdentifier.PersistableGlobalBookmark(v17);
    outlined consume of Data._Representation(v5, v6);
    v1 = swift_allocObject();
    VirtualTable.Stream.QueryState.init(storeIdentifier:startingBookmark:)(v11, &v12);
  }

  return v1;
}

uint64_t VirtualTable.Stream.Module.vtabCreatingIfNeeded(for:)()
{
  v2 = v1;
  v3 = v0;
  v4 = v0[6];
  if (*(v4 + 16) && (v5 = OUTLINED_FUNCTION_46(), v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6), (v8 & 1) != 0))
  {
    v9 = *(*(v4 + 56) + 8 * v7);
  }

  else
  {
    v11 = v3[5];
    swift_unownedRetainStrong();
    v12 = v3[2];
    v13 = v3[3];

    specialized SQLConnection.withoutAuthorizer(block:)(v14);

    if (!v2)
    {
      v15 = v3[6];
      v16 = OUTLINED_FUNCTION_46();
      result = specialized Dictionary.subscript.getter(v16, v17, v18);
      if (!result)
      {
        _StringGuts.grow(_:)(36);

        strcpy(__src, "No view named ");
        HIBYTE(__src[1]) = -18;
        v19 = OUTLINED_FUNCTION_46();
        MEMORY[0x259C32B90](v19);
        MEMORY[0x259C32B90](0xD000000000000014, 0x80000002553A85F0);
        v20 = __src[1];
        lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13();
        v22 = v21;
        *v21 = __src[0];
        v21[1] = v20;
        memcpy(v21 + 2, __src, 0x48uLL);
        *(v22 + 88) = 0;
        return swift_willThrow();
      }
    }
  }

  return result;
}

void VirtualTable.Stream.QueryState.finalBookmark.getter(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[18];
  if (v4)
  {
    v5 = v1[18];
  }

  else
  {
    v6 = v1[2];
    v7 = v2[3];
    v8 = objc_allocWithZone(MEMORY[0x277CF17F0]);

    v5 = OUTLINED_FUNCTION_26_1(v6, v7, 0.0);
  }

  v9 = v2[19];
  if (v9)
  {
    v10 = v4;
    v11 = v9;
  }

  else
  {
    v12 = v2[2];
    v13 = v2[3];
    v14 = objc_allocWithZone(MEMORY[0x277CF17F0]);
    v15 = v4;

    v11 = OUTLINED_FUNCTION_26_1(v12, v13, 0.0);
    v9 = 0;
  }

  v16 = v9;
  v17 = [v5 segmentName];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [v5 offset];
  v22 = [v11 segmentName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = [v11 offset];
  *a1 = v18;
  a1[1] = v20;
  a1[2] = v21;
  a1[3] = v23;
  a1[4] = v25;
  a1[5] = v26;
}

Swift::Void __swiftcall VirtualTable.Stream.TypeErasedStreamIterator.next()()
{
  v1 = (v0 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentEvent);
  outlined destroy of (offset: Int, element: LibraryArtifact.Column)(v0 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentEvent, &_sypSgMd, &_sypSgMR);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = *(v0 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_subscription);
  if (v2)
  {

    [v2 requestDemand_];
  }
}

id VirtualTable.Stream.QueryState.startingTombstoneBMBookmark.getter()
{
  if (!v0[7])
  {
    return 0;
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[2];
  v4 = v0[3];
  objc_allocWithZone(MEMORY[0x277CF17F0]);

  v6 = OUTLINED_FUNCTION_22_2();
  return @nonobjc BMStoreBookmark.init(stream:segment:iterationStartTime:offset:)(v8, v6, v7, v3, v2, v1);
}

uint64_t VirtualTable.Stream.Module.createTable(using:databaseName:tableName:args:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *(v6 + 48);
  if (!*(v9 + 16))
  {
    return VirtualTable.Stream.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  }

  a1 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  if ((a2 & 1) == 0)
  {
    return VirtualTable.Stream.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  }

  v10 = *(*(v9 + 56) + 8 * a1);
}

uint64_t VirtualTable.Stream.Module.createTableInitial(using:databaseName:tableName:args:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = v6;
  v11 = *(v6 + 40);
  v12 = swift_unownedRetainStrong();
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);

  v15 = dispatch thunk of static LibraryBase.streamBase(for:)();
  if (v15)
  {
    v16 = v15;
    v17 = type metadata accessor for VirtualTable.Stream.Table();
    v14 = OUTLINED_FUNCTION_53(v17);

    v18 = v16;

    VirtualTable.Stream.Table.init(module:tableName:stream:)(v19, a5, a6, v18);
    if (!v7)
    {

      v22 = *(v8 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __src[0] = *(v8 + 48);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a5, a6, isUniquelyReferenced_nonNull_native);
      *(v8 + 48) = __src[0];
    }
  }

  else
  {
    _StringGuts.grow(_:)(18);

    __src[0] = 0xD000000000000010;
    __src[1] = 0x80000002553A84E0;
    MEMORY[0x259C32B90](a5, a6);
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13();
    v21 = v20;
    *v20 = 0xD000000000000010;
    v20[1] = 0x80000002553A84E0;
    memcpy(v20 + 2, __src, 0x48uLL);
    *(v21 + 88) = 0;
    swift_willThrow();
  }

  return v14;
}

uint64_t VirtualTable.Stream.Module.init(ipsqlDb:)(uint64_t a1)
{
  *(v1 + 16) = 0xD000000000000012;
  *(v1 + 24) = 0x80000002553A8900;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  swift_unownedRetain();
  type metadata accessor for VirtualTable.Stream.Table();
  *(v1 + 48) = Dictionary.init(dictionaryLiteral:)();

  return v1;
}

uint64_t protocol witness for VirtualTable.Module.createTable(using:databaseName:tableName:args:) in conformance VirtualTable.Stream.Module@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = *v7;
  result = VirtualTable.Stream.Module.createTable(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  if (!v8)
  {
    *a7 = result;
  }

  return result;
}

uint64_t protocol witness for VirtualTable.Module.createTableInitial(using:databaseName:tableName:args:) in conformance VirtualTable.Stream.Module@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = *v7;
  result = VirtualTable.Stream.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  if (!v8)
  {
    *a7 = result;
  }

  return result;
}

uint64_t VirtualTable.Stream.Table.createSQL.getter()
{
  v1 = type metadata accessor for LibraryArtifact.Table();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  (*(v4 + 16))(v8 - v7, v0 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream5Table_schema, v1);
  v10 = LibraryArtifact.Table.createTableSQL.getter();
  (*(v4 + 8))(v9, v1);
  return v10;
}

size_t VirtualTable.Stream.Table.init(module:tableName:stream:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = v4;
  v175 = a1;
  v168 = *v4;
  v190 = type metadata accessor for LibraryArtifact.Table();
  v10 = OUTLINED_FUNCTION_0_2(v190);
  v171 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_3(v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO11EnumerationVSgMd, &_s12BiomeStreams15LibraryArtifactO11EnumerationVSgMR);
  OUTLINED_FUNCTION_21(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_21_2();
  v188 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO5TableVSgMd, &_s12BiomeStreams15LibraryArtifactO5TableVSgMR);
  OUTLINED_FUNCTION_21(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_13_3(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO18RepresentationTypeOSgMd, &_s12BiomeStreams15LibraryArtifactO18RepresentationTypeOSgMR);
  OUTLINED_FUNCTION_21(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_13_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO9PredicateOSgMd, &_s12BiomeStreams15LibraryArtifactO9PredicateOSgMR);
  OUTLINED_FUNCTION_21(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_13_3(v35);
  v184 = type metadata accessor for LibraryArtifact.SQLDataType();
  v36 = OUTLINED_FUNCTION_0_2(v184);
  v173 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5_5();
  v172 = v40;
  OUTLINED_FUNCTION_15_2();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_13_3(&v165 - v42);
  v187 = type metadata accessor for LibraryArtifact.Column();
  v43 = OUTLINED_FUNCTION_0_2(v187);
  v189 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_5_5();
  v193 = v47;
  OUTLINED_FUNCTION_15_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_13_3(&v165 - v49);
  v50 = [a4 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_28_0();
  v51 = v5 == a2 && v4 == a3;
  if (v51)
  {
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_29_1();
    if ((v5 & 1) == 0)
    {
LABEL_13:
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      MEMORY[0x259C32B90](0xD00000000000002BLL, 0x80000002553A8500);
      MEMORY[0x259C32B90](a2, a3);

      MEMORY[0x259C32B90](32, 0xE100000000000000);
      v55 = [a4 identifier];
      v195 = v55;
      type metadata accessor for BMStreamIdentifier(0);
      _print_unlocked<A, B>(_:_:)();

      MEMORY[0x259C32B90](32, 0xE100000000000000);
      v56 = [a4 schema];
      v57 = [v56 tableName];

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      MEMORY[0x259C32B90](v58, v60);

      v61 = __src[0];
      v62 = __src[1];
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13();
      v64 = v63;
      *v63 = v61;
      v63[1] = v62;
      memcpy(v63 + 2, __src, 0x48uLL);
      *(v64 + 88) = 0;
      swift_willThrow();

LABEL_14:
      v65 = *(*v6 + 48);
      v66 = *(*v6 + 52);
      swift_deallocPartialClassInstance();

      return v6;
    }
  }

  v52 = [a4 schema];
  v53 = [v52 tableName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_28_0();
  if (v5 == a2 && v52 == a3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_29_1();
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v6[2] = v175;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v67 = *MEMORY[0x277CF0DF0];
  v6[6] = *MEMORY[0x277CF0DF0];
  swift_unownedRetain();
  v68 = a4;
  v69 = v67;
  v70 = [v68 schema];
  v71 = [v70 columns];

  v72 = type metadata accessor for BMSQLColumn(0, &lazy cache variable for type metadata for BMSQLColumn, 0x277CF1A80);
  v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v74 = specialized Array._getCount()(v73);
  v75 = MEMORY[0x277CF1830];
  v167 = v68;
  v166 = v72;
  if (!v74)
  {

    v135 = *v75;
    v80 = MEMORY[0x277D84F90];
    v75 = v171;
LABEL_54:
    (*(v173 + 104))(v185, v135, v184);
    type metadata accessor for LibraryArtifact.Predicate();
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v139);
    v140 = type metadata accessor for LibraryArtifact.RepresentationType();
    OUTLINED_FUNCTION_3_5(v140);
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_25_1(v141, v142, v143);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v144, v145, v146, v147);
    OUTLINED_FUNCTION_11_3();
    v76 = v169;
    OUTLINED_FUNCTION_5_4();
    LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:hidden:objectType:enumerationType:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_55;
  }

  v76 = v74;
  v195 = MEMORY[0x277D84F90];
  v77 = &v195;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74 & ~(v74 >> 63), 0);
  if ((v76 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  v165 = v6;
  v79 = 0;
  v80 = v195;
  v183 = v73 & 0xC000000000000001;
  v177 = v73 & 0xFFFFFFFFFFFFFF8;
  v174 = *MEMORY[0x277CF1848];
  v179 = (v173 + 104);
  v178 = *v75;
  v180 = v189 + 32;
  v182 = v73;
  v181 = v76;
  while (!__OFADD__(v79, 1))
  {
    v192 = v79 + 1;
    if (v183)
    {
      v6 = MEMORY[0x259C32E50](v79, v73);
    }

    else
    {
      v76 = 0xEE00617461447964;
      if (v79 >= *(v177 + 16))
      {
        goto LABEL_61;
      }

      v6 = *(v73 + 8 * v79 + 32);
    }

    v81 = [v6 name];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_28_0();
    if (v75 == 0x6F42746E6576655FLL && v77 == 0xEE00617461447964)
    {
    }

    else
    {
      OUTLINED_FUNCTION_22_2();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_29_1();
      if ((v75 & 1) == 0)
      {
        v83 = [v6 name];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_28_0();
        if (v75 == 0x6C43746E6576655FLL && v77 == 0xEF656D614E737361)
        {
        }

        else
        {
          OUTLINED_FUNCTION_22_2();
          _stringCompareWithSmolCheck(_:_:expecting:)();
          OUTLINED_FUNCTION_29_1();
          if ((v75 & 1) == 0)
          {
            v85 = [v6 name];
            v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v88 = v87;

            __src[0] = v86;
            __src[1] = v88;

            v89._countAndFlagsBits = 0x6E6F736A5FLL;
            v89._object = 0xE500000000000000;
            LOBYTE(v85) = String.hasSuffix(_:)(v89);

            if (v85)
            {
              if ((v88 & 0x2000000000000000) != 0)
              {
                v90 = HIBYTE(v88) & 0xF;
              }

              else
              {
                v90 = v86 & 0xFFFFFFFFFFFFLL;
              }

              result = String.index(_:offsetBy:limitedBy:)();
              if (v91)
              {
                goto LABEL_65;
              }

              if (4 * v90 < result >> 14)
              {
                goto LABEL_64;
              }

              String.removeSubrange(_:)();
            }

            v92 = __src[1];
            [v6 dataType];
            v76 = v172;
            v93 = v176;
            LibraryArtifact.SQLDataType.init(_:)();
            v176 = v93;
            if (v93)
            {

              v6 = v165;
              v160 = v165[2];
              swift_unownedRelease();
              v161 = v6[4];

              goto LABEL_14;
            }

            type metadata accessor for LibraryArtifact.Predicate();
            OUTLINED_FUNCTION_4_3();
            __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
            v98 = type metadata accessor for LibraryArtifact.RepresentationType();
            OUTLINED_FUNCTION_3_5(v98);
            v191 = v92;
            v77 = v186;
            OUTLINED_FUNCTION_4_3();
            OUTLINED_FUNCTION_25_1(v99, v100, v101);
            OUTLINED_FUNCTION_4_3();
            __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
            OUTLINED_FUNCTION_9_3();
            OUTLINED_FUNCTION_4_4();
            LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
            goto LABEL_47;
          }
        }

        v76 = v185;
        (*v179)(v185, v174, v184);
        type metadata accessor for LibraryArtifact.Predicate();
        OUTLINED_FUNCTION_4_3();
        __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
        v124 = type metadata accessor for LibraryArtifact.RepresentationType();
        OUTLINED_FUNCTION_3_5(v124);
        OUTLINED_FUNCTION_4_3();
        OUTLINED_FUNCTION_25_1(v125, v126, v127);
        v77 = v188;
        OUTLINED_FUNCTION_4_3();
        __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
        OUTLINED_FUNCTION_9_3();
        OUTLINED_FUNCTION_4_4();
        LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:hidden:objectType:enumerationType:)();
LABEL_47:

        goto LABEL_48;
      }
    }

    v106 = *v179;
    v191 = v79;
    v107 = v6;
    v6 = v80;
    v76 = v185;
    v106(v185, v178, v184);
    type metadata accessor for LibraryArtifact.Predicate();
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
    v112 = type metadata accessor for LibraryArtifact.RepresentationType();
    OUTLINED_FUNCTION_3_5(v112);
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_25_1(v113, v114, v115);
    v77 = v188;
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_4_4();
    LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:hidden:objectType:enumerationType:)();

    v79 = v191;
LABEL_48:
    v195 = v80;
    v133 = v80[2];
    v132 = v80[3];
    v75 = (v133 + 1);
    v134 = v181;
    if (v133 >= v132 >> 1)
    {
      v77 = &v195;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v132 > 1, v133 + 1, 1);
      v80 = v195;
    }

    v80[2] = v75;
    (*(v189 + 32))(v80 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v133, v193, v187);
    ++v79;
    v51 = v192 == v134;
    v73 = v182;
    if (v51)
    {

      v6 = v165;
      v75 = v171;
      v135 = v178;
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  v162 = v80[2];
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v80 = v163;
LABEL_55:
  v148 = v80[2];
  if (v148 >= v80[3] >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v80 = v164;
  }

  v80[2] = v148 + 1;
  (*(v189 + 32))(v80 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v148, v76, v187);
  v149 = v167;
  v150 = [v167 schema];
  v151 = [v150 columns];

  v152 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2552FD760;
  *(inited + 32) = static VirtualTable.Stream.Table.identifierColumn.getter();
  __src[0] = v152;
  specialized Array.append<A>(contentsOf:)(inited);
  v6[7] = __src[0];
  v154 = [v149 schema];
  v155 = [v154 tableName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v156 = v170;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x259C32540]();
  (*(v75 + 4))(v6 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream5Table_schema, v156, v190);
  v158 = v6[3];
  v157 = v6[4];

  v159 = static VirtualTable.Stream.Table.defaultSourceState(for:)(v158, v157);

  *(v6 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream5Table_sourceState) = v159;

  return v6;
}

id static VirtualTable.Stream.Table.identifierColumn.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  v1 = OUTLINED_FUNCTION_11_3();
  result = @nonobjc BMSQLColumn.init(name:dataType:requestOnly:extractBlock:)(v1, v2, 4, 1, v3, 0);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t static VirtualTable.Stream.Table.defaultSourceState(for:)(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = 0;
  v5[3] = 0xE000000000000000;
  type metadata accessor for VirtualTable.Stream.QueryState();
  memset(v4, 0, sizeof(v4));
  v2 = swift_allocObject();

  VirtualTable.Stream.QueryState.init(storeIdentifier:startingBookmark:)(v5, v4);
  return v2;
}

void *VirtualTable.Stream.Table.createCursor()()
{
  v1 = *(v0 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream5Table_sourceState);
  type metadata accessor for VirtualTable.Stream.Cursor();
  v2 = swift_allocObject();
  v2[3] = v0;
  v2[4] = 0;
  v2[2] = v1;

  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.Stream.Table.bestIndex(indexInfo:)(sqlite3_index_info *indexInfo)
{
  v3 = type metadata accessor for LibraryArtifact.Table();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = &_sSi6offset_12BiomeStreams15LibraryArtifactO6ColumnV7elementtMd;
  v13 = &_sSi6offset_12BiomeStreams15LibraryArtifactO6ColumnV7elementtMR;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_12BiomeStreams15LibraryArtifactO6ColumnV7elementtMd, &_sSi6offset_12BiomeStreams15LibraryArtifactO6ColumnV7elementtMR);
  v14 = OUTLINED_FUNCTION_7_3(v75);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_5();
  v76 = v17;
  OUTLINED_FUNCTION_15_2();
  MEMORY[0x28223BE20](v18);
  v73 = (&v69 - v19);
  OUTLINED_FUNCTION_15_2();
  MEMORY[0x28223BE20](v20);
  v69 = &v69 - v21;
  v70 = indexInfo;
  indexInfo->idxNum = 0;
  indexInfo->estimatedRows = 100;
  v22 = (*(v6 + 16))(v11, v1 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream5Table_schema, v3);
  v23 = MEMORY[0x259C32560](v22);
  (*(v6 + 8))(v11, v3);
  v24 = 0;
  v74 = *(v23 + 16);
  v72 = *MEMORY[0x277CF1878];
  v25 = v76;
  while (1)
  {
    if (v74 == v24)
    {

      return;
    }

    if (v24 >= *(v23 + 16))
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v26 = type metadata accessor for LibraryArtifact.Column();
    OUTLINED_FUNCTION_0_2(v26);
    v71 = v27;
    v28 = v23;
    v30 = v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v29 + 72) * v24;
    v31 = v75;
    v32 = *(v75 + 48);
    v33 = v73;
    *v73 = v24;
    (*(v29 + 16))(&v33[v32], v30, v26);
    v34 = v33;
    v35 = v12;
    v36 = v13;
    outlined init with take of (offset: Int, element: LibraryArtifact.Column)(v34, v25, v12, v13);
    v37 = v25 + *(v31 + 48);
    v38 = LibraryArtifact.Column.name.getter();
    v40 = v39;
    if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
    {
      break;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
      goto LABEL_12;
    }

    v12 = v35;
    v13 = v36;
    outlined destroy of (offset: Int, element: LibraryArtifact.Column)(v76, v35, v36);
    ++v24;
    v23 = v28;
  }

LABEL_12:

  v44 = v69;
  outlined init with take of (offset: Int, element: LibraryArtifact.Column)(v76, v69, &_sSi6offset_12BiomeStreams15LibraryArtifactO6ColumnV7elementtMd, &_sSi6offset_12BiomeStreams15LibraryArtifactO6ColumnV7elementtMR);
  v45 = *v44;
  (*(v71 + 8))(&v44[*(v75 + 48)], v26);
  v46 = v70;
  if (v70->nOrderBy != 1)
  {
    goto LABEL_17;
  }

  aOrderBy = v70->aOrderBy;
  if (!aOrderBy)
  {
    goto LABEL_71;
  }

  if (v45 != aOrderBy->iColumn)
  {
LABEL_17:
    v48 = 0;
    goto LABEL_20;
  }

  v48 = 1;
  v70->orderByConsumed = 1;
  if (aOrderBy->desc)
  {
    v46->idxNum = 1;
  }

  else
  {
    v48 = 0;
  }

  v46->estimatedCost = 100.0;
LABEL_20:
  nConstraint = v46->nConstraint;
  if ((nConstraint & 0x80000000) != 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = -1;
  v55 = -1;
  v56 = -1;
LABEL_22:
  i = v56;
LABEL_23:
  v56 = i;
  v58 = v53;
  for (i = v53; nConstraint != i; ++i)
  {
    if (i >= nConstraint)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v53 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_65;
    }

    aConstraint = v46->aConstraint;
    if (!aConstraint)
    {
      goto LABEL_70;
    }

    v60 = &aConstraint[v58];
    if (v45 == v60->iColumn && v60->usable != 0)
    {
      op = v60->op;
      switch(op)
      {
        case 2:
          v54 = i;
          v64 = __OFADD__(v50++, 1);
          if (!v64)
          {
            goto LABEL_22;
          }

          __break(1u);
          goto LABEL_49;
        case 4:
          goto LABEL_40;
        case 8:
        case 16:
          v55 = i;
          v64 = __OFADD__(v51++, 1);
          if (v64)
          {
            goto LABEL_68;
          }

          goto LABEL_22;
        case 32:
LABEL_40:
          v64 = __OFADD__(v52++, 1);
          if (v64)
          {
            goto LABEL_69;
          }

          goto LABEL_23;
      }
    }

    ++v58;
  }

LABEL_49:
  if (v52 == 1)
  {
    v48 |= 2u;
    v46->idxNum = v48;
    aConstraintUsage = v46->aConstraintUsage;
    if (!aConstraintUsage)
    {
      goto LABEL_72;
    }

    aConstraintUsage[v56].argvIndex = 1;
    v46->estimatedCost = 100.0;
  }

  if (v51 == 1)
  {
    v46->estimatedCost = 100.0;
    v48 |= 4u;
    v46->idxNum = v48;
    v66 = v46->aConstraintUsage;
    if (!v66)
    {
      goto LABEL_73;
    }

    if (v52 == 1)
    {
      v67 = 2;
    }

    else
    {
      v67 = 1;
    }

    v66[v55].argvIndex = v67;
  }

  if (v50 == 1 && !v51 && !v52)
  {
    v46->idxNum = v48 | 8;
    v68 = v46->aConstraintUsage;
    if (!v68)
    {
      goto LABEL_74;
    }

    v68[v54].argvIndex = 1;
    v46->estimatedCost = 1.0;
    v46->estimatedRows = 1;
    v46->idxFlags |= 1u;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.Stream.Table.tearDown()()
{
  v1 = v0[2];
  swift_unownedRetainStrong();
  specialized Dictionary._Variant.removeValue(forKey:)(v0[3], v0[4]);
}

uint64_t VirtualTable.Stream.Table.deinit()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream5Table_schema;
  v5 = type metadata accessor for LibraryArtifact.Table();
  OUTLINED_FUNCTION_7_3(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream5Table_sourceState);

  return v0;
}

uint64_t VirtualTable.Stream.Table.__deallocating_deinit()
{
  VirtualTable.Stream.Table.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for VirtualTable.Stream.Table()
{
  result = type metadata singleton initialization cache for VirtualTable.Stream.Table;
  if (!type metadata singleton initialization cache for VirtualTable.Stream.Table)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for VirtualTable.Stream.Table()
{
  result = type metadata accessor for LibraryArtifact.Table();
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

void *protocol witness for VirtualTable.Table.createCursor() in conformance VirtualTable.Stream.Table@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = VirtualTable.Stream.Table.createCursor()();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.Stream.Cursor.filter(idxNum:idxStr:args:)(Swift::Int32 idxNum, Swift::String_optional idxStr, Swift::OpaquePointer args)
{
  v5 = type metadata accessor for Date();
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = OUTLINED_FUNCTION_21(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_5();
  v68 = v15;
  OUTLINED_FUNCTION_15_2();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v66[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v66[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v66[-v23];
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v5);
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v5);
  if ((idxNum & 0xA) != 0)
  {
    if (!*(args._rawValue + 2))
    {
      __break(1u);
      goto LABEL_30;
    }

    v67 = idxNum;
    v31 = sqlite3_value_double(*(args._rawValue + 4));
    static Date.distantPast.getter();
    Date.timeIntervalSince1970.getter();
    v33 = v32;
    v34 = *(v8 + 8);
    v35 = OUTLINED_FUNCTION_24_1();
    v34(v35);
    if (v31 <= v33)
    {
      static Date.distantPast.getter();
    }

    else
    {
      static Date.distantFuture.getter();
      Date.timeIntervalSince1970.getter();
      v37 = v36;
      v38 = OUTLINED_FUNCTION_24_1();
      v34(v38);
      if (v37 <= v31)
      {
        static Date.distantFuture.getter();
      }

      else
      {
        Date.init(timeIntervalSince1970:)();
      }
    }

    outlined destroy of (offset: Int, element: LibraryArtifact.Column)(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v5);
    outlined init with take of (offset: Int, element: LibraryArtifact.Column)(v19, v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    LOBYTE(idxNum) = v67;
  }

  if ((idxNum & 0xC) != 0)
  {
    v39 = *(args._rawValue + 2);
    if (v39 == 1)
    {
      v40 = 32;
LABEL_14:
      v41 = sqlite3_value_double(*(args._rawValue + v40));
      static Date.distantPast.getter();
      Date.timeIntervalSince1970.getter();
      v43 = v42;
      v44 = *(v8 + 8);
      v45 = OUTLINED_FUNCTION_24_1();
      v44(v45);
      if (v41 <= v43)
      {
        static Date.distantPast.getter();
      }

      else
      {
        static Date.distantFuture.getter();
        Date.timeIntervalSince1970.getter();
        v47 = v46;
        v48 = OUTLINED_FUNCTION_24_1();
        v44(v48);
        if (v47 <= v41)
        {
          static Date.distantFuture.getter();
        }

        else
        {
          Date.init(timeIntervalSince1970:)();
        }
      }

      outlined destroy of (offset: Int, element: LibraryArtifact.Column)(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v5);
      outlined init with take of (offset: Int, element: LibraryArtifact.Column)(v19, v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_20;
    }

    if (v39)
    {
      v40 = 40;
      goto LABEL_14;
    }

LABEL_30:
    __break(1u);
    return;
  }

LABEL_20:
  if (idxNum)
  {
    v49 = v22;
  }

  else
  {
    v49 = v24;
  }

  if (idxNum)
  {
    v50 = v24;
  }

  else
  {
    v50 = v22;
  }

  outlined init with copy of Any?(v49, v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of Any?(v50, v68, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v51 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_5_4();
  v56 = @nonobjc BMPublisherOptions.init(start:end:maxEvents:lastN:reversed:)(v52, v53, v54, v55, idxNum & 1);
  v57 = v70;
  v58 = *(v70 + 16);
  v59 = *(v70 + 24);
  v60 = v56;
  v61 = v69;
  v62 = VirtualTable.Stream.Table.iterator(options:queryObject:)(v60, v58);

  v63 = OUTLINED_FUNCTION_46();
  outlined destroy of (offset: Int, element: LibraryArtifact.Column)(v63, v64, &_s10Foundation4DateVSgMR);
  outlined destroy of (offset: Int, element: LibraryArtifact.Column)(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (!v61)
  {
    v65 = *(v57 + 32);
    *(v57 + 32) = v62;
  }
}

char *VirtualTable.Stream.Table.iterator(options:queryObject:)(char *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_unownedRetainStrong();
  v6 = *(v5 + 40);
  swift_unownedRetainStrong();

  v7 = *(v6 + 56);
  v8 = v7;

  if (v7)
  {
    v10 = *(v2 + 40);
    v9 = *(v2 + 48);
    v11 = *(a2 + 136);
    v12 = v9;
    v13 = [v10 publisherForAccount:v8 device:v11 withUseCase:v12 options:a1];

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_16:
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    v32 = OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12_3(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42);
    v13[88] = 0;
    swift_willThrow();
    return a1;
  }

  v30 = *(a2 + 136);
  if (v30)
  {
    v31 = [*(v2 + 40) publisherForDevice:v30 withUseCase:*(v2 + 48) options:a1];
  }

  else
  {
    v31 = [*(v2 + 40) publisherWithUseCase:*(v2 + 48) options:a1];
  }

  v13 = v31;
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_3:
  v14 = v13;
  v15 = VirtualTable.Stream.QueryState.startingBMBookmark.getter();
  if (v15)
  {
    v16 = v15;
    v17 = swift_dynamicCastObjCProtocolConditional();
    if (v17)
    {
      [v14 applyBookmark_];
    }
  }

  a1 = [objc_allocWithZone(type metadata accessor for VirtualTable.Stream.TypeErasedStreamIterator()) init];
  [v14 subscribe_];
  v18 = OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentBookmark;
  v19 = *&a1[OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentBookmark];
  v20 = *(a2 + 144);
  *(a2 + 144) = v19;
  v21 = v19;

  v22 = VirtualTable.Stream.QueryState.startingBMBookmark.getter();
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = v22;
  v24 = *(a2 + 144);
  if (!v24)
  {

    return a1;
  }

  type metadata accessor for BMSQLColumn(0, &lazy cache variable for type metadata for BMStoreBookmark, 0x277CF17F0);
  v25 = v24;
  v26 = static NSObject.== infix(_:_:)();

  if ((v26 & 1) == 0)
  {

LABEL_18:
    return a1;
  }

  VirtualTable.Stream.TypeErasedStreamIterator.next()();

  v27 = *&a1[v18];
  v28 = *(a2 + 144);
  *(a2 + 144) = v27;
  v29 = v27;

  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.Stream.Cursor.next()()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = v2;
    VirtualTable.Stream.TypeErasedStreamIterator.next()();

    v4 = *(v1 + 32);
    v5 = *(v1 + 16);
    if (v4)
    {
      v6 = *(v4 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentBookmark);
      v7 = v6;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = *(v0 + 16);
  }

  v8 = *(v5 + 144);
  *(v5 + 144) = v6;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.Stream.Cursor.eof()()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    v4 = 0u;
    v5 = 0u;
    goto LABEL_5;
  }

  outlined init with copy of Any?(v1 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentEvent, &v4, &_sypSgMd, &_sypSgMR);
  if (!*(&v5 + 1))
  {
LABEL_5:
    v2 = 1;
    goto LABEL_6;
  }

  v2 = 0;
LABEL_6:
  outlined destroy of (offset: Int, element: LibraryArtifact.Column)(&v4, &_sypSgMd, &_sypSgMR);
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.Stream.Cursor.column(context:index:)(Swift::OpaquePointer context, Swift::Int index)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 32);
  if (!v3)
  {
    v22 = 0u;
    v23 = 0u;
    goto LABEL_8;
  }

  v6 = *(*(v2 + 24) + 56);
  outlined init with copy of Any?(v3 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentEvent, &v22, &_sypSgMd, &_sypSgMR);
  if (!*(&v23 + 1))
  {
LABEL_8:
    outlined destroy of (offset: Int, element: LibraryArtifact.Column)(&v22, &_sypSgMd, &_sypSgMR);
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    v10 = OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12_3(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21[0]);
    *(v2 + 88) = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  outlined init with take of Any(&v22, v24);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(index, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = MEMORY[0x259C32E50](index, v6);
  }

  else
  {
    v7 = *(v6 + 8 * index + 32);
  }

  __swift_project_boxed_opaque_existential_0(v24, v25);
  v21[0] = 0;
  v8 = [v7 setSQLiteValueFromRow:_bridgeAnythingToObjectiveC<A>(_:)() sqliteContext:context._rawValue error:v21];

  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = v21[0];
  }

  else
  {
    v18 = v21[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
LABEL_11:
  v19 = *MEMORY[0x277D85DE8];
}

void *VirtualTable.Stream.Cursor.init(table:queryState:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = 0;
  v2[2] = a2;
  return v2;
}

uint64_t VirtualTable.Stream.TypeErasedStreamIterator.receiveInput(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentEvent;
  outlined destroy of (offset: Int, element: LibraryArtifact.Column)(v1 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentEvent, &_sypSgMd, &_sypSgMR);
  outlined init with copy of Any(a1, v1 + v3);
  outlined init with copy of Any(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BMStoreEvent_pMd, &_sSo12BMStoreEvent_pMR);
  if (swift_dynamicCast())
  {
    v4 = [v7 bookmark];
    swift_unknownObjectRelease();
    v5 = *(v1 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentBookmark);
    *(v1 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentBookmark) = v4;
  }

  return *MEMORY[0x277CF1780];
}

id VirtualTable.Stream.TypeErasedStreamIterator.receive(_:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_subscription);
  *(v1 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_subscription) = a1;
  v3 = a1;

  return [v3 requestDemand_];
}

void VirtualTable.Stream.TypeErasedStreamIterator.receive(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_completion);
  *(v1 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_completion) = a1;
  v2 = a1;
}

id VirtualTable.Stream.TypeErasedStreamIterator.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_subscription] = 0;
  v2 = &v0[OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentEvent];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *&v0[OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentBookmark] = 0;
  *&v0[OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_completion] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id VirtualTable.Stream.TypeErasedStreamIterator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.Stream.Table.resetIncrementalState()()
{
  v1 = static VirtualTable.Stream.Table.defaultSourceState(for:)(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream5Table_sourceState);
  *(v0 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream5Table_sourceState) = v1;
}

id VirtualTable.Stream.QueryState.startingBMBookmark.getter()
{
  v1 = v0[7];
  if (!v1)
  {
    return 0;
  }

  v2 = v0[8];
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];
  objc_allocWithZone(MEMORY[0x277CF17F0]);

  v6 = OUTLINED_FUNCTION_22_2();
  return @nonobjc BMStoreBookmark.init(stream:segment:iterationStartTime:offset:)(v8, v6, v7, v3, v1, v2);
}

void closure #1 in static VirtualTable.Stream.Table.identifierColumn.getter(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of Any(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BMStoreEvent_pMd, &_sSo12BMStoreEvent_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    v8 = swift_allocError();
    v10 = v9;
    *v9 = 0xD000000000000011;
    v9[1] = 0x80000002553A88C0;
    memcpy(v9 + 2, __src, 0x48uLL);
    *(v10 + 88) = 0;
    swift_willThrow();
    if (!a2)
    {
      goto LABEL_6;
    }

LABEL_5:
    *a2 = _convertErrorToNSError(_:)();
    goto LABEL_6;
  }

  v5 = [v17 bookmark];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 segmentName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v6 offset];
    v13 = specialized IncrementalIdentifier.Identifier.asData.getter();
    v15 = v14;

    *(a3 + 24) = MEMORY[0x277CC9318];
    swift_unknownObjectRelease();

    *a3 = v13;
    *(a3 + 8) = v15;
    return;
  }

  lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
  v8 = swift_allocError();
  v12 = v11;
  *v11 = 0xD000000000000015;
  v11[1] = 0x80000002553A88E0;
  memcpy(v11 + 2, __src, 0x48uLL);
  *(v12 + 88) = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  if (a2)
  {
    goto LABEL_5;
  }

LABEL_6:

  *a3 = 0u;
  *(a3 + 16) = 0u;
}

uint64_t VirtualTable.Stream.QueryState.init(storeIdentifier:startingBookmark:)(uint64_t *a1, _OWORD *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  v8 = a2[1];
  *(v3 + 48) = *a2;
  *(v3 + 64) = v8;
  *(v3 + 80) = a2[2];
  *(v3 + 96) = 0u;

  OUTLINED_FUNCTION_5_4();
  outlined consume of IncrementalIdentifier.Stream.Bookmark?(v9, v10);
  v11 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v11 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    objc_allocWithZone(MEMORY[0x277CF1B90]);

    OUTLINED_FUNCTION_5_4();
    v16 = @nonobjc BMDevice.init(deviceIdentifier:idsDeviceIdentifier:name:model:platform:)(v12, v13, v14, v15, 0, 0, 49, 0xE100000000000000, 0);
  }

  else
  {

    v16 = 0;
  }

  v17 = *(v3 + 136);
  *(v3 + 136) = v16;

  return v3;
}

uint64_t VirtualTable.Stream.QueryState.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  outlined consume of IncrementalIdentifier.Stream.Bookmark?(*(v0 + 48), *(v0 + 56));
  outlined destroy of (offset: Int, element: LibraryArtifact.Column)(v0 + 96, &_s25IntelligencePlatformQuery21IncrementalIdentifierO06EntityE0_pSgMd, &_s25IntelligencePlatformQuery21IncrementalIdentifierO06EntityE0_pSgMR);

  return v0;
}

uint64_t VirtualTable.Stream.QueryState.__deallocating_deinit()
{
  VirtualTable.Stream.QueryState.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t outlined consume of IncrementalIdentifier.Stream.Bookmark?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id @nonobjc BMPublisherOptions.init(start:end:maxEvents:lastN:reversed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = type metadata accessor for Date();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:isa endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

id @nonobjc BMSQLColumn.init(name:dataType:requestOnly:extractBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = MEMORY[0x259C32A40]();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15[4] = a5;
  v15[5] = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@out Any?);
  v15[3] = &block_descriptor_0;
  v12 = _Block_copy(v15);

LABEL_6:
  v13 = [v6 initWithName:v11 dataType:a3 requestOnly:a4 & 1 extractBlock:v12];
  _Block_release(v12);

  return v13;
}

id thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@out Any?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v17[3] = swift_getObjectType();
  v17[0] = a2;

  swift_unknownObjectRetain();
  v6(v15, v17, a3);

  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_0(v15, v16);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v13 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v17);

  return v13;
}

id @nonobjc BMStoreBookmark.init(stream:segment:iterationStartTime:offset:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = MEMORY[0x259C32A40]();

  v12 = MEMORY[0x259C32A40](a4, a5);

  v13 = [v6 initWithStream:v11 segment:v12 iterationStartTime:a6 offset:a1];

  return v13;
}

id @nonobjc BMDevice.init(deviceIdentifier:idsDeviceIdentifier:name:model:platform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = MEMORY[0x259C32A40]();

  if (!a4)
  {
    v17 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  v17 = MEMORY[0x259C32A40](a3, a4);

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = MEMORY[0x259C32A40](a5, a6);

LABEL_6:
  v19 = MEMORY[0x259C32A40](a7, a8);

  v20 = [v9 initWithDeviceIdentifier:v16 idsDeviceIdentifier:v17 name:v18 model:v19 platform:a9];

  return v20;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
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

{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v3 = specialized Array._getCount()(a1);
  v4 = specialized Array._getCount()(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4 + v3);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v6 = *(v5 + 16);
  v7 = __OFADD__(v6, v3);
  v8 = v6 + v3;
  if (!v7)
  {
    *(v5 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x259C32EC0](v7);
    goto LABEL_14;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_14:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

void specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = v6;
  }
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  IsNativeType = specialized Array._hoistableIsNativeTypeChecked()(a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, IsNativeType, a3);
  if (IsNativeType)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x259C32E50](a2, a3);
  }

  *a1 = v7;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x259C32EC0](v12);
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array._getCount()(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for BMSQLColumn(0, &lazy cache variable for type metadata for BMSQLColumn, 0x277CF1A80);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [BMSQLColumn] and conformance [A]();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11BMSQLColumnCGMd, &_sSaySo11BMSQLColumnCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
          v11 = *v10;
          (v9)(v13, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [BMSQLColumn] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [BMSQLColumn] and conformance [A];
  if (!lazy protocol witness table cache variable for type [BMSQLColumn] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo11BMSQLColumnCGMd, &_sSaySo11BMSQLColumnCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [BMSQLColumn] and conformance [A]);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of (offset: Int, element: LibraryArtifact.Column)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_27_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_3(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_27_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_3(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t type metadata accessor for BMSQLColumn(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t outlined destroy of (offset: Int, element: LibraryArtifact.Column)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_4()
{
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1)
{
  v4 = *(v1 - 272);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a1);
}

void *OUTLINED_FUNCTION_12_3(int a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{
  *a2 = 0xD000000000000017;
  a2[1] = v10;

  return memcpy(a2 + 2, &__src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return dispatch thunk of JSONEncoder.encode<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_25_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, *(v3 - 232));

  return type metadata accessor for LibraryArtifact.Enumeration();
}

id OUTLINED_FUNCTION_26_1(uint64_t a1, uint64_t a2, double a3)
{

  return @nonobjc BMStoreBookmark.init(stream:segment:iterationStartTime:offset:)(a3, a1, a2, 49, 0xE100000000000000, 0);
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_28_0()
{
}

uint64_t OUTLINED_FUNCTION_29_1()
{
}

void static Unicode61Tokenizer.createTokenizer(fts5API:)(uint64_t a1)
{
  v126 = *MEMORY[0x277D85DE8];
  v113 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_0_2(v113);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v112 = &v105 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v105 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v105 - v16;
  v124 = 0uLL;
  v125 = 0;
  v123 = 0;
  v18 = *(a1 + 16);
  if (!v18)
  {
    __break(1u);
  }

  v19 = &v124;
  v20 = v18(a1, "unicode61", &v123, &v124);
  if (v20)
  {
    v21 = v20;
    static Logging.SQL.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v21;
      _os_log_impl(&dword_254FFD000, v22, v23, "Unicode61Tokenizer: Could not find unicode61 tokenizer. Error: %d", v24, 8u);
      OUTLINED_FUNCTION_15_3();
      MEMORY[0x259C33C60]();
    }

    (*(v5 + 8))(v17, v113);
    lazy protocol witness table accessor for type Unicode61Error and conformance Unicode61Error();
    swift_allocError();
    *v25 = v21;
    *(v25 + 4) = 0;
LABEL_93:
    swift_willThrow();
LABEL_94:
    v87 = *MEMORY[0x277D85DE8];
    return;
  }

  v122 = 0;
  v118 = MEMORY[0x277D84F90];
  v26 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20, 4, 0);
  v27 = v118;
  MEMORY[0x28223BE20](v26);
  *(&v105 - 4) = &v124;
  *(&v105 - 3) = &v123;
  *(&v105 - 2) = &v122;
  v28 = *(v27 + 16);
  if (v28 == 4)
  {
    if (!v124)
    {
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    LODWORD(v19) = (v124)(&v123, v27 + 32, 4, &v122);
LABEL_89:
    if (v19)
    {

      static Logging.SQL.getter();
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 67109120;
        *(v85 + 4) = v19;
        _os_log_impl(&dword_254FFD000, v83, v84, "Unicode61Tokenizer: Could not create unicode61 tokenizer. Error: %d.", v85, 8u);
        OUTLINED_FUNCTION_15_3();
        MEMORY[0x259C33C60]();
      }

      (*(v5 + 8))(v15, v113);
      lazy protocol witness table accessor for type Unicode61Error and conformance Unicode61Error();
      swift_allocError();
      *v86 = v19;
      *(v86 + 4) = 1;
      goto LABEL_93;
    }

    v88 = v10;
    v89 = v122;
    v111 = v124;
    v90 = v125;
    type metadata accessor for Unicode61WrapperTokenizerDataReference();
    v91 = swift_allocObject();
    v92 = swift_slowAlloc();
    *v92 = v89;
    *(v92 + 8) = v111;
    *(v92 + 24) = v90;
    *(v91 + 16) = v92;
    v119 = @objc unicode61WrapperCreate(pCtx:azArg:argc:ppOut:);
    v120 = @objc unicode61WrapperDelete(pTokenizer:);
    v121 = @objc unicode61WrapperTokenize(pTokenizer:pCtx:flags:pText:nText:xToken:);
    v93 = *(a1 + 8);
    if (v93)
    {
      v94 = v92;

      v95 = String.utf8CString.getter();
      v96 = v93(a1, v95 + 32, v94, &v119, 0);

      if (v96)
      {
        static Logging.SQL.getter();
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 67109120;
          *(v99 + 4) = v96;
          _os_log_impl(&dword_254FFD000, v97, v98, "Unicode61Tokenizer: Internal failure during xCreateTokenizer: %d.", v99, 8u);
          OUTLINED_FUNCTION_15_3();
          MEMORY[0x259C33C60]();
        }

        (*(v5 + 8))(v88, v113);
        lazy protocol witness table accessor for type Unicode61Error and conformance Unicode61Error();
        swift_allocError();
        *v100 = v96;
        *(v100 + 4) = 1;
        swift_willThrow();
      }

      else
      {
        v101 = v112;
        static Logging.SQL.getter();
        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          *v104 = 0;
          _os_log_impl(&dword_254FFD000, v102, v103, "Unicode61Tokenizers: Created successfully.", v104, 2u);
          OUTLINED_FUNCTION_15_3();
          MEMORY[0x259C33C60]();
        }

        (*(v5 + 8))(v101, v113);
      }

      goto LABEL_94;
    }

    goto LABEL_118;
  }

  if (v28 > 3)
  {
    __break(1u);
LABEL_105:
    OUTLINED_FUNCTION_2_5(v28);
    v27 = v118;
LABEL_23:
    OUTLINED_FUNCTION_12_4();
    if (v41)
    {
      if (!v124)
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v42 = OUTLINED_FUNCTION_9_4();
      LODWORD(v19) = v43(v42);
      goto LABEL_88;
    }

    if (&v123 <= 2)
    {
      v44 = OUTLINED_FUNCTION_16_2(&outlined read-only object #0 of one-time initialization function for fixedArgs + 16 * &v124);
      MEMORY[0x28223BE20](v44);
      OUTLINED_FUNCTION_3_6();
      *(v45 - 32) = v46;
      *(v45 - 24) = v47;
      OUTLINED_FUNCTION_0_4(v45);
      v108 = v49;
      if ((v48 & 0x1000000000000000) == 0)
      {
        v107 = v48;
        if ((v48 & 0x2000000000000000) != 0)
        {
          v115 = v1;
          v116 = v48 & 0xFFFFFFFFFFFFFFLL;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v118 = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_1_5();
            v27 = v118;
          }

          OUTLINED_FUNCTION_13_4();
          if (!v37)
          {
            goto LABEL_48;
          }

          goto LABEL_110;
        }

        if ((v1 & 0x1000000000000000) != 0)
        {
          OUTLINED_FUNCTION_14_3();

          v50 = swift_isUniquelyReferenced_nonNull_native();
          v118 = v27;
          if ((v50 & 1) == 0)
          {
            OUTLINED_FUNCTION_1_5();
          }

          OUTLINED_FUNCTION_4_5();
          if (v37)
          {
            OUTLINED_FUNCTION_2_5(v51);
          }

          OUTLINED_FUNCTION_5_6();
          LODWORD(v19) = OUTLINED_FUNCTION_6_4(&outlined read-only object #0 of one-time initialization function for fixedArgs);

          goto LABEL_89;
        }
      }

      OUTLINED_FUNCTION_11_4();

      LODWORD(v19) = v115;
      goto LABEL_89;
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    OUTLINED_FUNCTION_2_5(v36);
    v27 = v118;
LABEL_48:
    *(v27 + 16) = &v124;
    v61 = &v115;
    *(v27 + 32 + 8 * &v123) = &v115;
    v118 = v27;
    if (&vars0 != 124)
    {
      if (&v123 <= 2)
      {
        v66 = OUTLINED_FUNCTION_16_2(&outlined read-only object #0 of one-time initialization function for fixedArgs + 16 * &v124);
        MEMORY[0x28223BE20](v66);
        OUTLINED_FUNCTION_3_6();
        *(v67 - 32) = v68;
        *(v67 - 24) = v69;
        OUTLINED_FUNCTION_0_4(v67);
        v109 = v10;
        if ((v70 & 0x1000000000000000) == 0)
        {
          if ((v70 & 0x2000000000000000) != 0)
          {
            v114[0] = v1;
            v114[1] = v70 & 0xFFFFFFFFFFFFFFLL;

            v80 = swift_isUniquelyReferenced_nonNull_native();
            v118 = v27;
            if ((v80 & 1) == 0)
            {
              OUTLINED_FUNCTION_1_5();
              v27 = v118;
            }

            OUTLINED_FUNCTION_4_5();
            if (!v37)
            {
              goto LABEL_80;
            }

            goto LABEL_115;
          }

          if ((v1 & 0x1000000000000000) != 0)
          {
            v106 = &v105;
            OUTLINED_FUNCTION_14_3();

            v71 = swift_isUniquelyReferenced_nonNull_native();
            v118 = v27;
            if ((v71 & 1) == 0)
            {
              OUTLINED_FUNCTION_1_5();
            }

            OUTLINED_FUNCTION_4_5();
            if (v37)
            {
              OUTLINED_FUNCTION_2_5(v72);
            }

            OUTLINED_FUNCTION_5_6();
            OUTLINED_FUNCTION_6_4(&outlined read-only object #0 of one-time initialization function for fixedArgs);
            OUTLINED_FUNCTION_8_2();

            goto LABEL_81;
          }
        }

        OUTLINED_FUNCTION_11_4();

        LODWORD(v19) = v114[0];
        goto LABEL_81;
      }

      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      OUTLINED_FUNCTION_2_5(v61);
      v27 = v118;
LABEL_80:
      *(v27 + 16) = &v124;
      *(v27 + 8 * v10 + 32) = v114;
      v118 = v27;
      OUTLINED_FUNCTION_6_4(&outlined read-only object #0 of one-time initialization function for fixedArgs);
      OUTLINED_FUNCTION_8_2();

LABEL_81:
      v10 = v109;
      goto LABEL_88;
    }

    if (!v124)
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

LABEL_58:
    v64 = OUTLINED_FUNCTION_9_4();
    v65(v64);
    OUTLINED_FUNCTION_8_2();
LABEL_88:

    goto LABEL_89;
  }

  v29 = OUTLINED_FUNCTION_16_2(&outlined read-only object #0 of one-time initialization function for fixedArgs + 16 * v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_6();
  *(v30 - 32) = v31;
  *(v30 - 24) = v32;
  OUTLINED_FUNCTION_0_4(v30);
  if ((v33 & 0x1000000000000000) != 0)
  {
LABEL_103:

    OUTLINED_FUNCTION_18_2();

    LODWORD(v19) = v117;
    goto LABEL_89;
  }

  v110 = v33;
  *&v111 = v34;
  if ((v33 & 0x2000000000000000) != 0)
  {
    v119 = v1;
    v120 = (v33 & 0xFFFFFFFFFFFFFFLL);

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v118 = v27;
    if ((v40 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_5();
      v27 = v118;
    }

    OUTLINED_FUNCTION_13_4();
    if (!v37)
    {
      goto LABEL_23;
    }

    goto LABEL_105;
  }

  if ((v1 & 0x1000000000000000) == 0)
  {
    goto LABEL_103;
  }

  OUTLINED_FUNCTION_14_3();

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v118 = v27;
  v109 = v10;
  if ((v35 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_5();
    v27 = v118;
  }

  OUTLINED_FUNCTION_4_5();
  if (v37)
  {
    OUTLINED_FUNCTION_2_5(v36);
    v27 = v118;
  }

  *(v27 + 16) = &v124;
  *(v27 + 32 + 8 * v10) = &v123;
  v118 = v27;
  if (&vars0 == 124)
  {
    if (!v124)
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v38 = OUTLINED_FUNCTION_9_4();
    LODWORD(v19) = v39(v38);
    v10 = v109;
    goto LABEL_88;
  }

  if (v10 > 2)
  {
    goto LABEL_109;
  }

  v52 = OUTLINED_FUNCTION_16_2(&outlined read-only object #0 of one-time initialization function for fixedArgs + 16 * &v124);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3_6();
  *(v53 - 32) = v54;
  *(v53 - 24) = v55;
  OUTLINED_FUNCTION_0_4(v53);
  v10 = v109;
  if ((v56 & 0x1000000000000000) != 0)
  {
LABEL_107:

    OUTLINED_FUNCTION_18_2();

    LODWORD(v19) = v119;
    goto LABEL_88;
  }

  v108 = v57;
  v107 = v56;
  if ((v56 & 0x2000000000000000) == 0)
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      OUTLINED_FUNCTION_14_3();

      v58 = swift_isUniquelyReferenced_nonNull_native();
      v118 = v27;
      if ((v58 & 1) == 0)
      {
        OUTLINED_FUNCTION_1_5();
      }

      OUTLINED_FUNCTION_4_5();
      if (v37)
      {
        OUTLINED_FUNCTION_2_5(v59);
      }

      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_4(&outlined read-only object #0 of one-time initialization function for fixedArgs);
      OUTLINED_FUNCTION_8_2();
      goto LABEL_88;
    }

    goto LABEL_107;
  }

  v119 = v1;
  v120 = (v56 & 0xFFFFFFFFFFFFFFLL);

  v62 = swift_isUniquelyReferenced_nonNull_native();
  v118 = v27;
  if ((v62 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_5();
    v27 = v118;
  }

  OUTLINED_FUNCTION_13_4();
  if (v37)
  {
    OUTLINED_FUNCTION_2_5(v63);
    v27 = v118;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v41)
  {
    if (&v123 <= 2)
    {
      v73 = OUTLINED_FUNCTION_16_2(&outlined read-only object #0 of one-time initialization function for fixedArgs + 16 * &v124);
      MEMORY[0x28223BE20](v73);
      OUTLINED_FUNCTION_3_6();
      *(v74 - 32) = v75;
      *(v74 - 24) = v76;
      OUTLINED_FUNCTION_0_4(v74);
      if ((v77 & 0x1000000000000000) != 0)
      {
        goto LABEL_112;
      }

      if ((v77 & 0x2000000000000000) != 0)
      {
        v115 = v1;
        v116 = v77 & 0xFFFFFFFFFFFFFFLL;

        v81 = swift_isUniquelyReferenced_nonNull_native();
        v118 = v27;
        if ((v81 & 1) == 0)
        {
          OUTLINED_FUNCTION_1_5();
          v27 = v118;
        }

        OUTLINED_FUNCTION_4_5();
        if (v37)
        {
          OUTLINED_FUNCTION_2_5(v82);
          v27 = v118;
        }

        *(v27 + 16) = &v124;
        *(v27 + 8 * v10 + 32) = &v115;
        v118 = v27;
        OUTLINED_FUNCTION_6_4(&outlined read-only object #0 of one-time initialization function for fixedArgs);
        OUTLINED_FUNCTION_8_2();

        goto LABEL_87;
      }

      if ((v1 & 0x1000000000000000) == 0)
      {
LABEL_112:

        OUTLINED_FUNCTION_11_4();

        LODWORD(v19) = v115;
      }

      else
      {
        v106 = &v105;
        OUTLINED_FUNCTION_14_3();

        v78 = swift_isUniquelyReferenced_nonNull_native();
        v118 = v27;
        if ((v78 & 1) == 0)
        {
          OUTLINED_FUNCTION_1_5();
        }

        OUTLINED_FUNCTION_4_5();
        if (v37)
        {
          OUTLINED_FUNCTION_2_5(v79);
        }

        OUTLINED_FUNCTION_5_6();
        OUTLINED_FUNCTION_6_4(&outlined read-only object #0 of one-time initialization function for fixedArgs);
        OUTLINED_FUNCTION_8_2();
      }

LABEL_87:
      v10 = v109;
      goto LABEL_88;
    }

    goto LABEL_114;
  }

  if (v124)
  {
    goto LABEL_58;
  }

LABEL_122:
  __break(1u);
}

uint64_t Unicode61WrapperTokenizerDataReference.deinit()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  if (v2)
  {
    v2(*v1);
    v3 = *(v0 + 16);
    OUTLINED_FUNCTION_15_3();
    MEMORY[0x259C33C60]();
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Unicode61WrapperTokenizerDataReference.__deallocating_deinit()
{
  Unicode61WrapperTokenizerDataReference.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t unicode61WrapperCreate(pCtx:azArg:argc:ppOut:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  static Logging.SQL.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_254FFD000, v17, v18, "unicode61WrapperCreate: Begin", v19, 2u);
    MEMORY[0x259C33C60](v19, -1, -1);
  }

  v20 = *(v7 + 8);
  v20(v16, v6);
  if (a1)
  {
    if (a4)
    {
      *a4 = a1;
    }

    static Logging.SQL.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      v24 = 0;
      goto LABEL_13;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_254FFD000, v21, v22, "unicode61WrapperCreate: Finish", v23, 2u);
    v24 = 0;
  }

  else
  {
    static Logging.SQL.getter();
    v21 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v25))
    {
      v24 = 1;
      v14 = v11;
      goto LABEL_13;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_254FFD000, v21, v25, "unicode61WrapperCreate: Malformed pCtx", v23, 2u);
    v24 = 1;
    v14 = v11;
  }

  MEMORY[0x259C33C60](v23, -1, -1);
LABEL_13:

  v20(v14, v6);
  return v24;
}

uint64_t unicode61WrapperDelete(pTokenizer:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  static Logging.SQL.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_254FFD000, v8, v9, "unicode61WrapperDelete: Begin", v10, 2u);
    MEMORY[0x259C33C60](v10, -1, -1);
  }

  v11 = *(v1 + 8);
  v11(v7, v0);
  static Logging.SQL.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_254FFD000, v12, v13, "unicode61WrapperDelete: End", v14, 2u);
    MEMORY[0x259C33C60](v14, -1, -1);
  }

  return (v11)(v5, v0);
}

uint64_t unicode61WrapperTokenize(pTokenizer:pCtx:flags:pText:nText:xToken:)(uint64_t result)
{
  if (!result)
  {
    return 1;
  }

  v1 = *(result + 24);
  if (v1)
  {
    return v1(*result);
  }

  __break(1u);
  return result;
}

uint64_t specialized withArrayOfCStrings #1 <A>(_:_:_:) in static Unicode61Tokenizer.createTokenizer(fts5API:)(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v24[4] = a3;
  v24[5] = a4;
  v24[6] = a5;
  v12 = *a2;
  v13 = *(*a2 + 16);
  v14 = *(result + 16);
  if (v13 != v14)
  {
    if (v13 < v14)
    {
      v5 = a2;
      v6 = result;
      v16 = result + 16 * v13;
      v18 = *(v16 + 32);
      v17 = *(v16 + 40);
      MEMORY[0x28223BE20](result);
      if ((v17 & 0x1000000000000000) == 0)
      {
        if ((v17 & 0x2000000000000000) != 0)
        {
          v25[0] = v18;
          v25[1] = v17 & 0xFFFFFFFFFFFFFFLL;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v5 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
            v12 = *v5;
          }

          v8 = *(v12 + 16);
          v14 = *(v12 + 24);
          v7 = v8 + 1;
          if (v8 < v14 >> 1)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }

        if ((v18 & 0x1000000000000000) != 0)
        {

          v19 = swift_isUniquelyReferenced_nonNull_native();
          *v5 = v12;
          v24[1] = v24;
          if ((v19 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
            v12 = *v5;
          }

          v21 = *(v12 + 16);
          v20 = *(v12 + 24);
          if (v21 >= v20 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
            v12 = *v5;
          }

          *(v12 + 16) = v21 + 1;
          *(v12 + 8 * v21 + 32) = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
          *v5 = v12;
          v22 = specialized withArrayOfCStrings #1 <A>(_:_:_:) in static Unicode61Tokenizer.createTokenizer(fts5API:)(v6, v5, a3, a4, a5);

          return v22;
        }
      }

      _StringGuts._slowWithCString<A>(_:)();

      return LODWORD(v25[0]);
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v7, 1);
    v12 = *v5;
LABEL_19:
    *(v12 + 16) = v7;
    *(v12 + 8 * v8 + 32) = v25;
    *v5 = v12;
    v22 = specialized withArrayOfCStrings #1 <A>(_:_:_:) in static Unicode61Tokenizer.createTokenizer(fts5API:)(v6, v5, a3, a4, a5);

    return v22;
  }

  v15 = *a3;
  if (!*a3)
  {
    __break(1u);
    return result;
  }

  v14 = v13 >> 31;
  if (v13 >> 31)
  {
    goto LABEL_23;
  }

  return v15(a4, v12 + 32);
}

uint64_t specialized withArrayOfCStrings #1 <A>(_:_:_:) in static Unicode61Tokenizer.createTokenizer(fts5API:)(uint64_t a1, uint64_t *a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v10 = *a2;
  v11 = *(*a2 + 16);
  v12 = *(a1 + 16);
  if (v11 != v12)
  {
    if (v11 >= v12)
    {
      __break(1u);
    }

    else
    {
      v4 = a2;
      v5 = a1;
      v14 = a1 + 16 * v11;
      v16 = *(v14 + 32);
      v15 = *(v14 + 40);
      MEMORY[0x28223BE20](a1);
      if ((v15 & 0x1000000000000000) != 0)
      {
        goto LABEL_18;
      }

      if ((v15 & 0x2000000000000000) == 0)
      {
        if ((v16 & 0x1000000000000000) != 0)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v4 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
            v10 = *v4;
          }

          v18 = *(v10 + 16);
          v19 = *(v10 + 24);
          v20 = v18 + 1;
          if (v18 >= v19 >> 1)
          {
            v23 = *(v10 + 16);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v18 + 1, 1);
            v18 = v23;
            v10 = *v4;
          }

          *(v10 + 16) = v20;
          *(v10 + 8 * v18 + 32) = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
          goto LABEL_16;
        }

LABEL_18:

        _StringGuts._slowWithCString<A>(_:)();

        return LODWORD(v24[0]);
      }

      v24[0] = v16;
      v24[1] = v15 & 0xFFFFFFFFFFFFFFLL;

      v21 = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v10;
      if ((v21 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
        v10 = *v4;
      }

      v7 = *(v10 + 16);
      v11 = *(v10 + 24);
      v6 = v7 + 1;
      if (v7 < v11 >> 1)
      {
LABEL_15:
        *(v10 + 16) = v6;
        *(v10 + 8 * v7 + 32) = v24;
LABEL_16:
        *v4 = v10;
        v13 = specialized withArrayOfCStrings #1 <A>(_:_:_:) in static Unicode61Tokenizer.createTokenizer(fts5API:)(v5, v4, a3, a4);

        return v13;
      }
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v6, 1);
    v10 = *v4;
    goto LABEL_15;
  }

  a3(v24, *a2);
  return LODWORD(v24[0]);
}

uint64_t specialized closure #1 in withArrayOfCStrings #1 <A>(_:_:_:) in static Unicode61Tokenizer.createTokenizer(fts5API:)(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5)
{
  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
    v10 = *a2;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
    v10 = *a2;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = a1;
  return specialized withArrayOfCStrings #1 <A>(_:_:_:) in static Unicode61Tokenizer.createTokenizer(fts5API:)(a3, a2, a4, a5);
}

uint64_t closure #1 in static Unicode61Tokenizer.createTokenizer(fts5API:)@<X0>(uint64_t result@<X0>, uint64_t (**a2)(uint64_t, uint64_t, unint64_t)@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  if (*a2)
  {
    v5 = *(result + 16);
    if (!(v5 >> 31))
    {
      result = (*a2)(a3, result + 32, v5);
      *a4 = result;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t UnicodeWrapperTokenizer.__allocating_init(db:arguments:)()
{
  v0 = swift_allocObject();
  UnicodeWrapperTokenizer.init(db:arguments:)();
  return v0;
}

uint64_t *UnicodeWrapperTokenizer.init(db:arguments:)()
{
  v2 = *v0;
  v3 = type metadata accessor for FTS5TokenizerDescriptor();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;

  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for fixedArgs);
  FTS5TokenizerDescriptor.init(components:)();
  v12 = Database.makeTokenizer(_:)();
  if (v1)
  {

    (*(v6 + 8))(v11, v3);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v12;
    v15 = v13;
    (*(v6 + 8))(v11, v3);

    v0[2] = v14;
    v0[3] = v15;
  }

  return v0;
}

uint64_t UnicodeWrapperTokenizer.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for Unicode61WrapperTokenizerDataReference.TokenizerData(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for Unicode61WrapperTokenizerDataReference.TokenizerData(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t protocol witness for FTS5WrapperTokenizer.wrappedTokenizer.getter in conformance UnicodeWrapperTokenizer()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t protocol witness for FTS5Tokenizer.tokenize(context:tokenization:pText:nText:tokenCallback:) in conformance UnicodeWrapperTokenizer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = lazy protocol witness table accessor for type UnicodeWrapperTokenizer and conformance UnicodeWrapperTokenizer(&lazy protocol witness table cache variable for type UnicodeWrapperTokenizer and conformance UnicodeWrapperTokenizer);

  return MEMORY[0x2821629E0](a1, a2, a3, a4, a5, v11, v12);
}

uint64_t lazy protocol witness table accessor for type UnicodeWrapperTokenizer and conformance UnicodeWrapperTokenizer(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UnicodeWrapperTokenizer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized closure #1 in withArrayOfCStrings #1 <A>(_:_:_:) in static Unicode61Tokenizer.createTokenizer(fts5API:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *__return_ptr, uint64_t)@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  result = specialized closure #1 in withArrayOfCStrings #1 <A>(_:_:_:) in static Unicode61Tokenizer.createTokenizer(fts5API:)(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Unicode61Error and conformance Unicode61Error()
{
  result = lazy protocol witness table cache variable for type Unicode61Error and conformance Unicode61Error;
  if (!lazy protocol witness table cache variable for type Unicode61Error and conformance Unicode61Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode61Error and conformance Unicode61Error);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Unicode61Error(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 5))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 4);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for Unicode61Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5()
{
  v2 = *(v0 + 16) + 1;

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_2_5@<X0>(unint64_t a1@<X8>)
{

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_5_6()
{
  *(v0 + 16) = v3;
  *(v0 + 8 * v1 + 32) = v2;
  *(v4 - 168) = v0;
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1)
{

  return specialized withArrayOfCStrings #1 <A>(_:_:_:) in static Unicode61Tokenizer.createTokenizer(fts5API:)(a1, (v1 - 168), (v1 - 120), v1 - 128, v1 - 136);
}

uint64_t OUTLINED_FUNCTION_8_2()
{
  v2 = *(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return _StringGuts._slowWithCString<A>(_:)();
}

void OUTLINED_FUNCTION_12_4()
{
  *(v0 + 16) = v2;
  *(v0 + 32 + 8 * v1) = v3 - 160;
  *(v3 - 168) = v0;
}

uint64_t OUTLINED_FUNCTION_18_2()
{

  return _StringGuts._slowWithCString<A>(_:)();
}

uint64_t VirtualTable.Search.Module.moduleName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t VirtualTable.Search.Module.createTable(using:databaseName:tableName:args:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *(v7 + 40);
  if (!*(v11 + 16))
  {
    return VirtualTable.Search.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6, a7);
  }

  a1 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  if ((a2 & 1) == 0)
  {
    return VirtualTable.Search.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6, a7);
  }

  v12 = *(*(v11 + 56) + 8 * a1);
}

uint64_t VirtualTable.Search.Module.createTableInitial(using:databaseName:tableName:args:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (!a7[2])
  {
    goto LABEL_5;
  }

  v11 = v9;
  v7 = v8;
  v14 = a7[4];
  v10 = a7[5];
  v15 = *(v7 + 48);
  swift_unownedRetainStrong();
  v16 = *(v15 + 24);
  v17 = *(v15 + 32);

  v18 = dispatch thunk of static LibraryBase.view(for:)();
  v20 = v19;

  if (v18)
  {
    v21 = type metadata accessor for VirtualTable.Search.Table();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v10 = swift_allocObject();

    VirtualTable.Search.Table.init(module:tableName:view:)(v24, a5, a6, v18, v20);
    if (!v11)
    {

      v25 = *(v7 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v7 + 40);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a5, a6, isUniquelyReferenced_nonNull_native, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO6SearchO0G0CGMd, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO6SearchO0G0CGMR);
      *(v7 + 40) = v38;
    }
  }

  else
  {
LABEL_5:
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_21_3();
    *v27 = 0xD00000000000001FLL;
    v27[1] = 0x80000002553A8BA0;
    OUTLINED_FUNCTION_11(v28, v27, v29, v30, v31, v32, v33, v34, v36, v37);
    *(v7 + 88) = 0;
    swift_willThrow();
  }

  return v10;
}

uint64_t VirtualTable.Search.Module.__allocating_init(ipsqlDb:)(uint64_t a1)
{
  v2 = swift_allocObject();
  VirtualTable.Search.Module.init(ipsqlDb:)(a1);
  return v2;
}

uint64_t VirtualTable.Search.Module.init(ipsqlDb:)(uint64_t a1)
{
  *(v1 + 16) = 0x6863726165737069;
  *(v1 + 24) = 0xE800000000000000;
  *(v1 + 32) = 0;
  *(v1 + 48) = a1;
  swift_unownedRetain();
  type metadata accessor for VirtualTable.Search.Table();
  *(v1 + 40) = Dictionary.init(dictionaryLiteral:)();

  return v1;
}

void *VirtualTable.Search.Module.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];
  swift_unownedRelease();
  return v0;
}

uint64_t VirtualTable.Search.Module.__deallocating_deinit()
{
  VirtualTable.Search.Module.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t protocol witness for VirtualTable.Module.createTable(using:databaseName:tableName:args:) in conformance VirtualTable.Search.Module@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v11 = *v8;
  result = VirtualTable.Search.Module.createTable(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6, a7);
  if (!v9)
  {
    *a8 = result;
  }

  return result;
}

uint64_t protocol witness for VirtualTable.Module.createTableInitial(using:databaseName:tableName:args:) in conformance VirtualTable.Search.Module@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v11 = *v8;
  result = VirtualTable.Search.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6, a7);
  if (!v9)
  {
    *a8 = result;
  }

  return result;
}

uint64_t VirtualTable.Search.Table.createSQL.getter()
{
  v1 = type metadata accessor for LibraryArtifact.Table();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  (*(v4 + 16))(v8 - v7, v0 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Search5Table_searchSchema, v1);
  v10 = LibraryArtifact.Table.createTableSQL.getter();
  (*(v4 + 8))(v9, v1);
  return v10;
}

void *VirtualTable.Search.Table.init(module:tableName:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v171 = *v5;
  v188 = type metadata accessor for LibraryArtifact.Table();
  v11 = OUTLINED_FUNCTION_0_2(v188);
  v167 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v166 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO11EnumerationVSgMd, &_s12BiomeStreams15LibraryArtifactO11EnumerationVSgMR);
  OUTLINED_FUNCTION_21(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_21_2();
  v186 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO5TableVSgMd, &_s12BiomeStreams15LibraryArtifactO5TableVSgMR);
  OUTLINED_FUNCTION_21(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_21_2();
  v185 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO18RepresentationTypeOSgMd, &_s12BiomeStreams15LibraryArtifactO18RepresentationTypeOSgMR);
  OUTLINED_FUNCTION_21(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_21_2();
  v184 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO9PredicateOSgMd, &_s12BiomeStreams15LibraryArtifactO9PredicateOSgMR);
  OUTLINED_FUNCTION_21(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_21_2();
  v182 = v36;
  v181 = type metadata accessor for LibraryArtifact.SQLDataType();
  v37 = OUTLINED_FUNCTION_0_2(v181);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3();
  v187 = v43 - v42;
  v183 = type metadata accessor for LibraryArtifact.Column();
  v44 = OUTLINED_FUNCTION_0_2(v183);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_12_5();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_12_5();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12_5();
  MEMORY[0x28223BE20](v51);
  v53 = v165 - v52;
  v5[2] = a1;
  v5[3] = a2;
  v168 = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  v54 = MEMORY[0x277D84F90];
  v174 = v5;
  *(v5 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Search5Table_candidatePlans) = MEMORY[0x277D84F90];
  v173 = a1;
  swift_unownedRetain();
  v172 = a3;

  v170 = a5;
  v55 = static IntelligencePlatformView.searchableColumns.getter();
  v56 = *(v55 + 16);
  v57 = MEMORY[0x277CF1848];
  v175 = v39;
  v169 = v55;
  if (v56)
  {
    v58 = v55;
    v165[1] = a4;
    v190 = v54;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56, 0);
    v59 = v190;
    LODWORD(v179) = *v57;
    v177 = *(v39 + 104);
    v178 = v39 + 104;
    v176 = v46 + 32;
    v60 = (v58 + 40);
    v180 = v46;
    do
    {
      v192 = v59;
      v61 = *v60;
      v189 = *(v60 - 1);
      v177(v187, v179, v181);
      type metadata accessor for LibraryArtifact.Predicate();
      OUTLINED_FUNCTION_4_3();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
      type metadata accessor for LibraryArtifact.RepresentationType();
      OUTLINED_FUNCTION_4_3();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
      OUTLINED_FUNCTION_4_3();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v188);
      type metadata accessor for LibraryArtifact.Enumeration();
      OUTLINED_FUNCTION_4_3();
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);

      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_5_4();
      v59 = v192;
      LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
      v190 = v59;
      v78 = *(v59 + 16);
      v77 = *(v59 + 24);
      if (v78 >= v77 >> 1)
      {
        v79 = OUTLINED_FUNCTION_6_5(v77);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v79, v78 + 1, 1);
        v59 = v190;
      }

      *(v59 + 16) = v78 + 1;
      v46 = v180;
      (*(v180 + 32))(v59 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v78, v53, v183);
      v60 += 2;
      --v56;
    }

    while (v56);
  }

  else
  {
    v59 = v54;
  }

  v80 = v174;
  v174[7] = v59;
  v81 = v170;
  v82 = static IntelligencePlatformView.subjectIdentifierColumn.getter();
  if (!v83)
  {

    v144 = &v192;
LABEL_21:
    v145 = *(v144 - 32);

    OUTLINED_FUNCTION_14_4();
    _StringGuts.grow(_:)(47);

    v190 = 0xD00000000000001BLL;
    v191 = 0x80000002553A8EC0;
    v146 = *(v81 + 8);
    v147 = dispatch thunk of static LibraryArtifact.DataArtifact.identifier.getter();
    MEMORY[0x259C32B90](v147);

    MEMORY[0x259C32B90](0xD000000000000012, 0x80000002553A8EE0);
    v148 = v190;
    v149 = v191;
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    v150 = OUTLINED_FUNCTION_13();
    v152 = v151;
    *v151 = v148;
    v151[1] = v149;
    OUTLINED_FUNCTION_9_5(v150, v151);
    *(v152 + 88) = 0;
    swift_willThrow();
    v153 = v80[2];
    swift_unownedRelease();
    v154 = v80[4];

    v155 = v80[7];

    v156 = *(v80 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Search5Table_candidatePlans);

    v157 = *(*v80 + 48);
    v158 = *(*v80 + 52);
    swift_deallocPartialClassInstance();

    return v80;
  }

  v84 = v82;
  v85 = v83;
  v86 = *(v169 + 16);

  if (!v86)
  {

    v144 = &v193;
    goto LABEL_21;
  }

  v80[8] = v84;
  v80[9] = v85;
  v87 = v80[7];
  v88 = *(v175 + 104);
  LODWORD(v176) = *MEMORY[0x277CF1848];
  v175 += 104;
  v192 = v88;
  v88(v187);
  type metadata accessor for LibraryArtifact.Predicate();
  OUTLINED_FUNCTION_4_3();
  v189 = v89;
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v89);
  type metadata accessor for LibraryArtifact.RepresentationType();
  OUTLINED_FUNCTION_4_3();
  v179 = v93;
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v93);
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v188);
  type metadata accessor for LibraryArtifact.Enumeration();
  OUTLINED_FUNCTION_4_3();
  v178 = v100;
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v100);

  OUTLINED_FUNCTION_8_1();
  v104 = v165[2];
  OUTLINED_FUNCTION_5_4();
  LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = *(v87 + 16);
    OUTLINED_FUNCTION_4_6();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v87 = v161;
  }

  v106 = *(v87 + 16);
  v105 = *(v87 + 24);
  if (v106 >= v105 >> 1)
  {
    OUTLINED_FUNCTION_6_5(v105);
    OUTLINED_FUNCTION_18_3();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v87 = v162;
  }

  *(v87 + 16) = v106 + 1;
  v108 = *(v46 + 32);
  v107 = v46 + 32;
  v109 = v87 + ((*(v107 + 48) + 32) & ~*(v107 + 48)) + *(v107 + 40) * v106;
  v180 = v107;
  v177 = v108;
  v108(v109, v104, v183);
  v110 = *MEMORY[0x277CF1840];
  OUTLINED_FUNCTION_28_1();
  v111();
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v189);
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v179);
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v188);
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v178);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
  v125 = *(v87 + 16);
  v124 = *(v87 + 24);
  if (v125 >= v124 >> 1)
  {
    OUTLINED_FUNCTION_6_5(v124);
    OUTLINED_FUNCTION_18_3();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v87 = v163;
  }

  *(v87 + 16) = v125 + 1;
  OUTLINED_FUNCTION_23_1();
  v126();
  OUTLINED_FUNCTION_28_1();
  v127();
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v189);
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v179);
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v188);
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v178);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:hidden:objectType:enumerationType:)();
  v141 = *(v87 + 16);
  v140 = *(v87 + 24);
  if (v141 >= v140 >> 1)
  {
    OUTLINED_FUNCTION_6_5(v140);
    OUTLINED_FUNCTION_18_3();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v87 = v164;
  }

  *(v87 + 16) = v141 + 1;
  OUTLINED_FUNCTION_23_1();
  v142();
  v143 = v166;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x259C32540]();
  (*(v167 + 32))(v80 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Search5Table_searchSchema, v143, v188);

  return v80;
}

uint64_t static IntelligencePlatformView.searchableColumns.getter()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of static IntelligencePlatformView.configStr.getter();
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;

  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v8 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v18 = 0;
  v10 = [v8 JSONObjectWithData:isa options:0 error:&v18];

  if (!v10)
  {
    v13 = v18;
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data?(v5, v7);

    goto LABEL_10;
  }

  v11 = v18;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined consume of Data?(v5, v7);
    goto LABEL_10;
  }

  specialized Dictionary.subscript.getter(0x6D756C6F43737466, 0xEA0000000000736ELL, v17, &v18);
  outlined consume of Data?(v5, v7);

  if (!v19)
  {
    outlined destroy of Any?(&v18);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if (!swift_dynamicCast())
  {
LABEL_10:
    result = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  result = v17;
LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static IntelligencePlatformView.subjectIdentifierColumn.getter()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of static IntelligencePlatformView.configStr.getter();
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;

  (*(v1 + 8))(v4, v0);
  result = 0;
  if (v7 >> 60 != 15)
  {
    v9 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v17 = 0;
    v11 = [v9 JSONObjectWithData:isa options:0 error:&v17];

    if (v11)
    {
      v12 = v17;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        specialized Dictionary.subscript.getter(0xD000000000000017, 0x80000002553A8F00, v16, &v17);
        outlined consume of Data?(v5, v7);

        if (v18)
        {
          if (swift_dynamicCast())
          {
            result = v16;
            goto LABEL_11;
          }
        }

        else
        {
          outlined destroy of Any?(&v17);
        }
      }

      else
      {
        outlined consume of Data?(v5, v7);
      }
    }

    else
    {
      v13 = v17;
      v14 = _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data?(v5, v7);
    }

    result = 0;
  }

LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.Search.Table.bestIndex(indexInfo:)(sqlite3_index_info *indexInfo)
{
  indexInfo->estimatedCost = 1000000.0;
  indexInfo->idxNum = 1;
  nConstraint = indexInfo->nConstraint;
  if ((nConstraint & 0x80000000) != 0)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v3 = v1;
  v5 = 0;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (2)
  {
    v8 = (8 * v6) | 4;
    v9 = v6;
    for (i = v6; ; ++i)
    {
      if (nConstraint == i)
      {
        v44 = *(v7 + 2);
        if (!v44)
        {
LABEL_42:

          lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
          v48 = OUTLINED_FUNCTION_13();
          v50 = v49;
          *v49 = 0xD00000000000002FLL;
          v49[1] = 0x80000002553A8BC0;
          OUTLINED_FUNCTION_11(v48, v49, v51, v52, v53, v54, v55, v56, v61, v62);
          *(v50 + 88) = 0;
          swift_willThrow();
          return;
        }

        v45 = 0;
        v46 = 48;
        while (1)
        {
          v47 = (v7[v46] & 1) == 0;
          v20 = __OFADD__(v45, v47);
          v45 += v47;
          if (v20)
          {
            goto LABEL_48;
          }

          v46 += 24;
          if (!--v44)
          {
            if (v45 > 1)
            {
              goto LABEL_42;
            }

            v57 = OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Search5Table_candidatePlans;
            v58 = *(*(v3 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Search5Table_candidatePlans) + 16);
            if (v58 >> 31)
            {
              goto LABEL_54;
            }

            indexInfo->idxNum = v58;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v59 = *(*(v3 + v57) + 16);
            specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v59);
            v60 = *(v3 + v57);
            *(v60 + 16) = v59 + 1;
            *(v60 + 8 * v59 + 32) = v7;
            *(v3 + v57) = v60;
            if (!v5)
            {
              goto LABEL_55;
            }

            indexInfo->estimatedCost = (1000000 / v5);
            return;
          }
        }
      }

      if (i >= nConstraint)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_47;
      }

      aConstraint = indexInfo->aConstraint;
      if (!aConstraint)
      {
        goto LABEL_59;
      }

      v12 = &aConstraint[v9];
      if (v12->usable == 1)
      {
        break;
      }

LABEL_17:
      v8 += 8;
      ++v9;
    }

    iColumn = v12->iColumn;
    op = v12->op;
    v15 = *(*(v3 + 56) + 16);
    if (op != 2)
    {
      goto LABEL_16;
    }

    if (__OFADD__(v15, 2))
    {
      goto LABEL_49;
    }

    if (v15 + 2 != iColumn)
    {
LABEL_16:
      if (v15 <= iColumn)
      {
        goto LABEL_17;
      }

      if (op != 64 && op != 2)
      {
        goto LABEL_17;
      }

      aConstraintUsage = indexInfo->aConstraintUsage;
      if (!aConstraintUsage)
      {
        goto LABEL_60;
      }

      v18 = aConstraintUsage + v8;
      *v18 = 1;
      v19 = v5;
      v20 = __OFADD__(v5++, 1);
      if (v20)
      {
        goto LABEL_51;
      }

      if (v5 < 0xFFFFFFFF80000000)
      {
        goto LABEL_52;
      }

      if (v5 <= 0x7FFFFFFF)
      {
        *(v18 - 1) = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v7 + 2);
          v30 = OUTLINED_FUNCTION_4_6();
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30, v31, v32, v7);
        }

        v22 = *(v7 + 2);
        v21 = *(v7 + 3);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v33 = OUTLINED_FUNCTION_6_5(v21);
          v61 = v34;
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v34, 1, v7);
          v24 = 1;
          v23 = v61;
          v7 = v35;
        }

        else
        {
          v24 = 1;
        }

LABEL_35:
        *(v7 + 2) = v23;
        v28 = &v7[24 * v22];
        *(v28 + 4) = iColumn;
        *(v28 + 5) = v19;
        v28[48] = v24;
        continue;
      }

LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    break;
  }

  v25 = indexInfo->aConstraintUsage;
  if (!v25)
  {
    goto LABEL_61;
  }

  v26 = v25 + v8;
  *v26 = 1;
  iColumn = v5;
  v20 = __OFADD__(v5++, 1);
  if (v20)
  {
    goto LABEL_56;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    goto LABEL_57;
  }

  if (v5 <= 0x7FFFFFFF)
  {
    *(v26 - 1) = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = *(v7 + 2);
      v37 = OUTLINED_FUNCTION_4_6();
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37, v38, v39, v7);
    }

    v22 = *(v7 + 2);
    v27 = *(v7 + 3);
    v23 = v22 + 1;
    if (v22 >= v27 >> 1)
    {
      v40 = OUTLINED_FUNCTION_6_5(v27);
      v42 = v41;
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40, v41, 1, v7);
      v23 = v42;
      v7 = v43;
    }

    v24 = 0;
    v19 = 0;
    goto LABEL_35;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t VirtualTable.Search.Table.createCursor()()
{
  v1 = *(v0 + 16);
  swift_unownedRetainStrong();
  v2 = *(v1 + 48);
  swift_unownedRetainStrong();

  type metadata accessor for VirtualTable.Search.Cursor();
  v3 = swift_allocObject();

  VirtualTable.Search.Cursor.init(ipsqlDb:table:)(v2, v0);
  return v3;
}

char *VirtualTable.Search.Table.deinit()
{
  v1 = *(v0 + 2);
  swift_unownedRelease();
  v2 = *(v0 + 4);

  v3 = *(v0 + 7);

  v4 = *(v0 + 9);

  v5 = OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Search5Table_searchSchema;
  v6 = type metadata accessor for LibraryArtifact.Table();
  OUTLINED_FUNCTION_7_3(v6);
  (*(v7 + 8))(&v0[v5]);
  v8 = *&v0[OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Search5Table_candidatePlans];

  return v0;
}

uint64_t VirtualTable.Search.Table.__deallocating_deinit()
{
  VirtualTable.Search.Table.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for VirtualTable.Table.createCursor() in conformance VirtualTable.Search.Table@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  result = VirtualTable.Search.Table.createCursor()();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t VirtualTable.Search.Cursor.init(ipsqlDb:table:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  swift_unownedRetain();

  return v2;
}

void *VirtualTable.Search.Cursor.deinit()
{
  v1 = v0[4];
  if (v1)
  {
    sqlite3_finalize(v1);
  }

  v2 = v0[3];
  v3 = *(v2 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Search5Table_candidatePlans);
  *(v2 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Search5Table_candidatePlans) = MEMORY[0x277D84F90];

  v4 = v0[2];
  swift_unownedRelease();
  v5 = v0[3];

  return v0;
}

uint64_t VirtualTable.Search.Cursor.__deallocating_deinit()
{
  VirtualTable.Search.Cursor.deinit();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.Search.Cursor.filter(idxNum:idxStr:args:)(Swift::Int32 idxNum, Swift::String_optional idxStr, Swift::OpaquePointer args)
{
  v6 = type metadata accessor for LibraryArtifact.Column();
  v78 = OUTLINED_FUNCTION_0_2(v6);
  v79 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_3();
  v77 = v11 - v10;
  if (idxNum < 0)
  {
    goto LABEL_52;
  }

  v80 = *(v3 + 24);
  v12 = *(v80 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Search5Table_candidatePlans);
  if (*(v12 + 16) <= idxNum)
  {
LABEL_53:
    __break(1u);
  }

  else
  {
    v13 = *(args._rawValue + 2);
    v14 = (args._rawValue + 32);
    v75 = *(v12 + 8 * idxNum + 32);

    v15 = MEMORY[0x277D84F90];
    if (v13)
    {
      while (sqlite3_value_text(*v14))
      {
        v16 = String.init(cString:)();
        v18 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = *(v15 + 16);
          OUTLINED_FUNCTION_4_6();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v15 = v23;
        }

        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          OUTLINED_FUNCTION_6_5(v19);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v15 = v24;
        }

        *(v15 + 16) = v20 + 1;
        v21 = v15 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        ++v14;
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      v48 = OUTLINED_FUNCTION_13();
      v50 = v49;
      *v49 = 0xD000000000000027;
      v49[1] = 0x80000002553A8BF0;
      OUTLINED_FUNCTION_9_5(v48, v49);
      *(v50 + 88) = 2;
      swift_willThrow();
    }

    else
    {
LABEL_10:
      v74 = v3;
      v25 = *(v75 + 16);
      v26 = MEMORY[0x277D84F90];
      if (v25)
      {
        v27 = 0;
        v83 = v15 + 32;
        v76 = 0;
        v28 = (v75 + 48);
        while (1)
        {
          v29 = *(v28 - 2);
          if (*v28)
          {
            if ((v29 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

            v30 = v80[7];
            if (v29 >= *(v30 + 16))
            {
              goto LABEL_49;
            }

            v82 = v27;
            v31 = *(v28 - 1);
            (*(v79 + 16))(v77, v30 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v29, v78);
            v32 = LibraryArtifact.Column.name.getter();
            v81 = v33;
            (*(v79 + 8))(v77, v78);
            if ((v31 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            if (v31 >= *(v15 + 16))
            {
              goto LABEL_51;
            }

            v34 = (v83 + 16 * v31);
            v35 = *v34;
            v36 = v34[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = v26[2];
              v43 = OUTLINED_FUNCTION_4_6();
              v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43, v44, v45, v26);
            }

            v38 = v26[2];
            v37 = v26[3];
            v39 = v26;
            if (v38 >= v37 >> 1)
            {
              v46 = OUTLINED_FUNCTION_6_5(v37);
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46, v38 + 1, 1, v47);
            }

            v26 = v39;
            v39[2] = v38 + 1;
            v40 = &v39[4 * v38];
            v27 = v82;
            v40[4] = v32;
            v40[5] = v81;
            v40[6] = v35;
            v40[7] = v36;
          }

          else
          {

            if ((v29 & 0x8000000000000000) != 0)
            {
              goto LABEL_47;
            }

            if (v29 >= *(v15 + 16))
            {
              goto LABEL_48;
            }

            v41 = (v83 + 16 * v29);
            v27 = v41[1];
            v76 = *v41;
          }

          v28 += 24;
          if (!--v25)
          {
            goto LABEL_29;
          }
        }
      }

      v76 = 0;
      v27 = 0;
LABEL_29:
      v84 = v26;
      v51 = v80[6];
      v52 = v80[5];
      v86 = dispatch thunk of static IntelligencePlatformView.name.getter();
      v87 = v53;
      MEMORY[0x259C32B90](1937008223, 0xE400000000000000);
      v54 = v74;
      if (v27)
      {

        MEMORY[0x259C32B90](10024, 0xE200000000000000);

        MEMORY[0x259C32B90](v76, v27);

        MEMORY[0x259C32B90](10535, 0xE200000000000000);
      }

      else
      {
      }

      _StringGuts.grow(_:)(22);

      MEMORY[0x259C32B90](v86, v87);

      if (v26[2])
      {
        MEMORY[0x259C32B90](0x2045524548570ALL, 0xE700000000000000);
        v55 = v26[2];
        if (v55)
        {
          v88 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
          v56 = v84 + 7;
          do
          {
            v57 = *(v56 - 2);
            v58 = *(v56 - 1);
            v59 = *v56;
            v85 = *(v56 - 3);
            swift_bridgeObjectRetain_n();

            MEMORY[0x259C32B90](0x2720484354414D20, 0xE800000000000000);
            MEMORY[0x259C32B90](v58, v59);
            MEMORY[0x259C32B90](39, 0xE100000000000000);

            v61 = *(v88 + 16);
            v60 = *(v88 + 24);
            if (v61 >= v60 >> 1)
            {
              OUTLINED_FUNCTION_6_5(v60);
              OUTLINED_FUNCTION_18_3();
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v63, v64, v65);
            }

            *(v88 + 16) = v61 + 1;
            v62 = v88 + 16 * v61;
            *(v62 + 32) = v85;
            *(v62 + 40) = v57;
            v56 += 4;
            --v55;
          }

          while (v55);

          v54 = v74;
        }

        else
        {
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v66 = BidirectionalCollection<>.joined(separator:)();
        v68 = v67;

        MEMORY[0x259C32B90](v66, v68);
      }

      v69 = *(v54 + 16);
      swift_unownedRetainStrong();
      v70._countAndFlagsBits = 0xD000000000000014;
      v70._object = 0x80000002553A8C20;
      v71._rawValue = SQLConnection.prepareStatement(query:)(v70)._rawValue;
      if (v72)
      {
      }

      else
      {
        rawValue = v71._rawValue;

        *(v54 + 32) = rawValue;
        VirtualTable.Search.Cursor.next()();
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.Search.Cursor.next()()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = v0;
    v3 = sqlite3_step(v1);
    v4 = *(v0 + 16);
    swift_unownedRetainStrong();
    v5 = SQLConnection.isDone(_:context:)(v3, 0);

    if (!v6 && v5)
    {
      *(v2 + 40) = 1;
    }
  }

  else
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    v7 = OUTLINED_FUNCTION_13();
    v9 = v8;
    *v8 = 0xD000000000000016;
    v8[1] = 0x80000002553A8C40;
    OUTLINED_FUNCTION_11(v7, v8, v10, v11, v12, v13, v14, v15, v16, v17);
    *(v9 + 88) = 0;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.Search.Cursor.column(context:index:)(Swift::OpaquePointer context, Swift::Int index)
{
  v4 = v3;
  v5 = v2;
  rawValue = context._rawValue;
  v7 = type metadata accessor for LibraryArtifact.Table();
  v8 = OUTLINED_FUNCTION_0_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_5();
  v102 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v91 - v15;
  v17 = type metadata accessor for LibraryArtifact.Column();
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v101 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_5();
  v106 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v91 - v24;
  v26 = *(v10 + 16);
  v97 = *(v5 + 24);
  v27 = v26(v16, v97 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Search5Table_searchSchema, v7);
  v28 = MEMORY[0x259C32560](v27);
  v30 = *(v10 + 8);
  v29 = (v10 + 8);
  v96 = v16;
  v99 = v29;
  v100 = v7;
  v98 = v30;
  v30(v16, v7);
  if (index < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*(v28 + 16) <= index)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v94 = v5;
  v95 = v3;
  v7 = 1802396018;
  v31 = *(v101 + 16);
  v32 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v103 = *(v101 + 72);
  v104 = v31;
  v29 = v25;
  v105 = v101 + 16;
  v31(v25, v28 + v32 + v103 * index, v17);

  if (LibraryArtifact.Column.name.getter() == 1802396018 && v33 == 0xE400000000000000)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      v36 = *(*(v97 + 48) + 8);
      v37 = v102;
      v38 = *(v97 + 40);
      v39 = dispatch thunk of static LibraryArtifact.DataArtifact.metadata.getter();
      v40 = MEMORY[0x259C32560](v39);
      v98(v37, v100);
      v41 = *(v40 + 16);
      if (v41)
      {
        v92 = v25;
        v107 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
        v42 = v107;
        v91 = v40;
        v43 = v40 + v32;
        v102 = (v101 + 8);
        do
        {
          v44 = v106;
          v104(v106, v43, v17);
          v45 = LibraryArtifact.Column.name.getter();
          v47 = v46;
          v48 = v17;
          (*v102)(v44, v17);
          v107 = v42;
          v50 = *(v42 + 16);
          v49 = *(v42 + 24);
          if (v50 >= v49 >> 1)
          {
            OUTLINED_FUNCTION_6_5(v49);
            OUTLINED_FUNCTION_18_3();
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52, v53, v54);
            v42 = v107;
          }

          *(v42 + 16) = v50 + 1;
          v51 = v42 + 16 * v50;
          *(v51 + 32) = v45;
          *(v51 + 40) = v47;
          v43 += v103;
          --v41;
          v17 = v48;
        }

        while (v41);

        v29 = v92;
      }

      else
      {

        v42 = MEMORY[0x277D84F90];
      }

      v60 = LibraryArtifact.Column.name.getter();
      v62 = specialized Collection<>.firstIndex(of:)(v60, v61, v42);
      v64 = v63;

      if (v64)
      {
        OUTLINED_FUNCTION_14_4();
        _StringGuts.grow(_:)(87);
        MEMORY[0x259C32B90](0xD000000000000025, 0x80000002553A8C60);
        v65 = v96;
        OUTLINED_FUNCTION_30_0();
        v66 = v100;
        _print_unlocked<A, B>(_:_:)();
        v67 = v98;
        v98(v65, v66);
        MEMORY[0x259C32B90](0xD000000000000019, 0x80000002553A8C90);
        v68 = OUTLINED_FUNCTION_30_0();
        v69 = MEMORY[0x259C32560](v68);
        v67(v65, v66);
        v70 = MEMORY[0x259C32CC0](v69, v17);
        v72 = v71;

        MEMORY[0x259C32B90](v70, v72);

        MEMORY[0x259C32B90](0xD000000000000013, 0x80000002553A8CB0);
        v73 = LibraryArtifact.Column.name.getter();
        v75 = v74;
        MEMORY[0x259C32B90](v73);

        v76 = v107;
        v77 = v108;
        lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_21_3();
        *v78 = v76;
        v78[1] = v77;
        OUTLINED_FUNCTION_9_5(v79, v78);
        *(v75 + 88) = 0;
        v7 = v101;
LABEL_33:
        swift_willThrow();
        goto LABEL_34;
      }

      v80 = LibraryArtifact.Column.name.getter();
      v4 = v81;
      v82 = v80 == 0x6554686372616573 && v81 == 0xEA00000000006D72;
      v7 = v101;
      if (v82)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          if (v62 >= 0xFFFFFFFF80000000)
          {
            v4 = v94;
            if (v62 <= 0x7FFFFFFF)
            {
              if (sqlite3_column_text(v94[4], v62))
              {
                v83 = String.init(cString:)();
                v16 = MEMORY[0x259C32A40](v83);

                v4 = [v16 UTF8String];
                if (one-time initialization token for SQLITE_TRANSIENT == -1)
                {
LABEL_29:
                  sqlite3_result_text(rawValue, v4, -1, static SQLConnection.SQLITE_TRANSIENT);

                  goto LABEL_34;
                }

LABEL_41:
                swift_once();
                goto LABEL_29;
              }

              OUTLINED_FUNCTION_14_4();
              _StringGuts.grow(_:)(72);
              MEMORY[0x259C32B90](0xD000000000000018, 0x80000002553A8CD0);
              v86 = LibraryArtifact.Column.name.getter();
              MEMORY[0x259C32B90](v86);

              MEMORY[0x259C32B90](0xD00000000000002CLL, 0x80000002553A8CF0);
              v109 = *(v4 + 4);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
              v87 = String.init<A>(describing:)();
              v4 = v88;
              MEMORY[0x259C32B90](v87);

              v89 = v107;
              v90 = v108;
              lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
              OUTLINED_FUNCTION_13();
              OUTLINED_FUNCTION_21_3();
              *v85 = v89;
              v85[1] = v90;
LABEL_32:
              OUTLINED_FUNCTION_9_5(v84, v85);
              *(v4 + 88) = 0;
              goto LABEL_33;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_21_3();
      *v85 = 0xD000000000000034;
      v85[1] = 0x80000002553A8D20;
      goto LABEL_32;
    }
  }

  v55 = v96;
  v56 = *(*(v97 + 48) + 8);
  v57 = *(v97 + 40);
  v58 = dispatch thunk of static LibraryArtifact.DataArtifact.metadata.getter();
  v16 = MEMORY[0x259C32560](v58);
  v98(v55, v100);
  v4 = *(v16 + 16);

  if (v4 >> 31)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v59 = sqlite3_column_double(v94[4], v4);
  sqlite3_result_double(rawValue, v59);
  v7 = v101;
LABEL_34:
  (*(v7 + 8))(v29, v17);
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

void *specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_19_2();
  if (v5)
  {
    OUTLINED_FUNCTION_3_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_17_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_6();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_13_5(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25IntelligencePlatformQuery12ResultColumnVGMd, &_ss23_ContiguousArrayStorageCy25IntelligencePlatformQuery12ResultColumnVGMR);
    v9 = OUTLINED_FUNCTION_31_0();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_10_2(v10 - 32);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_19_2();
  if (v5)
  {
    OUTLINED_FUNCTION_3_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_17_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_6();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_13_5(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v9 = OUTLINED_FUNCTION_31_0();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_10_2(v10 - 32);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_19_2();
  if (v3)
  {
    OUTLINED_FUNCTION_3_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_6();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12BiomeStreams15LibraryArtifactO6ColumnV_Tt1g5(v7, v4);
  v9 = *(type metadata accessor for LibraryArtifact.Column() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_19_2();
  if (v5)
  {
    OUTLINED_FUNCTION_3_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_17_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_6();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_13_5(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v9 = OUTLINED_FUNCTION_31_0();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_10_2(v10 - 32);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_19_2();
  if (v3)
  {
    OUTLINED_FUNCTION_3_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_6();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    v9 = OUTLINED_FUNCTION_31_0();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v7] <= v11)
    {
      memmove(v11, v12, 8 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v7);
  }
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay25IntelligencePlatformQuery12VirtualTableO6SearchO0I9PredicateOGGMd, &_ss23_ContiguousArrayStorageCySay25IntelligencePlatformQuery12VirtualTableO6SearchO0I9PredicateOGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay25IntelligencePlatformQuery12VirtualTableO6SearchO0F9PredicateOGMd, &_sSay25IntelligencePlatformQuery12VirtualTableO6SearchO0F9PredicateOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS6column_SS4termtGMd, &_ss23_ContiguousArrayStorageCySS6column_SS4termtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS6column_SS4termtMd, &_sSS6column_SS4termtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12BiomeStreams15LibraryArtifactO6ColumnV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO6ColumnVGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO6ColumnVGMR);
  v4 = *(type metadata accessor for LibraryArtifact.Column() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_7(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_7(a3, result);
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (v6 = type metadata accessor for LibraryArtifact.Column(), result = OUTLINED_FUNCTION_7_3(v6), a1 + *(v8 + 72) * a2 <= a3))
  {
    type metadata accessor for LibraryArtifact.Column();
    v10 = OUTLINED_FUNCTION_27_1();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_27_1();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

uint64_t type metadata accessor for VirtualTable.Search.Table()
{
  result = type metadata singleton initialization cache for VirtualTable.Search.Table;
  if (!type metadata singleton initialization cache for VirtualTable.Search.Table)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_29_2(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation3URLVGMd, &_ss17_NativeDictionaryVySS10Foundation3URLVGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v10))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = type metadata accessor for URL();
    v24 = OUTLINED_FUNCTION_7_3(v23);
    v26 = *(v25 + 40);
    v27 = v24;
    v28 = v22 + *(v25 + 72) * v16;

    return v26(v28, a1, v27);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v21);
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO15StreamTombstoneO0G0CGMd, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO15StreamTombstoneO0G0CGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO6StreamO0G0CGMd, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO6StreamO0G0CGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO4ViewO0G0CGMd, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO4ViewO0G0CGMR);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_29_2(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v14))
  {
    goto LABEL_5;
  }

  v22 = *v9;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v20 = v23;
LABEL_5:
  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v20);
    *(v26 + 8 * v20) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v20, a2, a3, a1, v25);
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for URL();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VirtualTable.Search(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for VirtualTable.Search(_BYTE *result, int a2, int a3)
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

uint64_t type metadata completion function for VirtualTable.Search.Table()
{
  result = type metadata accessor for LibraryArtifact.Table();
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VirtualTable.Search.SearchPredicate(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for VirtualTable.Search.SearchPredicate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void *OUTLINED_FUNCTION_9_5(uint64_t a1, uint64_t a2)
{

  return memcpy((a2 + 16), (v2 - 160), 0x48uLL);
}

void OUTLINED_FUNCTION_13_5(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_23_1()
{
  v1 = *(v0 - 216);
  v2 = *(v0 - 240);
  v3 = *(v0 - 264);
}

void OUTLINED_FUNCTION_28_1()
{
  v1 = *(v0 - 232);
  v2 = *(v0 - 280);
  v3 = *(v0 - 72);
}

uint64_t OUTLINED_FUNCTION_30_0()
{
  v2 = *(*(v0 + 48) + 8);
  v3 = *(v0 + 40);

  return dispatch thunk of static LibraryArtifact.DataArtifact.metadata.getter();
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return swift_allocObject();
}

uint64_t specialized IncrementalIdentifier.SingleValueIdentifier.bindTo(_:index:)(uint64_t result, uint64_t a2, double a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    if (a2 <= 0x7FFFFFFF)
    {
      v5 = result;
      type metadata accessor for SQLConnection();
      v6 = sqlite3_bind_double(v5, v3, a3);
      return static SQLConnection.isOk(resultCode:statement:context:)(v6, 0, 0, 0);
    }
  }

  __break(1u);
  return result;
}

uint64_t VirtualTable.View.Module.vtabCreatingIfNeeded(for:)()
{
  v2 = v0;
  v3 = *(v0 + 48);
  if (*(v3 + 16) && (v4 = OUTLINED_FUNCTION_46(), v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5), (v7 & 1) != 0))
  {
    v8 = *(*(v3 + 56) + 8 * v6);
  }

  else
  {
    v10 = *(v2 + 40);
    swift_unownedRetainStrong();
    v11 = *(v10 + 24);
    v12 = *(v10 + 32);

    OUTLINED_FUNCTION_46();
    if (!dispatch thunk of static LibraryBase.view(for:)())
    {
      goto LABEL_7;
    }

    swift_unownedRetainStrong();

    specialized SQLConnection.withoutAuthorizer(block:)(v10);

    if (!v1)
    {
      v13 = *(v2 + 48);
      v14 = OUTLINED_FUNCTION_46();
      result = specialized Dictionary.subscript.getter(v14, v15, v16);
      if (!result)
      {
LABEL_7:
        *__src = 0;
        *&__src[8] = 0xE000000000000000;
        _StringGuts.grow(_:)(36);

        OUTLINED_FUNCTION_3_8(v17, v18, v19, v20, v21, v22, v23, v24, v29, *__src);
        v25 = OUTLINED_FUNCTION_46();
        MEMORY[0x259C32B90](v25);
        MEMORY[0x259C32B90](0xD000000000000014, 0x80000002553A85F0);
        v26 = *&__src[8];
        lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13();
        v28 = v27;
        *v27 = *__src;
        v27[1] = v26;
        memcpy(v27 + 2, __src, 0x48uLL);
        *(v28 + 88) = 0;
        return swift_willThrow();
      }
    }
  }

  return result;
}

Swift::tuple_latestTimestamp_Double_pruneByTimestamp_Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.View.Table.currentState()()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams23UpdatedObjectDiffConfigVSgMd, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v7);
  v9 = &__src[-v8 - 8];
  v10 = type metadata accessor for UpdatedObjectDiffConfig();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = v0[6];
  v20 = v0[5];
  dispatch thunk of static IntelligencePlatformView.updatedObjectDiffConfig.getter();
  OUTLINED_FUNCTION_26_2(v9);
  if (v21)
  {
    outlined destroy of UpdatedObjectDiffConfig?(v9, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMd, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMR);
    *__src = 0;
    *&__src[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    *__src = 0xD000000000000019;
    *&__src[8] = 0x80000002553A91E0;
    MEMORY[0x259C32B90](v3[3], v3[4]);
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    v22 = OUTLINED_FUNCTION_13();
    v24 = OUTLINED_FUNCTION_5_8(v22, v23);
    memcpy(v24, __src, 0x48uLL);
    *(v10 + 88) = 0;
    swift_willThrow();
  }

  else
  {
    (*(v13 + 32))(v18, v9, v10);
    v25 = v3[2];
    swift_unownedRetainStrong();
    v26 = *(v25 + 40);
    swift_unownedRetainStrong();

    *__src = 0;
    *&__src[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    MEMORY[0x259C32B90](0xD000000000000017, 0x80000002553A9200);
    v27 = UpdatedObjectDiffConfig.updatedTimestampColumn.getter();
    MEMORY[0x259C32B90](v27);

    MEMORY[0x259C32B90](0x20202020200A2C29, 0xEF2858414D202020);
    v28 = UpdatedObjectDiffConfig.updatedTimestampColumn.getter();
    MEMORY[0x259C32B90](v28);

    OUTLINED_FUNCTION_12_6();
    v29 = UpdatedObjectDiffConfig.tableName.getter();
    MEMORY[0x259C32B90](v29);

    v30._rawValue = SQLConnection.prepareStatement(query:)(*__src)._rawValue;
    if (v31._rawValue)
    {
      v32 = *(v13 + 8);
      v33 = OUTLINED_FUNCTION_28();
      v34(v33);
    }

    else
    {
      rawValue = v30._rawValue;

      sqlite3_step(rawValue);
      swift_unownedRetainStrong();
      v36 = *(v25 + 40);
      swift_unownedRetainStrong();

      OUTLINED_FUNCTION_0_0();
      v39 = SQLConnection.isDone(_:context:)(v37, v38);
      if (v40)
      {
      }

      else
      {
        v41 = v39;

        if (!v41)
        {
          v1 = sqlite3_column_double(rawValue, 0);
          v2 = sqlite3_column_double(rawValue, 1);
          sqlite3_finalize(rawValue);
          v49 = *(v13 + 8);
          v50 = OUTLINED_FUNCTION_28();
          v51(v50);
          goto LABEL_11;
        }

        lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13();
        v43 = v42;
        *v42 = 0x2066666964206F4ELL;
        v42[1] = 0xEF73656972746E65;
        memcpy(v42 + 2, __src, 0x48uLL);
        *(v43 + 88) = 0;
        swift_willThrow();
      }

      sqlite3_finalize(rawValue);
      v44 = *(v13 + 8);
      v45 = OUTLINED_FUNCTION_28();
      v46(v45);
    }
  }

LABEL_11:
  v47 = v2;
  v48 = v1;
  result.pruneByTimestamp = v48;
  result.latestTimestamp = v47;
  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v5 = type metadata accessor for LibraryArtifact.Column();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v19 = a2;
  v11 = *(a2 + 16);
  v12 = (v6 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      v14 = 1;
      v15 = v17;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
    }

    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5);
    v13 = v18(v9);
    if (v3)
    {
      return (*v12)(v9, v5);
    }

    if (v13)
    {
      break;
    }

    (*v12)(v9, v5);
    ++v10;
  }

  v15 = v17;
  (*(v6 + 32))(v17, v9, v5);
  v14 = 0;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for LibraryArtifact.Column();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t VirtualTable.View.Module.createTable(using:databaseName:tableName:args:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v6 + 48);
  if (!*(v9 + 16))
  {
    return VirtualTable.View.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  }

  a1 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  if ((a2 & 1) == 0)
  {
    return VirtualTable.View.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  }

  v10 = *(*(v9 + 56) + 8 * a1);
}

uint64_t VirtualTable.View.Module.createTableInitial(using:databaseName:tableName:args:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v11 = *(v6 + 40);
  v12 = swift_unownedRetainStrong();
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);

  OUTLINED_FUNCTION_28();
  v15 = dispatch thunk of static LibraryBase.view(for:)();
  if (v15)
  {
    v17 = v15;
    v18 = v16;
    type metadata accessor for VirtualTable.View.Table();
    v14 = swift_allocObject();

    VirtualTable.View.Table.init(module:tableName:view:)(v19, a5, a6, v17, v18);
    if (!v7)
    {

      v20 = *(v8 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *__src = *(v8 + 48);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a5, a6, isUniquelyReferenced_nonNull_native);
      *(v8 + 48) = *__src;
    }
  }

  else
  {
    *__src = 0;
    *&__src[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    OUTLINED_FUNCTION_3_8(v22, v23, v24, v25, v26, v27, v28, v29, v35, *__src);
    v30 = OUTLINED_FUNCTION_28();
    MEMORY[0x259C32B90](v30);
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    v31 = OUTLINED_FUNCTION_13();
    v33 = OUTLINED_FUNCTION_5_8(v31, v32);
    memcpy(v33, __src, 0x48uLL);
    *(a6 + 88) = 0;
    swift_willThrow();
  }

  return v14;
}

uint64_t VirtualTable.View.Module.init(ipsqlDb:)(uint64_t a1)
{
  *(v1 + 16) = 0x6261745677656956;
  *(v1 + 24) = 0xE800000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  swift_unownedRetain();
  type metadata accessor for VirtualTable.View.Table();
  *(v1 + 48) = Dictionary.init(dictionaryLiteral:)();

  return v1;
}

uint64_t protocol witness for VirtualTable.Module.createTable(using:databaseName:tableName:args:) in conformance VirtualTable.View.Module@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = *v7;
  result = VirtualTable.View.Module.createTable(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  if (!v8)
  {
    *a7 = result;
  }

  return result;
}

uint64_t protocol witness for VirtualTable.Module.createTableInitial(using:databaseName:tableName:args:) in conformance VirtualTable.View.Module@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = *v7;
  result = VirtualTable.View.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  if (!v8)
  {
    *a7 = result;
  }

  return result;
}

uint64_t VirtualTable.View.Table.createSQL.getter()
{
  v0 = type metadata accessor for LibraryArtifact.Table();
  v1 = OUTLINED_FUNCTION_0_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  VirtualTable.View.Table.schema.getter(v7 - v6);
  v9 = LibraryArtifact.Table.createTableSQL.getter();
  (*(v3 + 8))(v8, v0);
  return v9;
}

uint64_t VirtualTable.View.Table.schema.getter@<X0>(uint64_t a1@<X8>)
{
  v158 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO11EnumerationVSgMd, &_s12BiomeStreams15LibraryArtifactO11EnumerationVSgMR);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v5);
  v154 = v140 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO5TableVSgMd, &_s12BiomeStreams15LibraryArtifactO5TableVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  v153 = v140 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO18RepresentationTypeOSgMd, &_s12BiomeStreams15LibraryArtifactO18RepresentationTypeOSgMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v15);
  v17 = v140 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO9PredicateOSgMd, &_s12BiomeStreams15LibraryArtifactO9PredicateOSgMR);
  OUTLINED_FUNCTION_21(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v21);
  v23 = v140 - v22;
  v24 = type metadata accessor for LibraryArtifact.SQLDataType();
  v159 = OUTLINED_FUNCTION_0_2(v24);
  v160 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  v31 = type metadata accessor for LibraryArtifact.Table();
  v32 = OUTLINED_FUNCTION_0_2(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v39 = v38 - v37;
  v41 = *(v1 + 40);
  v40 = *(v1 + 48);
  v157 = v1;
  v42 = *(v40 + 8);
  OUTLINED_FUNCTION_14_5();
  v156 = v43;
  v44 = dispatch thunk of static LibraryArtifact.DataArtifact.metadata.getter();
  v45 = MEMORY[0x259C32560](v44);
  v46 = OUTLINED_FUNCTION_22_3();
  v155 = v47;
  v47(v46, v31);
  v48 = *(v45 + 16);

  if (v48)
  {
    goto LABEL_2;
  }

  if (dispatch thunk of static IntelligencePlatformView.type.getter() == 0x6870617267627573 && v52 == 0xE800000000000000)
  {

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO6ColumnVGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO6ColumnVGMR);
    v55 = *(type metadata accessor for LibraryArtifact.Column() - 8);
    v152 = *(v55 + 72);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    v146 = v57;
    *(v57 + 16) = xmmword_2552FDCC0;
    v58 = v57 + v56;
    LODWORD(v147) = *MEMORY[0x277CF1850];
    v59 = *(v160 + 104);
    v160 += 104;
    v151 = v59;
    v59(v30);
    v150 = type metadata accessor for LibraryArtifact.Predicate();
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    v149 = type metadata accessor for LibraryArtifact.RepresentationType();
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v31);
    v148 = type metadata accessor for LibraryArtifact.Enumeration();
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_6_6();
    LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
    v144 = *MEMORY[0x277CF1848];
    v140[1] = v23;
    v75 = v17;
    v145 = v34;
    v76 = v159;
    v151(v30);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v150);
    OUTLINED_FUNCTION_4_3();
    v80 = v30;
    v81 = v149;
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v149);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v31);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v148);
    OUTLINED_FUNCTION_8_1();
    v91 = v152;
    v142 = v80;
    v143 = v58;
    v140[0] = v75;
    LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
    v141 = v58 + 2 * v91;
    v92 = v151;
    (v151)(v80, v147, v76);
    v147 = v31;
    OUTLINED_FUNCTION_4_3();
    v93 = v150;
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v150);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v81);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v147);
    OUTLINED_FUNCTION_4_3();
    v103 = v148;
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v148);
    OUTLINED_FUNCTION_8_1();
    v107 = v142;
    OUTLINED_FUNCTION_6_6();
    LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
    v140[2] = "diffTableStatement";
    v141 = 3 * v152;
    (v92)(v107, v144, v159);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v93);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v149);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v147);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v103);
    v120 = v143;
    OUTLINED_FUNCTION_6_6();
    v31 = v147;
    LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
    v152 = v120 + 4 * v152;
    (v151)(v107, *MEMORY[0x277CF1830], v159);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v150);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v124, v125, v126, v149);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v127, v128, v129, v31);
    OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v148);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_6_6();
    v50 = v146;
    LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
    v51 = v155;
    goto LABEL_11;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v54)
  {
    goto LABEL_10;
  }

LABEL_2:
  OUTLINED_FUNCTION_14_5();
  v49 = dispatch thunk of static LibraryArtifact.DataArtifact.metadata.getter();
  v50 = MEMORY[0x259C32560](v49);
  v51 = v155;
  v155(v39, v31);
LABEL_11:
  v133 = *(v157 + 24);
  v134 = *(v157 + 32);

  OUTLINED_FUNCTION_14_5();
  v135 = dispatch thunk of static LibraryArtifact.DataArtifact.metadata.getter();
  v136 = MEMORY[0x259C32530](v135);
  v138 = v137;
  v51(v39, v31);
  return MEMORY[0x259C32540](v133, v134, v136, v138, v50);
}

uint64_t VirtualTable.View.Table.init(module:tableName:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = 1;
  *(v5 + 48) = a5;
  *(v5 + 56) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  swift_unownedRetain();

  return v5;
}

uint64_t VirtualTable.View.Table.createCursor()()
{
  v1 = *(v0 + 64);
  v5 = *(v0 + 56);
  v6 = v1;
  type metadata accessor for VirtualTable.View.Cursor();
  v2 = swift_allocObject();

  VirtualTable.View.Cursor.init(table:startingBookmark:)(v3, &v5);
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.View.Table.tearDown()()
{
  v1 = v0[2];
  swift_unownedRetainStrong();
  specialized Dictionary._Variant.removeValue(forKey:)(v0[3], v0[4]);
}

uint64_t VirtualTable.View.Table.deinit()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();
  v2 = *(v0 + 32);

  return v0;
}

uint64_t VirtualTable.View.Table.__deallocating_deinit()
{
  VirtualTable.View.Table.deinit();

  return MEMORY[0x2821FE8D8](v0, 65, 7);
}

uint64_t protocol witness for VirtualTable.Table.createCursor() in conformance VirtualTable.View.Table@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  result = VirtualTable.View.Table.createCursor()();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t VirtualTable.View.Cursor.init(table:startingBookmark:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 24) = a1;
  v5 = *(a1 + 16);
  swift_unownedRetainStrong();
  v6 = *(v5 + 40);
  swift_unownedRetainStrong();

  *(v2 + 16) = v6;
  swift_unownedRetain();

  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  return v2;
}

void *VirtualTable.View.Cursor.deinit()
{
  v1 = v0[8];
  if (v1)
  {
    sqlite3_finalize(v1);
  }

  v2 = v0[9];
  if (v2)
  {
    sqlite3_finalize(v2);
  }

  v3 = v0[2];
  swift_unownedRelease();
  v4 = v0[3];

  return v0;
}

uint64_t VirtualTable.View.Cursor.__deallocating_deinit()
{
  VirtualTable.View.Cursor.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.View.Cursor.filter(idxNum:idxStr:args:)(Swift::Int32 idxNum, Swift::String_optional idxStr, Swift::OpaquePointer args)
{
  v5 = v3;
  v6 = type metadata accessor for LibraryArtifact.Column();
  v7 = OUTLINED_FUNCTION_0_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v12 = *(v3 + 24);
  VirtualTable.View.Table.entityIdentifierColumn.getter(v14 - v13);
  if (!v4)
  {
    *(v5 + 72) = VirtualTable.View.Cursor.getDiffTableStatement(identifierCol:)();
    *(v5 + 64) = VirtualTable.View.Cursor.getSelectRowStatement(identifierCol:)();
    VirtualTable.View.Cursor.next()();
    v15 = *(v9 + 8);
    v16 = OUTLINED_FUNCTION_28();
    v17(v16);
  }
}

uint64_t VirtualTable.View.Table.entityIdentifierColumn.getter@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v77 = type metadata accessor for LibraryArtifact.Table();
  v3 = OUTLINED_FUNCTION_0_2(v77);
  v79 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v72 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v71 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO6ColumnVSgMd, &_s12BiomeStreams15LibraryArtifactO6ColumnVSgMR);
  v15 = OUTLINED_FUNCTION_21(v14);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v73 = &v71 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v71 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams23UpdatedObjectDiffConfigVSgMd, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMR);
  OUTLINED_FUNCTION_21(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_24_2();
  v30 = OUTLINED_FUNCTION_0_2(v29);
  v75 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  v36 = v35 - v34;
  v37 = *(v1 + 48);
  v38 = v1;
  v39 = *(v1 + 40);
  dispatch thunk of static IntelligencePlatformView.updatedObjectDiffConfig.getter();
  if (__swift_getEnumTagSinglePayload(v2, 1, v29) == 1)
  {
    outlined destroy of UpdatedObjectDiffConfig?(v2, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMd, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMR);
    v40 = VirtualTable.View.Table.schema.getter(v9);
    v41 = MEMORY[0x259C32560](v40);
    (*(v79 + 8))(v9, v77);
    specialized Collection.first.getter(v41, v20);

    v42 = type metadata accessor for LibraryArtifact.Column();
    if (__swift_getEnumTagSinglePayload(v20, 1, v42) == 1)
    {
      outlined destroy of UpdatedObjectDiffConfig?(v20, &_s12BiomeStreams15LibraryArtifactO6ColumnVSgMd, &_s12BiomeStreams15LibraryArtifactO6ColumnVSgMR);
      OUTLINED_FUNCTION_23_2();

      OUTLINED_FUNCTION_7_5();
      __src[0] = v44;
      __src[1] = v43;
      MEMORY[0x259C32B90](*(v38 + 24), *(v38 + 32));
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      v45 = OUTLINED_FUNCTION_13();
      v47 = OUTLINED_FUNCTION_5_8(v45, v46);
      memcpy(v47, __src, 0x48uLL);
      v20[88] = 0;
      return swift_willThrow();
    }

    else
    {
      OUTLINED_FUNCTION_19_3(v42);
      return (*(v68 + 32))(v74, v20, v42);
    }
  }

  else
  {
    (*(v75 + 32))(v36, v2, v29);
    v49 = v38;
    v50 = v29;
    v51 = VirtualTable.View.Table.schema.getter(v13);
    v52 = MEMORY[0x259C32560](v51);
    v53 = *(v79 + 8);
    v54 = v77;
    v79 += 8;
    v55 = v53(v13, v77);
    MEMORY[0x28223BE20](v55);
    *(&v71 - 2) = v36;
    specialized Sequence.first(where:)(partial apply for closure #1 in VirtualTable.View.Table.entityIdentifierColumn.getter, v52, v24);

    v56 = type metadata accessor for LibraryArtifact.Column();
    OUTLINED_FUNCTION_26_2(v24);
    if (v57)
    {
      v76 = v36;
      v58 = v75;
      outlined destroy of UpdatedObjectDiffConfig?(v24, &_s12BiomeStreams15LibraryArtifactO6ColumnVSgMd, &_s12BiomeStreams15LibraryArtifactO6ColumnVSgMR);
      v59 = v72;
      v60 = VirtualTable.View.Table.schema.getter(v72);
      v61 = MEMORY[0x259C32560](v60);
      v53(v59, v54);
      v62 = v73;
      specialized Collection.first.getter(v61, v73);

      OUTLINED_FUNCTION_26_2(v62);
      if (v57)
      {
        outlined destroy of UpdatedObjectDiffConfig?(v62, &_s12BiomeStreams15LibraryArtifactO6ColumnVSgMd, &_s12BiomeStreams15LibraryArtifactO6ColumnVSgMR);
        OUTLINED_FUNCTION_23_2();

        OUTLINED_FUNCTION_7_5();
        __src[0] = v64;
        __src[1] = v63;
        MEMORY[0x259C32B90](*(v49 + 24), *(v49 + 32));
        lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        v65 = OUTLINED_FUNCTION_13();
        v67 = OUTLINED_FUNCTION_5_8(v65, v66);
        memcpy(v67, __src, 0x48uLL);
        *(v56 + 88) = 0;
        swift_willThrow();
      }

      else
      {
        OUTLINED_FUNCTION_19_3(v56);
        (*(v70 + 32))(v74, v62, v56);
      }

      return (*(v58 + 8))(v76, v50);
    }

    else
    {
      OUTLINED_FUNCTION_19_3(v56);
      (*(v69 + 32))(v74, v24, v56);
      return (*(v75 + 8))(v36, v50);
    }
  }
}

sqlite3_stmt *VirtualTable.View.Cursor.getDiffTableStatement(identifierCol:)()
{
  v2 = v0;
  v59 = type metadata accessor for LibraryArtifact.Table();
  v3 = OUTLINED_FUNCTION_0_2(v59);
  rawValue = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams23UpdatedObjectDiffConfigVSgMd, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_24_2();
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = *(v0 + 24);
  v22 = *(v21 + 48);
  v23 = *(v21 + 40);
  dispatch thunk of static IntelligencePlatformView.updatedObjectDiffConfig.getter();
  if (__swift_getEnumTagSinglePayload(v1, 1, v12) == 1)
  {
    outlined destroy of UpdatedObjectDiffConfig?(v1, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMd, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMR);
  }

  else
  {
    (*(v15 + 32))(v20, v1, v12);
    if ((*(v2 + 40) & 1) == 0)
    {
      v24 = *(v2 + 32);
      if (v24 > 0.0)
      {
        OUTLINED_FUNCTION_4_7();
        _StringGuts.grow(_:)(144);
        OUTLINED_FUNCTION_12_6();
        UpdatedObjectDiffConfig.updatedTimestampColumn.getter();
        OUTLINED_FUNCTION_16_3();

        MEMORY[0x259C32B90](0x2020202020200A2CLL, 0xEA00000000002020);
        UpdatedObjectDiffConfig.identifierColumn.getter();
        OUTLINED_FUNCTION_16_3();

        OUTLINED_FUNCTION_12_6();
        v25 = *(v21 + 48);
        v26 = *(v21 + 40);
        v27 = dispatch thunk of static IntelligencePlatformView.database.getter();
        OUTLINED_FUNCTION_18_4(v27, v28);
        OUTLINED_FUNCTION_16_3();

        OUTLINED_FUNCTION_17_4();
        UpdatedObjectDiffConfig.tableName.getter();
        OUTLINED_FUNCTION_16_3();

        MEMORY[0x259C32B90](0xD000000000000015, 0x80000002553A81D0);
        UpdatedObjectDiffConfig.updatedTimestampColumn.getter();
        OUTLINED_FUNCTION_16_3();

        MEMORY[0x259C32B90](0xD000000000000017, 0x80000002553A81F0);
        LibraryArtifact.Column.name.getter();
        OUTLINED_FUNCTION_25_2();

        MEMORY[0x259C32B90](0xD000000000000023, 0x80000002553A9190);
        UpdatedObjectDiffConfig.updatedTimestampColumn.getter();
        OUTLINED_FUNCTION_25_2();

        v29 = *(v2 + 16);
        swift_unownedRetainStrong();
        v30._rawValue = SQLConnection.prepareStatement(query:)(v60)._rawValue;
        if (!v31)
        {
          rawValue = v30._rawValue;

          specialized IncrementalIdentifier.SingleValueIdentifier.bindTo(_:index:)(rawValue, 1, v24);
          v57 = OUTLINED_FUNCTION_13_6();
          v58(v57);
          return rawValue;
        }

        v32 = OUTLINED_FUNCTION_13_6();
        v33(v32);
        goto LABEL_9;
      }
    }

    (*(v15 + 8))(v20, v12);
  }

  OUTLINED_FUNCTION_4_7();
  _StringGuts.grow(_:)(96);
  MEMORY[0x259C32B90](0xD000000000000028, 0x80000002553A9100);
  v34 = LibraryArtifact.Column.name.getter();
  MEMORY[0x259C32B90](v34);

  MEMORY[0x259C32B90](0xD000000000000014, 0x80000002553A81B0);
  v35 = *(v21 + 48);
  v36 = *(v21 + 40);
  v37 = dispatch thunk of static IntelligencePlatformView.database.getter();
  v39 = OUTLINED_FUNCTION_18_4(v37, v38);
  MEMORY[0x259C32B90](v39);

  OUTLINED_FUNCTION_17_4();
  v40 = *(*(v21 + 48) + 8);
  v41 = *(v21 + 40);
  v42 = dispatch thunk of static LibraryArtifact.DataArtifact.metadata.getter();
  v43 = MEMORY[0x259C32550](v42);
  v45 = v44;
  v46 = OUTLINED_FUNCTION_22_3();
  v47(v46, v59);
  MEMORY[0x259C32B90](v43, v45);

  MEMORY[0x259C32B90](0xD000000000000018, 0x80000002553A9130);
  LibraryArtifact.Column.name.getter();
  OUTLINED_FUNCTION_25_2();

  MEMORY[0x259C32B90](34, 0xE100000000000000);
  v48 = *(v2 + 16);
  swift_unownedRetainStrong();
  v49._rawValue = SQLConnection.prepareStatement(query:)(v60)._rawValue;
  if (v50)
  {
LABEL_9:

    return rawValue;
  }

  rawValue = v49._rawValue;

  v51 = *(v2 + 32);
  if (*(v2 + 40))
  {
    v52 = 0.0;
  }

  else
  {
    v52 = *(v2 + 32);
  }

  type metadata accessor for SQLConnection();
  sqlite3_bind_double(rawValue, 1, v52);
  OUTLINED_FUNCTION_0_0();
  static SQLConnection.isOk(resultCode:statement:context:)(v53, v54, v55, 0);
  return rawValue;
}

void *VirtualTable.View.Cursor.getSelectRowStatement(identifierCol:)()
{
  v1 = v0;
  v2 = type metadata accessor for LibraryArtifact.Table();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_4_7();
  _StringGuts.grow(_:)(72);
  MEMORY[0x259C32B90](0xD000000000000027, 0x80000002553A90B0);
  v11 = *(v0 + 24);
  v12 = *(v11 + 48);
  v13 = *(v11 + 40);
  v14 = dispatch thunk of static IntelligencePlatformView.database.getter();
  OUTLINED_FUNCTION_18_4(v14, v15);
  OUTLINED_FUNCTION_16_3();

  OUTLINED_FUNCTION_17_4();
  v16 = *(*(v11 + 48) + 8);
  v17 = *(v11 + 40);
  v18 = dispatch thunk of static LibraryArtifact.DataArtifact.metadata.getter();
  v19 = MEMORY[0x259C32550](v18);
  v21 = v20;
  (*(v5 + 8))(v10, v2);
  MEMORY[0x259C32B90](v19, v21);

  MEMORY[0x259C32B90](0xD000000000000014, 0x80000002553A90E0);
  LibraryArtifact.Column.name.getter();
  OUTLINED_FUNCTION_25_2();

  MEMORY[0x259C32B90](1059077408, 0xE400000000000000);
  v22 = *(v1 + 16);
  swift_unownedRetainStrong();
  rawValue = SQLConnection.prepareStatement(query:)(v25)._rawValue;

  return rawValue;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.View.Cursor.next()()
{
  v1 = *(v0 + 64);
  if (v1 && (v2 = v0, (v3 = *(v0 + 72)) != 0))
  {
    while (1)
    {
      if (*(v2 + 48))
      {
        sqlite3_step(v1);
        v4 = *(v2 + 16);
        swift_unownedRetainStrong();
        OUTLINED_FUNCTION_0_0();
        v7 = SQLConnection.isDone(_:context:)(v5, v6);

        if (v8 || !v7)
        {
          break;
        }
      }

      sqlite3_step(v3);
      v9 = *(v2 + 16);
      swift_unownedRetainStrong();
      OUTLINED_FUNCTION_0_0();
      v12 = SQLConnection.isDone(_:context:)(v10, v11);

      if (v13)
      {
        break;
      }

      if (v12)
      {
        *(v2 + 48) = 0;
        return;
      }

      *(v2 + 56) = sqlite3_column_double(v3, 0);
      *(v2 + 48) = sqlite3_column_value(v3, 1);
      swift_unownedRetainStrong();
      sqlite3_reset(v1);
      OUTLINED_FUNCTION_0_0();
      SQLConnection.isOk(_:context:)(v14, v15);

      if (!v16)
      {
        swift_unownedRetainStrong();
        sqlite3_bind_value(v1, 1, *(v2 + 48));
        OUTLINED_FUNCTION_0_0();
        SQLConnection.isOk(_:context:)(v17, v18);

        if (!v19)
        {
          continue;
        }
      }

      return;
    }
  }

  else
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13();
    v21 = v20;
    *v20 = 0xD00000000000001DLL;
    v20[1] = 0x80000002553A9090;
    memcpy(v20 + 2, __src, 0x48uLL);
    *(v21 + 88) = 0;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.View.Cursor.column(context:index:)(Swift::OpaquePointer context, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (index <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_value(*(v2 + 64), index);
    sqlite3_result_value(context._rawValue, v4);
    return;
  }

  __break(1u);
}

uint64_t closure #1 in VirtualTable.View.Module.vtabCreatingIfNeeded(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for URL();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = type metadata accessor for DatabaseResourceToken();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v36 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  dispatch thunk of static IntelligencePlatformView.database.getter();
  v16 = *(a3 + 40);
  swift_unownedRetainStrong();
  v17 = *(v16 + 48);

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_28();
  dispatch thunk of static DatabaseResource.databaseResourceToken(useCase:)();
  if (v37)
  {
  }

  v35 = a3;

  swift_unownedRetainStrong();
  DatabaseResourceToken.url.getter();
  v19 = dispatch thunk of static IntelligencePlatformView.database.getter();
  OUTLINED_FUNCTION_18_4(v19, v20);
  SQLConnection.attachDatabase(url:as:readwrite:)();
  v21 = OUTLINED_FUNCTION_22_3();
  v22(v21, v4);

  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  v23 = *(v16 + 16);

  OUTLINED_FUNCTION_4_7();
  _StringGuts.grow(_:)(27);

  OUTLINED_FUNCTION_7_5();
  v24 = dispatch thunk of static IntelligencePlatformView.database.getter();
  v26 = OUTLINED_FUNCTION_18_4(v24, v25);
  MEMORY[0x259C32B90](v26);

  MEMORY[0x259C32B90](46, 0xE100000000000000);
  v27 = dispatch thunk of static IntelligencePlatformView.name.getter();
  MEMORY[0x259C32B90](v27);

  MEMORY[0x259C32B90](34, 0xE100000000000000);
  v28 = String.utf8CString.getter();

  sqlite3_exec(v23, (v28 + 32), 0, 0, 0);

  OUTLINED_FUNCTION_0_0();
  SQLConnection.isOk(_:context:)(v29, v30);

  if (v31)
  {
    return (*(v36 + 8))(v15, v8);
  }

  swift_unownedRetainStrong();
  v33 = *(v35 + 16);
  v32 = *(v35 + 24);

  specialized SQLConnection.withoutAuthorizer(block:)(v34);
  (*(v36 + 8))(v15, v8);
}

uint64_t closure #1 in VirtualTable.View.Table.entityIdentifierColumn.getter()
{
  v0 = LibraryArtifact.Column.name.getter();
  v2 = v1;
  if (v0 == UpdatedObjectDiffConfig.identifierColumn.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t outlined destroy of UpdatedObjectDiffConfig?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_19_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void *OUTLINED_FUNCTION_5_8(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;
  return a2 + 2;
}

void OUTLINED_FUNCTION_12_6()
{

  JUMPOUT(0x259C32B90);
}

void OUTLINED_FUNCTION_16_3()
{

  JUMPOUT(0x259C32B90);
}

void OUTLINED_FUNCTION_17_4()
{

  JUMPOUT(0x259C32B90);
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);

  return dispatch thunk of static DataResource.identifier.getter();
}

void OUTLINED_FUNCTION_23_2()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0xE000000000000000;

  _StringGuts.grow(_:)(23);
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return type metadata accessor for UpdatedObjectDiffConfig();
}

void OUTLINED_FUNCTION_25_2()
{

  JUMPOUT(0x259C32B90);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnection.createVirtualTable(tableName:moduleName:)(Swift::String tableName, Swift::String moduleName)
{

  specialized SQLConnection.withoutAuthorizer(block:)(v2);
}

void SQLConnection.register(module:)(void *a1)
{
  v4 = static VirtualTable.createModule(with:)(a1);
  if (!v2)
  {
    v5 = v4;
    v6 = a1[3];
    v7 = a1[4];
    v8 = __swift_project_boxed_opaque_existential_0(a1, v6);
    v9 = specialized closure #1 in SQLConnection.register(module:)(v1, v8, v5, v6, v7);
    SQLConnection.isOk(_:context:)(v9, 0);
  }
}

Swift::Int VirtualTable.TableType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C33090](v1);
  return Hasher._finalize()();
}

uint64_t VirtualTable.Module.createTableInitial(using:databaseName:tableName:args:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return VirtualTable.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  (*(a9 + 32))(__src, a8);
  if (LOBYTE(__src[0]))
  {
    v9 = 0x80000002553A9260;
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v11 = v10;
    *v10 = 0xD000000000000029;
  }

  else
  {
    v9 = 0x80000002553A9290;
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v11 = v10;
    *v10 = 0xD000000000000027;
  }

  v10[1] = v9;
  memcpy(v10 + 2, __src, 0x48uLL);
  *(v11 + 88) = 0;
  return swift_willThrow();
}

char *static VirtualTable.createModule(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v2);
  (*(v3 + 32))(v11, v2, v3);
  v4 = @objc closure #1 in variable initialization expression of static VirtualTable.destroy;
  v5 = @objc closure #1 in variable initialization expression of static VirtualTable.create;
  if (!LOBYTE(v11[0]))
  {
    goto LABEL_4;
  }

  if (LOBYTE(v11[0]) == 1)
  {
    v4 = @objc closure #1 in variable initialization expression of static VirtualTable.disconnect;
    v5 = @objc closure #1 in variable initialization expression of static VirtualTable.connect;
LABEL_4:
    v6 = v5;
    goto LABEL_6;
  }

  v6 = 0;
  v4 = @objc closure #1 in variable initialization expression of static VirtualTable.disconnect;
LABEL_6:
  v7 = sqlite3_malloc(208);
  if (v7)
  {
    outlined init with copy of VirtualTable.Module(a1, v11);
    type metadata accessor for VirtualTable.ModuleWrapper();
    v8 = swift_allocObject();
    outlined init with take of SQLExpressionNode(v11, v8 + 16);
    *v7 = 0;
    *(v7 + 1) = v6;
    *(v7 + 2) = @objc closure #1 in variable initialization expression of static VirtualTable.connect;
    *(v7 + 3) = @objc closure #1 in variable initialization expression of static VirtualTable.bestIndex;
    *(v7 + 4) = @objc closure #1 in variable initialization expression of static VirtualTable.disconnect;
    *(v7 + 5) = v4;
    *(v7 + 6) = @objc closure #1 in variable initialization expression of static VirtualTable.open;
    *(v7 + 7) = @objc closure #1 in variable initialization expression of static VirtualTable.close;
    *(v7 + 8) = @objc closure #1 in variable initialization expression of static VirtualTable.filter;
    *(v7 + 9) = @objc closure #1 in variable initialization expression of static VirtualTable.next;
    *(v7 + 10) = @objc closure #1 in variable initialization expression of static VirtualTable.eof;
    *(v7 + 11) = @objc closure #1 in variable initialization expression of static VirtualTable.column;
    *(v7 + 12) = @objc closure #1 in variable initialization expression of static VirtualTable.rowId;
    *(v7 + 104) = 0u;
    *(v7 + 120) = 0u;
    *(v7 + 136) = 0u;
    *(v7 + 152) = 0u;
    *(v7 + 168) = 0u;
    *(v7 + 184) = 0u;
    *(v7 + 25) = v8;
  }

  else
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 80) = 0;
    *(v9 + 88) = 5;
    swift_willThrow();
  }

  return v7;
}

void closure #1 in closure #1 in SQLConnection.register(module:)(void *a1)
{
  if (a1)
  {
    if (a1[25])
    {

      sqlite3_free(a1);
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in SQLConnection.createVirtualTable(tableName:moduleName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _StringGuts.grow(_:)(54);
  MEMORY[0x259C32B90](0xD000000000000028, 0x80000002553A8360);
  MEMORY[0x259C32B90](a1, a2);
  MEMORY[0x259C32B90](0x20474E4953552022, 0xE900000000000022);
  MEMORY[0x259C32B90](a3, a4);
  MEMORY[0x259C32B90](34, 0xE100000000000000);
  LODWORD(a4) = closure #1 in closure #1 in SQLConnection.createVirtualTable(tableName:moduleName:)(a5);

  SQLConnection.isOk(_:context:)(a4, 0);
}

uint64_t closure #1 in closure #1 in SQLConnection.createVirtualTable(tableName:moduleName:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = String.utf8CString.getter();
  v3 = sqlite3_exec(v1, (v2 + 32), 0, 0, 0);

  return v3;
}

_DWORD *static VirtualTable.createTable(with:)(uint64_t a1)
{
  v2 = sqlite3_malloc(32);
  if (v2)
  {
    outlined init with copy of VirtualTable.Module(a1, v6);
    type metadata accessor for VirtualTable.TableWrapper();
    v3 = swift_allocObject();
    outlined init with take of SQLExpressionNode(v6, v3 + 16);
    *v2 = 0;
    v2[2] = 0;
    *(v2 + 2) = 0;
    *(v2 + 3) = v3;
  }

  else
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0;
    *(v4 + 88) = 5;
    swift_willThrow();
  }

  return v2;
}

void *static VirtualTable.createCursor(with:)(uint64_t a1)
{
  v2 = sqlite3_malloc(16);
  if (v2)
  {
    outlined init with copy of VirtualTable.Module(a1, v6);
    type metadata accessor for VirtualTable.CursorWrapper();
    v3 = swift_allocObject();
    outlined init with take of SQLExpressionNode(v6, v3 + 16);
    *v2 = 0;
    v2[1] = v3;
  }

  else
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0;
    *(v4 + 88) = 5;
    swift_willThrow();
  }

  return v2;
}

void closure #1 in variable initialization expression of static VirtualTable.create(sqlite3 *a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v77 = a5;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v68 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v68 - v23;
  if (!a1 || !a2 || !v77 || !a4)
  {
    static Logging.SQL.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v9;
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_254FFD000, v39, v40, "VirtualTable: create: args are nil", v42, 2u);
      MEMORY[0x259C33C60](v42, -1, -1);

      v43 = *(v10 + 8);
      v44 = v14;
LABEL_16:
      v45 = v41;
LABEL_19:
      v43(v44, v45);
      return;
    }

    v43 = *(v10 + 8);
    v44 = v14;
LABEL_18:
    v45 = v9;
    goto LABEL_19;
  }

  if (!*a4)
  {
    static Logging.SQL.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v41 = v9;
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_254FFD000, v46, v47, "VirtualTable: create: module name is not a string", v48, 2u);
      MEMORY[0x259C33C60](v48, -1, -1);

      v43 = *(v10 + 8);
      v44 = v24;
      goto LABEL_16;
    }

    v43 = *(v10 + 8);
    v44 = v24;
    goto LABEL_18;
  }

  v76 = v22;
  v25 = String.init(cString:)();
  v27 = v26;
  if (!a4[1])
  {

    static Logging.SQL.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_254FFD000, v49, v50, "VirtualTable: create: database name is not a string", v51, 2u);
      MEMORY[0x259C33C60](v51, -1, -1);
    }

    v43 = *(v10 + 8);
    v44 = v21;
    goto LABEL_18;
  }

  v72 = v25;
  v28 = String.init(cString:)();
  v30 = v29;
  if (!a4[2])
  {

    static Logging.SQL.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_254FFD000, v52, v53, "VirtualTable: create: table name is not a string", v54, 2u);
      MEMORY[0x259C33C60](v54, -1, -1);
    }

    v43 = *(v10 + 8);
    v44 = v18;
    goto LABEL_18;
  }

  v31 = String.init(cString:)();
  v75 = v32;
  if (a3 >= 3)
  {
    v70 = v28;
    v71 = v9;
    v73 = v30;
    v74 = v27;
    v69 = v31;
    if (a3 == 3)
    {
      v57 = MEMORY[0x277D84F90];
LABEL_12:
      v33 = *(a2 + 200);
      if (v33)
      {

        outlined init with copy of VirtualTable.Module(v33 + 16, v79);

        v35 = v80;
        v34 = v81;
        __swift_project_boxed_opaque_existential_0(v79, v80);
        v68 = *(v34 + 48);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v78[3] = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v78[4] = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);

        v68(v72, v74, v70, v73, v69, v75, v57, v35, v34);

        type metadata accessor for SQLConnection();
        v66 = specialized closure #1 in closure #4 in closure #1 in variable initialization expression of static VirtualTable.create(a1, boxed_opaque_existential_1, AssociatedTypeWitness, AssociatedConformanceWitness);
        static SQLConnection.isOk(_:resultCode:context:)(a1, v66, 0, 0);
        v67 = static VirtualTable.createTable(with:)(v78);
        *v77 = v67;
        __swift_destroy_boxed_opaque_existential_0(v78);
        __swift_destroy_boxed_opaque_existential_0(v79);

        return;
      }

      goto LABEL_40;
    }

    v55 = a3 - 3;
    v56 = a4 + 3;
    v57 = MEMORY[0x277D84F90];
    while (v55)
    {
      if (*v56)
      {
        v58 = String.init(cString:)();
        v60 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = *(v57 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v57 = v64;
        }

        v61 = *(v57 + 16);
        if (v61 >= *(v57 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v57 = v65;
        }

        *(v57 + 16) = v61 + 1;
        v62 = v57 + 16 * v61;
        *(v62 + 32) = v58;
        *(v62 + 40) = v60;
      }

      ++v56;
      if (!--v55)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void closure #1 in variable initialization expression of static VirtualTable.connect(sqlite3 *a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v77 = a5;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v68 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v68 - v23;
  if (!a1 || !a2 || !v77 || !a4)
  {
    static Logging.SQL.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v9;
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_254FFD000, v39, v40, "VirtualTable: connect: args are nil", v42, 2u);
      MEMORY[0x259C33C60](v42, -1, -1);

      v43 = *(v10 + 8);
      v44 = v14;
LABEL_16:
      v45 = v41;
LABEL_19:
      v43(v44, v45);
      return;
    }

    v43 = *(v10 + 8);
    v44 = v14;
LABEL_18:
    v45 = v9;
    goto LABEL_19;
  }

  if (!*a4)
  {
    static Logging.SQL.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v41 = v9;
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_254FFD000, v46, v47, "VirtualTable: connect: module name is not a string", v48, 2u);
      MEMORY[0x259C33C60](v48, -1, -1);

      v43 = *(v10 + 8);
      v44 = v24;
      goto LABEL_16;
    }

    v43 = *(v10 + 8);
    v44 = v24;
    goto LABEL_18;
  }

  v76 = v22;
  v25 = String.init(cString:)();
  v27 = v26;
  if (!a4[1])
  {

    static Logging.SQL.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_254FFD000, v49, v50, "VirtualTable: connect: database name is not a string", v51, 2u);
      MEMORY[0x259C33C60](v51, -1, -1);
    }

    v43 = *(v10 + 8);
    v44 = v21;
    goto LABEL_18;
  }

  v72 = v25;
  v28 = String.init(cString:)();
  v30 = v29;
  if (!a4[2])
  {

    static Logging.SQL.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_254FFD000, v52, v53, "VirtualTable: connect: table name is not a string", v54, 2u);
      MEMORY[0x259C33C60](v54, -1, -1);
    }

    v43 = *(v10 + 8);
    v44 = v18;
    goto LABEL_18;
  }

  v31 = String.init(cString:)();
  v75 = v32;
  if (a3 >= 3)
  {
    v70 = v28;
    v71 = v9;
    v73 = v30;
    v74 = v27;
    v69 = v31;
    if (a3 == 3)
    {
      v57 = MEMORY[0x277D84F90];
LABEL_12:
      v33 = *(a2 + 200);
      if (v33)
      {

        outlined init with copy of VirtualTable.Module(v33 + 16, v79);

        v35 = v80;
        v34 = v81;
        __swift_project_boxed_opaque_existential_0(v79, v80);
        v68 = *(v34 + 40);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v78[3] = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v78[4] = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);

        v68(v72, v74, v70, v73, v69, v75, v57, v35, v34);

        type metadata accessor for SQLConnection();
        v66 = specialized closure #1 in closure #4 in closure #1 in variable initialization expression of static VirtualTable.create(a1, boxed_opaque_existential_1, AssociatedTypeWitness, AssociatedConformanceWitness);
        static SQLConnection.isOk(_:resultCode:context:)(a1, v66, 0, 0);
        v67 = static VirtualTable.createTable(with:)(v78);
        *v77 = v67;
        __swift_destroy_boxed_opaque_existential_0(v78);
        __swift_destroy_boxed_opaque_existential_0(v79);

        return;
      }

      goto LABEL_40;
    }

    v55 = a3 - 3;
    v56 = a4 + 3;
    v57 = MEMORY[0x277D84F90];
    while (v55)
    {
      if (*v56)
      {
        v58 = String.init(cString:)();
        v60 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = *(v57 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v57 = v64;
        }

        v61 = *(v57 + 16);
        if (v61 >= *(v57 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v57 = v65;
        }

        *(v57 + 16) = v61 + 1;
        v62 = v57 + 16 * v61;
        *(v62 + 32) = v58;
        *(v62 + 40) = v60;
      }

      ++v56;
      if (!--v55)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t closure #1 in variable initialization expression of static VirtualTable.bestIndex(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  if (a1 && a2)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = *(a1 + 24);

      outlined init with copy of VirtualTable.Module(v11 + 16, v19);

      v13 = v20;
      v14 = v21;
      __swift_project_boxed_opaque_existential_0(v19, v20);
      (*(v14 + 32))(a2, v13, v14);
      __swift_destroy_boxed_opaque_existential_0(v19);
      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static Logging.SQL.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_254FFD000, v15, v16, "VirtualTable: bestIndex: args are nil", v17, 2u);
      MEMORY[0x259C33C60](v17, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return 1;
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of static VirtualTable.disconnect(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = a1[3];
    if (result)
    {

      sqlite3_free(a1);
      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static Logging.SQL.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_254FFD000, v8, v9, "VirtualTable: disconnect: args are nil", v10, 2u);
      MEMORY[0x259C33C60](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 1;
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of static VirtualTable.destroy(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v17[-1] - v7;
  if (a1)
  {
    v9 = a1[3];
    if (v9)
    {
      v10 = a1[3];

      outlined init with copy of VirtualTable.Module(v9 + 16, v17);

      v11 = v18;
      v12 = v19;
      __swift_project_boxed_opaque_existential_0(v17, v18);
      (*(v12 + 48))(v11, v12);
      __swift_destroy_boxed_opaque_existential_0(v17);
      result = a1[3];
      if (result)
      {

        sqlite3_free(a1);
        return 0;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  static Logging.SQL.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_254FFD000, v13, v14, "VirtualTable: destroy: args are nil", v15, 2u);
    MEMORY[0x259C33C60](v15, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
  return 1;
}

uint64_t closure #1 in variable initialization expression of static VirtualTable.open(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  if (a1 && a2)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = *(a1 + 24);

      outlined init with copy of VirtualTable.Module(v11 + 16, v17);

      closure #1 in closure #1 in variable initialization expression of static VirtualTable.open(v17, a2);
      __swift_destroy_boxed_opaque_existential_0(v17);
      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static Logging.SQL.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_254FFD000, v13, v14, "VirtualTable: open: args are nil", v15, 2u);
      MEMORY[0x259C33C60](v15, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return 1;
  }

  return result;
}

uint64_t *closure #1 in closure #1 in variable initialization expression of static VirtualTable.open(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  v6 = *(v5 + 40);
  v9[3] = swift_getAssociatedTypeWitness();
  v9[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v9);
  v6(v4, v5);
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_1(v9);
  }

  v8 = static VirtualTable.createCursor(with:)(v9);
  result = __swift_destroy_boxed_opaque_existential_0(v9);
  *a2 = v8;
  return result;
}

uint64_t closure #1 in variable initialization expression of static VirtualTable.close(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = a1[1];
    if (result)
    {

      sqlite3_free(a1);
      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static Logging.SQL.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_254FFD000, v8, v9, "VirtualTable: close: args are nil", v10, 2u);
      MEMORY[0x259C33C60](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 1;
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of static VirtualTable.filter(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  if (a1 && a5)
  {
    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = *(a1 + 8);

      if ((a4 & 0x80000000) == 0)
      {
        v35 = a2;
        v34[1] = v10;
        if (a4)
        {
          v19 = a4;
          v20 = MEMORY[0x277D84F90];
          do
          {
            v22 = *a5++;
            v21 = v22;
            if (v22)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v24 = *(v20 + 16);
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v20 = v25;
              }

              v23 = *(v20 + 16);
              if (v23 >= *(v20 + 24) >> 1)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v20 = v26;
              }

              *(v20 + 16) = v23 + 1;
              *(v20 + 8 * v23 + 32) = v21;
            }

            --v19;
          }

          while (v19);
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        if (a3)
        {
          a3 = String.init(cString:)();
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }

        v32 = *(v17 + 40);
        v33 = *(v17 + 48);
        __swift_mutable_project_boxed_opaque_existential_1(v17 + 16, v32);
        (*(v33 + 8))(v35, a3, v31, v20, v32, v33);

        return 0;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  static Logging.SQL.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_254FFD000, v27, v28, "VirtualTable: filter: args are nil", v29, 2u);
    MEMORY[0x259C33C60](v29, -1, -1);
  }

  (*(v11 + 8))(v15, v10);
  return 1;
}

uint64_t closure #1 in variable initialization expression of static VirtualTable.next(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  if (a1)
  {
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = *(v9 + 40);
      v11 = *(v9 + 48);
      v12 = *(a1 + 8);

      __swift_mutable_project_boxed_opaque_existential_1(v9 + 16, v10);
      (*(v11 + 16))(v10, v11);

      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static Logging.SQL.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_254FFD000, v13, v14, "VirtualTable: next: args are nil", v15, 2u);
      MEMORY[0x259C33C60](v15, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    return 1;
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of static VirtualTable.eof(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  if (a1)
  {
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = v9[5];
      v11 = v9[6];
      v12 = *(a1 + 8);

      __swift_project_boxed_opaque_existential_0(v9 + 2, v10);
      v16 = (*(v11 + 24))(v10, v11);

      return v16 & 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static Logging.SQL.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_254FFD000, v13, v14, "VirtualTable: eof: args are nil", v15, 2u);
      MEMORY[0x259C33C60](v15, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    return 1;
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of static VirtualTable.column(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  if (a1 && a2)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = v13[5];
      v15 = v13[6];

      __swift_project_boxed_opaque_existential_0(v13 + 2, v14);
      (*(v15 + 32))(a2, a3, v14, v15);

      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static Logging.SQL.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_254FFD000, v16, v17, "VirtualTable: column: args are nil", v18, 2u);
      MEMORY[0x259C33C60](v18, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    return 1;
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of static VirtualTable.rowId(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  if (a1 && a2)
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = v11[5];
      v13 = v11[6];
      v14 = *(a1 + 8);

      __swift_project_boxed_opaque_existential_0(v11 + 2, v12);
      v18 = (*(v13 + 40))(v12, v13);

      result = 0;
      *a2 = v18;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static Logging.SQL.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_254FFD000, v15, v16, "VirtualTable: rowId: args are nil", v17, 2u);
      MEMORY[0x259C33C60](v17, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return 1;
  }

  return result;
}

uint64_t specialized closure #1 in SQLConnection.register(module:)(uint64_t a1, uint64_t a2, sqlite3_module *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12);
  v13 = *(a1 + 16);
  (*(a5 + 24))(a4, a5);
  v14 = String.utf8CString.getter();

  module_v2 = sqlite3_create_module_v2(v13, (v14 + 32), a3, a3, @objc closure #1 in closure #1 in SQLConnection.register(module:));

  (*(v9 + 8))(v12, a4);
  return module_v2;
}

unint64_t lazy protocol witness table accessor for type VirtualTable.TableType and conformance VirtualTable.TableType()
{
  result = lazy protocol witness table cache variable for type VirtualTable.TableType and conformance VirtualTable.TableType;
  if (!lazy protocol witness table cache variable for type VirtualTable.TableType and conformance VirtualTable.TableType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VirtualTable.TableType and conformance VirtualTable.TableType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VirtualTable(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for VirtualTable.TableType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of VirtualTable.Module(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t specialized closure #1 in closure #4 in closure #1 in variable initialization expression of static VirtualTable.create(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  (*(a4 + 24))(a3, a4);
  v11 = String.utf8CString.getter();

  v12 = sqlite3_declare_vtab(a1, (v11 + 32));

  (*(v7 + 8))(v10, a3);
  return v12;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnection.addBindings(stmt:bindings:)(Swift::OpaquePointer stmt, Swift::OpaquePointer bindings)
{
  v5 = *v2;
  v6 = bindings._rawValue + 32;
  v7 = *(bindings._rawValue + 2);
  v8 = 1;
  v9 = 2147483646;
  while (v9)
  {
    if (v7)
    {
      v10 = v8;
      outlined init with copy of SQLConnection.Bindable?(v6, v11);
      closure #1 in SQLConnection.addBindings(stmt:bindings:)(v8, v11, stmt._rawValue, v2);
      outlined destroy of URL?(&v10, &_ss5Int32V_25IntelligencePlatformQuery13SQLConnectionC8Bindable_pSgtMd, &_ss5Int32V_25IntelligencePlatformQuery13SQLConnectionC8Bindable_pSgtMR);
      v6 += 40;
      --v7;
      --v9;
      v8 = (v8 + 1);
      if (!v3)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
}

Swift::Int32 __swiftcall String.bind(stmt:idx:)(Swift::OpaquePointer stmt, Swift::Int32 idx)
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v4 = static SQLConnection.SQLITE_TRANSIENT;
  v5 = String.utf8CString.getter();
  v6 = sqlite3_bind_text(stmt._rawValue, idx, (v5 + 32), -1, v4);

  return v6;
}

uint64_t protocol witness for SQLConnection.Bindable.bind(stmt:idx:) in conformance String(Swift::OpaquePointer stmt, Swift::Int32 idx)
{
  v3 = *v2;
  v4 = v2[1];
  return String.bind(stmt:idx:)(stmt, idx);
}

Swift::Int32 __swiftcall Data.bind(stmt:idx:)(Swift::OpaquePointer stmt, Swift::Int32 idx)
{
  v16[3] = *MEMORY[0x277D85DE8];
  switch(v3 >> 62)
  {
    case 1uLL:
      v11 = v2 >> 32;
      if (v2 >> 32 < v2)
      {
        __break(1u);
      }

      v10 = v2;
      goto LABEL_12;
    case 2uLL:
      v10 = *(v2 + 16);
      v11 = *(v2 + 24);
LABEL_12:
      result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v10, v11, v3, stmt._rawValue, idx);
      goto LABEL_13;
    case 3uLL:
      memset(v16, 0, 14);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v7 = static SQLConnection.SQLITE_TRANSIENT;
      rawValue = stmt._rawValue;
      v9 = idx;
      v6 = 0;
      goto LABEL_9;
    default:
      v16[0] = v2;
      LOWORD(v16[1]) = v3;
      BYTE2(v16[1]) = BYTE2(v3);
      BYTE3(v16[1]) = BYTE3(v3);
      BYTE4(v16[1]) = BYTE4(v3);
      BYTE5(v16[1]) = BYTE5(v3);
      v6 = BYTE6(v3);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        OUTLINED_FUNCTION_0_5();
        v15 = v14;
        swift_once();
        v6 = v15;
      }

      v7 = static SQLConnection.SQLITE_TRANSIENT;
      rawValue = stmt._rawValue;
      v9 = idx;
LABEL_9:
      result = sqlite3_bind_blob(rawValue, v9, v16, v6, v7);
LABEL_13:
      v13 = *MEMORY[0x277D85DE8];
      return result;
  }
}

uint64_t protocol witness for SQLConnection.Bindable.bind(stmt:idx:) in conformance Data(Swift::OpaquePointer stmt, Swift::Int32 idx)
{
  v3 = *v2;
  v4 = v2[1];
  return Data.bind(stmt:idx:)(stmt, idx);
}

uint64_t closure #1 in SQLConnection.addBindings(stmt:bindings:)(uint64_t a1, uint64_t a2, sqlite3_stmt *a3, uint64_t a4)
{
  outlined init with copy of SQLConnection.Bindable?(a2, &v17);
  if (v18)
  {
    outlined init with take of SQLExpressionNode(&v17, v19);
    v8 = v20;
    v9 = v21;
    __swift_project_boxed_opaque_existential_0(v19, v20);
    v10 = (*(v9 + 8))(a3, a1, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_0(v19);
    if (!v10)
    {
      return result;
    }
  }

  else
  {
    outlined destroy of URL?(&v17, &_s25IntelligencePlatformQuery13SQLConnectionC8Bindable_pSgMd, &_s25IntelligencePlatformQuery13SQLConnectionC8Bindable_pSgMR);
    result = sqlite3_bind_null(a3, a1);
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  v12 = *(a4 + 16);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  *&v17 = 0xD000000000000018;
  *(&v17 + 1) = 0x80000002553A9410;
  outlined init with copy of SQLConnection.Bindable?(a2, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s25IntelligencePlatformQuery13SQLConnectionC8Bindable_pSgMd, &_s25IntelligencePlatformQuery13SQLConnectionC8Bindable_pSgMR);
  v13 = String.init<A>(describing:)();
  MEMORY[0x259C32B90](v13);

  MEMORY[0x259C32B90](0x65646E6920746120, 0xEA00000000002078);
  LODWORD(v19[0]) = a1;
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x259C32B90](v14);

  v15 = v17;
  lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
  swift_allocError();
  static SQLConnection.sqlError(db:resultCode:statement:message:)(v12, v10, a3, v15, *(&v15 + 1), v16);

  return swift_willThrow();
}

uint64_t outlined init with copy of SQLConnection.Bindable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25IntelligencePlatformQuery13SQLConnectionC8Bindable_pSgMd, &_s25IntelligencePlatformQuery13SQLConnectionC8Bindable_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_OverridingKind(uint64_t a1, uint64_t a2)
{
  Overriding = lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind();

  return MEMORY[0x28217E238](a1, a2, Overriding);
}