uint64_t SearchAnswerEntity.Record.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726577736E61 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676F6C616964 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F44656372756F73 && a2 == 0xEF73746E656D7563)
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

uint64_t SearchAnswerEntity.Record.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x726577736E61;
      break;
    case 2:
      result = 0x676F6C616964;
      break;
    case 3:
      result = 0x6F44656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SearchAnswerEntity.Record.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E12AnswerEntityV6Record33_7DC14B86B00D755ED5CABC40E540667BLLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E12AnswerEntityV6Record33_7DC14B86B00D755ED5CABC40E540667BLLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v22 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v20 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[6];
    v18[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchAnswerEntity.Record.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchAnswerEntity.Record.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchAnswerEntity.Record.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchAnswerEntity.Record.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SearchAnswerEntity.Record(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return SearchAnswerEntity.Record.encode(to:)(a1);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_13_21(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_21(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  v10 = type metadata accessor for SearchPropertyRequest(0);
  outlined init with take of SearchEntity(a2, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for SearchPropertyRequest);
  result = outlined init with take of Any(a3, (*(a4 + 56) + 32 * a1));
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_6_26(a1, a2, a3, a4, a5);
  result = outlined init with take of Any(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_6_26(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34_24(v6, v11);
  }
}

{
  v5 = OUTLINED_FUNCTION_13_21(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + v5) = v7 & 1;
  v8 = v6[7] + 16 * v5;
  *v8 = v9;
  *(v8 + 8) = v10 & 1;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34_24(v6, v13);
  }
}

uint64_t _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZ10Foundation4DataV_Tt0g5(uint64_t a1, unint64_t a2)
{
  outlined copy of Data._Representation(a1, a2);
  v4 = *(specialized Collection._copyToContiguousArray()(a1, a2) + 16);
  v5 = static String._fromUTF8Repairing(_:)();

  return v5;
}

uint64_t closure #2 in String.init<A, B>(decoding:as:)@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t specialized static EvalLogging.logEvalInfo(_:_:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, v16, v17, v13);
  type metadata accessor for NSUserDefaults();
  if (static NSUserDefaults.logForEval.getter())
  {
    v18 = (*(a6 + 8))(a5, a6);
    MEMORY[0x28223BE20](v18);
    v25[-4] = a1;
    v25[-3] = a2;
    v25[-2] = a4;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in static EvalLogging.logEvalInfo(_:_:logger:), &v25[-6], v18);
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logging.search);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25[1] = v23;
      *v22 = 136315138;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v20, v21, "%s: Skip extra logging for eval", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x25F8A1050](v23, -1, -1);
      MEMORY[0x25F8A1050](v22, -1, -1);
    }
  }

  return (*(v11 + 8))(v15, a5);
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_6(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SearchToolIntentResponse.Record and conformance SearchToolIntentResponse.Record()
{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.Record and conformance SearchToolIntentResponse.Record;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.Record and conformance SearchToolIntentResponse.Record)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.Record and conformance SearchToolIntentResponse.Record);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchAnswerEntity.Record and conformance SearchAnswerEntity.Record()
{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity.Record and conformance SearchAnswerEntity.Record;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity.Record and conformance SearchAnswerEntity.Record)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity.Record and conformance SearchAnswerEntity.Record);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchAnswerEntity.Record(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SearchAnswerEntity.Record(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchToolIntentResponse.Record(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SearchToolIntentResponse.Record(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.Record.CodingKeys and conformance SearchToolIntentResponse.Record.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchToolIntentResponse.SearchItemIdentifier and conformance SearchToolIntentResponse.SearchItemIdentifier()
{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier and conformance SearchToolIntentResponse.SearchItemIdentifier;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier and conformance SearchToolIntentResponse.SearchItemIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier and conformance SearchToolIntentResponse.SearchItemIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAnswerEntity.Record.CodingKeys and conformance SearchAnswerEntity.Record.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of SearchEntity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t specialized Collection._copyToContiguousArray()(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v10 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v10 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v10 = BYTE6(a2);
LABEL_6:
      if (!v10)
      {
        goto LABEL_9;
      }

      v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
      v14 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      (*(v5 + 8))(v9, v4);
      if (v14 != v10)
      {
        __break(1u);
LABEL_9:
        outlined consume of Data._Representation(a1, a2);
        return MEMORY[0x277D84F90];
      }

      return v13;
  }
}

uint64_t specialized Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
      {
        goto LABEL_14;
      }

LABEL_9:
      MEMORY[0x25F899010]();
LABEL_10:
      result = static String._fromUTF8Repairing(_:)();
      v6 = *MEMORY[0x277D85DE8];
      return result;
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (__DataStorage._bytes.getter() && __OFSUB__(v2, __DataStorage._offset.getter()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      goto LABEL_10;
  }
}

_BYTE *storeEnumTagSinglePayload for SearchAnswerEntity.Record.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SearchToolIntentResponse.Record.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.SearchItemIdentifier.CodingKeys and conformance SearchToolIntentResponse.SearchItemIdentifier.CodingKeys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchToolIntentResponse.SearchItemIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t OUTLINED_FUNCTION_6_26(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

BOOL OUTLINED_FUNCTION_44_20()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t one-time initialization function for searchComponents()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.searchComponents);
  __swift_project_value_buffer(v0, static Logging.searchComponents);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for memoryCreationQU()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.memoryCreationQU);
  OUTLINED_FUNCTION_6_27();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for hallucination()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.hallucination);
  OUTLINED_FUNCTION_6_27();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for answerResolution()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.answerResolution);
  OUTLINED_FUNCTION_6_27();
  return OUTLINED_FUNCTION_3_41();
}

uint64_t one-time initialization function for interface(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t Logging.searchSignposter.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);

  return __swift_project_value_buffer(v5, a3);
}

uint64_t one-time initialization function for server()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.server);
  OUTLINED_FUNCTION_6_27();
  return OUTLINED_FUNCTION_3_41();
}

uint64_t one-time initialization function for searchSignposter(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v10, a2);
  __swift_project_value_buffer(v10, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v11 = OUTLINED_FUNCTION_6_27();
  (*(v6 + 16))(v9, v11, v5);
  return OSSignposter.init(logger:)();
}

uint64_t static Logging.interface.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return Logger.init(subsystem:category:)();
}

uint64_t OUTLINED_FUNCTION_6_27()
{

  return __swift_project_value_buffer(v0, v1);
}

uint64_t *MemoryCreationQUController.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_26_18();
  }

  return &static MemoryCreationQUController.shared;
}

id LLMQUParse.__allocating_init(parse:performanceMetrics:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_111());
  v1 = OUTLINED_FUNCTION_119();
  return LLMQUParse.init(parse:performanceMetrics:)(v1, v2);
}

id LLMQUParse.init(parse:performanceMetrics:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC10OmniSearch10LLMQUParse_parse] = a1;
  *&v2[OBJC_IVAR____TtC10OmniSearch10LLMQUParse_performanceMetrics] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LLMQUParse();
  return objc_msgSendSuper2(&v4, sel_init);
}

id LLMQUParse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LLMQUParse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LLMQUParse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void MemoryCreationQUController.__allocating_init(llmQUNetworkService:ecrClient:queryParser:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = swift_allocObject();
  v10 = v7[3];
  v9 = v7[4];
  __swift_mutable_project_boxed_opaque_existential_1(v7, v10);
  OUTLINED_FUNCTION_19_14();
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  v15 = OUTLINED_FUNCTION_65_18(v14);
  v16(v15);
  v17 = *(v3 + 24);
  v18 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v17);
  OUTLINED_FUNCTION_19_14();
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  v23 = OUTLINED_FUNCTION_163_2(v22);
  v24(v23);
  specialized MemoryCreationQUController.init(llmQUNetworkService:ecrClient:queryParser:)(v0, v5, v1, v8, v10, v17, v9, v18);
  v25 = OUTLINED_FUNCTION_111();
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_148();
}

uint64_t static MemoryCreationQUController.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_26_18();
  }
}

uint64_t MemoryCreationQUController.llmQUNetworkService.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_64_1();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  outlined init with take of ResponseOverrideMatcherProtocol(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t MemoryCreationQUController.ecrClient.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_64_1();
  outlined assign with take of ECRClientProtocol?(a1, v1 + 56);
  return swift_endAccess();
}

uint64_t MemoryCreationQUController.queryParser.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_64_1();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
  outlined init with take of ResponseOverrideMatcherProtocol(a1, v1 + 96);
  return swift_endAccess();
}

void MemoryCreationQUController.init(llmQUNetworkService:ecrClient:queryParser:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = *(v8 + 24);
  v10 = *(v8 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v11);
  OUTLINED_FUNCTION_19_14();
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v16 = OUTLINED_FUNCTION_65_18(v15);
  v17(v16);
  v18 = *(v5 + 24);
  v19 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v18);
  OUTLINED_FUNCTION_19_14();
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_36();
  v24 = OUTLINED_FUNCTION_163_2(v23);
  v25(v24);
  specialized MemoryCreationQUController.init(llmQUNetworkService:ecrClient:queryParser:)(v1, v7, v2, v3, v11, v18, v10, v19);
  v26 = OUTLINED_FUNCTION_111();
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  OUTLINED_FUNCTION_148();
}

uint64_t MemoryCreationQUController.prewarm(originatorPID:modelType:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_133();
  (*(v5 + 104))(v12);
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v7 + 8))(a1, a2, v6, v7);
  v8 = __swift_destroy_boxed_opaque_existential_1Tm(v12);
  (*(*v2 + 152))(v12, v8);
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 16))(v9, v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t MemoryCreationQUController.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:)()
{
  OUTLINED_FUNCTION_48();
  *(v1 + 256) = v21;
  *(v1 + 264) = v0;
  *(v1 + 185) = v20;
  *(v1 + 240) = v2;
  *(v1 + 248) = v3;
  *(v1 + 224) = v4;
  *(v1 + 232) = v5;
  *(v1 + 208) = v6;
  *(v1 + 216) = v7;
  *(v1 + 192) = v8;
  *(v1 + 200) = v9;
  v10 = type metadata accessor for Date();
  *(v1 + 272) = v10;
  v11 = *(v10 - 8);
  OUTLINED_FUNCTION_28_0();
  *(v1 + 280) = v12;
  v14 = *(v13 + 64) + 15;
  *(v1 + 288) = swift_task_alloc();
  *(v1 + 296) = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 320) = v0;

  if (v0)
  {
    v9 = MemoryCreationQUController.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:);
  }

  else
  {
    v9 = MemoryCreationQUController.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  OUTLINED_FUNCTION_72();
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[33];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  Date.init()();
  Date.timeIntervalSince(_:)();
  dispatch thunk of MemoryCreationQUPerformanceMetrics.llmQUModelLatency.setter();
  v5 = *(*v4 + 208);
  v13 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = MemoryCreationQUController.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:);
  v8 = v0[38];
  v9 = v0[33];
  v10 = v0[25];
  v11 = OUTLINED_FUNCTION_49_4(v0[24]);

  return v13(v11);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_47();
  *v6 = v5;
  v8 = *(v7 + 328);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  *(v5 + 336) = v0;

  if (!v0)
  {
    *(v5 + 344) = v3;
  }

  outlined destroy of MemoryCreationQUModelResponse(v5 + 16);
  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_72();
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);

  OUTLINED_FUNCTION_62();
  v8 = v0[43];

  return v7(v8);
}

{
  OUTLINED_FUNCTION_78();
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[34];
  v4 = v0[35];

  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  v5 = v0[40];
  v7 = v0[36];
  v6 = v0[37];

  OUTLINED_FUNCTION_127();

  return v8();
}

{
  OUTLINED_FUNCTION_72();
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  v7 = v0[42];
  v9 = v0[36];
  v8 = v0[37];

  OUTLINED_FUNCTION_127();

  return v10();
}

void MemoryCreationQUController.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:)()
{
  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_3_42();
  }

  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logging.memoryCreationQU);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v47 = *(v0 + 185);
    v45 = *(v0 + 240);
    v46 = *(v0 + 248);
    v43 = *(v0 + 224);
    v44 = *(v0 + 232);
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 136316418;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v13 + 12) = 2080;
    v14 = MEMORY[0x277D837D0];
    MEMORY[0x25F89F8A0](v10, MEMORY[0x277D837D0]);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v13 + 14) = v15;
    *(v13 + 22) = 2080;
    v16 = OUTLINED_FUNCTION_118_0();
    MEMORY[0x25F89F8A0](v16);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v13 + 24) = v17;
    *(v13 + 32) = 2080;
    MEMORY[0x25F89F8A0](v43, v14);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v13 + 34) = v18;
    *(v13 + 42) = 2080;
    *(v0 + 160) = v44;
    *(v0 + 168) = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v13 + 44) = v19;
    *(v13 + 52) = 2080;
    *(v0 + 176) = v46;
    *(v0 + 184) = v47 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v13 + 54) = v20;
    OUTLINED_FUNCTION_57_14();
    _os_log_impl(v21, v22, v23, v24, v13, 0x3Eu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v25 = *(v0 + 296);
  v26 = *(v0 + 264);
  v27 = *(v0 + 185);
  v28 = type metadata accessor for MemoryCreationQUPerformanceMetrics();
  OUTLINED_FUNCTION_53_0(v28);
  swift_allocObject();
  *(v0 + 304) = MemoryCreationQUPerformanceMetrics.init()();
  v29 = Date.init()();
  (*(*v26 + 104))(v29);
  v30 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1((v0 + 120), *(v0 + 144));
  v31 = *(OUTLINED_FUNCTION_104_9() + 16);
  OUTLINED_FUNCTION_28_0();
  v48 = v32 + *v32;
  v34 = *(v33 + 4);
  v35 = swift_task_alloc();
  *(v0 + 312) = v35;
  *v35 = v0;
  v35[1] = MemoryCreationQUController.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:);
  v36 = *(v0 + 232);
  v37 = *(v0 + 240);
  v38 = *(v0 + 216);
  v39 = *(v0 + 224);
  v40 = *(v0 + 200);
  v41 = *(v0 + 208);
  v42 = *(v0 + 192);
  v51 = *(v0 + 256);
  v50 = *(v0 + 248);

  __asm { BRAA            X8, X16 }
}

uint64_t MemoryCreationQUController.parse(_:quResponseJSONString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  return OUTLINED_FUNCTION_3_11();
}

uint64_t MemoryCreationQUController.parse(_:quResponseJSONString:)()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  MemoryCreationQUModelResponse.init(jsonString:)((v0 + 16), v3);
  if (v4)
  {
    OUTLINED_FUNCTION_127();

    return v5();
  }

  else
  {
    v7 = *(v0 + 152);
    v8 = type metadata accessor for MemoryCreationQUPerformanceMetrics();
    OUTLINED_FUNCTION_53_0(v8);
    swift_allocObject();
    *(v0 + 160) = MemoryCreationQUPerformanceMetrics.init()();
    v9 = *(*v7 + 208);
    v15 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 168) = v11;
    *v11 = v0;
    v11[1] = MemoryCreationQUController.parse(_:quResponseJSONString:);
    v12 = *(v0 + 152);
    v13 = *(v0 + 128);
    v14 = OUTLINED_FUNCTION_49_4(*(v0 + 120));

    return v15(v14);
  }
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_47();
  *v6 = v5;
  v8 = *(v7 + 168);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  *(v5 + 176) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_20_4();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 160);
    outlined destroy of MemoryCreationQUModelResponse(v5 + 16);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 160);

  outlined destroy of MemoryCreationQUModelResponse(v0 + 16);
  v2 = *(v0 + 176);
  OUTLINED_FUNCTION_127();

  return v3();
}

uint64_t MemoryCreationQUController.parse(_:quResponse:performanceMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_133();
  v5[7] = v6;
  v7 = type metadata accessor for MemoryCreationQUParseSortOrder();
  v5[8] = v7;
  v8 = *(v7 - 8);
  OUTLINED_FUNCTION_28_0();
  v5[9] = v9;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  OUTLINED_FUNCTION_133();
  v13 = *(v12 + 248);
  v18 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v5[12] = v15;
  *v15 = v5;
  OUTLINED_FUNCTION_84(v15);
  v16 = OUTLINED_FUNCTION_116_1();

  return v18(v16);
}

uint64_t MemoryCreationQUController.parse(_:quResponse:performanceMetrics:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t MemoryCreationQUController.parse(_:quResponse:performanceMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  v15 = v14[4];
  if (v15[9] == 7562617 && v15[10] == 0xE300000000000000)
  {
    HIDWORD(v59) = 1;
  }

  else
  {
    HIDWORD(v59) = OUTLINED_FUNCTION_69_12();
    v15 = v14[4];
  }

  if (v15[11] == 7562617 && v15[12] == 0xE300000000000000)
  {
    LODWORD(v59) = 1;
  }

  else
  {
    LODWORD(v59) = OUTLINED_FUNCTION_69_12();
    v15 = v14[4];
  }

  v58 = v14[13];
  v19 = v14[10];
  v18 = v14[11];
  v21 = v14[8];
  v20 = v14[9];
  v22 = v14[6];
  v23 = v14[7];
  v25 = v14[2];
  v24 = v14[3];
  OUTLINED_FUNCTION_133();
  (*(v26 + 240))(v15);
  v27 = *(v20 + 16);
  v28 = OUTLINED_FUNCTION_10_16();
  v29(v28);
  v30 = type metadata accessor for MemoryCreationQUParse();
  OUTLINED_FUNCTION_53_0(v30);
  swift_allocObject();
  OUTLINED_FUNCTION_104_9();

  OUTLINED_FUNCTION_116_1();
  v31 = MemoryCreationQUParse.init(query:attributes:isTrip:isOpenEndedTimeRange:sortOrder:)();
  v32 = (*(v23 + 216))(v31, v15);
  v33 = v14[10];
  v34 = v14[11];
  v35 = v14[8];
  v36 = v14[9];
  if (v32)
  {
    v37 = type metadata accessor for MemoryCreationQUError();
    lazy protocol witness table accessor for type MemoryCreationQUError and conformance MemoryCreationQUError();
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D373C8], v37);
    swift_willThrow();

    (*(v36 + 8))(v34, v35);

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_83_0();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, v58, v59, a11, a12, a13, a14);
  }

  else
  {
    v48 = v14[5];
    v49 = objc_allocWithZone(type metadata accessor for LLMQUParse());
    OUTLINED_FUNCTION_111();

    LLMQUParse.init(parse:performanceMetrics:)(v31, v48);
    (*(v36 + 8))(v34, v35);

    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_83_0();

    return v52(v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, a11, a12, a13, a14);
  }
}

void static MemoryCreationQUController.isParseEmpty(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v20;
  a20 = v21;
  v22 = type metadata accessor for MemoryCreationQUParseSortOrder();
  OUTLINED_FUNCTION_19_14();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_109();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = MemoryCreationQUParse.attributes.getter();
  v35 = specialized Array.count.getter(v34);

  if (v35 <= 0 && (MemoryCreationQUParse.isTrip.getter() & 1) == 0 && (MemoryCreationQUParse.isOpenEndedTimeRange.getter() & 1) == 0)
  {
    MemoryCreationQUParse.sortOrder.getter();
    v36 = *(v24 + 104);
    v36(v30, *MEMORY[0x277D374C0], v22);
    v37 = specialized == infix<A>(_:_:)(v33, v30);
    v38 = *(v24 + 8);
    v39 = OUTLINED_FUNCTION_119();
    v38(v39);
    (v38)(v33, v22);
    if ((v37 & 1) == 0)
    {
      MemoryCreationQUParse.sortOrder.getter();
      v36(v30, *MEMORY[0x277D374B0], v22);
      specialized == infix<A>(_:_:)(v33, v30);
      v40 = OUTLINED_FUNCTION_119();
      v38(v40);
      (v38)(v33, v22);
    }
  }

  OUTLINED_FUNCTION_148();
}

void MemoryCreationQUController.sortOrder(prediction:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v117 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes30MemoryCreationQUParseSortOrderOSgMd, &_s15OmniSearchTypes30MemoryCreationQUParseSortOrderOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_109();
  v116 = v5 - v6;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v7);
  v115 = &v114 - v8;
  v9 = type metadata accessor for MemoryCreationQUParseSortOrder();
  OUTLINED_FUNCTION_19_14();
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_109();
  v120 = (v13 - v14);
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v15);
  v125 = &v114 - v16;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v17);
  v119 = &v114 - v18;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v19);
  v124 = &v114 - v20;
  v21 = *(v1 + 64);
  v23 = *(v21 + 64);
  v22 = v21 + 64;
  v24 = *(*(v1 + 64) + 32);
  OUTLINED_FUNCTION_1_53();
  v27 = v26 & v25;
  v29 = (v28 + 63) >> 6;
  v118 = *MEMORY[0x277D374B0];
  v129 = v30;
  v130 = (v30 + 32);
  v131 = v30 + 104;
  v122 = *MEMORY[0x277D374C0];
  v126 = v31;

  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  v127 = MEMORY[0x277D84F90];
  v123 = v29;
  v121 = v22;
LABEL_2:
  v34 = v32;
  if (!v27)
  {
    goto LABEL_4;
  }

  do
  {
    v133 = v33;
    v32 = v34;
LABEL_8:
    v35 = __clz(__rbit64(v27)) | (v32 << 6);
    v36 = (*(v126 + 48) + 16 * v35);
    v37 = *v36;
    v38 = v36[1];
    v39 = *(*(v126 + 56) + 8 * v35);
    v40 = String.lowercased()();
    v134 = v40;
    MEMORY[0x28223BE20](v40._countAndFlagsBits);
    *(&v114 - 2) = &v134;
    v132 = v39;

    v41 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v114 - 4), &outlined read-only object #0 of MemoryCreationQUController.sortOrder(prediction:));
    if (v41)
    {

      OUTLINED_FUNCTION_42_18();
      v42(v124, v122, v9);
      v43 = v133;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = *(v43 + 16);
        v57 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57, v58, v59, v43);
        v43 = v60;
      }

      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      OUTLINED_FUNCTION_58_11();
      if (v47)
      {
        v61 = OUTLINED_FUNCTION_6_28(v46);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61, v62, v63, v43);
        v43 = v64;
      }

      v48 = v124;
    }

    else
    {
      v134 = v40;
      MEMORY[0x28223BE20](v41);
      OUTLINED_FUNCTION_23_21();
      v50 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v49, &outlined read-only object #1 of MemoryCreationQUController.sortOrder(prediction:));

      if (!v50)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_42_18();
      v51(v119, v118, v9);
      v43 = v133;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = *(v43 + 16);
        v66 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66, v67, v68, v43);
        v43 = v69;
      }

      v45 = *(v43 + 16);
      v52 = *(v43 + 24);
      OUTLINED_FUNCTION_58_11();
      if (v47)
      {
        v70 = OUTLINED_FUNCTION_6_28(v53);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v70, v71, v72, v43);
        v43 = v73;
      }

      v48 = v119;
    }

    *(v43 + 16) = v40._object;
    v54 = (*(v129 + 80) + 32) & ~*(v129 + 80);
    v133 = v43;
    (*(v129 + 32))(v43 + v54 + *(v129 + 72) * v45, v48, v9);
LABEL_21:
    v27 &= v27 - 1;
    v55 = *(v132 + 16);
    if (v55)
    {
      v128 = v9;
      v74 = (v132 + 40);
      v75 = v127;
      while (1)
      {
        v76 = *(v74 - 1);
        v77 = *v74;
        v78 = String.lowercased()();
        v134 = v78;
        MEMORY[0x28223BE20](v78._countAndFlagsBits);
        OUTLINED_FUNCTION_23_21();
        v80 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v79, &outlined read-only object #0 of MemoryCreationQUController.sortOrder(prediction:));
        if (v80)
        {

          OUTLINED_FUNCTION_42_18();
          v81(v125, v122, v128);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v91 = *(v75 + 16);
            v92 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v92, v93, v94, v75);
            v75 = v95;
          }

          v83 = *(v75 + 16);
          v82 = *(v75 + 24);
          OUTLINED_FUNCTION_58_11();
          if (v47)
          {
            v96 = OUTLINED_FUNCTION_6_28(v84);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v96, v97, v98, v75);
            v75 = v99;
          }

          v85 = v125;
        }

        else
        {
          v127 = v75;
          v134 = v78;
          MEMORY[0x28223BE20](v80);
          OUTLINED_FUNCTION_23_21();
          v87 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v86, &outlined read-only object #1 of MemoryCreationQUController.sortOrder(prediction:));

          if (!v87)
          {
            v75 = v127;
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_42_18();
          v88(v120, v118, v128);
          v75 = v127;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = *(v75 + 16);
            v101 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v101, v102, v103, v75);
            v75 = v104;
          }

          v83 = *(v75 + 16);
          v89 = *(v75 + 24);
          OUTLINED_FUNCTION_58_11();
          if (v47)
          {
            v105 = OUTLINED_FUNCTION_6_28(v90);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v105, v106, v107, v75);
            v75 = v108;
          }

          v85 = v120;
        }

        *(v75 + 16) = v78._object;
        (*(v129 + 32))(v75 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v83, v85, v128);
LABEL_39:
        v74 += 2;
        if (!--v55)
        {
          v127 = v75;

          v9 = v128;
          v33 = v133;
          v29 = v123;
          v22 = v121;
          goto LABEL_2;
        }
      }
    }

    v34 = v32;
    v33 = v133;
    v29 = v123;
    v22 = v121;
  }

  while (v27);
LABEL_4:
  while (1)
  {
    v32 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v32 >= v29)
    {

      if (*(v127 + 16) == 1)
      {
        v109 = v115;
        specialized Collection.first.getter(v127, v115);

        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v109, 1, v9);
        v111 = v116;
        if (EnumTagSinglePayload == 1)
        {
          outlined destroy of IntentApplication?(v109, &_s15OmniSearchTypes30MemoryCreationQUParseSortOrderOSgMd, &_s15OmniSearchTypes30MemoryCreationQUParseSortOrderOSgMR);
          goto LABEL_45;
        }

        (*v130)(v117, v109, v9);
      }

      else
      {

        v111 = v116;
LABEL_45:
        if (*(v33 + 16) == 1)
        {
          specialized Collection.first.getter(v33, v111);

          if (__swift_getEnumTagSinglePayload(v111, 1, v9) != 1)
          {
            (*v130)(v117, v111, v9);
            goto LABEL_52;
          }

          outlined destroy of IntentApplication?(v111, &_s15OmniSearchTypes30MemoryCreationQUParseSortOrderOSgMd, &_s15OmniSearchTypes30MemoryCreationQUParseSortOrderOSgMR);
        }

        else
        {
        }

        v112 = *MEMORY[0x277D374B8];
        OUTLINED_FUNCTION_42_18();
        v113(v117);
      }

LABEL_52:
      OUTLINED_FUNCTION_148();
      return;
    }

    v27 = *(v22 + 8 * v32);
    ++v34;
    if (v27)
    {
      v133 = v33;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t MemoryCreationQUController.attributesFromLLMQUResponse(query:prediction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_3_11();
}

uint64_t MemoryCreationQUController.attributesFromLLMQUResponse(query:prediction:)()
{
  OUTLINED_FUNCTION_78();
  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_3_42();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.memoryCreationQU);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    OUTLINED_FUNCTION_57_14();
    _os_log_impl(v5, v6, v7, v8, v4, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v9 = v0[5];

  v0[2] = MEMORY[0x277D84F90];
  v10 = *v9;
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = MemoryCreationQUController.attributesFromLLMQUResponse(query:prediction:);
  v12 = v0[6];
  v13 = v0[4];
  v14 = OUTLINED_FUNCTION_49_4(v0[3]);

  return MemoryCreationQUController.attributesFromWho(query:who:)(v14, v15, v10);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 64) = v5;

  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_72();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  specialized Array.append<A>(contentsOf:)(v0[8]);
  v5 = v2[1];
  v6 = OUTLINED_FUNCTION_119();
  v9 = MemoryCreationQUController.attributesFromWhat(query:what:)(v6, v7, v8);
  specialized Array.append<A>(contentsOf:)(v9);
  v10 = v2[2];
  v11 = *(*v1 + 272);
  v12 = OUTLINED_FUNCTION_119();
  v14 = v13(v12);
  specialized Array.append<A>(contentsOf:)(v14);
  v15 = v2[3];
  v16 = OUTLINED_FUNCTION_119();
  v19 = MemoryCreationQUController.attributesFromWhere(query:where_:)(v16, v17, v18);
  specialized Array.append<A>(contentsOf:)(v19);
  v20 = v2[4];
  v21 = v2[5];
  v22 = v2[6];
  v23 = OUTLINED_FUNCTION_119();
  v28 = MemoryCreationQUController.attributesFromMusic(query:music:)(v23, v24, v25, v26, v27);
  specialized Array.append<A>(contentsOf:)(v28);
  v29 = v2[7];
  v30 = OUTLINED_FUNCTION_119();
  v33 = MemoryCreationQUController.attributesFromMood(query:mood:)(v30, v31, v32);
  specialized Array.append<A>(contentsOf:)(v33);
  v34 = v0[2];
  OUTLINED_FUNCTION_62();

  return v35();
}

uint64_t MemoryCreationQUController.attributesFromWho(query:who:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_3_11();
}

uint64_t MemoryCreationQUController.attributesFromWho(query:who:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  *(v14 + 16) = MEMORY[0x277D84F90];
  v15 = *(v14 + 40);
  v16 = *(v15 + 32);
  *(v14 + 160) = v16;
  v17 = 1 << v16;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v15 + 64);
  v20 = *MEMORY[0x277CC2270];
  *(v14 + 56) = *MEMORY[0x277CC2260];
  *(v14 + 64) = v20;
  *(v14 + 72) = *MEMORY[0x277CC2278];

  v21 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = *(v14 + 40);
LABEL_11:
      *(v14 + 80) = v19;
      *(v14 + 88) = v21;
      v29 = *(v14 + 24);
      v28 = *(v14 + 32);
      v30 = *(v22 + 48);
      OUTLINED_FUNCTION_22_20(__clz(__rbit64(v19)));
      v31 = OUTLINED_FUNCTION_197_0();

      v32 = OUTLINED_FUNCTION_116_1();
      String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v32, v33, v31);
      LOBYTE(v28) = v34;

      if ((v28 & 1) == 0)
      {
        OUTLINED_FUNCTION_33_22();
        if ((v35 & 1) == 0)
        {
          break;
        }
      }

      v19 &= v19 - 1;

      if (!v19)
      {
        goto LABEL_6;
      }
    }

    v45 = *(v14 + 32);
    v46 = *(v14 + 40);
    v47 = *(v14 + 24);
    v48 = String.subscript.getter();
    MEMORY[0x25F89F5B0](v48);
    OUTLINED_FUNCTION_51_15();
    *(v14 + 120) = v31;
    *(v14 + 128) = 1;
    if (*(v46 + 16))
    {
      v49 = *(v14 + 40);
      OUTLINED_FUNCTION_116_1();
      v50 = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v51)
      {
        OUTLINED_FUNCTION_27_20(v50);
        if (v52)
        {
          v53 = *(v14 + 56);
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = type metadata accessor for MemoryCreationQUParseAttributes();
          OUTLINED_FUNCTION_53_0(v54);
          swift_allocObject();

          OUTLINED_FUNCTION_9_33();
          MemoryCreationQUParseAttributes.init(attributeKey:range:substring:expansionStringValues:expansionDateValues:)();
          MEMORY[0x25F89F850]();
          v23 = *((*(v14 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((*(v14 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v23 >> 1)
          {
LABEL_27:
            OUTLINED_FUNCTION_26_3(v23);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }
    }

    v55 = swift_task_alloc();
    *(v14 + 136) = v55;
    *v55 = v14;
    OUTLINED_FUNCTION_2_37(v55);
    OUTLINED_FUNCTION_83_0();

    return MemoryCreationQUController.groundPerson(person:)(v56, v57);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v24 = 1 << *(v14 + 160);
      v22 = OUTLINED_FUNCTION_39_19();
      if (v26 == v27)
      {
        break;
      }

      v19 = *(v22 + 8 * v25 + 64);
      ++v21;
      if (v19)
      {
        v21 = v25;
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_83_0();

    return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, v14 + 16, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  if (one-time initialization token for memoryCreationQU != -1)
  {
LABEL_30:
    OUTLINED_FUNCTION_3_42();
  }

  v16 = *(v14 + 152);
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logging.memoryCreationQU);
  v18 = OUTLINED_FUNCTION_104_9();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v14 + 152);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = v21;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    OUTLINED_FUNCTION_57_14();
    _os_log_impl(v26, v27, v28, v29, v22, 0xCu);
    outlined destroy of IntentApplication?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v31 = *(v14 + 120);
  v30 = *(v14 + 128);
  v33 = *(v14 + 104);
  v32 = *(v14 + 112);
  v34 = *(v14 + 64);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = type metadata accessor for MemoryCreationQUParseAttributes();
  v78 = OUTLINED_FUNCTION_53_0(v35);
  swift_allocObject();
  OUTLINED_FUNCTION_71_13();

  MEMORY[0x25F89F850](v36);
  OUTLINED_FUNCTION_62_15();
  if (v38)
  {
    OUTLINED_FUNCTION_26_3(v37);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v39 = *(v14 + 152);
  OUTLINED_FUNCTION_116_1();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v79 = *(v14 + 16);
  v40 = *(v14 + 88);
  v41 = (*(v14 + 80) - 1) & *(v14 + 80);
  if (v41)
  {
    while (1)
    {
      v42 = *(v14 + 40);
LABEL_13:
      *(v14 + 80) = v41;
      *(v14 + 88) = v40;
      v48 = *(v14 + 24);
      v47 = *(v14 + 32);
      v49 = *(v42 + 48);
      OUTLINED_FUNCTION_22_20(__clz(__rbit64(v41)));
      v50 = OUTLINED_FUNCTION_197_0();

      OUTLINED_FUNCTION_116_1();
      OUTLINED_FUNCTION_25_22();
      String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v51, v52, v53);
      OUTLINED_FUNCTION_68_14();
      if ((v15 & 1) == 0)
      {
        OUTLINED_FUNCTION_33_22();
        if ((v54 & 1) == 0)
        {
          break;
        }
      }

      v41 &= v41 - 1;

      if (!v41)
      {
        goto LABEL_8;
      }
    }

    v64 = *(v14 + 32);
    v65 = *(v14 + 40);
    v66 = *(v14 + 24);
    v67 = String.subscript.getter();
    MEMORY[0x25F89F5B0](v67);
    OUTLINED_FUNCTION_51_15();
    *(v14 + 120) = v50;
    *(v14 + 128) = v15;
    if (*(v65 + 16))
    {
      v68 = *(v14 + 40);
      OUTLINED_FUNCTION_116_1();
      v69 = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v70)
      {
        OUTLINED_FUNCTION_27_20(v69);
        if (v71)
        {
          v72 = *(v14 + 56);
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_53_0(v78);
          swift_allocObject();

          OUTLINED_FUNCTION_9_33();
          MemoryCreationQUParseAttributes.init(attributeKey:range:substring:expansionStringValues:expansionDateValues:)();
          MEMORY[0x25F89F850]();
          OUTLINED_FUNCTION_24_20(*(v14 + 16));
          if (v38)
          {
            OUTLINED_FUNCTION_26_3(v73);
            OUTLINED_FUNCTION_53_14();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }
    }

    v74 = swift_task_alloc();
    *(v14 + 136) = v74;
    *v74 = v14;
    OUTLINED_FUNCTION_2_37();
    OUTLINED_FUNCTION_83_0();

    return MemoryCreationQUController.groundPerson(person:)(v75, v76);
  }

  else
  {
    while (1)
    {
LABEL_8:
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      v43 = 1 << *(v14 + 160);
      v42 = OUTLINED_FUNCTION_39_19();
      if (v45 == v46)
      {
        break;
      }

      v41 = *(v42 + 8 * v44 + 64);
      ++v40;
      if (v41)
      {
        v40 = v44;
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_83_0();

    return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, v78, v79, a12, a13, a14);
  }
}

uint64_t MemoryCreationQUController.attributesFromWho(query:who:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *(v4 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v10 + 144) = v9;
  *(v10 + 152) = v0;

  if (v0)
  {
    v11 = MemoryCreationQUController.attributesFromWho(query:who:);
  }

  else
  {
    v11 = MemoryCreationQUController.attributesFromWho(query:who:);
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

{
  v2 = *(v1 + 64);
  v3 = *(v1 + 144);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = 0;
  v5 = *(v3 + 16);
  v6 = v3 + 32;
  v7 = (v3 + 48);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 == v4)
    {
      v0 = v3;
      v3 = v73;
      v18 = *(v73 + 120);
      v17 = *(v73 + 128);
      v19 = *(v73 + 104);
      v20 = *(v73 + 112);
      v21 = type metadata accessor for MemoryCreationQUParseAttributes();
      v70 = OUTLINED_FUNCTION_53_0(v21);
      swift_allocObject();

      MemoryCreationQUParseAttributes.init(attributeKey:range:substring:expansionStringValues:expansionDateValues:)();

      MEMORY[0x25F89F850](v22);
      OUTLINED_FUNCTION_62_15();
      if (!v23)
      {
        goto LABEL_16;
      }

      goto LABEL_69;
    }

    v9 = *(v3 + 16);
    if (v4 >= v9)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v10 = *v7;
    v11 = *(*v7 + 16);
    v12 = *(v8 + 16);
    v0 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      goto LABEL_59;
    }

    v13 = *v7;

    if (!swift_isUniquelyReferenced_nonNull_native() || v0 > *(v8 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v14;
    }

    if (*(v10 + 16))
    {
      break;
    }

    if (v11)
    {
      goto LABEL_60;
    }

LABEL_14:
    v7 += 5;
    ++v4;
  }

  v9 = *(v8 + 16);
  if (((*(v8 + 24) >> 1) - v9) < v11)
  {
    goto LABEL_65;
  }

  swift_arrayInitWithCopy();

  if (!v11)
  {
    goto LABEL_14;
  }

  v15 = *(v8 + 16);
  v16 = __OFADD__(v15, v11);
  v9 = v15 + v11;
  if (!v16)
  {
    *(v8 + 16) = v9;
    goto LABEL_14;
  }

  while (1)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    OUTLINED_FUNCTION_26_3(v9);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_16:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v24 = 0;
    v71 = *(v3 + 16);
    v25 = MEMORY[0x277D84F90];
    v3 = v0;
    while (v5 != v24)
    {
      v9 = *(v3 + 16);
      if (v24 >= v9)
      {
        goto LABEL_61;
      }

      v26 = *v6;
      v27 = *(*v6 + 16);
      v28 = *(v25 + 16);
      v0 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_62;
      }

      v29 = *v6;

      if (!swift_isUniquelyReferenced_nonNull_native() || v0 > *(v25 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v25 = v30;
      }

      if (*(v26 + 16))
      {
        v9 = *(v25 + 16);
        if (((*(v25 + 24) >> 1) - v9) < v27)
        {
          goto LABEL_66;
        }

        swift_arrayInitWithCopy();

        if (v27)
        {
          v31 = *(v25 + 16);
          v16 = __OFADD__(v31, v27);
          v9 = v31 + v27;
          if (v16)
          {
            goto LABEL_68;
          }

          *(v25 + 16) = v9;
        }
      }

      else
      {

        if (v27)
        {
          goto LABEL_63;
        }
      }

      v6 += 40;
      ++v24;
    }

    v3 = v73;
    v32 = *(v73 + 144);

    v33 = *(v73 + 128);
    if (*(v25 + 16))
    {
      v35 = *(v73 + 112);
      v34 = *(v73 + 120);
      v36 = *(v73 + 104);
      v37 = *(v73 + 72);
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_53_0(v70);
      swift_allocObject();
      MemoryCreationQUParseAttributes.init(attributeKey:range:substring:expansionStringValues:expansionDateValues:)();
      MEMORY[0x25F89F850]();
      OUTLINED_FUNCTION_24_20(*(v73 + 16));
      if (v23)
      {
        OUTLINED_FUNCTION_26_3(v38);
        OUTLINED_FUNCTION_53_14();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v72 = *(v73 + 16);
    }

    else
    {
    }

    v39 = *(v73 + 88);
    v40 = (*(v73 + 80) - 1) & *(v73 + 80);
    v6 = 1;
    if (v40)
    {
      break;
    }

LABEL_37:
    while (1)
    {
      v9 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v42 = 1 << *(v73 + 160);
      v41 = OUTLINED_FUNCTION_39_19();
      if (v44 == v16)
      {

        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_115();

        __asm { BRAA            X2, X16 }
      }

      v40 = *(v41 + 8 * v43 + 64);
      ++v39;
      if (v40)
      {
        v39 = v43;
        goto LABEL_42;
      }
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  while (1)
  {
    v41 = *(v73 + 40);
LABEL_42:
    *(v73 + 80) = v40;
    *(v73 + 88) = v39;
    v46 = *(v73 + 24);
    v45 = *(v73 + 32);
    v47 = *(v41 + 48);
    OUTLINED_FUNCTION_22_20(__clz(__rbit64(v40)));
    v48 = OUTLINED_FUNCTION_197_0();

    OUTLINED_FUNCTION_116_1();
    OUTLINED_FUNCTION_25_22();
    String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v49, v50, v51);
    OUTLINED_FUNCTION_68_14();
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_33_22();
      if ((v52 & 1) == 0)
      {
        break;
      }
    }

    v40 &= v40 - 1;

    if (!v40)
    {
      goto LABEL_37;
    }
  }

  v55 = *(v73 + 40);
  v56 = *(v73 + 32);
  v57 = *(v73 + 24);
  v58 = String.subscript.getter();
  MEMORY[0x25F89F5B0](v58);
  OUTLINED_FUNCTION_51_15();
  *(v73 + 120) = v48;
  *(v73 + 128) = v5;
  if (*(v55 + 16))
  {
    v59 = *(v73 + 40);
    OUTLINED_FUNCTION_116_1();
    v60 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v61)
    {
      OUTLINED_FUNCTION_27_20(v60);
      if (v62)
      {
        v63 = *(v73 + 56);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_53_0(v70);
        swift_allocObject();

        OUTLINED_FUNCTION_9_33();
        MemoryCreationQUParseAttributes.init(attributeKey:range:substring:expansionStringValues:expansionDateValues:)();
        MEMORY[0x25F89F850]();
        OUTLINED_FUNCTION_24_20(*(v73 + 16));
        if (v23)
        {
          OUTLINED_FUNCTION_26_3(v64);
          OUTLINED_FUNCTION_53_14();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }
  }

  v65 = swift_task_alloc();
  *(v73 + 136) = v65;
  *v65 = v73;
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_115();

  return MemoryCreationQUController.groundPerson(person:)(v66, v67);
}

uint64_t MemoryCreationQUController.attributesFromWhat(query:what:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return MemoryCreationQUController.attributesFromWhat(query:what:)(a1, a2, a3);
}

{
  v3 = a3;
  v4 = MEMORY[0x277D84F90];
  v6 = a3 + 64;
  v5 = *(a3 + 64);
  v36 = MEMORY[0x277D84F90];
  v7 = *(a3 + 32);
  OUTLINED_FUNCTION_1_53();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v32 = *v13;

  v15 = 0;
  v33 = v4;
  v34 = v6;
  v35 = v3;
  while (v10)
  {
LABEL_7:
    OUTLINED_FUNCTION_7_31();
    v17 = *(v3 + 48);
    OUTLINED_FUNCTION_28_21();
    v19 = *v18;
    v20 = v18[1];
    type metadata accessor for FeatureFlagService();
    v21 = OUTLINED_FUNCTION_197_0();

    String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v19, v20, v21);
    v23 = v22;

    if (v23 & 1) != 0 || (Range<>.init(_:in:)(), (v24))
    {

      v3 = v35;
      v6 = v34;
    }

    else
    {
      v25 = String.subscript.getter();
      MEMORY[0x25F89F5B0](v25);

      if (*(v35 + 16))
      {
        v26 = specialized __RawDictionaryStorage.find<A>(_:)();
        v28 = v27;

        v6 = v34;
        if (v28)
        {
          v29 = *(*(v35 + 56) + 8 * v26);
        }
      }

      else
      {

        v6 = v34;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = type metadata accessor for MemoryCreationQUParseAttributes();
      OUTLINED_FUNCTION_53_0(v30);
      swift_allocObject();
      MemoryCreationQUParseAttributes.init(attributeKey:range:substring:expansionStringValues:expansionDateValues:)();

      MEMORY[0x25F89F850](v31);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v3 = v35;
      v33 = v36;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return v33;
    }

    v10 = *(v6 + 8 * v16);
    ++v15;
    if (v10)
    {
      v15 = v16;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void MemoryCreationQUController.attributesFromWhen(query:when:)()
{
  OUTLINED_FUNCTION_155();
  v81 = v0;
  v2 = v1;
  v4 = v3;
  v90 = v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR);
  OUTLINED_FUNCTION_19_14();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_109();
  v82 = v9 - v10;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v11);
  v88 = &v65 - v14;
  v15 = MEMORY[0x277D84F90];
  v17 = v2 + 64;
  v16 = *(v2 + 64);
  v100 = MEMORY[0x277D84F90];
  v18 = 1 << *(v2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v85 = "/\\$time.iso\\((.*)\\)/";
  v86 = "OmniSearch.LLMQUParse";
  v79 = v13 + 16;
  v78 = v12 + 7;
  v77 = v13 + 32;
  v84 = *MEMORY[0x277CC2230];
  v80 = v13;
  v83 = (v13 + 8);
  v94 = v2;

  v22 = 0;
  v89 = v15;
  v93 = v21;
  while (v20)
  {
LABEL_9:
    while (1)
    {
      OUTLINED_FUNCTION_7_31();
      v24 = *(v94 + 48);
      OUTLINED_FUNCTION_28_21();
      v26 = *v25;
      v27 = v25[1];
      v91 = type metadata accessor for FeatureFlagService();
      v28 = OUTLINED_FUNCTION_197_0();

      v92 = v26;
      v29 = String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v26, v27, v28);
      v31 = v30;
      v32 = v4;
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        Range<>.init(_:in:)();
        if ((v35 & 1) == 0)
        {
          break;
        }
      }

      v4 = v32;
    }

    v70 = v31;
    v73 = v29;
    v74 = v32;
    v36 = String.subscript.getter();
    v37 = MEMORY[0x25F89F5B0](v36);
    v71 = v38;

    v39 = v92;
    v40 = OUTLINED_FUNCTION_10_16();
    v42 = specialized Dictionary.subscript.getter(v40, v41, v94);
    OUTLINED_FUNCTION_128_2();
    v43 = swift_allocObject();
    v76 = v43;
    v44 = MEMORY[0x277D84F90];
    *(v43 + 16) = MEMORY[0x277D84F90];
    v89 = v43 + 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_SstMd, &_sSs_SstMR);
    Regex.init(_regexString:version:)();
    v75 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    outlined bridged method (mbnn) of @objc NSDateFormatter.dateFormat.setter(0xD000000000000015, v85 | 0x8000000000000000, v75);
    OUTLINED_FUNCTION_10_16();
    v95 = String.lowercased()();
    v98 = 7300961;
    v99 = 0xE300000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v45 = StringProtocol.contains<A>(_:)();

    v72 = v37;
    if (v45)
    {

      v46 = v27;
      v69 = v44;
    }

    else
    {
      v69 = v42;
      if (v42 && v42[2])
      {
        v47 = v42[4];
        v46 = v42[5];
        goto LABEL_19;
      }

      v46 = v27;
      v39 = v92;
    }

    v47 = v39;
LABEL_19:
    swift_bridgeObjectRetain_n();
    type metadata accessor for MemoryCreationQUDateGroundingHeuristics();
    OUTLINED_FUNCTION_197_0();
    OUTLINED_FUNCTION_197_0();
    v92 = v47;
    MemoryCreationQUDateGroundingHeuristics.groundDateHeuristics(_:rawDateString:featureFlagService:)();
    v49 = v48;

    v50 = v89;
    swift_beginAccess();
    v51 = *v50;
    *v50 = v49;

    if (specialized Array.count.getter(v49))
    {
    }

    else
    {
      OUTLINED_FUNCTION_133();
      (*(v52 + 152))(&v95);
      v91 = v96;
      v67 = v97;
      v68 = __swift_project_boxed_opaque_existential_1(&v95, v96);
      v53 = v80;
      v54 = v87;
      (*(v80 + 16))(v82, v88, v87);
      v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v56 = (v78 + v55) & 0xFFFFFFFFFFFFFFF8;
      v57 = swift_allocObject();
      *(v57 + 16) = v92;
      *(v57 + 24) = v46;
      (*(v53 + 32))(v57 + v55, v82, v54);
      v58 = v75;
      *(v57 + v56) = v75;
      *(v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
      v59 = v67;
      v66 = *(v67 + 8);

      v60 = v58;
      v50 = v89;

      v66(v92, v46, partial apply for closure #1 in MemoryCreationQUController.attributesFromWhen(query:when:), v57, v91, v59);

      __swift_destroy_boxed_opaque_existential_1Tm(&v95._countAndFlagsBits);
    }

    v21 = v93;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = *v50;
    v62 = type metadata accessor for MemoryCreationQUParseAttributes();
    OUTLINED_FUNCTION_53_0(v62);
    swift_allocObject();

    MemoryCreationQUParseAttributes.init(attributeKey:range:substring:expansionStringValues:expansionDateValues:)();
    MEMORY[0x25F89F850]();
    OUTLINED_FUNCTION_24_20(v100);
    if (v64)
    {
      OUTLINED_FUNCTION_26_3(v63);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v89 = v100;

    (*v83)(v88, v87);

    v4 = v74;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      OUTLINED_FUNCTION_148();
      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void closure #1 in MemoryCreationQUController.attributesFromWhen(query:when:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v41 - v14;
  if (!a1)
  {
    goto LABEL_8;
  }

  v43 = a4;
  v44 = a5;
  v42 = a6 + 16;
  v16 = one-time initialization token for memoryCreationQU;
  v17 = a1;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logging.memoryCreationQU);
  v19 = v17;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  v45 = v19;

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41[1] = a3;
    v24 = v23;
    *v22 = 138412290;
    v25 = v45;
    *(v22 + 4) = v45;
    *v23 = a1;
    v26 = v25;
    _os_log_impl(&dword_25D85C000, v20, v21, "QP parse: %@", v22, 0xCu);
    outlined destroy of IntentApplication?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F8A1050](v24, -1, -1);
    MEMORY[0x25F8A1050](v22, -1, -1);
  }

  v27 = String.count.getter();
  (*(v12 + 16))(v15, v43, v11);
  v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v29 = (v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v12 + 32))(v30 + v28, v15, v11);
  v31 = v44;
  *(v30 + v29) = v44;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for closure #1 in closure #1 in MemoryCreationQUController.attributesFromWhen(query:when:);
  *(v32 + 24) = v30;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_6;
  v33 = _Block_copy(aBlock);
  v34 = v31;

  v35 = v45;
  [v45 enumerateAttributesInRange:0 options:v27 usingBlock:0, v33];

  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
LABEL_8:
    if (one-time initialization token for memoryCreationQU != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logging.memoryCreationQU);

    v45 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v45, v37, "No QP parse for date string: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x25F8A1050](v39, -1, -1);
      MEMORY[0x25F8A1050](v38, -1, -1);
    }

    else
    {
      v40 = v45;
    }
  }
}

void closure #1 in closure #1 in MemoryCreationQUController.attributesFromWhen(query:when:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7)
{
  v99 = a7;
  v100 = a6;
  v8 = type metadata accessor for Date();
  v104 = *(v8 - 8);
  v105 = v8;
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v8);
  v98 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v103 = &v93 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v102 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v101 = &v93 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v93 - v19;
  MEMORY[0x28223BE20](v21);
  v106 = &v93 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v93 - v24;
  MEMORY[0x28223BE20](v26);
  v107 = &v93 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v93 - v34;
  v36 = MEMORY[0x25F89F4C0](0x536574614450516BLL, 0xEC00000074726174, v33);
  specialized Dictionary.subscript.getter(v36, a1);

  if (v110)
  {
    if (swift_dynamicCast())
    {
      v37 = v108;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v109, &_sypSgMd, &_sypSgMR);
    v37 = 0;
  }

  v38 = MEMORY[0x25F89F4C0](0x456574614450516BLL, 0xEA0000000000646ELL);
  specialized Dictionary.subscript.getter(v38, a1);

  if (!v110)
  {
    outlined destroy of IntentApplication?(v109, &_sypSgMd, &_sypSgMR);
LABEL_15:

    if (one-time initialization token for memoryCreationQU != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logging.memoryCreationQU);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_31;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "No start and end dates in attributed parse from QP";
    goto LABEL_30;
  }

  if (swift_dynamicCast())
  {
    v39 = v108;
  }

  else
  {
    v39 = 0;
  }

  if (!v37 || !v39)
  {
    goto LABEL_15;
  }

  specialized BidirectionalCollection<>.firstMatch<A, B>(of:)();

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GMR);
  if (__swift_getEnumTagSinglePayload(v35, 1, v40) == 1)
  {
    outlined destroy of IntentApplication?(v35, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
    v41 = 0;
    v97 = 0;
    v96 = 0;
    v42 = 0;
  }

  else
  {
    Regex.Match.output.getter();

    v41 = v111;
    v97 = v112;
    v42 = v114;
    v96 = v113;
    (*(*(v40 - 8) + 8))(v35, v40);
  }

  specialized BidirectionalCollection<>.firstMatch<A, B>(of:)();

  if (__swift_getEnumTagSinglePayload(v31, 1, v40) == 1)
  {
    outlined destroy of IntentApplication?(v31, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
    goto LABEL_26;
  }

  v48 = v41;
  Regex.Match.output.getter();

  v50 = v111;
  v49 = v112;
  v52 = v113;
  v51 = v114;
  (*(*(v40 - 8) + 8))(v31, v40);
  if (!v42 || !v51)
  {
LABEL_26:

    if (one-time initialization token for memoryCreationQU != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logging.memoryCreationQU);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_31;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Start and end dates not able to be extracted from QP output";
LABEL_30:
    _os_log_impl(&dword_25D85C000, v44, v45, v47, v46, 2u);
    MEMORY[0x25F8A1050](v46, -1, -1);
LABEL_31:

    return;
  }

  v95 = v52;
  v94 = v49;
  v53 = v97;
  v54 = v96;
  if (specialized static StringProtocol.== infix<A>(_:_:)(v48, v97, v96, v42, 48, 0xE100000000000000))
  {

    v55 = v107;
    static Date.distantPast.getter();
    v56 = v105;
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v105);
    v57 = v103;
  }

  else
  {
    v59 = MEMORY[0x25F89F5B0](v48, v53, v54, v42);
    v61 = v60;

    v62 = MEMORY[0x25F89F4C0](v59, v61);

    v63 = [v100 0x1FB2547D9];

    v64 = v103;
    if (v63)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v65 = 0;
    }

    else
    {
      v65 = 1;
    }

    v55 = v107;
    v56 = v105;
    __swift_storeEnumTagSinglePayload(v25, v65, 1, v105);
    outlined init with take of Date?(v25, v55);
    v57 = v64;
  }

  v66 = v94;
  v67 = v95;
  v68 = specialized static StringProtocol.== infix<A>(_:_:)(v50, v94, v95, v51, 0x3633383437343132, 0xEA00000000003734);
  v69 = v50;
  v70 = v101;
  if (v68)
  {

    v71 = v106;
    static Date.distantFuture.getter();
    __swift_storeEnumTagSinglePayload(v71, 0, 1, v56);
    v72 = v104;
    v73 = v102;
  }

  else
  {
    v74 = MEMORY[0x25F89F5B0](v69, v66, v67, v51);
    v76 = v75;

    v77 = MEMORY[0x25F89F4C0](v74, v76);

    v78 = [v100 dateFromString_];

    if (v78)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v79 = 0;
    }

    else
    {
      v79 = 1;
    }

    v72 = v104;
    v73 = v102;
    __swift_storeEnumTagSinglePayload(v20, v79, 1, v56);
    v80 = v20;
    v71 = v106;
    outlined init with take of Date?(v80, v106);
  }

  outlined init with copy of Date?(v55, v70, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (__swift_getEnumTagSinglePayload(v70, 1, v56) == 1)
  {
    v73 = v70;
  }

  else
  {
    v81 = *(v72 + 32);
    v81(v57, v70, v56);
    outlined init with copy of Date?(v71, v73, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (__swift_getEnumTagSinglePayload(v73, 1, v56) != 1)
    {
      v86 = v98;
      v81(v98, v73, v56);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v88 = Date._bridgeToObjectiveC()().super.isa;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_25DBE01C0;
      *(v89 + 32) = isa;
      *(v89 + 40) = v88;
      v90 = *(v72 + 8);
      v90(v86, v56);
      v90(v57, v56);
      outlined destroy of IntentApplication?(v71, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(v55, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v91 = v99;
      swift_beginAccess();
      v92 = *v91;
      *v91 = v89;

      return;
    }

    (*(v72 + 8))(v57, v56);
  }

  outlined destroy of IntentApplication?(v73, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (one-time initialization token for memoryCreationQU != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  __swift_project_value_buffer(v82, static Logging.memoryCreationQU);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_25D85C000, v83, v84, "Unable to create start and end dates from QP", v85, 2u);
    MEMORY[0x25F8A1050](v85, -1, -1);
  }

  outlined destroy of IntentApplication?(v71, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of IntentApplication?(v55, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t MemoryCreationQUController.attributesFromMusic(query:music:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
  v8 = a5 + 64;
  v7 = *(a5 + 64);
  v9 = *(a5 + 32);
  OUTLINED_FUNCTION_1_53();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v72 = *MEMORY[0x277CC2258];

  v16 = 0;
  v75 = v6;
  while (v12)
  {
LABEL_7:
    OUTLINED_FUNCTION_7_31();
    v18 = *(a5 + 48);
    OUTLINED_FUNCTION_28_21();
    v21 = *v19;
    v20 = v19[1];
    type metadata accessor for FeatureFlagService();
    v22 = OUTLINED_FUNCTION_197_0();

    v23 = OUTLINED_FUNCTION_10_16();
    String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v23, v24, v22);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      OUTLINED_FUNCTION_113_8();
      result = Range<>.init(_:in:)();
      if ((v27 & 1) == 0)
      {
        v28 = String.subscript.getter();
        MEMORY[0x25F89F5B0](v28);

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = type metadata accessor for MemoryCreationQUParseAttributes();
        OUTLINED_FUNCTION_53_0(v29);
        swift_allocObject();
        OUTLINED_FUNCTION_71_13();

        MEMORY[0x25F89F850](v30);
        v31 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v31);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        OUTLINED_FUNCTION_113_8();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v75 = v78;
      }
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v17 >= v14)
    {
      break;
    }

    v12 = *(v8 + 8 * v17);
    ++v16;
    if (v12)
    {
      v16 = v17;
      goto LABEL_7;
    }
  }

  v32 = *(a3 + 64);
  v33 = *(a3 + 32);
  OUTLINED_FUNCTION_1_53();
  v36 = v35 & v34;
  v38 = (v37 + 63) >> 6;
  v73 = *MEMORY[0x277CC2248];

  v39 = 0;
  while (v36)
  {
LABEL_18:
    OUTLINED_FUNCTION_7_31();
    v41 = *(a3 + 48);
    OUTLINED_FUNCTION_28_21();
    v43 = *v42;
    v44 = v42[1];
    type metadata accessor for FeatureFlagService();
    v45 = OUTLINED_FUNCTION_197_0();

    String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v43, v44, v45);
    LOBYTE(v43) = v46;

    if ((v43 & 1) == 0)
    {
      OUTLINED_FUNCTION_10_16();
      result = Range<>.init(_:in:)();
      if ((v47 & 1) == 0)
      {
        v48 = String.subscript.getter();
        MEMORY[0x25F89F5B0](v48);

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = type metadata accessor for MemoryCreationQUParseAttributes();
        OUTLINED_FUNCTION_53_0(v49);
        swift_allocObject();
        OUTLINED_FUNCTION_71_13();

        MEMORY[0x25F89F850](v50);
        v51 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v51 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v51);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        OUTLINED_FUNCTION_10_16();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v75 = v78;
      }
    }
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v40 >= v38)
    {

      v52 = *(a4 + 64);
      v53 = *(a4 + 32);
      OUTLINED_FUNCTION_1_53();
      v56 = v55 & v54;
      v58 = (v57 + 63) >> 6;
      v77 = *MEMORY[0x277CC2250];

      v59 = 0;
      while (v56)
      {
LABEL_29:
        v56 &= v56 - 1;
        v61 = *(a4 + 48);
        OUTLINED_FUNCTION_28_21();
        v63 = *v62;
        v64 = v62[1];
        type metadata accessor for FeatureFlagService();
        v65 = OUTLINED_FUNCTION_197_0();

        String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v63, v64, v65);
        LOBYTE(v63) = v66;

        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_118_0();
          result = Range<>.init(_:in:)();
          if ((v67 & 1) == 0)
          {
            v68 = String.subscript.getter();
            MEMORY[0x25F89F5B0](v68);

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = type metadata accessor for MemoryCreationQUParseAttributes();
            OUTLINED_FUNCTION_53_0(v69);
            swift_allocObject();
            OUTLINED_FUNCTION_71_13();

            MEMORY[0x25F89F850](v70);
            v71 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v71 >> 1)
            {
              OUTLINED_FUNCTION_26_3(v71);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            OUTLINED_FUNCTION_118_0();
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v75 = v78;
          }
        }
      }

      while (1)
      {
        v60 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_37;
        }

        if (v60 >= v58)
        {

          return v75;
        }

        v56 = *(a4 + 64 + 8 * v60);
        ++v59;
        if (v56)
        {
          v59 = v60;
          goto LABEL_29;
        }
      }
    }

    v36 = *(a3 + 64 + 8 * v40);
    ++v39;
    if (v36)
    {
      v39 = v40;
      goto LABEL_18;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t MemoryCreationQUController.groundPerson(person:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return OUTLINED_FUNCTION_3_11();
}

uint64_t MemoryCreationQUController.groundPerson(person:)()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[24];
  OUTLINED_FUNCTION_133();
  v3 = *(v2 + 128);
  v0[25] = v3;
  v0[26] = (v2 + 128) & 0xFFFFFFFFFFFFLL | 0x63CB000000000000;
  v3();
  if (v0[5])
  {
    outlined init with copy of ChatMessageRecord((v0 + 2), (v0 + 7));
    outlined destroy of IntentApplication?((v0 + 2), &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
    v4 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v5 = *(OUTLINED_FUNCTION_104_9() + 8);
    OUTLINED_FUNCTION_28_0();
    v15 = (v6 + *v6);
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v0[27] = v9;
    *v9 = v0;
    v9[1] = MemoryCreationQUController.groundPerson(person:);
    v10 = v0[23];
    v11 = OUTLINED_FUNCTION_49_4(v0[22]);

    return v15(v11);
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 2), &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
    OUTLINED_FUNCTION_62();
    v14 = MEMORY[0x277D84F90];

    return v13(v14);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 216);
  *v3 = *v1;
  *(v2 + 224) = v6;
  *(v2 + 232) = v0;

  if (v0)
  {
    v7 = MemoryCreationQUController.groundPerson(person:);
  }

  else
  {
    v7 = MemoryCreationQUController.groundPerson(person:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = v0[28];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2 = v0[28];
  if (*(v1 + 16))
  {
LABEL_2:
    OUTLINED_FUNCTION_62();

    return v3();
  }

  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_3_42();
  }

  v5 = v0[23];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logging.memoryCreationQU);
  OUTLINED_FUNCTION_104_9();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[22];
    v9 = v0[23];
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v11 = 136315138;
    OUTLINED_FUNCTION_116_1();
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_57_14();
    _os_log_impl(v12, v13, v14, v15, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v17 = v0[25];
  v16 = v0[26];
  v18 = v0[23];
  v19 = v0[24];
  v20 = v0[22];
  v0[30] = String.removePossessivePronouns()()._object;
  v17();
  if (!v0[15])
  {

    outlined destroy of IntentApplication?((v0 + 12), &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
    goto LABEL_2;
  }

  outlined init with copy of ChatMessageRecord((v0 + 12), (v0 + 17));
  outlined destroy of IntentApplication?((v0 + 12), &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
  v21 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  v22 = *(v21 + 8);
  OUTLINED_FUNCTION_28_0();
  v28 = (v23 + *v23);
  v25 = *(v24 + 4);
  v26 = swift_task_alloc();
  v0[31] = v26;
  *v26 = v0;
  OUTLINED_FUNCTION_84(v26);
  v27 = OUTLINED_FUNCTION_119();

  return v28(v27);
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_47();
  *v6 = v5;
  v8 = *(v7 + 248);
  v9 = *(v7 + 240);
  v10 = *v1;
  OUTLINED_FUNCTION_11();
  *v11 = v10;
  *(v5 + 256) = v0;

  if (!v0)
  {
    *(v5 + 264) = v3;
  }

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_48();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  v1 = *(v0 + 264);
  OUTLINED_FUNCTION_62();

  return v2();
}

{
  OUTLINED_FUNCTION_48();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 232);
  OUTLINED_FUNCTION_127();

  return v2();
}

{
  OUTLINED_FUNCTION_48();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  v1 = *(v0 + 256);
  OUTLINED_FUNCTION_127();

  return v2();
}

uint64_t MemoryCreationQUController.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  outlined destroy of IntentApplication?(v0 + 56, &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  return v0;
}

uint64_t MemoryCreationQUController.__deallocating_deinit()
{
  MemoryCreationQUController.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MemoryCreationQUControllerProtocol.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:) in conformance MemoryCreationQUController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(**v9 + 192);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = protocol witness for AnswerResolvable.extractInfo(query:results:assistantLocale:) in conformance AnswerResolver;

  LOBYTE(a9) = v25 & 1;
  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t protocol witness for MemoryCreationQUControllerProtocol.parse(_:quResponseJSONString:) in conformance MemoryCreationQUController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 200);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return v14(a1, a2, a3, a4);
}

uint64_t specialized static StringProtocol.== infix<A>(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v7 = a3 == a5 && a4 == a6;
  if (v7 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

void outlined bridged method (mbnn) of @objc NSDateFormatter.dateFormat.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();

  [a3 setDateFormat_];
}

uint64_t specialized MemoryCreationQUController.init(llmQUNetworkService:ecrClient:queryParser:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = type metadata accessor for MemoryCreationQUNetworkService();
  v14 = &protocol witness table for MemoryCreationQUNetworkService;
  *&v12 = a1;
  Parser = type metadata accessor for MemoryCreationQueryParser();
  v11 = &protocol witness table for MemoryCreationQueryParser;
  *&v9 = a3;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0;
  *(a4 + 56) = 0u;
  outlined init with take of ResponseOverrideMatcherProtocol(&v12, a4 + 16);
  swift_beginAccess();
  outlined assign with take of ECRClientProtocol?(a2, a4 + 56);
  swift_endAccess();
  outlined init with take of ResponseOverrideMatcherProtocol(&v9, a4 + 96);
  return a4;
}

uint64_t specialized MemoryCreationQUController.init(llmQUNetworkService:ecrClient:queryParser:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a5;
  v23 = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v21);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  v19 = a6;
  v20 = a8;
  v16 = __swift_allocate_boxed_opaque_existential_1Tm(&v18);
  (*(*(a6 - 8) + 32))(v16, a3, a6);
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0;
  *(a4 + 56) = 0u;
  outlined init with take of ResponseOverrideMatcherProtocol(&v21, a4 + 16);
  swift_beginAccess();
  outlined assign with take of ECRClientProtocol?(a2, a4 + 56);
  swift_endAccess();
  outlined init with take of ResponseOverrideMatcherProtocol(&v18, a4 + 96);
  return a4;
}

uint64_t outlined assign with take of ECRClientProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUError and conformance MemoryCreationQUError()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUError and conformance MemoryCreationQUError;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUError and conformance MemoryCreationQUError)
  {
    type metadata accessor for MemoryCreationQUError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUError and conformance MemoryCreationQUError);
  }

  return result;
}

void partial apply for closure #1 in MemoryCreationQUController.attributesFromWhen(query:when:)(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR) - 8);
  OUTLINED_FUNCTION_28_0();
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  OUTLINED_FUNCTION_41_15();
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v14 = *(v1 + v13);
  v16 = *(v1 + v15);

  closure #1 in MemoryCreationQUController.attributesFromWhen(query:when:)(a1, v11, v12, v1 + v10, v14, v16);
}

uint64_t dispatch thunk of MemoryCreationQUControllerProtocol.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_45_15();
  v12 = *(a12 + 24);
  OUTLINED_FUNCTION_28_0();
  v24 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_63(v16);
  *v17 = v18;
  v17[1] = dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:);
  OUTLINED_FUNCTION_113_8();
  OUTLINED_FUNCTION_25_22();

  return v24(v19, v20, v21, v22);
}

uint64_t dispatch thunk of MemoryCreationQUControllerProtocol.parse(_:quResponseJSONString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 32);
  OUTLINED_FUNCTION_28_0();
  v15 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_63(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_84(v11);
  v13 = OUTLINED_FUNCTION_118_0();

  return v15(v13);
}

void dispatch thunk of MemoryCreationQUController.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:)()
{
  OUTLINED_FUNCTION_45_15();
  OUTLINED_FUNCTION_133();
  v1 = *(v0 + 192);
  v8 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_63(v3);
  *v4 = v5;
  v4[1] = dispatch thunk of AnswerResolver.extractInfo(query:results:assistantLocale:);
  OUTLINED_FUNCTION_113_8();
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_115();

  __asm { BRAA            X8, X16 }
}

uint64_t dispatch thunk of MemoryCreationQUController.parse(_:quResponseJSONString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_133();
  v9 = *(v8 + 200);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_63(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_84(v12);

  return v15(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MemoryCreationQUController.parse(_:quResponse:performanceMetrics:)()
{
  OUTLINED_FUNCTION_61_0();
  v2 = v1;
  v13 = *(v1 + 80);
  v14 = *(v1 + 64);
  v3 = *(v1 + 96);
  OUTLINED_FUNCTION_133();
  v5 = *(v4 + 208);
  v15 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = v2[1];
  *(v0 + 16) = *v2;
  v9 = v2[2];
  v10 = v2[3];
  *(v0 + 32) = v8;
  *(v0 + 48) = v9;
  *(v0 + 64) = v10;
  *(v0 + 80) = v14;
  *(v0 + 96) = v13;
  *(v0 + 112) = v3;
  *(v0 + 120) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_84(v7);
  v11 = OUTLINED_FUNCTION_116_1();

  return v15(v11);
}

{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  OUTLINED_FUNCTION_52();
  v4 = *(v3 + 120);
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  OUTLINED_FUNCTION_62();

  return v7(v2);
}

uint64_t dispatch thunk of static MemoryCreationQUController.isParseEmptyDueToHallucination(parse:quResponse:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v4 = *(a2 + 80);
  v5 = *(v2 + 216);
  v6 = *(a2 + 96);
  v7 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v7;
  v8 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v8;
  v10[4] = v3;
  v10[5] = v4;
  v11 = v6;
  return v5(a1, v10) & 1;
}

uint64_t dispatch thunk of MemoryCreationQUController.sortOrder(prediction:)(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 80);
  v3 = *(a1 + 96);
  OUTLINED_FUNCTION_133();
  v5 = *(v4 + 240);
  v7 = v6[1];
  v13[0] = *v6;
  v13[1] = v7;
  v8 = v6[3];
  v13[2] = v6[2];
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  v14 = v11;
  return v5(v13);
}

uint64_t dispatch thunk of MemoryCreationQUController.attributesFromLLMQUResponse(query:prediction:)()
{
  OUTLINED_FUNCTION_61_0();
  v2 = v1;
  v13 = *(v1 + 80);
  v14 = *(v1 + 64);
  v3 = *(v1 + 96);
  OUTLINED_FUNCTION_133();
  v5 = *(v4 + 248);
  v15 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = v2[1];
  *(v0 + 16) = *v2;
  v9 = v2[2];
  v10 = v2[3];
  *(v0 + 32) = v8;
  *(v0 + 48) = v9;
  *(v0 + 64) = v10;
  *(v0 + 80) = v14;
  *(v0 + 96) = v13;
  *(v0 + 112) = v3;
  *(v0 + 120) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_84(v7);
  v11 = OUTLINED_FUNCTION_119();

  return v15(v11);
}

{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  OUTLINED_FUNCTION_52();
  v4 = *(v3 + 120);
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  OUTLINED_FUNCTION_62();

  return v7(v2);
}

void partial apply for closure #1 in closure #1 in MemoryCreationQUController.attributesFromWhen(query:when:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR) - 8);
  OUTLINED_FUNCTION_28_0();
  v11 = v10;
  v13 = v12;
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = *(v13 + 64);
  OUTLINED_FUNCTION_41_15();
  v18 = *(v4 + v17);
  v20 = *(v4 + v19);

  closure #1 in closure #1 in MemoryCreationQUController.attributesFromWhen(query:when:)(a1, a2, a3, a4, v4 + v16, v18, v20);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_37(uint64_t a1)
{
  *(a1 + 8) = MemoryCreationQUController.attributesFromWho(query:who:);
  v3 = *(v1 + 48);
  return v2;
}

uint64_t OUTLINED_FUNCTION_3_42()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_20@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + (v2 | (16 * a1)));
  v6 = *v5;
  *(v3 + 96) = v5[1];

  return type metadata accessor for FeatureFlagService();
}

void OUTLINED_FUNCTION_24_20(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_26_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_22()
{
  v4 = v0[3];
  v5 = v0[4];
  v0[13] = v2;
  v0[14] = v1;

  return Range<>.init(_:in:)();
}

uint64_t OUTLINED_FUNCTION_50_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_51_15()
{
}

uint64_t OUTLINED_FUNCTION_53_14()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_68_14()
{
}

uint64_t OUTLINED_FUNCTION_69_12()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_71_13()
{

  return MemoryCreationQUParseAttributes.init(attributeKey:range:substring:expansionStringValues:expansionDateValues:)();
}

uint64_t specialized BidirectionalCollection<>.firstMatch<A, B>(of:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_Ss6seasonSsSgSs4yeartGMd, &_s17_StringProcessing5RegexVySs_Ss6seasonSsSgSs4yeartGMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  specialized Collection.subscript.getter();
  lazy protocol witness table accessor for type Regex<(Substring, season: Substring, Substring?, year: Substring)> and conformance Regex<A>(&lazy protocol witness table cache variable for type Regex<(Substring, season: Substring, Substring?, year: Substring)> and conformance Regex<A>, &_s17_StringProcessing5RegexVySs_Ss6seasonSsSgSs4yeartGMd, &_s17_StringProcessing5RegexVySs_Ss6seasonSsSgSs4yeartGMR);
  dispatch thunk of RegexComponent.regex.getter();
  Regex.firstMatch(in:)();
  (*(v1 + 8))(v4, v0);
}

void specialized BidirectionalCollection<>.firstMatch<A, B>(of:)()
{
  OUTLINED_FUNCTION_155();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR);
  OUTLINED_FUNCTION_14(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v8 - v6;
  specialized Collection.subscript.getter();
  lazy protocol witness table accessor for type Regex<(Substring, season: Substring, Substring?, year: Substring)> and conformance Regex<A>(&lazy protocol witness table cache variable for type Regex<(Substring, Substring)> and conformance Regex<A>, &_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR);
  dispatch thunk of RegexComponent.regex.getter();
  Regex.firstMatch(in:)();
  (*(v2 + 8))(v7, v0);

  OUTLINED_FUNCTION_148();
}

void MemoryCreationQUDateGroundingHeuristics.groundDateHeuristics(_:rawDateString:featureFlagService:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Date();
  v12 = OUTLINED_FUNCTION_14(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v19 = v18 - v17;
  Date.init()();
  (*(*v0 + 88))(v10, v8, v6, v4, v19, v2);
  (*(v14 + 8))(v19, v11);
  OUTLINED_FUNCTION_148();
}

void MemoryCreationQUDateGroundingHeuristics.groundDateHeuristics(_:rawDateString:currentDate:featureFlagService:)()
{
  OUTLINED_FUNCTION_155();
  v0 = type metadata accessor for Locale();
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  static Locale.current.getter();
  v9 = Locale.identifier.getter();
  v11 = v10;
  (*(v3 + 8))(v8, v0);
  if (v9 == 0x53555F6E65 && v11 == 0xE500000000000000)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  MemoryCreationQUDateGroundingHeuristics.groundSeasonsHeuristic(_:currentDate:featureFlagService:)();
  if (specialized Array.count.getter(v14) <= 0)
  {

    MemoryCreationQUDateGroundingHeuristics.groundYearInReviewHeuristic(_:currentDate:)();
    if (specialized Array.count.getter(v15) <= 0)
    {

      MemoryCreationQUDateGroundingHeuristics.groundCOVIDHeuristic(_:currentDate:)();
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_148();
}

void MemoryCreationQUDateGroundingHeuristics.groundSeasonsHeuristic(_:currentDate:featureFlagService:)()
{
  OUTLINED_FUNCTION_155();
  v128 = v1;
  v134 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Locale();
  v8 = OUTLINED_FUNCTION_14(v7);
  v125 = v9;
  v126 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v124 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss6seasonSsSgSs4yeart_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss6seasonSsSgSs4yeart_GSgMR);
  OUTLINED_FUNCTION_114(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_49_3();
  v132 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss6seasonSsSgSs4yeart_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss6seasonSsSgSs4yeart_GMR);
  OUTLINED_FUNCTION_14(v19);
  v131 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_49_3();
  v130 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_Ss6seasonSsSgSs4yeartGMd, &_s17_StringProcessing5RegexVySs_Ss6seasonSsSgSs4yeartGMR);
  v26 = OUTLINED_FUNCTION_14(v25);
  v135 = v27;
  v136 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v123 - v31;
  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_3_42();
  }

  v33 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v33, static Logging.memoryCreationQU);

  v129 = v0;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  v36 = os_log_type_enabled(v34, v35);
  v133 = v19;
  v137 = v32;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v138 = v38;
    *v37 = 136315138;
    OUTLINED_FUNCTION_32_3();
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v34, v35, "Attempting to run English groundSeasonsHeuristic on dateString: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v127 = v6;
  OUTLINED_FUNCTION_32_3();
  v39 = String.lowercased()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10OmniSearch39MemoryCreationQUDateGroundingHeuristicsC6Season33_8733BF20952240FB787F1C1DF7D899F5LLOtGMd, &_ss23_ContiguousArrayStorageCySS_10OmniSearch39MemoryCreationQUDateGroundingHeuristicsC6Season33_8733BF20952240FB787F1C1DF7D899F5LLOtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBE0310;
  type metadata accessor for LocalizedString();
  *(inited + 32) = static LocalizedString.localizedString(forKey:)(0xD000000000000025, 0x800000025DBF5C30);
  *(inited + 40) = v41;
  *(inited + 48) = 3;
  *(inited + 56) = static LocalizedString.localizedString(forKey:)(0xD000000000000027, 0x800000025DBF5C60);
  *(inited + 64) = v42;
  *(inited + 72) = 3;
  *(inited + 80) = static LocalizedString.localizedString(forKey:)(0xD000000000000029, 0x800000025DBF5C90);
  *(inited + 88) = v43;
  *(inited + 96) = 3;
  OUTLINED_FUNCTION_98_2();
  *(inited + 104) = static LocalizedString.localizedString(forKey:)(0xD000000000000029, v44);
  *(inited + 112) = v45;
  *(inited + 120) = 3;
  *(inited + 128) = OUTLINED_FUNCTION_6_29("MemoryCreationQUDateGroundingLastAutumnName");
  *(inited + 136) = v46;
  *(inited + 144) = 3;
  *(inited + 152) = OUTLINED_FUNCTION_6_29("MemoryCreationQUDateGroundingPastAutumnName");
  *(inited + 160) = v47;
  *(inited + 168) = 3;
  OUTLINED_FUNCTION_98_2();
  *(inited + 176) = static LocalizedString.localizedString(forKey:)(0xD000000000000027, v48);
  *(inited + 184) = v49;
  *(inited + 192) = 1;
  *(inited + 200) = OUTLINED_FUNCTION_6_29("MemoryCreationQUDateGroundingLastSpringName");
  *(inited + 208) = v50;
  *(inited + 216) = 1;
  *(inited + 224) = OUTLINED_FUNCTION_6_29("MemoryCreationQUDateGroundingPastSpringName");
  *(inited + 232) = v51;
  *(inited + 240) = 1;
  OUTLINED_FUNCTION_98_2();
  *(inited + 248) = static LocalizedString.localizedString(forKey:)(0xD000000000000027, v52);
  *(inited + 256) = v53;
  *(inited + 264) = 2;
  *(inited + 272) = OUTLINED_FUNCTION_6_29("MemoryCreationQUDateGroundingLastSummerName");
  *(inited + 280) = v54;
  *(inited + 288) = 2;
  *(inited + 296) = OUTLINED_FUNCTION_6_29("MemoryCreationQUDateGroundingPastSummerName");
  *(inited + 304) = v55;
  *(inited + 312) = 2;
  OUTLINED_FUNCTION_98_2();
  *(inited + 320) = static LocalizedString.localizedString(forKey:)(0xD000000000000027, v56);
  *(inited + 328) = v57;
  *(inited + 336) = 0;
  *(inited + 344) = OUTLINED_FUNCTION_6_29("MemoryCreationQUDateGroundingLastWinterName");
  *(inited + 352) = v58;
  *(inited + 360) = 0;
  *(inited + 368) = OUTLINED_FUNCTION_6_29("MemoryCreationQUDateGroundingPastWinterName");
  *(inited + 376) = v59;
  *(inited + 384) = 0;
  v60 = Dictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_Ss6seasonSsSgSs4yeartMd, &_sSs_Ss6seasonSsSgSs4yeartMR);
  v61 = v137;
  Regex.init(_regexString:version:)();
  if (specialized Dictionary.subscript.getter(v39._countAndFlagsBits, v39._object, v60) != 4)
  {

    MemoryCreationQUDateGroundingHeuristics.datesForSeason(_:year:currentDate:)();
    goto LABEL_100;
  }

  v62 = v132;
  specialized BidirectionalCollection<>.firstMatch<A, B>(of:)();

  v63 = v133;
  OUTLINED_FUNCTION_166(v62, 1, v133);
  if (v112)
  {
    outlined destroy of ResourceBundle?(v62, &_s17_StringProcessing5RegexV5MatchVySs_Ss6seasonSsSgSs4yeart_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss6seasonSsSgSs4yeart_GSgMR);
    if ((*(*v128 + 80))(11))
    {

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v138 = v67;
        *v66 = 136315138;
        v68 = v127;
        OUTLINED_FUNCTION_32_3();
        *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        _os_log_impl(&dword_25D85C000, v64, v65, "Attempting to run tokenizer groundSeasonsHeuristic on dateString: %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        v68 = v127;
      }

      v96 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
      v97 = OUTLINED_FUNCTION_32_3();
      outlined bridged method (mbgnn) of @objc NLTokenizer.string.setter(v97, v98, v96);
      v99 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      v100 = v124;
      static Locale.current.getter();
      isa = Locale._bridgeToObjectiveC()().super.isa;
      (*(v125 + 8))(v100, v126);
      [v99 setLocale_];

      v102 = [v99 setNumberStyle_];
      v148 = 4;
      LOBYTE(v139) = 1;
      v138 = 0;
      MEMORY[0x28223BE20](v102);
      *(&v123 - 6) = v68;
      *(&v123 - 5) = v4;
      *(&v123 - 4) = v60;
      *(&v123 - 3) = &v148;
      *(&v123 - 2) = v99;
      *(&v123 - 1) = &v138;
      NLTokenizer.enumerateTokens(in:using:)();

      if (v148 != 4)
      {
        MemoryCreationQUDateGroundingHeuristics.datesForSeason(_:year:currentDate:)();
      }
    }

    else
    {

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_77_5(v90))
      {
        v91 = OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_33_23(v91);
        OUTLINED_FUNCTION_100_3(&dword_25D85C000, v92, v93, "Date string not related to season heuristics, unable to ground date");
        OUTLINED_FUNCTION_13_18();
      }
    }

    goto LABEL_100;
  }

  (*(v131 + 32))(v130, v62, v63);
  Regex.Match.output.getter();
  v69 = v140;
  v70 = v141;
  v71 = v142;
  v72 = v143;

  v73 = MEMORY[0x25F89F5B0](v69, v70, v71, v72);
  v75 = v74;
  v76 = v133;

  Regex.Match.output.getter();

  v77 = MEMORY[0x25F89F5B0](v144, v145, v146, v147);
  v79 = v78;

  v80 = HIBYTE(v79) & 0xF;
  v81 = v77 & 0xFFFFFFFFFFFFLL;
  if ((v79 & 0x2000000000000000) != 0)
  {
    v82 = HIBYTE(v79) & 0xF;
  }

  else
  {
    v82 = v77 & 0xFFFFFFFFFFFFLL;
  }

  if (!v82)
  {
LABEL_88:

    v112 = v73 == 1819042150 && v75 == 0xE400000000000000;
    if (v112 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v73 == 0x6E6D75747561 ? (v113 = v75 == 0xE600000000000000) : (v113 = 0), v113 || (OUTLINED_FUNCTION_14_24() & 1) != 0 || (v73 == 0x676E69727073 ? (v114 = v75 == 0xE600000000000000) : (v114 = 0), v114 || (OUTLINED_FUNCTION_14_24() & 1) != 0 || (v73 == 0x72656D6D7573 ? (v115 = v75 == 0xE600000000000000) : (v115 = 0), v115 || (OUTLINED_FUNCTION_14_24() & 1) != 0 || (v73 == 0x7265746E6977 ? (v116 = v75 == 0xE600000000000000) : (v116 = 0), v116)))))
    {
    }

    else
    {
      v117 = OUTLINED_FUNCTION_14_24();

      if ((v117 & 1) == 0)
      {
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_77_5(v119))
        {
          v120 = OUTLINED_FUNCTION_172();
          OUTLINED_FUNCTION_33_23(v120);
          OUTLINED_FUNCTION_100_3(&dword_25D85C000, v121, v122, "Date string not related to season heuristics, unable to ground date");
          OUTLINED_FUNCTION_13_18();
        }

        (*(v131 + 8))(v130, v76);
        goto LABEL_100;
      }
    }

    MemoryCreationQUDateGroundingHeuristics.datesForSeason(_:year:currentDate:)();
    (*(v131 + 8))(v130, v76);
LABEL_100:
    (*(v135 + 8))(v61, v136);
    OUTLINED_FUNCTION_148();
    return;
  }

  if ((v79 & 0x1000000000000000) != 0)
  {
    v148 = 0;
    specialized _parseInteger<A, B>(ascii:radix:)(v77, v79, 10);
    goto LABEL_88;
  }

  if ((v79 & 0x2000000000000000) == 0)
  {
    if ((v77 & 0x1000000000000000) != 0)
    {
      v83 = ((v79 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v83 = _StringObject.sharedUTF8.getter();
    }

    v84 = *v83;
    if (v84 == 43)
    {
      if (v81 >= 1)
      {
        if (v81 != 1)
        {
          if (v83)
          {
            while (1)
            {
              OUTLINED_FUNCTION_91_4();
              if (!v112 & v85)
              {
                goto LABEL_86;
              }

              OUTLINED_FUNCTION_5_34();
              if (!v112 || __OFADD__(v104, v103))
              {
                goto LABEL_86;
              }

              OUTLINED_FUNCTION_204_1();
              if (v112)
              {
                goto LABEL_87;
              }
            }
          }

          goto LABEL_77;
        }

        goto LABEL_86;
      }

      goto LABEL_127;
    }

    if (v84 != 45)
    {
      if (v81)
      {
        v107 = 0;
        if (v83)
        {
          while (1)
          {
            v108 = *v83 - 48;
            if (v108 > 9)
            {
              goto LABEL_86;
            }

            v109 = 10 * v107;
            if ((v107 * 10) >> 64 != (10 * v107) >> 63)
            {
              goto LABEL_86;
            }

            v107 = v109 + v108;
            if (__OFADD__(v109, v108))
            {
              goto LABEL_86;
            }

            ++v83;
            if (!--v81)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_77;
      }

LABEL_86:
      v88 = 1;
      goto LABEL_87;
    }

    if (v81 >= 1)
    {
      if (v81 != 1)
      {
        if (v83)
        {
          while (1)
          {
            OUTLINED_FUNCTION_91_4();
            if (!v112 & v85)
            {
              goto LABEL_86;
            }

            OUTLINED_FUNCTION_5_34();
            if (!v112 || __OFSUB__(v87, v86))
            {
              goto LABEL_86;
            }

            OUTLINED_FUNCTION_204_1();
            if (v112)
            {
              goto LABEL_87;
            }
          }
        }

LABEL_77:
        v88 = 0;
LABEL_87:
        v148 = v88;
        goto LABEL_88;
      }

      goto LABEL_86;
    }

    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v138 = v77;
  v139 = v79 & 0xFFFFFFFFFFFFFFLL;
  if (v77 != 43)
  {
    if (v77 != 45)
    {
      if (v80)
      {
        while (1)
        {
          OUTLINED_FUNCTION_91_4();
          if (!v112 & v85)
          {
            break;
          }

          OUTLINED_FUNCTION_5_34();
          if (!v112 || __OFADD__(v111, v110))
          {
            break;
          }

          OUTLINED_FUNCTION_204_1();
          if (v112)
          {
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    if (v80)
    {
      if (v80 != 1)
      {
        OUTLINED_FUNCTION_37_15();
        while (1)
        {
          OUTLINED_FUNCTION_91_4();
          if (!v112 & v85)
          {
            break;
          }

          OUTLINED_FUNCTION_5_34();
          if (!v112 || __OFSUB__(v95, v94))
          {
            break;
          }

          OUTLINED_FUNCTION_204_1();
          if (v112)
          {
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    goto LABEL_126;
  }

  if (v80)
  {
    if (v80 != 1)
    {
      OUTLINED_FUNCTION_37_15();
      while (1)
      {
        OUTLINED_FUNCTION_91_4();
        if (!v112 & v85)
        {
          break;
        }

        OUTLINED_FUNCTION_5_34();
        if (!v112 || __OFADD__(v106, v105))
        {
          break;
        }

        OUTLINED_FUNCTION_204_1();
        if (v112)
        {
          goto LABEL_87;
        }
      }
    }

    goto LABEL_86;
  }

LABEL_128:
  __break(1u);
}

uint64_t closure #1 in MemoryCreationQUDateGroundingHeuristics.groundSeasonsHeuristic(_:currentDate:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, void *a8, uint64_t a9)
{
  v12 = String.subscript.getter();
  v13 = MEMORY[0x25F89F5B0](v12);
  v15 = v14;

  v16 = String.lowercased()();
  v17 = specialized Dictionary.subscript.getter(v16._countAndFlagsBits, v16._object, a6);

  if (v17 == 4)
  {
    v18 = MEMORY[0x25F89F4C0](v13, v15);

    v19 = [a8 numberFromString_];

    if (v19)
    {
      v20 = [v19 integerValue];

      *a9 = v20;
      *(a9 + 8) = 0;
    }
  }

  else
  {

    *a7 = v17;
  }

  return 1;
}

void MemoryCreationQUDateGroundingHeuristics.datesForSeason(_:year:currentDate:)()
{
  OUTLINED_FUNCTION_155();
  v131 = v0;
  LODWORD(v130) = v1;
  v123 = v3;
  v124 = v2;
  v133 = type metadata accessor for Date();
  v4 = OUTLINED_FUNCTION_14(v133);
  v129 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v128 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_109();
  v125 = v14 - v15;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v16);
  v127 = &v116 - v17;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v18);
  v126 = (&v116 - v19);
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_2();
  v122 = v21;
  OUTLINED_FUNCTION_78_0();
  v22 = type metadata accessor for Calendar.Component();
  v23 = OUTLINED_FUNCTION_14(v22);
  v118 = v24;
  v119 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36();
  v117 = v28 - v27;
  OUTLINED_FUNCTION_78_0();
  v29 = type metadata accessor for Calendar();
  v30 = OUTLINED_FUNCTION_14(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_36();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v45);
  v46 = type metadata accessor for DateComponents();
  v47 = OUTLINED_FUNCTION_14(v46);
  v120 = v48;
  v121 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_109();
  v53 = v51 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = &v116 - v55;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v29);
  v60 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v60);
  OUTLINED_FUNCTION_7_32();
  LOBYTE(v117) = 1;
  v116 = 0;
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_15_26();
  DateComponents.day.setter();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v29);
  OUTLINED_FUNCTION_92();
  v67 = v60;
  v68 = v29;
  v69 = v123;
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v67);
  OUTLINED_FUNCTION_7_32();
  LOBYTE(v117) = 1;
  v73 = v32;
  v116 = 0;
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_15_26();
  DateComponents.day.setter();
  if (v130)
  {
    static Calendar.current.getter();
    v75 = v118;
    v74 = v119;
    v76 = v56;
    v77 = v68;
    v78 = v117;
    (*(v118 + 13))(v117, *MEMORY[0x277CC9988], v119);
    v69 = Calendar.component(_:from:)();
    v79 = v78;
    v68 = v77;
    v56 = v76;
    (*(v75 + 1))(v79, v74);
    (*(v73 + 8))(v37, v68);
  }

  OUTLINED_FUNCTION_19_26();
  DateComponents.year.setter();
  OUTLINED_FUNCTION_26_19();
  DateComponents.year.setter();
  v80 = v69;
  v81 = v129;
  v82 = v126;
  switch(v124)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_19_26();
      DateComponents.month.setter();
      OUTLINED_FUNCTION_26_19();
      DateComponents.month.setter();
      goto LABEL_7;
    default:
      OUTLINED_FUNCTION_19_26();
      DateComponents.month.setter();
      OUTLINED_FUNCTION_26_19();
      DateComponents.month.setter();
      if (__OFADD__(v80, 1))
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_26_19();
      DateComponents.year.setter();
LABEL_7:
      v132 = v53;
      static Calendar.current.getter();
      v83 = v122;
      Calendar.date(from:)();
      v84 = v83;
      v87 = *(v73 + 8);
      v86 = v73 + 8;
      v85 = v87;
      v87(v37, v68);
      OUTLINED_FUNCTION_166(v84, 1, v133);
      if (v88)
      {
        outlined destroy of ResourceBundle?(v84, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v89.super.isa = 0;
      }

      else
      {
        v89.super.isa = Date._bridgeToObjectiveC()().super.isa;
        v81[1](v84, v133);
      }

      static Calendar.current.getter();
      Calendar.date(from:)();
      v85(v37, v68);
      OUTLINED_FUNCTION_166(v82, 1, v133);
      if (v88)
      {
        outlined destroy of ResourceBundle?(v82, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v90.super.isa = 0;
LABEL_27:

        goto LABEL_28;
      }

      v90.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v91 = v81[1];
      v91(v82, v133);
      if (!v89.super.isa || !v90.super.isa)
      {
        goto LABEL_27;
      }

      v124 = v85;
      v80 = v89.super.isa;
      v92 = v90.super.isa;
      v93 = v80;
      v89.super.isa = v92;
      v94 = v92;
      if (v130)
      {
        v122 = v86;
        v123 = v68;
        v116 = v56;
        v118 = v80;
        v119 = v92;
        v94 = v92;
        while (1)
        {
          isa = Date._bridgeToObjectiveC()().super.isa;
          v96 = [(objc_class *)v94 earlierDate:isa];

          v97 = v128;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(isa) = static Date.== infix(_:_:)();
          v91(v97, v133);
          if ((isa & 1) == 0)
          {
            v56 = v116;
            v93 = v118;
            goto LABEL_30;
          }

          v81 = v116;
          v98 = DateComponents.year.getter();
          v99 = v127;
          if ((v100 & 1) == 0)
          {
            if (__OFSUB__(v98, 1))
            {
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            DateComponents.year.setter();
          }

          v101 = DateComponents.year.getter();
          if ((v102 & 1) == 0)
          {
            if (__OFSUB__(v101, 1))
            {
              goto LABEL_38;
            }

            DateComponents.year.setter();
          }

          v103 = v91;
          v129 = v94;
          v130 = v80;
          static Calendar.current.getter();
          Calendar.date(from:)();
          v104 = v133;
          v105 = v123;
          v106 = v124;
          v124(v37, v123);
          OUTLINED_FUNCTION_166(v99, 1, v104);
          if (v88)
          {
            v107 = v99;
            goto LABEL_33;
          }

          v126 = Date._bridgeToObjectiveC()().super.isa;
          v103(v99, v104);
          static Calendar.current.getter();
          v107 = v125;
          Calendar.date(from:)();
          v106(v37, v105);
          OUTLINED_FUNCTION_166(v107, 1, v104);
          if (v88)
          {
            break;
          }

          v94 = Date._bridgeToObjectiveC()().super.isa;

          v103(v107, v133);
          v80 = v126;
          v89.super.isa = v119;
          v91 = v103;
        }

LABEL_33:
        v81 = v129;
        outlined destroy of ResourceBundle?(v107, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v80 = v130;
        if (one-time initialization token for memoryCreationQU == -1)
        {
          goto LABEL_34;
        }

LABEL_40:
        OUTLINED_FUNCTION_3_42();
LABEL_34:
        v112 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v112, static Logging.memoryCreationQU);
        v89.super.isa = Logger.logObject.getter();
        v113 = static os_log_type_t.error.getter();
        v114 = os_log_type_enabled(v89.super.isa, v113);
        v56 = v116;
        if (v114)
        {
          v115 = OUTLINED_FUNCTION_172();
          *v115 = 0;
          _os_log_impl(&dword_25D85C000, v89.super.isa, v113, "Unable to create start and end dates", v115, 2u);
          OUTLINED_FUNCTION_42_0();
        }
      }

      else
      {
LABEL_30:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v111 = OUTLINED_FUNCTION_78_14();
        *(v111 + 16) = xmmword_25DBE01C0;
        *(v111 + 32) = v80;
        *(v111 + 40) = v94;
      }

LABEL_28:
      v109 = v120;
      v108 = v121;

      v110 = *(v109 + 8);
      v110(v132, v108);
      v110(v56, v108);
      OUTLINED_FUNCTION_148();
      return;
  }
}

uint64_t MemoryCreationQUDateGroundingHeuristics.groundCOVIDHeuristic(_:currentDate:)()
{
  v0 = String.lowercased()();
  type metadata accessor for LocalizedString();
  v1 = static LocalizedString.localizedString(forKey:)(0xD00000000000002CLL, 0x800000025DBF5BA0);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_6_29("MemoryCreationQUDateGroundingSinceCovidName");
  v6 = v5;
  if (v0._countAndFlagsBits == v1 && v0._object == v3)
  {

LABEL_8:

    if (one-time initialization token for memoryCreationQU != -1)
    {
      OUTLINED_FUNCTION_3_42();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v10, static Logging.memoryCreationQU);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v12))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_84_5(&dword_25D85C000, v13, v14, "COVID grounding heuristic: grounding date to 2020-2023");
      OUTLINED_FUNCTION_42_0();
    }

    MemoryCreationQUDateGroundingHeuristics.covidStartDate.getter();
    if (!v15)
    {
      return MEMORY[0x277D84F90];
    }

    v16 = v15;
    MemoryCreationQUDateGroundingHeuristics.covidEndDate.getter();
    if (v17)
    {
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      result = OUTLINED_FUNCTION_78_14();
      *(result + 16) = xmmword_25DBE01C0;
      *(result + 32) = v16;
      *(result + 40) = v18;
      return result;
    }

    goto LABEL_24;
  }

  v8 = v4;
  OUTLINED_FUNCTION_52_1();
  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_8;
  }

  if (v0._countAndFlagsBits == v8 && v0._object == v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      if (one-time initialization token for memoryCreationQU != -1)
      {
        OUTLINED_FUNCTION_3_42();
      }

      v22 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v22, static Logging.memoryCreationQU);
      v16 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_105_6(v23))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_84_5(&dword_25D85C000, v24, v25, "Date string not related to COVID heuristics, unable to ground date");
        OUTLINED_FUNCTION_42_0();
      }

LABEL_24:

      return MEMORY[0x277D84F90];
    }
  }

  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_3_42();
  }

  v26 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v26, static Logging.memoryCreationQU);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_77_5(v28))
  {
    v29 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_33_23(v29);
    OUTLINED_FUNCTION_100_3(&dword_25D85C000, v30, v31, "COVID grounding heuristic: grounding date to 2020-present");
    OUTLINED_FUNCTION_13_18();
  }

  MemoryCreationQUDateGroundingHeuristics.covidStartDate.getter();
  if (v32)
  {
    v33 = v32;
    isa = Date._bridgeToObjectiveC()().super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    result = OUTLINED_FUNCTION_78_14();
    *(result + 16) = xmmword_25DBE01C0;
    *(result + 32) = v33;
    *(result + 40) = isa;
    return result;
  }

  return MEMORY[0x277D84F90];
}

void MemoryCreationQUDateGroundingHeuristics.covidStartDate.getter()
{
  MemoryCreationQUDateGroundingHeuristics.covidStartDate.getter();
}

{
  OUTLINED_FUNCTION_155();
  v51 = v0;
  v52 = v1;
  v49 = v2;
  v50 = v3;
  v48 = v4;
  v5 = type metadata accessor for Calendar();
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v27);
  v28 = type metadata accessor for DateComponents();
  v29 = OUTLINED_FUNCTION_14(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_36();
  v36 = v35 - v34;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v5);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  OUTLINED_FUNCTION_2_38();
  LOBYTE(v48) = 1;
  v47 = 0;
  OUTLINED_FUNCTION_43_7();
  DateComponents.day.setter();
  DateComponents.month.setter();
  DateComponents.year.setter();
  static Calendar.current.getter();
  Calendar.date(from:)();
  (*(v8 + 8))(v13, v5);
  (*(v31 + 8))(v36, v28);
  v44 = type metadata accessor for Date();
  OUTLINED_FUNCTION_166(v19, 1, v44);
  if (v45)
  {
    outlined destroy of ResourceBundle?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    Date._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_51(v44);
    (*(v46 + 8))(v19, v44);
  }

  OUTLINED_FUNCTION_148();
}

void MemoryCreationQUDateGroundingHeuristics.groundYearInReviewHeuristic(_:currentDate:)()
{
  OUTLINED_FUNCTION_155();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1 = OUTLINED_FUNCTION_114(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_109();
  v88 = v4 - v5;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_2();
  v86 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_78_0();
  v16 = type metadata accessor for DateComponents();
  v17 = OUTLINED_FUNCTION_14(v16);
  v89 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_109();
  v92 = v21 - v22;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_2();
  v87 = v24;
  OUTLINED_FUNCTION_78_0();
  v25 = type metadata accessor for Calendar.Component();
  v26 = OUTLINED_FUNCTION_14(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_36();
  v33 = v32 - v31;
  v34 = type metadata accessor for Calendar();
  v35 = OUTLINED_FUNCTION_14(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_109();
  v42 = (v40 - v41);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_14_2();
  v93 = v44;
  v45 = String.lowercased()();
  type metadata accessor for LocalizedString();
  OUTLINED_FUNCTION_98_2();
  v48 = v45._countAndFlagsBits == static LocalizedString.localizedString(forKey:)(0xD00000000000002DLL, v46) && v45._object == v47;
  if (v48)
  {
  }

  else
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v49 & 1) == 0)
    {
      if (one-time initialization token for memoryCreationQU != -1)
      {
        OUTLINED_FUNCTION_3_42();
      }

      v50 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v50, static Logging.memoryCreationQU);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_105_6(v52))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_84_5(&dword_25D85C000, v53, v54, "Date string not related to year in review heuristic, unable to ground date");
        OUTLINED_FUNCTION_42_0();
      }

      goto LABEL_25;
    }
  }

  v90 = v34;
  static Calendar.current.getter();
  v55 = *(v28 + 104);
  v55(v33, *MEMORY[0x277CC9998], v25);
  v56 = Calendar.component(_:from:)();
  v57 = *(v28 + 8);
  v57(v33, v25);
  if (v56 != 1)
  {
    if (one-time initialization token for memoryCreationQU == -1)
    {
LABEL_18:
      v68 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v68, static Logging.memoryCreationQU);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_105_6(v70))
      {
        v71 = OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_33_23(v71);
        _os_log_impl(&dword_25D85C000, v69, v56, "Current month is not January, not applying year in review heuristic", v42, 2u);
        OUTLINED_FUNCTION_13_18();
      }

      (*(v37 + 8))(v93, v90);
      goto LABEL_25;
    }

LABEL_30:
    OUTLINED_FUNCTION_3_42();
    goto LABEL_18;
  }

  v55(v33, *MEMORY[0x277CC9988], v25);
  v56 = Calendar.component(_:from:)();
  v57(v33, v25);
  if (__OFSUB__(v56, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v90);
  v61 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
  OUTLINED_FUNCTION_2_38();
  LOBYTE(v86) = 1;
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_15_26();
  DateComponents.day.setter();
  DateComponents.month.setter();
  DateComponents.year.setter();
  static Calendar.current.getter();
  Calendar.date(from:)();
  v65 = *(v37 + 8);
  v66 = OUTLINED_FUNCTION_52_1();
  v65(v66);
  v67 = type metadata accessor for Date();
  OUTLINED_FUNCTION_166(v86, 1, v67);
  if (v48)
  {
    outlined destroy of ResourceBundle?(v86, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v91.super.isa = 0;
  }

  else
  {
    v91.super.isa = Date._bridgeToObjectiveC()().super.isa;
    OUTLINED_FUNCTION_51(v67);
    (*(v72 + 8))(v86, v67);
  }

  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v90);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v61);
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_15_26();
  DateComponents.day.setter();
  DateComponents.month.setter();
  DateComponents.year.setter();
  static Calendar.current.getter();
  Calendar.date(from:)();
  v79 = OUTLINED_FUNCTION_52_1();
  v65(v79);
  OUTLINED_FUNCTION_166(v88, 1, v67);
  if (v48)
  {
    outlined destroy of ResourceBundle?(v88, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v82.super.isa = 0;
    isa = v91.super.isa;
  }

  else
  {
    v82.super.isa = Date._bridgeToObjectiveC()().super.isa;
    OUTLINED_FUNCTION_51(v67);
    (*(v83 + 8))(v88, v67);
    isa = v91.super.isa;
    if (v91.super.isa && v82.super.isa)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v84 = OUTLINED_FUNCTION_78_14();
      *(v84 + 16) = xmmword_25DBE01C0;
      *(v84 + 32) = v91;
      *(v84 + 40) = v82;
      v85 = *(v89 + 8);
      v85(v92, 0);
      v85(v87, 0);
      (v65)(v93, v90);
      goto LABEL_25;
    }
  }

  v81 = *(v89 + 8);
  v81(v92, 0);
  v81(v87, 0);
  (v65)(v93, v90);
LABEL_25:
  OUTLINED_FUNCTION_148();
}

void outlined bridged method (mbgnn) of @objc NLTokenizer.string.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();
  [a3 setString_];
}

uint64_t lazy protocol witness table accessor for type Regex<(Substring, season: Substring, Substring?, year: Substring)> and conformance Regex<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUDateGroundingHeuristics.Season(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type MemoryCreationQUDateGroundingHeuristics.Season and conformance MemoryCreationQUDateGroundingHeuristics.Season()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUDateGroundingHeuristics.Season and conformance MemoryCreationQUDateGroundingHeuristics.Season;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUDateGroundingHeuristics.Season and conformance MemoryCreationQUDateGroundingHeuristics.Season)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUDateGroundingHeuristics.Season and conformance MemoryCreationQUDateGroundingHeuristics.Season);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_29@<X0>(uint64_t a1@<X8>)
{

  return static LocalizedString.localizedString(forKey:)(0xD00000000000002BLL, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_14_24()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MemoryCreationQUModelResponse.init(jsonString:)(OmniSearch::MemoryCreationQUModelResponse *__return_ptr retstr, Swift::String jsonString)
{
  v3 = v2;
  v5 = type metadata accessor for String.Encoding();
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logging.memoryCreationQU);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v2;
    v17 = v16;
    v28 = swift_slowAlloc();
    v29 = v5;
    __src[0] = v28;
    *v17 = 136315138;

    v18 = retstr;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v17 + 4) = v19;
    retstr = v18;
    _os_log_impl(&dword_25D85C000, v14, v15, "Attempting to decode json string for Memory Creation QU: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v5 = v29;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v3 = v31;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  static String.Encoding.utf8.getter();
  v20 = String.data(using:allowLossyConversion:)();
  v22 = v21;

  (*(v8 + 8))(v12, v5);
  if (v22 >> 60 == 15)
  {
    lazy protocol witness table accessor for type NetworkServiceError and conformance NetworkServiceError();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
  }

  else
  {
    v24 = type metadata accessor for JSONDecoder();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v20, v22);

    if (!v3)
    {
      memcpy(retstr, __src, sizeof(OmniSearch::MemoryCreationQUModelResponse));
    }
  }
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponse and conformance MemoryCreationQUModelResponse);
  }

  return result;
}

uint64_t MemoryCreationQUModelResponse.who.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponse.what.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponse.when.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponse.where.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponse.music.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];

  return v1;
}

uint64_t MemoryCreationQUModelResponse.music.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[4];

  v8 = v3[5];

  v9 = v3[6];

  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  return result;
}

uint64_t MemoryCreationQUModelResponse.mood.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponse.sort_order.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponse.trip.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t MemoryCreationQUModelResponse.trip.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t MemoryCreationQUModelResponse.all_time.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t MemoryCreationQUModelResponse.all_time.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

OmniSearch::MemoryCreationQUModelResponseMusic __swiftcall MemoryCreationQUModelResponseMusic.init(artist:genre:song:)(Swift::OpaquePointer artist, Swift::OpaquePointer genre, Swift::OpaquePointer song)
{
  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logging.memoryCreationQU);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25D85C000, v7, v8, "MemoryCreationQUModelResponseMusic.init() should only be used for testing", v9, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  rawValue = artist._rawValue;
  v11 = genre._rawValue;
  v12 = song._rawValue;
  result.song._rawValue = v12;
  result.genre._rawValue = v11;
  result.artist._rawValue = rawValue;
  return result;
}

void __swiftcall MemoryCreationQUModelResponse.init(who:what:when:where:music:mood:sort_order:trip:all_time:)(OmniSearch::MemoryCreationQUModelResponse *__return_ptr retstr, Swift::OpaquePointer who, Swift::OpaquePointer what, Swift::OpaquePointer when, Swift::OpaquePointer where, OmniSearch::MemoryCreationQUModelResponseMusic music, Swift::OpaquePointer mood, Swift::OpaquePointer sort_order, Swift::String trip, Swift::String all_time)
{
  rawValue = music.song._rawValue;
  v12 = music.genre._rawValue;
  v13 = music.artist._rawValue;
  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logging.memoryCreationQU);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_25D85C000, v19, v20, "MemoryCreationQUModelResponse.init() should only be used for testing", v21, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  retstr->who = who;
  retstr->what = what;
  retstr->when = when;
  retstr->where = where;
  retstr->music.artist._rawValue = v13;
  retstr->music.genre._rawValue = v12;
  retstr->music.song._rawValue = rawValue;
  retstr->mood = mood;
  retstr->sort_order = sort_order;
  retstr->trip = trip;
  retstr->all_time = all_time;
}

void *MemoryCreationQUModelResponse.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  OUTLINED_FUNCTION_7_33();
  if (v2)
  {
    v5 = type metadata accessor for GeneratedValues();
    OUTLINED_FUNCTION_2(v5);
    return (*(v6 + 8))(a1);
  }

  else
  {
    OUTLINED_FUNCTION_7_33();
    OUTLINED_FUNCTION_7_33();
    OUTLINED_FUNCTION_7_33();
    v29 = v14;
    lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic();
    GeneratedValues.extract<A>(field:)();
    v11 = v15;
    v10 = v16;
    OUTLINED_FUNCTION_7_33();
    OUTLINED_FUNCTION_7_33();
    GeneratedValues.extract<A>(field:)();
    GeneratedValues.extract<A>(field:)();
    v8 = type metadata accessor for GeneratedValues();
    OUTLINED_FUNCTION_2(v8);
    (*(v9 + 8))(a1);
    __src[0] = v14;
    __src[1] = v14;
    __src[2] = v14;
    __src[3] = v14;
    __src[4] = v14;
    __src[5] = v15;
    __src[6] = v16;
    __src[7] = v14;
    __src[8] = v14;
    __src[9] = v14;
    __src[10] = v15;
    __src[11] = v27;
    __src[12] = v28;
    v15 = v14;
    v16 = v14;
    v17 = v14;
    v18 = v14;
    v19 = v11;
    v20 = v10;
    v21 = v14;
    v22 = v14;
    v23 = v14;
    v24 = __src[10];
    v25 = v27;
    v26 = v28;
    outlined init with copy of MemoryCreationQUModelResponse(__src, v12);
    outlined destroy of MemoryCreationQUModelResponse(&v14);
    return memcpy(a2, __src, 0x68uLL);
  }
}

uint64_t MemoryCreationQUModelResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7301239 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1952540791 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1852139639 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6572656877 && a2 == 0xE500000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1685024621 && a2 == 0xE400000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64726F5F74726F73 && a2 == 0xEA00000000007265;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1885958772 && a2 == 0xE400000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656D69745F6C6C61 && a2 == 0xE800000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t MemoryCreationQUModelResponse.CodingKeys.stringValue.getter(char a1)
{
  result = 7301239;
  switch(a1)
  {
    case 1:
      result = 1952540791;
      break;
    case 2:
      result = 1852139639;
      break;
    case 3:
      result = 0x6572656877;
      break;
    case 4:
      result = 0x636973756DLL;
      break;
    case 5:
      result = 1685024621;
      break;
    case 6:
      result = 0x64726F5F74726F73;
      break;
    case 7:
      result = 1885958772;
      break;
    case 8:
      result = 0x656D69745F6C6C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MemoryCreationQUModelResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MemoryCreationQUModelResponse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MemoryCreationQUModelResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MemoryCreationQUModelResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *MemoryCreationQUModelResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch29MemoryCreationQUModelResponseV10CodingKeys33_9A21FF80BB8A4E7A5E6AA404E0FBDFAFLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch29MemoryCreationQUModelResponseV10CodingKeys33_9A21FF80BB8A4E7A5E6AA404E0FBDFAFLLOGMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  OUTLINED_FUNCTION_5_35();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v29;
  OUTLINED_FUNCTION_1_54(1);
  v26 = v29;
  OUTLINED_FUNCTION_1_54(2);
  v25 = v29;
  OUTLINED_FUNCTION_1_54(3);
  v24 = v29;
  lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic();
  OUTLINED_FUNCTION_5_35();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v29;
  v23 = v30;
  v22 = v31;
  OUTLINED_FUNCTION_1_54(5);
  v20 = v29;
  OUTLINED_FUNCTION_1_54(6);
  v19 = v29;
  LOBYTE(v29) = 7;
  OUTLINED_FUNCTION_5_35();
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v42 = 8;
  OUTLINED_FUNCTION_5_35();
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v15 = OUTLINED_FUNCTION_1_8();
  v16(v15);
  __src[0] = v27;
  __src[1] = v26;
  __src[2] = v25;
  __src[3] = v24;
  __src[4] = v21;
  __src[5] = v30;
  __src[6] = v31;
  __src[7] = v20;
  __src[8] = v19;
  __src[9] = v10;
  __src[10] = v12;
  __src[11] = v18;
  __src[12] = v14;
  outlined init with copy of MemoryCreationQUModelResponse(__src, &v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v29 = v27;
  v30 = v26;
  v31 = v25;
  v32 = v24;
  v33 = v21;
  v34 = v23;
  v35 = v22;
  v36 = v20;
  v37 = v19;
  v38 = v10;
  v39 = v12;
  v40 = v18;
  v41 = v14;
  outlined destroy of MemoryCreationQUModelResponse(&v29);
  return memcpy(a2, __src, 0x68uLL);
}

void *protocol witness for Decodable.init(from:) in conformance MemoryCreationQUModelResponse@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = MemoryCreationQUModelResponse.init(from:)(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t MemoryCreationQUModelResponseMusic.artist.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponseMusic.genre.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponseMusic.song.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MemoryCreationQUModelResponseMusic.init(from:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  OUTLINED_FUNCTION_12_30();
  v3 = type metadata accessor for GeneratedValues();
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return v1;
}

uint64_t MemoryCreationQUModelResponse.schema.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Schema();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static MemoryCreationQUModelResponse.schema.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Schema();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_113_0();
  v7 = *(v6 + 16);

  return v7(a3);
}

uint64_t MemoryCreationQUModelResponseMusic.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1735290739 && a2 == 0xE400000000000000)
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

uint64_t MemoryCreationQUModelResponseMusic.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x747369747261;
  }

  if (a1 == 1)
  {
    return 0x65726E6567;
  }

  return 1735290739;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MemoryCreationQUModelResponse.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MemoryCreationQUModelResponseMusic.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MemoryCreationQUModelResponseMusic.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MemoryCreationQUModelResponseMusic.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MemoryCreationQUModelResponseMusic.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MemoryCreationQUModelResponseMusic.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch34MemoryCreationQUModelResponseMusicV10CodingKeys33_9A21FF80BB8A4E7A5E6AA404E0FBDFAFLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch34MemoryCreationQUModelResponseMusicV10CodingKeys33_9A21FF80BB8A4E7A5E6AA404E0FBDFAFLLOGMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  OUTLINED_FUNCTION_4_38();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  OUTLINED_FUNCTION_4_38();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  OUTLINED_FUNCTION_4_38();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = OUTLINED_FUNCTION_9_34();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MemoryCreationQUModelResponseMusic@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MemoryCreationQUModelResponseMusic.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void *protocol witness for Generable.init(from:) in conformance MemoryCreationQUModelResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = MemoryCreationQUModelResponse.init(from:)(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t protocol witness for static Generable.schema.getter in conformance MemoryCreationQUModelResponse@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Schema();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_113_0();
  v7 = *(v6 + 16);

  return v7(a3);
}

uint64_t protocol witness for Generable.init(from:) in conformance MemoryCreationQUModelResponseMusic@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MemoryCreationQUModelResponseMusic.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic and conformance MemoryCreationQUModelResponseMusic);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponse.CodingKeys and conformance MemoryCreationQUModelResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUModelResponseMusic.CodingKeys and conformance MemoryCreationQUModelResponseMusic.CodingKeys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUModelResponseMusic.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUModelResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_54@<X0>(char a1@<W8>)
{
  *(v1 - 296) = a1;

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_7_33()
{

  return GeneratedValues.extract<A>(field:)();
}

uint64_t OUTLINED_FUNCTION_12_30()
{

  return GeneratedValues.extract<A>(field:)();
}

uint64_t MemoryCreationQUNetworkService.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  OUTLINED_FUNCTION_114(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x25F89F4C0](0xD000000000000011, 0x800000025DBF63D0);
  v8 = [v6 stringForKey_];

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v10;

  if (v9 == 49 && v6 == 0xE100000000000000)
  {

LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_9:
  v13 = type metadata accessor for MemoryCreationModelType();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v13);
  type metadata accessor for FeatureFlagService();
  swift_allocObject();
  v14 = OUTLINED_FUNCTION_145_5();
  MemoryCreationQUNetworkService.init(modelType:useTemplate:featureFlagService:)(v5, v12 & 1, v6);
  return v14;
}

uint64_t MemoryCreationQUNetworkService.promptTemplateID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_promptTemplateID);
  OUTLINED_FUNCTION_89_0();
  v3 = *v1;
  v2 = v1[1];

  return OUTLINED_FUNCTION_107();
}

uint64_t MemoryCreationQUNetworkService.promptTemplateID.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_73_12();
  v5 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t MemoryCreationQUNetworkService.samplingParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  v4 = type metadata accessor for SamplingParameters();
  v5 = OUTLINED_FUNCTION_17(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t MemoryCreationQUNetworkService.cachedModel.getter()
{
  v1 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModel;
  OUTLINED_FUNCTION_89_0();
  v2 = *(v0 + v1);
}

uint64_t MemoryCreationQUNetworkService.cachedModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MemoryCreationQUNetworkService.cachedModelOnBehalfOfPID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelOnBehalfOfPID);
  OUTLINED_FUNCTION_89_0();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MemoryCreationQUNetworkService.cachedModelOnBehalfOfPID.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_73_12();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t MemoryCreationQUNetworkService.modelType.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  OUTLINED_FUNCTION_89_0();
  return outlined init with copy of Date?(v2 + v4, a2, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
}

uint64_t MemoryCreationQUNetworkService.modelType.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of MemoryCreationModelType?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t one-time initialization function for responseSanitizer()
{
  v0 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StringResponseSanitizer();
  __swift_allocate_value_buffer(v10, static MemoryCreationQUNetworkService.responseSanitizer);
  __swift_project_value_buffer(v10, static MemoryCreationQUNetworkService.responseSanitizer);
  v11 = type metadata accessor for StringResponseSanitizer.Overrides();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  (*(v6 + 104))(v9, *MEMORY[0x277D0E578], v5);
  v12 = type metadata accessor for StringResponseSanitizer.Guardrails();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
  (*(v1 + 104))(v4, *MEMORY[0x277D0E580], v0);
  return StringResponseSanitizer.init(overrides:guardrails:)();
}

uint64_t one-time initialization function for renderedPromptSanitizer()
{
  v0 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StringRenderedPromptSanitizer();
  __swift_allocate_value_buffer(v10, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  __swift_project_value_buffer(v10, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  v11 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  (*(v6 + 104))(v9, *MEMORY[0x277D0E5C0], v5);
  v12 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
  (*(v1 + 104))(v4, *MEMORY[0x277D0E5C8], v0);
  return StringRenderedPromptSanitizer.init(overrides:guardrails:)();
}

uint64_t MemoryCreationQUNetworkService.responseSanitizer.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static MemoryCreationQUNetworkService.responseSanitizer.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  OUTLINED_FUNCTION_119_8(v7, a3);
  OUTLINED_FUNCTION_51(v7);
  v9 = *(v8 + 16);

  return v9(a4);
}

uint64_t MemoryCreationQUNetworkService.__allocating_init(modelType:useTemplate:featureFlagService:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_145_5();
  MemoryCreationQUNetworkService.init(modelType:useTemplate:featureFlagService:)(v3, a2, a3);
  return v6;
}

uint64_t MemoryCreationQUNetworkService.init(modelType:useTemplate:featureFlagService:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v41 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v40 - v15;
  v17 = type metadata accessor for SamplingParameters();
  v18 = OUTLINED_FUNCTION_14(v17);
  v42 = v19;
  v43 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v24 = v23 - v22;
  v25 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_modelType;
  v26 = type metadata accessor for MemoryCreationModelType();
  __swift_storeEnumTagSinglePayload(v4 + v25, 1, 1, v26);
  *(v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModel) = 0;
  v27 = v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelOnBehalfOfPID;
  *v27 = 0;
  *(v27 + 8) = 1;
  __swift_storeEnumTagSinglePayload(v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelType, 1, 1, v26);
  swift_beginAccess();
  outlined assign with copy of MemoryCreationModelType?(a1, v4 + v25);
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_useTemplate) = a2;
  *(v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_featureFlagService) = a3;
  v28 = (v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_promptTemplateID);
  *v28 = 0xD000000000000035;
  v28[1] = 0x800000025DBF63F0;
  v29 = one-time initialization token for memoryCreationQU;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logging.memoryCreationQU);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_88_0(v32))
  {
    OUTLINED_FUNCTION_28_3();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v34 = swift_slowAlloc();
    v40[1] = a3;
    v35 = a1;
    v36 = v34;
    v44 = v34;
    *v33 = 136315138;
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v33 + 4) = v37;
    _os_log_impl(&dword_25D85C000, v31, v32, "LLM QU: useTemplate: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    a1 = v35;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  static SamplingStrategy.topK(_:)();
  v38 = type metadata accessor for SamplingStrategy();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v38);
  outlined init with copy of Date?(v16, v41, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();

  outlined destroy of IntentApplication?(a1, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  outlined destroy of IntentApplication?(v16, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  (*(v42 + 32))(v4 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters, v24, v43);
  return v4;
}

uint64_t MemoryCreationQUNetworkService.modelID(modelType:)(uint64_t a1)
{
  v2 = type metadata accessor for MemoryCreationModelType();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  (*(v5 + 16))(v9 - v8, a1, v2);
  v10 = *(v5 + 88);
  v11 = OUTLINED_FUNCTION_119();
  v13 = v12(v11);
  if (v13 == *MEMORY[0x277D37460])
  {
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding3b()();
    v14 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v15 = *(v14 + 8);
LABEL_5:
    v17 = *(v15 + 8);
    v18 = dispatch thunk of CatalogResource.id.getter();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    return v18;
  }

  if (v13 == *MEMORY[0x277D37458])
  {
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV3()();
    v16 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v15 = *(*(v16 + 8) + 8);
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t MemoryCreationQUNetworkService.prewarm(originatorPID:modelType:)(uint64_t a1, uint64_t a2)
{
  MemoryCreationQUNetworkService.prewarmReturningModel(originatorPID:modelType:)(a1, a2);
}

uint64_t MemoryCreationQUNetworkService.prewarmReturningModel(originatorPID:modelType:)(uint64_t a1, uint64_t a2)
{
  v110 = a1;
  v3 = type metadata accessor for PrewarmUrgency();
  v4 = OUTLINED_FUNCTION_14(v3);
  v108 = v5;
  v109 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v107 = v9 - v8;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSg_ADtMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSg_ADtMR);
  OUTLINED_FUNCTION_17(v105);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v101 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  v16 = OUTLINED_FUNCTION_114(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_109();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v106 = &v101 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v101 - v25;
  v27 = type metadata accessor for MemoryCreationModelType();
  v28 = OUTLINED_FUNCTION_14(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_109();
  v104 = v33 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v101 - v36;
  outlined init with copy of Date?(a2, v26, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  v38 = OUTLINED_FUNCTION_149_8(v26);
  v39 = 0x28155B000uLL;
  v111 = v37;
  if (v38 == 1)
  {
    outlined destroy of IntentApplication?(v26, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
    if (one-time initialization token for memoryCreationQU != -1)
    {
      OUTLINED_FUNCTION_2_39();
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logging.memoryCreationQU);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_88_0(v42))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_126_11();
      _os_log_impl(v43, v44, v45, v46, v47, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v48 = objc_opt_self();
    v49 = [v48 standardUserDefaults];
    v50 = MEMORY[0x25F89F4C0](0x6361426D6C6C4E50, 0xEC000000646E656BLL);
    v51 = [v49 stringForKey_];

    v103 = v27;
    if (v51)
    {
      OUTLINED_FUNCTION_128_8();
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      if (v39 == 0x7665446E4F736D67 && v53 == 0xEB00000000656369)
      {
        goto LABEL_20;
      }

      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      OUTLINED_FUNCTION_40_18();
      if (v55)
      {
        goto LABEL_21;
      }
    }

    v56 = [v48 standardUserDefaults];
    v57 = MEMORY[0x25F89F4C0](0x6B636142434D4E50, 0xEB00000000646E65);
    v58 = [v56 stringForKey_];

    if (!v58)
    {
LABEL_18:
      v63 = MEMORY[0x277D37458];
LABEL_22:
      v37 = v111;
      (*(v30 + 104))(v111, *v63, v27);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_128_8();
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    if (v39 != 0x7665446E4F736D67 || v60 != 0xEB00000000656369)
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      OUTLINED_FUNCTION_40_18();
      if ((v62 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_21:
      v63 = MEMORY[0x277D37460];
      goto LABEL_22;
    }

LABEL_20:

    OUTLINED_FUNCTION_40_18();
    goto LABEL_21;
  }

  (*(v30 + 32))(v37, v26, v27);
LABEL_23:
  v64 = v112 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelOnBehalfOfPID;
  OUTLINED_FUNCTION_89_0();
  v65 = v110;
  if ((*(v64 + 8) & 1) != 0 || *v64 != v110)
  {
    goto LABEL_37;
  }

  v102 = v21;
  v66 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelType;
  v67 = v37;
  v68 = v112;
  OUTLINED_FUNCTION_89_0();
  v69 = v106;
  (*(v30 + 16))(v106, v67, v27);
  __swift_storeEnumTagSinglePayload(v69, 0, 1, v27);
  v70 = *(v105 + 48);
  outlined init with copy of Date?(v68 + v66, v14, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  outlined init with copy of Date?(v69, &v14[v70], &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  if (OUTLINED_FUNCTION_149_8(v14) != 1)
  {
    v72 = v102;
    outlined init with copy of Date?(v14, v102, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
    if (OUTLINED_FUNCTION_149_8(&v14[v70]) != 1)
    {
      v73 = v104;
      (*(v30 + 32))(v104, &v14[v70], v27);
      lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(&lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType, MEMORY[0x277D37468]);
      v74 = dispatch thunk of static Equatable.== infix(_:_:)();
      v75 = *(v30 + 8);
      v75(v73, v27);
      outlined destroy of IntentApplication?(v69, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
      v75(v72, v27);
      v65 = v110;
      outlined destroy of IntentApplication?(v14, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
      v37 = v111;
      v39 = 0x28155B000uLL;
      if ((v74 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }

    outlined destroy of IntentApplication?(v69, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
    (*(v30 + 8))(v72, v27);
    v37 = v111;
    v39 = 0x28155B000;
LABEL_30:
    outlined destroy of IntentApplication?(v14, &_s15OmniSearchTypes23MemoryCreationModelTypeOSg_ADtMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSg_ADtMR);
    goto LABEL_37;
  }

  outlined destroy of IntentApplication?(v69, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  v71 = OUTLINED_FUNCTION_149_8(&v14[v70]);
  v37 = v111;
  v39 = 0x28155B000;
  if (v71 != 1)
  {
    goto LABEL_30;
  }

  outlined destroy of IntentApplication?(v14, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
LABEL_32:
  v76 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModel;
  v77 = v112;
  OUTLINED_FUNCTION_89_0();
  v78 = *(v77 + v76);
  v37 = v111;
  if (v78)
  {
    v79 = *(v39 + 2872);

    if (v79 != -1)
    {
      OUTLINED_FUNCTION_2_39();
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static Logging.memoryCreationQU);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_88_0(v82))
    {
      OUTLINED_FUNCTION_28_3();
      v83 = swift_slowAlloc();
      *v83 = 134217984;
      *(v83 + 4) = v65;
      OUTLINED_FUNCTION_126_11();
      v89 = 12;
LABEL_43:
      _os_log_impl(v84, v85, v86, v87, v88, v89);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      goto LABEL_44;
    }

    goto LABEL_44;
  }

LABEL_37:
  if (*(v39 + 2872) != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v90 = type metadata accessor for Logger();
  __swift_project_value_buffer(v90, static Logging.memoryCreationQU);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_88_0(v92))
  {
    OUTLINED_FUNCTION_28_3();
    v93 = swift_slowAlloc();
    *v93 = 134217984;
    *(v93 + 4) = v65;
    _os_log_impl(&dword_25D85C000, v91, v92, "Prewarming model for PID %ld", v93, 0xCu);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v78 = MemoryCreationQUNetworkService.createAndCacheModel(onBehalfOfPID:modelType:)(v65, v37);
  static PrewarmUrgency.default.getter();
  TokenGenerator.prewarm(usesGuidedGeneration:urgency:)();
  v94 = OUTLINED_FUNCTION_115_10();
  v95(v94);
  v81 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_88_0(v96))
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_126_11();
    v89 = 2;
    goto LABEL_43;
  }

LABEL_44:

  v97 = *(v30 + 8);
  v98 = OUTLINED_FUNCTION_119();
  v99(v98);
  return v78;
}

uint64_t MemoryCreationQUNetworkService.createAndCacheModel(onBehalfOfPID:modelType:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v5 = type metadata accessor for MemoryCreationModelType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v49 = &v44 - v15;
  if (one-time initialization token for memoryCreationQU != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logging.memoryCreationQU);

  v47 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v46 = v6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v45 = v12;
    v23 = v22;
    v50 = v22;
    *v21 = 136315138;
    v24 = v5;
    v25 = a1;
    v26 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_modelType;
    swift_beginAccess();
    outlined init with copy of Date?(v3 + v26, v49, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
    String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v21 + 4) = v27;
    a1 = v25;
    v5 = v24;
    _os_log_impl(&dword_25D85C000, v18, v19, "Memory Creation: creating memory creation model of type: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v28 = v23;
    v12 = v45;
    MEMORY[0x25F8A1050](v28, -1, -1);
    v29 = v21;
    v6 = v46;
    MEMORY[0x25F8A1050](v29, -1, -1);
  }

  (*(v6 + 16))(v9, v48, v5);
  v30 = (*(v6 + 88))(v9, v5);
  v31 = v30;
  if (v30 == *MEMORY[0x277D37460])
  {
    v32 = v12;
    MemoryCreationQUNetworkService.miniModel(onBehalfOfPID:)();
    v34 = v33;
    if (!v33)
    {
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_25D85C000, v41, v42, "Unable to init model bundle for mini model, falling back to maxi model", v43, 2u);
        MEMORY[0x25F8A1050](v43, -1, -1);
      }

      v34 = MemoryCreationQUNetworkService.maxiModel(onBehalfOfPID:)();
      v12 = v32;
      (*(v6 + 104))(v32, *MEMORY[0x277D37458], v5);
      goto LABEL_10;
    }

LABEL_9:
    (*(v6 + 104))(v12, v31, v5);
LABEL_10:

    v35 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModel;
    swift_beginAccess();
    v36 = *(v3 + v35);
    *(v3 + v35) = v34;

    v37 = v49;
    (*(v6 + 32))(v49, v12, v5);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v5);
    v38 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelType;
    swift_beginAccess();
    outlined assign with take of MemoryCreationModelType?(v37, v3 + v38);
    swift_endAccess();
    v39 = v3 + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_cachedModelOnBehalfOfPID;
    swift_beginAccess();
    *v39 = a1;
    *(v39 + 8) = 0;
    return v34;
  }

  if (v30 == *MEMORY[0x277D37458])
  {
    v34 = MemoryCreationQUNetworkService.maxiModel(onBehalfOfPID:)();
    goto LABEL_9;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t MemoryCreationQUNetworkService.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:)()
{
  OUTLINED_FUNCTION_48();
  *(v1 + 360) = v28;
  *(v1 + 368) = v0;
  *(v1 + 480) = v27;
  *(v1 + 344) = v2;
  *(v1 + 352) = v26;
  *(v1 + 328) = v3;
  *(v1 + 336) = v4;
  *(v1 + 312) = v5;
  *(v1 + 320) = v6;
  *(v1 + 296) = v7;
  *(v1 + 304) = v8;
  *(v1 + 288) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices14InferenceErrorO7ContextVSgMd, &_s20ModelManagerServices14InferenceErrorO7ContextVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  *(v1 + 376) = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for InferenceError.Context();
  *(v1 + 384) = v13;
  OUTLINED_FUNCTION_21(v13);
  *(v1 + 392) = v14;
  v16 = *(v15 + 64);
  *(v1 + 400) = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for InferenceError();
  *(v1 + 408) = v17;
  OUTLINED_FUNCTION_21(v17);
  *(v1 + 416) = v18;
  v20 = *(v19 + 64) + 15;
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

{
  if (*(v0 + 480))
  {
    v1 = [objc_opt_self() processInfo];
    v2 = [v1 processIdentifier];

    v3 = v2;
  }

  else
  {
    v3 = *(v0 + 352);
  }

  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 440) = __swift_project_value_buffer(v4, static Logging.memoryCreationQU);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_88_0(v6))
  {
    OUTLINED_FUNCTION_28_3();
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    OUTLINED_FUNCTION_126_11();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v13 = v5;
  v15 = *(v0 + 360);
  v14 = *(v0 + 368);
  v16 = *(v0 + 336);
  v28 = *(v0 + 344);
  v18 = *(v0 + 320);
  v17 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);

  *(v0 + 448) = MemoryCreationQUNetworkService.prewarmReturningModel(originatorPID:modelType:)(v3, v15);
  v22._rawValue = v20;
  v23._rawValue = v18;
  *(v0 + 456) = MemoryCreationQUNetworkService.generatePromptBindings(query:personNames:petNames:locations:currentTime:)(v21, v19, v22, v23, v17, v16, v28);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 464) = v24;
  *v24 = v25;
  v24[1] = MemoryCreationQUNetworkService.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:);
  v26 = *(v0 + 368);

  return MemoryCreationQUNetworkService.parseHelper(_:promptBindings:quModel:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 464);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v3 + 472) = v0;

  if (v0)
  {
    v9 = *(v3 + 456);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = *(v0 + 472);
  v2 = *(v0 + 432);
  v3 = *(v0 + 408);
  *(v0 + 280) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 424);
    v5 = *(v0 + 432);
    v7 = *(v0 + 408);
    v8 = *(v0 + 416);
    v10 = *(v0 + 376);
    v9 = *(v0 + 384);

    v11 = *(v8 + 32);
    v12 = OUTLINED_FUNCTION_107();
    v13(v12);
    lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    v14 = swift_allocError();
    (*(v8 + 16))(v15, v6, v7);
    v16 = _convertErrorToNSError(_:)();

    v17 = MEMORY[0x277D837D0];
    v18 = Dictionary.init(dictionaryLiteral:)();
    InferenceError.context.getter();
    if (__swift_getEnumTagSinglePayload(v10, 1, v9) == 1)
    {
      outlined destroy of IntentApplication?(*(v0 + 376), &_s20ModelManagerServices14InferenceErrorO7ContextVSgMd, &_s20ModelManagerServices14InferenceErrorO7ContextVSgMR);
    }

    else
    {
      v21 = *(v0 + 392);
      v22 = *(v0 + 400);
      v23 = *(v0 + 376);
      v71 = *(v0 + 384);

      v24 = *(v21 + 32);
      v25 = OUTLINED_FUNCTION_113_11();
      v26(v25);
      v27 = InferenceError.Context.domain.getter();
      v69 = v28;
      v70 = v27;
      v68 = InferenceError.Context.code.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      v67 = xmmword_25DBC8180;
      *(inited + 16) = xmmword_25DBC8180;
      v30 = *MEMORY[0x277CCA450];
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v31;
      InferenceError.Context.userInfo.getter();
      v32 = Dictionary.description.getter();
      v33 = v16;
      v35 = v34;

      *(inited + 72) = v17;
      *(inited + 48) = v32;
      *(inited + 56) = v35;
      v16 = v33;
      v36 = Dictionary.init(dictionaryLiteral:)();
      v37 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v38 = @nonobjc NSError.init(domain:code:userInfo:)(v70, v69, v68, v36);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_25DBC8180;
      v40 = *MEMORY[0x277CCA7E8];
      *(v39 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v39 + 40) = v41;
      *(v39 + 72) = type metadata accessor for NSError();
      *(v39 + 48) = v38;
      v18 = Dictionary.init(dictionaryLiteral:)();
      (*(v21 + 8))(v22, v71);
    }

    v42 = *(v0 + 440);
    v43 = [v16 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = [v16 code];
    v45 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v46 = OUTLINED_FUNCTION_64_0();
    v48 = @nonobjc NSError.init(domain:code:userInfo:)(v46, v47, v44, v18);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_28_3();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v48;
      v53 = v48;
      _os_log_impl(&dword_25D85C000, v49, v50, "Caught inference error, returning wrapped error: %@", v51, 0xCu);
      outlined destroy of IntentApplication?(v52, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v54 = *(v0 + 448);
    v55 = *(v0 + 416);
    v56 = *(v0 + 424);
    v57 = *(v0 + 408);

    swift_willThrow();

    v58 = *(v55 + 8);
    v59 = OUTLINED_FUNCTION_179_0();
    v60(v59);
  }

  else
  {
    v19 = *(v0 + 448);

    swift_willThrow();

    v20 = *(v0 + 472);
  }

  v62 = *(v0 + 424);
  v61 = *(v0 + 432);
  v63 = *(v0 + 400);
  v64 = *(v0 + 376);

  OUTLINED_FUNCTION_127();

  return v65();
}

void MemoryCreationQUNetworkService.parse(_:personNames:petNames:locations:currentTime:originatorPID:modelType:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[50];
  v6 = v0[47];
  v7 = v0[36];

  memcpy(v7, v0 + 2, 0x68uLL);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_204();

  __asm { BRAA            X1, X16 }
}

uint64_t MemoryCreationQUNetworkService.generatePromptBindings(query:personNames:petNames:locations:currentTime:)(uint64_t a1, uint64_t a2, Swift::OpaquePointer personNames, Swift::OpaquePointer petNames, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = MemoryCreationQUNetworkService.formatNames(personNames:petNames:)(personNames, petNames);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;
  if (a7)
  {
    v15 = a7;
  }

  else
  {
    a6 = static MemoryCreationQUNetworkService.getCurrentDate()();
    v15 = v16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8930;
  *(inited + 32) = 0x6D6F725072657375;
  *(inited + 40) = 0xEA00000000007470;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = 0x73656D616ELL;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = v11;
  *(inited + 96) = 0x54746E6572727563;
  *(inited + 104) = 0xEB00000000656D69;
  *(inited + 112) = a6;
  *(inited + 120) = v15;
  *(inited + 128) = 0x6E6F697461636F6CLL;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = v12;
  *(inited + 152) = v14;

  v18 = Dictionary.init(dictionaryLiteral:)();
  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logging.memoryCreationQU);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_28_3();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v25 = swift_slowAlloc();
    *v22 = 136315138;
    Dictionary.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v22 + 4) = v23;
    _os_log_impl(&dword_25D85C000, v20, v21, "Memory Creation QU prompt bindings: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  return v18;
}

uint64_t MemoryCreationQUNetworkService.parseHelper(_:promptBindings:quModel:)()
{
  OUTLINED_FUNCTION_48();
  v1[147] = v0;
  v1[146] = v2;
  v1[145] = v3;
  v1[144] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  OUTLINED_FUNCTION_114(v5);
  v7 = *(v6 + 64);
  v1[148] = OUTLINED_FUNCTION_199();
  v8 = type metadata accessor for PromptTemplate();
  v1[149] = v8;
  OUTLINED_FUNCTION_21(v8);
  v1[150] = v9;
  v11 = *(v10 + 64);
  v1[151] = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_72();
  if (*(v0[147]._rawValue + OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_useTemplate) == 1)
  {
    if (one-time initialization token for memoryCreationQU != -1)
    {
      OUTLINED_FUNCTION_2_39();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    v0[152]._rawValue = __swift_project_value_buffer(v1, static Logging.memoryCreationQU);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_172();
      *v4 = 0;
      _os_log_impl(&dword_25D85C000, v2, v3, "Calling LLM QU parse with template", v4, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    rawValue = v0[151]._rawValue;
    v6 = v0[148]._rawValue;
    v7 = v0[147]._rawValue;

    static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstandingID.getter();
    v8 = &v7[OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_promptTemplateID];
    OUTLINED_FUNCTION_89_0();
    v10 = *v8;
    v9 = *(v8 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_s12StaticStringVtGMd, &_ss23_ContiguousArrayStorageCySS_s12StaticStringVtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBC8180;
    *(inited + 32) = v10;
    *(inited + 40) = v9;
    *(inited + 48) = "{{ specialToken.chat.role.system }}You are an expert in query understanding for a photo library. Your task is to transform the given natural language prompt into a structured JSON format. You must follow the instructions below:<n> - Ensure music artist names are specifically marked as a music artist, not simply as a who.<n> - Identify named locations like landmarks, business addresses, cities, and countries, and tag them as a where rather than a what.<n> - Annotate any mention of a holiday or festival name immediately followed by a year as a when.<n> - Restrict what categories to only the following options: Anniversary, Birthday, Breakfast, Concert, Dinner, Diving, Hiking, Holiday Event, Lunch, Wedding.<n> - Please treat all queries as case-insensitive and provide the same response if the meaning of the queries is the same.<n> - The photo library contains a list of names for reference: [{{ names }}]. The query may include names that are not in this list.{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.user }}{{ userPrompt }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
    *(inited + 56) = 1147;
    *(inited + 64) = 2;
    swift_bridgeObjectRetain_n();
    Dictionary.init(dictionaryLiteral:)();
    OUTLINED_FUNCTION_34_5();
    PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();
    if ((*(**&v7[OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_featureFlagService] + 80))(5))
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[153]._rawValue = v12;
      *v12 = v13;
      v12[1] = MemoryCreationQUNetworkService.parseHelper(_:promptBindings:quModel:);
      v14 = v0[151]._rawValue;
      v15 = v0[147]._rawValue;
      v16 = v0[146]._rawValue;
      v17 = v0[145]._rawValue;
      OUTLINED_FUNCTION_204();

      return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:)(v18, v19, v20, v21, v22);
    }

    else
    {
      v40 = swift_task_alloc();
      v0[155]._rawValue = v40;
      *v40 = v0;
      v40[1] = MemoryCreationQUNetworkService.parseHelper(_:promptBindings:quModel:);
      v41 = v0[151]._rawValue;
      v42 = v0[147]._rawValue;
      v43 = v0[146]._rawValue;
      v44 = v0[145]._rawValue;
      OUTLINED_FUNCTION_204();

      return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)(v45, v46, v47, v48);
    }
  }

  else
  {
    v0[159]._rawValue = MemoryCreationQUNetworkService.generatePrompt(promptBindings:)(v0[1160])._object;
    if (one-time initialization token for memoryCreationQU != -1)
    {
      OUTLINED_FUNCTION_2_39();
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v0[160]._rawValue = __swift_project_value_buffer(v25, static Logging.memoryCreationQU);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_88_0(v27))
    {
      v28 = OUTLINED_FUNCTION_172();
      *v28 = 0;
      _os_log_impl(&dword_25D85C000, v26, v27, "Calling LLM QU parse without template", v28, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v29 = v0[147]._rawValue;

    if ((*(**&v29[OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_featureFlagService] + 80))(5))
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[161]._rawValue = v30;
      *v30 = v31;
      v30[1] = MemoryCreationQUNetworkService.parseHelper(_:promptBindings:quModel:);
      v32 = v0[147]._rawValue;
      v33 = v0[146]._rawValue;
      OUTLINED_FUNCTION_204();

      return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)(v34, v35, v36, v37, v38);
    }

    else
    {
      v50 = swift_task_alloc();
      v0[163]._rawValue = v50;
      *v50 = v0;
      v50[1] = MemoryCreationQUNetworkService.parseHelper(_:promptBindings:quModel:);
      v51 = v0[147]._rawValue;
      v52 = v0[146]._rawValue;
      OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_204();

      return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)(v53, v54, v55, v56);
    }
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 1224);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 1232) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v1 = *(v0 + 1216);
  outlined init with copy of MemoryCreationQUModelResponse(v0 + 328, v0 + 744);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of MemoryCreationQUModelResponse(v0 + 328);
  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v0 + 1208);
    v4 = *(v0 + 1200);
    v5 = *(v0 + 1192);
    OUTLINED_FUNCTION_28_3();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v18 = swift_slowAlloc();
    *v6 = 136315138;
    memcpy((v0 + 848), (v0 + 328), 0x68uLL);
    outlined init with copy of MemoryCreationQUModelResponse(v0 + 328, v0 + 952);
    String.init<A>(describing:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v6 + 4) = v7;
    _os_log_impl(&dword_25D85C000, v2, v3, "Got response from LLM QU with constrained decoding: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    (*(v4 + 8))(v17, v5);
  }

  else
  {
    v8 = *(v0 + 1208);
    v9 = *(v0 + 1200);
    v10 = *(v0 + 1192);

    v11 = *(v9 + 8);
    v12 = OUTLINED_FUNCTION_54_0();
    v13(v12);
  }

  OUTLINED_FUNCTION_127_12();
  v14 = *(v0 + 424);
  OUTLINED_FUNCTION_54_19(*(v0 + 1152), *(v0 + 408), *(v0 + 392), *(v0 + 328), *(v0 + 344), *(v0 + 360), *(v0 + 376));

  OUTLINED_FUNCTION_106();

  return v15();
}

{
  OUTLINED_FUNCTION_48();
  v1 = OUTLINED_FUNCTION_65_19();
  v2(v1);
  v3 = *(v0 + 1232);
  OUTLINED_FUNCTION_147_8();

  OUTLINED_FUNCTION_127();

  return v4();
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_52();
  v7 = v6;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  v10 = *(v9 + 1240);
  v11 = *v1;
  OUTLINED_FUNCTION_11();
  *v12 = v11;
  v7[156] = v0;

  if (!v0)
  {
    v7[157] = v3;
    v7[158] = v5;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_78();
  v1._countAndFlagsBits = *(v0 + 1264);
  v1._object = *(v0 + 1256);
  v2 = *(v0 + 1248);
  MemoryCreationQUModelResponse.init(jsonString:)((v0 + 224), v1);
  v3 = OUTLINED_FUNCTION_65_19();
  v4(v3);
  OUTLINED_FUNCTION_127_12();
  if (v5)
  {

    OUTLINED_FUNCTION_127();
  }

  else
  {
    v7 = *(v0 + 320);
    OUTLINED_FUNCTION_54_19(*(v0 + 1152), *(v0 + 304), *(v0 + 288), *(v0 + 224), *(v0 + 240), *(v0 + 256), *(v0 + 272));

    OUTLINED_FUNCTION_106();
  }

  return v6();
}

{
  OUTLINED_FUNCTION_48();
  v1 = OUTLINED_FUNCTION_65_19();
  v2(v1);
  v3 = *(v0 + 1248);
  OUTLINED_FUNCTION_147_8();

  OUTLINED_FUNCTION_127();

  return v4();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 1288);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v3 + 1296) = v0;

  if (!v0)
  {
    v9 = *(v3 + 1272);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = *(v0 + 1280);
  outlined init with copy of MemoryCreationQUModelResponse(v0 + 120, v0 + 432);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of MemoryCreationQUModelResponse(v0 + 120);
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_28_3();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v9 = swift_slowAlloc();
    *v4 = 136315138;
    memcpy((v0 + 536), (v0 + 120), 0x68uLL);
    outlined init with copy of MemoryCreationQUModelResponse(v0 + 120, v0 + 640);
    String.init<A>(describing:)();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v4 + 4) = v5;
    _os_log_impl(&dword_25D85C000, v2, v3, "Got response from LLM QU with constrained decoding: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  OUTLINED_FUNCTION_127_12();
  v6 = *(v0 + 216);
  OUTLINED_FUNCTION_54_19(*(v0 + 1152), *(v0 + 200), *(v0 + 184), *(v0 + 120), *(v0 + 136), *(v0 + 152), *(v0 + 168));

  OUTLINED_FUNCTION_106();

  return v7();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 1272);

  v2 = *(v0 + 1296);
  OUTLINED_FUNCTION_147_8();

  OUTLINED_FUNCTION_127();

  return v3();
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_52();
  v7 = v6;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  v10 = *(v9 + 1304);
  v11 = *v1;
  OUTLINED_FUNCTION_11();
  *v12 = v11;
  v7[164] = v0;

  if (!v0)
  {
    v13 = v7[159];

    v7[165] = v3;
    v7[166] = v5;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_78();
  v1._countAndFlagsBits = *(v0 + 1328);
  v1._object = *(v0 + 1320);
  v2 = *(v0 + 1312);
  MemoryCreationQUModelResponse.init(jsonString:)((v0 + 16), v1);
  OUTLINED_FUNCTION_127_12();
  if (v3)
  {

    OUTLINED_FUNCTION_127();
  }

  else
  {
    v5 = *(v0 + 112);
    OUTLINED_FUNCTION_54_19(*(v0 + 1152), *(v0 + 96), *(v0 + 80), *(v0 + 16), *(v0 + 32), *(v0 + 48), *(v0 + 64));

    OUTLINED_FUNCTION_106();
  }

  return v4();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 1272);

  v2 = *(v0 + 1312);
  OUTLINED_FUNCTION_147_8();

  OUTLINED_FUNCTION_127();

  return v3();
}

uint64_t MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_142_5(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v2 + 128) = v4;
  *v4 = v5;
  v4[1] = MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:);
  OUTLINED_FUNCTION_104_5();

  return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplateAndConstrainedDecoding(promptTemplate:bindings:quModel:)(v6, v7, v8, v1, v0);
}

uint64_t MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)()
{
  OUTLINED_FUNCTION_78();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:);
  v6 = OUTLINED_FUNCTION_113_11();

  return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUUsingTemplate(promptTemplate:bindings:quModel:)(v6, v7, v4, v2);
}

Swift::String __swiftcall MemoryCreationQUNetworkService.generatePrompt(promptBindings:)(Swift::OpaquePointer promptBindings)
{
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = StaticString.description.getter();
  MemoryCreationQUNetworkService.render(prompt:with:)(v3, v4, v2);

  v5 = OUTLINED_FUNCTION_64_0();
  v7 = MemoryCreationQUNetworkService.render(prompt:with:)(v5, v6, promptBindings._rawValue);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_142_5(v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v3 + 128) = v6;
  *v6 = v7;
  v6[1] = MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:);

  return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)(v3 + 16, v4, v2, v1, v0);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;

  if (!v0)
  {
    memcpy(*(v3 + 120), (v3 + 16), 0x68uLL);
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:);

  return closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)(v7, v5, v0, v3);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_119();
  }

  return v7(v6);
}

uint64_t static MemoryCreationQUNetworkService.getCurrentDate()()
{
  v0 = type metadata accessor for Date();
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  v6 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  outlined bridged method (mbnn) of @objc NSDateFormatter.dateFormat.setter(0x2D4D4D2D79797979, 0xEA00000000006464, v6);
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_107();
  v10(v9);
  v11 = [v6 stringFromDate_];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

Swift::String __swiftcall MemoryCreationQUNetworkService.formatNames(personNames:petNames:)(Swift::OpaquePointer personNames, Swift::OpaquePointer petNames)
{

  specialized Array.append<A>(contentsOf:)(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  OUTLINED_FUNCTION_136_9();
  BidirectionalCollection<>.joined(separator:)();

  v3 = OUTLINED_FUNCTION_88();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall MemoryCreationQUNetworkService.formatLocations(locations:)(Swift::OpaquePointer locations)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  OUTLINED_FUNCTION_136_9();
  v1 = BidirectionalCollection<>.joined(separator:)();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t MemoryCreationQUNetworkService.render(prompt:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (*(a3 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a3 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];

    MEMORY[0x25F89F6C0](v15, v16);

    MEMORY[0x25F89F6C0](8224032, 0xE300000000000000);
    lazy protocol witness table accessor for type String and conformance String();
    a1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return a1;
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void MemoryCreationQUNetworkService.miniModel(onBehalfOfPID:)()
{
  OUTLINED_FUNCTION_60_1();
  v66 = v2;
  v3 = type metadata accessor for CachePolicy();
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v67 = v8 - v7;
  v9 = type metadata accessor for SessionConfiguration();
  v10 = OUTLINED_FUNCTION_114(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v68 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v18);
  v70 = &v63 - v19;
  v69 = type metadata accessor for ModelBundle();
  v20 = OUTLINED_FUNCTION_14(v69);
  v71 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_86_7();
  v24 = type metadata accessor for ResourceBundleQuery();
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_109();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v63 - v34;
  v36 = type metadata accessor for MemoryCreationModelType();
  v37 = OUTLINED_FUNCTION_14(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36();
  v44 = v43 - v42;
  (*(v39 + 104))(v43 - v42, *MEMORY[0x277D37460], v36);
  MemoryCreationQUNetworkService.modelID(modelType:)(v44);
  v45 = v44;
  v46 = v35;
  (*(v39 + 8))(v45, v36);

  ResourceBundleQuery.init(configurationIdentifier:arguments:)();
  if (v0)
  {
  }

  else
  {
    v72 = v1;
    (*(v27 + 16))(v32, v35, v24);
    v47 = v70;
    ModelBundle.init(resourceBundleQuery:)();
    v48 = v69;
    if (__swift_getEnumTagSinglePayload(v47, 1, v69) == 1)
    {
      (*(v27 + 8))(v46, v24);

      outlined destroy of IntentApplication?(v47, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
    }

    else
    {
      (*(v71 + 32))(v72, v47, v48);
      if (one-time initialization token for memoryCreationQU != -1)
      {
        OUTLINED_FUNCTION_2_39();
        swift_once();
      }

      v64 = v46;
      v65 = v27;
      v70 = v24;
      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Logging.memoryCreationQU);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        OUTLINED_FUNCTION_28_3();
        v52 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v73 = swift_slowAlloc();
        *v52 = 136315138;
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v52 + 4) = v53;
        _os_log_impl(&dword_25D85C000, v50, v51, "LLM QU: using mini model: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMR);
      v54 = v71;
      v55 = *(v71 + 72);
      v56 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_25DBC8180;
      v58 = v57 + v56;
      v59 = v72;
      (*(v54 + 16))(v58, v72, v48);
      static CachePolicy.inMemory.getter();
      SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:)();
      v60 = type metadata accessor for TokenGenerator();
      v61 = *(v60 + 48);
      v62 = *(v60 + 52);
      swift_allocObject();
      TokenGenerator.init(configuration:)();
      (*(v54 + 8))(v59, v48);
      (*(v65 + 8))(v64, v70);
    }
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t MemoryCreationQUNetworkService.maxiModel(onBehalfOfPID:)()
{
  v0 = type metadata accessor for CachePolicy();
  v1 = OUTLINED_FUNCTION_114(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  v4 = type metadata accessor for GenerativeModelSessionConfiguration();
  v5 = OUTLINED_FUNCTION_114(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_100_9();
  v12 = type metadata accessor for MemoryCreationModelType();
  v13 = OUTLINED_FUNCTION_14(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  (*(v15 + 104))(v19 - v18, *MEMORY[0x277D37458], v12);
  MemoryCreationQUNetworkService.modelID(modelType:)(v20);
  (*(v15 + 8))(v20, v12);
  if (one-time initialization token for memoryCreationQU != -1)
  {
    OUTLINED_FUNCTION_2_39();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logging.memoryCreationQU);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_28_3();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v26 = swift_slowAlloc();
    *v24 = 136315138;
    OUTLINED_FUNCTION_45_0();
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v22, v23, "LLM QU: using maxi model: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  type metadata accessor for TokenGenerator();
  type metadata accessor for LLMBundle();
  lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(&lazy protocol witness table cache variable for type LLMBundle and conformance LLMBundle, MEMORY[0x277D29CE0]);
  OUTLINED_FUNCTION_45_0();
  ResourceBundleIdentifier.init(stringLiteral:)();
  static CachePolicy.inMemory.getter();
  GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
  return TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:)();
}

void MemoryCreationQUNetworkService.parseWithLLMQU_generateGenerativeFunctionOverride()()
{
  OUTLINED_FUNCTION_60_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_32_26(v5, v68);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_86_7();
  v10 = type metadata accessor for BindableConfiguration();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_68_15();
  v14 = type metadata accessor for CompletionPrompt();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_30();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_20_18(v22, v23, v24, v25, v26, v27, v28, v29, v69);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_27_21(v31, v32, v33, v34, v35, v36, v37, v38, v70);
  OUTLINED_FUNCTION_29_17();
  CompletionPrompt.init(_:)();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_5_36();
  v41 = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v39, v40);
  OUTLINED_FUNCTION_36_19(v41);
  v42 = OUTLINED_FUNCTION_64_14();
  v43(v42);
  v44 = *(v17 + 8);
  v45 = OUTLINED_FUNCTION_26_2();
  v44(v45);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v46 = type metadata accessor for StringResponseSanitizer();
  __swift_project_value_buffer(v46, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_51(v46);
  v48 = *(v47 + 16);
  v49 = OUTLINED_FUNCTION_137_3();
  v50(v49);
  v51 = *MEMORY[0x277D0E550];
  v52 = OUTLINED_FUNCTION_11_32();
  v53(v52);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v54 = OUTLINED_FUNCTION_0_9();
  v55(v54);
  v56 = OUTLINED_FUNCTION_34_5();
  v44(v56);
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v57 = type metadata accessor for StringRenderedPromptSanitizer();
  __swift_project_value_buffer(v57, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_28_14();
  v59 = *(v58 + 16);
  v60 = OUTLINED_FUNCTION_59_15();
  v61(v60);
  v62 = OUTLINED_FUNCTION_10_29();
  v63(v62);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v64 = OUTLINED_FUNCTION_31_23();
  v65(v64);
  v66 = OUTLINED_FUNCTION_26_2();
  v44(v66);
  OUTLINED_FUNCTION_16_28();
  static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (v0)
  {
    v67 = OUTLINED_FUNCTION_162_3();
  }

  else
  {
    v67 = OUTLINED_FUNCTION_14_25();
  }

  v44(v67);
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_61_2();
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v4[46] = v21;
  v22 = *(v21 - 8);
  v4[47] = v22;
  v23 = *(v22 + 64) + 15;
  v4[48] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v4[49] = v24;
  v25 = *(v24 - 8);
  v4[50] = v25;
  v26 = *(v25 + 64) + 15;
  v4[51] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v4[52] = v27;
  v28 = *(v27 - 8);
  v4[53] = v28;
  v29 = *(v28 + 64) + 15;
  v4[54] = swift_task_alloc();
  v30 = type metadata accessor for CompletionPrompt();
  v4[55] = v30;
  v31 = *(v30 - 8);
  v4[56] = v31;
  v32 = *(v31 + 64) + 15;
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:), 0, 0);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)()
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 456);
  v2 = *(v0 + 448);
  v64 = *(v0 + 440);
  v65 = *(v0 + 464);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  v5 = *(v0 + 416);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  v8 = *(v0 + 192);
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  OUTLINED_FUNCTION_134_8();
  CompletionPrompt.init(_:)();

  v10 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  *(v0 + 488) = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  v11 = type metadata accessor for SamplingParameters();
  *(v0 + 496) = v11;
  OUTLINED_FUNCTION_17(v11);
  v13 = *(v12 + 16);
  *(v0 + 504) = v13;
  *(v0 + 512) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v3, v7 + v10);
  *(v0 + 624) = *MEMORY[0x277D0E548];
  *(v0 + 520) = *(v4 + 104);
  OUTLINED_FUNCTION_138_3();
  *(v0 + 528) = v14;
  v15(v3);
  OUTLINED_FUNCTION_5_36();
  *(v0 + 536) = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v16, v17);
  OUTLINED_FUNCTION_144_8();
  v18 = *(v4 + 8);
  *(v0 + 544) = v18;
  *(v0 + 552) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v3, v5);
  *(v0 + 560) = *(v2 + 8);
  *(v0 + 568) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19 = OUTLINED_FUNCTION_88();
  v66 = v20;
  v20(v19);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v22 = *(v0 + 464);
  v21 = *(v0 + 472);
  v23 = *(v0 + 440);
  v25 = *(v0 + 400);
  v24 = *(v0 + 408);
  v26 = *(v0 + 392);
  v27 = type metadata accessor for StringResponseSanitizer();
  OUTLINED_FUNCTION_119_8(v27, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_51(v27);
  (*(v28 + 16))(v24);
  v29 = *MEMORY[0x277D0E550];
  v30 = OUTLINED_FUNCTION_66_16();
  v31(v30, v29, v26);
  OUTLINED_FUNCTION_72_12();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v32 = *(v25 + 8);
  v33 = OUTLINED_FUNCTION_179_0();
  v34(v33);
  v35 = OUTLINED_FUNCTION_64_0();
  v66(v35);
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v37 = *(v0 + 472);
  v36 = *(v0 + 480);
  v38 = *(v0 + 440);
  v39 = *(v0 + 376);
  v40 = *(v0 + 384);
  v41 = *(v0 + 368);
  v63 = *(v0 + 360);
  v42 = *(v0 + 328);
  v43 = type metadata accessor for StringRenderedPromptSanitizer();
  OUTLINED_FUNCTION_119_8(v43, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_51(v43);
  v45 = *(v44 + 16);
  v46 = OUTLINED_FUNCTION_140_7();
  v47(v46);
  v48 = OUTLINED_FUNCTION_67_17();
  v49(v48, v29, v41);
  OUTLINED_FUNCTION_73_13();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v50 = OUTLINED_FUNCTION_61_17();
  v51(v50);
  v52 = OUTLINED_FUNCTION_179_0();
  v66(v52);
  v53 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_57_15(v53);
  OUTLINED_FUNCTION_93_12();
  v54 = *(MEMORY[0x277D0E538] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 576) = v55;
  *v55 = v56;
  v55[1] = closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:);
  v57 = *(v0 + 256);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_15_6();

  return MEMORY[0x282166B58](v58, v59, v60);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 584) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v6 = v4[74];
  *v5 = *v2;
  v4[75] = v1;

  v7 = v4[31];
  v8 = v4[30];
  v9 = v4[29];
  if (!v1)
  {
    v4[76] = v0;
    v4[77] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_204();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = v0[71];
  v2 = v0[70];
  v4 = v0[59];
  v3 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[54];
  v8 = v0[55];
  v13 = v0[51];
  v14 = v0[48];
  v15 = v0[44];
  v16 = v0[41];
  v17 = v0[40];
  v18 = v0[37];
  v19 = v0[34];
  v20 = v0[32];
  v21 = v0[31];
  (*(v0[43] + 8))(v0[45], v0[42]);
  v2(v3, v8);

  v9 = v0[1];
  v10 = v0[77];
  v11 = v0[76];

  return v9(v10, v11);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQU(prompt:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v19 = v18[71];
  v20 = v18[70];
  v21 = v18[60];
  v22 = v18[55];
  v23 = OUTLINED_FUNCTION_62_16();
  v24(v23);
  v25 = OUTLINED_FUNCTION_107();
  v20(v25);
  v26 = v18[73];
  OUTLINED_FUNCTION_52_18();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_15_6();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v19 = v18[71];
  v20 = v18[70];
  v21 = v18[60];
  v22 = v18[55];
  v23 = OUTLINED_FUNCTION_62_16();
  v24(v23);
  v25 = OUTLINED_FUNCTION_107();
  v20(v25);
  v26 = v18[75];
  OUTLINED_FUNCTION_52_18();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_15_6();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding_generateGenerativeFunctionOverride()()
{
  OUTLINED_FUNCTION_60_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_32_26(v5, v68);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_86_7();
  v10 = type metadata accessor for BindableConfiguration();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_68_15();
  v14 = type metadata accessor for CompletionPrompt();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_30();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_20_18(v22, v23, v24, v25, v26, v27, v28, v29, v69);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_27_21(v31, v32, v33, v34, v35, v36, v37, v38, v70);
  OUTLINED_FUNCTION_29_17();
  CompletionPrompt.init(_:)();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_5_36();
  v41 = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v39, v40);
  OUTLINED_FUNCTION_36_19(v41);
  v42 = OUTLINED_FUNCTION_64_14();
  v43(v42);
  v44 = *(v17 + 8);
  v45 = OUTLINED_FUNCTION_26_2();
  v44(v45);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v46 = type metadata accessor for StringResponseSanitizer();
  __swift_project_value_buffer(v46, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_51(v46);
  v48 = *(v47 + 16);
  v49 = OUTLINED_FUNCTION_137_3();
  v50(v49);
  v51 = *MEMORY[0x277D0E550];
  v52 = OUTLINED_FUNCTION_11_32();
  v53(v52);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v54 = OUTLINED_FUNCTION_0_9();
  v55(v54);
  v56 = OUTLINED_FUNCTION_34_5();
  v44(v56);
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v57 = type metadata accessor for StringRenderedPromptSanitizer();
  __swift_project_value_buffer(v57, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_28_14();
  v59 = *(v58 + 16);
  v60 = OUTLINED_FUNCTION_59_15();
  v61(v60);
  v62 = OUTLINED_FUNCTION_10_29();
  v63(v62);
  OUTLINED_FUNCTION_19_27();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v64 = OUTLINED_FUNCTION_31_23();
  v65(v64);
  v66 = OUTLINED_FUNCTION_26_2();
  v44(v66);
  OUTLINED_FUNCTION_16_28();
  static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (v0)
  {
    v67 = OUTLINED_FUNCTION_162_3();
  }

  else
  {
    v67 = OUTLINED_FUNCTION_14_25();
  }

  v44(v67);
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_61_2();
}

uint64_t closure #1 in MemoryCreationQUNetworkService.parseWithLLMQU_generateGenerativeFunctionOverride()()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_100_9();
  v14[3] = type metadata accessor for BindableVariable();
  v14[4] = MEMORY[0x277D42E60];
  __swift_allocate_boxed_opaque_existential_1Tm(v14);
  BindableVariable.init(name:)();
  v4 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v5 = *(v1 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25DBC8180;
  v8 = *(v2 + 16);
  OUTLINED_FUNCTION_104_5();
  v9();
  MEMORY[0x25F89F150](v7, v0, v4);

  v10 = *(v2 + 8);
  v11 = OUTLINED_FUNCTION_113_11();
  return v12(v11);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[40] = a4;
  v5[41] = a5;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  v5[42] = *a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMR);
  v5[43] = v6;
  v7 = *(v6 - 8);
  v5[44] = v7;
  v8 = *(v7 + 64) + 15;
  v5[45] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR) - 8) + 64) + 15;
  v5[46] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMR);
  v5[47] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[48] = swift_task_alloc();
  v12 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v5[49] = v12;
  v13 = *(v12 - 8);
  v5[50] = v13;
  v14 = *(v13 + 64) + 15;
  v5[51] = swift_task_alloc();
  v15 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v5[52] = v15;
  v16 = *(v15 - 8);
  v5[53] = v16;
  v17 = *(v16 + 64) + 15;
  v5[54] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR) - 8) + 64) + 15;
  v5[55] = swift_task_alloc();
  v19 = type metadata accessor for FunctionIdentifier();
  v5[56] = v19;
  v20 = *(v19 - 8);
  v5[57] = v20;
  v21 = *(v20 + 64) + 15;
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v5[60] = v22;
  v23 = *(v22 - 8);
  v5[61] = v23;
  v24 = *(v23 + 64) + 15;
  v5[62] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v5[63] = v25;
  v26 = *(v25 - 8);
  v5[64] = v26;
  v27 = *(v26 + 64) + 15;
  v5[65] = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v5[66] = v28;
  v29 = *(v28 - 8);
  v5[67] = v29;
  v30 = *(v29 + 64) + 15;
  v5[68] = swift_task_alloc();
  v31 = type metadata accessor for CompletionPrompt();
  v5[69] = v31;
  v32 = *(v31 - 8);
  v5[70] = v32;
  v33 = *(v32 + 64) + 15;
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:), 0, 0);
}

uint64_t closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:)()
{
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v64 = *(v0 + 552);
  v65 = *(v0 + 576);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);
  v8 = *(v0 + 304);
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  OUTLINED_FUNCTION_134_8();
  CompletionPrompt.init(_:)();

  v10 = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  *(v0 + 600) = OBJC_IVAR____TtC10OmniSearch30MemoryCreationQUNetworkService_samplingParameters;
  v11 = type metadata accessor for SamplingParameters();
  *(v0 + 608) = v11;
  OUTLINED_FUNCTION_17(v11);
  v13 = *(v12 + 16);
  *(v0 + 616) = v13;
  *(v0 + 624) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v3, v7 + v10);
  *(v0 + 720) = *MEMORY[0x277D0E548];
  *(v0 + 632) = *(v4 + 104);
  OUTLINED_FUNCTION_138_3();
  *(v0 + 640) = v14;
  v15(v3);
  OUTLINED_FUNCTION_5_36();
  *(v0 + 648) = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType(v16, v17);
  OUTLINED_FUNCTION_144_8();
  v18 = *(v4 + 8);
  *(v0 + 656) = v18;
  *(v0 + 664) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v3, v5);
  *(v0 + 672) = *(v2 + 8);
  *(v0 + 680) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19 = OUTLINED_FUNCTION_88();
  v66 = v20;
  v20(v19);
  if (one-time initialization token for responseSanitizer != -1)
  {
    OUTLINED_FUNCTION_2_40();
    swift_once();
  }

  v21 = *(v0 + 584);
  v22 = *(v0 + 576);
  v23 = *(v0 + 552);
  v24 = *(v0 + 520);
  v25 = *(v0 + 504);
  v26 = *(v0 + 512);
  v27 = type metadata accessor for StringResponseSanitizer();
  OUTLINED_FUNCTION_119_8(v27, static MemoryCreationQUNetworkService.responseSanitizer);
  OUTLINED_FUNCTION_51(v27);
  (*(v28 + 16))(v24);
  v29 = *MEMORY[0x277D0E550];
  v30 = OUTLINED_FUNCTION_66_16();
  v31(v30, v29, v25);
  OUTLINED_FUNCTION_72_12();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v32 = *(v26 + 8);
  v33 = OUTLINED_FUNCTION_179_0();
  v34(v33);
  v35 = OUTLINED_FUNCTION_64_0();
  v66(v35);
  if (one-time initialization token for renderedPromptSanitizer != -1)
  {
    OUTLINED_FUNCTION_1_55();
    swift_once();
  }

  v36 = *(v0 + 592);
  v37 = *(v0 + 584);
  v38 = *(v0 + 552);
  v39 = *(v0 + 488);
  v40 = *(v0 + 496);
  v41 = *(v0 + 480);
  v63 = *(v0 + 472);
  v42 = *(v0 + 440);
  v43 = type metadata accessor for StringRenderedPromptSanitizer();
  OUTLINED_FUNCTION_119_8(v43, static MemoryCreationQUNetworkService.renderedPromptSanitizer);
  OUTLINED_FUNCTION_51(v43);
  v45 = *(v44 + 16);
  v46 = OUTLINED_FUNCTION_140_7();
  v47(v46);
  v48 = OUTLINED_FUNCTION_67_17();
  v49(v48, v29, v41);
  OUTLINED_FUNCTION_73_13();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v50 = OUTLINED_FUNCTION_61_17();
  v51(v50);
  v52 = OUTLINED_FUNCTION_179_0();
  v66(v52);
  v53 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_57_15(v53);
  OUTLINED_FUNCTION_93_12();
  v54 = *(MEMORY[0x277D0E538] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 688) = v55;
  *v55 = v56;
  v55[1] = closure #2 in MemoryCreationQUNetworkService.parseWithLLMQUConstrainedDecoding(prompt:quModel:);
  v57 = *(v0 + 368);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_15_6();

  return MEMORY[0x282166B58](v58, v59, v60);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 688);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 696) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = v2[88];
  v6 = v2[44];
  *v4 = *v1;
  *(v3 + 712) = v0;

  (*(v6 + 8))(v2[45], v2[43]);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7, v8, v9);
}