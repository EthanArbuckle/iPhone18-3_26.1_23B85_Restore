uint64_t specialized ReceivingKeyTetraRatchet.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E69766965636572 && a2 == 0xEC00000079654B67;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69766965636572 && a2 == 0xEF79654B4D454B67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022B495CD0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized TetraRatchetState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B746F6F72 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696D6F636E69 && a2 == 0xEE00736E69616843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696F6774756FLL && a2 == 0xED00006E69616843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022B495CF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022B495D10 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReceivingKeyTetraRatchet.CodingKeys and conformance ReceivingKeyTetraRatchet.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of TetraOutgoingSymmetricRatchet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TetraRatchetState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [TetraMessageTypes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for ReceivingKeyTetraRatchet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReceivingKeyTetraRatchet.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized static TetraMessageEncoding.sealMessage(_:messageKey:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v34 = a5;
  v36 = type metadata accessor for SymmetricKey();
  v35 = *(v36 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TetraPB_TetraInnerMessage(0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v18 = &v17[*(v14 + 28)];
  *v18 = xmmword_22B48D7D0;
  v19 = &v17[*(v14 + 32)];
  *v19 = xmmword_22B48D7D0;
  if (a4 >> 60 != 15)
  {
    outlined copy of Data._Representation(a3, a4);
    outlined consume of Data?(0, 0xF000000000000000);
    *v19 = a3;
    *(v19 + 1) = a4;
  }

  v20 = *v18;
  v21 = *(v18 + 1);
  outlined copy of Data._Representation(a1, a2);
  outlined consume of Data?(v20, v21);
  *v18 = a1;
  *(v18 + 1) = a2;
  v22 = static TetraPBPadding.padMessage(_:)();
  if (!v5)
  {
    v24 = v22;
    v25 = v23;
    v26 = static TetraSymmetric.deriveSymmetricSenderAuthenticationMode(messageKey:)();
    v28 = v27;
    outlined copy of Data._Representation(v26, v27);
    v33 = specialized AES.IV.init(IV:)(v26, v28);
    v34 = v29;
    a3 = specialized static CoreCryptoAESCTRImpl.crypt(key:data:IV:)(v12, v24, v25, v33, v29, v30);
    outlined consume of Data._Representation(v26, v28);
    outlined consume of Data._Representation(v33, v34);
    outlined consume of Data._Representation(v24, v25);
    (*(v35 + 8))(v12, v36);
  }

  outlined destroy of TetraPB_TetraInnerMessage(v17);
  return a3;
}

uint64_t outlined destroy of TetraPB_TetraInnerMessage(uint64_t a1)
{
  v2 = type metadata accessor for TetraPB_TetraInnerMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *specialized static TetraMessageEncoding.openMessage(_:messageKey:)(uint64_t a1, unint64_t a2)
{
  v39 = a2;
  v35 = a1;
  v3 = type metadata accessor for BinaryDecodingOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TetraPB_TetraInnerMessage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SymmetricKey();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static TetraSymmetric.deriveSymmetricSenderAuthenticationMode(messageKey:)();
  v16 = v15;
  outlined copy of Data._Representation(v14, v15);
  v17 = specialized AES.IV.init(IV:)(v14, v16);
  if (v2)
  {
    (*(v10 + 8))(v13, v9);
    outlined consume of Data._Representation(v14, v16);
  }

  else
  {
    v20 = v17;
    v33 = v8;
    v34 = v9;
    v21 = v18;
    v22 = specialized static CoreCryptoAESCTRImpl.crypt(key:data:IV:)(v13, v35, v39, v17, v18, v19);
    v39 = 0;
    v35 = v22;
    outlined consume of Data._Representation(v14, v16);
    outlined consume of Data._Representation(v20, v21);
    (*(v10 + 8))(v13, v34);
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage();
    v23 = v33;
    v8 = v5;
    v24 = v39;
    Message.init(serializedData:extensions:partial:options:)();
    if (!v24)
    {
      v26 = *(v5 + 24);
      v27 = (v23 + *(v5 + 20));
      v28 = *v27;
      v29 = v27[1];
      if (v29 >> 60 == 15)
      {
        v8 = 0;
      }

      else
      {
        v8 = *v27;
      }

      if (v29 >> 60 != 15)
      {
        v30 = v27[1];
      }

      v31 = *(v23 + v26);
      if (*(v23 + v26 + 8) >> 60 != 15)
      {
        outlined copy of Data?(*(v23 + v26), *(v23 + v26 + 8));
      }

      outlined copy of Data?(v28, v29);
      outlined destroy of TetraPB_TetraInnerMessage(v23);
    }
  }

  return v8;
}

unint64_t lazy protocol witness table accessor for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage()
{
  result = lazy protocol witness table cache variable for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage;
  if (!lazy protocol witness table cache variable for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage)
  {
    type metadata accessor for TetraPB_TetraInnerMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage);
  }

  return result;
}

uint64_t SymmetricRatchet.messageKey(forIndex:discardMessageKey:)@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v24 - v14;
  if (a1 == -1)
  {
    lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
    swift_allocError();
    v19 = 0;
    goto LABEL_16;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v17 = *(v3 + *(result + 48));
  if (v17 < 0xFFFFFFFFFFFF3CB0)
  {
    if (v17 + 50000 < a1)
    {
      lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
      swift_allocError();
      v19 = 1;
LABEL_16:
      *v18 = v19;
      return swift_willThrow();
    }

    if (v17 <= a1)
    {
      SymmetricRatchet.deriveMessageKeysUntil(_:)(a1);
    }

    v20 = *(type metadata accessor for SymmetricRatchet() + 20);
    if (a2)
    {
      specialized Dictionary.removeValue(forKey:)(a1, v15);
      if ((*(v8 + 48))(v15, 1, v7) == 1)
      {
        outlined destroy of TetraSessionStates?(v15, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
LABEL_15:
        lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
        swift_allocError();
        v19 = 3;
        goto LABEL_16;
      }
    }

    else
    {
      v21 = *(v3 + v20);
      if (!*(v21 + 16))
      {
        goto LABEL_15;
      }

      v22 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if ((v23 & 1) == 0)
      {
        goto LABEL_15;
      }

      (*(v8 + 16))(v11, *(v21 + 56) + *(v8 + 72) * v22, v7);
      v15 = v11;
    }

    return (*(v8 + 32))(a3, v15, v7);
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for SymmetricKey();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v8, v13);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for SymmetricKey();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t type metadata accessor for SymmetricRatchet()
{
  result = type metadata singleton initialization cache for SymmetricRatchet;
  if (!type metadata singleton initialization cache for SymmetricRatchet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SymmetricRatchet()
{
  type metadata accessor for (key: SymmetricKey, index: UInt64)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [UInt64 : SymmetricKey]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SymmetricRatchetStep();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (key: SymmetricKey, index: UInt64)()
{
  if (!lazy cache variable for type metadata for (key: SymmetricKey, index: UInt64))
  {
    type metadata accessor for SymmetricKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: SymmetricKey, index: UInt64));
    }
  }
}

unint64_t type metadata accessor for SymmetricRatchetStep()
{
  result = lazy cache variable for type metadata for SymmetricRatchetStep;
  if (!lazy cache variable for type metadata for SymmetricRatchetStep)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SymmetricRatchetStep);
  }

  return result;
}

uint64_t SymmetricRatchet.deriveMessageKeysUntil(_:)(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = &v21 - v12;
  if (a1 == -1 || (v14 = *(v1 + *(v3 + 48)), v14 > a1))
  {
    __break(1u);
  }

  else
  {
    v23 = *(v3 + 48);
    outlined init with copy of (key: SymmetricKey, index: UInt64)(v1, v10);
    v15 = *(v3 + 48);
    v16 = *&v10[v15];
    v17 = type metadata accessor for SymmetricKey();
    v18 = *(v17 - 8);
    v22 = v3;
    v19 = v18;
    (*(v18 + 32))(v7, v10, v17);
    *&v7[v15] = v16;
    specialized Sequence.reduce<A>(_:_:)(v7, v14, a1, v1, v13);
    outlined destroy of TetraSessionStates?(v7, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    v20 = *&v13[*(v22 + 48)];
    result = (*(v19 + 40))(v1, v13, v17);
    *(v1 + v23) = v20;
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a3;
  v90 = type metadata accessor for SymmetricKey();
  v9 = *(v90 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v90);
  v86 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v80 = v67 - v14;
  MEMORY[0x28223BE20](v13);
  v79 = v67 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v16 = *(*(v78 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v78);
  v77 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v76 = v67 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v75 = v67 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v85 = v67 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = v67 - v25;
  outlined init with copy of (key: SymmetricKey, index: UInt64)(a1, a5);
  v27 = type metadata accessor for SymmetricRatchet();
  v28 = *(v27 + 24);
  v84 = *(v27 + 20);
  v72 = (v9 + 8);
  v73 = v28;
  v81 = (v9 + 32);
  v70 = v9;
  v67[2] = v9 + 40;
  v68 = a5;
  v74 = v26;
  v71 = a4;
  while (1)
  {
    v82 = a2;
    outlined init with copy of SymmetricRatchetStep(a4 + v73, v87);
    v29 = v88;
    v30 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v31 = v75;
    outlined init with copy of (key: SymmetricKey, index: UInt64)(a5, v75);
    v33 = v78;
    v32 = v79;
    v34 = v80;
    v35 = (*(v30 + 8))(v79, v80, v31, *(v31 + *(v78 + 48)), v29, v30);
    v83 = v36;
    v37 = v90;
    (*v72)(v31, v90);
    v38 = *v81;
    (*v81)(v31, v32, v37);
    v39 = v76;
    v38(v76, v34, v37);
    v40 = *(v33 + 48);
    v41 = v85;
    v38(v85, v31, v37);
    *(v41 + v40) = v35;
    v42 = *(v33 + 48);
    v43 = v74;
    v44 = v39;
    v45 = v35;
    v38(v74, v44, v37);
    *(v43 + v42) = v83;
    __swift_destroy_boxed_opaque_existential_1(v87);
    v46 = v77;
    outlined init with copy of (key: SymmetricKey, index: UInt64)(v41, v77);
    v38(v86, v46, v37);
    v47 = v84;
    v48 = v71;
    v49 = *(v71 + v84);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v48;
    v52 = *(v48 + v47);
    v87[0] = v52;
    v54 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
    v55 = *(v52 + 16);
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      break;
    }

    v58 = v53;
    if (*(v52 + 24) >= v57)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v61 = v87[0];
        if (v53)
        {
          goto LABEL_9;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v61 = v87[0];
        if (v58)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, isUniquelyReferenced_nonNull_native);
      v59 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_19;
      }

      v54 = v59;
      v61 = v87[0];
      if (v58)
      {
LABEL_9:
        (*(v70 + 40))(v61[7] + *(v70 + 72) * v54, v86, v90);
        goto LABEL_13;
      }
    }

    v61[(v54 >> 6) + 8] |= 1 << v54;
    *(v61[6] + 8 * v54) = v45;
    v38(v61[7] + *(v70 + 72) * v54, v86, v90);
    v62 = v61[2];
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      goto LABEL_18;
    }

    v61[2] = v64;
LABEL_13:
    a4 = v51;
    v65 = v85;
    *(v51 + v84) = v61;
    outlined destroy of TetraSessionStates?(v65, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    a5 = v68;
    outlined destroy of TetraSessionStates?(v68, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    result = outlined init with take of (key: SymmetricKey, index: UInt64)(v43, a5);
    if (v69 == v82)
    {
      return result;
    }

    a2 = v82 + 1;
    if (v82 == -1)
    {
      __break(1u);
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_KyberSecurityLevel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TetraPB_KyberSecurityLevel()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_PrivateKeyBackingStore(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TetraPB_KyberSecurityLevel()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t TetraPB_KyberPrivateKey.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in TetraPB_KyberPrivateKey.decodeMessage<A>(decoder:)();
        break;
      case 2:
        closure #2 in TetraPB_KyberPrivateKey.decodeMessage<A>(decoder:)();
        break;
      case 1:
        v3 = *(type metadata accessor for TetraPB_KyberPrivateKey(0) + 20);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #2 in TetraPB_KyberPrivateKey.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for TetraPB_KyberPrivateKey(0) + 24);
  lazy protocol witness table accessor for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t closure #3 in TetraPB_KyberPrivateKey.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for TetraPB_KyberPrivateKey(0) + 28);
  lazy protocol witness table accessor for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t TetraPB_KyberPrivateKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for TetraPB_KyberPrivateKey);
  if (!v4)
  {
    closure #2 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(v3);
    closure #3 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(v3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for TetraPB_KyberPrivateKey(0);
  v3 = (a1 + *(result + 24));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    lazy protocol witness table accessor for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for TetraPB_KyberPrivateKey(0);
  v3 = (a1 + *(result + 28));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    lazy protocol witness table accessor for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance TetraPB_KyberPrivateKey@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_22B48D7D0;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 256;
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 8) = 256;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance TetraPB_KyberPrivateKey(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey, type metadata accessor for TetraPB_KyberPrivateKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraPB_KyberPrivateKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey, type metadata accessor for TetraPB_KyberPrivateKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_KyberPrivateKey(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey, type metadata accessor for TetraPB_KyberPrivateKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t closure #1 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 20);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    outlined copy of Data._Representation(*v7, *(v7 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v9, v8);
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance TetraPB_TetraPublicPrekey(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey, type metadata accessor for TetraPB_TetraPublicPrekey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraPB_TetraPublicPrekey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey, type metadata accessor for TetraPB_TetraPublicPrekey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_TetraPublicPrekey(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey, type metadata accessor for TetraPB_TetraPublicPrekey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t TetraPB_TetraPublicPrekey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v8 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v6 = *(a4(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v9 = *(a4(0) + 24);
LABEL_3:
      v4 = 0;
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }
}

uint64_t closure #2 in TetraPB_TetraPublicPrekey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 24);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    outlined copy of Data._Representation(*v7, *(v7 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v9, v8);
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance TetraPB_TetraInitiationMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraInitiationMessage and conformance TetraPB_TetraInitiationMessage, type metadata accessor for TetraPB_TetraInitiationMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraPB_TetraInitiationMessage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraInitiationMessage and conformance TetraPB_TetraInitiationMessage, type metadata accessor for TetraPB_TetraInitiationMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_TetraInitiationMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraInitiationMessage and conformance TetraPB_TetraInitiationMessage, type metadata accessor for TetraPB_TetraInitiationMessage);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t TetraPB_TetraMessage.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 5)
    {
      if (result <= 7)
      {
        if (result == 6)
        {
          v1 = *(type metadata accessor for TetraPB_TetraMessage(0) + 40);
          goto LABEL_3;
        }

        v7 = *(type metadata accessor for TetraPB_TetraMessage(0) + 44);
LABEL_22:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else
      {
        switch(result)
        {
          case 8:
            v10 = *(type metadata accessor for TetraPB_TetraMessage(0) + 48);
            goto LABEL_3;
          case 9:
            v12 = *(type metadata accessor for TetraPB_TetraMessage(0) + 52);
            goto LABEL_3;
          case 10:
            v5 = *(type metadata accessor for TetraPB_TetraMessage(0) + 56);
            goto LABEL_22;
        }
      }
    }

    else if (result <= 2)
    {
      if (result == 1)
      {
        v8 = *(type metadata accessor for TetraPB_TetraMessage(0) + 20);
        goto LABEL_22;
      }

      if (result == 2)
      {
        v6 = *(type metadata accessor for TetraPB_TetraMessage(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      if (result == 3)
      {
        v9 = *(type metadata accessor for TetraPB_TetraMessage(0) + 28);
      }

      else if (result == 4)
      {
        v11 = *(type metadata accessor for TetraPB_TetraMessage(0) + 32);
      }

      else
      {
        v4 = *(type metadata accessor for TetraPB_TetraMessage(0) + 36);
      }

LABEL_3:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }
}

uint64_t TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3);
  if (!v4)
  {
    closure #2 in TetraPB_TetraPublicPrekey.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for TetraPB_TetraMessage);
    closure #3 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for TetraPB_TetraMessage);
    closure #4 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3);
    closure #5 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3);
    closure #6 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3);
    closure #7 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3);
    closure #8 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3);
    closure #9 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3);
    closure #10 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for TetraPB_TetraMessage(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for TetraPB_TetraMessage(0);
  v3 = a1 + *(result + 32);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

uint64_t closure #5 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for TetraPB_TetraMessage(0);
  v3 = a1 + *(result + 36);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

uint64_t closure #6 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for TetraPB_TetraMessage(0);
  v3 = a1 + *(result + 40);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

uint64_t closure #7 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for TetraPB_TetraMessage(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for TetraPB_TetraMessage(0);
  v3 = a1 + *(result + 48);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

uint64_t closure #9 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for TetraPB_TetraMessage(0);
  v3 = a1 + *(result + 52);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

uint64_t closure #10 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for TetraPB_TetraMessage(0);
  v3 = (a1 + *(result + 56));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance TetraPB_TetraMessage@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  result = 0.0;
  *(a2 + v4) = xmmword_22B48D7D0;
  v7 = a1[8];
  *(a2 + a1[7]) = xmmword_22B48D7D0;
  *(a2 + v7) = xmmword_22B48D7D0;
  v8 = a1[10];
  *(a2 + a1[9]) = xmmword_22B48D7D0;
  *(a2 + v8) = xmmword_22B48D7D0;
  v9 = a1[12];
  v10 = a2 + a1[11];
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a2 + v9) = xmmword_22B48D7D0;
  v11 = a1[14];
  *(a2 + a1[13]) = xmmword_22B48D7D0;
  v12 = a2 + v11;
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance TetraPB_TetraMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage, type metadata accessor for TetraPB_TetraMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraPB_TetraMessage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage, type metadata accessor for TetraPB_TetraMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_TetraMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage, type metadata accessor for TetraPB_TetraMessage);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t TetraPB_TetraPublicPrekey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  result = closure #1 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(v5, a1, a2, a3, a4);
  if (!v6)
  {
    closure #2 in TetraPB_TetraPublicPrekey.traverse<A>(visitor:)(v5, a1, a2, a3, a5);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance TetraPB_TetraInnerMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage, type metadata accessor for TetraPB_TetraInnerMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraPB_TetraInnerMessage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage, type metadata accessor for TetraPB_TetraInnerMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_TetraInnerMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage, type metadata accessor for TetraPB_TetraInnerMessage);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t TetraPB_PaddyKeyDistributionMessage.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for TetraPB_PaddyKeyDistributionMessage(0) + 28);
LABEL_10:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      case 2:
        v1 = *(type metadata accessor for TetraPB_PaddyKeyDistributionMessage(0) + 24);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        break;
      case 1:
        v4 = *(type metadata accessor for TetraPB_PaddyKeyDistributionMessage(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t TetraPB_PaddyKeyDistributionMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for TetraPB_PaddyKeyDistributionMessage);
  if (!v4)
  {
    closure #2 in TetraPB_PaddyKeyDistributionMessage.traverse<A>(visitor:)(v3);
    closure #3 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for TetraPB_PaddyKeyDistributionMessage);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in TetraPB_PaddyKeyDistributionMessage.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for TetraPB_PaddyKeyDistributionMessage(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 28);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    outlined copy of Data._Representation(*v7, *(v7 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v9, v8);
  }

  return result;
}

double protocol witness for Message.init() in conformance TetraPB_PaddyKeyDistributionMessage@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_22B48D7D0;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + a1[7]) = xmmword_22B48D7D0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance TetraPB_PaddyKeyDistributionMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage, type metadata accessor for TetraPB_PaddyKeyDistributionMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraPB_PaddyKeyDistributionMessage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage, type metadata accessor for TetraPB_PaddyKeyDistributionMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_PaddyKeyDistributionMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage, type metadata accessor for TetraPB_PaddyKeyDistributionMessage);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore()
{
  result = lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore;
  if (!lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore;
  if (!lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore;
  if (!lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore;
  if (!lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel()
{
  result = lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel;
  if (!lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel;
  if (!lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel;
  if (!lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel;
  if (!lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel);
  }

  return result;
}

uint64_t specialized static TetraPB_KyberPrivateKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraPB_KyberPrivateKey(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      goto LABEL_8;
    }

LABEL_5:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    outlined consume of Data?(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  v12 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 9);
  v16 = (a2 + v13);
  v17 = *(v16 + 9);
  if (v15)
  {
    if ((*(v16 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v16 + 9))
    {
      return 0;
    }

    v23 = *v14;
    v24 = *(v14 + 8);
    v25 = *v16;
    v26 = *(v16 + 8);
    v27 = v23 != 0;
    if ((v24 & 1) == 0)
    {
      v27 = v23;
    }

    if (v26)
    {
      if (v25)
      {
        if (v27 != 1)
        {
          return 0;
        }
      }

      else if (v27)
      {
        return 0;
      }
    }

    else if (v27 != v25)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 9);
  v21 = (a2 + v18);
  v22 = *(v21 + 9);
  if ((v20 & 1) == 0)
  {
    if ((*(v21 + 9) & 1) == 0)
    {
      v28 = *v19;
      v29 = *(v19 + 8);
      v30 = *v21;
      v31 = *(v21 + 8);
      v32 = v28 != 0;
      if ((v29 & 1) == 0)
      {
        v32 = v28;
      }

      if (v31)
      {
        if (v30)
        {
          if (v32 == 1)
          {
            goto LABEL_12;
          }
        }

        else if (!v32)
        {
          goto LABEL_12;
        }
      }

      else if (v32 == v30)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  if ((*(v21 + 9) & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static TetraPB_TetraMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraPB_TetraMessage(0);
  v5 = v4;
  v6 = *(v4 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(v4 + 24);
  v13 = *(a1 + v11);
  v12 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v16 = *v14;
  v15 = v14[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    v17 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = v5[7];
  v13 = *(a1 + v18);
  v12 = *(a1 + v18 + 8);
  v19 = (a2 + v18);
  v16 = *v19;
  v15 = v19[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    v20 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = v5[8];
  v13 = *(a1 + v21);
  v12 = *(a1 + v21 + 8);
  v22 = (a2 + v21);
  v16 = *v22;
  v15 = v22[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    v23 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = v5[9];
  v13 = *(a1 + v24);
  v12 = *(a1 + v24 + 8);
  v25 = (a2 + v24);
  v16 = *v25;
  v15 = v25[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    v26 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  v27 = v5[10];
  v13 = *(a1 + v27);
  v12 = *(a1 + v27 + 8);
  v28 = (a2 + v27);
  v16 = *v28;
  v15 = v28[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    v30 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v31 = v5[11];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  v36 = v5[12];
  v13 = *(a1 + v36);
  v12 = *(a1 + v36 + 8);
  v37 = (a2 + v36);
  v16 = *v37;
  v15 = v37[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    v38 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  v39 = v5[13];
  v13 = *(a1 + v39);
  v12 = *(a1 + v39 + 8);
  v40 = (a2 + v39);
  v16 = *v40;
  v15 = v40[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 == 15)
    {
      outlined copy of Data?(v13, v12);
      outlined copy of Data?(v16, v15);
      outlined consume of Data?(v13, v12);
      goto LABEL_50;
    }

LABEL_31:
    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    outlined consume of Data?(v16, v15);
    return 0;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_31;
  }

  outlined copy of Data?(v13, v12);
  outlined copy of Data?(v16, v15);
  v41 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
  outlined consume of Data?(v16, v15);
  outlined consume of Data?(v13, v12);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v42 = v5[14];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 4);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 4);
  if (v44)
  {
    if (v46)
    {
      goto LABEL_56;
    }

    return 0;
  }

  if (*v43 != *v45)
  {
    LOBYTE(v46) = 1;
  }

  if (v46)
  {
    return 0;
  }

LABEL_56:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static TetraPB_TetraInnerMessage.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  if (v7 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      outlined copy of Data?(v8, v7);
      outlined copy of Data?(v11, v10);
      outlined consume of Data?(v8, v7);
      goto LABEL_7;
    }

LABEL_5:
    outlined copy of Data?(v8, v7);
    outlined copy of Data?(v11, v10);
    outlined consume of Data?(v8, v7);
    v12 = v11;
    v13 = v10;
LABEL_12:
    outlined consume of Data?(v12, v13);
    return 0;
  }

  if (v10 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v8, v7);
  outlined copy of Data?(v11, v10);
  v14 = specialized static Data.== infix(_:_:)(v8, v7, v11, v10);
  outlined consume of Data?(v11, v10);
  outlined consume of Data?(v8, v7);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v15 = *(v5 + 24);
  v17 = *(a1 + v15);
  v16 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v20 = *v18;
  v19 = v18[1];
  if (v16 >> 60 != 15)
  {
    if (v19 >> 60 == 15)
    {
      goto LABEL_11;
    }

    outlined copy of Data?(v17, v16);
    outlined copy of Data?(v20, v19);
    v22 = specialized static Data.== infix(_:_:)(v17, v16, v20, v19);
    outlined consume of Data?(v20, v19);
    outlined consume of Data?(v17, v16);
    if (v22)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v19 >> 60 != 15)
  {
LABEL_11:
    outlined copy of Data?(v17, v16);
    outlined copy of Data?(v20, v19);
    outlined consume of Data?(v17, v16);
    v12 = v20;
    v13 = v19;
    goto LABEL_12;
  }

  outlined copy of Data?(v17, v16);
  outlined copy of Data?(v20, v19);
  outlined consume of Data?(v17, v16);
LABEL_15:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static TetraPB_PaddyKeyDistributionMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraPB_PaddyKeyDistributionMessage(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      goto LABEL_8;
    }

LABEL_5:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    v11 = v10;
    v12 = v9;
LABEL_6:
    outlined consume of Data?(v11, v12);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  v14 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v15 = v4[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[7];
  v22 = *(a1 + v20);
  v21 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v25 = *v23;
  v24 = v23[1];
  if (v21 >> 60 != 15)
  {
    if (v24 >> 60 == 15)
    {
      goto LABEL_19;
    }

    outlined copy of Data?(v22, v21);
    outlined copy of Data?(v25, v24);
    v26 = specialized static Data.== infix(_:_:)(v22, v21, v25, v24);
    outlined consume of Data?(v25, v24);
    outlined consume of Data?(v22, v21);
    if (v26)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v24 >> 60 != 15)
  {
LABEL_19:
    outlined copy of Data?(v22, v21);
    outlined copy of Data?(v25, v24);
    outlined consume of Data?(v22, v21);
    v11 = v25;
    v12 = v24;
    goto LABEL_6;
  }

  outlined copy of Data?(v22, v21);
  outlined copy of Data?(v25, v24);
  outlined consume of Data?(v22, v21);
LABEL_21:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void type metadata completion function for TetraPB_KyberPrivateKey()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for TetraPB_KyberSecurityLevel?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Data?(319, &lazy cache variable for type metadata for TetraPB_PrivateKeyBackingStore?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for TetraPB_TetraMessage()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for UInt32?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for TetraPB_PaddyKeyDistributionMessage()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for UInt32?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t lazy protocol witness table accessor for type [TetraPB_PrivateKeyBackingStore] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t one-time initialization function for paddySenderKeyIDPrefix()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000001ELL, 0x800000022B496040);
  paddySenderKeyIDPrefix = result;
  *algn_280F9FE68 = v1;
  return result;
}

uint64_t one-time initialization function for paddyRatchetMsgKeyPrefix()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000002ELL, 0x800000022B496010);
  paddyRatchetMsgKeyPrefix = result;
  unk_27D8C2000 = v1;
  return result;
}

uint64_t one-time initialization function for paddyRatchetSenderKeyPrefix()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000002DLL, 0x800000022B495FE0);
  paddyRatchetSenderKeyPrefix = result;
  unk_27D8C2010 = v1;
  return result;
}

uint64_t protocol witness for SymmetricRatchetStep.ratchet(_:) in conformance PaddyHKDFRatchet(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a2;
  v89 = *MEMORY[0x277D85DE8];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV_s6UInt64VtMd, _s9CryptoKit12SymmetricKeyV_s6UInt64VtMR);
  v8 = *(*(v83 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v83);
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v71 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v78 = v71 - v16;
  MEMORY[0x28223BE20](v15);
  v82 = v71 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v71 - v23;
  v25 = *v4;
  v80 = v4[1];
  v81 = v25;
  v26 = type metadata accessor for SymmetricKey();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v24, a3, v26);
  *&v24[*(v18 + 48)] = a4;
  v79 = a4;
  if (a4 == -1)
  {
    __break(1u);
  }

  else
  {
    v76 = v14;
    outlined init with copy of (key: SymmetricKey, index: UInt64)(v24, v22);
    v18 = *&v22[*(v18 + 48)];
    (*(v27 + 8))(v22, v26);
    if (one-time initialization token for paddyRatchetMsgKeyPrefix == -1)
    {
      if (!HIDWORD(v18))
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  swift_once();
  if (!HIDWORD(v18))
  {
LABEL_4:
    v72 = v27;
    v73 = v11;
    v74 = a1;
    v29 = paddyRatchetMsgKeyPrefix;
    v28 = unk_27D8C2000;
    *&__src = v18;
    v30 = specialized Data.InlineData.init(_:)(&__src, &__src + 4);
    *&v87 = v29;
    *(&v87 + 1) = v28;
    v31 = MEMORY[0x277CC9318];
    v32 = MEMORY[0x277CC9300];
    v85 = MEMORY[0x277CC9318];
    v86 = MEMORY[0x277CC9300];
    *&__src = v30;
    *(&__src + 1) = v33 & 0xFFFFFFFFFFFFFFLL;
    v34 = __swift_project_boxed_opaque_existential_1(&__src, MEMORY[0x277CC9318]);
    v75 = v18;
    v35 = *v34;
    v36 = v34[1];
    outlined copy of Data._Representation(v29, v28);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v35, v36);
    __swift_destroy_boxed_opaque_existential_1(&__src);
    v37 = v87;
    v88 = v87;
    v85 = v31;
    v86 = v32;
    v38 = v80;
    v39 = v81;
    *&__src = v81;
    *(&__src + 1) = v80;
    v40 = __swift_project_boxed_opaque_existential_1(&__src, v31);
    v41 = *v40;
    v42 = v40[1];
    outlined copy of Data._Representation(v39, v38);
    outlined copy of Data._Representation(v39, v38);
    outlined copy of Data._Representation(v37, *(&v37 + 1));
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v41, v42);
    v71[2] = 0;
    outlined consume of Data._Representation(v37, *(&v37 + 1));
    __swift_destroy_boxed_opaque_existential_1(&__src);
    v11 = *(&v88 + 1);
    a1 = v88;
    v43 = *(v83 + 48);
    __src = v88;
    outlined copy of Data._Representation(v88, *(&v88 + 1));
    a4 = type metadata accessor for SHA256();
    v44 = _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
    v45 = _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330]);
    v71[1] = lazy protocol witness table accessor for type Data and conformance Data();
    v46 = v82;
    v71[4] = v44;
    v71[3] = v45;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(__src, *(&__src + 1));
    *(v46 + v43) = v75;
    if (one-time initialization token for paddyRatchetSenderKeyPrefix == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  swift_once();
LABEL_5:
  if (v79 > 0xFFFFFFFE)
  {
    __break(1u);
  }

  v75 = a4;
  v47 = v79 + 1;
  v48 = paddyRatchetSenderKeyPrefix;
  v49 = unk_27D8C2010;
  *&__src = v79 + 1;
  v50 = specialized Data.InlineData.init(_:)(&__src, &__src + 4);
  *&v87 = v48;
  *(&v87 + 1) = v49;
  v51 = MEMORY[0x277CC9318];
  v85 = MEMORY[0x277CC9318];
  v79 = a1;
  v52 = MEMORY[0x277CC9300];
  v86 = MEMORY[0x277CC9300];
  *&__src = v50;
  *(&__src + 1) = v53 & 0xFFFFFFFFFFFFFFLL;
  v54 = __swift_project_boxed_opaque_existential_1(&__src, MEMORY[0x277CC9318]);
  v71[0] = v11;
  v55 = *v54;
  v56 = v54[1];
  outlined copy of Data._Representation(v48, v49);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(&__src);
  v57 = v87;
  v88 = v87;
  v85 = v51;
  v86 = v52;
  *&__src = v81;
  *(&__src + 1) = v80;
  v58 = __swift_project_boxed_opaque_existential_1(&__src, v51);
  v59 = *v58;
  v60 = v58[1];
  outlined copy of Data._Representation(v57, *(&v57 + 1));
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v59, v60);
  outlined consume of Data._Representation(v57, *(&v57 + 1));
  __swift_destroy_boxed_opaque_existential_1(&__src);
  v61 = v83;
  v62 = *(v83 + 48);
  __src = v88;
  v63 = v78;
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
  outlined consume of Data._Representation(v79, v71[0]);
  outlined destroy of (key: SymmetricKey, index: UInt64)(v24);
  outlined consume of Data?(__src, *(&__src + 1));
  *(v63 + v62) = v47;
  v64 = v76;
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v82, v76, &_s9CryptoKit12SymmetricKeyV_s6UInt64VtMd, _s9CryptoKit12SymmetricKeyV_s6UInt64VtMR);
  v65 = *(v64 + *(v61 + 48));
  v66 = *(v72 + 32);
  v66(v74, v64, v26);
  v67 = v73;
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v63, v73, &_s9CryptoKit12SymmetricKeyV_s6UInt64VtMd, _s9CryptoKit12SymmetricKeyV_s6UInt64VtMR);
  v68 = *(v67 + *(v61 + 48));
  v66(v77, v67, v26);
  v69 = *MEMORY[0x277D85DE8];
  return v65;
}

uint64_t closure #1 in deriveSenderKeyID(key:info:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = specialized Data.InlineData.init(_:)(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = specialized Data.LargeSlice.init(_:)(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = specialized Data.InlineSlice.init(_:)(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t PaddyOutgoingSymmetricRatchet.init(conversationDST:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v38 = a3;
  v4 = type metadata accessor for SymmetricRatchet();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = type metadata accessor for SymmetricKeySize();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for SymmetricKey();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v39 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  static SymmetricKeySize.bits256.getter();
  v23 = a1;
  v24 = v43;
  SymmetricKey.init(size:)();
  (*(v14 + 16))(v20, v22, v13);
  v41 = &type metadata for PaddyHKDFRatchet;
  v42 = &protocol witness table for PaddyHKDFRatchet;
  *&v40 = v23;
  *(&v40 + 1) = v24;
  *&v8[*(v4 + 20)] = MEMORY[0x277D84F98];
  outlined copy of Data._Representation(v23, v24);
  if (SymmetricKey.bitCount.getter() >= 256)
  {
    v37 = v23;
    outlined init with take of ContiguousBytes(&v40, &v8[*(v4 + 24)]);
    (*(v14 + 32))(v8, v20, v13);
    *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)] = 0;
    outlined init with take of SymmetricRatchet(v8, v10);
    v30 = v38;
    outlined init with take of SymmetricRatchet(v10, v38);
    if (one-time initialization token for paddySenderKeyIDPrefix != -1)
    {
      swift_once();
    }

    v40 = paddySenderKeyIDPrefix;
    outlined copy of Data._Representation(paddySenderKeyIDPrefix, *(&paddySenderKeyIDPrefix + 1));
    type metadata accessor for SHA256();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330]);
    lazy protocol witness table accessor for type Data and conformance Data();
    v31 = v39;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(v40, *(&v40 + 1));
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v32 = *(v14 + 8);
    v32(v31, v13);
    v32(v22, v13);
    v33 = v40;
    result = type metadata accessor for PaddyOutgoingSymmetricRatchet(0);
    *(v30 + *(result + 20)) = v33;
    v34 = (v30 + *(result + 24));
    v35 = v43;
    *v34 = v37;
    v34[1] = v35;
  }

  else
  {
    v25 = v23;
    v26 = type metadata accessor for CryptoKitError();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277CC51D0], v26);
    swift_willThrow();
    outlined consume of Data._Representation(v25, v24);
    v28 = *(v14 + 8);
    v28(v20, v13);
    v28(v22, v13);
    return __swift_destroy_boxed_opaque_existential_1(&v40);
  }

  return result;
}

uint64_t outlined init with take of SymmetricRatchet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymmetricRatchet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PaddyOutgoingSymmetricRatchet.exportSenderKey()(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  outlined init with copy of (key: SymmetricKey, index: UInt64)(v1, &v11 - v6);
  v8 = *&v7[*(v4 + 56)];
  v9 = type metadata accessor for SymmetricKey();
  (*(*(v9 - 8) + 32))(a1, v7, v9);
  return v8;
}

uint64_t PaddyOutgoingSymmetricRatchet.seal(message:authenticatedData:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v28 = a4;
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v6 = type metadata accessor for SymmetricKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v24 - v17;
  v19 = *(v4 + *(v16 + 48));
  if (v19 == -1)
  {
LABEL_6:
    lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  SymmetricRatchet.messageKey(forIndex:discardMessageKey:)(v19, 1, v10);
  if (!v5)
  {
    v20 = *(v11 + 48);
    (*(v7 + 32))(v18, v10, v6);
    *&v18[v20] = v19;
    v21 = static PaddySymmetricLayer.seal(_:authenticatedData:using:)(v25, v26, v27, v28);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v18, v15, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    if (!HIDWORD(*&v15[*(v11 + 48)]))
    {
      (*(v7 + 8))(v15, v6);
      return v21;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t PaddyIncomingSymmetricRatchet.init(senderKey:conversationDST:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for SymmetricRatchet();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  (*(v8 + 16))(v13, a1, v7);
  v34 = &type metadata for PaddyHKDFRatchet;
  v35 = &protocol witness table for PaddyHKDFRatchet;
  *&v33 = a2;
  *(&v33 + 1) = a3;
  *&v18[*(v14 + 20)] = MEMORY[0x277D84F98];
  outlined copy of Data._Representation(a2, a3);
  if (SymmetricKey.bitCount.getter() >= 256)
  {
    v31 = a3;
    outlined init with take of ContiguousBytes(&v33, &v18[*(v14 + 24)]);
    (*(v8 + 32))(v18, v13, v7);
    *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)] = 0;
    outlined init with take of SymmetricRatchet(v18, v20);
    outlined init with take of SymmetricRatchet(v20, v36);
    if (one-time initialization token for paddySenderKeyIDPrefix != -1)
    {
      swift_once();
    }

    v33 = paddySenderKeyIDPrefix;
    outlined copy of Data._Representation(paddySenderKeyIDPrefix, *(&paddySenderKeyIDPrefix + 1));
    type metadata accessor for SHA256();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330]);
    lazy protocol witness table accessor for type Data and conformance Data();
    v25 = v32;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(v33, *(&v33 + 1));
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v26 = *(v8 + 8);
    v26(a1, v7);
    v26(v25, v7);
    v27 = v33;
    result = type metadata accessor for PaddyIncomingSymmetricRatchet(0);
    v28 = v36;
    *(v36 + *(result + 20)) = v27;
    v29 = (v28 + *(result + 24));
    v30 = v31;
    *v29 = a2;
    v29[1] = v30;
  }

  else
  {
    v21 = type metadata accessor for CryptoKitError();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CC51D0], v21);
    swift_willThrow();
    outlined consume of Data._Representation(a2, a3);
    v23 = *(v8 + 8);
    v23(a1, v7);
    v23(v13, v7);
    return __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  return result;
}

uint64_t PaddyIncomingSymmetricRatchet.init(senderKey:index:senderKeyID:conversationDST:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a3;
  v38 = a4;
  v32 = a2;
  v33 = a7;
  v10 = type metadata accessor for SymmetricKey();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for SymmetricRatchet();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v31[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v31[-v20];
  (*(v11 + 16))(v14, a1, v10);
  v36 = &type metadata for PaddyHKDFRatchet;
  v37 = &protocol witness table for PaddyHKDFRatchet;
  *&v35 = a5;
  *(&v35 + 1) = a6;
  *&v19[*(v15 + 20)] = MEMORY[0x277D84F98];
  outlined copy of Data._Representation(a5, a6);
  if (SymmetricKey.bitCount.getter() >= 256)
  {
    (*(v11 + 8))(a1, v10);
    outlined init with take of ContiguousBytes(&v35, &v19[*(v15 + 24)]);
    v26 = v32;
    (*(v11 + 32))(v19, v14, v10);
    *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)] = v26;
    outlined init with take of SymmetricRatchet(v19, v21);
    v27 = v33;
    outlined init with take of SymmetricRatchet(v21, v33);
    result = type metadata accessor for PaddyIncomingSymmetricRatchet(0);
    v28 = (v27 + *(result + 24));
    *v28 = a5;
    v28[1] = a6;
    v29 = (v27 + *(result + 20));
    v30 = v38;
    *v29 = v34;
    v29[1] = v30;
  }

  else
  {
    v22 = type metadata accessor for CryptoKitError();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8]);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277CC51D0], v22);
    swift_willThrow();
    outlined consume of Data._Representation(v34, v38);
    outlined consume of Data._Representation(a5, a6);
    v24 = *(v11 + 8);
    v24(a1, v10);
    v24(v14, v10);
    return __swift_destroy_boxed_opaque_existential_1(&v35);
  }

  return result;
}

uint64_t PaddyOutgoingSymmetricRatchet.init(data:conversationDST:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v56 = a5;
  v60 = a6;
  v11 = type metadata accessor for SymmetricRatchet();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BinaryDecodingOptions();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = type metadata accessor for MPPB_LiteRatchet();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type MPPB_LiteRatchet and conformance MPPB_LiteRatchet, type metadata accessor for MPPB_LiteRatchet);
  Message.init(serializedData:extensions:partial:options:)();
  if (v6)
  {
    outlined consume of Data._Representation(a3, a4);
    return outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    v53 = v14;
    v54 = a2;
    v22 = &v20[v17[7]];
    v23 = v22[1];
    if (v23 >> 60 == 15)
    {
      v24 = 0;
    }

    else
    {
      v24 = *v22;
    }

    if (v23 >> 60 == 15)
    {
      v25 = 0xC000000000000000;
    }

    else
    {
      v25 = v22[1];
    }

    outlined copy of Data?(*v22, v23);
    *&v55 = a3;
    *(&v55 + 1) = a4;
    v26 = specialized static Data.== infix(_:_:)(a3, a4, v24, v25);
    outlined consume of Data._Representation(v24, v25);
    if (v26)
    {
      v27 = &v20[v17[6]];
      v28 = *v27;
      v29 = v27[1];
      v51 = v29;
      v52 = v28;
      if (v29 >> 60 == 15)
      {
        v30 = 0;
      }

      else
      {
        v30 = v28;
      }

      if (v29 >> 60 == 15)
      {
        v31 = 0xC000000000000000;
      }

      else
      {
        v31 = v29;
      }

      v32 = v56(0);
      v33 = v60;
      v34 = (v60 + *(v32 + 20));
      *v34 = v30;
      v34[1] = v31;
      v49[3] = v34;
      v35 = *v22;
      v36 = v22[1];
      if (v36 >> 60 == 15)
      {
        v37 = 0;
      }

      else
      {
        v37 = *v22;
      }

      v38 = *v22;
      if (v36 >> 60 == 15)
      {
        v39 = 0xC000000000000000;
      }

      else
      {
        v39 = v36;
      }

      v40 = (v33 + *(v32 + 24));
      v49[1] = v39;
      v49[2] = v37;
      *v40 = v37;
      v40[1] = v39;
      v41 = &v20[v17[5]];
      v42 = *v41;
      v43 = v41[1];
      if (v43 >> 60 == 15)
      {
        v44 = 0;
      }

      else
      {
        v44 = *v41;
      }

      if (v43 >> 60 == 15)
      {
        v45 = 0xC000000000000000;
      }

      else
      {
        v45 = v41[1];
      }

      v50 = v45;
      *(&v58 + 1) = &type metadata for PaddyHKDFRatchet;
      v59 = &protocol witness table for PaddyHKDFRatchet;
      v46 = v55;
      v56 = v44;
      v57 = v55;
      outlined copy of Data?(v52, v51);
      outlined copy of Data?(v38, v36);
      outlined copy of Data?(v42, v43);
      outlined copy of Data._Representation(v46, *(&v46 + 1));
      v47 = v53;
      SymmetricRatchet.init(data:step:)(v56, v50, &v57, v53);
      outlined destroy of MPPB_LiteRatchet(v20);
      outlined consume of Data._Representation(v46, *(&v46 + 1));
      outlined consume of Data._Representation(a1, v54);
      return outlined init with take of SymmetricRatchet(v47, v60);
    }

    else
    {
      lazy protocol witness table accessor for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors();
      swift_allocError();
      *v48 = 1;
      swift_willThrow();
      outlined consume of Data._Representation(v55, *(&v55 + 1));
      outlined consume of Data._Representation(a1, v54);
      return outlined destroy of MPPB_LiteRatchet(v20);
    }
  }
}

uint64_t PaddyOutgoingSymmetricRatchet.serializedData()(uint64_t (*a1)(void), uint64_t a2)
{
  v27 = a2;
  v4 = type metadata accessor for MPPB_LiteRatchet();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v8 = &v7[v4[5]];
  *v8 = xmmword_22B48D7D0;
  v9 = &v7[v4[6]];
  *v9 = xmmword_22B48D7D0;
  v10 = &v7[v4[7]];
  *v10 = xmmword_22B48D7D0;
  v11 = SymmetricRatchet.serializedData()();
  v13 = v12;
  outlined consume of Data?(*v8, *(v8 + 1));
  *v8 = v11;
  *(v8 + 1) = v13;
  v14 = a1(0);
  v15 = (v2 + *(v14 + 20));
  v16 = *v15;
  v17 = v15[1];
  v18 = *v9;
  v19 = *(v9 + 1);
  outlined copy of Data._Representation(*v15, v17);
  outlined consume of Data?(v18, v19);
  *v9 = v16;
  *(v9 + 1) = v17;
  v20 = (v2 + *(v14 + 24));
  v21 = *v20;
  v22 = v20[1];
  v23 = *v10;
  v24 = *(v10 + 1);
  outlined copy of Data._Representation(*v20, v22);
  outlined consume of Data?(v23, v24);
  *v10 = v21;
  *(v10 + 1) = v22;
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type MPPB_LiteRatchet and conformance MPPB_LiteRatchet, type metadata accessor for MPPB_LiteRatchet);
  v25 = Message.serializedData(partial:)();
  outlined destroy of MPPB_LiteRatchet(v7);
  return v25;
}

uint64_t PaddyIncomingSymmetricRatchet.open(_:authenticatedData:index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v18 = a4;
  v11 = type metadata accessor for SymmetricKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  SymmetricRatchet.messageKey(forIndex:discardMessageKey:)(a5, 1, v15);
  if (!v6)
  {
    v5 = static PaddySymmetricLayer.open(_:authenticatedData:using:)(a1, a2, a3, v18);
    (*(v12 + 8))(v15, v11);
  }

  return v5;
}

uint64_t PaddyOutgoingSymmetricRatchet.ratchetSenderKeyID()(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  v3 = *v2;
  outlined copy of Data._Representation(*v2, *(v2 + 8));
  return v3;
}

unint64_t lazy protocol witness table accessor for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors()
{
  result = lazy protocol witness table cache variable for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors;
  if (!lazy protocol witness table cache variable for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors;
  if (!lazy protocol witness table cache variable for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors);
  }

  return result;
}

uint64_t outlined destroy of MPPB_LiteRatchet(uint64_t a1)
{
  v2 = type metadata accessor for MPPB_LiteRatchet();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymmetricRatchet();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SymmetricRatchet();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t type metadata completion function for PaddyOutgoingSymmetricRatchet()
{
  result = type metadata accessor for SymmetricRatchet();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PaddyHKDFRatchet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PaddyHKDFRatchet(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t one-time initialization function for tetraDHRatchetStepKDFString()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000001DLL, 0x800000022B4960C0);
  tetraDHRatchetStepKDFString = result;
  *algn_280F9FE28 = v1;
  return result;
}

uint64_t one-time initialization function for tetraSymmetricKeyRatchetStepKDFStringBase()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000001CLL, 0x800000022B496080);
  tetraSymmetricKeyRatchetStepKDFStringBase = result;
  *algn_280F9FDE8 = v1;
  return result;
}

uint64_t one-time initialization function for tetraSymmetricKeyRatchetStepChainKeyDerivationLabel()
{
  if (one-time initialization token for tetraSymmetricKeyRatchetStepKDFStringBase != -1)
  {
    swift_once();
  }

  v0 = tetraSymmetricKeyRatchetStepKDFStringBase;
  v1 = *algn_280F9FDE8;
  outlined copy of Data._Representation(tetraSymmetricKeyRatchetStepKDFStringBase, *algn_280F9FDE8);
  v2 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD000000000000012, 0x800000022B4960A0);
  v4 = v3;
  tetraSymmetricKeyRatchetStepChainKeyDerivationLabel = v0;
  *algn_280F9FF38 = v1;
  v9[3] = MEMORY[0x277CC9318];
  v9[4] = MEMORY[0x277CC9300];
  v9[0] = v2;
  v9[1] = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v9, MEMORY[0x277CC9318]);
  v6 = *v5;
  v7 = v5[1];
  outlined copy of Data._Representation(v0, v1);
  outlined copy of Data._Representation(v2, v4);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v6, v7);
  outlined consume of Data._Representation(v2, v4);
  outlined consume of Data._Representation(v0, v1);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t one-time initialization function for tetraSymmetricKeyRatchetStepMessageKeyDerivationLabel()
{
  if (one-time initialization token for tetraSymmetricKeyRatchetStepKDFStringBase != -1)
  {
    swift_once();
  }

  v0 = tetraSymmetricKeyRatchetStepKDFStringBase;
  v1 = *algn_280F9FDE8;
  outlined copy of Data._Representation(tetraSymmetricKeyRatchetStepKDFStringBase, *algn_280F9FDE8);
  v2 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD000000000000014, 0x800000022B496060);
  v4 = v3;
  tetraSymmetricKeyRatchetStepMessageKeyDerivationLabel = v0;
  *algn_280F9FF48 = v1;
  v9[3] = MEMORY[0x277CC9318];
  v9[4] = MEMORY[0x277CC9300];
  v9[0] = v2;
  v9[1] = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v9, MEMORY[0x277CC9318]);
  v6 = *v5;
  v7 = v5[1];
  outlined copy of Data._Representation(v0, v1);
  outlined copy of Data._Representation(v2, v4);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v6, v7);
  outlined consume of Data._Representation(v2, v4);
  outlined consume of Data._Representation(v0, v1);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t one-time initialization function for tetraSymmetricKeyRatchetStep()
{
  if (one-time initialization token for tetraSymmetricKeyRatchetStepChainKeyDerivationLabel != -1)
  {
    swift_once();
  }

  v0 = tetraSymmetricKeyRatchetStepChainKeyDerivationLabel;
  v1 = *algn_280F9FF38;
  outlined copy of Data._Representation(tetraSymmetricKeyRatchetStepChainKeyDerivationLabel, *algn_280F9FF38);
  if (one-time initialization token for tetraSymmetricKeyRatchetStepMessageKeyDerivationLabel != -1)
  {
    swift_once();
  }

  v2 = tetraSymmetricKeyRatchetStepMessageKeyDerivationLabel;
  v3 = *algn_280F9FF48;
  tetraSymmetricKeyRatchetStep = v0;
  *algn_280F9FDF8 = v1;
  qword_280F9FE00 = tetraSymmetricKeyRatchetStepMessageKeyDerivationLabel;
  unk_280F9FE08 = *algn_280F9FF48;
  qword_280F9FE10 = 32;
  byte_280F9FE18 = 0;

  return outlined copy of Data._Representation(v2, v3);
}

id TetraVersions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraVersions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id Kyber1024ObjCPrivateKey.init(protoBufData:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v32 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TetraPB_KyberPrivateKey(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey();
  Message.init(serializedData:extensions:partial:options:)();
  if (v3)
  {
    outlined consume of Data._Representation(a1, a2);
LABEL_8:
    swift_getObjectType();
    v18 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v19 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    goto LABEL_9;
  }

  v13 = &v12[v9[5]];
  v14 = *(v13 + 1);
  if (v14 >> 60 == 15)
  {
    lazy protocol witness table accessor for type TetraKeyStorageError and conformance TetraKeyStorageError();
    swift_allocError();
    *v15 = 0;
LABEL_7:
    swift_willThrow();
    outlined consume of Data._Representation(a1, a2);
    outlined destroy of SecureEnclave.Kyber1024.PrivateKey(v12, type metadata accessor for TetraPB_KyberPrivateKey);
    goto LABEL_8;
  }

  v16 = &v12[v9[6]];
  if (v16[9])
  {
LABEL_6:
    lazy protocol witness table accessor for type TetraKeyStorageError and conformance TetraKeyStorageError();
    swift_allocError();
    *v17 = 1;
    goto LABEL_7;
  }

  v22 = *v16;
  if (v16[8])
  {
    if (!v22)
    {
      goto LABEL_6;
    }
  }

  else if (v22 != 1)
  {
    goto LABEL_6;
  }

  v23 = &v12[v9[7]];
  if (v23[9])
  {
    goto LABEL_15;
  }

  v27 = *v23;
  if (v23[8])
  {
    if (!v27)
    {
      goto LABEL_15;
    }
  }

  else if (v27 != 1)
  {
LABEL_15:
    v24 = *v13;
    outlined copy of Data?(*v13, *(v13 + 1));
    v25.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v24, v14);
    *&v30[0] = 0;
    v26 = [v2 initWithApKeyBytes:v25.super.isa error:v30];
    goto LABEL_21;
  }

  v28 = *v13;
  outlined copy of Data?(*v13, *(v13 + 1));
  v25.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v28, v14);
  *&v30[0] = 0;
  v26 = [v2 initWithSepKeyBytes:v25.super.isa error:v30];
LABEL_21:
  v4 = v26;

  if (v4)
  {
    v29 = *&v30[0];
    outlined destroy of SecureEnclave.Kyber1024.PrivateKey(v12, type metadata accessor for TetraPB_KyberPrivateKey);
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    v4 = *&v30[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(a1, a2);
    outlined destroy of SecureEnclave.Kyber1024.PrivateKey(v12, type metadata accessor for TetraPB_KyberPrivateKey);
  }

LABEL_9:
  v20 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t Kyber1024ObjCPrivateKey.protobufData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v37 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v10 = type metadata accessor for Kyber1024.PrivateKey();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TetraPB_KyberPrivateKey(0);
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v19 = &v18[v15[5]];
  *v19 = xmmword_22B48D7D0;
  v20 = &v18[v15[6]];
  *v20 = 0;
  *(v20 + 4) = 256;
  v40 = v15;
  v21 = &v18[v15[7]];
  *v21 = 0;
  *(v21 + 4) = 256;
  v22 = v0 + OBJC_IVAR____TtC17MessageProtection23Kyber1024ObjCPrivateKey_privKey;
  outlined init with copy of TetraSessionStates?(v22, v9, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v39 = *(v11 + 48);
  v23 = v39(v9, 1, v10);
  v38 = v22;
  if (v23 == 1)
  {
    v24 = v10;
    outlined destroy of Kyber1024.PrivateKey?(v9);
    v25 = type metadata accessor for TetraKEM1024Key(0);
    v26 = v37;
    outlined init with copy of TetraSessionStates?(v22 + *(v25 + 20), v37, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
    v27 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
    if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v28 = (v26 + *(v27 + 20));
    v29 = *v28;
    v30 = v28[1];
    outlined copy of Data._Representation(*v28, v30);
    outlined destroy of SecureEnclave.Kyber1024.PrivateKey(v26, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
    v31 = v24;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v31 = v10;
    v29 = Kyber1024.PrivateKey.dataRepresentation.getter();
    v30 = v32;
    (*(v11 + 8))(v14, v31);
  }

  outlined consume of Data?(*v19, *(v19 + 1));
  *v19 = v29;
  *(v19 + 1) = v30;
  *v20 = 1;
  *(v20 + 4) = 1;
  v33 = v41;
  outlined init with copy of TetraSessionStates?(v38, v41, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v34 = v39(v33, 1, v31);
  outlined destroy of Kyber1024.PrivateKey?(v33);
  *v21 = v34 == 1;
  *(v21 + 4) = 1;
  lazy protocol witness table accessor for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey();
  v35 = Message.serializedData(partial:)();
  outlined destroy of SecureEnclave.Kyber1024.PrivateKey(v18, type metadata accessor for TetraPB_KyberPrivateKey);
  return v35;
}

uint64_t outlined destroy of Kyber1024.PrivateKey?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey()
{
  result = lazy protocol witness table cache variable for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey;
  if (!lazy protocol witness table cache variable for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey)
  {
    type metadata accessor for TetraPB_KyberPrivateKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey);
  }

  return result;
}

uint64_t outlined destroy of SecureEnclave.Kyber1024.PrivateKey(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TetraKeyStorageError and conformance TetraKeyStorageError()
{
  result = lazy protocol witness table cache variable for type TetraKeyStorageError and conformance TetraKeyStorageError;
  if (!lazy protocol witness table cache variable for type TetraKeyStorageError and conformance TetraKeyStorageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKeyStorageError and conformance TetraKeyStorageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKeyStorageError and conformance TetraKeyStorageError;
  if (!lazy protocol witness table cache variable for type TetraKeyStorageError and conformance TetraKeyStorageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKeyStorageError and conformance TetraKeyStorageError);
  }

  return result;
}

uint64_t type metadata accessor for TetraSessionStates()
{
  result = type metadata singleton initialization cache for TetraSessionStates;
  if (!type metadata singleton initialization cache for TetraSessionStates)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TetraSessionStates()
{
  type metadata accessor for TetraSessionState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Bool?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [TetraSessionState]();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Bool?()
{
  if (!lazy cache variable for type metadata for Bool?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Bool?);
    }
  }
}

void type metadata accessor for [TetraSessionState]()
{
  if (!lazy cache variable for type metadata for [TetraSessionState])
  {
    type metadata accessor for TetraSessionState();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [TetraSessionState]);
    }
  }
}

uint64_t TetraSessionStates.discardMessageKeyOnSessionStates(ephemeralECDHPublicKey:messageIndex:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v65 - v7;
  v71 = type metadata accessor for TetraSessionState();
  v9 = *(v71 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v71);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v65 - v19;
  if (TetraSessionState.discardMessageKeyOnSessionState(ephemeralECDHPublicKey:messageIndex:)(a1, a2))
  {
    v21 = static os_log_type_t.info.getter();
    result = MessageProtectionLog();
    if (result)
    {
      v23 = result;
      (*(v14 + 16))(v20, a1, v13);
      if (!os_log_type_enabled(v23, v21))
      {

        (*(v14 + 8))(v20, v13);
        return 1;
      }

      v69 = v14;
      v70 = v13;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v73 = v25;
      *v24 = 136315394;
      result = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
      if (v26 >> 60 != 15)
      {
        v27 = result;
        v28 = v26;
        v29 = Data.base64EncodedString(options:)(0);
        outlined consume of Data?(v27, v28);
        (*(v69 + 8))(v20, v70);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29._countAndFlagsBits, v29._object, &v73);

        *(v24 + 4) = v30;
        *(v24 + 12) = 2048;
        *(v24 + 14) = a2;
        _os_log_impl(&dword_22B404000, v23, v21, "Discarded MessageKey associated with {publicKey:%s, index:%llu} on default session.", v24, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x231892DF0](v25, -1, -1);
        MEMORY[0x231892DF0](v24, -1, -1);

        return 1;
      }

      goto LABEL_35;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  v66 = v8;
  v67 = v18;
  v69 = v14;
  v70 = v13;
  v68 = a2;
  v31 = *(v2 + *(type metadata accessor for TetraSessionStates() + 24));
  v32 = *(v31 + 16);
  if (!v32)
  {
LABEL_23:
    static os_log_type_t.error.getter();
    result = MessageProtectionLog();
    if (result)
    {
      v64 = result;
      os_log(_:dso:log:_:_:)();

      return 0;
    }

    goto LABEL_34;
  }

  v33 = 0;
  while (1)
  {
    if (v33 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    outlined init with copy of TetraSessionStates(v31 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v33, v12, type metadata accessor for TetraSessionState);
    v34 = &v12[*(v71 + 20)];
    v35 = type metadata accessor for TetraRatchetState(0);
    v36 = *&v34[*(v35 + 20)];
    MEMORY[0x28223BE20](v35);
    *(&v65 - 2) = a1;

    result = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in TetraSessionState.discardMessageKeyOnSessionState(ephemeralECDHPublicKey:messageIndex:), &v65 - 4, v36);
    if (result >> 62)
    {
      break;
    }

    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_11:
    ++v33;

    outlined destroy of TetraSessionState(v12, type metadata accessor for TetraSessionState);
    if (v32 == v33)
    {
      goto LABEL_23;
    }
  }

  v37 = result & 0xFFFFFFFFFFFFFF8;
  if (result < 0)
  {
    v37 = result;
  }

  v38 = result;
  v39 = MEMORY[0x231891D10](v37);
  result = v38;
  if (!v39)
  {
    goto LABEL_11;
  }

LABEL_16:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_31:
    v44 = MEMORY[0x231891C80](0);
    v40 = v68;
    v41 = v69;
    v42 = v70;
    v43 = v67;
    goto LABEL_19;
  }

  v40 = v68;
  v41 = v69;
  v42 = v70;
  v43 = v67;
  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_33;
  }

  v44 = *(result + 32);

LABEL_19:

  v45 = v44 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_incomingSymmetricRatchet;
  swift_beginAccess();
  v46 = v45 + *(type metadata accessor for SymmetricRatchet() + 20);
  v47 = v66;
  specialized Dictionary.removeValue(forKey:)(v40, v66);
  outlined destroy of TetraSessionStates?(v47, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  swift_endAccess();

  v48 = static os_log_type_t.info.getter();
  result = MessageProtectionLog();
  if (!result)
  {
    goto LABEL_36;
  }

  v49 = result;
  (*(v41 + 16))(v43, a1, v42);
  if (os_log_type_enabled(v49, v48))
  {
    LODWORD(v70) = v48;
    v50 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v72 = v69;
    *v50 = 136315650;
    result = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
    if (v51 >> 60 == 15)
    {
      goto LABEL_37;
    }

    v52 = result;
    v53 = v51;
    v54 = Data.base64EncodedString(options:)(0);
    outlined consume of Data?(v52, v53);
    (*(v41 + 8))(v43, v42);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54._countAndFlagsBits, v54._object, &v72);

    *(v50 + 4) = v55;
    *(v50 + 12) = 2048;
    *(v50 + 14) = v68;
    *(v50 + 22) = 2080;
    swift_beginAccess();
    v56 = &v12[*(v71 + 32)];
    v57 = *v56;
    v58 = v56[1];
    outlined copy of Data._Representation(*v56, v58);
    v59 = Data.description.getter();
    v61 = v60;
    outlined consume of Data._Representation(v57, v58);
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v72);

    *(v50 + 24) = v62;
    _os_log_impl(&dword_22B404000, v49, v70, "Discarded MessageKey associated with {publicKey:%s, index:%llu} on previous session (%s).", v50, 0x20u);
    v63 = v69;
    swift_arrayDestroy();
    MEMORY[0x231892DF0](v63, -1, -1);
    MEMORY[0x231892DF0](v50, -1, -1);
  }

  else
  {

    (*(v41 + 8))(v43, v42);
  }

  outlined destroy of TetraSessionState(v12, type metadata accessor for TetraSessionState);
  return 1;
}

NSObject *TetraSessionStates.hasSessionForEphemeralAndPrekeyHash(_:prekeyHash:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
  v7 = *(type metadata accessor for TetraSessionState() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22B48D7C0;
  outlined init with copy of TetraSessionStates(v3, v10 + v9, type metadata accessor for TetraSessionState);
  v11 = *(v3 + *(type metadata accessor for TetraSessionStates() + 24));
  v21[7] = v10;

  specialized Array.append<A>(contentsOf:)(v12);
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a1;
  v13 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in TetraSessionStates.hasSessionForEphemeralAndPrekeyHash(_:prekeyHash:), v21, v10);
  v14 = *(v13 + 16);
  if (v14 <= 1)
  {

    return (v14 == 1);
  }

  else
  {
    v15 = v13;
    v16 = static os_log_type_t.fault.getter();
    result = MessageProtectionLog();
    if (result)
    {
      v18 = result;
      if (os_log_type_enabled(result, v16))
      {

        v19 = swift_slowAlloc();
        *v19 = 134217984;
        v20 = *(v15 + 16);

        *(v19 + 4) = v20;

        _os_log_impl(&dword_22B404000, v18, v16, "Unexpectedly found %ld colliding prekey hashes", v19, 0xCu);
        MEMORY[0x231892DF0](v19, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

int *TetraSessionStates.openMessage(_:prekeysHash:sessionDST:theirTetraVersion:didRatchet:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5, unsigned int a6, _BYTE *a7)
{
  v9 = v8;
  v10 = v7;
  v119 = a4;
  v120 = a5;
  v118 = a1;
  v124[3] = *MEMORY[0x277D85DE8];
  v15 = type metadata accessor for TetraSessionState();
  v116 = *(v15 - 1);
  v16 = *(v116 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = (&v104 - v19);
  v114 = v18;
  v108 = v21;
  if (a3 >> 60 != 15)
  {
    v53 = (v10 + v15[8]);
    v112 = a2;
    v113 = a3;
    v54 = *v53;
    v55 = v53[1];
    outlined copy of Data?(v112, v113);
    v56 = v54;
    v57 = v55;
    v58 = v112;
    v59 = v113;
    if (specialized static Data.== infix(_:_:)(v56, v57, v112, v113))
    {
      if (a6 >= 0xF)
      {
        v60 = 15;
      }

      else
      {
        v60 = a6;
      }

      *v10 = v60;
      *(v10 + v15[9]) = 1;
      v61 = v58;
      v62 = v10 + v15[5];
      specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v118, v119, v120, a7);
      v10 = v63;
      outlined consume of Data?(v61, v59);
      goto LABEL_93;
    }

    v64 = *(v10 + *(type metadata accessor for TetraSessionStates() + 24));
    v117 = *(v64 + 16);
    if (!v117)
    {
      outlined consume of Data?(v58, v59);
      goto LABEL_2;
    }

    HIDWORD(v104) = a6;
    v65 = 0;
    v22 = v116;
    v122 = v64 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    if (v58)
    {
      v66 = 0;
    }

    else
    {
      v66 = v59 == 0xC000000000000000;
    }

    v67 = !v66;
    LODWORD(v111) = v67;
    v68 = __OFSUB__(HIDWORD(v58), v58);
    v107 = v68;
    v106 = HIDWORD(v58) - v58;
    *&v110 = BYTE6(v59);
    v109 = v10;
    v105 = a7;
    v115 = v64;
    v121 = v59 >> 62;
    while (1)
    {
      if (v65 >= *(v64 + 16))
      {
        goto LABEL_98;
      }

      outlined init with copy of TetraSessionStates(v122 + *(v22 + 72) * v65, v20, type metadata accessor for TetraSessionState);
      v69 = (v20 + v114[8]);
      v70 = *v69;
      v71 = v69[1];
      v72 = v71 >> 62;
      if (v71 >> 62 == 3)
      {
        break;
      }

      v74 = v121;
      if (v72 > 1)
      {
        if (v72 != 2)
        {
          goto LABEL_56;
        }

        v79 = *(v70 + 16);
        v78 = *(v70 + 24);
        v80 = __OFSUB__(v78, v79);
        v77 = v78 - v79;
        if (v80)
        {
          goto LABEL_102;
        }

        if (v121 <= 1)
        {
          goto LABEL_53;
        }
      }

      else if (v72)
      {
        LODWORD(v77) = HIDWORD(v70) - v70;
        if (__OFSUB__(HIDWORD(v70), v70))
        {
          goto LABEL_101;
        }

        v77 = v77;
        if (v121 <= 1)
        {
LABEL_53:
          v81 = v110;
          if (v74)
          {
            v81 = v106;
            if (v107)
            {
              goto LABEL_100;
            }
          }

          goto LABEL_59;
        }
      }

      else
      {
        v77 = BYTE6(v71);
        if (v121 <= 1)
        {
          goto LABEL_53;
        }
      }

LABEL_57:
      if (v74 != 2)
      {
        if (!v77)
        {
          goto LABEL_82;
        }

        goto LABEL_32;
      }

      v83 = *(v58 + 16);
      v82 = *(v58 + 24);
      v80 = __OFSUB__(v82, v83);
      v81 = v82 - v83;
      if (v80)
      {
        goto LABEL_99;
      }

LABEL_59:
      if (v77 == v81)
      {
        if (v77 < 1)
        {
          goto LABEL_82;
        }

        if (v72 > 1)
        {
          if (v72 != 2)
          {
            memset(v124, 0, 14);
LABEL_81:
            closure #1 in static Data.== infix(_:_:)(v124, v58, v59, &v123);
            if (v123)
            {
              goto LABEL_82;
            }

            goto LABEL_32;
          }

          v85 = *(v70 + 16);
          v84 = *(v70 + 24);
          v86 = __DataStorage._bytes.getter();
          if (v86)
          {
            v87 = __DataStorage._offset.getter();
            if (__OFSUB__(v85, v87))
            {
              goto LABEL_105;
            }

            v86 += v85 - v87;
          }

          if (__OFSUB__(v84, v85))
          {
            goto LABEL_104;
          }

          MEMORY[0x231890D50]();
          v88 = v86;
          v58 = v112;
          v59 = v113;
          closure #1 in static Data.== infix(_:_:)(v88, v112, v113, v124);
          v89 = v124[0];
          v10 = v109;
        }

        else
        {
          if (!v72)
          {
            v124[0] = v70;
            LOWORD(v124[1]) = v71;
            BYTE2(v124[1]) = BYTE2(v71);
            BYTE3(v124[1]) = BYTE3(v71);
            BYTE4(v124[1]) = BYTE4(v71);
            BYTE5(v124[1]) = BYTE5(v71);
            goto LABEL_81;
          }

          v90 = v10;
          v91 = v70;
          if (v70 >> 32 < v70)
          {
            goto LABEL_103;
          }

          v92 = __DataStorage._bytes.getter();
          if (v92)
          {
            v93 = __DataStorage._offset.getter();
            if (__OFSUB__(v91, v93))
            {
              goto LABEL_106;
            }

            v92 += v91 - v93;
          }

          v10 = v90;
          MEMORY[0x231890D50]();
          v94 = v92;
          v58 = v112;
          v59 = v113;
          closure #1 in static Data.== infix(_:_:)(v94, v112, v113, v124);
          v89 = v124[0];
          a7 = v105;
        }

        v22 = v116;
        if (v89)
        {
          goto LABEL_82;
        }
      }

LABEL_32:
      ++v65;
      outlined destroy of TetraSessionState(v20, type metadata accessor for TetraSessionState);
      v64 = v115;
      if (v117 == v65)
      {
        outlined consume of Data?(v58, v59);
        a6 = HIDWORD(v104);
        goto LABEL_3;
      }
    }

    if (v70)
    {
      v73 = 0;
    }

    else
    {
      v73 = v71 == 0xC000000000000000;
    }

    v74 = v121;
    v76 = !v73 || v121 < 3;
    if (((v76 | v111) & 1) == 0)
    {
LABEL_82:
      if (HIDWORD(v104) >= 0xF)
      {
        v95 = 15;
      }

      else
      {
        v95 = HIDWORD(v104);
      }

      *v20 = v95;
      v96 = v114;
      *(v20 + v114[9]) = 1;
      v97 = v20 + v96[5];
      specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v118, v119, v120, a7);
      if (v8)
      {
        outlined consume of Data?(v112, v113);
        outlined destroy of TetraSessionState(v20, type metadata accessor for TetraSessionState);
      }

      else
      {
        v10 = v98;
        TetraSessionStates.makeDefault(_:)(v20);
        outlined consume of Data?(v112, v113);
LABEL_91:
        outlined destroy of TetraSessionState(v20, type metadata accessor for TetraSessionState);
      }

      goto LABEL_93;
    }

LABEL_56:
    v77 = 0;
    if (v74 <= 1)
    {
      goto LABEL_53;
    }

    goto LABEL_57;
  }

LABEL_2:
  v22 = v116;
LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22B48D7C0;
  outlined init with copy of TetraSessionStates(v10, v25 + v24, type metadata accessor for TetraSessionState);
  v26 = *(type metadata accessor for TetraSessionStates() + 24);
  v109 = v10;
  v27 = *(v10 + v26);
  v124[0] = v25;

  specialized Array.append<A>(contentsOf:)(v28);
  v30 = v124[0];
  v31 = *(v124[0] + 16);
  if (a6 >= 0xF)
  {
    v32 = 15;
  }

  else
  {
    v32 = a6;
  }

  LODWORD(v117) = v32;
  v116 = v31;
  if (v31)
  {
    v33 = 0;
    v34 = v124[0] + v24;
    *&v29 = 136315394;
    v110 = v29;
    v35 = v114;
    v36 = v108;
    v111 = v23;
    v115 = v124[0];
    while (v33 < *(v30 + 16))
    {
      v121 = v34;
      v122 = v33;
      outlined init with copy of TetraSessionStates(v34, v36, type metadata accessor for TetraSessionState);
      swift_beginAccess();
      *v36 = v117;
      *(v36 + v35[9]) = 1;
      v37 = v36 + v35[5];
      specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v118, v119, v120, a7);
      if (!v9)
      {
        v10 = v38;
        swift_endAccess();

        TetraSessionStates.makeDefault(_:)(v36);
        v20 = v36;
        goto LABEL_91;
      }

      swift_endAccess();
      v39 = static os_log_type_t.error.getter();
      v40 = MessageProtectionLog();
      if (!v40)
      {
        goto LABEL_107;
      }

      v41 = v40;
      if (os_log_type_enabled(v40, v39))
      {
        v42 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v124[0] = v113;
        *v42 = v110;
        v43 = (v36 + v35[8]);
        v112 = v9;
        v45 = *v43;
        v44 = v43[1];
        outlined copy of Data._Representation(*v43, v44);
        v46 = Data.base64EncodedString(options:)(0);
        outlined consume of Data._Representation(v45, v44);
        v23 = v111;
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46._countAndFlagsBits, v46._object, v124);

        *(v42 + 4) = v47;
        *(v42 + 12) = 2080;
        v48 = v112;
        swift_getErrorValue();
        v49 = Error.localizedDescription.getter();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v124);
        v35 = v114;

        *(v42 + 14) = v51;
        _os_log_impl(&dword_22B404000, v41, v39, "Failed to decrypt with session: %s. Decryption error: %s", v42, 0x16u);
        v52 = v113;
        swift_arrayDestroy();
        MEMORY[0x231892DF0](v52, -1, -1);
        MEMORY[0x231892DF0](v42, -1, -1);
      }

      else
      {
      }

      outlined destroy of TetraSessionState(v36, type metadata accessor for TetraSessionState);
      v9 = 0;
      v10 = 0;
      v33 = v122 + 1;
      v34 = v121 + v23;
      v30 = v115;
      if (v116 == v122 + 1)
      {
        goto LABEL_88;
      }
    }

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
  }

  v10 = v8;
  v35 = v114;
LABEL_88:

  v99 = v109;
  *v109 = v117;
  *(v99 + v35[9]) = 1;
  v100 = v99 + v35[5];
  specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v118, v119, v120, a7);
  if (!v10)
  {
    v10 = v101;
  }

LABEL_93:
  v102 = *MEMORY[0x277D85DE8];
  return v10;
}

void TetraSessionStates.makeDefault(_:)(_DWORD *a1)
{
  v2 = v1;
  if (specialized static TetraSessionState.== infix(_:_:)(v1, a1))
  {
    outlined assign with copy of TetraSessionState(a1, v1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
    v4 = *(type metadata accessor for TetraSessionState() - 8);
    v5 = *(v4 + 72);
    v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_22B48D7C0;
    outlined init with copy of TetraSessionStates(v2, v7 + v6, type metadata accessor for TetraSessionState);
    v8 = *(type metadata accessor for TetraSessionStates() + 24);
    v9 = *(v2 + v8);
    v19[5] = v7;
    specialized Array.append<A>(contentsOf:)(v9);
    *(v2 + v8) = v7;
    v10 = outlined assign with copy of TetraSessionState(a1, v2);
    MEMORY[0x28223BE20](v10);
    v19[2] = a1;
    v11 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(_s17MessageProtection18TetraSessionStatesV11makeDefaultyyAA0cD5StateVFSbAFXEfU_TA_0, v19);
    v12 = *(*(v2 + v8) + 16);
    if (v12 < v11)
    {
      __break(1u);
      goto LABEL_12;
    }

    specialized Array.replaceSubrange<A>(_:with:)(v11, v12);
  }

  v13 = *(*(v2 + *(type metadata accessor for TetraSessionStates() + 24)) + 16);
  if (v13 < 3)
  {
    return;
  }

  v14 = v13 - 2;
  specialized RangeReplaceableCollection<>.removeLast(_:)(v13 - 2);
  v15 = static os_log_type_t.error.getter();
  v16 = MessageProtectionLog();
  if (!v16)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v17 = v16;
  if (os_log_type_enabled(v16, v15))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v14;
    _os_log_impl(&dword_22B404000, v17, v15, "Removed %ld Tetra sessions.", v18, 0xCu);
    MEMORY[0x231892DF0](v18, -1, -1);
  }
}

Swift::Bool __swiftcall TetraSessionStates.hasSessionWithCompatibleVersion()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection17TetraSessionStateVSgMd, &_s17MessageProtection17TetraSessionStateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v46 - v3;
  v5 = type metadata accessor for TetraSessionState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v46 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v46 - v17);
  v19 = *v0 - 13;
  v20 = type metadata accessor for TetraSessionStates();
  v21 = *(v0 + *(v20 + 24));
  v48 = *(v20 + 24);
  v49 = v0;
  if (v19 > 0x12)
  {
    v46 = v5;
    v47 = v4;
    v31 = *(v21 + 16);
    if (v31)
    {
      v32 = 0;
      v33 = MEMORY[0x277D84F90];
      v50 = v10;
      while (v32 < *(v21 + 16))
      {
        v34 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v35 = *(v6 + 72);
        outlined init with copy of TetraSessionStates(v21 + v34 + v35 * v32, v13, type metadata accessor for TetraSessionState);
        if ((*v13 - 13) > 0x12)
        {
          LOBYTE(v20) = outlined destroy of TetraSessionState(v13, type metadata accessor for TetraSessionState);
        }

        else
        {
          outlined init with take of TetraSessionState(v13, v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1);
            v33 = v51;
          }

          v38 = *(v33 + 16);
          v37 = *(v33 + 24);
          if (v38 >= v37 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1);
            v33 = v51;
          }

          *(v33 + 16) = v38 + 1;
          v39 = v33 + v34 + v38 * v35;
          v10 = v50;
          LOBYTE(v20) = outlined init with take of TetraSessionState(v50, v39);
        }

        if (v31 == ++v32)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_34;
    }

    v33 = MEMORY[0x277D84F90];
LABEL_27:

    v41 = v49;
    *(v49 + v48) = v33;
    if (*(v33 + 16))
    {
      v42 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      LOBYTE(v20) = outlined assign with copy of TetraSessionState(v33 + v42, v41);
      if (!*(v33 + 16))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v43 = v33 + v42;
      v44 = v47;
      outlined init with copy of TetraSessionStates(v43, v47, type metadata accessor for TetraSessionState);
      (*(v6 + 56))(v44, 0, 1, v46);
      LOBYTE(v20) = outlined destroy of TetraSessionStates?(v44, &_s17MessageProtection17TetraSessionStateVSgMd, &_s17MessageProtection17TetraSessionStateVSgMR);
      if (!*(v33 + 16))
      {
LABEL_36:
        __break(1u);
        return v20;
      }

      v40 = 1;
      specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = 0;
      v24 = MEMORY[0x277D84F90];
      v50 = v16;
      while (v23 < *(v21 + 16))
      {
        v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v26 = *(v6 + 72);
        outlined init with copy of TetraSessionStates(v21 + v25 + v26 * v23, v18, type metadata accessor for TetraSessionState);
        if ((*v18 - 13) > 0x12)
        {
          LOBYTE(v20) = outlined destroy of TetraSessionState(v18, type metadata accessor for TetraSessionState);
        }

        else
        {
          outlined init with take of TetraSessionState(v18, v16);
          v27 = swift_isUniquelyReferenced_nonNull_native();
          v51 = v24;
          if ((v27 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
            v24 = v51;
          }

          v29 = *(v24 + 16);
          v28 = *(v24 + 24);
          if (v29 >= v28 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
            v24 = v51;
          }

          *(v24 + 16) = v29 + 1;
          v30 = v24 + v25 + v29 * v26;
          v16 = v50;
          LOBYTE(v20) = outlined init with take of TetraSessionState(v50, v30);
        }

        if (v22 == ++v23)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_25:

    *(v49 + v48) = v24;
    v40 = 1;
  }

  LOBYTE(v20) = v40;
  return v20;
}

uint64_t closure #1 in TetraSessionStates.hasSessionForEphemeralAndPrekeyHash(_:prekeyHash:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v33 = a4;
  v7 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v19 = type metadata accessor for TetraSessionState();
  if ((specialized static Data.== infix(_:_:)(*(a1 + *(v19 + 32)), *(a1 + *(v19 + 32) + 8), a2, a3) & 1) == 0)
  {
    v22 = 0;
    return v22 & 1;
  }

  v20 = *(v15 + 48);
  outlined init with copy of P256.KeyAgreement.PublicKey?(a1 + *(v19 + 28), v18);
  outlined init with copy of P256.KeyAgreement.PublicKey?(v33, &v18[v20]);
  v21 = *(v8 + 48);
  if (v21(v18, 1, v7) != 1)
  {
    outlined init with copy of P256.KeyAgreement.PublicKey?(v18, v14);
    if (v21(&v18[v20], 1, v7) != 1)
    {
      v23 = (*(v8 + 32))(v32, &v18[v20], v7);
      v24 = MEMORY[0x231891580](v23);
      v26 = v25;
      v27 = MEMORY[0x231891580]();
      v29 = v28;
      v22 = specialized static Data.== infix(_:_:)(v24, v26, v27, v28);
      outlined consume of Data._Representation(v27, v29);
      outlined consume of Data._Representation(v24, v26);
      v30 = *(v8 + 8);
      v30(v32, v7);
      v30(v14, v7);
      outlined destroy of TetraSessionStates?(v18, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      return v22 & 1;
    }

    (*(v8 + 8))(v14, v7);
    goto LABEL_8;
  }

  if (v21(&v18[v20], 1, v7) != 1)
  {
LABEL_8:
    outlined destroy of TetraSessionStates?(v18, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
    v22 = 0;
    return v22 & 1;
  }

  outlined destroy of TetraSessionStates?(v18, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v22 = 1;
  return v22 & 1;
}

Swift::Void __swiftcall TetraSessionStates.cleanupPreviousSessionStates()()
{
  v1 = *(*(v0 + *(type metadata accessor for TetraSessionStates() + 24)) + 16);
  if (v1 >= 3)
  {
    v2 = v1 - 2;
    specialized RangeReplaceableCollection<>.removeLast(_:)(v1 - 2);
    v3 = static os_log_type_t.error.getter();
    v4 = MessageProtectionLog();
    if (v4)
    {
      log = v4;
      if (os_log_type_enabled(v4, v3))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        *(v5 + 4) = v2;
        _os_log_impl(&dword_22B404000, log, v3, "Removed %ld Tetra sessions.", v5, 0xCu);
        MEMORY[0x231892DF0](v5, -1, -1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t specialized RangeReplaceableCollection<>.removeLast(_:)(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return specialized Array.replaceSubrange<A>(_:with:)(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t TetraSessionStates.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection18TetraSessionStatesV10CodingKeys33_5C9D1E57A2C4DA1AB0D78AFE80DFAD8DLLOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection18TetraSessionStatesV10CodingKeys33_5C9D1E57A2C4DA1AB0D78AFE80DFAD8DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for TetraSessionState();
  lazy protocol witness table accessor for type TetraSessionState and conformance TetraSessionState(&lazy protocol witness table cache variable for type TetraSessionState and conformance TetraSessionState);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for TetraSessionStates();
    v12 = *(v3 + *(v11 + 20));
    v16 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + *(v11 + 24));
    v14[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17MessageProtection17TetraSessionStateVGMd, &_sSay17MessageProtection17TetraSessionStateVGMR);
    lazy protocol witness table accessor for type [TetraSessionState] and conformance <A> [A](&lazy protocol witness table cache variable for type [TetraSessionState] and conformance <A> [A], &lazy protocol witness table cache variable for type TetraSessionState and conformance TetraSessionState);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TetraSessionStates.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for TetraSessionState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection18TetraSessionStatesV10CodingKeys33_5C9D1E57A2C4DA1AB0D78AFE80DFAD8DLLOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection18TetraSessionStatesV10CodingKeys33_5C9D1E57A2C4DA1AB0D78AFE80DFAD8DLLOGMR);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for TetraSessionStates();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v22;
  v17 = v14;
  v28 = 0;
  lazy protocol witness table accessor for type TetraSessionState and conformance TetraSessionState(&lazy protocol witness table cache variable for type TetraSessionState and conformance TetraSessionState);
  v18 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of TetraSessionState(v24, v17);
  v27 = 1;
  *(v17 + *(v11 + 20)) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17MessageProtection17TetraSessionStateVGMd, &_sSay17MessageProtection17TetraSessionStateVGMR);
  v26 = 2;
  lazy protocol witness table accessor for type [TetraSessionState] and conformance <A> [A](&lazy protocol witness table cache variable for type [TetraSessionState] and conformance <A> [A], &lazy protocol witness table cache variable for type TetraSessionState and conformance TetraSessionState);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 24)) = v25;
  outlined init with copy of TetraSessionStates(v17, v21, type metadata accessor for TetraSessionStates);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of TetraSessionState(v17, type metadata accessor for TetraSessionStates);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TetraSessionStates.CodingKeys()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53746C7561666564;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraSessionStates.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TetraSessionStates.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraSessionStates.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraSessionStates.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of TetraSessionState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraSessionState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TetraSessionState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type TetraSessionState and conformance TetraSessionState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TetraSessionState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [TetraSessionState] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17MessageProtection17TetraSessionStateVGMd, &_sSay17MessageProtection17TetraSessionStateVGMR);
    lazy protocol witness table accessor for type TetraSessionState and conformance TetraSessionState(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of TetraSessionStates(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized TetraSessionStates.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746C7561666564 && a2 == 0xEE006E6F69737365;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022B4961D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022B4961F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id HKDF.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HKDF.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HKDF();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HKDF.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HKDF();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static HKDF.deriveKeyWith(_:salt:outputSize:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SymmetricKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v11;
  SymmetricKey.init<A>(data:)();
  v15 = a2;
  type metadata accessor for SHA256();
  type metadata accessor for NSData();
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_2(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_2(&lazy protocol witness table cache variable for type NSData and conformance NSData, type metadata accessor for NSData);
  static HKDF.deriveKey<A>(inputKeyMaterial:salt:outputByteCount:)();
  v12 = *(v4 + 8);
  v12(v8, v3);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v12(v10, v3);
  return v15;
}

uint64_t _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

id TetraErrorHelpers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TetraErrorHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraErrorHelpers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TetraErrorHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraErrorHelpers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static TetraErrorHelpers.fRStringFrom(error:)()
{
  v0 = _convertErrorToNSError(_:)();
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x2318919B0](45, 0xE100000000000000);
  [v0 code];
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2318919B0](v3);

  return v2;
}

uint64_t specialized static TetraErrorHelpers.shouldMarkForStateReset(string:)(void *a1)
{
  lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE();
  v2 = swift_allocError();
  *v3 = 1;
  v4 = _convertErrorToNSError(_:)();
  v5 = [v4 domain];

  if (!v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = MEMORY[0x231891960](v6);
  }

  lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
  v7 = swift_allocError();
  *v8 = 3;
  v9 = _convertErrorToNSError(_:)();
  v10 = [v9 domain];

  if (!v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x231891960](v11);
  }

  v12 = [a1 containsString_];
  if (v12)
  {

    return 1;
  }

  v13 = [a1 containsString_];

  if (v13)
  {
    return 1;
  }

  lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
  v14 = swift_allocError();
  *v15 = 4;
  v16 = specialized static TetraErrorHelpers.fRStringFrom(error:)();
  v18 = v17;

  lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
  v19 = swift_allocError();
  *v20 = 0;
  v21 = specialized static TetraErrorHelpers.fRStringFrom(error:)();
  v23 = v22;

  v24 = swift_allocError();
  *v25 = 1;
  v26 = specialized static TetraErrorHelpers.fRStringFrom(error:)();
  v28 = v27;

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v29;
  if (v16 == v30 && v18 == v29)
  {

LABEL_12:

    goto LABEL_13;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_12;
  }

  if (v21 == v30 && v23 == v31)
  {

    goto LABEL_14;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) != 0 || v26 == v30 && v28 == v31)
  {
LABEL_13:

LABEL_14:

    return 1;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v35 & 1;
}

uint64_t getEnumTagSinglePayload for TetraGeneralError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TetraGeneralError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TetraQueryLookupError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TetraQueryLookupError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for TetraQueryLookupError(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for TetraQueryLookupError(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors()
{
  result = lazy protocol witness table cache variable for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors;
  if (!lazy protocol witness table cache variable for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors;
  if (!lazy protocol witness table cache variable for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors);
  }

  return result;
}

void specialized static TetraAPI.openNoRatchet(tetraOuterMessage:sessionDST:guid:authenticatedData:ourPrekeys:theirIdentity:tetraVersion:signedBy:decryptionBlock:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, id a9, void (*a10)(void, unint64_t, void, id, void, void), uint64_t a11)
{
  v162 = a8;
  v172 = a7;
  v173 = a1;
  v174 = a6;
  v178[2] = *MEMORY[0x277D85DE8];
  v15 = type metadata accessor for TetraRatchetState(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v167 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v170 = &v151 - v20;
  v169 = type metadata accessor for P256.Signing.PublicKey();
  v166 = *(v169 - 8);
  v21 = *(v166 + 64);
  MEMORY[0x28223BE20](v169);
  v171 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for TetraSessionState();
  v23 = *(*(v165 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v165);
  v168 = (&v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v27 = &v151 - v26;
  v163 = a2;
  v28 = a2(0);
  v30 = v29;
  v31.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v28, v30);
  v32 = static os_log_type_t.info.getter();
  v33 = MessageProtectionLog();
  if (!v33)
  {
    goto LABEL_67;
  }

  v34 = v33;
  v36 = a10;
  v35 = a11;
  v37 = os_log_type_enabled(v33, v32);
  v164 = v27;
  v160 = a5;
  v159 = a4;
  v161 = a3;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v178[0] = v39;
    *v38 = 136315138;
    v40 = [(objc_class *)v31.super.isa base64EncodedStringWithOptions:0];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    isa = v31.super.isa;
    v44 = v43;

    v45 = v41;
    v36 = a10;
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, v178);
    v31.super.isa = isa;

    *(v38 + 4) = v46;
    _os_log_impl(&dword_22B404000, v34, v32, "Decrypting TetraNoRatchet for conversationID: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x231892DF0](v39, -1, -1);
    MEMORY[0x231892DF0](v38, -1, -1);
  }

  v47 = type metadata accessor for TetraNoRatchetOuterMessage(0);
  v48 = v174;
  v49 = (v173 + *(v47 + 40));
  v50 = v49[1];
  if (v50 >> 60 == 15)
  {
    lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE();
    v51 = swift_allocError();
    *v52 = 0;
    swift_willThrow();
    goto LABEL_58;
  }

  v53 = *v49;
  v154 = v47;
  v54 = *(v173 + *(v47 + 52));
  v178[0] = MEMORY[0x277D84F90];
  if (v174 >> 62)
  {
    if (v174 < 0)
    {
      v140 = v174;
    }

    else
    {
      v140 = v174 & 0xFFFFFFFFFFFFFF8;
    }

    v55 = MEMORY[0x231891D10](v140);
  }

  else
  {
    v55 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = outlined copy of Data._Representation(v53, v50);
  if (!v55)
  {
    v74 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

LABEL_25:
    if ((v74 & 0x4000000000000000) != 0)
    {
      goto LABEL_53;
    }

    v75 = *(v74 + 16);
    if (v75)
    {
      if (v75 != 1)
      {
        goto LABEL_55;
      }

      goto LABEL_28;
    }

LABEL_56:

    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    v51 = swift_allocError();
    v142 = 4;
LABEL_57:
    *v141 = v142;
    swift_willThrow();
    outlined consume of Data?(v53, v50);
LABEL_58:

LABEL_59:
    v178[0] = v51;
    v143 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast() && v177[0] == 6)
    {

      v144 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v145 = MEMORY[0x231891960](0xD00000000000001BLL, 0x800000022B494BB0);
      v146 = [v144 initWithDomain:v145 code:5 userInfo:0];

      v147 = v146;
      v36(0, 0xF000000000000000, 0, v146, 0, 0);

      v148 = v178[0];
    }

    else
    {

      v149 = v51;
      v36(0, 0xF000000000000000, 0, v51, 0, 0);

      v148 = v51;
    }

    goto LABEL_64;
  }

  LODWORD(v155) = v54;
  v158 = v31.super.isa;
  v156 = a11;
  v157 = v36;
  v60 = 0;
  v175 = (v48 & 0xFFFFFFFFFFFFFF8);
  v176 = v48 & 0xC000000000000001;
  do
  {
    if (v176)
    {
      v56 = MEMORY[0x231891C80](v60, v48);
    }

    else
    {
      if (v60 >= v175[2])
      {
        goto LABEL_38;
      }

      v56 = *(v48 + 8 * v60 + 32);
    }

    v61 = v56;
    v62 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v63 = [v56 tetraRegistration];
    if (v63)
    {
      v64 = v63;
      v65 = v55;
      v66 = TetraRegistration.computeKeysHash()();
      v68 = v67;
      v69 = v53;
      v70 = v53;
      v71 = v50;
      v72 = specialized static Data.== infix(_:_:)(v66, v67, v70, v50);
      outlined consume of Data._Representation(v66, v68);

      if (v72)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v73 = *(v178[0] + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v56 = specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v50 = v71;
      v53 = v69;
      v48 = v174;
      v55 = v65;
    }

    else
    {
    }

    ++v60;
  }

  while (v62 != v55);
  v74 = v178[0];
  v36 = v157;
  v35 = v156;
  v31.super.isa = v158;
  v54 = v155;
  if ((v178[0] & 0x8000000000000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_53:
  if (!MEMORY[0x231891D10](v74))
  {
    goto LABEL_56;
  }

  if (MEMORY[0x231891D10](v74) != 1)
  {
LABEL_55:

    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    v51 = swift_allocError();
    v142 = 5;
    goto LABEL_57;
  }

LABEL_28:
  v153 = v53;
  if ((v74 & 0xC000000000000001) == 0)
  {
    if (*(v74 + 16))
    {
      v76 = *(v74 + 32);
      goto LABEL_31;
    }

    __break(1u);
LABEL_67:
    __break(1u);
  }

  v76 = MEMORY[0x231891C80](0, v74);
LABEL_31:
  v77 = v76;
  v78 = [objc_opt_self() sharedManager];
  v178[0] = 0;
  v79 = [v78 validateIncomingCounter:v54 prekey:v77 publicIdentity:v172 error:v178];
  v80 = v77;
  v81 = v178[0];
  v82 = swift_allocObject();
  *(v82 + 16) = v79;
  if (v81)
  {
    v83 = v81;

    swift_willThrow();
    v84 = v83;
    v85 = v80;
    v51 = v84;

    outlined consume of Data?(v153, v50);

    goto LABEL_59;
  }

  v174 = v78;
  v175 = v80;
  v176 = v82;
  v86 = [a9 compactRepresentation];
  v87 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v88;

  v178[0] = v87;
  v178[1] = v89;
  P256.Signing.PublicKey.init<A>(compactRepresentation:)();
  v158 = v31.super.isa;
  v156 = v35;
  v157 = v36;
  v90 = *(v154 + 28);
  v91 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v92 = *(v91 - 8);
  v93 = v170;
  (*(v92 + 16))(v170, v173 + v90, v91);
  v94 = *(v92 + 56);
  v94(v93, 0, 1, v91);
  v95 = v50;
  v96 = v165;
  v97 = v168;
  v172 = *(v165 + 28);
  v94(v168 + v172, 1, 1, v91);
  v98 = (v97 + v96[8]);
  v99 = v153;
  *v98 = v153;
  v98[1] = v95;
  v155 = v98;
  v100 = v166;
  v101 = *(v166 + 16);
  v154 = v96[6];
  v101(v97 + v154, v171, v169);
  *(v97 + v96[9]) = 1;
  outlined copy of Data?(v99, v95);
  v102 = v175;
  v103 = v167;
  TetraRatchetState.init(asReceiverWithFullPrekey:)(v102, v167);
  v152 = v102;
  v175 = v95;
  (*(v100 + 8))(v171, v169);
  outlined init with take of TetraRatchetState(v103, v97 + v96[5], type metadata accessor for TetraRatchetState);
  if (v162 >= 0xF)
  {
    v104 = 15;
  }

  else
  {
    v104 = v162;
  }

  *v97 = v104;
  outlined assign with take of P256.KeyAgreement.PublicKey?(v170, v97 + v172, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v105 = v97;
  v106 = v164;
  outlined init with take of TetraRatchetState(v105, v164, type metadata accessor for TetraSessionState);
  v177[0] = 0;
  *v106 = v104;
  *(v106 + v96[9]) = 1;
  v107 = v106 + v96[5];
  specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v173, v163, v161, v177);
LABEL_39:
  v108 = v56;
  v109 = v57;
  v110 = v59;
  v173 = v58;
  v111 = static os_log_type_t.info.getter();
  v112 = MessageProtectionLog();
  v113 = v157;
  v114 = v158;
  if (!v112)
  {
    __break(1u);
LABEL_69:
    __break(1u);
    return;
  }

  v115 = v112;
  if (os_log_type_enabled(v112, v111))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v178[0] = v117;
    *v116 = 136315138;
    *(v116 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v160, v178);
    _os_log_impl(&dword_22B404000, v115, v111, "Successfully decrypted scheduled send with %s", v116, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v117);
    MEMORY[0x231892DF0](v117, -1, -1);
    MEMORY[0x231892DF0](v116, -1, -1);
  }

  v118 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (v110 >> 60 != 15)
  {
    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;
    v172 = v108;
    v122 = v113;
    v123 = v114;
    v124 = v109;
    v125 = v173;
    outlined copy of Data._Representation(v173, v110);
    outlined copy of Data._Representation(v125, v110);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v178[0] = v118;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v125, v110, v119, v121, isUniquelyReferenced_nonNull_native);
    v127 = v125;
    v109 = v124;
    v114 = v123;
    v113 = v122;
    v108 = v172;
    outlined consume of Data?(v127, v110);

    v118 = v178[0];
  }

  v128 = v176;

  outlined copy of Data._Representation(v108, v109);
  v129 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v118);

  v113(v108, v109, v129, 0, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool), v128);

  outlined consume of Data._Representation(v108, v109);

  v130 = static os_log_type_t.info.getter();
  v131 = MessageProtectionLog();
  if (!v131)
  {
    goto LABEL_69;
  }

  v132 = v131;

  if (os_log_type_enabled(v132, v130))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v178[0] = v134;
    *v133 = 136315138;
    v135 = [(objc_class *)v114 base64EncodedStringWithOptions:0];
    v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v138 = v137;

    v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v138, v178);

    *(v133 + 4) = v139;
    _os_log_impl(&dword_22B404000, v132, v130, "Finished decrypting TetraNoRatchet for conversationID: %s", v133, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v134);
    MEMORY[0x231892DF0](v134, -1, -1);
    MEMORY[0x231892DF0](v133, -1, -1);

    outlined consume of Data._Representation(v108, v109);
    outlined consume of Data?(v173, v110);

    outlined consume of Data?(v153, v175);
  }

  else
  {

    outlined consume of Data?(v153, v175);

    outlined consume of Data._Representation(v108, v109);
    outlined consume of Data?(v173, v110);
  }

  _s17MessageProtection17TetraSessionStateVWOhTm_0(v164, type metadata accessor for TetraSessionState);
LABEL_64:
  v150 = *MEMORY[0x277D85DE8];
}

NSObject *specialized static TetraAPI.sealNoRatchet(message:authenticatedData:sendingURI:sendingPushToken:receivingURI:receivingPushToken:encryptedAttributes:receiverIdentity:senderIdentity:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7, uint64_t (*a8)(uint64_t), unint64_t a9, void *a10, uint64_t a11, void *a12, void *a13)
{
  v223 = a6;
  v226 = a8;
  v224 = a7;
  v213 = a4;
  v212 = a3;
  v227 = a1;
  v228 = a2;
  v234 = *MEMORY[0x277D85DE8];
  v14 = type metadata accessor for TetraNoRatchetOuterMessage(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for TetraKEM768Key(0);
  v209 = *(v210 - 1);
  v18 = *(v209 + 64);
  MEMORY[0x28223BE20](v210);
  v206 = v186 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = v186 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v218 = v186 - v25;
  v26 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v215 = *(v26 - 8);
  v27 = *(v215 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v186 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v217 = v186 - v31;
  v211 = type metadata accessor for TetraRatchetOuterMessage(0);
  v32 = *(*(v211 - 1) + 64);
  MEMORY[0x28223BE20](v211);
  v34 = v186 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for TetraSessionState();
  v35 = *(*(v219 - 8) + 64);
  MEMORY[0x28223BE20](v219);
  v37 = (v186 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v214 = a13;
  v38 = [a13 deviceSigningKey];
  if (!v38)
  {
    __break(1u);
    goto LABEL_38;
  }

  v39 = v38;
  v204 = v30;
  v216 = v26;
  v205 = v24;
  v202 = v14;
  v203 = v17;
  v208 = v34;
  v225 = v37;
  v40 = [v38 tetraWrapped];

  v41 = [a12 tetraRegistration];
  if (!v41)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  v42 = v41;
  v220 = v40;
  v43 = [v40 publicKey];
  v44 = [v43 compactRepresentation];

  v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v221 = v42;
  v48 = [*&v42[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signingPublicKey] compactRepresentation];
  v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  specialized static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(a5, v223, v224, v45, v47, v226, a9, a10, v49, v51);
  v53 = v52;
  v55 = v54;
  outlined consume of Data._Representation(v49, v51);
  outlined consume of Data._Representation(v45, v47);

  v56 = v53(1);
  v58 = v57;

  v59.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v56, v58);
  v60 = static os_log_type_t.info.getter();
  v61 = MessageProtectionLog();
  if (!v61)
  {
    goto LABEL_39;
  }

  v62 = v61;
  v63 = os_log_type_enabled(v61, v60);
  v226 = v53;
  v207 = a12;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v224 = v55;
    v65 = v64;
    v66 = swift_slowAlloc();
    v230[0] = v66;
    *v65 = 136315138;
    v67 = [(objc_class *)v59.super.isa base64EncodedStringWithOptions:0];
    isa = v59.super.isa;
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    v72 = v69;
    v59.super.isa = isa;
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v71, v230);

    *(v65 + 4) = v73;
    _os_log_impl(&dword_22B404000, v62, v60, "Encrypting TetraNoRatchet for conversationID: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x231892DF0](v66, -1, -1);
    v74 = v65;
    v55 = v224;
    MEMORY[0x231892DF0](v74, -1, -1);
  }

  v75 = v225;
  v76 = v228;
  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a11 + 16))
  {
    v79 = specialized __RawDictionaryStorage.find<A>(_:)(v77, v78);
    v81 = v80;

    if (v81)
    {
      v82 = (*(a11 + 56) + 16 * v79);
      v84 = *v82;
      v83 = v82[1];
      outlined copy of Data._Representation(*v82, v83);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v84 = 0;
  v83 = 0xF000000000000000;
LABEL_11:

  v85 = v227;
  outlined copy of Data._Representation(v227, v76);
  v86 = v221;
  v87 = v222;
  TetraSessionState.init(remoteTetraRegistration:sessionDST:)(v86, v226, v55, v75);
  if (v87)
  {

    outlined consume of Data._Representation(v85, v76);
    outlined consume of Data?(v84, v83);

LABEL_35:
    v183 = *MEMORY[0x277D85DE8];
    return v85;
  }

  v223 = 0;

  v88 = TetraRegistration.computeKeysHash()();
  v90 = *&v86[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion];
  if (v90 >= 0xF)
  {
    v90 = 15;
  }

  v196 = v90;
  *v75 = v90;
  v91 = v219;
  v92 = *(v75 + *(v219 + 36));
  v200 = v59.super.isa;
  v221 = v86;
  v201 = v83;
  v198 = v89;
  v197 = v88;
  v85 = v84;
  if (v92)
  {
    v222 = 0;
    v199 = 0xF000000000000000;
  }

  else
  {
    v93 = v88;
    v94 = v89;
    outlined copy of Data._Representation(v88, v89);
    v91 = v219;
    v222 = v93;
    v199 = v94;
  }

  v95 = v227;
  v96 = v75 + *(v91 + 20);
  v97 = type metadata accessor for TetraRatchetState(0);
  v98 = &v96[*(v97 + 24)];

  v99 = v228;
  v100 = v201;
  v224 = v55;
  v101 = v223;
  TetraOutgoingSymmetricRatchet.sealMessage(_:)(v95, v228, v85, v201, v230);
  if (v101)
  {
    outlined consume of Data?(v222, v199);

    outlined consume of Data._Representation(v197, v198);
    outlined consume of Data._Representation(v95, v99);
    outlined consume of Data?(v85, v100);

    _s17MessageProtection17TetraSessionStateVWOhTm_0(v75, type metadata accessor for TetraSessionState);

    goto LABEL_35;
  }

  v102 = v98;
  v192 = v85;
  v223 = 0;
  v103 = v230[0];
  v104 = v230[1];
  v105 = *(v97 + 28);
  v106 = *&v96[v105];
  if (v106 < 0x28)
  {
    *&v96[v105] = v106 + 1;
  }

  LODWORD(v219) = v231;
  v195 = v232;
  v194 = v233;
  outlined copy of Data._Representation(v103, v104);
  TetraECDHKey.publicKey.getter();
  v107 = type metadata accessor for TetraOutgoingKeyContent(0);
  v108 = *(v107 + 20);
  v109 = (*(v209 + 48))(&v98[v108], 1, v210);
  v110 = 1;
  v111 = v208;
  if (!v109)
  {
    v112 = v206;
    outlined init with copy of TetraKEM768Key(&v98[v108], v206);
    TetraKEM768Key.publicKey.getter(v218);
    _s17MessageProtection17TetraSessionStateVWOhTm_0(v112, type metadata accessor for TetraKEM768Key);
    v110 = 0;
  }

  v113 = type metadata accessor for Kyber768.PublicKey();
  v114 = *(v113 - 8);
  v115 = *(v114 + 56);
  v116 = v114 + 56;
  v115(v218, v110, 1, v113);
  v117 = &v102[*(v107 + 28)];
  v118 = v117[1];
  v206 = *v117;
  v193 = v118;
  outlined copy of Data?(v206, v118);
  v210 = v226(1);
  v209 = v119;
  outlined consume of Data._Representation(v197, v198);
  outlined consume of Data._Representation(v103, v104);
  v120 = v211;
  v121 = v103;
  v122 = v211[8];
  v191 = v113;
  v190 = v115;
  v197 = v116;
  v115(v111 + v122, 1, 1, v113);
  v123 = (v111 + v120[9]);
  *v123 = xmmword_22B48D7D0;
  v124 = v111 + v120[10];
  v187 = xmmword_22B48D7D0;
  *v124 = xmmword_22B48D7D0;
  v125 = v120[12];
  v198 = (v111 + v120[13]);
  *(v111 + 8) = v121;
  *(v111 + 16) = v104;
  v126 = (v111 + v125);
  v127 = v212;
  v128 = v213;
  v189 = (v111 + v125);
  *v126 = v212;
  v126[1] = v128;
  *(v111 + 24) = v219;
  v129 = *(v215 + 32);
  v188 = v120[7];
  v130 = v217;
  v217 = v129;
  v186[1] = v215 + 32;
  (v129)(v111 + v188, v130, v216);
  outlined copy of Data._Representation(v127, v128);
  outlined assign with take of P256.KeyAgreement.PublicKey?(v218, v111 + v122, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  outlined consume of Data?(*v123, v123[1]);
  v131 = v193;
  *v123 = v206;
  v123[1] = v131;
  outlined consume of Data?(*v124, *(v124 + 8));

  v132 = v199;
  *v124 = v222;
  *(v124 + 8) = v132;
  v133 = (v111 + v120[11]);
  v134 = v194;
  *v133 = v195;
  v133[1] = v134;
  *v111 = v196;
  v135 = (v111 + v120[14]);
  v136 = v209;
  *v135 = v210;
  v135[1] = v136;
  v137 = v198;
  *v198 = 0;
  *(v137 + 4) = 1;
  v229 = 0;
  v138 = [objc_opt_self() sharedManager];
  v230[0] = 0;
  v139 = [v138 counterForDestinationWithIdentityKey:v207 sendingIdentity:v214 error:v230 success:&v229];
  v140 = v230[0];
  if (v230[0])
  {
    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    swift_allocError();
    *v141 = 7;
    swift_willThrow();
    v85 = v140;

    outlined consume of Data._Representation(v227, v228);
    outlined consume of Data?(v192, v201);

    _s17MessageProtection17TetraSessionStateVWOhTm_0(v111, type metadata accessor for TetraRatchetOuterMessage);
    _s17MessageProtection17TetraSessionStateVWOhTm_0(v225, type metadata accessor for TetraSessionState);

    goto LABEL_35;
  }

  v222 = v123;
  v142 = v190;
  v143 = v191;
  v144 = v200;
  if ((v229 & 1) == 0)
  {
    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    v85 = swift_allocError();
    *v182 = 7;
    swift_willThrow();

    outlined consume of Data._Representation(v227, v228);
    outlined consume of Data?(v192, v201);

    _s17MessageProtection17TetraSessionStateVWOhTm_0(v111, type metadata accessor for TetraRatchetOuterMessage);
    _s17MessageProtection17TetraSessionStateVWOhTm_0(v225, type metadata accessor for TetraSessionState);

    goto LABEL_35;
  }

  v210 = v138;
  LODWORD(v213) = v139;
  v145 = *(v111 + 8);
  v214 = *(v111 + 16);
  v211 = *v189;
  v212 = v189[1];
  (*(v215 + 16))(v204, v111 + v188, v216);
  v146 = *v124;
  v218 = *(v124 + 8);
  result = v142(v205, 1, 1, v143);
  v215 = v222[1];
  if (v215 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v207 = *v222;
    v148 = v207;
    v149 = *v133;
    v150 = v133[1];
    v222 = v150;

    v199 = v145;
    outlined copy of Data._Representation(v145, v214);
    v151 = v211;
    v152 = v212;
    outlined copy of Data._Representation(v211, v212);
    outlined copy of Data?(v146, v218);
    outlined copy of Data?(v148, v215);
    outlined copy of Data._Representation(v149, v150);
    v206 = v146;
    v226 = v226(1);
    v209 = v153;

    v154 = v202;
    v155 = v202[8];
    v156 = v203;
    v190(&v203[v155], 1, 1, v191);
    v157 = v156 + v154[9];
    v158 = v187;
    *v157 = v187;
    v159 = v156 + v154[10];
    *v159 = v158;
    v160 = v214;
    *(v156 + 8) = v199;
    *(v156 + 16) = v160;
    v161 = (v156 + v154[12]);
    *v161 = v151;
    v161[1] = v152;
    *(v156 + 24) = v219;
    (v217)(v156 + v154[7], v204, v216);
    outlined assign with take of P256.KeyAgreement.PublicKey?(v205, v156 + v155, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    outlined consume of Data?(*v157, *(v157 + 8));
    v162 = v215;
    *v157 = v207;
    *(v157 + 8) = v162;
    outlined consume of Data?(*v159, *(v159 + 8));
    v163 = v218;
    *v159 = v206;
    *(v159 + 8) = v163;
    v164 = (v156 + v154[11]);
    v165 = v222;
    *v164 = v149;
    v164[1] = v165;
    *v156 = v196;
    v166 = (v156 + v154[14]);
    v167 = v209;
    *v166 = v226;
    v166[1] = v167;
    *(v156 + v154[13]) = v213;
    v168 = static os_log_type_t.info.getter();
    result = MessageProtectionLog();
    if (result)
    {
      v85 = result;
      if (os_log_type_enabled(result, v168))
      {
        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        v230[0] = v170;
        *v169 = 136315138;
        v171 = [(objc_class *)v200 base64EncodedStringWithOptions:0];
        v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v174 = v173;

        v175 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v174, v230);

        *(v169 + 4) = v175;
        v156 = v203;
        _os_log_impl(&dword_22B404000, v85, v168, "Finished Encrypting TetraNoRatchet for conversationID: %s", v169, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v170);
        MEMORY[0x231892DF0](v170, -1, -1);
        MEMORY[0x231892DF0](v169, -1, -1);
      }

      v176 = v225;
      v177 = v228;
      v178 = v220;
      v179 = v223;
      v180 = TetraNoRatchetOuterMessage.serializedData(signedBy:)(v220);
      v223 = v179;
      if (v179)
      {

        outlined consume of Data._Representation(v227, v177);
        outlined consume of Data?(v192, v201);
      }

      else
      {
        v184 = v180;
        v185 = v181;
        v85 = Data._bridgeToObjectiveC()().super.isa;

        outlined consume of Data._Representation(v227, v177);
        outlined consume of Data?(v192, v201);

        outlined consume of Data._Representation(v184, v185);
      }

      _s17MessageProtection17TetraSessionStateVWOhTm_0(v156, type metadata accessor for TetraNoRatchetOuterMessage);
      _s17MessageProtection17TetraSessionStateVWOhTm_0(v111, type metadata accessor for TetraRatchetOuterMessage);
      _s17MessageProtection17TetraSessionStateVWOhTm_0(v176, type metadata accessor for TetraSessionState);

      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of TetraKEM768Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraKEM768Key(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s17MessageProtection17TetraSessionStateVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of P256.KeyAgreement.PublicKey?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of TetraRatchetState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static TetraPBPadding.padMessage(_:)()
{
  type metadata accessor for TetraPB_TetraInnerMessage(0);
  lazy protocol witness table accessor for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage();
  v1 = Message.serializedData(partial:)();
  if (v0)
  {
    goto LABEL_38;
  }

  v3 = v1;
  v4 = v2;
  v5 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(v2);
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (v5 != 2)
  {
    v6 = 0;
    goto LABEL_15;
  }

  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(v1), v1))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v6 = HIDWORD(v1) - v1;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (HIDWORD(v6))
  {
    lazy protocol witness table accessor for type TetraPBErrors and conformance TetraPBErrors();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(v3, v4);
    return v3;
  }

LABEL_15:
  v9 = static Padme.paddedMessageByteCount(_:)();
  if (v10)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v6 == v9)
  {
    return v3;
  }

  v11 = v9 >= v6;
  v12 = v9 - v6;
  v13 = !v11;
  if (!v11)
  {
    goto LABEL_32;
  }

  if (v12 > 1)
  {
LABEL_27:
    if (v13)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v16 = static TetraPBPadding.paddingBytesToAdd(for:)(v12);
    v18 = v17;
    v24 = v3;
    v25 = v4;
    v23[3] = MEMORY[0x277CC9318];
    v23[4] = MEMORY[0x277CC9300];
    v23[0] = v16;
    v23[1] = v17;
    v19 = __swift_project_boxed_opaque_existential_1(v23, MEMORY[0x277CC9318]);
    v20 = *v19;
    v21 = v19[1];
    outlined copy of Data._Representation(v3, v4);
    outlined copy of Data._Representation(v16, v18);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v20, v21);
    outlined consume of Data._Representation(v16, v18);
    outlined consume of Data._Representation(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v24;
  }

  v14 = static Padme.paddedMessageByteCount(_:)();
  if ((v15 & 1) == 0)
  {
    v11 = v14 >= v6;
    v12 = v14 - v6;
    v13 = !v11;
    goto LABEL_27;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t static TetraPBPadding.paddingBytesToAdd(for:)(unint64_t result)
{
  if (result < 2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v1 = result;
  if (result > 0x100000000)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (result >= 0x10000001)
  {
    v4 = 5;
  }

  if (result > 0x200000)
  {
    v3 = v4;
  }

  if (result > 0x4000)
  {
    v2 = v3;
  }

  if (result >= 0x81)
  {
    v5 = v2;
  }

  else
  {
    v5 = 1;
  }

  v17 = specialized Data.init(count:)(v5);
  v18 = v6;
  v7 = ~v5;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v17, v7 + v1);
  v15 = specialized Data.init(count:)(v7 + v1);
  v16 = v8;
  result = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v15, v7 + v1);
  if (result)
  {
    goto LABEL_17;
  }

  v9 = v15;
  v10 = v16;
  v15 = &outlined read-only object #0 of static TetraPBPadding.paddingBytesToAdd(for:);
  v11 = v17;
  v12 = v18;
  outlined copy of Data._Representation(v17, v18);
  specialized Array.append<A>(contentsOf:)(v11, v12);
  outlined copy of Data._Representation(v9, v10);
  result = specialized Array.append<A>(contentsOf:)(v9, v10);
  if (v15[2] == v1)
  {

    v14 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v13);

    outlined consume of Data._Representation(v9, v10);
    outlined consume of Data._Representation(v11, v12);

    return v14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t closure #1 in static TetraPBPadding.paddingBytesToAdd(for:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (!result)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v3 = HIDWORD(a3);
  if (!HIDWORD(a3))
  {
    do
    {
      if (a3 <= 0x7F && ~result + a2 == v3)
      {
        *(result + v3) = a3;
        return result;
      }

      *(result + v3) = a3 | 0x80;
      LODWORD(a3) = a3 >> 7;
      ++v3;
    }

    while (!__OFADD__(v3, 1));
    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type TetraPBErrors and conformance TetraPBErrors()
{
  result = lazy protocol witness table cache variable for type TetraPBErrors and conformance TetraPBErrors;
  if (!lazy protocol witness table cache variable for type TetraPBErrors and conformance TetraPBErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPBErrors and conformance TetraPBErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPBErrors and conformance TetraPBErrors;
  if (!lazy protocol witness table cache variable for type TetraPBErrors and conformance TetraPBErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPBErrors and conformance TetraPBErrors);
  }

  return result;
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      outlined consume of Data._Representation(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_22B48D660;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v22, a2);
      v7 = v22;
      v8 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      outlined consume of Data._Representation(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      closure #1 in static TetraPBPadding.paddingBytesToAdd(for:)(&v22, &v22 + BYTE6(v4), a2);
      v7 = v22;
      v8 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *a1 = v7;
    a1[1] = v8;
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    closure #1 in static TetraPBPadding.paddingBytesToAdd(for:)(&v22, &v22, a2);
LABEL_15:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  outlined consume of Data._Representation(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_22B48D660;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v9 = *(&v22 + 1);
  v10 = *(v22 + 16);
  v11 = *(v22 + 24);
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    v15 = v10 - v14;
    if (__OFSUB__(v10, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v11, v10);
      v17 = v11 - v10;
      if (!v16)
      {
        v18 = MEMORY[0x231890D50]();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        closure #1 in static TetraPBPadding.paddingBytesToAdd(for:)(v13 + v15, v13 + v15 + v19, a2);
        *a1 = v22;
        a1[1] = v9 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, unint64_t a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = __DataStorage._offset.getter();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = MEMORY[0x231890D50]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  closure #1 in static TetraPBPadding.paddingBytesToAdd(for:)(v8 + v10, v8 + v10 + v13, a2);
}

uint64_t static PaddySymmetricLayer.seal(_:authenticatedData:using:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v43 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for AES.GCM.SealedBox();
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = *(v16 + 56);
  static PaddySymmetricLayer.deriveSymmetricKeyingFromMessageKey(_:)();
  v44 = a1;
  v45 = a2;
  outlined init with copy of (key: SymmetricKey, nonce: AES.GCM.Nonce)(v22, v20);
  v24 = *(v16 + 56);
  v25 = type metadata accessor for AES.GCM.Nonce();
  v26 = *(v25 - 8);
  (*(v26 + 32))(v10, &v20[v24], v25);
  (*(v26 + 56))(v10, 0, 1, v25);
  v48 = a3;
  v49 = v43;
  lazy protocol witness table accessor for type Data and conformance Data();
  v27 = MEMORY[0x277CC9318];
  v28 = v50;
  static AES.GCM.seal<A, B>(_:using:nonce:authenticating:)();
  outlined destroy of TetraSessionStates?(v10, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  if (v28)
  {
    outlined destroy of TetraSessionStates?(v22, &_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
    v29 = type metadata accessor for SymmetricKey();
    return (*(*(v29 - 8) + 8))(v20, v29);
  }

  else
  {
    v31 = type metadata accessor for SymmetricKey();
    (*(*(v31 - 8) + 8))(v20, v31);
    v32 = AES.GCM.SealedBox.ciphertext.getter();
    v34 = v33;
    v35 = AES.GCM.SealedBox.tag.getter();
    v37 = v36;
    v48 = v32;
    v49 = v34;
    v46 = v27;
    v47 = MEMORY[0x277CC9300];
    v44 = v35;
    v45 = v36;
    v38 = __swift_project_boxed_opaque_existential_1(&v44, v27);
    v39 = *v38;
    v40 = v38[1];
    outlined copy of Data._Representation(v32, v34);
    outlined copy of Data._Representation(v35, v37);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v39, v40);
    outlined consume of Data._Representation(v35, v37);
    outlined consume of Data._Representation(v32, v34);
    (*(v41 + 8))(v14, v42);
    outlined destroy of TetraSessionStates?(v22, &_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
    __swift_destroy_boxed_opaque_existential_1(&v44);
    return v48;
  }
}

uint64_t static PaddySymmetricLayer.open(_:authenticatedData:using:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v33 = a3;
  *(&v33 + 1) = a4;
  v38 = type metadata accessor for AES.GCM.SealedBox();
  v34 = *(v38 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v38);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v32 - v16;
  v18 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v18)
    {
      v19 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v18 != 2)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  v22 = __OFSUB__(v20, v21);
  v19 = v20 - v21;
  if (v22)
  {
    __break(1u);
LABEL_8:
    LODWORD(v19) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v19 = v19;
  }

LABEL_10:
  if (v19 < 17)
  {
    goto LABEL_27;
  }

  v23 = *(v10 + 48);
  static PaddySymmetricLayer.deriveSymmetricKeyingFromMessageKey(_:)();
  result = outlined init with copy of (key: SymmetricKey, nonce: AES.GCM.Nonce)(v17, v14);
  if (v18 == 2)
  {
    v26 = *(a1 + 16);
    v25 = *(a1 + 24);
    v22 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (!v22)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v24 = BYTE6(a2);
    goto LABEL_19;
  }

  if (v18 != 1)
  {
    goto LABEL_18;
  }

  LODWORD(v24) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v24;
LABEL_19:
  v27 = v24 - 16;
  if (__OFSUB__(v24, 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v28 = *(v10 + 48);
  outlined copy of Data._Representation(a1, a2);
  specialized Collection.prefix(_:)(v27, a1, a2, &v37);
  v36[1] = v37;
  outlined copy of Data._Representation(a1, a2);
  specialized BidirectionalCollection.suffix(_:)(16, a1, a2, v36);
  v35 = v36[0];
  v29 = lazy protocol witness table accessor for type Data and conformance Data();
  AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
  if (v4)
  {
    outlined destroy of TetraSessionStates?(v17, &_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
    v30 = type metadata accessor for SymmetricKey();
    (*(*(v30 - 8) + 8))(v14, v30);
  }

  else
  {
    v31 = type metadata accessor for SymmetricKey();
    (*(*(v31 - 8) + 8))(v14, v31);
    v37 = v33;
    v29 = static AES.GCM.open<A>(_:using:authenticating:)();
    (*(v34 + 8))(v9, v38);
    outlined destroy of TetraSessionStates?(v17, &_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
  }

  return v29;
}

uint64_t one-time initialization function for paddyKDFStringPrefix()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000001ALL, 0x800000022B496320);
  paddyKDFStringPrefix = result;
  unk_27D8C2020 = v1;
  return result;
}

uint64_t one-time initialization function for paddySymmetricAESKeyDST(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4)
{
  if (one-time initialization token for paddyKDFStringPrefix != -1)
  {
    swift_once();
  }

  v7 = paddyKDFStringPrefix;
  v8 = qword_27D8C2020;
  outlined copy of Data._Representation(paddyKDFStringPrefix, qword_27D8C2020);
  v9 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0x2D4D43472D534541, a2);
  v11 = v10;
  *a3 = v7;
  *a4 = v8;
  v16[3] = MEMORY[0x277CC9318];
  v16[4] = MEMORY[0x277CC9300];
  v16[0] = v9;
  v16[1] = v10;
  v12 = __swift_project_boxed_opaque_existential_1(v16, MEMORY[0x277CC9318]);
  v13 = *v12;
  v14 = v12[1];
  outlined copy of Data._Representation(v7, v8);
  outlined copy of Data._Representation(v9, v11);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v13, v14);
  outlined consume of Data._Representation(v9, v11);
  outlined consume of Data._Representation(v7, v8);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t static PaddySymmetricLayer.deriveSymmetricKeyingFromMessageKey(_:)()
{
  v0 = type metadata accessor for SymmetricKey();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SymmetricKey.bitCount.getter() == 256)
  {
    if (one-time initialization token for paddySymmetricAESKeyDST == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = paddySymmetricAESKeyDST;
  v8 = qword_27D8C2030;
  outlined copy of Data._Representation(paddySymmetricAESKeyDST, qword_27D8C2030);
  type metadata accessor for SHA256();
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_3(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_3(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330]);
  lazy protocol witness table accessor for type Data and conformance Data();
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
  outlined consume of Data?(v7, v8);
  if (one-time initialization token for paddySymmetricAESNonceDST != -1)
  {
    swift_once();
  }

  v7 = paddySymmetricAESNonceDST;
  v8 = qword_27D8C2040;
  outlined copy of Data._Representation(paddySymmetricAESNonceDST, qword_27D8C2040);
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
  outlined consume of Data?(v7, v8);
  type metadata accessor for AES.GCM.Nonce();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t outlined init with copy of (key: SymmetricKey, nonce: AES.GCM.Nonce)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in static PaddySymmetricLayer.deriveSymmetricKeyingFromMessageKey(_:)()
{
  lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
  result = AES.GCM.Nonce.init<A>(data:)();
  if (v0)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer);
  }

  return result;
}

uint64_t I2OSP(value:outputByteCount:)(unint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x8000000000000000) != 0 || (v4 = a2 - 1, a2 < 1))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v5 = a1;
  if (a1 <= 1)
  {
    v5 = 1;
  }

  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    goto LABEL_69;
  }

  v8 = ceil(log2(v7) * 0.125);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v9 = v8;
  if (v8 > a2)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v44 = specialized Data.init(count:)(a2);
  v45 = v10;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v44, 0);
  v11 = a2 - v9;
  if (__OFSUB__(a2, v9))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v11 >= a2)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  v13 = v44;
  v12 = v45;
  v14 = v9 - 1;
  v42 = v4;
  while (1)
  {
    v15 = v4 - v11;
    if (__OFSUB__(v4, v11))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
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
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if ((v15 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_57;
    }

    v16 = 8 * v15;
    if ((v16 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
LABEL_17:
      LOBYTE(v17) = 0;
      goto LABEL_21;
    }

    if (v16 < 0)
    {
      if (v16 == -64)
      {
        goto LABEL_17;
      }

      v17 = a1 << (-v16 & 0x38);
    }

    else
    {
      if (v16 == 64)
      {
        goto LABEL_17;
      }

      v17 = a1 >> (v16 & 0x38);
    }

LABEL_21:
    v18 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      break;
    }

    if (v18)
    {
      if (v11 >= v13 >> 32 || v11 < v13)
      {
        goto LABEL_61;
      }

      v22 = v12 & 0x3FFFFFFFFFFFFFFFLL;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (__DataStorage._bytes.getter() && __OFSUB__(v13, __DataStorage._offset.getter()))
        {
          goto LABEL_66;
        }

        v23 = type metadata accessor for __DataStorage();
        v24 = *(v23 + 48);
        v25 = *(v23 + 52);
        swift_allocObject();
        v26 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v22 = v26;
        v4 = v42;
      }

      __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
      v27 = __DataStorage._bytes.getter();
      if (!v27)
      {
        goto LABEL_77;
      }

      v28 = v27;
      v29 = __DataStorage._offset.getter();
      if (__OFSUB__(v11, v29))
      {
        goto LABEL_63;
      }

      *(v28 + v11 - v29) = v17;
      v12 = v22 | 0x4000000000000000;
      if (!v14)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v44 = v13;
      LOWORD(v45) = v12;
      BYTE2(v45) = BYTE2(v12);
      BYTE3(v45) = BYTE3(v12);
      BYTE4(v45) = BYTE4(v12);
      BYTE5(v45) = BYTE5(v12);
      BYTE6(v45) = BYTE6(v12);
      if (v11 >= BYTE6(v12))
      {
        goto LABEL_59;
      }

      *(&v44 + v11) = v17;
      v13 = v44;
      v2 = v2 & 0xF00000000000000 | v45 | ((WORD2(v45) | (BYTE6(v45) << 16)) << 32);
      v12 = v2;
      if (!v14)
      {
        goto LABEL_55;
      }
    }

LABEL_13:
    --v14;
    v6 = __OFADD__(v11++, 1);
    if (v6)
    {
      goto LABEL_58;
    }
  }

  if (v18 != 2)
  {
    goto LABEL_76;
  }

  if (v11 < *(v13 + 16))
  {
    goto LABEL_60;
  }

  if (v11 >= *(v13 + 24))
  {
    goto LABEL_62;
  }

  v19 = v12 & 0x3FFFFFFFFFFFFFFFLL;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (__DataStorage._bytes.getter())
    {
      if (__OFSUB__(v20, __DataStorage._offset.getter()))
      {
        goto LABEL_67;
      }

      if (__OFSUB__(v21, v20))
      {
        goto LABEL_65;
      }
    }

    else if (__OFSUB__(v21, v20))
    {
      goto LABEL_65;
    }

    v30 = type metadata accessor for __DataStorage();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v33 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v19 = v33;
    v4 = v42;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = *(v13 + 16);
    v35 = *(v13 + 24);
    type metadata accessor for Data.RangeReference();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = v35;
    v4 = v42;

    v13 = v36;
  }

  __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
  v37 = __DataStorage._bytes.getter();
  if (!v37)
  {
    goto LABEL_78;
  }

  v38 = v37;
  v39 = __DataStorage._offset.getter();
  if (__OFSUB__(v11, v39))
  {
    goto LABEL_64;
  }

  *(v38 + v11 - v39) = v17;
  v12 = v19 | 0x8000000000000000;
  if (v14)
  {
    goto LABEL_13;
  }

LABEL_55:
  v40 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t TetraMessageSignerFormatter.signedData()()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MessageProtection27TetraMessageSignerFormatter__signedData);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC17MessageProtection27TetraMessageSignerFormatter__signedData + 8));
  return v1;
}

id TetraMessageSignerFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TetraMessageSignerFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraMessageSignerFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      outlined consume of Data._Representation(v5, v4);
      __b = v5;
      v24 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_22B48D660;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&__b, a2);
      v7 = __b;
      v8 = v24 | 0x4000000000000000;
    }

    else
    {
      outlined consume of Data._Representation(v5, v4);
      __b = v5;
      LOWORD(v24) = v4;
      BYTE2(v24) = BYTE2(v4);
      BYTE3(v24) = BYTE3(v4);
      BYTE4(v24) = BYTE4(v4);
      BYTE5(v24) = BYTE5(v4);
      BYTE6(v24) = BYTE6(v4);
      memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v24 | ((WORD2(v24) | (BYTE6(v24) << 16)) << 32);
    }

    *a1 = v7;
    a1[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v21 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = *a1;

  outlined consume of Data._Representation(v5, v4);
  __b = v5;
  v24 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_22B48D660;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v10 = v24;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  v13 = __DataStorage._bytes.getter();
  if (v13)
  {
    v14 = v13;
    v15 = __DataStorage._offset.getter();
    v16 = v11 - v15;
    if (__OFSUB__(v11, v15))
    {
      __break(1u);
    }

    else
    {
      v17 = __OFSUB__(v12, v11);
      v18 = v12 - v11;
      if (!v17)
      {
        v19 = MEMORY[0x231890D50]();
        if (v19 >= v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }

        memset((v14 + v16), a2, v20);
        *a1 = __b;
        a1[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = __DataStorage._offset.getter();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = MEMORY[0x231890D50]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v14 = *(v13 + 48);

    return v14(a1, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 20);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v16 = *(v15 + 56);

    return v16(a1, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 20);

    return v19(v20, a2, a2, v18);
  }
}

void type metadata completion function for TetraKEM1024Key(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t), unint64_t *a6, void (*a7)(uint64_t))
{
  type metadata accessor for Kyber1024.PrivateKey?(319, a4, a5);
  if (v9 <= 0x3F)
  {
    type metadata accessor for Kyber1024.PrivateKey?(319, a6, a7);
    if (v10 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Kyber1024.PrivateKey?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t TetraKEM1024Key.publicKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TetraKEM1024Key(0);
  outlined init with copy of TetraSessionStates?(v1 + *(v16 + 20), v10, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of TetraSessionStates?(v10, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
    outlined init with copy of TetraSessionStates?(v1, v6, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
    v17 = type metadata accessor for Kyber1024.PrivateKey();
    v18 = *(v17 - 8);
    result = (*(v18 + 48))(v6, 1, v17);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      Kyber1024.PrivateKey.publicKey.getter();
      return (*(v18 + 8))(v6, v17);
    }
  }

  else
  {
    _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVWObTm_0(v10, v15, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
    v20 = type metadata accessor for Kyber1024.PublicKey();
    (*(*(v20 - 8) + 16))(a1, v15, v20);
    return outlined destroy of TetraKEM1024Key(v15, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
  }

  return result;
}

uint64_t TetraKEM1024Key.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-1] - v9;
  if (one-time initialization token for SEPisAvailable != -1)
  {
    swift_once();
  }

  if (static MPStaticProperties.SEPisAvailable == 1 && (v18[3] = &type metadata for MessageProtectionFeatureFlags, v18[4] = lazy protocol witness table accessor for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags(), LOBYTE(v18[0]) = 1, v11 = isFeatureEnabled(_:)(), __swift_destroy_boxed_opaque_existential_1(v18), (v11 & 1) != 0))
  {
    result = SecureEnclave.Kyber1024.PrivateKey.init()(v10);
    if (v1)
    {
      return result;
    }

    v13 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    v14 = type metadata accessor for TetraKEM1024Key(0);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v10, a1 + *(v14 + 20), &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
    v15 = type metadata accessor for Kyber1024.PrivateKey();
  }

  else
  {
    result = static Kyber1024.PrivateKey.generate()();
    if (v1)
    {
      return result;
    }

    v16 = type metadata accessor for Kyber1024.PrivateKey();
    (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v6, a1, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
    a1 += *(type metadata accessor for TetraKEM1024Key(0) + 20);
    v15 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
  }

  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

uint64_t TetraKEM1024Key.decapsulate(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v23[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v23 - v9;
  v11 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TetraKEM1024Key(0);
  outlined init with copy of TetraSessionStates?(v2 + *(v16 + 20), v10, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of TetraSessionStates?(v10, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
    outlined init with copy of TetraSessionStates?(v2, v6, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
    v17 = type metadata accessor for Kyber1024.PrivateKey();
    v18 = *(v17 - 8);
    result = (*(v18 + 48))(v6, 1, v17);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      Kyber1024.PrivateKey.decapsulate(_:)();
      return (*(v18 + 8))(v6, v17);
    }
  }

  else
  {
    _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVWObTm_0(v10, v15, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
    v20 = v23[5];
    v21 = closure #1 in SecureEnclave.Kyber1024.PrivateKey.decapsulate(_:)(*&v15[*(v11 + 24)]);
    if (!v20)
    {
      v23[2] = v21;
      v23[3] = v22;
      SymmetricKey.init<A>(data:)();
    }

    return outlined destroy of TetraKEM1024Key(v15, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
  }

  return result;
}

uint64_t TetraKEM768Key.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-1] - v9;
  if (one-time initialization token for SEPisAvailable != -1)
  {
    swift_once();
  }

  if (static MPStaticProperties.SEPisAvailable == 1 && (v18[3] = &type metadata for MessageProtectionFeatureFlags, v18[4] = lazy protocol witness table accessor for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags(), LOBYTE(v18[0]) = 2, v11 = isFeatureEnabled(_:)(), __swift_destroy_boxed_opaque_existential_1(v18), (v11 & 1) != 0))
  {
    result = SecureEnclave.Kyber768.PrivateKey.init()(v10);
    if (v1)
    {
      return result;
    }

    v13 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    v14 = type metadata accessor for TetraKEM768Key(0);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v10, a1 + *(v14 + 20), &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
    v15 = type metadata accessor for Kyber768.PrivateKey();
  }

  else
  {
    result = static Kyber768.PrivateKey.generate()();
    if (v1)
    {
      return result;
    }

    v16 = type metadata accessor for Kyber768.PrivateKey();
    (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v6, a1, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
    a1 += *(type metadata accessor for TetraKEM768Key(0) + 20);
    v15 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
  }

  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

uint64_t TetraKEM768Key.decapsulate(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v23[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v23 - v9;
  v11 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TetraKEM768Key(0);
  outlined init with copy of TetraSessionStates?(v2 + *(v16 + 20), v10, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of TetraSessionStates?(v10, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
    outlined init with copy of TetraSessionStates?(v2, v6, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
    v17 = type metadata accessor for Kyber768.PrivateKey();
    v18 = *(v17 - 8);
    result = (*(v18 + 48))(v6, 1, v17);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      Kyber768.PrivateKey.decapsulate(_:)();
      return (*(v18 + 8))(v6, v17);
    }
  }

  else
  {
    _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVWObTm_0(v10, v15, type metadata accessor for SecureEnclave.Kyber768.PrivateKey);
    v20 = v23[5];
    v21 = closure #1 in SecureEnclave.Kyber1024.PrivateKey.decapsulate(_:)(*&v15[*(v11 + 24)]);
    if (!v20)
    {
      v23[2] = v21;
      v23[3] = v22;
      SymmetricKey.init<A>(data:)();
    }

    return outlined destroy of TetraKEM1024Key(v15, type metadata accessor for SecureEnclave.Kyber768.PrivateKey);
  }

  return result;
}

uint64_t TetraKEM768Key.publicKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TetraKEM768Key(0);
  outlined init with copy of TetraSessionStates?(v1 + *(v16 + 20), v10, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of TetraSessionStates?(v10, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
    outlined init with copy of TetraSessionStates?(v1, v6, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
    v17 = type metadata accessor for Kyber768.PrivateKey();
    v18 = *(v17 - 8);
    result = (*(v18 + 48))(v6, 1, v17);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      Kyber768.PrivateKey.publicKey.getter();
      return (*(v18 + 8))(v6, v17);
    }
  }

  else
  {
    _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVWObTm_0(v10, v15, type metadata accessor for SecureEnclave.Kyber768.PrivateKey);
    v20 = type metadata accessor for Kyber768.PublicKey();
    (*(*(v20 - 8) + 16))(a1, v15, v20);
    return outlined destroy of TetraKEM1024Key(v15, type metadata accessor for SecureEnclave.Kyber768.PrivateKey);
  }

  return result;
}

uint64_t TetraKEM768Key.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection14TetraKEM768KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection14TetraKEM768KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for Kyber768.PrivateKey();
  lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type Kyber768.PrivateKey and conformance Kyber768.PrivateKey, MEMORY[0x277CC55C0]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for TetraKEM768Key(0) + 20);
    v11[14] = 1;
    type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
    lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey and conformance SecureEnclave.Kyber768.PrivateKey, type metadata accessor for SecureEnclave.Kyber768.PrivateKey);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t TetraKEM768Key.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v28 = &v24 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection14TetraKEM768KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection14TetraKEM768KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMR);
  v27 = *(v29 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v24 - v12;
  v14 = type metadata accessor for TetraKEM768Key(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v19 = v27;
  v20 = v17;
  type metadata accessor for Kyber768.PrivateKey();
  v31 = 0;
  lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type Kyber768.PrivateKey and conformance Kyber768.PrivateKey, MEMORY[0x277CC55C0]);
  v21 = v28;
  v22 = v29;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v21, v20, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
  v30 = 1;
  lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey and conformance SecureEnclave.Kyber768.PrivateKey, type metadata accessor for SecureEnclave.Kyber768.PrivateKey);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v19 + 8))(v13, v22);
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v7, v20 + *(v25 + 20), &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  outlined init with copy of TetraKEM1024Key(v20, v26, type metadata accessor for TetraKEM768Key);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of TetraKEM1024Key(v20, type metadata accessor for TetraKEM768Key);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraKEM768Key.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraKEM768Key.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TetraKEM1024Key.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection15TetraKEM1024KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection15TetraKEM1024KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for Kyber1024.PrivateKey();
  lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey, MEMORY[0x277CC55D8]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for TetraKEM1024Key(0) + 20);
    v11[14] = 1;
    type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
    lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey and conformance SecureEnclave.Kyber1024.PrivateKey, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t TetraKEM1024Key.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v28 = &v24 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection15TetraKEM1024KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection15TetraKEM1024KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMR);
  v27 = *(v29 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v24 - v12;
  v14 = type metadata accessor for TetraKEM1024Key(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v19 = v27;
  v20 = v17;
  type metadata accessor for Kyber1024.PrivateKey();
  v31 = 0;
  lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey, MEMORY[0x277CC55D8]);
  v21 = v28;
  v22 = v29;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v21, v20, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
  v30 = 1;
  lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey and conformance SecureEnclave.Kyber1024.PrivateKey, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v19 + 8))(v13, v22);
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v7, v20 + *(v25 + 20), &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  outlined init with copy of TetraKEM1024Key(v20, v26, type metadata accessor for TetraKEM1024Key);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of TetraKEM1024Key(v20, type metadata accessor for TetraKEM1024Key);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraKEM768Key.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B7061 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79654B706573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraKEM1024Key.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraKEM1024Key.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of TetraKEM1024Key(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TetraKEM1024Key(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *TetraRegistration.init(tetraRegistrationData:ecdhPublicKey:version:timestamp:signedBy:isEncrypting:)(void *a1, void *a2, int a3, char *a4, int a5, double a6)
{
  v76 = a2;
  v77 = a4;
  v70 = a5;
  v71 = a3;
  v8 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v72 = *(v8 - 8);
  v9 = *(v72 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Kyber1024.PublicKey();
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x28223BE20](v12);
  v74 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BinaryDecodingOptions();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = type metadata accessor for TetraPB_TetraPublicPrekey(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey(&lazy protocol witness table cache variable for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey, type metadata accessor for TetraPB_TetraPublicPrekey);
  v21 = v75;
  Message.init(serializedData:extensions:partial:options:)();
  v22 = MEMORY[0x277D85000];
  if (v21)
  {

    v23 = v78;
LABEL_18:
    type metadata accessor for TetraRegistration();
    v58 = *((*v22 & *v23) + 0x30);
    v59 = *((*v22 & *v23) + 0x34);
    swift_deallocPartialClassInstance();
    return v20;
  }

  v68 = v8;
  v69 = v11;
  v75 = a1;
  v24 = v78;
  *&v78[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_timestamp] = a6;
  v25 = &v20[*(v17 + 20)];
  v26 = v25[1];
  if (v26 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    v27 = *v25;
  }

  if (v26 >> 60 == 15)
  {
    v28 = 0xC000000000000000;
  }

  else
  {
    v28 = v25[1];
  }

  outlined copy of Data?(*v25, v26);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v27, v28);
  v30 = type metadata accessor for Kyber1024ObjCPublicKey(0);
  v31 = objc_allocWithZone(v30);
  v32 = isa;
  *&v81 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v32);
  *(&v81 + 1) = v33;
  v34 = v74;
  Kyber1024.PublicKey.init<A>(dataRepresentation:)();
  (*(v73 + 32))(v31 + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v34, v12);
  v80.receiver = v31;
  v80.super_class = v30;
  v35 = objc_msgSendSuper2(&v80, sel_init);

  v36 = OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey;
  *(v24 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey) = v35;
  v37 = &v20[*(v17 + 24)];
  v38 = *v37;
  v39 = v37[1];
  if (v39 >> 60 == 15)
  {
    v40 = 0;
  }

  else
  {
    v40 = *v37;
  }

  v41 = 0xC000000000000000;
  if (v39 >> 60 != 15)
  {
    v41 = v39;
  }

  v42 = v24 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature;
  *v42 = v40;
  *(v42 + 8) = v41;
  outlined copy of Data?(v38, v39);
  v43 = v76;
  v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  *&v81 = v44;
  *(&v81 + 1) = v46;
  v47 = v69;
  P256.KeyAgreement.PublicKey.init<A>(compactRepresentation:)();
  v76 = v20;
  v74 = 0;
  v48 = OBJC_IVAR____TtC17MessageProtection17TetraRegistration_ecdhPublicKey;
  v49 = v72;
  v23 = v78;
  v50 = v47;
  v51 = v68;
  (*(v72 + 32))(&v78[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_ecdhPublicKey], v50, v68);
  v20 = v77;
  if ((v71 - 13) > 0x12)
  {
    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    swift_allocError();
    *v57 = 1;
    swift_willThrow();

    outlined destroy of TetraPB_TetraPublicPrekey(v76);
    (*(v49 + 8))(&v23[v48], v51);

    outlined consume of Data._Representation(*v42, *(v42 + 8));
    v22 = MEMORY[0x277D85000];
    goto LABEL_18;
  }

  *&v23[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion] = v71;
  *&v23[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signingPublicKey] = v20;
  v52 = type metadata accessor for TetraRegistration();
  v79.receiver = v23;
  v79.super_class = v52;
  v53 = v20;
  v20 = objc_msgSendSuper2(&v79, sel_init);
  v54 = *&v20[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature];
  v55 = *&v20[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature + 8];
  outlined copy of Data._Representation(v54, v55);
  v56 = specialized TetraRegistration.isValidSignature(_:signedBy:isEncrypting:)(v53, v70 & 1);
  outlined consume of Data._Representation(v54, v55);
  if (v56)
  {
    outlined destroy of TetraPB_TetraPublicPrekey(v76);
  }

  else
  {
    v61 = v75;
    if (one-time initialization token for TetraLogger != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, TetraLogger);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_22B404000, v63, v64, "The signature of the registration payload could not be verified.", v65, 2u);
      v66 = v65;
      v61 = v75;
      MEMORY[0x231892DF0](v66, -1, -1);
    }

    lazy protocol witness table accessor for type TetraQueryLookupError and conformance TetraQueryLookupError();
    swift_allocError();
    *v67 = 0;
    swift_willThrow();

    outlined destroy of TetraPB_TetraPublicPrekey(v76);
  }

  return v20;
}

uint64_t TetraRegistration.computeKeysHash()()
{
  v1 = v0;
  v2 = type metadata accessor for SHA384();
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR);
  v7 = *(v6 - 8);
  v45 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v43 - v9;
  v10 = type metadata accessor for Kyber1024.PublicKey();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x231891580](v13);
  v18 = v17;
  (*(v11 + 16))(v15, *(v0 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey) + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v10);
  v19 = Kyber1024.PublicKey.dataRepresentation.getter();
  v21 = v20;
  (*(v11 + 8))(v15, v10);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v19, v21);
  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v51 = v16;
  v52 = v18;
  v26 = MEMORY[0x277CC9318];
  v49 = MEMORY[0x277CC9318];
  v50 = MEMORY[0x277CC9300];
  v47 = v23;
  v48 = v25;
  v27 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x277CC9318]);
  v28 = *v27;
  v29 = v27[1];
  outlined copy of Data._Representation(v16, v18);
  outlined copy of Data._Representation(v23, v25);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v28, v29);
  outlined consume of Data._Representation(v23, v25);
  outlined consume of Data._Representation(v16, v18);
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v30 = v51;
  v31 = v52;
  v32 = v1 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature;
  v33 = *(v1 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature);
  v34 = *(v32 + 8);
  v53 = v51;
  v54 = v52;
  v49 = v26;
  v50 = MEMORY[0x277CC9300];
  v47 = v33;
  v48 = v34;
  v35 = __swift_project_boxed_opaque_existential_1(&v47, v26);
  v36 = *v35;
  v37 = v35[1];
  outlined copy of Data._Representation(v30, v31);
  outlined copy of Data._Representation(v33, v34);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v36, v37);
  outlined consume of Data._Representation(v30, v31);
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v38 = v53;
  v39 = v54;
  lazy protocol witness table accessor for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v38, v39);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v38, v39);
  outlined consume of Data._Representation(v38, v39);
  v40 = v44;
  dispatch thunk of HashFunction.finalize()();
  (*(v46 + 8))(v5, v2);
  *(v40 + *(v45 + 44)) = 16;
  v41 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs14PrefixSequenceVy9CryptoKit12SHA384DigestVG_Tt0g5(v40);
  outlined consume of Data._Representation(v38, v39);
  return v41;
}

uint64_t TetraRegistration.registrationData.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Kyber1024.PublicKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TetraPB_TetraPublicPrekey(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UnknownStorage.init()();
  v11 = &v10[*(v7 + 20)];
  *v11 = xmmword_22B48D7D0;
  v12 = &v10[*(v7 + 24)];
  *v12 = xmmword_22B48D7D0;
  (*(v3 + 16))(v6, *(v1 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey) + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v2);
  v13 = Kyber1024.PublicKey.dataRepresentation.getter();
  v15 = v14;
  (*(v3 + 8))(v6, v2);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v13, v15);
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  outlined consume of Data?(*v11, *(v11 + 1));
  *v11 = v17;
  *(v11 + 1) = v19;
  v20 = *(v1 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature);
  v21 = *(v1 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature + 8);
  v22 = *v12;
  v23 = *(v12 + 1);
  outlined copy of Data._Representation(v20, v21);
  outlined consume of Data?(v22, v23);
  *v12 = v20;
  *(v12 + 1) = v21;
  lazy protocol witness table accessor for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey(&lazy protocol witness table cache variable for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey, type metadata accessor for TetraPB_TetraPublicPrekey);
  v24 = Message.serializedData(partial:)();
  outlined destroy of TetraPB_TetraPublicPrekey(v10);
  return v24;
}

uint64_t outlined destroy of TetraPB_TetraPublicPrekey(uint64_t a1)
{
  v2 = type metadata accessor for TetraPB_TetraPublicPrekey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TetraRegistration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TetraRegistration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraRegistration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TetraRegistration()
{
  result = type metadata singleton initialization cache for TetraRegistration;
  if (!type metadata singleton initialization cache for TetraRegistration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for TetraRegistration()
{
  result = type metadata accessor for P256.KeyAgreement.PublicKey();
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

uint64_t specialized TetraRegistration.isValidSignature(_:signedBy:isEncrypting:)(void *a1, char a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(NGMTetraRegistrationSignatureFormatter) initWithTetraRegistration_];
  v7 = *(v3 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature);
  v8 = *(v3 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature + 8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  LODWORD(a1) = [a1 verifyTetraRegistrationSignature:isa formatter:v6];

  if (!a1)
  {
    if (one-time initialization token for TetraLogger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, TetraLogger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_13;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Tetra signature is incorrect.";
    goto LABEL_12;
  }

  if ((a2 & 1) == 0)
  {
    if (([v6 isStillValidToDecrypt] & 1) == 0)
    {
      if (one-time initialization token for TetraLogger != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, TetraLogger);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_13;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Tetra registration is too old to decrypt key exchange messages with.";
      goto LABEL_12;
    }

LABEL_15:
    v16 = 1;
    goto LABEL_16;
  }

  if ([v6 isStillValidToEncrypt])
  {
    goto LABEL_15;
  }

  if (one-time initialization token for TetraLogger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, TetraLogger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v11, v12))
  {
    goto LABEL_13;
  }

  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = "Tetra registration is too old to encrypt to.";
LABEL_12:
  _os_log_impl(&dword_22B404000, v11, v12, v14, v13, 2u);
  MEMORY[0x231892DF0](v13, -1, -1);
LABEL_13:

  v16 = 0;
LABEL_16:

  return v16;
}

uint64_t specialized TetraRegistration.init(kyberPublicKey:ecdhPublicKey:timestamp:version:signedBy:)(void *a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v11 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2;
  v37[0] = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v37[1] = v17;
  P256.KeyAgreement.PublicKey.init<A>(compactRepresentation:)();
  (*(v12 + 32))(&v5[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_ecdhPublicKey], v15, v11);
  *&v5[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey] = a1;
  *&v5[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_timestamp] = a5;
  *&v5[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion] = a3;
  v18 = a1;
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = objc_allocWithZone(NGMTetraRegistrationSignatureFormatter);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v24 = [v22 initWithKyberPublicKey:v18 ecdhPublicKey:isa timestamp:a3 tetraVersion:a5];

  outlined consume of Data._Representation(v19, v21);
  v25 = [a4 publicKey];
  *&v5[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signingPublicKey] = v25;
  v37[0] = 0;
  v26 = [a4 signDataWithRegistrationFormatter:v24 error:v37];
  v27 = v37[0];
  if (v26)
  {
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = &v5[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature];
    *v31 = v28;
    v31[1] = v30;
    v32 = type metadata accessor for TetraRegistration();
    v36.receiver = v5;
    v36.super_class = v32;
    result = objc_msgSendSuper2(&v36, sel_init);
    v34 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v35 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraQueryLookupError and conformance TetraQueryLookupError()
{
  result = lazy protocol witness table cache variable for type TetraQueryLookupError and conformance TetraQueryLookupError;
  if (!lazy protocol witness table cache variable for type TetraQueryLookupError and conformance TetraQueryLookupError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraQueryLookupError and conformance TetraQueryLookupError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for TetraIncomingSymmetricRatchet()
{
  result = type metadata accessor for SymmetricRatchet();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for TetraOutgoingSymmetricRatchet()
{
  type metadata accessor for TetraOutgoingKeyContent(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SymmetricRatchet?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for SymmetricRatchet?()
{
  if (!lazy cache variable for type metadata for SymmetricRatchet?)
  {
    type metadata accessor for SymmetricRatchet();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SymmetricRatchet?);
    }
  }
}

uint64_t TetraOutgoingSymmetricRatchet.init(symmetricRatchetHead:outgoingPublicKeys:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v5 = type metadata accessor for SymmetricRatchet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v42 - v14;
  v16 = type metadata accessor for SymmetricKey();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v42 - v22;
  v24 = *(type metadata accessor for TetraOutgoingSymmetricRatchet(0) + 20);
  v26 = *(v6 + 56);
  v25 = v6 + 56;
  v47 = v26;
  v48 = v24;
  v51 = v5;
  v27 = v5;
  v28 = v52;
  v26(a3 + v24, 1, 1, v27);
  outlined init with copy of TetraSessionStates?(v28, v15, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of TetraSessionStates?(v28, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    outlined destroy of TetraSessionStates?(v15, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    return outlined init with take of SymmetricRatchet(a2, a3, type metadata accessor for TetraOutgoingKeyContent);
  }

  v44 = v25;
  v45 = a3;
  v46 = a2;
  v42[0] = *(v17 + 32);
  v42[1] = v17 + 32;
  (v42[0])(v23, v15, v16);
  v43 = v17;
  (*(v17 + 16))(v21, v23, v16);
  if (one-time initialization token for tetraSymmetricKeyRatchetStep != -1)
  {
    swift_once();
  }

  v29 = tetraSymmetricKeyRatchetStep;
  v30 = *algn_280F9FDF8;
  v32 = qword_280F9FE00;
  v31 = unk_280F9FE08;
  v33 = qword_280F9FE10;
  v34 = byte_280F9FE18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMd, &_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMR);
  v55 = &protocol witness table for HKDFRatchet<A>;
  v35 = swift_allocObject();
  *&v53 = v35;
  *(v35 + 16) = v29;
  *(v35 + 24) = v30;
  *(v35 + 32) = v32;
  *(v35 + 40) = v31;
  *(v35 + 48) = v33;
  *(v35 + 56) = v34;
  v37 = v50;
  v36 = v51;
  *&v50[*(v51 + 20)] = MEMORY[0x277D84F98];
  outlined copy of Data._Representation(v29, v30);
  outlined copy of Data._Representation(v32, v31);
  if (SymmetricKey.bitCount.getter() > 255)
  {
    outlined destroy of TetraSessionStates?(v52, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    (*(v43 + 8))(v23, v16);
    outlined init with take of ContiguousBytes(&v53, v37 + *(v36 + 24));
    (v42[0])(v37, v21, v16);
    *(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)) = 0;
    v38 = v49;
    outlined init with take of SymmetricRatchet(v37, v49, type metadata accessor for SymmetricRatchet);
    v47(v38, 0, 1, v36);
    a3 = v45;
    outlined assign with take of SymmetricRatchet?(v38, v45 + v48);
    a2 = v46;
    return outlined init with take of SymmetricRatchet(a2, a3, type metadata accessor for TetraOutgoingKeyContent);
  }

  v40 = type metadata accessor for CryptoKitError();
  lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8]);
  swift_allocError();
  (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277CC51D0], v40);
  swift_willThrow();
  (*(v43 + 8))(v21, v16);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t TetraIncomingSymmetricRatchet.init(symmetricRatchetHead:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for SymmetricKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SymmetricRatchet();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v27 = &v27 - v13;
  v28 = a1;
  v14 = *(v4 + 16);
  v30 = v3;
  v14(v7, a1, v3);
  if (one-time initialization token for tetraSymmetricKeyRatchetStep != -1)
  {
    swift_once();
  }

  v15 = tetraSymmetricKeyRatchetStep;
  v16 = *algn_280F9FDF8;
  v18 = qword_280F9FE00;
  v17 = unk_280F9FE08;
  v19 = qword_280F9FE10;
  v20 = byte_280F9FE18;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMd, &_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMR);
  v33 = &protocol witness table for HKDFRatchet<A>;
  v21 = swift_allocObject();
  *&v31 = v21;
  *(v21 + 16) = v15;
  *(v21 + 24) = v16;
  *(v21 + 32) = v18;
  *(v21 + 40) = v17;
  *(v21 + 48) = v19;
  *(v21 + 56) = v20;
  *&v12[*(v8 + 20)] = MEMORY[0x277D84F98];
  outlined copy of Data._Representation(v15, v16);
  outlined copy of Data._Representation(v18, v17);
  if (SymmetricKey.bitCount.getter() <= 255)
  {
    v25 = type metadata accessor for CryptoKitError();
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277CC51D0], v25);
    swift_willThrow();
    (*(v4 + 8))(v7, v30);
    __swift_destroy_boxed_opaque_existential_1(&v31);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v22 = v30;
    (*(v4 + 8))(v28, v30);
    outlined init with take of ContiguousBytes(&v31, &v12[*(v8 + 24)]);
    (*(v4 + 32))(v12, v7, v22);
    *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)] = 0;
    v23 = v27;
    outlined init with take of SymmetricRatchet(v12, v27, type metadata accessor for SymmetricRatchet);
    return outlined init with take of SymmetricRatchet(v23, v29, type metadata accessor for SymmetricRatchet);
  }

  return result;
}

NSObject *TetraIncomingSymmetricRatchet.openMessage(_:messageIndex:messageKeyIndicator:discardMessageKey:)(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, int a6)
{
  v8 = v7;
  LODWORD(v50) = a6;
  v46 = a4;
  v47 = a5;
  v43 = a1;
  v44 = a2;
  v10 = type metadata accessor for SymmetricKey();
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v53 = &v41 - v15;
  v16 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48));
  v17 = static os_log_type_t.info.getter();
  result = MessageProtectionLog();
  if (result)
  {
    v19 = result;
    if (os_log_type_enabled(result, v17))
    {
      v20 = swift_slowAlloc();
      v42 = v7;
      v21 = v20;
      *v20 = 134218752;
      *(v20 + 4) = v16;
      *(v20 + 12) = 1024;
      *(v20 + 14) = a3;
      *(v20 + 18) = 2048;
      *(v20 + 20) = a3 - v16;
      *(v20 + 28) = 1024;
      *(v20 + 30) = a3 < v16;
      _os_log_impl(&dword_22B404000, v19, v17, "Tetra ratchet with current index %llu and incoming %u for delta of: %llu, and overflow %{BOOL}d ", v20, 0x22u);
      v22 = v21;
      v8 = v42;
      MEMORY[0x231892DF0](v22, -1, -1);
    }

    v23 = v53;
    SymmetricRatchet.messageKey(forIndex:discardMessageKey:)(a3, v50 & 1, v53);
    if (v8)
    {
      return v17;
    }

    v51 = 0xD00000000000001ALL;
    v52 = 0x800000022B4956C0;
    MEMORY[0x2318919B0](0xD000000000000013, 0x800000022B496650);
    v51 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v51, v52);
    v52 = v24;
    type metadata accessor for SHA384();
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550]);
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330]);
    lazy protocol witness table accessor for type Data and conformance Data();
    v25 = v45;
    v26 = v48;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(v51, v52);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v28 = v49 + 8;
    v27 = *(v49 + 8);
    v27(v25, v26);
    v29 = v51;
    v50 = v52;
    if (specialized static Data.== infix(_:_:)(v51, v52, v46, v47))
    {
      v17 = specialized static TetraMessageEncoding.openMessage(_:messageKey:)(v43, v44);
      v27(v23, v26);
      outlined consume of Data._Representation(v29, v50);
      return v17;
    }

    v30 = static os_log_type_t.error.getter();
    result = MessageProtectionLog();
    if (result)
    {
      v31 = result;
      if (os_log_type_enabled(result, v30))
      {
        v32 = swift_slowAlloc();
        v49 = v28;
        v45 = v27;
        v33 = v32;
        v34 = swift_slowAlloc();
        v51 = v34;
        *v33 = 136315394;
        v35 = Data.base64EncodedString(options:)(0);
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35._countAndFlagsBits, v35._object, &v51);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2080;
        v37 = Data.base64EncodedString(options:)(0);
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37._countAndFlagsBits, v37._object, &v51);

        *(v33 + 14) = v38;
        _os_log_impl(&dword_22B404000, v31, v30, "Mismatch in ratchet state, attempting to decrypt with message key with indicator: %s instead of %s.", v33, 0x16u);
        swift_arrayDestroy();
        v39 = v34;
        v26 = v48;
        MEMORY[0x231892DF0](v39, -1, -1);
        v27 = v45;
        MEMORY[0x231892DF0](v33, -1, -1);
      }

      lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
      v17 = swift_allocError();
      *v40 = 3;
      swift_willThrow();
      outlined consume of Data._Representation(v29, v50);
      v27(v23, v26);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TetraOutgoingSymmetricRatchet.sealMessage(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v39 = a3;
  v40 = a4;
  v37 = a1;
  v38 = a2;
  v36 = a5;
  v7 = type metadata accessor for SymmetricKey();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  v21 = v5 + *(type metadata accessor for TetraOutgoingSymmetricRatchet(0) + 20);
  v22 = type metadata accessor for SymmetricRatchet();
  result = (*(*(v22 - 8) + 48))(v21, 1, v22);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v24 = *(v21 + *(v14 + 48));
  if (v24 == -1)
  {
    lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
    swift_allocError();
    *v26 = 0;
    return swift_willThrow();
  }

  result = SymmetricRatchet.messageKey(forIndex:discardMessageKey:)(v24, 1, v13);
  if (!v6)
  {
    v25 = *(v14 + 48);
    (*(v43 + 32))(v20, v13, v7);
    *&v20[v25] = v24;
    if (HIDWORD(v24))
    {
      lazy protocol witness table accessor for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors();
      swift_allocError();
      swift_willThrow();
      return outlined destroy of TetraSessionStates?(v20, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    }

    v39 = specialized static TetraMessageEncoding.sealMessage(_:messageKey:)(v37, v38, v39, v40, v20);
    v40 = v27;
    v41 = 0xD00000000000001ALL;
    v42 = 0x800000022B4956C0;
    MEMORY[0x2318919B0](0xD000000000000013, 0x800000022B496650);
    v41 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v41, v42);
    v42 = v28;
    type metadata accessor for SHA384();
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550]);
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330]);
    lazy protocol witness table accessor for type Data and conformance Data();
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(v41, v42);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v29 = *(v43 + 8);
    v29(v11, v7);
    v30 = v41;
    v31 = v42;
    result = outlined init with take of (key: SymmetricKey, index: UInt64)(v20, v18);
    v32 = *&v18[*(v14 + 48)];
    if (!HIDWORD(v32))
    {
      result = (v29)(v18, v7);
      v33 = v40;
      v34 = v36;
      *v36 = v39;
      v34[1] = v33;
      *(v34 + 4) = v32;
      v34[3] = v30;
      v34[4] = v31;
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t TetraOutgoingSymmetricRatchet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v58 = type metadata accessor for TetraOutgoingKeyContent(0);
  v3 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v59 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection29TetraOutgoingSymmetricRatchetV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection29TetraOutgoingSymmetricRatchetV10CodingKeysOGMR);
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v51 - v10;
  v12 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 28);
  v18 = type metadata accessor for SymmetricRatchet();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v19 + 56;
  v63 = v17;
  v20(&v16[v17], 1, 1, v18);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys();
  v23 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v24 = a1;
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1(v24);
    return outlined destroy of TetraSessionStates?(&v16[v63], &_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
  }

  else
  {
    v51[1] = v21;
    v52 = v20;
    v53 = v18;
    v54 = a1;
    v64 = 0;
    v55 = v11;
    v56 = v16;
    v25 = KeyedDecodingContainer.allKeys.getter();
    v26 = *(v25 + 16);
    v27 = (v25 + 32);
    while (1)
    {
      if (!v26)
      {

        v31 = v54;
        v30 = v55;
        v16 = v56;
        v32 = v61;
        v33 = v62;
        v34 = v64;
        goto LABEL_20;
      }

      v29 = *v27 ? 0x800000022B494B40 : 0xEF6675626F746F72;
      if ((*v27 & 1) == 0 && v29 == 0xEF6675626F746F72)
      {
        break;
      }

      *v27;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v27;
      --v26;
      if (v28)
      {
        goto LABEL_13;
      }
    }

LABEL_13:
    v31 = v54;
    v35 = v61;

    v66 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    v33 = v62;
    v36 = v55;
    v37 = v64;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v56;
    if (v37)
    {
      (*(v35 + 8))(v36, v33);
LABEL_21:
      v24 = v31;
      goto LABEL_22;
    }

    v64 = 0;
    v38 = v65[1];
    v54 = v65[0];
    if (one-time initialization token for tetraSymmetricKeyRatchetStep != -1)
    {
      swift_once();
    }

    v39 = tetraSymmetricKeyRatchetStep;
    v40 = *algn_280F9FDF8;
    v41 = qword_280F9FE00;
    v42 = unk_280F9FE08;
    v43 = qword_280F9FE10;
    v44 = byte_280F9FE18;
    v65[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMd, &_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMR);
    v65[4] = &protocol witness table for HKDFRatchet<A>;
    v45 = swift_allocObject();
    v65[0] = v45;
    *(v45 + 16) = v39;
    *(v45 + 24) = v40;
    *(v45 + 32) = v41;
    *(v45 + 40) = v42;
    *(v45 + 48) = v43;
    *(v45 + 56) = v44;
    outlined copy of Data._Representation(v39, v40);
    outlined copy of Data._Representation(v41, v42);
    v46 = v57;
    v47 = v64;
    SymmetricRatchet.init(data:step:)(v54, v38, v65, v57);
    v34 = v47;
    if (v47)
    {
      (*(v61 + 8))(v55, v33);
      v16 = v56;
      goto LABEL_21;
    }

    v52(v46, 0, 1, v53);
    v16 = v56;
    outlined assign with take of SymmetricRatchet?(v46, &v56[v63]);
    v32 = v61;
    v30 = v55;
LABEL_20:
    LOBYTE(v65[0]) = 1;
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent, type metadata accessor for TetraOutgoingKeyContent);
    v48 = v59;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v32 + 8))(v30, v33);
    v49 = v60;
    if (v34)
    {
      goto LABEL_21;
    }

    outlined init with take of SymmetricRatchet(v48, v16, type metadata accessor for TetraOutgoingKeyContent);
    outlined init with copy of TetraOutgoingSymmetricRatchet(v16, v49);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return _s17MessageProtection16SymmetricRatchetVWOhTm_0(v16, type metadata accessor for TetraOutgoingSymmetricRatchet);
  }
}

uint64_t TetraOutgoingSymmetricRatchet.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for SymmetricRatchet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection29TetraOutgoingSymmetricRatchetV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection29TetraOutgoingSymmetricRatchetV10CodingKeysOGMR);
  v22 = *(v11 - 8);
  v12 = *(v22 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys();
  v16 = v21[1];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
  outlined init with copy of TetraSessionStates?(v16 + *(v17 + 20), v5, &_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of TetraSessionStates?(v5, &_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
LABEL_4:
    LOBYTE(v23) = 1;
    type metadata accessor for TetraOutgoingKeyContent(0);
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent, type metadata accessor for TetraOutgoingKeyContent);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v22 + 8))(v14, v11);
  }

  outlined init with take of SymmetricRatchet(v5, v10, type metadata accessor for SymmetricRatchet);
  v23 = SymmetricRatchet.serializedData()();
  v24 = v18;
  v25 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  v19 = v21[2];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v23, v24);
  _s17MessageProtection16SymmetricRatchetVWOhTm_0(v10, type metadata accessor for SymmetricRatchet);
  if (!v19)
  {
    goto LABEL_4;
  }

  return (*(v22 + 8))(v14, v11);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TetraOutgoingSymmetricRatchet.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x506465646F636E65;
  }

  if (v3)
  {
    v5 = 0xEF6675626F746F72;
  }

  else
  {
    v5 = 0x800000022B494B40;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x506465646F636E65;
  }

  if (*a2)
  {
    v7 = 0x800000022B494B40;
  }

  else
  {
    v7 = 0xEF6675626F746F72;
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