Swift::Int protocol witness for Hashable.hashValue.getter in conformance TetraOutgoingSymmetricRatchet.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraOutgoingSymmetricRatchet.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TetraOutgoingSymmetricRatchet.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TetraOutgoingSymmetricRatchet.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TetraOutgoingSymmetricRatchet.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance TetraOutgoingSymmetricRatchet.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x800000022B494B40;
  v3 = 0x506465646F636E65;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xEF6675626F746F72;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance TetraOutgoingSymmetricRatchet.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x506465646F636E65;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraOutgoingSymmetricRatchet.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TetraOutgoingSymmetricRatchet.CodingKeys.init(rawValue:), v3);

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

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraOutgoingSymmetricRatchet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraOutgoingSymmetricRatchet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TetraIncomingSymmetricRatchet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = type metadata accessor for SymmetricRatchet();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection29TetraIncomingSymmetricRatchetV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection29TetraIncomingSymmetricRatchetV10CodingKeysOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29[-v11];
  v13 = type metadata accessor for TetraIncomingSymmetricRatchet(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1[3];
  v17 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v33 = v16;
    v34 = v7;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v8;
    v20 = v36[1];
    v32 = v36[0];
    if (one-time initialization token for tetraSymmetricKeyRatchetStep != -1)
    {
      swift_once();
    }

    v22 = tetraSymmetricKeyRatchetStep;
    v21 = *algn_280F9FDF8;
    v24 = qword_280F9FE00;
    v23 = unk_280F9FE08;
    v31 = qword_280F9FE10;
    v30 = byte_280F9FE18;
    v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMd, &_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMR);
    v36[4] = &protocol witness table for HKDFRatchet<A>;
    v25 = swift_allocObject();
    v36[0] = v25;
    *(v25 + 16) = v22;
    *(v25 + 24) = v21;
    *(v25 + 32) = v24;
    *(v25 + 40) = v23;
    *(v25 + 48) = v31;
    *(v25 + 56) = v30;
    outlined copy of Data._Representation(v22, v21);
    outlined copy of Data._Representation(v24, v23);
    v26 = v34;
    SymmetricRatchet.init(data:step:)(v32, v20, v36, v34);
    (*(v9 + 8))(v12, v19);
    v27 = v33;
    outlined init with take of SymmetricRatchet(v26, v33, type metadata accessor for SymmetricRatchet);
    outlined init with take of SymmetricRatchet(v27, v35, type metadata accessor for TetraIncomingSymmetricRatchet);
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t TetraIncomingSymmetricRatchet.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection29TetraIncomingSymmetricRatchetV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection29TetraIncomingSymmetricRatchetV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = SymmetricRatchet.serializedData()();
  v11 = v8;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v10, v11);
  return (*(v3 + 8))(v6, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TetraIncomingSymmetricRatchet.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TetraIncomingSymmetricRatchet.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TetraIncomingSymmetricRatchet.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TetraIncomingSymmetricRatchet.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraIncomingSymmetricRatchet.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance TetraIncomingSymmetricRatchet.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraIncomingSymmetricRatchet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraIncomingSymmetricRatchet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys);
  }

  return result;
}

uint64_t outlined assign with take of SymmetricRatchet?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SymmetricRatchet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TetraOutgoingSymmetricRatchet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s17MessageProtection16SymmetricRatchetVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt64)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(unint64_t *a1, void (*a2)(uint64_t))
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

id TetraSessionSerialized.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TetraSessionSerialized.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TetraSessionSerialized();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TetraSessionSerialized.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraSessionSerialized();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static TetraSessionSerialized.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = MEMORY[0x231891960](0xD000000000000016, 0x800000022B495160);
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t protocol witness for Identifiable.id.getter in conformance TetraSessionSerialized@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for TetraSessionSerialized();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

BOOL SecMPSignAndProtectMessage(const __CFData *a1, uint64_t a2, uint64_t a3, CFDataRef theData, CFErrorRef *a5)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v56 = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CBECE8];
  if (!a1 || !a2 || !a3 || !theData)
  {
    goto LABEL_36;
  }

  length = CFDataGetLength(theData);
  v11 = *v10;
  Mutable = CFDataCreateMutable(*v10, 0);
  v13 = CFDataCreateMutable(v11, 0);
  bytes = 2;
  CFDataAppendBytes(v13, &bytes, 1);
  v46 = v7;
  SecMPFIAppendCanonicalPublicHash(v7, v13);
  v49 = v6;
  SecMPPIAppendCanonicalHash(v6, v13);
  v14 = CFDataGetLength(v8);
  BytePtr = CFDataGetBytePtr(v8);
  v16 = CFDataGetLength(Mutable);
  v47 = v8;
  if ((v14 - 0x7FFFFFFF) < 0xFFFFFFFF80000002)
  {
    goto LABEL_42;
  }

  if (!BytePtr || (CFDataIncreaseLength(Mutable, v14 + 16), (MutableBytePtr = CFDataGetMutableBytePtr(Mutable)) == 0))
  {
    v44 = -909;
    goto LABEL_46;
  }

  v18 = &MutableBytePtr[v16];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, &MutableBytePtr[v16]) || !CFDataGetBytePtr(v13) || CFDataGetLength(v13) < 1)
  {
LABEL_42:
    v44 = -50;
LABEL_46:
    CFDataSetLength(Mutable, v16);
    SecMPCreateError(0, v44, @"Failed to Encrypt message", 0, a5);
    v35 = 0;
    v27 = 0;
    cf = 0;
    goto LABEL_47;
  }

  v19 = SecMPComputeIntegrityTag(v8, v13, v18);
  if (v19)
  {
    v44 = v19;
    goto LABEL_46;
  }

  ccaes_ctr_crypt_mode();
  ccctr_one_shot();
  v20 = SecMPPIEncryptionSpace(v49, 1);
  v21 = CFDataGetLength(Mutable);
  if (v21 < v20)
  {
    v20 = v21;
  }

  v22 = CFDataGetBytePtr(Mutable);
  v23 = *MEMORY[0x277CBED00];
  v24 = CFDataCreateWithBytesNoCopy(v11, v22, v20, *MEMORY[0x277CBED00]);
  v25 = CFDataGetLength(Mutable) - v20;
  v26 = CFDataGetBytePtr(Mutable);
  v27 = CFDataCreateWithBytesNoCopy(v11, &v26[v20], v25, v23);
  CFDataAppendBytes(theData, &bytes, 1);
  v28 = CFDataGetLength(theData);
  CFDataIncreaseLength(theData, 2);
  v29 = CFDataGetLength(theData);
  cf = v24;
  if (!SecMPPIAppendPKIEncryptedData(v49, v24, theData) || (v30 = CFDataGetBytePtr(v27), v31 = CFDataGetLength(v27), CFDataAppendBytes(theData, v30, v31), v32 = CFDataGetMutableBytePtr(theData), v33 = CFDataGetLength(theData) - v29, insertSize(v33, &v32[v28], a5)))
  {
    v35 = 0;
LABEL_47:
    v9 = 0;
    v7 = v46;
    goto LABEL_17;
  }

  v34 = CFDataGetBytePtr(theData);
  v35 = CFDataCreate(v11, &v34[v29], v33);
  v7 = v46;
  v9 = SecMPFIAppendSignature(v46, v35, theData, a5);
LABEL_17:
  v8 = v47;
  if (a5 && *a5)
  {
    v36 = MessageProtectionLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = *a5;
      *buf = 138412546;
      v53 = v13;
      v54 = 2112;
      v55 = v37;
      v38 = "Message Encryption: sender/receiver hash: %@ status: %@";
      v39 = v36;
      v40 = 22;
LABEL_23:
      _os_log_impl(&dword_22B404000, v39, OS_LOG_TYPE_INFO, v38, buf, v40);
    }
  }

  else
  {
    v36 = MessageProtectionLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v13;
      v38 = "Message Encryption: sender/receiver hash: %@ status: success";
      v39 = v36;
      v40 = 12;
      goto LABEL_23;
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  v6 = v49;
  v10 = MEMORY[0x277CBECE8];
  if (!v9)
  {
    CFDataSetLength(theData, length);
  }

LABEL_36:
  if (a5)
  {
    if (!v9 && !*a5)
    {
      v41 = CFStringCreateWithFormat(*v10, 0, @"Parameter error, all pointers must be valid. sourceMessage = %p, sender = %p, receiver = %p, protected message = %p.", v8, v7, v6, theData);
      SecMPCreateError(0, -7, v41, 0, a5);
      if (v41)
      {
        CFRelease(v41);
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
  return v9;
}

CFDataRef SecMPCopyProtectedMsgHash(const __CFData *a1, uint64_t a2, uint64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  Length = CFDataGetLength(a1);
  if (Length)
  {
    v7 = Length;
    v8 = [*(a2 + 48) encryptionSize];
    v9 = 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = v8;
      if (v7 >= v8 + 3)
      {
        v11 = *MEMORY[0x277CBECE8];
        BytePtr = CFDataGetBytePtr(a1);
        v13 = CFDataCreateWithBytesNoCopy(v11, BytePtr + 3, v10, *MEMORY[0x277CBED00]);
        v14 = CFDataGetBytePtr(v13);
        v15 = CFDataGetLength(v13);
        CC_SHA256(v14, v15, md);
        v9 = CFDataCreate(v11, md, 32);
        if (v13)
        {
          CFRelease(v13);
        }
      }
    }
  }

  else
  {
    MPLogAndAssignCFError(1, a3, @"SecMPVerifyMessageContents: Missing incoming data.");
    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t SecMPComputeIntegrityTag(const __CFData *a1, const __CFData *a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  v8 = CFDataGetLength(a2);
  v9 = CFDataGetBytePtr(a2);
  v10 = ccsha256_di();
  v11 = *v10;
  v12 = MEMORY[0x28223BE20]();
  v13 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (((*(v12 + 8) + ((*(v12 + 8) + *(v12 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  result = 4294966387;
  if (a3 && BytePtr && Length >= 1)
  {
    OUTLINED_FUNCTION_0();
    cchmac_init();
    OUTLINED_FUNCTION_0();
    cchmac_update();
    if (v9 && (v8 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_0();
      cchmac_update();
    }

    OUTLINED_FUNCTION_0();
    cchmac_final();
    *(a3 + 11) = *v13;
    *(a3 + 15) = v13[4];
    cc_clear();
    v16 = (v10[1] + v10[2] + 19) & 0xFFFFFFFFFFFFFFF8;
    cc_clear();
    result = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void MPLogAndAssignCFError_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_22B404000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void MPLogAndAssignCFError_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_22B404000, v0, v1, "%@. The error was not assigned to a CFError.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void MPLogAndAssignError_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_22B404000, v0, v1, "%@. The error was not assigned to an NSError.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t SecMPVerifyIntegrityTag(const __CFData *a1, const __CFData *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a2);
  v8 = CFDataGetBytePtr(a2);
  v9 = ccsha256_di();
  v10 = *v9;
  v11 = MEMORY[0x28223BE20]();
  v12 = (((*(v11 + 8) + ((*(v11 + 8) + *(v11 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = 4294966387;
  if (a3 && BytePtr)
  {
    OUTLINED_FUNCTION_0_1();
    cchmac_init();
    OUTLINED_FUNCTION_0_1();
    cchmac_update();
    if (v8 && (Length & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_0_1();
      cchmac_update();
    }

    OUTLINED_FUNCTION_0_1();
    cchmac_final();
    if (cc_cmp_safe())
    {
      v13 = 4294942003;
    }

    else
    {
      v13 = 0;
    }

    cc_clear();
    v14 = (v9[1] + v9[2] + 19) & 0xFFFFFFFFFFFFFFF8;
    cc_clear();
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t appendSizeAndData(const __CFData *a1, __CFData *a2, CFErrorRef *a3)
{
  Length = CFDataGetLength(a1);
  if (appendSize(Length, a2, a3))
  {
    return 4294942005;
  }

  BytePtr = CFDataGetBytePtr(a1);
  v8 = CFDataGetLength(a1);
  CFDataAppendBytes(a2, BytePtr, v8);
  return 0;
}

uint64_t readLongLong(unint64_t **a1, uint64_t *a2, void *a3)
{
  result = 4294967246;
  if (a1 && a2 && a3)
  {
    v5 = *a2 - 8;
    if (*a2 >= 8)
    {
      result = 0;
      v6 = (*a1 + 1);
      *a3 = bswap64(**a1);
      *a1 = v6;
      *a2 = v5;
    }
  }

  return result;
}

uint64_t SecMPFICreatePrivateAndPublicKeyReadPersistentRef(void *a1, uint64_t *a2, uint64_t *a3, void *a4, CFErrorRef *a5)
{
  keys[3] = *MEMORY[0x277D85DE8];
  v26 = 0;
  if (readSize_0(a2, a3, &v26, a5) || *a3 < v26)
  {
    v12 = 0;
    goto LABEL_24;
  }

  v10 = objc_alloc(MEMORY[0x277CBEA90]);
  v11 = [v10 initWithBytes:*a2 length:v26];
  v12 = v11;
  if (!v11)
  {
LABEL_24:
    v16 = 4294967246;
    goto LABEL_22;
  }

  v13 = *MEMORY[0x277CDC5F0];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v13;
  keys[2] = *MEMORY[0x277CDC568];
  values[0] = *MEMORY[0x277CDC250];
  values[1] = v11;
  values[2] = *MEMORY[0x277CBED28];
  v14 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  result = 0;
  v15 = SecItemCopyMatching(v14, &result);
  if (v15)
  {
    v16 = v15;
    goto LABEL_6;
  }

  v16 = 4294941996;
  if (!result)
  {
LABEL_6:
    v17 = 0;
    if (!v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v18 = CFGetTypeID(result);
  TypeID = SecKeyGetTypeID();
  v20 = v18 == TypeID;
  if (v18 == TypeID)
  {
    v17 = result;
  }

  else
  {
    v17 = 0;
  }

  if (v20)
  {
    v16 = 0;
  }

  else
  {
    v16 = 4294941996;
  }

  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_7:
  CFRelease(v14);
LABEL_8:
  if (v16)
  {
    SecMPCreateError(0, v16, @"Keychain lookup failed", 0, a5);
  }

  else
  {
    *a4 = v17;
    v21 = v26;
    *a2 += v26;
    *a3 -= v21;
    if (readSize_0(a2, a3, &v26, a5) || (v22 = v26, *a3 < v26))
    {
      v16 = 0;
    }

    else
    {
      *a3 -= v26;
      *a2 += v22;
      v23 = v12;
      v16 = 0;
      *a1 = v12;
    }
  }

LABEL_22:

  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

void nextMultiple_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_22B404000, log, OS_LOG_TYPE_ERROR, "Message Encryption: nextPowerOfTwo invalid input %llx, %llx", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void SecMPPublicIdentityCreateFromBytes_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Failed to create legacy public key from bytes: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void SecMPFullIdentityCreateFromData_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failed to initialize legacy key: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void SecMPFIAppendSignature_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failed to perform legacy signature: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t SecProtectStream(__CFReadStream *a1, __CFWriteStream *a2, CFMutableDataRef theData)
{
  CFDataAppendBytes(theData, &kProtectedFileHeader, 1);
  Length = CFDataGetLength(theData);
  CFDataIncreaseLength(theData, 32);
  MutableBytePtr = CFDataGetMutableBytePtr(theData);
  result = SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, &MutableBytePtr[Length]);
  if (!result)
  {

    return AES256CTRIV0TransformStream(a1, a2, &MutableBytePtr[Length]);
  }

  return result;
}

uint64_t AES256CTRIV0TransformStream(__CFReadStream *a1, __CFWriteStream *a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = malloc_type_malloc(0x4000uLL, 0x827650BuLL);
  v7 = ccaes_ctr_crypt_mode();
  v8 = (*v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  (*(v9 + 24))(v9, v19 - v10, 32, a3, &kIVZero);
  v12 = CFReadStreamRead(a1, v6, 0x4000);
  if (v12 < 1)
  {
LABEL_7:
    if (v12)
    {
      v16 = 4294967246;
    }

    else
    {
      v16 = 0;
    }

    if (v6)
    {
LABEL_11:
      free(v6);
    }
  }

  else
  {
LABEL_2:
    (*(v7 + 40))(v11, v12, v6, v6);
    v13 = v6;
    while (1)
    {
      v14 = CFWriteStreamWrite(a2, v13, v12);
      if (v14 < 1)
      {
        break;
      }

      v13 += v14;
      v15 = v12 <= v14;
      v12 -= v14;
      if (v15)
      {
        v12 = CFReadStreamRead(a1, v6, 0x4000);
        if (v12 > 0)
        {
          goto LABEL_2;
        }

        goto LABEL_7;
      }
    }

    v16 = 4294967246;
    if (v6)
    {
      goto LABEL_11;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t SecExposeStream(__CFReadStream *a1, __CFWriteStream *a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (CFDataGetLength(theData) < 0x21 || *BytePtr)
  {
    return 4294967246;
  }

  return AES256CTRIV0TransformStream(a1, a2, (BytePtr + 1));
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA60]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDBA0]();
}