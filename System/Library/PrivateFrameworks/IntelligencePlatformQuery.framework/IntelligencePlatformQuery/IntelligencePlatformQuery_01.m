uint64_t _sSLsE1goiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO5StoreV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a1 && a4 == a2)
  {
    return 0;
  }

  v5 = 1;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    return 0;
  }

  return v5;
}

uint64_t _sSLsE1goiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO10SourceTypeO_Tt1B5(char a1, char a2)
{
  v3 = 0x6D6165727473;
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 7628147;
    }

    else
    {
      v4 = 2003134838;
    }

    if (a2 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6D6165727473;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 7628147;
    }

    else
    {
      v3 = 2003134838;
    }

    if (a1 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v3 && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.Stream.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.Stream.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asString.getter in conformance IncrementalIdentifier.Stream.Storage()
{
  v1 = *v0;
  v2 = v0[1];
  return specialized IncrementalIdentifier.Identifier.asString.getter();
}

uint64_t IncrementalIdentifier.Stream.Identifier.file.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IncrementalIdentifier.Stream.Identifier.init(file:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

BOOL static IncrementalIdentifier.Stream.Identifier.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v3 < v2;
  }

  v5 = 1;
  OUTLINED_FUNCTION_6_1();
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    OUTLINED_FUNCTION_6_1();
    v5 = 0;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return v3 < v2;
    }
  }

  return v5;
}

BOOL static IncrementalIdentifier.Stream.Identifier.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_63(a1);
  v4 = *(v3 + 16);
  v5 = v2[2];
  if (v1 == *v2 && *(v3 + 8) == v2[1])
  {
    return v4 == v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v7)
  {
    return v4 == v5;
  }

  return result;
}

uint64_t IncrementalIdentifier.Stream.Identifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
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

uint64_t IncrementalIdentifier.Stream.Identifier.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IncrementalIdentifier.Stream.Identifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = IncrementalIdentifier.Stream.Identifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance IncrementalIdentifier.Stream.Identifier.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = IncrementalIdentifier.Stream.Identifier.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.Stream.Identifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.Stream.Identifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.Stream.Identifier.encode(to:)()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO0H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO0H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30();
  v10 = *v0;
  v11 = v0[1];
  v16 = v0[2];
  v12 = v3[4];
  OUTLINED_FUNCTION_38(v3, v3[3]);
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys();
  OUTLINED_FUNCTION_68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_50();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_28();
  v15(v14);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys);
  }

  return result;
}

uint64_t IncrementalIdentifier.Stream.Identifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  String.hash(into:)();
  return MEMORY[0x259C330A0](v3);
}

Swift::Int IncrementalIdentifier.Stream.Identifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_59(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  String.hash(into:)();
  MEMORY[0x259C330A0](v3);
  return Hasher._finalize()();
}

void IncrementalIdentifier.Stream.Identifier.init(from:)()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_57();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO0H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO0H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_2();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys();
  OUTLINED_FUNCTION_25();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    OUTLINED_FUNCTION_32();
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9 = v8;
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_32();
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = OUTLINED_FUNCTION_14_0();
    v12(v11);
    *v2 = v7;
    v2[1] = v9;
    v2[2] = v10;

    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asData.getter in conformance IncrementalIdentifier.Stream.Identifier()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return specialized IncrementalIdentifier.Identifier.asData.getter();
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asDatabaseType.getter in conformance IncrementalIdentifier.Stream.Identifier@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  result = specialized IncrementalIdentifier.Identifier<>.asDatabaseType.getter();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v8;
  }

  return result;
}

uint64_t specialized IncrementalIdentifier.Identifier<>.asDatabaseType.getter()
{
  return specialized IncrementalIdentifier.Identifier.asData.getter();
}

{
  return specialized IncrementalIdentifier.Identifier.asData.getter();
}

{
  return specialized IncrementalIdentifier.Identifier.asData.getter();
}

{
  return specialized IncrementalIdentifier.Identifier.asData.getter();
}

uint64_t IncrementalIdentifier.Identifier<>.asDatabaseType.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_58(a1, a2);
  return v2();
}

{
  return (*(a2 + 56))();
}

double specialized IncrementalIdentifier.Identifier<>.init(dbType:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v7);
  outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    result = *&v12;
    *a3 = v12;
    *(a3 + 16) = v13;
  }

  return result;
}

{
  v7 = MEMORY[0x259C331C0]();
  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v7);
  outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    result = *&v12;
    *a3 = v12;
    *(a3 + 16) = v13;
    *(a3 + 24) = v14;
  }

  return result;
}

__n128 specialized IncrementalIdentifier.Identifier<>.init(dbType:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v7);
  outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    result = v14;
    a3->n128_u64[0] = v12;
    a3->n128_u64[1] = v13;
    a3[1] = v14;
    a3[2].n128_u64[0] = v15;
    a3[2].n128_u64[1] = v16;
  }

  return result;
}

uint64_t specialized IncrementalIdentifier.Identifier<>.init(dbType:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v7);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v12;
    a3[1] = v13;
  }

  return result;
}

uint64_t IncrementalIdentifier.Identifier<>.init(dbType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 96))();
}

{
  return (*(a4 + 80))();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.Stream.Identifier()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x259C330A0](v3);
  return Hasher._finalize()();
}

uint64_t IncrementalIdentifier.Stream.Bookmark.file.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IncrementalIdentifier.Stream.Bookmark.tombstoneFile.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IncrementalIdentifier.Stream.Bookmark.init(file:offset:tombstoneFile:tombstoneOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

BOOL static IncrementalIdentifier.Stream.Bookmark.< infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  v11 = v10;
  if (v10)
  {
    if (v6 < v3)
    {
      return 1;
    }

    v17 = a2[5];
    v18 = a1[5];
    v19 = a1[4];
    v20 = a1[3];
    if (v3 != v6)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v17 = a2[5];
    v18 = a1[5];
    v19 = a1[4];
    v20 = a1[3];
    v12 = 1;
    OUTLINED_FUNCTION_7_1();
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (v13)
    {
      return v12;
    }

    OUTLINED_FUNCTION_7_1();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && v6 < v3)
    {
      return v12;
    }

    OUTLINED_FUNCTION_7_1();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v3 != v6)
    {
      goto LABEL_26;
    }
  }

  if (v20 != v7 || v19 != v9)
  {
    v12 = 1;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return v12;
    }
  }

  if (v11)
  {
LABEL_24:
    if (v3 != v6)
    {
      return 0;
    }

    goto LABEL_28;
  }

LABEL_26:
  OUTLINED_FUNCTION_7_1();
  v12 = 0;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && v3 == v6)
  {
LABEL_28:
    v15 = v20 == v7 && v19 == v9;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v17 < v18;
    }

    return 0;
  }

  return v12;
}

BOOL static IncrementalIdentifier.Stream.Bookmark.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_63(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v9 = v2[2];
  v8 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  if (v1 == *v2 && v3[1] == v2[1])
  {
    if (v4 != v9)
    {
      return 0;
    }

LABEL_9:
    if (v5 == v8 && v6 == v10)
    {
      return v7 == v11;
    }

    OUTLINED_FUNCTION_6_1();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return v7 == v11;
    }

    return 0;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v13 & 1) != 0 && v4 == v9)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t IncrementalIdentifier.Stream.Bookmark.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74657366666FLL && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F7473626D6F74 && a2 == 0xED0000656C694665;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6F7473626D6F74 && a2 == 0xEF74657366664F65)
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

Swift::Int IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_54();
  MEMORY[0x259C33090](a1);
  return Hasher._finalize()();
}

uint64_t IncrementalIdentifier.Stream.Bookmark.CodingKeys.stringValue.getter(char a1)
{
  result = 1701603686;
  switch(a1)
  {
    case 1:
      result = 0x74657366666FLL;
      break;
    case 2:
    case 3:
      result = 0x6E6F7473626D6F74;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C33090](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = IncrementalIdentifier.Stream.Bookmark.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.Stream.Bookmark.encode(to:)()
{
  OUTLINED_FUNCTION_23();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30();
  v11 = *v0;
  v12 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v15 = v0[5];
  v16 = v0[4];
  v13 = v4[3];
  v14 = v4[4];
  OUTLINED_FUNCTION_9_0(v4);
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_39();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_50();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_50();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_50();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys);
  }

  return result;
}

uint64_t IncrementalIdentifier.Stream.Bookmark.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  MEMORY[0x259C330A0](v3);
  String.hash(into:)();
  return MEMORY[0x259C330A0](v6);
}

Swift::Int IncrementalIdentifier.Stream.Bookmark.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_59(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
  String.hash(into:)();
  MEMORY[0x259C330A0](v3);
  String.hash(into:)();
  MEMORY[0x259C330A0](v6);
  return Hasher._finalize()();
}

void IncrementalIdentifier.Stream.Bookmark.init(from:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_56();
  v9 = v2[4];
  OUTLINED_FUNCTION_38(v2, v2[3]);
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    OUTLINED_FUNCTION_31();
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_31();
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_31();
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v13;
    OUTLINED_FUNCTION_31();
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = OUTLINED_FUNCTION_34();
    v16(v15);
    *v4 = v10;
    v4[1] = v12;
    v4[2] = v18;
    v4[3] = v17;
    v4[4] = v19;
    v4[5] = v14;

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  OUTLINED_FUNCTION_24();
}

_BYTE *protocol witness for IncrementalIdentifier.Identifier.asString.getter in conformance IncrementalIdentifier.Stream.Bookmark()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return specialized IncrementalIdentifier.Identifier.asString.getter();
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asData.getter in conformance IncrementalIdentifier.Stream.Bookmark()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return specialized IncrementalIdentifier.Identifier.asData.getter();
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asDatabaseType.getter in conformance IncrementalIdentifier.Stream.Bookmark@<X0>(uint64_t *a1@<X8>)
{
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  result = specialized IncrementalIdentifier.Identifier<>.asDatabaseType.getter();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.Stream.Bookmark()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x259C330A0](v3);
  String.hash(into:)();
  MEMORY[0x259C330A0](v6);
  return Hasher._finalize()();
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance IncrementalIdentifier.Stream.Bookmark(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _sSLsE2leoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV_Tt1B5(v7, v8);
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance IncrementalIdentifier.Stream.Bookmark(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _sSLsE2geoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV_Tt1B5(v7, v8);
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance IncrementalIdentifier.Stream.Bookmark(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _sSLsE1goiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV_Tt1B5(v7, v8);
}

IntelligencePlatformQuery::IncrementalIdentifier::Stream::Store __swiftcall IncrementalIdentifier.Stream.Store.init(source:storage:)(IntelligencePlatformQuery::IncrementalIdentifier::Stream::Source source, IntelligencePlatformQuery::IncrementalIdentifier::Stream::Storage storage)
{
  v3 = *(source.value._countAndFlagsBits + 8);
  v4 = *source.value._object;
  v5 = *(source.value._object + 1);
  *v2 = *source.value._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = v4;
  v2[3] = v5;
  result.storage = storage;
  result.source = source;
  return result;
}

BOOL static IncrementalIdentifier.Stream.Store.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_63(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  result = 0;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    OUTLINED_FUNCTION_6_1();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.Stream.Store.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.Stream.Store.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.Stream.Store.encode(to:)()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30();
  v10 = *v0;
  v11 = v0[1];
  v16 = v0[2];
  v17 = v0[3];
  v12 = v3[4];
  OUTLINED_FUNCTION_38(v3, v3[3]);
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys();

  OUTLINED_FUNCTION_68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source();
  OUTLINED_FUNCTION_3_2();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v1)
  {
    OUTLINED_FUNCTION_72();
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage();

    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_50();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_28();
  v15(v14);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

uint64_t IncrementalIdentifier.Stream.Store.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int IncrementalIdentifier.Stream.Store.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_59(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void IncrementalIdentifier.Stream.Store.init(from:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_2();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys();
  OUTLINED_FUNCTION_39();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source();
    OUTLINED_FUNCTION_12_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_72();
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage();
    OUTLINED_FUNCTION_12_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = OUTLINED_FUNCTION_33();
    v10(v9, v5);
    *v4 = v11;
    v4[1] = v12;
    v4[2] = v11;
    v4[3] = v12;

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asData.getter in conformance IncrementalIdentifier.Stream.Store()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return specialized IncrementalIdentifier.Identifier.asData.getter();
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asDatabaseType.getter in conformance IncrementalIdentifier.Stream.Store@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  result = specialized IncrementalIdentifier.Identifier<>.asDatabaseType.getter();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v9;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.Stream.Store()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  Hasher.init(_seed:)();
  IncrementalIdentifier.Stream.Store.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO05StoreE0PAAE1loiySbx_xtFZAC6StreamO0F0V_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != a5 || a2 != a6)
  {
    v13 = 1;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return v13;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  if (a3 == a7 && a4 == a8)
  {
    return 0;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO05StoreE0PAAE1loiySbx_xtFZAC4ViewO0F0V_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  v5 = 1;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    return 0;
  }

  return v5;
}

uint64_t static IncrementalIdentifier.StoreIdentifier.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_0_2(AssociatedTypeWitness);
  v48 = v10;
  v49 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_0();
  v47 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v46 = &v45 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11_0();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v45 - v27;
  v29 = *(a4 + 48);
  v50 = a1;
  v29(a3, a4);
  v51 = a2;
  v29(a3, a4);
  v52 = a3;
  v30 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  OUTLINED_FUNCTION_40();
  LOBYTE(a1) = dispatch thunk of static Comparable.< infix(_:_:)();
  v31 = *(v20 + 8);
  v31(v25, v17);
  v31(v28, v17);
  if (a1)
  {
    v32 = 1;
  }

  else
  {
    v45 = v30;
    v33 = v52;
    v29(v52, a4);
    v29(v33, a4);
    v34 = *(v45 + 8);
    OUTLINED_FUNCTION_40();
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    v31(v25, v17);
    v31(v28, v17);
    if (v35)
    {
      v36 = *(a4 + 56);
      v37 = v46;
      v38 = OUTLINED_FUNCTION_70();
      v36(v38);
      v39 = v47;
      v40 = OUTLINED_FUNCTION_70();
      v36(v40);
      v41 = v49;
      v42 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
      OUTLINED_FUNCTION_40();
      v32 = dispatch thunk of static Comparable.< infix(_:_:)();
      v43 = *(v48 + 8);
      v43(v39, v41);
      v43(v37, v41);
    }

    else
    {
      v32 = 0;
    }
  }

  return v32 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.View.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.View.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asString.getter in conformance IncrementalIdentifier.View.Source()
{
  v1 = *v0;
  v2 = v0[1];
  return specialized IncrementalIdentifier.Identifier.asString.getter();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IncrementalIdentifier.View.Storage.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = IncrementalIdentifier.View.Storage.CodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.View.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.View.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IncrementalIdentifier.View.Storage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO7StorageV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO7StorageV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v7);
  v8 = a1[4];
  OUTLINED_FUNCTION_38(a1, a1[3]);
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_46();
  return v11(v10);
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asDatabaseType.getter in conformance IncrementalIdentifier.View.Storage@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t IncrementalIdentifier.View.StringIdentifier.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t static IncrementalIdentifier.Stream.Source.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_63(a1);
  if (v1 == *v2 && *(v3 + 8) == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys);
  }

  return result;
}

uint64_t IncrementalIdentifier.View.StringIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asString.getter in conformance IncrementalIdentifier.View.StringIdentifier()
{
  v1 = *v0;
  v2 = v0[1];
  return specialized IncrementalIdentifier.Identifier.asString.getter();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.View.Int64Identifier.encode(to:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO05Int64H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO05Int64H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_55();
  v9 = *v0;
  v10 = v2[3];
  v11 = v2[4];
  OUTLINED_FUNCTION_9_0(v2);
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys();
  OUTLINED_FUNCTION_39();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_64();
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_43();
  v14(v13);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys);
  }

  return result;
}

Swift::Int IncrementalIdentifier.View.Int64Identifier.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_54();
  MEMORY[0x259C330A0](v1);
  return Hasher._finalize()();
}

void IncrementalIdentifier.View.Int64Identifier.init(from:)()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_57();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO05Int64H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO05Int64H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_2();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys();
  OUTLINED_FUNCTION_25();
  if (!v1)
  {
    OUTLINED_FUNCTION_32();
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v8 = OUTLINED_FUNCTION_14_0();
    v9(v8);
    *v2 = v7;
  }

  __swift_destroy_boxed_opaque_existential_0(v0);
  OUTLINED_FUNCTION_24();
}

uint64_t protocol witness for IncrementalIdentifier.SingleValueIdentifier.value.getter in conformance IncrementalIdentifier.View.Int64Identifier@<X0>(uint64_t *a1@<X8>)
{
  result = IncrementalIdentifier.View.Int64Identifier.value.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asDatabaseType.getter in conformance IncrementalIdentifier.View.Int64Identifier@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = ResultSetCursor.columns.modify(*v2, a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.View.Int64Identifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C330A0](v1);
  return Hasher._finalize()();
}

uint64_t IncrementalIdentifier.Stream.Source.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int IncrementalIdentifier.Stream.Source.CodingKeys.hashValue.getter()
{
  OUTLINED_FUNCTION_54();
  MEMORY[0x259C33090](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.Stream.Source.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x259C33090](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.View.Bookmark.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.View.Bookmark.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.View.Bookmark.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_55();
  v9 = *v1;
  v10 = a1[4];
  OUTLINED_FUNCTION_38(a1, a1[3]);
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_64();
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_43();
  v13(v12);
  OUTLINED_FUNCTION_44();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys);
  }

  return result;
}

uint64_t IncrementalIdentifier.View.Bookmark.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x259C330A0](*&v1);
}

Swift::Int IncrementalIdentifier.View.Bookmark.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_54();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x259C330A0](*&v2);
  return Hasher._finalize()();
}

uint64_t IncrementalIdentifier.View.Bookmark.init(from:)()
{
  OUTLINED_FUNCTION_57();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_2();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys();
  OUTLINED_FUNCTION_25();
  if (!v1)
  {
    OUTLINED_FUNCTION_32();
    KeyedDecodingContainer.decode(_:forKey:)();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_14_0();
    v10(v9);
    *v2 = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0(v0);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.View.Bookmark()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x259C330A0](*&v2);
  return Hasher._finalize()();
}

void *IncrementalIdentifier.View.Store.init(source:storage:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t static IncrementalIdentifier.View.Store.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_63(a1);
  if (v1 == *v2 && *(v3 + 8) == v2[1])
  {
    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return 1;
  }

  return result;
}

uint64_t IncrementalIdentifier.Stream.Store.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_71(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    return 0;
  }

  else if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_71();
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

Swift::Int IncrementalIdentifier.Stream.Identifier.CodingKeys.hashValue.getter(char a1)
{
  OUTLINED_FUNCTION_54();
  MEMORY[0x259C33090](a1 & 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.View.Store.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.View.Store.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.View.Store.encode(to:)()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[3];
  v13 = v3[4];
  OUTLINED_FUNCTION_9_0(v3);
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys();

  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_39();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source();
  OUTLINED_FUNCTION_3_2();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v1)
  {
    lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage();
    OUTLINED_FUNCTION_50();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v14 = *(v6 + 8);
  v15 = OUTLINED_FUNCTION_28();
  v16(v15);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

Swift::Int IncrementalIdentifier.Stream.Source.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_59(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  String.hash(into:)();
  return Hasher._finalize()();
}

void IncrementalIdentifier.View.Store.init(from:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_2();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys();
  OUTLINED_FUNCTION_39();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source();
    OUTLINED_FUNCTION_12_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = OUTLINED_FUNCTION_33();
    v10(v9, v5);
    *v4 = v11;
    v4[1] = v12;

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24();
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asData.getter in conformance IncrementalIdentifier.View.Store()
{
  v1 = *v0;
  v2 = v0[1];
  return specialized IncrementalIdentifier.Identifier.asData.getter();
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asDatabaseType.getter in conformance IncrementalIdentifier.View.Store@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  result = specialized IncrementalIdentifier.Identifier<>.asDatabaseType.getter();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.Stream.Source()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_59(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t IncrementalIdentifier.SourceType.asDatabaseType.getter()
{
  v1 = 7628147;
  if (*v0 != 1)
  {
    v1 = 2003134838;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6165727473;
  }
}

IntelligencePlatformQuery::IncrementalIdentifier::SourceType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IncrementalIdentifier.SourceType.init(dbType:)(Swift::String dbType)
{
  object = dbType._object;
  v3._countAndFlagsBits = dbType._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IncrementalIdentifier.SourceType.init(rawValue:), v3);

  if (v5 >= 3)
  {
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_13();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_26(v7, 27);
    memcpy(v9, __src, 0x48uLL);
    *(v8 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    *v4 = v5;
  }

  return result;
}

IntelligencePlatformQuery::IncrementalIdentifier::SourceType_optional __swiftcall IncrementalIdentifier.SourceType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IncrementalIdentifier.SourceType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t static IncrementalIdentifier.SourceType.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7628147;
  if (v2 != 1)
  {
    v4 = 2003134838;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D6165727473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7628147;
  if (*a2 != 1)
  {
    v8 = 2003134838;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D6165727473;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0x6D6165727473;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 7628147;
    }

    else
    {
      v4 = 2003134838;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6D6165727473;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 7628147;
    }

    else
    {
      v2 = 2003134838;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance IncrementalIdentifier.SourceType@<X0>(uint64_t *a1@<X8>)
{
  result = IncrementalIdentifier.SourceType.asDatabaseType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asDatabaseType.getter in conformance IncrementalIdentifier.SourceType@<X0>(uint64_t *a1@<X8>)
{
  result = IncrementalIdentifier.SourceType.asDatabaseType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for String.Encoding();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &__src[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v11 = type metadata accessor for JSONEncoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier();
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v3)
  {
    v16 = v14;
    v17 = v15;
    static String.Encoding.utf8.getter();
    v10 = String.init(data:encoding:)();
    v19 = v18;
    outlined consume of Data._Representation(v16, v17);
    if (!v19)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v10 = v21;
      *v21 = 0xD00000000000001BLL;
      v21[1] = 0x80000002553A7DB0;
      memcpy(v21 + 2, __src, 0x48uLL);
      v10[88] = 0;
      swift_willThrow();
    }
  }

  return v10;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(__int128 *a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = a1[1];
  v21 = *a1;
  v22 = v7;
  v23 = a1[2];
  v8 = type metadata accessor for JSONEncoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark();
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v13 = v11;
    v14 = v12;
    static String.Encoding.utf8.getter();
    v6 = String.init(data:encoding:)();
    v16 = v15;
    outlined consume of Data._Representation(v13, v14);
    if (!v16)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v6 = v18;
      *v18 = 0xD00000000000001BLL;
      v18[1] = 0x80000002553A7DB0;
      memcpy(v18 + 2, __src, 0x48uLL);
      v6[88] = 0;
      swift_willThrow();
    }
  }

  return v6;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for String.Encoding();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &__src[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v13 = type metadata accessor for JSONEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store();
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v18 = v16;
    v19 = v17;
    static String.Encoding.utf8.getter();
    v12 = String.init(data:encoding:)();
    v21 = v20;
    outlined consume of Data._Representation(v18, v19);
    if (!v21)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v12 = v23;
      *v23 = 0xD00000000000001BLL;
      v23[1] = 0x80000002553A7DB0;
      memcpy(v23 + 2, __src, 0x48uLL);
      v12[88] = 0;
      swift_willThrow();
    }
  }

  return v12;
}

uint64_t specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v7 = type metadata accessor for String.Encoding();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v22 = a1;
  v23 = a2;
  v12 = type metadata accessor for JSONEncoder();
  OUTLINED_FUNCTION_53(v12);
  JSONEncoder.init()();
  a3();
  v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v3)
  {
    v15 = v13;
    v16 = v14;
    static String.Encoding.utf8.getter();
    v11 = String.init(data:encoding:)();
    v18 = v17;
    outlined consume of Data._Representation(v15, v16);
    if (v18)
    {

      return v11;
    }

    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13();
    v11 = v20;
    *v20 = 0xD00000000000001BLL;
    v20[1] = 0x80000002553A7DB0;
    memcpy(v20 + 2, __src, 0x48uLL);
    *(v11 + 88) = 0;
    swift_willThrow();
  }

  return v11;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1;
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v12 = v10;
    v13 = v11;
    static String.Encoding.utf8.getter();
    v6 = String.init(data:encoding:)();
    v15 = v14;
    outlined consume of Data._Representation(v12, v13);
    if (!v15)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v6 = v17;
      *v17 = 0xD00000000000001BLL;
      v17[1] = 0x80000002553A7DB0;
      memcpy(v17 + 2, __src, 0x48uLL);
      v6[88] = 0;
      swift_willThrow();
    }
  }

  return v6;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(double a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v20 = a1;
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v12 = v10;
    v13 = v11;
    static String.Encoding.utf8.getter();
    v6 = String.init(data:encoding:)();
    v15 = v14;
    outlined consume of Data._Representation(v12, v13);
    if (!v15)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v6 = v17;
      *v17 = 0xD00000000000001BLL;
      v17[1] = 0x80000002553A7DB0;
      memcpy(v17 + 2, __src, 0x48uLL);
      v6[88] = 0;
      swift_willThrow();
    }
  }

  return v6;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &__src[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v22 = a1;
  v23 = a2;
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v2)
  {
    v14 = v12;
    v15 = v13;
    static String.Encoding.utf8.getter();
    v8 = String.init(data:encoding:)();
    v17 = v16;
    outlined consume of Data._Representation(v14, v15);
    if (!v17)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v8 = v19;
      *v19 = 0xD00000000000001BLL;
      v19[1] = 0x80000002553A7DB0;
      memcpy(v19 + 2, __src, 0x48uLL);
      v8[88] = 0;
      swift_willThrow();
    }
  }

  return v8;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(char a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __src[79] = a1;
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v12 = v10;
    v13 = v11;
    static String.Encoding.utf8.getter();
    v6 = String.init(data:encoding:)();
    v15 = v14;
    outlined consume of Data._Representation(v12, v13);
    if (!v15)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v6 = v17;
      *v17 = 0xD00000000000001BLL;
      v17[1] = 0x80000002553A7DB0;
      memcpy(v17 + 2, __src, 0x48uLL);
      v6[88] = 0;
      swift_willThrow();
    }
  }

  return v6;
}

uint64_t specialized closure #1 in IncrementalIdentifier.Identifier.init(string:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v9 = v8;
    *v8 = 0xD00000000000001FLL;
    v8[1] = 0x80000002553A7DD0;
    memcpy(v8 + 2, __src, 0x48uLL);
    *(v9 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    v11 = type metadata accessor for JSONDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v5, v7);
  }
}

{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v9 = v8;
    *v8 = 0xD00000000000001FLL;
    v8[1] = 0x80000002553A7DD0;
    memcpy(v8 + 2, __src, 0x48uLL);
    *(v9 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    v11 = type metadata accessor for JSONDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v5, v7);
  }
}

{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v9 = v8;
    *v8 = 0xD00000000000001FLL;
    v8[1] = 0x80000002553A7DD0;
    memcpy(v8 + 2, __src, 0x48uLL);
    *(v9 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    v11 = type metadata accessor for JSONDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v5, v7);
  }
}

{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v9 = v8;
    *v8 = 0xD00000000000001FLL;
    v8[1] = 0x80000002553A7DD0;
    memcpy(v8 + 2, __src, 0x48uLL);
    *(v9 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    v11 = type metadata accessor for JSONDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v5, v7);
  }
}

{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v9 = v8;
    *v8 = 0xD00000000000001FLL;
    v8[1] = 0x80000002553A7DD0;
    memcpy(v8 + 2, __src, 0x48uLL);
    *(v9 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    v11 = type metadata accessor for JSONDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v5, v7);
  }
}

{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v9 = v8;
    *v8 = 0xD00000000000001FLL;
    v8[1] = 0x80000002553A7DD0;
    memcpy(v8 + 2, __src, 0x48uLL);
    *(v9 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    v11 = type metadata accessor for JSONDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v5, v7);
  }
}

{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v9 = v8;
    *v8 = 0xD00000000000001FLL;
    v8[1] = 0x80000002553A7DD0;
    memcpy(v8 + 2, __src, 0x48uLL);
    *(v9 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    v11 = type metadata accessor for JSONDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v5, v7);
  }
}

void specialized closure #1 in IncrementalIdentifier.Identifier.init(string:)()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  static String.Encoding.utf8.getter();
  String.data(using:allowLossyConversion:)();
  v12 = v11;
  (*(v5 + 8))(v10, v2);
  if (v12 >> 60 == 15)
  {
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_13();
    v14 = v13;
    v15 = OUTLINED_FUNCTION_26(v13, 31);
    memcpy(v15, v19, 0x48uLL);
    *(v14 + 88) = 0;
    swift_willThrow();
  }

  else
  {
    v16 = type metadata accessor for JSONDecoder();
    OUTLINED_FUNCTION_53(v16);
    JSONDecoder.init()();
    v1();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v17 = OUTLINED_FUNCTION_37();
    outlined consume of Data?(v17, v18);
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_24();
}

uint64_t Int.bindTo(_:index:)(sqlite3_stmt *a1, int a2, sqlite3_int64 a3)
{
  type metadata accessor for SQLConnection();
  sqlite3_bind_int64(a1, a2, a3);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_64();
  return static SQLConnection.isOk(resultCode:statement:context:)(v6, v7, v8, v9);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Double.bindTo(_:index:)(Swift::OpaquePointer _, Swift::Int32 index)
{
  v3 = v2;
  type metadata accessor for SQLConnection();
  sqlite3_bind_double(_._rawValue, index, v3);
  OUTLINED_FUNCTION_36();
  static SQLConnection.isOk(resultCode:statement:context:)(v6, v7, v8, v9);
}

double protocol witness for SQLConnection.DatabaseType.bindTo(_:index:) in conformance Double(Swift::OpaquePointer a1, Swift::Int32 a2)
{
  v3 = *v2;
  Double.bindTo(_:index:)(a1, a2);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.bindTo(_:index:)(Swift::OpaquePointer _, Swift::Int32 index)
{
  v4 = v3;
  v5 = v2;
  type metadata accessor for SQLConnection();
  if ((v4 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    *v15 = v5;
    v16 = v4 & 0xFFFFFFFFFFFFFFLL;
    if (one-time initialization token for SQLITE_TRANSIENT != -1)
    {
      OUTLINED_FUNCTION_29();
    }

    v9 = static SQLConnection.SQLITE_TRANSIENT;
    v10 = v15;
    goto LABEL_10;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
LABEL_12:
    _StringGuts._slowWithCString<A>(_:)();
    goto LABEL_11;
  }

  v8 = v4 & 0xFFFFFFFFFFFFFFFLL;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    OUTLINED_FUNCTION_29();
  }

  v9 = static SQLConnection.SQLITE_TRANSIENT;
  v10 = (v8 + 32);
LABEL_10:
  sqlite3_bind_text(_._rawValue, index, v10, -1, v9);
LABEL_11:
  OUTLINED_FUNCTION_36();
  static SQLConnection.isOk(resultCode:statement:context:)(v11, v12, v13, v14);
}

uint64_t closure #1 in closure #1 in String.bindTo(_:index:)@<X0>(char *a1@<X0>, sqlite3_stmt *a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  result = sqlite3_bind_text(a2, a3, a1, -1, static SQLConnection.SQLITE_TRANSIENT);
  *a4 = result;
  return result;
}

Swift::String __swiftcall String.init(value:)(Swift::OpaquePointer value)
{
  v1 = sqlite3_value_text(value._rawValue);
  if (v1)
  {

    v1 = String.init(cString:)();
  }

  else
  {
    __break(1u);
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

void protocol witness for SQLConnection.DatabaseType.bindTo(_:index:) in conformance String(Swift::OpaquePointer a1, Swift::Int32 a2)
{
  v3 = *v2;
  v4 = v2[1];
  String.bindTo(_:index:)(a1, a2);
}

uint64_t protocol witness for SQLConnection.DatabaseType.init(value:) in conformance String@<X0>(Swift::OpaquePointer a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = String.init(value:)(a1);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t static Int.sqlite3Type.getter@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for LibraryArtifact.SQLDataType();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Data.bindTo(_:index:)(Swift::OpaquePointer _, Swift::Int32 index)
{
  v5 = v3;
  v6 = v2;
  OUTLINED_FUNCTION_65();
  type metadata accessor for SQLConnection();
  specialized Data.withUnsafeBytes<A>(_:)(v6, v5, v4, index);
  OUTLINED_FUNCTION_36();
  static SQLConnection.isOk(resultCode:statement:context:)(v8, v9, v10, v11);
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t result, unint64_t a2, sqlite3_stmt *a3, int a4)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v10 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v8 = a2;
        v9 = v10;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v7 = *(result + 24);
      v8 = a2;
      result = *(result + 16);
      v9 = v7;
LABEL_9:
      result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(result, v9, v8, a3, a4);
      break;
    case 3uLL:
      result = 0;
      v6 = 0;
      goto LABEL_5;
    default:
      v6 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = specialized Data.InlineData.withUnsafeBytes<A>(_:)(result, v6, a3, a4);
      break;
  }

  return result;
}

void Data.init(value:)(sqlite3_value *a1)
{
  if (sqlite3_value_blob(a1))
  {
    sqlite3_value_bytes(a1);
  }

  else
  {
    __break(1u);
  }

  JUMPOUT(0x259C323E0);
}

void protocol witness for SQLConnection.DatabaseType.bindTo(_:index:) in conformance Data(Swift::OpaquePointer a1, Swift::Int32 a2)
{
  v3 = *v2;
  v4 = v2[1];
  Data.bindTo(_:index:)(a1, a2);
}

void protocol witness for SQLConnection.DatabaseType.init(value:) in conformance Data(sqlite3_value *a1@<X0>, void *a2@<X8>)
{
  Data.init(value:)(a1);
  *a2 = v3;
  a2[1] = v4;
}

void IncrementalIdentifier.StoreIdentifier.init(persistentIdentifier:)()
{
  IncrementalIdentifier.StoreIdentifier.init(persistentIdentifier:)();
}

{
  OUTLINED_FUNCTION_23();
  v70 = v1;
  v62 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v60 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_0_2(AssociatedTypeWitness);
  v61 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_0();
  v59 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v66 = &v56 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v63 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v56 - v26;
  v28 = v7[1];
  v29 = v7[2];
  v30 = v7[4];
  v68 = v7[3];
  v69 = v30;
  v31 = v7[6];
  v71 = v7[5];
  v72 = v31;
  v64 = v5;
  v65 = v3;
  v32 = *(*(swift_getAssociatedConformanceWitness() + 8) + 96);
  v33 = OUTLINED_FUNCTION_69();
  outlined copy of Data._Representation(v33, v34);
  v35 = OUTLINED_FUNCTION_69();
  v36 = v70;
  v32(v35);
  if (v36)
  {
    v37 = OUTLINED_FUNCTION_69();
    outlined consume of Data._Representation(v37, v38);
    outlined consume of Data._Representation(v68, v69);
    outlined consume of Data._Representation(v71, v72);
  }

  else
  {
    v57 = v24;
    v58 = v17;
    v70 = v27;
    v39 = *(*(swift_getAssociatedConformanceWitness() + 8) + 96);
    v40 = OUTLINED_FUNCTION_60();
    outlined copy of Data._Representation(v40, v41);
    v42 = OUTLINED_FUNCTION_60();
    v39(v42);
    v43 = OUTLINED_FUNCTION_69();
    outlined consume of Data._Representation(v43, v44);
    v45 = OUTLINED_FUNCTION_60();
    outlined consume of Data._Representation(v45, v46);
    outlined consume of Data._Representation(v71, v72);
    v47 = v63;
    v48 = v57;
    v49 = v58;
    v50 = v70;
    (*(v63 + 16))(v57, v70, v58);
    v51 = v61;
    v52 = v59;
    v53 = (*(v61 + 16))(v59, v66, AssociatedTypeWitness);
    OUTLINED_FUNCTION_66(v53, v54, v64, v65);
    v55(v48, v52);
    (*(v51 + 8))(v66, AssociatedTypeWitness);
    (*(v47 + 8))(v50, v49);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO05StoreE0PAAE010persistentE0xAC017PersistableGlobalE0V_tKcfCAC6StreamO0F0V_Tt1B5Tm(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_67();
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = OUTLINED_FUNCTION_37();
  v11 = outlined copy of Data._Representation(v9, v10);
  v12 = MEMORY[0x259C331C0](v11);
  v13 = type metadata accessor for JSONDecoder();
  OUTLINED_FUNCTION_53(v13);
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v12);
  if (v2)
  {
    a2(v3);
    v14 = OUTLINED_FUNCTION_37();
    return outlined consume of Data._Representation(v14, v25);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_37();
    outlined consume of Data._Representation(v15, v16);
    v17 = *(v3 + 24);
    v18 = *(v3 + 32);
    v19 = OUTLINED_FUNCTION_74();
    v21 = outlined copy of Data._Representation(v19, v20);
    v22 = MEMORY[0x259C331C0](v21);
    v23 = *(v13 + 48);
    v24 = *(v13 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    objc_autoreleasePoolPop(v22);
    a2(v3);
    v27 = OUTLINED_FUNCTION_74();
    result = outlined consume of Data._Representation(v27, v28);
    *v4 = v29;
    v4[1] = v30;
    v4[2] = v29;
    v4[3] = v30;
  }

  return result;
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO05StoreE0PAAE010persistentE0xAC017PersistableGlobalE0V_tKcfCAC4ViewO0F0V_Tt1B5Tm@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = OUTLINED_FUNCTION_35();
  v11 = outlined copy of Data._Representation(v9, v10);
  v12 = MEMORY[0x259C331C0](v11);
  v13 = type metadata accessor for JSONDecoder();
  OUTLINED_FUNCTION_53(v13);
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v12);
  if (v3)
  {
    a2(a1);
    v14 = OUTLINED_FUNCTION_35();
    return outlined consume of Data._Representation(v14, v15);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_35();
    outlined consume of Data._Representation(v17, v18);
    result = (a2)(a1);
    *a3 = v19;
    a3[1] = v20;
  }

  return result;
}

uint64_t *IncrementalIdentifier.PersistableGlobalIdentifier.storeIdentifier()@<X0>(void (*a1)(_OWORD *, _BYTE *)@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 16);
  v14[0] = *v3;
  v14[1] = v8;
  v14[2] = *(v3 + 32);
  v15 = *(v3 + 48);
  if (LOBYTE(v14[0]))
  {
    if (LOBYTE(v14[0]) == 1)
    {
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_13();
      v10 = v9;
      v11 = OUTLINED_FUNCTION_26(v9, 27);
      memcpy(v11, __src, 0x48uLL);
      *(v10 + 88) = 0;
      return swift_willThrow();
    }

    a3[3] = &type metadata for IncrementalIdentifier.View.Store;
    a3[4] = lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store();
    a1(v14, __src);
    result = _s25IntelligencePlatformQuery21IncrementalIdentifierO05StoreE0PAAE010persistentE0xAC017PersistableGlobalE0V_tKcfCAC4ViewO0F0V_Tt1B5Tm(v14, a2, a3);
  }

  else
  {
    a3[3] = &type metadata for IncrementalIdentifier.Stream.Store;
    a3[4] = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store();
    *a3 = swift_allocObject();
    a1(v14, __src);
    result = _s25IntelligencePlatformQuery21IncrementalIdentifierO05StoreE0PAAE010persistentE0xAC017PersistableGlobalE0V_tKcfCAC6StreamO0F0V_Tt1B5Tm(v14, a2);
  }

  if (v4)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a3);
  }

  return result;
}

void IncrementalIdentifier.StoreIdentifier.persistableEntityIdentifier(entityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_23();
  v16 = v15;
  v66 = v18;
  v67 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = OUTLINED_FUNCTION_0_2(AssociatedTypeWitness);
  v70 = v21;
  v71 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v24);
  v68 = &v65 - v25;
  v26 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v65 - v32;
  OUTLINED_FUNCTION_47();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = *(AssociatedConformanceWitness + 16);
  v36 = OUTLINED_FUNCTION_28();
  v37(v36);
  v38 = *(v16 + 48);
  v69 = v13;
  v39 = OUTLINED_FUNCTION_37();
  v41 = v40(v39);
  OUTLINED_FUNCTION_58(v41, *(AssociatedConformanceWitness + 8));
  v43 = v42(v26);
  if (v14)
  {
    (*(v28 + 8))(v33, v26);
  }

  else
  {
    v65 = v43;
    v72 = v44;
    (*(v28 + 8))(v33, v26);
    v45 = *(v16 + 56);
    v46 = OUTLINED_FUNCTION_37();
    v47(v46);
    OUTLINED_FUNCTION_47();
    v48 = v71;
    v49 = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_58(v49, *(v49 + 8));
    OUTLINED_FUNCTION_64();
    v51 = v50(v48);
    v53 = v52;
    v54 = *(v70 + 8);
    v55 = OUTLINED_FUNCTION_43();
    v56(v55);
    v58 = v67[3];
    v57 = v67[4];
    v59 = __swift_project_boxed_opaque_existential_0(v67, v58);
    OUTLINED_FUNCTION_58(v59, *(v57 + 8));
    v61 = v60(v58);
    v62 = v66;
    *v66 = a13;
    v63 = v72;
    v62[1] = v65;
    v62[2] = v63;
    v62[3] = v51;
    v62[4] = v53;
    v62[5] = v61;
    v62[6] = v64;
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x259C33C60);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for IncrementalIdentifier.Stream.Identifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for IncrementalIdentifier.Stream.Bookmark(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for IncrementalIdentifier.Stream.Store(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for IncrementalIdentifier.View.Store(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for IncrementalIdentifier.Stream.Source(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [IncrementalIdentifier.SourceType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [IncrementalIdentifier.SourceType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [IncrementalIdentifier.SourceType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay25IntelligencePlatformQuery21IncrementalIdentifierO10SourceTypeOGMd, &_sSay25IntelligencePlatformQuery21IncrementalIdentifierO10SourceTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [IncrementalIdentifier.SourceType] and conformance [A]);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.PersistableGlobalIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[56])
    {
      return OUTLINED_FUNCTION_52(*a1 + 253);
    }

    v3 = *a1;
    v4 = v3 >= 3;
    v5 = v3 - 3;
    if (!v4)
    {
      return OUTLINED_FUNCTION_52(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_52(v5);
}

_BYTE *storeEnumTagSinglePayload for IncrementalIdentifier.PersistableGlobalIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      result[56] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      result[56] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_51(result, a2 + 2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.Stream.Identifier(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for IncrementalIdentifier.Stream.Identifier(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.Stream.Bookmark(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for IncrementalIdentifier.Stream.Bookmark(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.Stream.Store(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for IncrementalIdentifier.Stream.Store(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.Stream.Source(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for IncrementalIdentifier.Stream.Source(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.SourceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IncrementalIdentifier.SourceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.View.Store.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_52(-1);
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
      return OUTLINED_FUNCTION_52((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_52((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_52((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_52(v8);
}

_BYTE *storeEnumTagSinglePayload for IncrementalIdentifier.View.Store.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_51(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalIdentifier(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return _s25IntelligencePlatformQuery21IncrementalIdentifierO05EmptyE0PAAE1loiySbx_xtFZAC4ViewO7StorageV_Ttt0t1g5();
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

  return OUTLINED_FUNCTION_62(a1);
}

_BYTE *storeEnumTagSinglePayload for IncrementalIdentifier(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.Stream.Bookmark.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_52(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_52((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_52((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_52((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_52(v8);
}

_BYTE *storeEnumTagSinglePayload for IncrementalIdentifier.Stream.Bookmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_51(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t specialized Data.InlineData.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, sqlite3_stmt *a3, int a4)
{
  v6 = BYTE6(a2);
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v11 = WORD2(a2);
  v10 = a2;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  result = sqlite3_bind_blob(a3, a4, &v9, v6, static SQLConnection.SQLITE_TRANSIENT);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, int a3, sqlite3_stmt *a4, int a5)
{
  LODWORD(v7) = a3;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
LABEL_4:
    v12 = __OFSUB__(a2, a1);
    v13 = a2 - a1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = MEMORY[0x259C322F0]();
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      if (v10)
      {
        v7 = v15;
      }

      else
      {
        v7 = 0;
      }

      if (v7 >= 0xFFFFFFFF80000000)
      {
        if (v7 <= 0x7FFFFFFF)
        {
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
            return sqlite3_bind_blob(a4, a5, v10, v7, static SQLConnection.SQLITE_TRANSIENT);
          }

LABEL_18:
          swift_once();
          return sqlite3_bind_blob(a4, a5, v10, v7, static SQLConnection.SQLITE_TRANSIENT);
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  result = __DataStorage._offset.getter();
  if (!__OFSUB__(a1, result))
  {
    v10 += a1 - result;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

uint64_t OUTLINED_FUNCTION_25()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

unint64_t *OUTLINED_FUNCTION_26@<X0>(unint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a1[1] = v2;
  return a1 + 2;
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1, uint64_t a2)
{

  return _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE4datax10Foundation4DataV_tKcfCAC6StreamO6SourceV_Tt1g5Tm(a1, a2, lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for URL();
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnection.isDone(_:context:)(Swift::Int32 _, Swift::String_optional context)
{
  if (_ == 101)
  {
    v3 = 1;
  }

  else if (_ == 100)
  {
    v3 = 0;
  }

  else
  {
    object = context.value._object;
    countAndFlagsBits = context.value._countAndFlagsBits;
    v6 = *(v2 + 16);
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13();
    v7 = OUTLINED_FUNCTION_21_1();
    static SQLConnection.sqlError(db:resultCode:statement:message:)(v7, v8, v9, countAndFlagsBits, object, v10);
    swift_willThrow();
  }

  return v3 & 1;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    outlined destroy of URL?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v11);

    return outlined destroy of URL?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v13 + 32))(v16, a1, v12);
    v18 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  return result;
}

uint64_t SQLConnection.__allocating_init(useCase:account:)(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() current];
  v4 = [objc_opt_self() policyForProcess:v3 connectionFlags:4 useCase:a1];

  v5 = [v4 explicitlyAuthorizedResourcesOfType:3 withAccessMode:1];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v4 explicitlyAuthorizedResourcesOfType:4 withAccessMode:1];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [v4 explicitlyAuthorizedResourcesOfType:1 withAccessMode:1];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  lazy protocol witness table accessor for type Set<String> and conformance Set<A>();
  static UnifiedLibrary.library.getter();
  SQLConnection.__allocating_init(streamIdentifiers:databaseIdentifiers:setIdentifiers:useCase:library:privileges:account:)();
  v9 = v8;

  return v9;
}

unint64_t lazy protocol witness table accessor for type Set<String> and conformance Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<String> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<String> and conformance Set<A>);
  }

  return result;
}

void SQLConnection.__allocating_init(streamIdentifiers:databaseIdentifiers:setIdentifiers:useCase:library:privileges:account:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v19 = v11;
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_11_1();
  swift_allocObject();
  v18 = v2;
  v16 = v10;
  v17 = SQLConnection.init(library:privileges:useCase:account:)(v8, v6, v4, v16, v2);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v19);

    __swift_destroy_boxed_opaque_existential_0(v13);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    MEMORY[0x28223BE20](v17);

    SQLConnection.withoutAuthorizer(block:)(partial apply for closure #1 in SQLConnection.init(streamIdentifiers:databaseIdentifiers:setIdentifiers:useCase:library:privileges:account:));
    __swift_destroy_boxed_opaque_existential_0(v19);

    __swift_destroy_boxed_opaque_existential_0(v13);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t SQLConnection.__allocating_init(library:privileges:useCase:account:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  OUTLINED_FUNCTION_11_1();
  v10 = swift_allocObject();
  SQLConnection.init(library:privileges:useCase:account:)(a1, a2, a3, a4, a5);
  return v10;
}

void *SQLConnection.init(library:privileges:useCase:account:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = v5;
  ppDb[1] = *MEMORY[0x277D85DE8];
  v12 = *v5;
  type metadata accessor for URL();
  v7[9] = 0;
  v7[10] = 0;
  v7[8] = 0;
  v7[11] = Dictionary.init(dictionaryLiteral:)();
  v7[13] = 0;
  ppDb[0] = 0;
  v13 = sqlite3_open_v2(":memory:", ppDb, 65538, 0);
  v14 = ppDb[0];
  if (!ppDb[0])
  {

    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x259C32B90](0xD000000000000032);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x259C32B90](v15);

    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13();
    v17 = v16;
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    memcpy(v16 + 2, __src, 0x48uLL);
    *(v17 + 88) = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  static SQLConnection.isOk(_:resultCode:context:)(ppDb[0], v13, 0, 0);
  if (v6)
  {

LABEL_5:
    v18 = 0;
    v19 = a4;
    goto LABEL_6;
  }

  v7[2] = v14;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v19 = a4;
  v7[6] = a4;
  v7[7] = a5;
  v27 = v7[8];
  v7[8] = 0;
  v28 = a4;
  v29 = a5;

  v30 = v7[9];
  v7[9] = 0;

  v31 = v7[10];
  v7[10] = 0;

  *(v7 + 96) = 0;
  SQLConnection.setAuthorizor()();
  if (!v32)
  {

    goto LABEL_11;
  }

  v18 = 1;
LABEL_6:
  if (ppDb[0])
  {
    sqlite3_close(ppDb[0]);
  }

  swift_willThrow();

  if (v18)
  {
  }

  else
  {
    v20 = v7[8];

    v21 = v7[9];

    v22 = v7[10];

    v23 = v7[11];

    v24 = v7[13];

    swift_deallocPartialClassInstance();
  }

LABEL_11:
  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t static SQLConnection.isOk(_:resultCode:context:)(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = result;
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13();
    static SQLConnection.sqlError(db:resultCode:statement:message:)(v7, a2, 0, a3, a4, v8);
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in SQLConnection.init(streamIdentifiers:databaseIdentifiers:setIdentifiers:useCase:library:privileges:account:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v72 = a6;
  v73 = a4;
  v74 = a5;
  v66 = a3;
  v71 = type metadata accessor for URL();
  v68 = *(v71 - 8);
  v10 = *(v68 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DatabaseResourceToken();
  v67 = *(v69 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v75 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = __swift_project_boxed_opaque_existential_0(a1, v14);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  (*(v18 + 16))(&v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __src[3] = swift_getAssociatedTypeWitness();
  __src[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(__src);
  dispatch thunk of Sequence.makeIterator()();
  v81 = "No database for ";
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(__src, __src[3]);
    dispatch thunk of IteratorProtocol.next()();
    v19 = v78;
    if (!v78)
    {
      break;
    }

    v20 = v77;
    v21 = SQLConnection.streamVtabModule()();
    if (v7)
    {

      goto LABEL_29;
    }

    v22 = *(v21 + 16);
    v23 = *(v21 + 24);

    if (*(a2 + 96) == 1)
    {
      v24 = *(a2 + 16);

      v25 = sqlite3_set_authorizer(v24, 0, 0);
      SQLConnection.isOk(_:context:)(v25, 0);
      if (v26)
      {
        goto LABEL_27;
      }

      *(a2 + 96) = 0;
      closure #1 in SQLConnection.createVirtualTable(tableName:moduleName:)(v20, v19, v22, v23, a2);
      SQLConnection.setAuthorizor()();
    }

    else
    {
      v77 = 0;
      v78 = 0xE000000000000000;

      _StringGuts.grow(_:)(54);
      MEMORY[0x259C32B90](0xD000000000000028, v81 | 0x8000000000000000);
      MEMORY[0x259C32B90](v20, v19);
      MEMORY[0x259C32B90](0x20474E4953552022, 0xE900000000000022);
      MEMORY[0x259C32B90](v22, v23);
      MEMORY[0x259C32B90](34, 0xE100000000000000);
      v24 = *(a2 + 16);
      v28 = String.utf8CString.getter();
      v29 = sqlite3_exec(v24, (v28 + 32), 0, 0, 0);

      SQLConnection.isOk(_:context:)(v29, 0);
    }

    if (v27)
    {
LABEL_27:

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      goto LABEL_29;
    }

    swift_bridgeObjectRelease_n();
    v77 = v20;
    v78 = v19;
    MEMORY[0x259C32B90](0x4F5453424D4F542ELL, 0xEA0000000000454ELL);
    v30 = v77;
    v31 = v78;
    v32 = SQLConnection.streamTombstoneVtabModule()();
    v33 = *(v32 + 16);
    v34 = *(v32 + 24);

    if (*(a2 + 96) == 1)
    {

      v35 = sqlite3_set_authorizer(v24, 0, 0);
      SQLConnection.isOk(_:context:)(v35, 0);
      if (v36)
      {
        goto LABEL_28;
      }

      *(a2 + 96) = 0;
      closure #1 in SQLConnection.createVirtualTable(tableName:moduleName:)(v30, v31, v33, v34, a2);
      SQLConnection.setAuthorizor()();
    }

    else
    {
      v77 = 0;
      v78 = 0xE000000000000000;

      _StringGuts.grow(_:)(54);
      MEMORY[0x259C32B90](0xD000000000000028, v81 | 0x8000000000000000);
      MEMORY[0x259C32B90](v30, v31);
      MEMORY[0x259C32B90](0x20474E4953552022, 0xE900000000000022);
      MEMORY[0x259C32B90](v33, v34);
      MEMORY[0x259C32B90](34, 0xE100000000000000);
      v38 = String.utf8CString.getter();
      v39 = sqlite3_exec(v24, (v38 + 32), 0, 0, 0);

      SQLConnection.isOk(_:context:)(v39, 0);
    }

    v7 = v37;
    if (v37)
    {
LABEL_28:
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

LABEL_29:
      v60 = __src;
      return __swift_destroy_boxed_opaque_existential_0(v60);
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  __swift_destroy_boxed_opaque_existential_0(__src);
  v40 = v66[3];
  v41 = __swift_project_boxed_opaque_existential_0(v66, v40);
  v42 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  (*(v44 + 16))(&v65 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v77);
  dispatch thunk of Sequence.makeIterator()();
  v45 = (v68 + 8);
  v81 = (v67 + 8);
LABEL_17:
  __swift_mutable_project_boxed_opaque_existential_1(&v77, AssociatedTypeWitness);
  dispatch thunk of IteratorProtocol.next()();
  v46 = __src[1];
  if (!__src[1])
  {
LABEL_26:
    v60 = &v77;
    return __swift_destroy_boxed_opaque_existential_0(v60);
  }

  v47 = __src[0];
  if (!dispatch thunk of static LibraryBase.lookupDatabaseResource(identifier:)())
  {
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    __src[0] = 0xD000000000000010;
    __src[1] = 0x80000002553A8340;
    MEMORY[0x259C32B90](v47, v46);

    v61 = __src[0];
    v62 = __src[1];
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v64 = v63;
    *v63 = v61;
    v63[1] = v62;
    memcpy(v63 + 2, __src, 0x48uLL);
    *(v64 + 88) = 0;
    swift_willThrow();
    goto LABEL_26;
  }

  v49 = v48;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  dispatch thunk of static DatabaseResource.databaseResourceToken(useCase:)();
  if (v7)
  {

    goto LABEL_26;
  }

  v50 = v70;
  DatabaseResourceToken.url.getter();
  v51 = *(v49 + 8);
  dispatch thunk of static DataResource.identifier.getter();
  SQLConnection.attachDatabase(url:as:readwrite:)();
  (*v45)(v50, v71);

  v52 = dispatch thunk of static DatabaseResource.views.getter();
  v53 = (v52 + 40);
  v54 = -*(v52 + 16);
  v55 = -1;
  while (1)
  {
    result = v75;
    if (v54 + v55 == -1)
    {
      (*v81)(v75, v69);

      goto LABEL_17;
    }

    if (++v55 >= *(v52 + 16))
    {
      break;
    }

    v57 = v53 + 2;
    v58 = *(v53 - 1);
    v59 = *v53;
    SQLConnection.createTempSQLView(for:)();
    v53 = v57;
  }

  __break(1u);
  return result;
}

uint64_t SQLConnection.streamVtabModule()()
{
  if (*(v0 + 64))
  {
    v0 = *(v0 + 64);
  }

  else
  {
    type metadata accessor for VirtualTable.Stream.Module();
    OUTLINED_FUNCTION_9_1();
    v2 = OUTLINED_FUNCTION_15_1();
    VirtualTable.Stream.Module.init(ipsqlDb:)(v2);
    OUTLINED_FUNCTION_15_1();

    v3 = OUTLINED_FUNCTION_6_2();
    specialized SQLConnection.withoutAuthorizer(block:)(v3, v4, v5);
    if (v1)
    {

      return v0;
    }

    v7 = *(v0 + 64);
    *(v0 + 64) = v0;
  }

  return v0;
}

uint64_t SQLConnection.streamTombstoneVtabModule()()
{
  if (*(v0 + 72))
  {
    v0 = *(v0 + 72);
  }

  else
  {
    type metadata accessor for VirtualTable.StreamTombstone.Module();
    OUTLINED_FUNCTION_9_1();
    v2 = OUTLINED_FUNCTION_15_1();
    VirtualTable.StreamTombstone.Module.init(ipsqlDb:)(v2);
    OUTLINED_FUNCTION_15_1();

    v3 = OUTLINED_FUNCTION_6_2();
    specialized SQLConnection.withoutAuthorizer(block:)(v3, v4, v5);
    if (v1)
    {

      return v0;
    }

    v7 = *(v0 + 72);
    *(v0 + 72) = v0;
  }

  return v0;
}

void SQLConnection.attachDatabase(url:as:readwrite:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v31[-1] - v13;
  v15 = type metadata accessor for URL();
  v16 = OUTLINED_FUNCTION_0_2(v15);
  v32 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  specialized Dictionary.subscript.getter(v6, v4, *(v0 + 88), v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    v23 = outlined destroy of URL?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    MEMORY[0x28223BE20](v23);
    *(&v30 - 48) = v2 & 1;
    *(&v30 - 5) = v0;
    *(&v30 - 4) = v8;
    *(&v30 - 3) = v6;
    *(&v30 - 2) = v4;
    SQLConnection.withoutAuthorizer(block:)(partial apply for closure #1 in SQLConnection.attachDatabase(url:as:readwrite:));
  }

  else
  {
    (*(v32 + 32))(v22, v14, v15);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      MEMORY[0x259C32B90](0xD000000000000010, 0x80000002553A7E80);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x259C32B90](v24);

      MEMORY[0x259C32B90](0x616261746144203ALL, 0xEB00000000206573);
      MEMORY[0x259C32B90](v6, v4);
      MEMORY[0x259C32B90](0xD000000000000015, 0x80000002553A7EA0);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x259C32B90](v25);

      v26 = v31[0];
      v27 = v31[1];
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13();
      v29 = v28;
      *v28 = v26;
      v28[1] = v27;
      memcpy(v28 + 2, v31, 0x48uLL);
      *(v29 + 88) = 2;
      swift_willThrow();
    }

    (*(v32 + 8))(v22, v15);
  }

  OUTLINED_FUNCTION_24();
}

void SQLConnection.createTempSQLView(for:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v3 = type metadata accessor for LibraryArtifact.Table();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v35 = v5;
  v36 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = *(v0 + 16);
  _StringGuts.grow(_:)(29);

  v12 = *(v2 + 8);
  OUTLINED_FUNCTION_10_0();
  v13 = dispatch thunk of static LibraryArtifact.DataArtifact.identifier.getter();
  MEMORY[0x259C32B90](v13);

  MEMORY[0x259C32B90](34, 0xE100000000000000);
  String.utf8CString.getter();
  OUTLINED_FUNCTION_20_1();

  OUTLINED_FUNCTION_5_3();
  sqlite3_exec(v14, v15, v16, v17, v18);

  OUTLINED_FUNCTION_0_0();
  SQLConnection.isOk(_:context:)(v19, v20);
  if (!v21)
  {
    _StringGuts.grow(_:)(102);
    MEMORY[0x259C32B90](0xD00000000000002CLL, 0x80000002553A8280);
    OUTLINED_FUNCTION_10_0();
    v22 = dispatch thunk of static LibraryArtifact.DataArtifact.identifier.getter();
    MEMORY[0x259C32B90](v22);

    MEMORY[0x259C32B90](0xD000000000000030, 0x80000002553A82B0);
    dispatch thunk of static IntelligencePlatformView.database.getter();
    v24 = *(v23 + 8);
    v25 = dispatch thunk of static DataResource.identifier.getter();
    MEMORY[0x259C32B90](v25);

    MEMORY[0x259C32B90](2240034, 0xE300000000000000);
    OUTLINED_FUNCTION_10_0();
    v26 = dispatch thunk of static LibraryArtifact.DataArtifact.metadata.getter();
    MEMORY[0x259C32550](v26);
    (*(v35 + 8))(v10, v36);
    v27 = OUTLINED_FUNCTION_13_1();
    MEMORY[0x259C32B90](v27);

    MEMORY[0x259C32B90](34, 0xE100000000000000);
    String.utf8CString.getter();
    OUTLINED_FUNCTION_20_1();

    OUTLINED_FUNCTION_5_3();
    sqlite3_exec(v28, v29, v30, v31, v32);

    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v33, v34);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t SQLConnection.deinit()
{
  sqlite3_close(*(v0 + 16));
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  return v0;
}

uint64_t SQLConnection.__deallocating_deinit()
{
  SQLConnection.deinit();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t closure #1 in SQLConnection.streamVtabModule()(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10[4] = a3;
  v10[3] = *a2;
  v10[0] = a2;

  v6 = static VirtualTable.createModule(with:)(v10);
  if (!v3)
  {
    specialized closure #1 in SQLConnection.register(module:)(a1, a2, v6);
    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v7, v8);
  }

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t SQLConnection.viewVtabModule()()
{
  if (*(v0 + 80))
  {
    v0 = *(v0 + 80);
  }

  else
  {
    type metadata accessor for VirtualTable.View.Module();
    OUTLINED_FUNCTION_9_1();
    v2 = OUTLINED_FUNCTION_15_1();
    VirtualTable.View.Module.init(ipsqlDb:)(v2);
    OUTLINED_FUNCTION_15_1();

    v3 = OUTLINED_FUNCTION_6_2();
    specialized SQLConnection.withoutAuthorizer(block:)(v3, v4, v5);
    if (v1)
    {

      return v0;
    }

    v7 = *(v0 + 80);
    *(v0 + 80) = v0;
  }

  return v0;
}

Swift::OpaquePointer __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnection.prepareStatement(query:)(Swift::String query)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  if ((query._object & 0x1000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if ((query._object & 0x2000000000000000) != 0)
  {
    *zSql = query._countAndFlagsBits;
    *&zSql[8] = query._object & 0xFFFFFFFFFFFFFFLL;
    query._countAndFlagsBits = *(v1 + 16);
    query._object = zSql;
    goto LABEL_6;
  }

  if ((query._countAndFlagsBits & 0x1000000000000000) == 0)
  {
LABEL_11:
    _StringGuts._slowWithCString<A>(_:)();
    goto LABEL_7;
  }

  query._countAndFlagsBits = *(v1 + 16);
  query._object = ((query._object & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sqlite3_prepare_v2(query._countAndFlagsBits, query._object, -1, ppStmt, 0);
LABEL_7:
  OUTLINED_FUNCTION_0_0();
  SQLConnection.isOk(_:context:)(v3, v4);
  if (!v6)
  {
    result._rawValue = ppStmt[0];
    if (!ppStmt[0])
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13();
      v9 = v8;
      *v8 = 0xD000000000000020;
      v8[1] = 0x80000002553A82F0;
      memcpy(v8 + 2, zSql, 0x48uLL);
      *(v9 + 88) = 0;
      result._rawValue = swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void SQLConnection.execute(query:against:block:)()
{
  OUTLINED_FUNCTION_23();
  v30 = v1;
  v28 = v3;
  v29 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for SQLParseResult(0);
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v26 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v25 = *v5;
  v18 = v5[2];
  v27 = v5[1];
  v19 = v5[3];
  v20 = v5[4];
  v22 = v5[5];
  v21 = v5[6];

  SQLParseResult.init(sql:)(v9, v7, v17);
  if (!v0)
  {
    (*(v26 + 8))(v17, v10);
    if (v25)
    {
      if (v25 == 1)
      {
        lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13();
        v24 = v23;
        *v23 = 0xD000000000000014;
        v23[1] = 0x80000002553A7EC0;
        memcpy(v23 + 2, v31, 0x48uLL);
        *(v24 + 88) = 0;
        swift_willThrow();
      }

      else
      {
        LOBYTE(v31[0]) = 2;
        v31[1] = v27;
        v31[2] = v18;
        v31[3] = v19;
        v31[4] = v20;
        v31[5] = v22;
        v31[6] = v21;
        SQLConnection.executeView(query:against:block:)(v9, v7, v31, v29, v30, v28);
      }
    }

    else
    {
      LOBYTE(v31[0]) = 0;
      v31[1] = v27;
      v31[2] = v18;
      v31[3] = v19;
      v31[4] = v20;
      v31[5] = v22;
      v31[6] = v21;
      SQLConnection.executeStream(query:against:block:)(v9, v7, v31, v29, v28);
    }
  }

  OUTLINED_FUNCTION_24();
}

uint64_t SQLConnection.executeStream(query:against:block:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, void (*a4)(Swift::String *)@<X3>, uint64_t a5@<X8>)
{
  v54._countAndFlagsBits = a1;
  v54._object = a2;
  v6 = *a3;
  v7 = *(a3 + 1);
  v8 = *(a3 + 2);
  v10 = *(a3 + 3);
  v9 = *(a3 + 4);
  v11 = *(a3 + 5);
  v12 = *(a3 + 6);
  type metadata accessor for VirtualTable.Stream.QueryState();
  LOBYTE(v57._countAndFlagsBits) = v6;
  v57._object = v7;
  v58 = v8;
  v59 = v10;
  v60 = v9;
  v61 = v11;
  v62 = v12;
  v13 = OUTLINED_FUNCTION_13_1();
  outlined copy of Data._Representation(v13, v14);
  v15 = OUTLINED_FUNCTION_22_1();
  outlined copy of Data._Representation(v15, v16);
  outlined copy of Data._Representation(v11, v12);
  result = VirtualTable.Stream.QueryState.__allocating_init(globalBookmark:)(&v57);
  if (!v5)
  {
    v18 = result;
    v51 = v6;
    v19 = *(result + 16);
    v20 = *(result + 24);

    SQLConnection.streamVtabModule()();
    v50 = v18;
    v21 = VirtualTable.Stream.Module.vtabCreatingIfNeeded(for:)();

    v22 = *(v21 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream5Table_sourceState);
    *(v21 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream5Table_sourceState) = v50;

    v23 = SQLConnection.streamTombstoneVtabModule()();
    v49 = v19;
    v57._countAndFlagsBits = v19;
    v57._object = v20;
    v25 = v23;

    MEMORY[0x259C32B90](0x4F5453424D4F542ELL, 0xEA0000000000454ELL);
    VirtualTable.StreamTombstone.Module.vtabCreatingIfNeeded(for:)(v57._countAndFlagsBits, v57._object);
    OUTLINED_FUNCTION_23_0();

    v26 = *(v25 + 56);
    *(v25 + 56) = v50;

    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x259C32B90](0xD000000000000034);
    MEMORY[0x259C32B90](v49, v20);

    MEMORY[0x259C32B90](0x4F5453424D4F542ELL, 0xEB0000000022454ELL);
    v27._rawValue = SQLConnection.prepareStatement(query:)(v57)._rawValue;
    if (v28)
    {

      VirtualTable.StreamTombstone.Table.resetIncrementalState()();
      if (v29)
      {
      }

      VirtualTable.Stream.Table.resetIncrementalState()();
      if (v30)
      {
      }
    }

    else
    {
      rawValue = v27._rawValue;

      v32._rawValue = SQLConnection.prepareStatement(query:)(v54)._rawValue;
      if (v33)
      {
        sqlite3_finalize(rawValue);
        VirtualTable.StreamTombstone.Table.resetIncrementalState()();
        if (v34)
        {
        }

        VirtualTable.Stream.Table.resetIncrementalState()();
        if (v24)
        {
        }
      }

      else
      {
        v35 = v32._rawValue;
        type metadata accessor for ResultSetCursor();
        pStmt = v35;
        OUTLINED_FUNCTION_9_1();
        OUTLINED_FUNCTION_23_0();

        v55 = ResultSetCursor.init(db:statement:)(v36, rawValue);
        OUTLINED_FUNCTION_9_1();
        OUTLINED_FUNCTION_23_0();

        v38 = ResultSetCursor.init(db:statement:)(v37, v35);
        v57._countAndFlagsBits = v55;
        v57._object = v38;
        a4(&v57);

        VirtualTable.Stream.QueryState.finalBookmark.getter(v63);
        v39 = OUTLINED_FUNCTION_13_1();
        outlined copy of Data._Representation(v39, v40);
        v41 = v10;
        v42 = v10;
        v43 = v9;
        outlined copy of Data._Representation(v42, v9);
        v44 = specialized IncrementalIdentifier.Identifier.asData.getter();
        v46 = v45;
        outlined destroy of IncrementalIdentifier.Stream.Bookmark(v63);
        *a5 = v51;
        *(a5 + 8) = v7;
        *(a5 + 16) = v8;
        *(a5 + 24) = v41;
        *(a5 + 32) = v43;
        *(a5 + 40) = v44;
        *(a5 + 48) = v46;
        sqlite3_finalize(pStmt);
        sqlite3_finalize(rawValue);
        VirtualTable.StreamTombstone.Table.resetIncrementalState()();
        if (v47)
        {
        }

        VirtualTable.Stream.Table.resetIncrementalState()();
        if (v48)
        {
        }
      }
    }
  }

  return result;
}

void SQLConnection.executeView(query:against:block:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void (*a4)(Swift::String *)@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v103 = a5;
  v104 = a4;
  v105 = a1;
  v106 = a2;
  v100 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams23UpdatedObjectDiffConfigVSgMd, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v11);
  v13 = (&v95 - v12);
  v14 = type metadata accessor for UpdatedObjectDiffConfig();
  v15 = OUTLINED_FUNCTION_0_2(v14);
  v107 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v99 = *a3;
  v23 = a3[1];
  v22 = a3[2];
  v24 = a3[4];
  v101 = a3[3];
  v102 = v24;
  v25 = a3[5];
  v109 = a3[6];
  v110 = v25;
  v26 = OUTLINED_FUNCTION_22_1();
  v28 = outlined copy of Data._Representation(v26, v27);
  v29 = MEMORY[0x259C331C0](v28);
  v30 = type metadata accessor for JSONDecoder();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v6)
  {

    objc_autoreleasePoolPop(v29);
    v33 = OUTLINED_FUNCTION_22_1();
    outlined consume of Data._Representation(v33, v34);
    return;
  }

  v97 = v13;
  v96 = v21;
  v98 = v14;

  objc_autoreleasePoolPop(v29);
  v35 = OUTLINED_FUNCTION_22_1();
  v37 = outlined consume of Data._Representation(v35, v36);
  v38 = MEMORY[0x259C331C0](v37);
  v39 = *(v30 + 48);
  v40 = *(v30 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v38);
  v41 = *&__src[0]._countAndFlagsBits;
  v42 = v108;
  SQLConnection.viewVtabModule()();
  OUTLINED_FUNCTION_23_0();
  v43 = VirtualTable.View.Module.vtabCreatingIfNeeded(for:)();

  v44 = VirtualTable.View.Table.currentState()();
  if (v45)
  {
    goto LABEL_4;
  }

  v47 = v98;
  v48 = v97;
  if (v41 <= 0.0)
  {
    goto LABEL_12;
  }

  if (v41 >= v44.pruneByTimestamp)
  {
    if (v44.latestTimestamp < v41)
    {
      OUTLINED_FUNCTION_12_1();
      _StringGuts.grow(_:)(89);
      MEMORY[0x259C32B90](0xD00000000000004ALL, 0x80000002553A8210);
      OUTLINED_FUNCTION_25_0();
      MEMORY[0x259C32B90](0x6574616C20737620, 0xEB00000000207473);
      goto LABEL_11;
    }

LABEL_12:
    *(v43 + 56) = v41;
    *(v43 + 64) = 0;
    v53 = *(v43 + 48);
    v54 = *(v43 + 40);
    dispatch thunk of static IntelligencePlatformView.updatedObjectDiffConfig.getter();
    if (__swift_getEnumTagSinglePayload(v48, 1, v47) == 1)
    {
      outlined destroy of URL?(v48, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMd, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMR);
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13();
      v56 = v55;
      *v55 = 0xD000000000000035;
      v55[1] = 0x80000002553A8150;
      memcpy(v55 + 2, __src, 0x48uLL);
      *(v56 + 88) = 0;
      swift_willThrow();
      *(v43 + 56) = 0;
      *(v43 + 64) = 1;
      goto LABEL_4;
    }

    v109 = v23;
    v110 = v22;
    v57 = v107;
    v58 = v47;
    v59 = v96;
    (*(v107 + 32))(v96, v48, v58);
    OUTLINED_FUNCTION_12_1();
    _StringGuts.grow(_:)(110);
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x259C32B90](0xD000000000000014);
    UpdatedObjectDiffConfig.identifierColumn.getter();
    OUTLINED_FUNCTION_16_1();

    OUTLINED_FUNCTION_24_0();
    MEMORY[0x259C32B90](0xD000000000000014);
    v60 = *(v43 + 48);
    v61 = *(v43 + 40);
    dispatch thunk of static IntelligencePlatformView.database.getter();
    v63 = *(v62 + 8);
    dispatch thunk of static DataResource.identifier.getter();
    OUTLINED_FUNCTION_16_1();

    MEMORY[0x259C32B90](2240034, 0xE300000000000000);
    UpdatedObjectDiffConfig.tableName.getter();
    OUTLINED_FUNCTION_16_1();

    MEMORY[0x259C32B90](0xD000000000000015, 0x80000002553A81D0);
    UpdatedObjectDiffConfig.updatedTimestampColumn.getter();
    OUTLINED_FUNCTION_16_1();

    MEMORY[0x259C32B90](0xD000000000000017, 0x80000002553A81F0);
    UpdatedObjectDiffConfig.identifierColumn.getter();
    OUTLINED_FUNCTION_16_1();

    MEMORY[0x259C32B90](0x544F4E2053492022, 0xED00004C4C554E20);
    v64._rawValue = SQLConnection.prepareStatement(query:)(__src[0])._rawValue;
    if (v65)
    {
      (*(v57 + 8))(v59, v58);

LABEL_26:
      *(v43 + 56) = 0;
      *(v43 + 64) = 1;
      goto LABEL_4;
    }

    rawValue = v64._rawValue;

    if (v41 == 0.0)
    {
      v67 = v44.latestTimestamp + 0.0;
      v68 = v106;
      v69 = v107;
      v70 = v105;
      if (v44.latestTimestamp != INFINITY)
      {
        *&v67 += (*&v67 >> 63) | 1;
      }

      sqlite3_bind_double(rawValue, 1, v67);
      OUTLINED_FUNCTION_0_0();
      v71 = rawValue;
      SQLConnection.isOk(_:context:)(v72, v73);
      if (v74)
      {
        v75 = rawValue;
LABEL_25:
        sqlite3_finalize(v75);
        (*(v69 + 8))(v96, v58);
        goto LABEL_26;
      }
    }

    else
    {
      sqlite3_bind_double(rawValue, 1, v41);
      OUTLINED_FUNCTION_0_0();
      v71 = rawValue;
      SQLConnection.isOk(_:context:)(v76, v77);
      v68 = v106;
      v69 = v107;
      v78 = v96;
      v70 = v105;
      if (v79)
      {
        sqlite3_finalize(v71);
        (*(v69 + 8))(v78, v58);
        goto LABEL_26;
      }
    }

    v97 = v71;
    v80._countAndFlagsBits = v70;
    v80._object = v68;
    v81._rawValue = SQLConnection.prepareStatement(query:)(v80)._rawValue;
    if (!v82)
    {
      v83 = v81._rawValue;
      type metadata accessor for ResultSetCursor();
      OUTLINED_FUNCTION_9_1();

      v85 = ResultSetCursor.init(db:statement:)(v84, v97);
      OUTLINED_FUNCTION_9_1();

      v87 = ResultSetCursor.init(db:statement:)(v86, v83);
      __src[0]._countAndFlagsBits = v85;
      __src[0]._object = v87;
      v104(__src);

      outlined copy of Data._Representation(v109, v110);
      outlined copy of Data._Representation(v101, v102);
      v88 = specialized IncrementalIdentifier.Identifier.asData.getter();
      v89 = v100;
      *v100 = v99;
      v90 = v110;
      v89[1] = v109;
      v89[2] = v90;
      v91 = v102;
      v89[3] = v101;
      v89[4] = v91;
      v89[5] = v88;
      v89[6] = v92;
      sqlite3_finalize(v83);
      sqlite3_finalize(v97);
      v93 = OUTLINED_FUNCTION_19_1();
      v94(v93, v98);
      *(v43 + 56) = 0;
      *(v43 + 64) = 1;
      v46 = v108;
      goto LABEL_5;
    }

    v75 = v97;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_12_1();
  _StringGuts.grow(_:)(88);
  MEMORY[0x259C32B90](0xD00000000000004ALL, 0x80000002553A8210);
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x259C32B90](0x6E75727020737620, 0xEA00000000002065);
LABEL_11:
  Double.write<A>(to:)();
  countAndFlagsBits = __src[0]._countAndFlagsBits;
  object = __src[0]._object;
  lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
  OUTLINED_FUNCTION_13();
  v52 = v51;
  *v51 = countAndFlagsBits;
  v51[1] = object;
  memcpy(v51 + 2, __src, 0x48uLL);
  *(v52 + 88) = 0;
  swift_willThrow();
LABEL_4:
  v46 = v42;
LABEL_5:
  $defer #1 () in SQLConnection.executeView(query:against:block:)(v46, v43);
}

uint64_t closure #1 in closure #1 in SQLConnection.prepareStatement(query:)@<X0>(char *zSql@<X0>, sqlite3_stmt **ppStmt@<X2>, uint64_t a3@<X1>, _DWORD *a4@<X8>)
{
  result = sqlite3_prepare_v2(*(a3 + 16), zSql, -1, ppStmt, 0);
  *a4 = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnection.isOk(_:context:)(Swift::Int32 _, Swift::String_optional context)
{
  if (_)
  {
    object = context.value._object;
    countAndFlagsBits = context.value._countAndFlagsBits;
    v5 = *(v2 + 16);
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13();
    v6 = OUTLINED_FUNCTION_21_1();
    static SQLConnection.sqlError(db:resultCode:statement:message:)(v6, v7, v8, countAndFlagsBits, object, v9);
    swift_willThrow();
  }
}

const char *static SQLConnection.sqlError(db:resultCode:statement:message:)@<X0>(sqlite3 *a1@<X0>, int a2@<W1>, sqlite3_stmt *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = sqlite3_errcode(a1);
  v11 = sqlite3_extended_errcode(a1);
  result = sqlite3_errmsg(a1);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = String.init(cString:)();
  v15 = v14;
  v16 = sqlite3_error_offset(a1);
  result = sqlite3_errstr(v11);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = String.init(cString:)();
  v19 = v18;
  if (!a3)
  {
    v20 = 0;
    v21 = 0;
    goto LABEL_7;
  }

  result = sqlite3_sql(a3);
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v20 = String.init(cString:)();
LABEL_7:
  *a6 = a2;
  *(a6 + 4) = v22;
  *(a6 + 8) = v11;
  *(a6 + 16) = v17;
  *(a6 + 24) = v19;
  *(a6 + 32) = v13;
  *(a6 + 40) = v15;
  *(a6 + 48) = v16;
  *(a6 + 56) = v20;
  *(a6 + 64) = v21;
  *(a6 + 72) = a4;
  *(a6 + 80) = a5;
  *(a6 + 88) = 3;
}

uint64_t static SQLConnection.isOk(resultCode:statement:context:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v6 = result;
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13();
    static SQLConnection.sqlErrorLite(resultCode:statement:message:)(v6, 0, a3, a4, v7);
    return swift_willThrow();
  }

  return result;
}

const char *static SQLConnection.sqlErrorLite(resultCode:statement:message:)@<X0>(int a1@<W0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sqlite3_errstr(a1);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = String.init(cString:)();
  v13 = v12;
  if (!a2)
  {
    v14 = 0;
    v15 = 0;
    goto LABEL_6;
  }

  result = sqlite3_sql(a2);
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v14 = String.init(cString:)();
LABEL_6:
  *a5 = a1;
  *(a5 + 8) = v11;
  *(a5 + 16) = v13;
  *(a5 + 24) = v14;
  *(a5 + 32) = v15;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  *(a5 + 88) = 4;
}

uint64_t $defer #1 () in SQLConnection.executeView(query:against:block:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();

  return specialized SQLConnection.withoutAuthorizer(block:)(a1, a1, a2);
}

uint64_t static SQLConnection.SQLITE_TRANSIENT.getter()
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    OUTLINED_FUNCTION_29();
  }

  return static SQLConnection.SQLITE_TRANSIENT;
}

uint64_t static SQLConnection.SQLITE_TRANSIENT.setter(uint64_t result)
{
  v1 = result;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    result = OUTLINED_FUNCTION_29();
  }

  static SQLConnection.SQLITE_TRANSIENT = v1;
  return result;
}

double (*static SQLConnection.SQLITE_TRANSIENT.modify())(void, void)
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    OUTLINED_FUNCTION_29();
  }

  return ResultSetCursor.columns.modify;
}

void static SQLConnection.sqlite_result_string(context:string:)(sqlite3_context *a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = a3 & 0xFFFFFFFFFFFFFFFLL;
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        OUTLINED_FUNCTION_29();
      }

      v5 = static SQLConnection.SQLITE_TRANSIENT;

      sqlite3_result_text(a1, (v4 + 32), -1, v5);
      return;
    }

LABEL_12:
    _StringGuts._slowWithCString<A>(_:)();
    return;
  }

  *v6 = a2;
  v7 = a3 & 0xFFFFFFFFFFFFFFLL;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    OUTLINED_FUNCTION_29();
  }

  sqlite3_result_text(a1, v6, -1, static SQLConnection.SQLITE_TRANSIENT);
}

void closure #1 in static SQLConnection.sqlite_result_string(context:string:)(char *a1, sqlite3_context *a2)
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  sqlite3_result_text(a2, a1, -1, static SQLConnection.SQLITE_TRANSIENT);
}

uint64_t SQLConnection.Error.description.getter()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  result = 0x4D20666F2074754FLL;
  switch(*(v0 + 88))
  {
    case 1:
      v25[0] = 0;
      v25[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      OUTLINED_FUNCTION_14_1();
      v14 = OUTLINED_FUNCTION_13_1();
      MEMORY[0x259C32B90](v14);
      MEMORY[0x259C32B90](544106784, 0xE400000000000000);
      v15 = v3;
      v16 = v2;
      goto LABEL_8;
    case 2:
      strcpy(v25, "Usage Error: ");
      HIWORD(v25[1]) = -4864;
      goto LABEL_7;
    case 3:
      v22 = *(v0 + 72);
      v23 = *(v0 + 80);
      v10 = HIDWORD(*v0);
      v25[0] = 0;
      v25[1] = 0xE000000000000000;
      v24 = v4;
      _StringGuts.grow(_:)(43);

      OUTLINED_FUNCTION_3_3();
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_29_0();

      OUTLINED_FUNCTION_7_2();
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_29_0();

      OUTLINED_FUNCTION_7_2();
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_29_0();

      OUTLINED_FUNCTION_7_2();
      MEMORY[0x259C32B90](v3, v2);
      MEMORY[0x259C32B90](32, 0xE100000000000000);
      MEMORY[0x259C32B90](v5, v24);
      MEMORY[0x259C32B90](0x3A6C6F6320746120, 0xE900000000000020);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x259C32B90](v11);

      if (v8)
      {
        MEMORY[0x259C32B90](v7, v8);
        MEMORY[0x259C32B90](2964604, 0xE300000000000000);
        v12 = 0x7C3E2D3A4C5153;
        v13 = 0xE700000000000000;
      }

      else
      {
        v12 = 0;
        v13 = 0xE000000000000000;
      }

      MEMORY[0x259C32B90](v12, v13);

      if (v23)
      {
        MEMORY[0x259C32B90](v22);
        v20 = 0x6567617373656D20;
        v21 = 0xEA0000000000203ALL;
      }

      else
      {
        v20 = 0;
        v21 = 0xE000000000000000;
      }

      goto LABEL_25;
    case 4:
      v25[0] = 0;
      v25[1] = 0xE000000000000000;
      v17 = v4;

      _StringGuts.grow(_:)(29);

      OUTLINED_FUNCTION_3_3();
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_29_0();

      OUTLINED_FUNCTION_7_2();
      MEMORY[0x259C32B90](v1, v3);
      OUTLINED_FUNCTION_26_0();
      if (v5)
      {
        v18 = v2;
      }

      else
      {
        v18 = 0;
      }

      if (v5)
      {
        v19 = v5;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      MEMORY[0x259C32B90](v18, v19);

      OUTLINED_FUNCTION_26_0();
      if (v6)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0;
      }

      if (v6)
      {
        v21 = v6;
      }

      else
      {
        v21 = 0xE000000000000000;
      }

LABEL_25:
      MEMORY[0x259C32B90](v20, v21);

      return v25[0];
    case 5:
      return result;
    default:
      v25[0] = 0;
      v25[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      OUTLINED_FUNCTION_14_1();
LABEL_7:
      v15 = OUTLINED_FUNCTION_13_1();
LABEL_8:
      MEMORY[0x259C32B90](v15, v16);
      return v25[0];
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnection.detachDatabase(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = *(v1 + 88);
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(v11 + 56);
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 16))(v10, v15 + *(*(v16 - 8) + 72) * v14, v16);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
    outlined destroy of URL?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    specialized SQLConnection.withoutAuthorizer(block:)(v2);
  }

  else
  {
    v17 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
    outlined destroy of URL?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }
}

void closure #1 in SQLConnection.detachDatabase(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v22 = 0xD000000000000011;
  v23 = 0x80000002553A80F0;
  MEMORY[0x259C32B90](a2, a3);
  MEMORY[0x259C32B90](34, 0xE100000000000000);
  String.utf8CString.getter();

  OUTLINED_FUNCTION_5_3();
  sqlite3_exec(v13, v14, v15, v16, v17);

  OUTLINED_FUNCTION_0_0();
  SQLConnection.isOk(_:context:)(v18, v19);
  if (!v20)
  {
    v21 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v21);

    specialized Dictionary.subscript.setter(v11, a2, a3);
  }
}

void closure #1 in SQLConnection.attachDatabase(url:as:readwrite:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v14 = *(a2 + 16);
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v21 = 0xD000000000000011;
  v22 = 0x80000002553A8320;
  v15 = URL.absoluteString.getter();
  MEMORY[0x259C32B90](v15);

  if (a1)
  {
    v16 = 0x77723D65646F6D3FLL;
  }

  else
  {
    v16 = 0x6F723D65646F6D3FLL;
  }

  MEMORY[0x259C32B90](v16, 0xEE00222053412022);
  MEMORY[0x259C32B90](a4, a5);
  MEMORY[0x259C32B90](34, 0xE100000000000000);
  v17 = String.utf8CString.getter();

  v18 = sqlite3_exec(v14, (v17 + 32), 0, 0, 0);

  SQLConnection.isOk(_:context:)(v18, 0);
  if (!v19)
  {
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 16))(v13, a3, v20);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v20);

    specialized Dictionary.subscript.setter(v13, a4, a5);
  }
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnection.executeWithoutAuthorizer(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_20_1();

  specialized SQLConnection.withoutAuthorizer(block:)(v1);
}

uint64_t closure #1 in closure #1 in SQLConnection.executeWithoutAuthorizer(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  String.utf8CString.getter();
  OUTLINED_FUNCTION_5_3();
  v7 = sqlite3_exec(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t SQLConnection.executeWithoutAuthorizer(_:block:)()
{

  return specialized SQLConnection.withoutAuthorizer(block:)(v0);
}

sqlite3_stmt *closure #1 in SQLConnection.executeWithoutAuthorizer(_:block:)(int a1, Swift::String query, void (*a3)(void))
{
  result = SQLConnection.prepareStatement(query:)(query)._rawValue;
  if (!v5)
  {
    v6 = result;
    type metadata accessor for ResultSetCursor();
    OUTLINED_FUNCTION_9_1();

    ResultSetCursor.init(db:statement:)(v7, v6);
    a3();

    return sqlite3_finalize(v6);
  }

  return result;
}

uint64_t SQLConnection.extendConnection(block:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_1();

  return specialized SQLConnection.withoutAuthorizer(block:)(v5, v3, a2, v2);
}

void closure #1 in SQLConnection.installEntityIdentifierFunction()(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v58[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v58[-1] - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v58[-1] - v15;
  if (a2 == 1)
  {
    if (a3)
    {
      v17 = *a3;
      if (v17)
      {
        v18 = sqlite3_value_type(v17);
        if (v18 != 3)
        {
          if (v18 == 1)
          {
            v19 = sqlite3_value_int64(v17);

            sqlite3_result_int64(a1, v19);
            return;
          }

LABEL_37:
          sqlite3_result_null(a1);
          return;
        }

        if (!sqlite3_value_text(v17))
        {
          static Logging.SQL.getter();
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&dword_254FFD000, v38, v39, "SQLConnection: entityIdentifier: Could not convert value to string", v40, 2u);
            MEMORY[0x259C33C60](v40, -1, -1);
          }

          (*(v7 + 8))(v16, v6);
          goto LABEL_37;
        }

        v23 = String.init(cString:)();
        v25 = v24;
        v60 = v23;
        v61 = v24;

        v26._countAndFlagsBits = 3826797;
        v26._object = 0xE300000000000000;
        v27 = String.hasPrefix(_:)(v26);

        if (v27)
        {
          v28 = String.count.getter();
          specialized RangeReplaceableCollection.removeFirst(_:)(v28);
          v23 = v60;
          v25 = v61;
        }

        v29 = HIBYTE(v25) & 0xF;
        v30 = v23 & 0xFFFFFFFFFFFFLL;
        if ((v25 & 0x2000000000000000) != 0)
        {
          v31 = HIBYTE(v25) & 0xF;
        }

        else
        {
          v31 = v23 & 0xFFFFFFFFFFFFLL;
        }

        if (!v31)
        {
LABEL_85:
          static Logging.SQL.getter();

          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v58[0] = v53;
            *v52 = 136315138;
            v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v58);

            *(v52 + 4) = v54;
            _os_log_impl(&dword_254FFD000, v50, v51, "SQLConnection: entityIdentifier: Could not convert string value %s to uint64_t", v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v53);
            MEMORY[0x259C33C60](v53, -1, -1);
            MEMORY[0x259C33C60](v52, -1, -1);
          }

          else
          {
          }

          (*(v7 + 8))(v14, v6);
          goto LABEL_37;
        }

        if ((v25 & 0x1000000000000000) != 0)
        {
          v59 = 0;

          v34 = specialized _parseInteger<A, B>(ascii:radix:)(v23, v25, 10);
          v56 = v55;

          if (v56)
          {
            goto LABEL_85;
          }

          goto LABEL_90;
        }

        if ((v25 & 0x2000000000000000) != 0)
        {
          v58[0] = v23;
          v58[1] = v25 & 0xFFFFFFFFFFFFFFLL;
          if (v23 == 43)
          {
            if (v29)
            {
              if (--v29)
              {
                v34 = 0;
                v45 = v58 + 1;
                while (1)
                {
                  v46 = *v45 - 48;
                  if (v46 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v34, 0xAuLL))
                  {
                    break;
                  }

                  v37 = __CFADD__(10 * v34, v46);
                  v34 = 10 * v34 + v46;
                  if (v37)
                  {
                    break;
                  }

                  ++v45;
                  if (!--v29)
                  {
                    goto LABEL_84;
                  }
                }
              }

              goto LABEL_83;
            }

LABEL_95:
            __break(1u);
            return;
          }

          if (v23 != 45)
          {
            if (v29)
            {
              v34 = 0;
              v48 = v58;
              while (1)
              {
                v49 = *v48 - 48;
                if (v49 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v34, 0xAuLL))
                {
                  break;
                }

                v37 = __CFADD__(10 * v34, v49);
                v34 = 10 * v34 + v49;
                if (v37)
                {
                  break;
                }

                v48 = (v48 + 1);
                if (!--v29)
                {
                  goto LABEL_84;
                }
              }
            }

            goto LABEL_83;
          }

          if (v29)
          {
            if (--v29)
            {
              v34 = 0;
              v41 = v58 + 1;
              while (1)
              {
                v42 = *v41 - 48;
                if (v42 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v34, 0xAuLL))
                {
                  break;
                }

                v37 = 10 * v34 >= v42;
                v34 = 10 * v34 - v42;
                if (!v37)
                {
                  break;
                }

                ++v41;
                if (!--v29)
                {
                  goto LABEL_84;
                }
              }
            }

            goto LABEL_83;
          }
        }

        else
        {
          if ((v23 & 0x1000000000000000) != 0)
          {
            v32 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v32 = _StringObject.sharedUTF8.getter();
          }

          v33 = *v32;
          if (v33 == 43)
          {
            if (v30 >= 1)
            {
              v29 = v30 - 1;
              if (v30 != 1)
              {
                v34 = 0;
                if (v32)
                {
                  v43 = v32 + 1;
                  while (1)
                  {
                    v44 = *v43 - 48;
                    if (v44 > 9)
                    {
                      goto LABEL_83;
                    }

                    if (!is_mul_ok(v34, 0xAuLL))
                    {
                      goto LABEL_83;
                    }

                    v37 = __CFADD__(10 * v34, v44);
                    v34 = 10 * v34 + v44;
                    if (v37)
                    {
                      goto LABEL_83;
                    }

                    ++v43;
                    if (!--v29)
                    {
                      goto LABEL_84;
                    }
                  }
                }

                goto LABEL_75;
              }

              goto LABEL_83;
            }

            goto LABEL_94;
          }

          if (v33 != 45)
          {
            if (v30)
            {
              v34 = 0;
              if (v32)
              {
                while (1)
                {
                  v47 = *v32 - 48;
                  if (v47 > 9)
                  {
                    goto LABEL_83;
                  }

                  if (!is_mul_ok(v34, 0xAuLL))
                  {
                    goto LABEL_83;
                  }

                  v37 = __CFADD__(10 * v34, v47);
                  v34 = 10 * v34 + v47;
                  if (v37)
                  {
                    goto LABEL_83;
                  }

                  ++v32;
                  if (!--v30)
                  {
                    goto LABEL_75;
                  }
                }
              }

              goto LABEL_75;
            }

LABEL_83:
            v34 = 0;
            LOBYTE(v29) = 1;
LABEL_84:
            v59 = v29;
            if (v29)
            {
              goto LABEL_85;
            }

LABEL_90:

            sqlite3_result_int64(a1, v34);
            return;
          }

          if (v30 >= 1)
          {
            v29 = v30 - 1;
            if (v30 != 1)
            {
              v34 = 0;
              if (v32)
              {
                v35 = v32 + 1;
                while (1)
                {
                  v36 = *v35 - 48;
                  if (v36 > 9)
                  {
                    goto LABEL_83;
                  }

                  if (!is_mul_ok(v34, 0xAuLL))
                  {
                    goto LABEL_83;
                  }

                  v37 = 10 * v34 >= v36;
                  v34 = 10 * v34 - v36;
                  if (!v37)
                  {
                    goto LABEL_83;
                  }

                  ++v35;
                  if (!--v29)
                  {
                    goto LABEL_84;
                  }
                }
              }

LABEL_75:
              LOBYTE(v29) = 0;
              goto LABEL_84;
            }

            goto LABEL_83;
          }

          __break(1u);
        }

        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }
    }
  }

  sqlite3_result_null(a1);
  static Logging.SQL.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_254FFD000, v20, v21, "SQLConnection: entityIdentifier: Invalid arguments to function entityIdentifier", v22, 2u);
    MEMORY[0x259C33C60](v22, -1, -1);
  }

  (*(v7 + 8))(v11, v6);
}

uint64_t specialized RangeReplaceableCollection.removeFirst(_:)(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v2 = *v1;
  if ((v1[1] & 0x2000000000000000) == 0)
  {
    v3 = *v1;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    goto LABEL_11;
  }

  return String.removeSubrange(_:)();
}

Swift::Void __swiftcall SQLConnection.addUnicodeWrapperTokenizer()()
{
  v1 = type metadata accessor for Logger();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  if (*(v0 + 104))
  {
    static Logging.SQL.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_254FFD000, v10, v11, "Unicode61TokenizerWrapper already added to database connection.", v12, 2u);
      MEMORY[0x259C33C60](v12, -1, -1);
    }

    (*(v4 + 8))(v9, v1);
  }

  else
  {
    v13 = specialized SQLConnection.addTokenizer<A>(apiHandler:)();
    v14 = *(v0 + 104);
    *(v0 + 104) = v13;
  }
}

uint64_t specialized SQLConnection.addTokenizer<A>(apiHandler:)()
{
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v0._countAndFlagsBits = 0x66205443454C4553;
  v0._object = 0xEE00293F28357374;
  v1._rawValue = SQLConnection.prepareStatement(query:)(v0)._rawValue;
  if (v2)
  {
    goto LABEL_7;
  }

  rawValue = v1._rawValue;
  v4 = sqlite3_bind_pointer(v1._rawValue, 1, v12, "fts5_api_ptr", 0);
  SQLConnection.isOk(_:context:)(v4, 0);
  if (v5)
  {
    goto LABEL_7;
  }

  v6 = sqlite3_step(rawValue);
  SQLConnection.isDone(_:context:)(v6, 0);
  if (v7)
  {
    sqlite3_finalize(rawValue);
LABEL_7:
    _StringGuts.grow(_:)(45);
    MEMORY[0x259C32B90](0xD00000000000002ALL, 0x80000002553A7F80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x259C32B90](46, 0xE100000000000000);
    while (1)
    {
LABEL_8:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  if (!v12[0])
  {
    goto LABEL_8;
  }

  static Unicode61Tokenizer.createTokenizer(fts5API:)(v12[0]);
  v9 = v8;
  sqlite3_finalize(rawValue);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t SQLConnection.addTokenizer<A>(apiHandler:)(void (*a1)(void))
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v2._countAndFlagsBits = 0x66205443454C4553;
  v2._object = 0xEE00293F28357374;
  v3._rawValue = SQLConnection.prepareStatement(query:)(v2)._rawValue;
  if (v4)
  {
    goto LABEL_7;
  }

  rawValue = v3._rawValue;
  sqlite3_bind_pointer(v3._rawValue, 1, v14, "fts5_api_ptr", 0);
  OUTLINED_FUNCTION_0_0();
  SQLConnection.isOk(_:context:)(v6, v7);
  if (v8)
  {
    goto LABEL_7;
  }

  sqlite3_step(rawValue);
  OUTLINED_FUNCTION_0_0();
  SQLConnection.isDone(_:context:)(v9, v10);
  if (v11)
  {
    sqlite3_finalize(rawValue);
LABEL_7:
    _StringGuts.grow(_:)(45);
    MEMORY[0x259C32B90](0xD00000000000002ALL, 0x80000002553A7F80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x259C32B90](46, 0xE100000000000000);
    while (1)
    {
LABEL_8:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  if (!v14[0])
  {
    goto LABEL_8;
  }

  a1();
  result = sqlite3_finalize(rawValue);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
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

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t get_enum_tag_for_layout_string_25IntelligencePlatformQuery13SQLConnectionC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 88) & 7u) <= 4)
  {
    return *(a1 + 88) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t getEnumTagSinglePayload for SQLConnection.Error(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 89))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 88);
      if (v3 <= 5)
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

uint64_t storeEnumTagSinglePayload for SQLConnection.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SQLConnection.Error(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    LOBYTE(a2) = 5;
  }

  *(result + 88) = a2;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = specialized Collection.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C32BE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t outlined destroy of URL?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized closure #1 in SQLConnection.register(module:)(uint64_t a1, uint64_t a2, sqlite3_module *a3)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = String.utf8CString.getter();
  module_v2 = sqlite3_create_module_v2(v4, (v7 + 32), a3, a3, @objc closure #1 in closure #1 in SQLConnection.register(module:));

  return module_v2;
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void OUTLINED_FUNCTION_7_2()
{

  JUMPOUT(0x259C32B90);
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_1()
{
}

void OUTLINED_FUNCTION_16_1()
{

  JUMPOUT(0x259C32B90);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return Double.write<A>(to:)();
}

void OUTLINED_FUNCTION_26_0()
{

  JUMPOUT(0x259C32B90);
}

void OUTLINED_FUNCTION_29_0()
{

  JUMPOUT(0x259C32B90);
}

uint64_t VirtualTable.StreamTombstone.Module.vtabCreatingIfNeeded(for:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = v2[6];
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v13 = v5[5];
    swift_unownedRetainStrong();
    v14 = v5[2];
    v15 = v5[3];

    specialized SQLConnection.withoutAuthorizer(block:)(v16);

    if (!v4)
    {
      result = specialized Dictionary.subscript.getter(a1, a2, v5[6]);
      if (!result)
      {
        _StringGuts.grow(_:)(36);

        strcpy(__src, "No view named ");
        HIBYTE(__src[1]) = -18;
        MEMORY[0x259C32B90](a1, a2);
        MEMORY[0x259C32B90](0xD000000000000014, 0x80000002553A85F0);
        v17 = __src[1];
        lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_17_1();
        *v18 = __src[0];
        v18[1] = v17;
        memcpy(v18 + 2, __src, 0x48uLL);
        return OUTLINED_FUNCTION_18();
      }
    }
  }

  return result;
}

void VirtualTable.StreamTombstone.Module.createTable(using:databaseName:tableName:args:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = *(v6 + 48);
  if (*(v9 + 16) && (a1 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6), (a2 & 1) != 0))
  {
    v10 = *(*(v9 + 56) + 8 * a1);
  }

  else
  {
    VirtualTable.StreamTombstone.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  }
}

void VirtualTable.StreamTombstone.Module.createTableInitial(using:databaseName:tableName:args:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = v6;
  __src[0] = 46;
  __src[1] = 0xE100000000000000;
  v33[2] = __src;

  v13 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v33, a5, a6);
  if (*(v13 + 16))
  {
    v9 = v13;
    v8 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v9 = v32;
LABEL_3:
  v14 = *(v9 + 16);
  if (v14)
  {
    v15 = *(v9 + 32 * v14 + 24);
    *(v9 + 16) = v14 - 1;

    __src[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd, &_sSaySsGMR);
    lazy protocol witness table accessor for type [Substring] and conformance [A]();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    Sequence<>.joined(separator:)();

    v16 = *(v6 + 40);
    v17 = swift_unownedRetainStrong();
    v18 = *(v17 + 24);
    v19 = *(v17 + 32);

    OUTLINED_FUNCTION_11_2();
    v20 = dispatch thunk of static LibraryBase.streamBase(for:)();
    if (v20)
    {
      v21 = v20;

      type metadata accessor for VirtualTable.StreamTombstone.Table();
      v22 = swift_allocObject();

      v23 = v21;

      VirtualTable.StreamTombstone.Table.init(module:tableName:stream:)(v24, a5, a6, v23);
      if (!v8)
      {

        v30 = *(v10 + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        __src[0] = *(v10 + 48);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, a5, a6, isUniquelyReferenced_nonNull_native);
        *(v10 + 48) = __src[0];
      }
    }

    else
    {
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      __src[0] = 0xD000000000000010;
      __src[1] = 0x80000002553A84E0;
      v25 = OUTLINED_FUNCTION_11_2();
      MEMORY[0x259C32B90](v25);

      v26 = __src[0];
      v27 = __src[1];
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13();
      v29 = v28;
      *v28 = v26;
      v28[1] = v27;
      memcpy(v28 + 2, __src, 0x48uLL);
      *(v29 + 88) = 0;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t VirtualTable.StreamTombstone.Module.init(ipsqlDb:)(uint64_t a1)
{
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x80000002553A8610;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  swift_unownedRetain();
  type metadata accessor for VirtualTable.StreamTombstone.Table();
  *(v1 + 48) = Dictionary.init(dictionaryLiteral:)();

  return v1;
}

void *VirtualTable.StreamTombstone.Module.deinit()
{
  v1 = v0[3];

  v2 = v0[5];
  swift_unownedRelease();
  v3 = v0[6];

  return v0;
}

uint64_t VirtualTable.StreamTombstone.Module.__deallocating_deinit()
{
  VirtualTable.StreamTombstone.Module.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t protocol witness for VirtualTable.Module.moduleName.getter in conformance VirtualTable.StreamTombstone.Module()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

void protocol witness for VirtualTable.Module.createTable(using:databaseName:tableName:args:) in conformance VirtualTable.StreamTombstone.Module(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v10 = *v7;
  VirtualTable.StreamTombstone.Module.createTable(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  if (!v8)
  {
    *a7 = v11;
  }
}

void protocol witness for VirtualTable.Module.createTableInitial(using:databaseName:tableName:args:) in conformance VirtualTable.StreamTombstone.Module(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v10 = *v7;
  VirtualTable.StreamTombstone.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  if (!v8)
  {
    *a7 = v11;
  }
}

uint64_t VirtualTable.StreamTombstone.Table.schema.getter@<X0>(uint64_t a1@<X8>)
{
  v232 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO11EnumerationVSgMd, &_s12BiomeStreams15LibraryArtifactO11EnumerationVSgMR);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v5);
  v245 = &v223 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO5TableVSgMd, &_s12BiomeStreams15LibraryArtifactO5TableVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v223 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO18RepresentationTypeOSgMd, &_s12BiomeStreams15LibraryArtifactO18RepresentationTypeOSgMR);
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO9PredicateOSgMd, &_s12BiomeStreams15LibraryArtifactO9PredicateOSgMR);
  OUTLINED_FUNCTION_21(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v223 - v21;
  v23 = type metadata accessor for LibraryArtifact.SQLDataType();
  v24 = OUTLINED_FUNCTION_0_2(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v30 = &v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = v30;
  v31 = *(v1 + 32);
  v231 = *(v1 + 24);
  v229 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO6ColumnVGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO6ColumnVGMR);
  v32 = *(type metadata accessor for LibraryArtifact.Column() - 8);
  v244 = *(v32 + 72);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  v230 = v34;
  *(v34 + 16) = xmmword_2552FD650;
  v238 = v34 + v33;
  v233 = *MEMORY[0x277CF1848];
  v243 = *(v26 + 104);
  v35 = v23;
  v235 = v23;
  v243(v30);
  v237 = type metadata accessor for LibraryArtifact.Predicate();
  v36 = v22;
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = type metadata accessor for LibraryArtifact.RepresentationType();
  v42 = OUTLINED_FUNCTION_0_3();
  v241 = v41;
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  v45 = type metadata accessor for LibraryArtifact.Table();
  v46 = OUTLINED_FUNCTION_2_3();
  v240 = v45;
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
  v239 = type metadata accessor for LibraryArtifact.Enumeration();
  v49 = v245;
  v50 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);

  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  v54 = v242;
  v55 = v36;
  LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
  v56 = *MEMORY[0x277CF1850];
  (v243)(v54, v56, v35);
  v57 = v55;
  OUTLINED_FUNCTION_4_3();
  v58 = v237;
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v237);
  v62 = OUTLINED_FUNCTION_0_3();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v41);
  v234 = v12;
  v65 = OUTLINED_FUNCTION_2_3();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v45);
  v68 = v49;
  v69 = OUTLINED_FUNCTION_3_4();
  v70 = v239;
  __swift_storeEnumTagSinglePayload(v69, v71, v72, v239);
  v224 = v12;
  v225 = v68;
  OUTLINED_FUNCTION_8_1();
  v73 = v244;
  v74 = v238;
  OUTLINED_FUNCTION_5_4();
  v75 = v242;
  OUTLINED_FUNCTION_14_2();
  v227 = v74 + 2 * v73;
  v76 = v75;
  v228 = v56;
  v77 = v235;
  (v243)(v76, v56, v235);
  v236 = v26 + 104;
  v78 = OUTLINED_FUNCTION_1_3();
  v79 = v58;
  __swift_storeEnumTagSinglePayload(v78, v80, v81, v58);
  v82 = OUTLINED_FUNCTION_0_3();
  v83 = v241;
  __swift_storeEnumTagSinglePayload(v82, v84, v85, v241);
  v86 = v234;
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v240);
  v90 = v245;
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v70);
  v224 = v86;
  v225 = v90;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  v94 = v242;
  OUTLINED_FUNCTION_14_2();
  v95 = v243;
  v227 = 3 * v244;
  v96 = v77;
  (v243)(v94, v56, v77);
  v97 = OUTLINED_FUNCTION_1_3();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v79);
  v100 = OUTLINED_FUNCTION_0_3();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v83);
  v103 = v234;
  v104 = OUTLINED_FUNCTION_2_3();
  v105 = v240;
  __swift_storeEnumTagSinglePayload(v104, v106, v107, v240);
  v108 = v245;
  OUTLINED_FUNCTION_4_3();
  v109 = v239;
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v239);
  v224 = v103;
  v225 = v108;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_14_2();
  v113 = v244;
  v227 = &v108[4 * v244];
  v114 = v233;
  (v95)(v94, v233, v96);
  v115 = OUTLINED_FUNCTION_1_3();
  v116 = v237;
  __swift_storeEnumTagSinglePayload(v115, v117, v118, v237);
  v119 = OUTLINED_FUNCTION_0_3();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v83);
  v122 = v234;
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v105);
  v126 = v245;
  v127 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v109);
  v224 = v122;
  v225 = v126;
  v130 = v122;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  v224 = v57;
  LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
  v227 = 5 * v113;
  v131 = v243;
  (v243)(v94, v114, v235);
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v116);
  OUTLINED_FUNCTION_4_3();
  v135 = v241;
  __swift_storeEnumTagSinglePayload(v136, v137, v138, v241);
  v139 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v240);
  v142 = v245;
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v143, v144, v145, v239);
  v224 = v130;
  v225 = v142;
  v146 = v130;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_5_4();
  LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
  v147 = v244;
  v226 = &v142[6 * v244];
  LODWORD(v227) = *MEMORY[0x277CF1840];
  v131(v94);
  OUTLINED_FUNCTION_4_3();
  v148 = v237;
  __swift_storeEnumTagSinglePayload(v149, v150, v151, v237);
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v152, v153, v154, v135);
  v155 = OUTLINED_FUNCTION_2_3();
  v156 = v240;
  __swift_storeEnumTagSinglePayload(v155, v157, v158, v240);
  v159 = v245;
  v160 = OUTLINED_FUNCTION_1_3();
  v161 = v239;
  __swift_storeEnumTagSinglePayload(v160, v162, v163, v239);
  v224 = v146;
  v225 = v159;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
  v226 = 7 * v147;
  v225 = "not match the stream name: ";
  v164 = v94;
  v165 = v235;
  (v131)(v164, *MEMORY[0x277CF1830], v235);
  v166 = OUTLINED_FUNCTION_0_3();
  __swift_storeEnumTagSinglePayload(v166, v167, v168, v148);
  v169 = OUTLINED_FUNCTION_1_3();
  __swift_storeEnumTagSinglePayload(v169, v170, v171, v241);
  v172 = OUTLINED_FUNCTION_2_3();
  __swift_storeEnumTagSinglePayload(v172, v173, v174, v156);
  v175 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v161);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_5_4();
  v178 = v242;
  OUTLINED_FUNCTION_9_2();
  (v131)(v178, v227, v165);
  v179 = OUTLINED_FUNCTION_0_3();
  v180 = v237;
  __swift_storeEnumTagSinglePayload(v179, v181, v182, v237);
  v183 = OUTLINED_FUNCTION_1_3();
  v184 = v241;
  __swift_storeEnumTagSinglePayload(v183, v185, v186, v241);
  v187 = OUTLINED_FUNCTION_2_3();
  v188 = v240;
  __swift_storeEnumTagSinglePayload(v187, v189, v190, v240);
  v191 = OUTLINED_FUNCTION_3_4();
  v192 = v239;
  __swift_storeEnumTagSinglePayload(v191, v193, v194, v239);
  OUTLINED_FUNCTION_13_2();
  BYTE2(v231) = 1;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  v195 = v242;
  OUTLINED_FUNCTION_9_2();
  v196 = v235;
  (v243)(v195, v233, v235);
  v197 = OUTLINED_FUNCTION_0_3();
  __swift_storeEnumTagSinglePayload(v197, v198, v199, v180);
  v200 = OUTLINED_FUNCTION_1_3();
  __swift_storeEnumTagSinglePayload(v200, v201, v202, v184);
  v203 = OUTLINED_FUNCTION_2_3();
  __swift_storeEnumTagSinglePayload(v203, v204, v205, v188);
  v206 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v206, v207, v208, v192);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_5_4();
  v209 = v242;
  OUTLINED_FUNCTION_9_2();
  (v243)(v209, v228, v196);
  v210 = OUTLINED_FUNCTION_0_3();
  __swift_storeEnumTagSinglePayload(v210, v211, v212, v237);
  v213 = OUTLINED_FUNCTION_1_3();
  __swift_storeEnumTagSinglePayload(v213, v214, v215, v241);
  v216 = OUTLINED_FUNCTION_2_3();
  __swift_storeEnumTagSinglePayload(v216, v217, v218, v188);
  v219 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v219, v220, v221, v192);
  OUTLINED_FUNCTION_13_2();
  BYTE2(v239) = 1;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_5_4();
  return MEMORY[0x259C32540]();
}

uint64_t VirtualTable.StreamTombstone.Table.createSQL.getter()
{
  v0 = type metadata accessor for LibraryArtifact.Table();
  v1 = OUTLINED_FUNCTION_0_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  VirtualTable.StreamTombstone.Table.schema.getter(v7);
  v8 = LibraryArtifact.Table.createTableSQL.getter();
  (*(v3 + 8))(v7, v0);
  return v8;
}

void *VirtualTable.StreamTombstone.Table.init(module:tableName:stream:)(uint64_t a1, void *a2, void *a3, id a4)
{
  v5 = v4;
  v36 = a1;
  v33 = *v4;
  v9 = [a4 identifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(&__src[0] + 1) = v12;
  OUTLINED_FUNCTION_20_2();
  if (v10 == a2 && *(&__src[0] + 1) == a3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_11_2();
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v15 = [a4 schema];
  v16 = [v15 tableName];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *&__src[0] = v17;
  *(&__src[0] + 1) = v19;
  OUTLINED_FUNCTION_20_2();
  if (v17 == a2 && *(&__src[0] + 1) == a3)
  {

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_11_2();
  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_15:
    v5[2] = v36;
    v5[3] = a2;
    v5[4] = a3;
    v5[5] = a4;
    v30 = *MEMORY[0x277CF0DF0];
    v5[6] = *MEMORY[0x277CF0DF0];
    v34[0] = a2;
    v34[1] = a3;
    v34[2] = 0;
    v34[3] = 0xE000000000000000;
    type metadata accessor for VirtualTable.Stream.QueryState();
    memset(__src, 0, 48);
    swift_allocObject();
    swift_unownedRetain();

    v31 = v30;
    v5[7] = VirtualTable.Stream.QueryState.init(storeIdentifier:startingBookmark:)(v34, __src);
    goto LABEL_16;
  }

LABEL_13:
  *&__src[0] = 0;
  *(&__src[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  MEMORY[0x259C32B90](0xD00000000000002BLL, 0x80000002553A8500);
  v22 = OUTLINED_FUNCTION_11_2();
  MEMORY[0x259C32B90](v22);

  MEMORY[0x259C32B90](32, 0xE100000000000000);
  v34[0] = [a4 identifier];
  type metadata accessor for BMStreamIdentifier(0);
  _print_unlocked<A, B>(_:_:)();

  MEMORY[0x259C32B90](32, 0xE100000000000000);
  v23 = [a4 schema];
  v24 = [v23 tableName];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  MEMORY[0x259C32B90](v25, v27);

  lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
  OUTLINED_FUNCTION_13();
  v29 = v28;
  *v28 = __src[0];
  memcpy(v28 + 1, __src, 0x48uLL);
  *(v29 + 88) = 0;
  swift_willThrow();

  swift_deallocPartialClassInstance();
LABEL_16:

  return v5;
}

void *VirtualTable.StreamTombstone.Table.createCursor()()
{
  v1 = *(v0 + 56);
  type metadata accessor for VirtualTable.StreamTombstone.Cursor();
  v2 = swift_allocObject();
  v2[3] = v1;
  v2[4] = 0;
  v2[2] = v0;

  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.StreamTombstone.Table.tearDown()()
{
  v1 = v0[2];
  swift_unownedRetainStrong();
  specialized Dictionary._Variant.removeValue(forKey:)(v0[3], v0[4], &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO15StreamTombstoneO0G0CGMd, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO15StreamTombstoneO0G0CGMR, v2, type metadata accessor for VirtualTable.StreamTombstone.Table);
}

uint64_t VirtualTable.StreamTombstone.Table.deinit()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t VirtualTable.StreamTombstone.Table.__deallocating_deinit()
{
  VirtualTable.StreamTombstone.Table.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void *protocol witness for VirtualTable.Table.createCursor() in conformance VirtualTable.StreamTombstone.Table@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = VirtualTable.StreamTombstone.Table.createCursor()();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.StreamTombstone.Cursor.filter(idxNum:idxStr:args:)(Swift::Int32 idxNum, Swift::String_optional idxStr, Swift::OpaquePointer args)
{
  v5 = v3;
  v6 = *(v3 + 16);
  v7 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  v8 = VirtualTable.StreamTombstone.Table.iterator(options:queryObject:)(v7, *(v5 + 24));

  if (!v4)
  {
    v9 = *(v5 + 32);
    *(v5 + 32) = v8;
  }
}

char *VirtualTable.StreamTombstone.Table.iterator(options:queryObject:)(char *a1, uint64_t a2)
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
    v13 = [v10 tombstoneEventPublisherForAccount:v8 device:v11 useCase:v12 options:a1];

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_16:
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_17_1();
    *v32 = 0xD000000000000017;
    v32[1] = 0x80000002553A85D0;
    memcpy(v32 + 2, __src, 0x48uLL);
    OUTLINED_FUNCTION_18();
    return a1;
  }

  v30 = *(a2 + 136);
  if (v30)
  {
    v31 = [*(v2 + 40) tombstoneEventPublisherForDevice:v30 useCase:*(v2 + 48) options:a1];
  }

  else
  {
    v31 = [*(v2 + 40) tombstoneEventPublisherWithUseCase:*(v2 + 48) options:a1];
  }

  v13 = v31;
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_3:
  v14 = v13;
  v15 = VirtualTable.Stream.QueryState.startingTombstoneBMBookmark.getter();
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
  v20 = *(a2 + 152);
  *(a2 + 152) = v19;
  v21 = v19;

  v22 = VirtualTable.Stream.QueryState.startingTombstoneBMBookmark.getter();
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = v22;
  v24 = *(a2 + 152);
  if (!v24)
  {

    return a1;
  }

  type metadata accessor for BMStoreBookmark();
  v25 = v24;
  v26 = static NSObject.== infix(_:_:)();

  if ((v26 & 1) == 0)
  {

LABEL_18:
    return a1;
  }

  VirtualTable.Stream.TypeErasedStreamIterator.next()();

  v27 = *&a1[v18];
  v28 = *(a2 + 152);
  *(a2 + 152) = v27;
  v29 = v27;

  return a1;
}