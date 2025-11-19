uint64_t DBAsset.representations.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  return v1;
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> (@owned Data?)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_21658E040;
  return result;
}

uint64_t static DBAsset.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static DBAsset.Class = a1;
  unk_27CA90EC8 = a2;
  byte_27CA90ED0 = a3;
  return result;
}

uint64_t DBAsset.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static DBAsset.Log);
}

uint64_t static DBAsset.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBAsset.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DBAsset.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBAsset.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DBAsset.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static DBAsset.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance DBAsset@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBAsset.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t DBAsset._priorityScore.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  swift_beginAccess();
  return *v1;
}

uint64_t DBAsset._priorityScore.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

MomentsUI::DBAsset::CodingKeys_optional __swiftcall DBAsset.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBAsset.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t DBAsset.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x7469726F6972705FLL;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBAsset.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x80000002165764A0;
  if (v2 == 1)
  {
    v5 = 0x80000002165764A0;
  }

  else
  {
    v3 = 0x7469726F6972705FLL;
    v5 = 0xEE0065726F635379;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x7469726F6972705FLL;
    v4 = 0xEE0065726F635379;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBAsset.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBAsset.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBAsset.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBAsset.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBAsset.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DBAsset.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0x80000002165764A0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x7469726F6972705FLL;
    v4 = 0xEE0065726F635379;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DBAsset.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x7469726F6972705FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBAsset.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DBAsset.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAsset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAsset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBAsset.__allocating_init(id:universalUUID:representations:priorityScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  UUID.init()();
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 8))(a2, v11);
  v13 = v10 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  *v13 = 0;
  *(v13 + 8) = 1;
  (*(v12 + 32))(v10 + OBJC_IVAR____TtC9MomentsUI7DBAsset_id, a1, v11);
  *(v10 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations) = a3;
  v14 = v10 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  swift_beginAccess();
  *v14 = a4;
  *(v14 + 8) = a5 & 1;
  return v10;
}

uint64_t DBAsset.init(id:universalUUID:representations:priorityScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  UUID.init()();
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 8))(a2, v11);
  v13 = v5 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  *v13 = 0;
  *(v13 + 8) = 1;
  (*(v12 + 32))(v5 + OBJC_IVAR____TtC9MomentsUI7DBAsset_id, a1, v11);
  *(v5 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations) = a3;
  v14 = v5 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  swift_beginAccess();
  *v14 = a4;
  *(v14 + 8) = a5 & 1;
  return v5;
}

uint64_t DBAsset.deinit()
{
  v1 = OBJC_IVAR____TtC9MomentsUI7DBAsset_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset_universalUUID, v2);

  return v0;
}

uint64_t DBAsset.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MomentsUI7DBAsset_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset_universalUUID, v2);

  return swift_deallocClassInstance();
}

uint64_t DBAsset.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI7DBAssetC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI16DBAssetModelTypeOGMd);
    lazy protocol witness table accessor for type [DBAssetModelType] and conformance <A> [A](&lazy protocol witness table cache variable for type [DBAssetModelType] and conformance <A> [A], lazy protocol witness table accessor for type DBAssetModelType and conformance DBAssetModelType);
    v9 = KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(*v3 + 112))(v9);
    v11[14] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int DBAsset.hashValue.getter()
{
  v1 = Hasher.init(_seed:)();
  v2 = (*(*v0 + 112))(v1);
  if (v3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = v2;
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x21CE937F0](v5);
  }

  v6 = DBAsset.metadataHash.getter();
  MEMORY[0x21CE937C0](v6);
  return Hasher._finalize()();
}

uint64_t DBAsset.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DBAsset.init(from:)(a1);
  return v2;
}

uint64_t DBAsset.init(from:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for UUID();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI7DBAssetC10CodingKeysOGMd);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v25 = OBJC_IVAR____TtC9MomentsUI7DBAsset_universalUUID;
  UUID.init()();
  v11 = v3 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    (*(v26 + 8))(v3 + v25, v5);
    type metadata accessor for DBAsset();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = v11;
    v13 = v23;
    LOBYTE(v28) = 0;
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v14 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = *(v26 + 32);
    v21 = OBJC_IVAR____TtC9MomentsUI7DBAsset_id;
    v16(v3 + OBJC_IVAR____TtC9MomentsUI7DBAsset_id, v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI16DBAssetModelTypeOGMd);
    v29 = 1;
    lazy protocol witness table accessor for type [DBAssetModelType] and conformance <A> [A](&lazy protocol witness table cache variable for type [DBAssetModelType] and conformance <A> [A], lazy protocol witness table accessor for type DBAssetModelType and conformance DBAssetModelType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v3 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations) = v28;
    LOBYTE(v28) = 2;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = v18;
    (*(v13 + 8))(v10, v14);
    v20 = v22;
    swift_beginAccess();
    *v20 = v17;
    *(v20 + 8) = v19 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance DBAsset@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DBAsset.hash(into:)()
{
  v1 = (*(*v0 + 112))();
  if (v2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = v1;
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x21CE937F0](v4);
  }

  v5 = DBAsset.metadataHash.getter();
  return MEMORY[0x21CE937C0](v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBAsset()
{
  v1 = Hasher.init(_seed:)();
  v2 = (*(**v0 + 112))(v1);
  if (v3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = v2;
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x21CE937F0](v5);
  }

  v6 = DBAsset.metadataHash.getter();
  MEMORY[0x21CE937C0](v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance DBAsset@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9MomentsUI7DBAsset_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t DBAsset.assetDataLookup.setter(uint64_t a1, uint64_t a2)
{
  specialized DBAsset.assetDataLookup.setter(a1, a2);
}

uint64_t (*DBAsset.assetDataLookup.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[1] = 0;
  a1[2] = v1;
  *a1 = closure #1 in DBAsset.assetDataLookup.getter;
  return DBAsset.assetDataLookup.modify;
}

uint64_t key path setter for DBAsset.assetDataLookup : DBAsset(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;

  a7(a6, v11);
}

uint64_t DBAsset.assetDataGet.setter(uint64_t a1, uint64_t a2)
{
  specialized DBAsset.assetDataGet.setter(a1, a2);
}

uint64_t (*DBAsset.assetDataGet.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[1] = 0;
  a1[2] = v1;
  *a1 = closure #1 in Video.init(from:);
  return DBAsset.assetDataGet.modify;
}

uint64_t key path setter for DBAsset.assetURLGet : DBAsset(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  specialized DBAsset.assetURLGet.setter(v1, v2);
}

uint64_t DBAsset.assetURLGet.setter(uint64_t a1, uint64_t a2)
{
  specialized DBAsset.assetURLGet.setter(a1, a2);
}

uint64_t (*DBAsset.assetURLGet.modify(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)))(uint64_t *a1, char a2)
{
  a1[1] = 0;
  a1[2] = v1;
  *a1 = closure #3 in DBAssetModel.init(from:);
  return DBAsset.assetURLGet.modify;
}

uint64_t DBAsset.assetDataLookup.modify(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {

    a3(v5, v4);
  }

  else
  {
    a3(*a1, v4);
  }
}

uint64_t DBAsset.dumpAssetData()()
{
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = 32;
    v4 = v13;
    do
    {
      v5 = *(v1 + v3);
      switch(v5 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v5 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      v6 = *(*v5 + 328);

      v8 = v6(v7);

      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      *(v13 + 16) = v10 + 1;
      *(v13 + 8 * v10 + 32) = v8;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v11 = specialized _copySequenceToContiguousArray<A>(_:)(v4);

  return v11;
}

void (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t closure #1 in static DBAsset.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  switch(*a2 >> 60)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      v2 = *a2 & 0xFFFFFFFFFFFFFFFLL;
      break;
    default:
      break;
  }

  v4 = *(*v2 + 376);

  v6 = v4(v5);
  v7 = v6;
  if (*(*a1 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v8 & 1) != 0))
  {
    v10 = specialized Dictionary.subscript.modify(v16, v7);
    if (*v9)
    {
      v11 = v9;

      MEMORY[0x21CE92260](v12);
      if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v10)(v16, 0);
    }

    else
    {
      (v10)(v16, 0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21658E210;
    *(v13 + 32) = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *a1;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v7, isUniquelyReferenced_nonNull_native);
    *a1 = v16[0];
  }

  return result;
}

Swift::Int DBAsset.metadataHash.getter()
{
  v1 = Hasher.init()();
  v2 = (*(*v0 + 112))(v1);
  if (v3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = v2;
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x21CE937F0](v5);
  }

  if (*(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v6 = *(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *&v21[0] = v6;

  specialized MutableCollection<>.sort(by:)(v21);

  v7 = *(*&v21[0] + 16);
  if (v7)
  {
    v8 = (*&v21[0] + 32);
    do
    {
      v10 = *v8++;
      v9 = v10;
      v11 = v10 & 0xFFFFFFFFFFFFFFFLL;
      switch(v10 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v9 = v11;
          break;
        default:
          break;
      }

      v12 = *(*v9 + 376);

      v14 = v12(v13);
      MEMORY[0x21CE937C0](v14);

      --v7;
    }

    while (v7);
  }

  v21[2] = v18;
  v21[3] = v19;
  v22 = v20;
  v21[0] = v16;
  v21[1] = v17;
  return Hasher.finalize()();
}

BOOL closure #1 in DBAsset.metadataHash.getter(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1 >> 60)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      v2 = *a1 & 0xFFFFFFFFFFFFFFFLL;
      break;
    default:
      break;
  }

  v4 = *(*v2 + 376);

  v6 = v4(v5);

  switch(v3 >> 60)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      v3 &= 0xFFFFFFFFFFFFFFFuLL;
      break;
    default:
      break;
  }

  v7 = *(*v3 + 376);

  v9 = v7(v8);

  return v6 < v9;
}

uint64_t DBAsset.__allocating_init(universalUUID:representations:priorityScore:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v33 = a1;
  v29 = a4;
  v30 = a3;
  v31 = type metadata accessor for UUID();
  v28 = *(v31 - 8);
  v5 = MEMORY[0x28223BE20](v31);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v26 = &v26 - v7;
  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v9 = 0;
    v10 = a2 & 0xC000000000000001;
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = MEMORY[0x277D84F90];
    v34 = a2;
    while (1)
    {
      if (v10)
      {
        v13 = MEMORY[0x21CE93180](v9, a2);
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(a2 + 8 * v9 + 32);
      }

      v14 = v13;
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v36 = v13;
      closure #1 in DBAsset.init(universalUUID:representations:priorityScore:)(&v36, &v35);

      v16 = v35;
      if ((~v35 & 0xF000000000000007) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v18 >= v17 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v12);
        }

        *(v12 + 2) = v18 + 1;
        *&v12[8 * v18 + 32] = v16;
        a2 = v34;
      }

      else
      {
        outlined consume of DBAssetModelType?(v35);
      }

      ++v9;
      if (v15 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_21:

  v19 = v28;
  v20 = v26;
  v21 = v33;
  v22 = v31;
  (*(v28 + 16))(v26, v33, v31);
  v23 = v27;
  UUID.init()();
  v24 = (*(v32 + 136))(v23, v20, v12, v30, v29 & 1);
  (*(v19 + 8))(v21, v22);
  return v24;
}

void closure #1 in DBAsset.init(universalUUID:representations:priorityScore:)(void **a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for MutableMapViewModel();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = MutableMapViewModel.build()();
    if (v6)
    {
      v7 = v6 | 0x1000000000000000;
      goto LABEL_149;
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static CommonLogger.viewModel);
    v12 = v3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {

      goto LABEL_138;
    }

    v248 = a2;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v255[0] = v16;
    *v15 = 67110146;
    *(v15 + 4) = *(v5 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
    *(v15 + 8) = 2080;
    v17 = *(v5 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
    v247 = v3;
    if (v17)
    {
      v18 = MEMORY[0x21CE922B0](v17, &type metadata for AssetViewModel.Style);
      v20 = v19;
    }

    else
    {
      v18 = 7104878;
      v20 = 0xE300000000000000;
    }

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v255);

    *(v15 + 10) = v36;
    *(v15 + 18) = 2080;
    v38 = MEMORY[0x277D85000];
    v39 = (*((*MEMORY[0x277D85000] & *v5) + 0xD0))(v37);
    v41 = v40;

    if (v41)
    {
      v42 = v39;
    }

    else
    {
      v42 = 7104878;
    }

    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0xE300000000000000;
    }

    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v255);

    *(v15 + 20) = v44;
    *(v15 + 28) = 1024;
    v46 = (*((*v38 & *v5) + 0xB8))(v45);

    if (v46)
    {

      v47 = 1;
    }

    else
    {
      v47 = 0;
    }

    *(v15 + 30) = v47;

    *(v15 + 34) = 1024;
    (*((*v38 & *v5) + 0x288))(v253);
    v48 = v254;

    *(v15 + 36) = (v48 & 1) == 0;
    _os_log_impl(&dword_21607C000, v13, v14, "Failed to build DBAssetModelType from MutableMapViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d, pinColor=%{BOOL}d", v15, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v16, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);

    goto LABEL_137;
  }

  type metadata accessor for MutableWorkoutViewModel();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = MutableWorkoutViewModel.build()();
    if (v10)
    {
      v7 = v10 | 0x3000000000000000;
      goto LABEL_149;
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static CommonLogger.viewModel);
    v25 = v3;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v27))
    {

      goto LABEL_138;
    }

    v248 = a2;
    v28 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v253[0] = v242;
    *v28 = 67110146;
    *(v28 + 4) = *(v9 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
    *(v28 + 8) = 2080;
    v29 = *(v9 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
    v247 = v3;
    if (v29)
    {
      v30 = MEMORY[0x21CE922B0](v29, &type metadata for AssetViewModel.Style);
      v32 = v31;
    }

    else
    {
      v30 = 7104878;
      v32 = 0xE300000000000000;
    }

    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v253);

    *(v28 + 10) = v61;
    *(v28 + 18) = 2080;
    v63 = MEMORY[0x277D85000];
    v64 = (*((*MEMORY[0x277D85000] & *v9) + 0xD0))(v62);
    v66 = v65;

    if (v66)
    {
      v67 = v64;
    }

    else
    {
      v67 = 7104878;
    }

    if (v66)
    {
      v68 = v66;
    }

    else
    {
      v68 = 0xE300000000000000;
    }

    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v253);

    *(v28 + 20) = v69;
    *(v28 + 28) = 1024;
    v71 = (*((*v63 & *v9) + 0xB8))(v70);

    if (v71)
    {

      v72 = 1;
    }

    else
    {
      v72 = 0;
    }

    *(v28 + 30) = v72;

    *(v28 + 34) = 2080;
    (*((*v63 & *v9) + 0x280))();
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v73 = Set.description.getter();
    v75 = v74;

    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v253);

    *(v28 + 36) = v76;
    _os_log_impl(&dword_21607C000, v26, v27, "Failed to build DBAssetModelType from MutableWorkoutViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d, workoutUUIDs=%s", v28, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v242, -1, -1);
    MEMORY[0x21CE94770](v28, -1, -1);

    goto LABEL_137;
  }

  type metadata accessor for MutableMotionActivityViewModel();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v23 = MutableMotionActivityViewModel.build()();
    if (v23)
    {
      v7 = v23 | 0x2000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v256 = v243;
      *v53 = 67109890;
      *(v53 + 4) = *(v22 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v54 = *(v22 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      v247 = v3;
      if (v54)
      {
        v55 = MEMORY[0x21CE922B0](v54, &type metadata for AssetViewModel.Style);
        v57 = v56;
      }

      else
      {
        v57 = 0xE300000000000000;
        v55 = 7104878;
      }

      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v256);

      *(v53 + 10) = v85;
      *(v53 + 18) = 2080;
      v86 = (v22 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v87 = v86[1];
      if (v87)
      {
        v88 = *v86;
      }

      else
      {
        v87 = 0xE300000000000000;
        v88 = 7104878;
      }

      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v87, &v256);

      *(v53 + 20) = v89;
      *(v53 + 28) = 1024;
      v90 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v91 = *(v22 + v90);

      *(v53 + 30) = v91 != 0;
      v92 = "Failed to build DBAssetModelType from MutableMotionActivityViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d";
LABEL_135:
      _os_log_impl(&dword_21607C000, v51, v52, v92, v53, 0x22u);
      v172 = v243;
LABEL_136:
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v172, -1, -1);
      MEMORY[0x21CE94770](v53, -1, -1);

LABEL_137:
      a2 = v248;
      v3 = v247;
      goto LABEL_138;
    }

    goto LABEL_132;
  }

  type metadata accessor for MutableMediaFirstPartyViewModel();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;
    PartyView = MutableMediaFirstPartyViewModel.build()();
    if (PartyView)
    {
      v7 = PartyView | 0x5000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v256 = v243;
      *v53 = 67109890;
      *(v53 + 4) = *(v34 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v78 = *(v34 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      v247 = v3;
      if (v78)
      {
        v79 = MEMORY[0x21CE922B0](v78, &type metadata for AssetViewModel.Style);
        v81 = v80;
      }

      else
      {
        v81 = 0xE300000000000000;
        v79 = 7104878;
      }

      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v256);

      *(v53 + 10) = v101;
      *(v53 + 18) = 2080;
      v102 = (v34 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v103 = v102[1];
      if (v103)
      {
        v104 = *v102;
      }

      else
      {
        v103 = 0xE300000000000000;
        v104 = 7104878;
      }

      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v103, &v256);

      *(v53 + 20) = v105;
      *(v53 + 28) = 1024;
      v106 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v107 = *(v34 + v106);

      *(v53 + 30) = v107 != 0;
      v92 = "Failed to build DBAssetModelType from MutableMediaFirstPartyViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d";
      goto LABEL_135;
    }

LABEL_132:

    a2 = v248;
    goto LABEL_138;
  }

  type metadata accessor for MutableMediaThirdPartyViewModel();
  v58 = swift_dynamicCastClass();
  if (v58)
  {
    v59 = v58;
    v60 = MutableMediaThirdPartyViewModel.build()();
    if (v60)
    {
      v7 = v60 | 0x6000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    __swift_project_value_buffer(v93, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v256 = v243;
      *v53 = 67109890;
      *(v53 + 4) = *(v59 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v94 = *(v59 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      v247 = v3;
      if (v94)
      {
        v95 = MEMORY[0x21CE922B0](v94, &type metadata for AssetViewModel.Style);
        v97 = v96;
      }

      else
      {
        v97 = 0xE300000000000000;
        v95 = 7104878;
      }

      v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v256);

      *(v53 + 10) = v116;
      *(v53 + 18) = 2080;
      v117 = (v59 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v118 = v117[1];
      if (v118)
      {
        v119 = *v117;
      }

      else
      {
        v118 = 0xE300000000000000;
        v119 = 7104878;
      }

      v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v118, &v256);

      *(v53 + 20) = v120;
      *(v53 + 28) = 1024;
      v121 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v122 = *(v59 + v121);

      *(v53 + 30) = v122 != 0;
      v92 = "Failed to build DBAssetModelType from MutableMediaThirdPartyViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d";
      goto LABEL_135;
    }

    goto LABEL_132;
  }

  type metadata accessor for MutableStateOfMindViewModel();
  v82 = swift_dynamicCastClass();
  if (v82)
  {
    v83 = v82;
    v84 = MutableStateOfMindViewModel.build()();
    if (v84)
    {
      v7 = v84 | 0x4000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    __swift_project_value_buffer(v108, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v256 = v243;
      *v53 = 67109890;
      *(v53 + 4) = *(v83 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v109 = *(v83 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      v247 = v3;
      if (v109)
      {
        v110 = MEMORY[0x21CE922B0](v109, &type metadata for AssetViewModel.Style);
        v112 = v111;
      }

      else
      {
        v112 = 0xE300000000000000;
        v110 = 7104878;
      }

      v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, &v256);

      *(v53 + 10) = v131;
      *(v53 + 18) = 2080;
      v132 = (v83 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v133 = v132[1];
      if (v133)
      {
        v134 = *v132;
      }

      else
      {
        v133 = 0xE300000000000000;
        v134 = 7104878;
      }

      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v133, &v256);

      *(v53 + 20) = v135;
      *(v53 + 28) = 1024;
      v136 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v137 = *(v83 + v136);

      *(v53 + 30) = v137 != 0;
      v92 = "Failed to build DBAssetModelType from MutableStateOfMindViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d";
      goto LABEL_135;
    }

    goto LABEL_132;
  }

  type metadata accessor for MutablePhotoViewModel();
  v98 = swift_dynamicCastClass();
  if (v98)
  {
    v99 = v98;
    v100 = MutablePhotoViewModel.build()();
    if (v100)
    {
      v7 = v100 | 0x7000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    __swift_project_value_buffer(v123, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v256 = v243;
      *v53 = 67109890;
      *(v53 + 4) = *(v99 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v124 = *(v99 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      v247 = v3;
      if (v124)
      {
        v125 = MEMORY[0x21CE922B0](v124, &type metadata for AssetViewModel.Style);
        v127 = v126;
      }

      else
      {
        v127 = 0xE300000000000000;
        v125 = 7104878;
      }

      v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, &v256);

      *(v53 + 10) = v147;
      *(v53 + 18) = 2080;
      v148 = (v99 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v149 = v148[1];
      if (v149)
      {
        v150 = *v148;
      }

      else
      {
        v149 = 0xE300000000000000;
        v150 = 7104878;
      }

      v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v149, &v256);

      *(v53 + 20) = v151;
      *(v53 + 28) = 1024;
      v152 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v153 = *(v99 + v152);

      *(v53 + 30) = v153 != 0;
      v92 = "Failed to build DBAssetModelType from MutablePhotoViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d";
      goto LABEL_135;
    }

    goto LABEL_132;
  }

  type metadata accessor for MutableReflectionViewModel();
  v113 = swift_dynamicCastClass();
  if (v113)
  {
    v114 = v113;
    v115 = MutableReflectionViewModel.build()();
    if (v115)
    {
      v7 = v115 | 0x8000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    __swift_project_value_buffer(v138, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v256 = v243;
      *v53 = 67109890;
      *(v53 + 4) = *(v114 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v139 = *(v114 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      v247 = v3;
      if (v139)
      {
        v140 = MEMORY[0x21CE922B0](v139, &type metadata for AssetViewModel.Style);
        v142 = v141;
      }

      else
      {
        v142 = 0xE300000000000000;
        v140 = 7104878;
      }

      v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v142, &v256);

      *(v53 + 10) = v165;
      *(v53 + 18) = 2080;
      v166 = (v114 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v167 = v166[1];
      if (v167)
      {
        v168 = *v166;
      }

      else
      {
        v167 = 0xE300000000000000;
        v168 = 7104878;
      }

      v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v167, &v256);

      *(v53 + 20) = v169;
      *(v53 + 28) = 1024;
      v170 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v171 = *(v114 + v170);

      *(v53 + 30) = v171 != 0;
      v92 = "Failed to build DBAssetModelType from MutableReflectionViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d";
      goto LABEL_135;
    }

    goto LABEL_132;
  }

  type metadata accessor for MutableLivePhotoViewModel();
  v128 = swift_dynamicCastClass();
  if (v128)
  {
    v129 = v128;
    v130 = MutableLivePhotoViewModel.build()();
    if (v130)
    {
      v7 = v130 | 0x9000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v154 = type metadata accessor for Logger();
    __swift_project_value_buffer(v154, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v155 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v155))
    {
      v244 = 7104878;
      v247 = v3;
      v53 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v256 = v239;
      *v53 = 67109890;
      *(v53 + 4) = *(v129 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v156 = *(v129 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      if (v156)
      {
        v157 = MEMORY[0x21CE922B0](v156, &type metadata for AssetViewModel.Style);
        v159 = v158;
      }

      else
      {
        v159 = 0xE300000000000000;
        v157 = 7104878;
      }

      v205 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v159, &v256);

      *(v53 + 10) = v205;
      *(v53 + 18) = 2080;
      v206 = (v129 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v207 = v206[1];
      if (v207)
      {
        v244 = *v206;
      }

      else
      {
        v207 = 0xE300000000000000;
      }

      v208 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v244, v207, &v256);

      *(v53 + 20) = v208;
      *(v53 + 28) = 1024;
      v209 = OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto;
      swift_beginAccess();
      v210 = *(v129 + v209);

      *(v53 + 30) = v210 != 0;
      _os_log_impl(&dword_21607C000, v51, v155, "Failed to build DBAssetModelType from MutableLivePhotoViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseLivePhoto=%{BOOL}d", v53, 0x22u);
      v172 = v239;
      goto LABEL_136;
    }

    goto LABEL_132;
  }

  type metadata accessor for MutableVideoViewModel();
  v143 = swift_dynamicCastClass();
  if (v143)
  {
    v144 = v143;
    v145 = v3;
    v146 = MutableVideoViewModel.build()();
    if (v146)
    {
      v7 = v146 | 0xA000000000000000;
      goto LABEL_149;
    }

    v249 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v193 = type metadata accessor for Logger();
    __swift_project_value_buffer(v193, static CommonLogger.viewModel);
    v194 = v3;
    v195 = Logger.logObject.getter();
    v196 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v195, v196))
    {
      v245 = 7104878;
      v197 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v256 = v240;
      *v197 = 67109890;
      *(v197 + 4) = *(v144 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v197 + 8) = 2080;
      v198 = *(v144 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      if (v198)
      {
        v199 = MEMORY[0x21CE922B0](v198, &type metadata for AssetViewModel.Style);
        v201 = v200;
      }

      else
      {
        v201 = 0xE300000000000000;
        v199 = 7104878;
      }

      v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v199, v201, &v256);

      *(v197 + 10) = v219;
      *(v197 + 18) = 2080;
      v220 = (v144 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v221 = v220[1];
      if (v221)
      {
        v245 = *v220;
      }

      else
      {
        v221 = 0xE300000000000000;
      }

      v222 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v245, v221, &v256);

      *(v197 + 20) = v222;
      *(v197 + 28) = 1024;
      v223 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
      swift_beginAccess();
      v224 = *(v144 + v223);

      *(v197 + 30) = v224 != 0;
      _os_log_impl(&dword_21607C000, v195, v196, "Failed to build DBAssetModelType from MutableVideoViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, video=%{BOOL}d", v197, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v240, -1, -1);
      MEMORY[0x21CE94770](v197, -1, -1);
    }

    else
    {
    }

    a2 = v249;
    v3 = v145;
    goto LABEL_138;
  }

  v160 = a2;
  type metadata accessor for MutableContactViewModel();
  v161 = v3;
  v162 = swift_dynamicCastClass();
  if (v162)
  {
    v163 = v162;
    v164 = MutableContactViewModel.build()();
    if (v164)
    {
      v7 = v164 | 0xB000000000000000;
      goto LABEL_149;
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v211 = type metadata accessor for Logger();
    __swift_project_value_buffer(v211, static CommonLogger.viewModel);
    v212 = v3;
    v213 = Logger.logObject.getter();
    v250 = static os_log_type_t.error.getter();
    log = v213;
    if (os_log_type_enabled(v213, v250))
    {
      v246 = 7104878;
      v214 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v255[0] = v241;
      *v214 = 67109634;
      *(v214 + 4) = *(v163 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v214 + 8) = 2080;
      v215 = *(v163 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      if (v215)
      {
        v216 = MEMORY[0x21CE922B0](v215, &type metadata for AssetViewModel.Style);
        v218 = v217;
      }

      else
      {

        v218 = 0xE300000000000000;
        v216 = 7104878;
      }

      v234 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v216, v218, v255);

      *(v214 + 10) = v234;
      *(v214 + 18) = 2080;
      v235 = (v163 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v236 = v235[1];
      if (v236)
      {
        v246 = *v235;
      }

      else
      {
        v236 = 0xE300000000000000;
      }

      v237 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v246, v236, v255);

      *(v214 + 20) = v237;
      _os_log_impl(&dword_21607C000, log, v250, "Failed to build DBAssetModelType from MutableContactViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s", v214, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v241, -1, -1);
      MEMORY[0x21CE94770](v214, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for MutablePosterViewModel();
    v202 = swift_dynamicCastClass();
    if (!v202)
    {
      goto LABEL_138;
    }

    v203 = v202;
    v204 = MutablePosterViewModel.build()();
    if (v204)
    {
      v7 = v204 | 0xC000000000000000;
      goto LABEL_149;
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v225 = type metadata accessor for Logger();
    __swift_project_value_buffer(v225, static CommonLogger.viewModel);
    v226 = v3;
    v227 = Logger.logObject.getter();
    v228 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v227, v228))
    {
      v229 = swift_slowAlloc();
      loga = swift_slowAlloc();
      v253[0] = loga;
      *v229 = 67109378;
      *(v229 + 4) = *(v203 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v229 + 8) = 2080;
      v230 = *(v203 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      if (v230)
      {
        v231 = MEMORY[0x21CE922B0](v230, &type metadata for AssetViewModel.Style);
        v233 = v232;
      }

      else
      {
        v231 = 7104878;

        v233 = 0xE300000000000000;
      }

      v238 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v231, v233, v253);

      *(v229 + 10) = v238;
      _os_log_impl(&dword_21607C000, v227, v228, "Failed to build DBAssetModelType from MutablePosterViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s", v229, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(loga);
      MEMORY[0x21CE94770](loga, -1, -1);
      MEMORY[0x21CE94770](v229, -1, -1);
    }

    else
    {
    }
  }

  a2 = v160;
  v3 = v161;
LABEL_138:
  v173 = AssetViewModel.buildGenericFallbackModel()();
  if (v173)
  {
    v7 = v173;
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v174 = type metadata accessor for Logger();
    __swift_project_value_buffer(v174, static CommonLogger.processing);
    v175 = v3;
    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v256 = v179;
      *v178 = 136315138;
      swift_getObjectType();
      v180 = _typeName(_:qualified:)();
      v182 = a2;
      v183 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v181, &v256);

      *(v178 + 4) = v183;
      a2 = v182;
      _os_log_impl(&dword_21607C000, v176, v177, "[DBAsset.init] generic model, %s", v178, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v179);
      MEMORY[0x21CE94770](v179, -1, -1);
      MEMORY[0x21CE94770](v178, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v184 = type metadata accessor for Logger();
    __swift_project_value_buffer(v184, static CommonLogger.processing);
    v185 = v3;
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v256 = v189;
      *v188 = 136315138;
      swift_getObjectType();
      v190 = _typeName(_:qualified:)();
      v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190, v191, &v256);

      *(v188 + 4) = v192;
      _os_log_impl(&dword_21607C000, v186, v187, "[DBAsset.init] nil model, %s", v188, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v189);
      MEMORY[0x21CE94770](v189, -1, -1);
      MEMORY[0x21CE94770](v188, -1, -1);
    }

    v7 = 0xF000000000000007;
  }

LABEL_149:
  *a2 = v7;
}

unint64_t DBAsset.dumpMapRepresentations.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      type metadata accessor for DBMapModel();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        swift_retain_n();
        _StringGuts.grow(_:)(124);
        v13 = MEMORY[0x21CE92100](0xD00000000000001FLL, 0x800000021657F920);
        (*(*v12 + 376))(v13);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x21CE92100](v14);

        MEMORY[0x21CE92100](0x744970616D0A202CLL, 0xEF3D687361486D65);
        v15 = *(v12 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_mapItem);
        if (v15)
        {
          v4 = *(*v15 + 224);

          v4(v5);
        }

        v6 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x21CE92100](v6);

        MEMORY[0x21CE92100](0x3D74616C0A2CLL, 0xE600000000000000);
        Double.write<A>(to:)();
        MEMORY[0x21CE92100](0x3D676E6F6C0A2CLL, 0xE700000000000000);
        Double.write<A>(to:)();
        MEMORY[0x21CE92100](0x6469666E6F630A2CLL, 0xED00003D65636E65);
        Double.write<A>(to:)();
        MEMORY[0x21CE92100](0x3D797469630A2CLL, 0xE700000000000000);
        v7 = *(v12 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_city);
        v8 = *(v12 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_city + 8);

        MEMORY[0x21CE92100](v7, v8);

        MEMORY[0x21CE92100](0x6F7A69726F680A2CLL, 0xED00003D6C61746ELL);
        Double.write<A>(to:)();
        MEMORY[0x21CE92100](0x697461636F6C0A2CLL, 0xEF3D656D614E6E6FLL);
        v9 = *(v12 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_locationName);
        v10 = *(v12 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_locationName + 8);

        MEMORY[0x21CE92100](v9, v10);

        MEMORY[0x21CE92100](44, 0xE100000000000000);
        MEMORY[0x21CE92100](0, 0xE000000000000000);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
  }

  return 0xD000000000000028;
}

unint64_t DBAsset.dumpLivePhotoRepresentations.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      type metadata accessor for DBLivePhotoModel();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        swift_retain_n();
        _StringGuts.grow(_:)(63);
        v8 = MEMORY[0x21CE92100](0xD000000000000025, 0x800000021657F980);
        (*(*v7 + 376))(v8);
        v9 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x21CE92100](v9);

        MEMORY[0x21CE92100](0xD000000000000013, 0x800000021657F9B0);
        if (*(v7 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8))
        {
          v4 = *(v7 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
          v5 = *(v7 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
        }

        else
        {
          v5 = 0xE300000000000000;
          v4 = 7104878;
        }

        MEMORY[0x21CE92100](v4, v5);

        MEMORY[0x21CE92100](663596, 0xE300000000000000);
        MEMORY[0x21CE92100](0, 0xE000000000000000);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
  }

  return 0xD000000000000034;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t *__dst, unint64_t *a2, uint64_t *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v26 = a2;
      v27 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v27;
      a2 = v26;
    }

    v46 = &__src[8 * v11];
    v13 = __src;
    if (v9 >= 8 && a2 > v5)
    {
      v42 = __src;
LABEL_31:
      v28 = a2 - 1;
      --v4;
      v29 = v46;
      v43 = a2 - 1;
      v45 = a2;
      do
      {
        v46 = v29;
        v31 = *--v29;
        v30 = v31;
        v32 = *v28;
        v33 = v31 & 0xFFFFFFFFFFFFFFFLL;
        switch(v31 >> 60)
        {
          case 1uLL:
          case 2uLL:
          case 3uLL:
          case 4uLL:
          case 5uLL:
          case 6uLL:
          case 7uLL:
          case 8uLL:
          case 9uLL:
          case 0xAuLL:
          case 0xBuLL:
          case 0xCuLL:
            v30 = v33;
            break;
          default:
            break;
        }

        v34 = *(*v30 + 376);

        v36 = v34(v35);
        if (v32 >> 60)
        {
          v37 = v32 & 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v32;
        }

        v38 = *(*v37 + 376);

        v40 = v38(v39);

        if (v36 < v40)
        {
          if (v4 + 1 != v45)
          {
            *v4 = *v43;
          }

          v13 = v42;
          if (v46 <= v42 || (a2 = v43, v43 <= v5))
          {
            a2 = v43;
            goto LABEL_47;
          }

          goto LABEL_31;
        }

        if (v4 + 1 != v46)
        {
          *v4 = *v29;
        }

        --v4;
        v13 = v42;
        v28 = v43;
      }

      while (v29 > v42);
      v46 = v29;
      a2 = v45;
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v46 = &v13[v8];
    if (v6 >= 8 && v12 < v4)
    {
      v14 = v12;
      while (1)
      {
        v44 = v14;
        v15 = *v14;
        v16 = *v13;
        switch(*v14 >> 60)
        {
          case 1uLL:
          case 2uLL:
          case 3uLL:
          case 4uLL:
          case 5uLL:
          case 6uLL:
          case 7uLL:
          case 8uLL:
          case 9uLL:
          case 0xAuLL:
          case 0xBuLL:
          case 0xCuLL:
            v15 = *v14 & 0xFFFFFFFFFFFFFFFLL;
            break;
          default:
            break;
        }

        v17 = *(*v15 + 376);

        v19 = v17(v18);
        v20 = v16 >> 60 ? v16 & 0xFFFFFFFFFFFFFFFLL : v16;
        v21 = *(*v20 + 376);

        v23 = v21(v22);

        if (v19 >= v23)
        {
          break;
        }

        v24 = v44;
        v14 = v44 + 1;
        if (v5 != v44)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v5;
        if (v13 >= v46 || v14 >= v4)
        {
          goto LABEL_24;
        }
      }

      v24 = v13;
      v25 = v5 == v13++;
      v14 = v44;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v5 = *v24;
      goto LABEL_22;
    }

LABEL_24:
    a2 = v5;
  }

LABEL_47:
  if (a2 != v13 || a2 >= (v13 + ((v46 - v13 + (v46 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v46 - v13));
  }

  return 1;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    specialized _NativeDictionary._delete(at:)(v1[3], *v1[2]);
  }

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_31:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_27;
        }

        if (v3 >= v10)
        {
          goto LABEL_31;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + 16 * v11 + 32);
        if (!v2)
        {
          v13 = v5[3];
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v28 = *(v9 + 16 * v11 + 32);
          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI11CloudRecord_pXpGMd);
          v16 = swift_allocObject();
          v17 = _swift_stdlib_malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 17;
          }

          v19 = v18 >> 4;
          v16[2] = v15;
          v16[3] = 2 * (v18 >> 4);
          v20 = (v16 + 4);
          v21 = v5[3] >> 1;
          if (v5[2])
          {
            v22 = v5 + 4;
            if (v16 != v5 || v20 >= v22 + 16 * v21)
            {
              v23 = v18 >> 4;
              memmove(v16 + 4, v22, 16 * v21);
              v19 = v23;
            }

            v5[2] = 0;
          }

          v6 = (v20 + 16 * v21);
          v2 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

          v5 = v16;
          v12 = v28;
        }

        v24 = __OFSUB__(v2--, 1);
        if (v24)
        {
          goto LABEL_33;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v25 = v5[3];
  if (v25 < 2)
  {
    return v5;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v2);
  v27 = v26 - v2;
  if (!v24)
  {
    v5[2] = v27;
    return v5;
  }

LABEL_35:
  __break(1u);
  return result;
}

{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  v26 = (MEMORY[0x277D84F90] + 32);
LABEL_4:
  v6 = *(v1 + 16);
  if (v3 == v6)
  {
    goto LABEL_38;
  }

  if (v3 >= v6)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  while (1)
  {
    v7 = *(v4 + 8 * v3);

    if (!v7)
    {
      goto LABEL_9;
    }

    if (v7 >> 62)
    {
      break;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_9:
    ++v3;
    v8 = *(v1 + 16);
    if (v3 == v8)
    {
      goto LABEL_38;
    }

    if (v3 >= v8)
    {
      goto LABEL_42;
    }
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_13:
  v9 = 0;
  ++v3;
  if ((v7 & 0xC000000000000001) == 0)
  {
    while (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v7 + 8 * v9 + 32);

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_37;
      }

LABEL_20:
      if (!v2)
      {
        v12 = v5[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_46;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 25;
        }

        v18 = v17 >> 3;
        v15[2] = v14;
        v15[3] = (2 * (v17 >> 3)) | 1;
        v19 = (v15 + 4);
        v20 = v5[3] >> 1;
        if (v5[2])
        {
          v21 = v5 + 4;
          v27 = v5;
          if (v15 != v5 || v19 >= v21 + 8 * v20)
          {
            v22 = v17 >> 3;
            memmove(v15 + 4, v21, 8 * v20);
            v18 = v22;
          }

          v27[2] = 0;
        }

        v26 = (v19 + 8 * v20);
        v2 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v5 = v15;
      }

      v11 = __OFSUB__(v2--, 1);
      if (v11)
      {
        goto LABEL_45;
      }

      *v26++ = v10;
      if (v7 >> 62)
      {
        result = __CocoaSet.count.getter();
        if (v9 == result)
        {
          goto LABEL_4;
        }
      }

      else
      {
        result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 == result)
        {
          goto LABEL_4;
        }
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        goto LABEL_35;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_44;
  }

LABEL_35:
  result = MEMORY[0x21CE93180](v9, v7);
  v10 = result;
  v11 = __OFADD__(v9++, 1);
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_37:
  __break(1u);
LABEL_38:

  v23 = v5[3];
  if (v23 < 2)
  {
    return v5;
  }

  v24 = v23 >> 1;
  v11 = __OFSUB__(v24, v2);
  v25 = v24 - v2;
  if (!v11)
  {
    v5[2] = v25;
    return v5;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t specialized FlattenSequence.Iterator.next()()
{
  v2 = v0[2];
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_2:
  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v1 = v0[3];
  if (v1 == result)
  {
    while (1)
    {
LABEL_5:
      v4 = v0[1];
      v5 = *(*v0 + 16);
      if (v4 == v5)
      {
        return 0;
      }

      if (v4 >= v5)
      {
        break;
      }

      v2 = *(*v0 + 8 * v4 + 32);
      v0[1] = v4 + 1;
      v1 = v0[2];

      v0[2] = v2;
      v0[3] = 0;
      if (v2)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    result = MEMORY[0x21CE93180](v1, v2);
    v6 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_17;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    v6 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
LABEL_15:
      v0[3] = v6;
      return result;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized static DBAsset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v89 = 0;
  v99 = type metadata accessor for UUID();
  v88 = *(v99 - 8);
  v4 = MEMORY[0x28223BE20](v99);
  v90 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v98 = &v73 - v6;
  v7 = *(a1 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say9MomentsUI12DBAssetModelCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v102[0] = v10;
  v11 = *(v9 + 16);

  if (!v11)
  {
    v79 = v10;
    goto LABEL_11;
  }

  for (i = 0; i != v11; ++i)
  {
    if (i >= *(v9 + 16))
    {
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
      goto LABEL_106;
    }

    v101 = *(v9 + 32 + 8 * i);

    v13 = v89;
    closure #1 in static DBAsset.== infix(_:_:)(v102, &v101);
    v89 = v13;
    if (v13)
    {
      goto LABEL_107;
    }
  }

  v79 = v102[0];
LABEL_11:

  if (*(a2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v14 = *(a2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v14 = v8;
  }

  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say9MomentsUI12DBAssetModelCGTt0g5Tf4g_n(v8);
  v102[0] = v15;
  v16 = v14[2];

  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (j >= v14[2])
      {
        goto LABEL_101;
      }

      v101 = v14[j + 4];

      v18 = v89;
      closure #1 in static DBAsset.== infix(_:_:)(v102, &v101);
      v89 = v18;
      if (v18)
      {
        goto LABEL_107;
      }
    }

    v15 = v102[0];
  }

  v19 = v79;
  v20 = v15;
  if (v79[2] != v15[2])
  {

    return 0;
  }

  v21 = 0;
  v22 = v79 + 8;
  v23 = 1 << *(v79 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v79[8];
  v73 = (v23 + 63) >> 6;
  v96 = (v88 + 8);
  v97 = (v88 + 16);
  v75 = v15;
  v74 = v79 + 8;
LABEL_25:
  while (2)
  {
    if (v25)
    {
      if (!v20[2])
      {
        goto LABEL_99;
      }
    }

    else
    {
      do
      {
        v40 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_103;
        }

        if (v40 >= v73)
        {

          return 1;
        }

        v25 = v22[v40];
        ++v21;
      }

      while (!v25);
      v21 = v40;
      if (!v20[2])
      {
        goto LABEL_99;
      }
    }

    v26 = v25;
    v78 = v21;
    v27 = __clz(__rbit64(v25)) | (v21 << 6);
    v28 = *(v19[7] + 8 * v27);
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(*(v19[6] + 8 * v27));
    if ((v30 & 1) == 0)
    {
      goto LABEL_99;
    }

    v31 = *(v20[7] + 8 * v29);
    v32 = v28 >> 62;
    v84 = v28;
    v91 = v31;
    if (v28 >> 62)
    {
      v33 = __CocoaSet.count.getter();
      v31 = v91;
      v34 = v91 >> 62;
      if (!(v91 >> 62))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v33 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v31 >> 62;
      if (!(v31 >> 62))
      {
LABEL_30:
        v35 = v26;
        if (v33 != *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_98;
        }

        goto LABEL_31;
      }
    }

    v70 = v33;
    v71 = __CocoaSet.count.getter();
    v33 = v70;
    v35 = v26;
    if (v70 != v71)
    {
LABEL_98:

      goto LABEL_99;
    }

LABEL_31:
    v77 = (v35 - 1) & v35;
    v76 = v33;
    if (v33 != 1)
    {
      goto LABEL_49;
    }

    if (v34)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_49;
      }

LABEL_34:
      v36 = v91;
      if ((v91 & 0xC000000000000001) != 0)
      {

        v37 = MEMORY[0x21CE93180](0, v36);
        if (!v32)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_105;
        }

        v37 = *(v91 + 32);

        if (!v32)
        {
LABEL_37:
          if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          goto LABEL_90;
        }
      }

      if (!__CocoaSet.count.getter())
      {
LABEL_90:

        goto LABEL_50;
      }

LABEL_38:

      if ((v84 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x21CE93180](0, v84);
LABEL_41:

        type metadata accessor for DBAssetModel();
        v39 = static DBAssetModel.== infix(_:_:)(v37, v38);

        v19 = v79;
        v20 = v75;
        v21 = v78;
        v22 = v74;
        v25 = v77;
        if ((v39 & 1) == 0)
        {
          goto LABEL_99;
        }

        continue;
      }

      if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v38 = *(v84 + 32);

        goto LABEL_41;
      }

LABEL_106:
      __break(1u);
LABEL_107:

      __break(1u);
      return result;
    }

    break;
  }

  if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_49:

LABEL_50:
  v102[0] = MEMORY[0x277D84FA0];
  if (v32)
  {
    v41 = __CocoaSet.count.getter();
    v42 = v91;
    if (!v41)
    {
LABEL_55:

      v43 = MEMORY[0x277D84FA0];
      goto LABEL_83;
    }
  }

  else
  {
    v41 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = v91;
    if (!v41)
    {
      goto LABEL_55;
    }
  }

  v82 = v41;
  v87 = v42 & 0xFFFFFFFFFFFFFF8;
  if (v34)
  {
    v94 = __CocoaSet.count.getter();
    v42 = v91;
  }

  else
  {
    v94 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = 0;
  v83 = v84 & 0xC000000000000001;
  v81 = v84 & 0xFFFFFFFFFFFFFF8;
  v80 = v84 + 32;
  v93 = v42 & 0xC000000000000001;
  v86 = v42 + 32;
  while (1)
  {
    if (v83)
    {
      v45 = v44;
      v92 = MEMORY[0x21CE93180](v44);
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v48 = v44;
      if (v44 >= *(v81 + 16))
      {
        goto LABEL_104;
      }

      v92 = *(v80 + 8 * v44);

      v46 = __OFADD__(v48, 1);
      v47 = v48 + 1;
      if (v46)
      {
        goto LABEL_102;
      }
    }

    v85 = v47;
    if (v94)
    {
      break;
    }

LABEL_58:

    v44 = v85;
    if (v85 == v82)
    {

      v43 = v102[0];
LABEL_83:
      v69 = *(v43 + 16);

      if (v69 != v76)
      {
        goto LABEL_99;
      }

      v19 = v79;
      v20 = v75;
      v21 = v78;
      v22 = v74;
      v25 = v77;
      goto LABEL_25;
    }
  }

  v49 = 0;
  while (2)
  {
    if (v93)
    {
      v53 = MEMORY[0x21CE93180](v49, v91);
      v46 = __OFADD__(v49, 1);
      v54 = v49 + 1;
      if (v46)
      {
        goto LABEL_95;
      }

LABEL_75:
      v55 = v102[0];
      v56 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
      v57 = *(v102[0] + 16);
      v95 = v54;
      v100 = v53;
      if (v57 && (_s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]), v58 = dispatch thunk of Hashable._rawHashValue(seed:)(), v59 = -1 << *(v55 + 32), v60 = v58 & ~v59, ((*(v55 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) != 0))
      {
        v61 = ~v59;
        v62 = *(v88 + 72);
        v63 = *(v88 + 16);
        while (1)
        {
          v65 = v98;
          v64 = v99;
          v63(v98, *(v55 + 48) + v62 * v60, v99);
          _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v66 = v56;
          v67 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v96)(v65, v64);
          if (v67)
          {
            break;
          }

          v60 = (v60 + 1) & v61;
          v56 = v66;
          if (((*(v55 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
          {
            goto LABEL_80;
          }
        }

LABEL_81:
      }

      else
      {
LABEL_80:
        type metadata accessor for DBAssetModel();
        v68 = v100;
        if ((static DBAssetModel.== infix(_:_:)(v92, v100) & 1) == 0)
        {
          goto LABEL_81;
        }

        v50 = v90;
        v51 = v99;
        (*v97)(v90, v68 + v56, v99);
        v52 = v98;
        specialized Set._Variant.insert(_:)(v98, v50);

        (*v96)(v52, v51);
      }

      v49 = v95;
      if (v95 == v94)
      {
        goto LABEL_58;
      }

      continue;
    }

    break;
  }

  if (v49 >= *(v87 + 16))
  {
    goto LABEL_96;
  }

  v53 = *(v86 + 8 * v49);

  v46 = __OFADD__(v49, 1);
  v54 = v49 + 1;
  if (!v46)
  {
    goto LABEL_75;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_99:

  return 0;
}

unint64_t specialized DBAsset.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBAsset.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBAsset()
{
  result = type metadata singleton initialization cache for DBAsset;
  if (!type metadata singleton initialization cache for DBAsset)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized DBAsset.assetDataLookup.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v5 = *(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      v9 = *(v5 + 32 + 8 * v8++);
      switch(v9 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v9 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      v10 = *(*v9 + 264);
      swift_retain_n();

      v10(a1, a2);

      if (v6 == v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }

  return result;
}

uint64_t specialized DBAsset.assetDataGet.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v5 = *(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      v9 = *(v5 + 32 + 8 * v8++);
      switch(v9 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v9 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      v10 = *(*v9 + 288);
      swift_retain_n();

      v10(a1, a2);

      if (v6 == v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }

  return result;
}

uint64_t specialized DBAsset.assetURLGet.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v5 = *(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      v9 = *(v5 + 32 + 8 * v8++);
      switch(v9 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v9 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      v10 = *(*v9 + 312);
      swift_retain_n();

      v10(a1, a2);

      if (v6 == v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }

  return result;
}

uint64_t outlined consume of DBAssetModelType?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t type metadata completion function for DBAsset()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSEAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DBWriter.mergedSuggestionsInWorking(with:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](DBWriter.mergedSuggestionsInWorking(with:), v4, v3);
}

uint64_t DBWriter.mergedSuggestionsInWorking(with:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v0[2] = MEMORY[0x277D84F90];
  v3 = *(v1 + 112);

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = DBWriter.mergedSuggestionsInWorking(with:);
  v5 = v0[3];

  return (specialized DBManager.beginMainWriteAsync(_:))(v3, v5, v0 + 2, v2);
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = DBWriter.mergedSuggestionsInWorking(with:);
  }

  else
  {
    v5 = DBWriter.mergedSuggestionsInWorking(with:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 163) = a3;
  *(v4 + 162) = a2;
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;
  v5 = type metadata accessor for Date();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v3, 0);
}

uint64_t DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:)()
{
  v1 = *(*(v0 + 64) + 112);
  *(v0 + 96) = v1;
  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v1, 0);
}

{
  v1 = v0[12];
  Date.init()();
  v0[2] = 0;
  v0[3] = 0;
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = 0;

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v1, 0);
}

{
  specialized DBManager.beginMultiThreadedWrite(_:)(v0[12], v0 + 2, v0 + 4, v0 + 6);
  v0[13] = 0;
  v1 = v0[8];

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v1, 0);
}

{
  v26 = v0;
  v1 = *(v0 + 48);
  *(v0 + 112) = v1;
  if (v1)
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    *(v0 + 120) = v2;
    if (!v2 || (v4 = *(v0 + 24)) != 0 && (*(v0 + 16) == v3 ? (v5 = v4 == v2) : (v5 = 0), v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      if (*(v0 + 163) != 1 || (*(v0 + 162) & 1) != 0)
      {
        v17 = *(v0 + 112);
        v18 = *(v0 + 96);
        *(v0 + 144) = (*(*v17 + 304))(v6);
        *(v0 + 152) = (*(*v17 + 352))();
        *(v0 + 164) = v19;

        return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v18, 0);
      }

      else
      {
        if (one-time initialization token for analytics != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, static CommonLogger.analytics);

        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.info.getter();
        v10 = os_log_type_enabled(v8, v9);
        v11 = *(v0 + 112);
        if (v10)
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v25 = v13;
          *v12 = 136446466;
          *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000021657F9F0, &v25);
          *(v12 + 12) = 2048;
          *(v12 + 14) = (*(*v11 + 304))();

          _os_log_impl(&dword_21607C000, v8, v9, "[DBWriter.%{public}s] Sending snapshot analytics event for createDelta, sequence=%llu", v12, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x21CE94770](v13, -1, -1);
          MEMORY[0x21CE94770](v12, -1, -1);
        }

        else
        {
        }

        *(v0 + 161) = 1;

        v21 = swift_task_alloc();
        *(v0 + 136) = v21;
        *v21 = v0;
        v21[1] = DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:);
        v22 = *(v0 + 112);
        v23 = *(v0 + 88);
        v24 = *(v0 + 56);

        return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v22, v24, 0, v23, (v0 + 161));
      }
    }

    else
    {

      v20 = swift_task_alloc();
      *(v0 + 128) = v20;
      *v20 = v0;
      v20[1] = DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:);

      return DBManager.setSnapshotGeneration(_:)(v3, v2);
    }
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError();
    swift_allocError();
    *v14 = 11;
    swift_willThrow();
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v15 = *(v0 + 8);

    return v15();
  }
}

{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v1, 0);
}

{
  v17 = v0;
  if (*(v0 + 163) != 1 || (*(v0 + 162) & 1) != 0)
  {
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);
    *(v0 + 144) = (*(*v8 + 304))();
    *(v0 + 152) = (*(*v8 + 352))();
    *(v0 + 164) = v10;

    return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v9, 0);
  }

  else
  {
    if (one-time initialization token for analytics != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static CommonLogger.analytics);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 112);
    if (v4)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136446466;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000021657F9F0, &v16);
      *(v6 + 12) = 2048;
      *(v6 + 14) = (*(*v5 + 304))();

      _os_log_impl(&dword_21607C000, v2, v3, "[DBWriter.%{public}s] Sending snapshot analytics event for createDelta, sequence=%llu", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x21CE94770](v7, -1, -1);
      MEMORY[0x21CE94770](v6, -1, -1);
    }

    else
    {
    }

    *(v0 + 161) = 1;

    v11 = swift_task_alloc();
    *(v0 + 136) = v11;
    *v11 = v0;
    v11[1] = DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:);
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);
    v14 = *(v0 + 56);

    return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v12, v14, 0, v13, (v0 + 161));
  }
}

{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v1, 0);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  *(v0 + 144) = (*(*v1 + 304))();
  *(v0 + 152) = (*(*v1 + 352))();
  *(v0 + 164) = v3;

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v2, 0);
}

{
  v4.value = *(v0 + 144);
  v5.value = *(v0 + 152);
  v1 = *(v0 + 64);
  v5.is_nil = *(v0 + 164) & 1;
  v4.is_nil = 0;
  DBManager.addSnapshotEnd(sequence:suggestions:)(v4, v5);

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v1, 0);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 96);
  v6 = *(v5 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v3 + 64);
    *(v5 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount) = v8;
    v10 = v8 > 0;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v3 + 160) = v10;

    static Published.subscript.setter();
    a1 = DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:);
    a2 = v9;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

Swift::Void __swiftcall DBWriter.publishDraft(rendered:total:)(Swift::UInt64 rendered, Swift::UInt64 total)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v10 = _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBWriter and conformance DBWriter, v9, type metadata accessor for DBWriter);
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v10;
  v11[4] = rendered;
  v11[5] = total;
  v11[6] = v2;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in DBWriter.publishDraft(rendered:total:), v11);
}

void DBWriter.saveSuggestionsIntoDraft(_:context:renderedCount:publish:)(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *v4;
  v10 = MEMORY[0x21CE93DB0]();
  closure #1 in DBWriter.saveSuggestionsIntoDraft(_:context:renderedCount:publish:)(a2, a1, a3, a4, v4, v9, &v11);
  objc_autoreleasePoolPop(v10);
}

uint64_t static DBWriter.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static DBWriter.Class = a1;
  unk_27CA90F20 = a2;
  byte_27CA90F28 = a3;
  return result;
}

uint64_t DBWriter.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static DBWriter.Log);
}

uint64_t static DBWriter.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBWriter.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DBWriter.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBWriter.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DBWriter.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static DBWriter.Log);
  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance DBWriter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBWriter.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DBWriter.Constants.defaultSnapshotExpiration.getter()
{
  specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)();

  return Date.init(timeIntervalSinceNow:)();
}

Swift::Int DBWriter.FetchError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](0);
  return Hasher._finalize()();
}

uint64_t DBWriter.__allocating_init(database:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t DBWriter.init(database:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  return v1;
}

uint64_t DBWriter.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DBWriter.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t DBWriter.latestSnapshots()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v16 = 0;
  v17 = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  v15 = MEMORY[0x277D84F90];
  v7 = dispatch thunk of ModelContainer.mainContext.getter();
  closure #1 in DBWriter.latestSnapshots()(v7, &v15, &v16, v6 + 16);
  if (v1)
  {
    dispatch thunk of ModelContext.rollback()();
  }

  else if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    dispatch thunk of ModelContext.save()();

    goto LABEL_6;
  }

LABEL_6:
  if (v17 != 1)
  {
    v8 = v16;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    type metadata accessor for MainActor();

    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v2;
    v11[5] = v8;
    v11[6] = v6;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #2 in DBWriter.latestSnapshots(), v11);
  }

  return v15;
}

uint64_t closure #1 in DBWriter.latestSnapshots()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMd);
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  SortDescriptor.order.setter();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMd);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMd);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21658CA50;
  (*(v11 + 16))(v16 + v15, v13, v10);
  type metadata accessor for DBSnapshot();
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot);
  FetchDescriptor.init(predicate:sortBy:)();
  v17 = v34;
  v18 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v17)
  {
    (*(v7 + 8))(v9, v35);
    return (*(v11 + 8))(v13, v10);
  }

  v34 = v7;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  *v32 = v18;

  v23 = *v22;
  if (v23 >> 62)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    (*(v34 + 8))(v9, v35);
    return (*(v11 + 8))(v13, v10);
  }

  if ((v23 & 0xC000000000000001) != 0)
  {

    v24 = MEMORY[0x21CE93180](0, v23);
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v24 = *(v23 + 32);
  }

  *v20 = (*(*v24 + 304))(v25);
  *(v20 + 8) = 0;
  v26 = (*(*v24 + 352))();
  v28 = v27;

  (*(v34 + 8))(v9, v35);
  result = (*(v11 + 8))(v13, v10);
  *v21 = v26;
  *(v21 + 8) = v28 & 1;
  return result;
}

uint64_t closure #2 in DBWriter.latestSnapshots()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x2822009F8](closure #2 in DBWriter.latestSnapshots(), v8, v7);
}

uint64_t closure #2 in DBWriter.latestSnapshots()()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 40) + 112);
  *(v0 + 88) = v2;
  swift_beginAccess();
  *(v0 + 96) = *(v1 + 16);
  *(v0 + 104) = *(v1 + 24);

  return MEMORY[0x2822009F8](closure #2 in DBWriter.latestSnapshots(), v2, 0);
}

{
  DBManager.setLatestLocalSnapshotSequence(_:_:)(*(v0 + 48), *(v0 + 96));
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](closure #2 in DBWriter.latestSnapshots(), v1, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DBWriter.pruneSnapshotsTo(_:)(Swift::Int a1)
{
  v4 = dispatch thunk of ModelContainer.mainContext.getter();
  closure #1 in DBWriter.pruneSnapshotsTo(_:)(v4, a1);
  if (v2)
  {
    dispatch thunk of ModelContext.rollback()();

LABEL_5:

    goto LABEL_6;
  }

  if ((dispatch thunk of ModelContext.hasChanges.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  dispatch thunk of ModelContext.save()();

LABEL_6:

  specialized BTask.init(name:operation:)(0xD00000000000001DLL, 0x800000021657FA30, &async function pointer to partial apply for closure #2 in DBWriter.pruneSnapshotsTo(_:), v1);
}

uint64_t closure #1 in DBWriter.pruneSnapshotsTo(_:)(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v43 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMd);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMd);
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMd);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21658CA50;
  v15 = v14 + v13;
  v16 = v8;
  (*(v9 + 16))(v15, v11, v8);
  type metadata accessor for DBSnapshot();
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot);
  v17 = v7;
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.includePendingChanges.setter();
  v18 = v45;
  v19 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v18)
  {
    (*(v44 + 8))(v7, v5);
    return (*(v9 + 8))(v11, v8);
  }

  v21 = v19;
  v22 = v5;
  v38 = 0;
  v39 = v11;
  v40 = v9;
  v41 = v17;
  v24 = v43;
  v23 = v44;
  v47 = v19;
  if (one-time initialization token for processing != -1)
  {
LABEL_52:
    swift_once();
  }

  v45 = v22;
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static CommonLogger.processing);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    if (v21 >> 62)
    {
      v29 = __CocoaSet.count.getter();
    }

    else
    {
      v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v28 + 4) = v29;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v24;
    _os_log_impl(&dword_21607C000, v26, v27, "[pruneSnapshotsTo] local snapshots n=%ld, target count=%ld", v28, 0x16u);
    MEMORY[0x21CE94770](v28, -1, -1);
  }

  v42 = v16;

  while (1)
  {
    v30 = v21 & 0x8000000000000000;
    v16 = v21 >> 62;
    v31 = v23;
    if (v21 >> 62)
    {
      break;
    }

    v22 = v21 & 0xFFFFFFFFFFFFFF8;
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v24)
    {
      goto LABEL_46;
    }

    swift_beginAccess();
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_12:
    if ((v21 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x21CE93180](0, v21);
      v32 = v21 & 0xFFFFFFFFFFFFFF8;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v31 = *(v21 + 32);

      v32 = v21 & 0xFFFFFFFFFFFFFF8;
      if (!v16)
      {
LABEL_15:
        v33 = *(v32 + 16);
        if (!v33)
        {
          goto LABEL_50;
        }

        goto LABEL_31;
      }
    }

    if (v30)
    {
      v22 = v21;
    }

    else
    {
      v22 = v32;
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_50;
    }

    if (__CocoaSet.count.getter() < 1)
    {
      goto LABEL_51;
    }

    v33 = __CocoaSet.count.getter();
LABEL_31:
    v22 = v33 - 1;
    if (__OFSUB__(v33, 1))
    {
      goto LABEL_49;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v16)
      {
        v34 = (v21 & 0xFFFFFFFFFFFFFF8);
        if (v22 <= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_37:
      __CocoaSet.count.getter();
      goto LABEL_38;
    }

    if (v16)
    {
      goto LABEL_37;
    }

LABEL_38:
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v34 = (v21 & 0xFFFFFFFFFFFFFF8);
LABEL_39:

    if (v21 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_56;
      }

      memmove(v34 + 4, v34 + 5, 8 * (result - 1));
      v37 = __CocoaSet.count.getter();
      v36 = v37 - 1;
      if (__OFSUB__(v37, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        (*(v31 + 8))(v41, v45);
        (*(v40 + 8))(v39, v42);
      }
    }

    else
    {
      v35 = v34[2];
      memmove(v34 + 4, v34 + 5, 8 * v35 - 8);
      v36 = v35 - 1;
      if (__OFSUB__(v35, 1))
      {
        goto LABEL_45;
      }
    }

    v34[2] = v36;
    v47 = v21;
    swift_endAccess();
    dispatch thunk of ModelContext.delete<A>(_:)();
  }

  if (v30)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 & 0xFFFFFFFFFFFFFF8;
  }

  if (__CocoaSet.count.getter() <= v24)
  {
    goto LABEL_46;
  }

  swift_beginAccess();
  result = __CocoaSet.count.getter();
  if (result)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_55;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t closure #2 in DBWriter.pruneSnapshotsTo(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = closure #2 in DBWriter.pruneSnapshotsTo(_:);

  return DBManager.cleanup(wait:)(0);
}

uint64_t DBWriter.latestSuggestions(uiLaunch:allowDraft:)(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 217) = a2;
  *(v3 + 216) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v3 + 24) = swift_task_alloc();
  *(v3 + 32) = type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v5, v4);
}

uint64_t DBWriter.latestSuggestions(uiLaunch:allowDraft:)()
{
  v0[8] = *(v0[2] + 112);
  v0[9] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[10] = v2;
  v0[11] = v1;

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v2, v1);
}

{
  v1 = *(v0 + 64);
  *(v0 + 96) = dispatch thunk of ModelContainer.mainContext.getter();

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v1, 0);
}

{
  *(v0 + 104) = DBManager.getSnapshotGeneration()();
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v2, v1);
}

{
  v36 = v0;
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 217);

  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  specialized static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)(v2, v1, 0, v4, v3, v32);
  v7 = v32[0];
  v6 = v32[1];
  *(v0 + 128) = 0;
  *(v0 + 136) = v6;
  *(v0 + 218) = v33;
  *(v0 + 144) = v34;
  *(v0 + 219) = v35;
  *(v5 + 16) = v7;
  if (v7)
  {
    v8 = *(*v7 + 624);

    v10 = v8(v9);

    if (v10)
    {
      v32[0] = MEMORY[0x277D84F90];
      v30 = v5;
      if (v10 >> 62)
      {
LABEL_28:
        v11 = __CocoaSet.count.getter();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = 0;
      v31 = MEMORY[0x277D84F90];
      while (v11 != v12)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CE93180](v12, v10);
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        v14 = DBSuggestion.asSuggestion.getter();

        ++v12;
        if (v14)
        {
          MEMORY[0x21CE92260](v15);
          if (*((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v31 = v32[0];
          v12 = v13;
        }
      }

      v5 = v30;
      v16 = v31;
      v17 = *(v30 + 16);
      if (v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v16 = 0;
      v17 = *(v5 + 16);
      if (v17)
      {
LABEL_18:
        v18 = *(*v17 + 304);

        v7 = v18(v19);

        v20 = 0;
        goto LABEL_23;
      }
    }

    v7 = 0;
  }

  else
  {
    v16 = 0;
  }

  v20 = 1;
LABEL_23:
  *(v0 + 152) = v16;
  *(v0 + 160) = v7;
  *(v0 + 220) = v20;
  v21 = *(v0 + 24);
  v22 = *(v0 + 216);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);

  v24 = static MainActor.shared.getter();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  *(v25 + 32) = v22;
  *(v25 + 40) = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v21, &async function pointer to partial apply for closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:), v25);

  v27 = *(v0 + 80);
  v28 = *(v0 + 88);

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v27, v28);
}

{
  v1 = *(v0 + 128);

  dispatch thunk of ModelContext.rollback()();

  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 223) = 1;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 221) = 257;
  *(v0 + 176) = 0;
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v2, 0);
}

{

  if ((dispatch thunk of ModelContext.hasChanges.getter() & 1) == 0)
  {

    goto LABEL_5;
  }

  v1 = *(v0 + 128);
  dispatch thunk of ModelContext.save()();
  *(v0 + 168) = v1;

  if (!v1)
  {
LABEL_5:
    v5 = *(v0 + 218);
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v0 + 136);
    }

    v9 = *(v0 + 220);
    v10 = *(v0 + 152);
    v11 = *(v0 + 219);
    *(v0 + 200) = *(v0 + 160);
    *(v0 + 208) = v10;
    *(v0 + 223) = v9;
    *(v0 + 222) = v5;
    *(v0 + 184) = v7;
    *(v0 + 192) = v6;
    *(v0 + 221) = v11;
    *(v0 + 176) = v8;
    v2 = *(v0 + 64);
    v4 = DBWriter.latestSuggestions(uiLaunch:allowDraft:);
    v3 = 0;
    goto LABEL_9;
  }

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = DBWriter.latestSuggestions(uiLaunch:allowDraft:);
LABEL_9:

  return MEMORY[0x2822009F8](v4, v2, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v5.is_nil = *(v0 + 221);
  v5.value = *(v0 + 184);
  DBManager.setLatestLocalSnapshotSequence(_:_:)(*(v0 + 176), v5);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v1, v2);
}

{
  v1 = *(v0 + 217);

  if ((v1 & 1) != 0 || (*(v0 + 222) & 1) == 0 && *(v0 + 192))
  {
    v2 = *(v0 + 223);

    v3 = *(v0 + 8);
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);

    return v3(v4, v5, v2);
  }

  else
  {
    lazy protocol witness table accessor for type DBWriter.FetchError and conformance DBWriter.FetchError();
    swift_allocError();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  *(v5 + 113) = a4;
  v6 = type metadata accessor for Date();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v8;
  *(v5 + 88) = v7;

  return MEMORY[0x2822009F8](closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:), v8, v7);
}

uint64_t closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:)()
{
  v13 = v0;
  if (*(v0 + 113) == 1)
  {
    if (one-time initialization token for analytics != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static CommonLogger.analytics);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136446210;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000021657FBF0, &v12);
      _os_log_impl(&dword_21607C000, v2, v3, "%{public}s Sending snapshot analytics event from UI launch", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x21CE94770](v5, -1, -1);
      MEMORY[0x21CE94770](v4, -1, -1);
    }

    v6 = *(v0 + 40);
    swift_beginAccess();
    v7 = *(v6 + 16);
    *(v0 + 96) = v7;

    static Date.now.getter();
    *(v0 + 112) = 5;
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:);
    v9 = *(v0 + 64);

    return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v7, 0, 1, v9, (v0 + 112));
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x2822009F8](closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:), v6, v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DBWriter.latestSnapshotMain(prefetch:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 160) = a1;
  *(v2 + 24) = type metadata accessor for MainActor();
  *(v2 + 32) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v4, v3);
}

uint64_t DBWriter.latestSnapshotMain(prefetch:)()
{
  v0[7] = *(v0[2] + 112);
  v0[8] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[9] = v2;
  v0[10] = v1;

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v2, v1);
}

{
  v1 = *(v0 + 56);
  *(v0 + 88) = dispatch thunk of ModelContainer.mainContext.getter();

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v1, 0);
}

{
  v0[6] = DBManager.getSnapshotGeneration()();
  v0[7]._countAndFlagsBits = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v2, v1);
}

{
  v12 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 160);

  specialized static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)(v2, v1, v4, 0, v3, &v8);
  *(v0 + 120) = 0;
  *(v0 + 128) = v8;
  *(v0 + 161) = v9;
  *(v0 + 144) = v10;
  *(v0 + 162) = v11;

  v5 = *(v0 + 72);
  v6 = *(v0 + 80);

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v5, v6);
}

{

  if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    v1 = v0[15];
    dispatch thunk of ModelContext.save()();
    v0[19] = v1;

    if (v1)
    {
      v2 = v0[5];
      v3 = v0[6];
      v4 = DBWriter.latestSnapshotMain(prefetch:);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v2 = v0[5];
  v3 = v0[6];
  v4 = DBWriter.latestSnapshotMain(prefetch:);
LABEL_6:

  return MEMORY[0x2822009F8](v4, v2, v3);
}

{
  v1 = v0[15];

  dispatch thunk of ModelContext.rollback()();

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v2, v3);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  if (*(v0 + 161) == 1)
  {

    v1 = *(v0 + 128);
    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    v4 = *(v0 + 56);

    return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v4, 0);
  }
}

{
  v5.is_nil = *(v0 + 162);
  v5.value = *(v0 + 144);
  DBManager.setLatestLocalSnapshotSequence(_:_:)(*(v0 + 136), v5);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v1, v2);
}

{

  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in DBWriter.mergedSuggestionsInWorking(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DBWriter.mergedSuggestionsInWorking(with:), v8, v7);
}

uint64_t closure #1 in DBWriter.mergedSuggestionsInWorking(with:)()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  v8 = MEMORY[0x21CE93DB0](v7);
  closure #1 in closure #1 in DBWriter.mergedSuggestionsInWorking(with:)(v6, v5, v4, v3, v2, v1, v0 + 2);
  objc_autoreleasePoolPop(v8);
  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in closure #1 in DBWriter.mergedSuggestionsInWorking(with:)(uint64_t a1, unsigned int (**a2)(unint64_t, uint64_t, size_t), unint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v301 = a7;
  v289 = a5;
  v307 = a4;
  v309 = a2;
  v312 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v284 = &v266 - v9;
  v291 = type metadata accessor for Date();
  v292 = *(v291 - 8);
  v10 = MEMORY[0x28223BE20](v291);
  v304 = &v266 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v280 = &v266 - v13;
  MEMORY[0x28223BE20](v12);
  v281 = &v266 - v14;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v283);
  v282 = &v266 - v15;
  *&v295 = type metadata accessor for PersistentIdentifier();
  v310 = *(v295 - 8);
  MEMORY[0x28223BE20](v295);
  v294 = (&v266 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v279 = &v266 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v285 = &v266 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v288 = &v266 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v286 = &v266 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v303 = &v266 - v27;
  MEMORY[0x28223BE20](v26);
  v305 = &v266 - v28;
  v315 = type metadata accessor for UUID();
  v311 = *(v315 - 8);
  v29 = MEMORY[0x28223BE20](v315);
  v308 = &v266 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v287 = &v266 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v277 = &v266 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v276 = &v266 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v278 = &v266 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v266 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v266 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v266 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v266 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v266 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v266 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v266 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v266 - v60;
  v62 = v314;
  result = specialized static DBWriter.draftSnapshot(context:)();
  if (v62)
  {
LABEL_2:
    *v301 = v62;
    return result;
  }

  v314 = v61;
  v296 = v59;
  v313 = v56;
  v306 = v53;
  v293 = v47;
  v273 = v44;
  v274 = v41;
  v299 = v50;
  v300 = a3;
  if (result)
  {
    v275 = 0;
    v64 = v315;
    v65 = v307;
    isUniquelyReferenced_nonNull_native = v313;
  }

  else
  {
    specialized static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)(v312, v309, 0, 0, v300, v317);
    v65 = v307;
    isUniquelyReferenced_nonNull_native = v313;
    v275 = 0;
    result = v317[0];
    v64 = v315;
    if (!v317[0])
    {
LABEL_62:
      if (one-time initialization token for processing == -1)
      {
        goto LABEL_63;
      }

      goto LABEL_183;
    }
  }

  v67 = result;
  v68 = (*(*result + 624))();
  if (!v68)
  {

    goto LABEL_62;
  }

  a3 = v68;
  v302 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI12DBSuggestionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v319 = v302;
  v270 = (v65 >> 62);
  if (v65 >> 62)
  {
    goto LABEL_157;
  }

  for (i = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v70 = v310;
    v271 = v67;
    v312 = a3;
    if (!i)
    {
      break;
    }

    v71 = 0;
    v310 = (v65 & 0xC000000000000001);
    v290 = (v65 & 0xFFFFFFFFFFFFFF8);
    v309 = (v311 + 48);
    v298 = v311 + 32;
    v272 = (v70 + 1);
    v304 = v311 + 16;
    v297 = (v311 + 8);
    v67 = v305;
    v308 = i;
    while (v310)
    {
      v73 = MEMORY[0x21CE93180](v71, v65);
      v74 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_148;
      }

LABEL_18:
      (*(*v73 + 344))();
      if ((*v309)(v67, 1, v64) != 1)
      {
        (*v298)(v314, v67, v64);
        a3 = type metadata accessor for DBSuggestion();
        v67 = _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, 255, type metadata accessor for DBSuggestion);
        v75 = PersistentModel.modelContext.getter();
        if (v75)
        {
          v64 = v75;
          type metadata accessor for ModelContext();
          if (static ModelContext.== infix(_:_:)())
          {
            v76 = v294;
            PersistentModel.persistentModelID.getter();
            dispatch thunk of ModelContext.model(for:)();
            (*v272)(v76, v295);
            a3 = swift_dynamicCastClass();
            if (!a3)
            {
              swift_unknownObjectRelease();
            }

            v77 = v296;
            v67 = *v304;
            (*v304)(v296, v314, v315);
            if (a3)
            {
              v302 = v67;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v78 = v319;
              v317[0] = v319;
              v65 = specialized __RawDictionaryStorage.find<A>(_:)(v77);
              v80 = *(v78 + 16);
              v81 = (v79 & 1) == 0;
              v82 = v80 + v81;
              if (__OFADD__(v80, v81))
              {
                goto LABEL_156;
              }

              v83 = v79;
              if (*(v78 + 24) >= v82)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v86 = v317[0];
                  if ((v79 & 1) == 0)
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
                  specialized _NativeDictionary.copy()();
                  v86 = v317[0];
                  if ((v83 & 1) == 0)
                  {
                    goto LABEL_50;
                  }
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v82, isUniquelyReferenced_nonNull_native);
                v84 = specialized __RawDictionaryStorage.find<A>(_:)(v296);
                if ((v83 & 1) != (v85 & 1))
                {
                  goto LABEL_190;
                }

                v65 = v84;
                v86 = v317[0];
                if ((v83 & 1) == 0)
                {
LABEL_50:
                  v86[(v65 >> 6) + 8] |= 1 << v65;
                  (v302)(v86[6] + *(v311 + 72) * v65, v296, v315);
                  *(v86[7] + 8 * v65) = a3;
                  v117 = v86[2];
                  v94 = __OFADD__(v117, 1);
                  v118 = v117 + 1;
                  if (v94)
                  {
                    goto LABEL_182;
                  }

                  v86[2] = v118;
LABEL_52:
                  v67 = v305;
                  v119 = *v297;
                  v106 = v315;
                  (*v297)(v296, v315);

                  v302 = v86;
                  v319 = v86;
                  v108 = v119;
LABEL_53:
                  isUniquelyReferenced_nonNull_native = v313;
                  (v108)(v314, v106);
                  v64 = v106;
                  a3 = v312;
                  v65 = v307;
                  v72 = v308;
                  goto LABEL_11;
                }
              }

              *(v86[7] + 8 * v65) = a3;

              goto LABEL_52;
            }

            v100 = specialized __RawDictionaryStorage.find<A>(_:)(v77);
            if (v101)
            {
              v102 = v100;
              v103 = swift_isUniquelyReferenced_nonNull_native();
              v104 = v319;
              v317[0] = v319;
              if ((v103 & 1) == 0)
              {
                specialized _NativeDictionary.copy()();
                v104 = v317[0];
              }

              v105 = *(v104 + 48) + *(v311 + 72) * v102;
              v269 = *(v311 + 8);
              v106 = v315;
              (v269)(v105, v315);

              specialized _NativeDictionary._delete(at:)(v102, v104);
              v107 = v269;
              (v269)(v296, v106);
              v108 = v107;

              v302 = v104;
              v319 = v104;
              v67 = v305;
            }

            else
            {
              v108 = *v297;
              v109 = v77;
              v106 = v315;
              (*v297)(v109, v315);

              v67 = v305;
            }

            goto LABEL_53;
          }

          v65 = v307;
        }

        v64 = *v304;
        (*v304)(isUniquelyReferenced_nonNull_native, v314, v315);

        v87 = swift_isUniquelyReferenced_nonNull_native();
        v88 = isUniquelyReferenced_nonNull_native;
        isUniquelyReferenced_nonNull_native = v87;
        v89 = v319;
        v317[0] = v319;
        v90 = specialized __RawDictionaryStorage.find<A>(_:)(v88);
        v92 = *(v89 + 16);
        v93 = (v91 & 1) == 0;
        v94 = __OFADD__(v92, v93);
        v95 = v92 + v93;
        if (v94)
        {
          goto LABEL_152;
        }

        v96 = v91;
        if (*(v89 + 24) >= v95)
        {
          a3 = v312;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_35;
          }

          v110 = v90;
          specialized _NativeDictionary.copy()();
          v90 = v110;
          v98 = v317[0];
          if ((v96 & 1) == 0)
          {
            goto LABEL_46;
          }

LABEL_36:
          *(*(v98 + 56) + 8 * v90) = v73;

          v99 = *v297;
          v64 = v315;
          (*v297)(v313, v315);
          (v99)(v314, v64);
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v95, isUniquelyReferenced_nonNull_native);
          v90 = specialized __RawDictionaryStorage.find<A>(_:)(v313);
          a3 = v312;
          if ((v96 & 1) != (v97 & 1))
          {
LABEL_190:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

LABEL_35:
          v98 = v317[0];
          if (v96)
          {
            goto LABEL_36;
          }

LABEL_46:
          v302 = v74;
          isUniquelyReferenced_nonNull_native = v65;
          v65 = v98;
          *(v98 + 8 * (v90 >> 6) + 64) |= 1 << v90;
          a3 = v311;
          v111 = v90;
          v112 = *(v98 + 48) + *(v311 + 72) * v90;
          v113 = v313;
          v114 = v315;
          (v64)(v112, v313, v315);
          v64 = v114;
          *(*(v65 + 56) + 8 * v111) = v73;

          v67 = *(a3 + 8);
          (v67)(v113, v114);
          (v67)(v314, v114);
          v115 = *(v65 + 16);
          v94 = __OFADD__(v115, 1);
          v116 = v115 + 1;
          if (v94)
          {
            goto LABEL_155;
          }

          *(v65 + 16) = v116;
          a3 = v312;
          v98 = v65;
          v65 = isUniquelyReferenced_nonNull_native;
          v74 = v302;
        }

        v302 = v98;
        v319 = v98;
        v67 = v305;
        v72 = v308;
        isUniquelyReferenced_nonNull_native = v313;
        goto LABEL_11;
      }

      outlined destroy of UTType?(v67, &_s10Foundation4UUIDVSgMd);
      v72 = v308;
LABEL_11:
      ++v71;
      if (v74 == v72)
      {
        goto LABEL_54;
      }
    }

    if (v71 >= *(v290 + 2))
    {
      goto LABEL_150;
    }

    v73 = *(v65 + 8 * v71 + 32);

    v74 = v71 + 1;
    if (!__OFADD__(v71, 1))
    {
      goto LABEL_18;
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
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
LABEL_156:
    __break(1u);
LABEL_157:
    ;
  }

LABEL_54:
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v120 = type metadata accessor for Logger();
  isa = __swift_project_value_buffer(v120, static CommonLogger.processing);

  v309 = isa;
  v121 = Logger.logObject.getter();
  LOBYTE(isa) = static os_log_type_t.default.getter();
  v123 = os_log_type_enabled(v121, isa);
  v124 = a3 >> 62;
  v125 = v303;
  if (!v123)
  {

    goto LABEL_90;
  }

  v126 = swift_slowAlloc();
  *v126 = 134218496;
  if (v270)
  {
    v127 = __CocoaSet.count.getter();
  }

  else
  {
    v127 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v126 + 4) = v127;

  *(v126 + 12) = 2048;
  if (v124)
  {
    goto LABEL_185;
  }

  v141 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    *(v126 + 14) = v141;

    *(v126 + 22) = 2048;
    *(v126 + 24) = *(v302 + 16);
    _os_log_impl(&dword_21607C000, v121, isa, "[mergeSuggestionsIntoDraft] new suggestions n=%ld, working n=%ld, uuidToDBSuggestion count n=%ld", v126, 0x20u);
    MEMORY[0x21CE94770](v126, -1, -1);

LABEL_90:
    v67 = a3 & 0xFFFFFFFFFFFFFF8;
    v142 = v292;
    if (!v124)
    {
      v143 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v64 = v315;
      if (v143)
      {
        goto LABEL_92;
      }

      goto LABEL_159;
    }

    v244 = __CocoaSet.count.getter();
    v142 = v292;
    v143 = v244;
    v64 = v315;
    if (v244)
    {
LABEL_92:
      v298 = a3 & 0xFFFFFFFFFFFFFF8;
      v144 = 0;
      v308 = (a3 & 0xC000000000000001);
      v310 = (v311 + 48);
      v304 = v311 + 16;
      v305 = (v311 + 32);
      v272 = (v311 + 56);
      v307 = (v311 + 8);
      v270 = (v142 + 48);
      v267 = (v142 + 32);
      v269 = (v142 + 8);
      *&v134 = 136315138;
      v295 = v134;
      *&v134 = 136315650;
      v268 = v134;
      v302 = v143;
      do
      {
        if (v308)
        {
          v145 = MEMORY[0x21CE93180](v144, a3);
          v146 = &v144->isa + 1;
          if (__OFADD__(v144, 1))
          {
            goto LABEL_149;
          }
        }

        else
        {
          if (v144 >= *(v298 + 16))
          {
            goto LABEL_151;
          }

          v146 = &v144->isa + 1;
          if (__OFADD__(v144, 1))
          {
            goto LABEL_149;
          }
        }

        v313 = v146;
        v65 = *(*v145 + 344);
        isUniquelyReferenced_nonNull_native = *v145 + 344;
        v314 = v145;
        (v65)();
        v147 = *v310;
        if ((*v310)(v125, 1, v64) == 1)
        {
          outlined destroy of UTType?(v125, &_s10Foundation4UUIDVSgMd);
          v67 = Logger.logObject.getter();
          v148 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v67, v148))
          {
            isUniquelyReferenced_nonNull_native = swift_slowAlloc();
            *isUniquelyReferenced_nonNull_native = 0;
            _os_log_impl(&dword_21607C000, v67, v148, "[mergeSuggestionsIntoDraft] no suggestionID decoded", isUniquelyReferenced_nonNull_native, 2u);
            MEMORY[0x21CE94770](isUniquelyReferenced_nonNull_native, -1, -1);
          }

          goto LABEL_94;
        }

        v149 = v306;
        v150 = *v305;
        (*v305)(v306, v125, v64);
        swift_beginAccess();
        v151 = v319;
        if (*(v319 + 16) && (v152 = specialized __RawDictionaryStorage.find<A>(_:)(v149), (v153 & 1) != 0))
        {
          v154 = *(*(v151 + 56) + 8 * v152);
          swift_endAccess();

          v156 = v314;
          v157 = specialized static DBSuggestion.== infix(_:_:)(v155, v314);
          v296 = v154;
          if ((v157 & 1) == 0)
          {
            v176 = v286;
            (*(*v154 + 344))();
            v177 = v176;
            v178 = v147(v176, 1, v64);
            v179 = v304;
            v294 = (v304 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
            if (v178 == 1)
            {
              outlined destroy of UTType?(v177, &_s10Foundation4UUIDVSgMd);
              v180 = *v179;
              v125 = v303;
              v181 = v287;
              v182 = v306;
              v143 = v302;
              v183 = v296;
              v65 = v315;
              v180(v287, v306, v315);
              goto LABEL_125;
            }

            v185 = v274;
            v186 = v177;
            v187 = v315;
            v150(v274, v186, v315);
            v188 = v288;
            v290 = *v179;
            v290(v288, v185, v187);
            v189 = (*v272)(v188, 0, 1, v187);
            v190 = v285;
            (v65)(v189);
            v191 = *(v283 + 48);
            v192 = v282;
            outlined init with copy of DateInterval?(v188, v282, &_s10Foundation4UUIDVSgMd);
            v297 = v191;
            outlined init with copy of DateInterval?(v190, v191 + v192, &_s10Foundation4UUIDVSgMd);
            v193 = v147(v192, 1, v315);
            v143 = v302;
            if (v193 == 1)
            {
              outlined destroy of UTType?(v190, &_s10Foundation4UUIDVSgMd);
              outlined destroy of UTType?(v288, &_s10Foundation4UUIDVSgMd);
              v194 = v147(&v297[v192], 1, v315);
              v125 = v303;
              v181 = v287;
              if (v194 != 1)
              {
                goto LABEL_123;
              }

              outlined destroy of UTType?(v192, &_s10Foundation4UUIDVSgMd);
              v195 = v278;
            }

            else
            {
              v196 = v279;
              outlined init with copy of DateInterval?(v192, v279, &_s10Foundation4UUIDVSgMd);
              v197 = v297;
              v198 = v147(&v297[v192], 1, v315);
              v125 = v303;
              if (v198 == 1)
              {
                outlined destroy of UTType?(v285, &_s10Foundation4UUIDVSgMd);
                outlined destroy of UTType?(v288, &_s10Foundation4UUIDVSgMd);
                (*v307)(v196, v315);
                v181 = v287;
LABEL_123:
                outlined destroy of UTType?(v192, &_s10Foundation4UUIDVSg_ADtMd);
                v199 = *v307;
LABEL_124:
                v65 = v315;
                v199(v274, v315);
                v182 = v306;
                v183 = v296;
                v290(v181, v306, v65);
LABEL_125:
                swift_retain_n();
                v200 = v182;
                v67 = Logger.logObject.getter();
                v201 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v67, v201))
                {
                  LODWORD(v297) = v201;
                  v202 = v65;
                  v65 = swift_slowAlloc();
                  v294 = swift_slowAlloc();
                  v317[0] = v294;
                  *v65 = v268;
                  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
                  v203 = dispatch thunk of CustomStringConvertible.description.getter();
                  v205 = v204;
                  v290 = *v307;
                  (v290)(v181, v202);
                  v206 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v203, v205, v317);

                  *(v65 + 4) = v206;
                  *(v65 + 12) = 2048;
                  v208 = (*(*v183 + 440))(v207);
                  if (v209)
                  {
                    (*(*v183 + 392))(&v318, v208);
                  }

                  else
                  {
                    DBSuggestion.SuggestionType.init(rawValue:)(v208);
                  }

                  if (v318 == 13)
                  {
                    v210 = 0;
                  }

                  else
                  {
                    v210 = v318;
                  }

                  v211 = v291;
                  v212 = v284;
                  v213 = v270;

                  *(v65 + 14) = v210 - 1;

                  *(v65 + 22) = 2080;
                  (*(*v183 + 728))(v214);
                  v215 = *v213;
                  if ((*v213)(v212, 1, v211) == 1)
                  {
                    v216 = v281;
                    static Date.distantPast.getter();
                    v217 = v215(v212, 1, v211);
                    v218 = v211;
                    if (v217 != 1)
                    {
                      outlined destroy of UTType?(v284, &_s10Foundation4DateVSgMd);
                    }
                  }

                  else
                  {
                    v216 = v281;
                    (*v267)(v281, v212, v211);
                    v218 = v211;
                  }

                  v219 = Date.description.getter();
                  isUniquelyReferenced_nonNull_native = v220;
                  (*v269)(v216, v218);
                  v221 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v219, isUniquelyReferenced_nonNull_native, v317);

                  *(v65 + 24) = v221;
                  _os_log_impl(&dword_21607C000, v67, v297, "[mergeSuggestionsIntoDraft] suggestion %s has changed, using new one, interfaceType=%ld, startDate=%s", v65, 0x20u);
                  v222 = v294;
                  swift_arrayDestroy();
                  MEMORY[0x21CE94770](v222, -1, -1);
                  MEMORY[0x21CE94770](v65, -1, -1);

                  v64 = v315;
                  (v290)(v306, v315);
                  v125 = v303;
                  a3 = v312;
                }

                else
                {

                  isUniquelyReferenced_nonNull_native = v307;
                  v67 = *v307;
                  (*v307)(v181, v65);
                  (v67)(v200, v65);
                  v64 = v65;
                  a3 = v312;
                }

                goto LABEL_94;
              }

              v223 = v278;
              v224 = v315;
              v150(v278, v197 + v192, v315);
              v195 = v223;
              _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
              LODWORD(v266) = dispatch thunk of static Equatable.== infix(_:_:)();
              v297 = v144;
              v199 = *v307;
              (*v307)(v223, v224);
              outlined destroy of UTType?(v285, &_s10Foundation4UUIDVSgMd);
              outlined destroy of UTType?(v288, &_s10Foundation4UUIDVSgMd);
              v199(v196, v224);
              v144 = v297;
              outlined destroy of UTType?(v192, &_s10Foundation4UUIDVSgMd);
              v181 = v287;
              if ((v266 & 1) == 0)
              {
                goto LABEL_124;
              }
            }

            if (DBSuggestion.copyWithReuseAndNewMetadata(newReference:context:)(v296, v300))
            {
              isUniquelyReferenced_nonNull_native = v306;
              v64 = v315;
              v225 = v290;
              v290(v195, v306, v315);
              swift_beginAccess();

              specialized Dictionary.subscript.setter(v297, v195);
              swift_endAccess();
              v226 = v277;
              v225(v277, isUniquelyReferenced_nonNull_native, v64);
              v227 = Logger.logObject.getter();
              v65 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v227, v65))
              {
                v228 = swift_slowAlloc();
                v266 = v228;
                v290 = swift_slowAlloc();
                v317[0] = v290;
                *v228 = v295;
                _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
                v229 = dispatch thunk of CustomStringConvertible.description.getter();
                v231 = v230;
                v294 = *v307;
                (v294)(v226, v315);
                v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v229, v231, v317);

                isUniquelyReferenced_nonNull_native = v266;
                *(v266 + 4) = v232;
                v233 = v227;
                _os_log_impl(&dword_21607C000, v227, v65, "[mergeSuggestionsIntoDraft] updating suggestion %s", isUniquelyReferenced_nonNull_native, 0xCu);
                v234 = v290;
                __swift_destroy_boxed_opaque_existential_1(v290);
                MEMORY[0x21CE94770](v234, -1, -1);
                MEMORY[0x21CE94770](isUniquelyReferenced_nonNull_native, -1, -1);

                v67 = v294;
                (v294)(v274, v315);
                (v67)(v306, v315);
                v64 = v315;
              }

              else
              {

                v67 = *v307;
                (*v307)(v226, v64);
                (v67)(v274, v64);
                (v67)(v306, v64);
              }

              a3 = v312;
              goto LABEL_94;
            }

            isUniquelyReferenced_nonNull_native = v276;
            v159 = v306;
            v64 = v315;
            v290(v276, v306, v315);
            v235 = Logger.logObject.getter();
            v65 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v235, v65))
            {
              v236 = swift_slowAlloc();
              v297 = v235;
              v237 = isUniquelyReferenced_nonNull_native;
              v238 = v236;
              v294 = swift_slowAlloc();
              v317[0] = v294;
              *v238 = v295;
              _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
              v239 = dispatch thunk of CustomStringConvertible.description.getter();
              isUniquelyReferenced_nonNull_native = v240;
              v241 = *v307;
              (*v307)(v237, v315);
              v242 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v239, isUniquelyReferenced_nonNull_native, v317);

              *(v238 + 4) = v242;
              v67 = v297;
              _os_log_impl(&dword_21607C000, v297, v65, "[mergeSuggestionsIntoDraft] failed to update suggestion, fallback to new %s", v238, 0xCu);
              v243 = v294;
              __swift_destroy_boxed_opaque_existential_1(v294);
              MEMORY[0x21CE94770](v243, -1, -1);
              MEMORY[0x21CE94770](v238, -1, -1);

              v241(v274, v315);
              v241(v306, v315);
              v64 = v315;
              goto LABEL_113;
            }

            v67 = *v307;
            (*v307)(isUniquelyReferenced_nonNull_native, v64);
            v184 = v274;
            goto LABEL_117;
          }

          swift_beginAccess();

          v158 = swift_isUniquelyReferenced_nonNull_native();
          v318 = v319;
          v159 = v306;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v156, v306, v158);
          v319 = v318;
          swift_endAccess();
          isUniquelyReferenced_nonNull_native = v273;
          (*v304)(v273, v159, v64);
          v67 = Logger.logObject.getter();
          v65 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v67, v65))
          {

            v67 = *v307;
            v184 = isUniquelyReferenced_nonNull_native;
LABEL_117:
            (v67)(v184, v64);
            v175 = v159;
            goto LABEL_112;
          }

          v160 = swift_slowAlloc();
          v317[0] = swift_slowAlloc();
          v161 = v317[0];
          *v160 = v295;
          _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
          v162 = dispatch thunk of CustomStringConvertible.description.getter();
          v163 = isUniquelyReferenced_nonNull_native;
          isUniquelyReferenced_nonNull_native = v164;
          v297 = *v307;
          (v297)(v163, v315);
          v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, isUniquelyReferenced_nonNull_native, v317);

          *(v160 + 4) = v165;
          _os_log_impl(&dword_21607C000, v67, v65, "[mergeSuggestionsIntoDraft] reusing suggestion %s", v160, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v161);
          v166 = v161;
          v64 = v315;
          MEMORY[0x21CE94770](v166, -1, -1);
          MEMORY[0x21CE94770](v160, -1, -1);

          (v297)(v306, v64);
        }

        else
        {
          swift_endAccess();
          isUniquelyReferenced_nonNull_native = v293;
          (*v304)(v293, v149, v64);
          v67 = Logger.logObject.getter();
          v167 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v67, v167))
          {

            v67 = *v307;
            (*v307)(isUniquelyReferenced_nonNull_native, v64);
            v175 = v149;
LABEL_112:
            (v67)(v175, v64);
            goto LABEL_113;
          }

          v168 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v317[0] = v65;
          *v168 = v295;
          _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
          v169 = dispatch thunk of CustomStringConvertible.description.getter();
          v170 = isUniquelyReferenced_nonNull_native;
          isUniquelyReferenced_nonNull_native = v171;
          v297 = v144;
          v172 = *v307;
          (*v307)(v170, v315);
          v173 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, isUniquelyReferenced_nonNull_native, v317);

          *(v168 + 4) = v173;
          _os_log_impl(&dword_21607C000, v67, v167, "[mergeSuggestionsIntoDraft] removing suggestion %s from draft", v168, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v65);
          MEMORY[0x21CE94770](v65, -1, -1);
          v174 = v168;
          v64 = v315;
          MEMORY[0x21CE94770](v174, -1, -1);

          v172(v149, v64);
          v144 = v297;
          v125 = v303;
        }

LABEL_113:
        a3 = v312;
        v143 = v302;
LABEL_94:
        v144 = (v144 + 1);
      }

      while (v313 != v143);
    }

LABEL_159:

    swift_beginAccess();
    v121 = v319;
    v245 = v319 + 64;
    v246 = 1 << *(v319 + 32);
    v247 = -1;
    if (v246 < 64)
    {
      v247 = ~(-1 << v246);
    }

    v248 = v247 & *(v319 + 64);
    v249 = (v246 + 63) >> 6;
    a3 = v311 + 32;
    swift_bridgeObjectRetain_n();
    v65 = 0;
    v250 = MEMORY[0x277D84F90];
    if (v248)
    {
      goto LABEL_166;
    }

    while (1)
    {
      v251 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        swift_once();
LABEL_63:
        v128 = type metadata accessor for Logger();
        __swift_project_value_buffer(v128, static CommonLogger.processing);

        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.default.getter();
        v131 = os_log_type_enabled(v129, v130);
        isUniquelyReferenced_nonNull_native = v308;
        if (v131)
        {
          v132 = swift_slowAlloc();
          *v132 = 134217984;
          if (v65 >> 62)
          {
            v133 = __CocoaSet.count.getter();
          }

          else
          {
            v133 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v132 + 4) = v133;

          _os_log_impl(&dword_21607C000, v129, v130, "[mergeSuggestionsIntoDraft] new suggestions n=%ld, new draft", v132, 0xCu);
          MEMORY[0x21CE94770](v132, -1, -1);
        }

        else
        {
        }

        v67 = v304;
        static Date.now.getter();
        v135 = v275;
        specialized static DBWriter._createDraftSnapshot(with:context:renderedCount:creationDate:)(v65, v300, 0, v67);
        v275 = v135;
        if (v135)
        {
          result = (*(v292 + 8))(v67, v291);
          v62 = v275;
          goto LABEL_2;
        }

        (*(v292 + 8))(v67, v291);
        if (v65 >> 62)
        {
          v136 = __CocoaSet.count.getter();
          if (v136)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v136 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v136)
          {
LABEL_73:
            v137 = 0;
            v314 = v65 & 0xC000000000000001;
            v138 = v65 & 0xFFFFFFFFFFFFFF8;
            v64 = MEMORY[0x277D84F90];
            v65 = v136;
            while (1)
            {
              if (v314)
              {
                v139 = MEMORY[0x21CE93180](v137, v307);
                a3 = v137 + 1;
                if (__OFADD__(v137, 1))
                {
                  goto LABEL_153;
                }
              }

              else
              {
                if (v137 >= *(v138 + 16))
                {
                  goto LABEL_154;
                }

                v139 = v307[v137 + 4];

                a3 = v137 + 1;
                if (__OFADD__(v137, 1))
                {
                  goto LABEL_153;
                }
              }

              (*(*v139 + 296))();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 16) + 1, 1, v64);
              }

              v67 = *(v64 + 16);
              v140 = *(v64 + 24);
              if (v67 >= v140 >> 1)
              {
                v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v140 > 1, v67 + 1, 1, v64);
              }

              *(v64 + 16) = v67 + 1;
              (*(v311 + 32))(v64 + ((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v67, isUniquelyReferenced_nonNull_native, v315);
              ++v137;
              if (a3 == v65)
              {
                goto LABEL_189;
              }
            }
          }
        }

        v64 = MEMORY[0x277D84F90];
LABEL_189:
        *v289 = v64;
      }

      if (v251 >= v249)
      {
        break;
      }

      v248 = *(v245 + 8 * v251);
      ++v65;
      if (v248)
      {
        v65 = v251;
        do
        {
LABEL_166:
          v252 = *(**(v121[7].isa + ((v65 << 9) | (8 * __clz(__rbit64(v248))))) + 296);

          v252(v253);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v250 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v250[2] + 1, 1, v250);
          }

          v255 = v250[2];
          v254 = v250[3];
          if (v255 >= v254 >> 1)
          {
            v250 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v254 > 1, v255 + 1, 1, v250);
          }

          v248 &= v248 - 1;
          v250[2] = v255 + 1;
          (*(v311 + 32))(v250 + ((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v255);
        }

        while (v248);
      }
    }

    v256 = v289;
    *v289 = v250;

    isa = v121[2].isa;
    if (isa)
    {
      isUniquelyReferenced_nonNull_native = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5(v121[2].isa, 0);
      v126 = specialized Sequence._copySequenceContents(initializing:)(v317, (isUniquelyReferenced_nonNull_native + 32), isa, v121);
      v124 = v317[1];
      a3 = v317[2];
      v65 = v317[3];
      v125 = v317[4];

      v257 = outlined consume of [String : DBAssetData].Iterator._Variant();
      if (v126 == isa)
      {
        v256 = v289;
        goto LABEL_176;
      }

      __break(1u);
LABEL_185:
      v141 = __CocoaSet.count.getter();
      continue;
    }

    break;
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
LABEL_176:
  v258 = v271;
  if ((*(*v271 + 304))(v257))
  {
    v259 = v280;
    static Date.now.getter();
    v62 = v275;
    specialized static DBWriter._createDraftSnapshot(with:context:renderedCount:creationDate:)(isUniquelyReferenced_nonNull_native, v300, 0, v259);
    if (v62)
    {
      (*(v292 + 8))(v259, v291);

      goto LABEL_2;
    }

    (*(v292 + 8))(v259, v291);
  }

  else
  {
    (*(*v258 + 512))(isUniquelyReferenced_nonNull_native);
    v260 = *v256;
    v261 = *(*v258 + 592);

    v262 = v261(v317);
    v264 = v263;
    v265 = swift_isUniquelyReferenced_nonNull_native();
    v316 = *v264;
    *v264 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v260, 1, v265);
    *v264 = v316;
    v262(v317, 0);
  }
}

uint64_t static DBWriter._workingSnapshot(generation:context:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = specialized static DBWriter.draftSnapshot(context:)();
  if (!v3 && !result)
  {
    specialized static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)(a1, a2, 0, 0, a3, v8);
    return v8[0];
  }

  return result;
}

uint64_t DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 192) = a4;
  *(v6 + 200) = v5;
  *(v6 + 499) = a5;
  *(v6 + 176) = a2;
  *(v6 + 184) = a3;
  *(v6 + 168) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGSgMd);
  *(v6 + 208) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData17HistoryDescriptorVyAA07DefaultC11TransactionVGMd);
  *(v6 + 216) = v7;
  *(v6 + 224) = *(v7 - 8);
  *(v6 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *(v6 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *(v6 + 248) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v6 + 256) = v8;
  *(v6 + 264) = *(v8 - 8);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v6 + 288) = v9;
  *(v6 + 296) = *(v9 - 8);
  *(v6 + 304) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v6 + 312) = v10;
  *(v6 + 320) = *(v10 - 8);
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 352) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 360) = v12;
  *(v6 + 368) = v11;

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v12, v11);
}

uint64_t DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:)()
{
  v1 = *(v0 + 200);
  Date.init()();
  v2 = *(v1 + 112);
  *(v0 + 376) = v2;

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v2, 0);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 392) = *(v0 + 136);
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v1, v2);
}

{
  v88 = v0;
  v1 = *(v0 + 400);
  if (v1)
  {
    v2 = *(v0 + 392);
    *(v0 + 152) = v2;
    *(v0 + 160) = v1;

    v3 = dispatch thunk of ModelContainer.mainContext.getter();

    v4 = specialized static DBWriter._newSnapshotSequenceNumber(generation:context:)(v2, v1, v3);

    v80 = v2;
    v27 = v2;
    v28 = v1;
    v79 = v4;
    if (v4 == 1)
    {
      v30 = *(v0 + 296);
      v29 = *(v0 + 304);
      v31 = *(v0 + 288);
      UUID.init()();
      v27 = UUID.uuidString.getter();
      v33 = v32;
      (*(v30 + 8))(v29, v31);
      swift_beginAccess();
      *(v0 + 152) = v27;
      *(v0 + 160) = v33;
      v85 = v33;

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v35 = *(v0 + 264);
      v34 = *(v0 + 272);
      v36 = *(v0 + 256);
      v37 = __swift_project_value_buffer(v36, static DBWriter.Log);
      swift_beginAccess();
      (*(v35 + 16))(v34, v37, v36);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();
      v40 = os_log_type_enabled(v38, v39);
      v42 = *(v0 + 264);
      v41 = *(v0 + 272);
      v43 = *(v0 + 256);
      if (v40)
      {
        v82 = *(v0 + 272);
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v87[0] = v45;
        *v44 = 136446722;
        v77 = v43;
        swift_beginAccess();
        v46 = StaticString.description.getter();
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v87);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2082;
        *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x800000021657FAA0, v87);
        *(v44 + 22) = 2080;
        v28 = v85;

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v85, v87);

        *(v44 + 24) = v49;
        _os_log_impl(&dword_21607C000, v38, v39, "%{public}s.%{public}s Rotating new snapshot generation: %s", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v45, -1, -1);
        MEMORY[0x21CE94770](v44, -1, -1);

        (*(v42 + 8))(v82, v77);
      }

      else
      {

        (*(v42 + 8))(v41, v43);
        v28 = v85;
      }
    }

    v83 = v27;
    v86 = v28;
    *(v0 + 432) = v28;
    v53 = *(v0 + 328);
    v75 = *(v0 + 376);
    v76 = *(v0 + 336);
    v55 = *(v0 + 312);
    v54 = *(v0 + 320);
    v57 = *(v0 + 240);
    v56 = *(v0 + 248);
    v58 = *(v0 + 176);
    v78 = *(v0 + 184);
    v59 = *(v0 + 168);
    (*(*(v0 + 296) + 56))(v56, 1, 1, *(v0 + 288));

    static Date.now.getter();
    (*(v54 + 16))(v53, v59, v55);
    v60 = OBJC_IVAR____TtC9MomentsUI9DBManager_blobFolderURL;
    v61 = type metadata accessor for URL();
    v62 = *(v61 - 8);
    (*(v62 + 16))(v57, v75 + v60, v61);
    (*(v62 + 56))(v57, 0, 1, v61);
    type metadata accessor for DBSnapshot();
    swift_allocObject();

    v63 = DBSnapshot.init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(v56, v83, v86, v79, v76, v53, v58, v78, v57, 0);
    v64 = *(v0 + 208);
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot);

    dispatch thunk of ModelContext.insert<A>(_:)();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMd);
    (*(*(v65 - 8) + 56))(v64, 1, 1, v65);
    type metadata accessor for DefaultHistoryTransaction();
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DefaultHistoryTransaction and conformance DefaultHistoryTransaction, 255, MEMORY[0x277CDD588]);
    HistoryDescriptor.init(predicate:)();
    dispatch thunk of ModelContext.deleteHistory<A>(_:)();
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    v74 = dispatch thunk of ModelContext.hasChanges.getter();
    if (v74)
    {
      dispatch thunk of ModelContext.save()();
      *(v0 + 440) = 0;
    }

    *(v0 + 448) = v63;
    *(v0 + 456) = v86;

    if (v80 == v83 && v86 == v1)
    {

LABEL_20:
      v67 = *(v0 + 499);
      *(v0 + 497) = 6;
      v68 = swift_task_alloc();
      *(v0 + 472) = v68;
      *v68 = v0;
      v68[1] = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);
      v69 = *(v0 + 448);
      v70 = *(v0 + 344);
      v71 = *(v0 + 192);

      return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v69, v71, v67 & 1, v70, (v0 + 497));
    }

    v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v66)
    {
      goto LABEL_20;
    }

    v73 = swift_task_alloc();
    *(v0 + 464) = v73;
    *v73 = v0;
    v73[1] = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);
    v51 = v83;
    v52 = v86;
  }

  else
  {
    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    v7 = *(v0 + 288);
    UUID.init()();
    v8 = UUID.uuidString.getter();
    v10 = v9;
    *(v0 + 408) = v8;
    *(v0 + 416) = v9;
    (*(v6 + 8))(v5, v7);
    v11 = one-time initialization token for Log;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 280);
    v13 = *(v0 + 256);
    v14 = *(v0 + 264);
    v15 = __swift_project_value_buffer(v13, static DBWriter.Log);
    swift_beginAccess();
    (*(v14 + 16))(v12, v15, v13);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 280);
    v21 = *(v0 + 256);
    v20 = *(v0 + 264);
    if (v18)
    {
      v84 = *(v0 + 256);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v87[0] = v23;
      *v22 = 136446722;
      swift_beginAccess();
      v24 = StaticString.description.getter();
      v81 = v19;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v87);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x800000021657FAA0, v87);
      *(v22 + 22) = 2080;
      *(v22 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v87);
      _os_log_impl(&dword_21607C000, v16, v17, "%{public}s.%{public}s Rotating new snapshot generation: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v23, -1, -1);
      MEMORY[0x21CE94770](v22, -1, -1);

      (*(v20 + 8))(v81, v84);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    v50 = swift_task_alloc();
    *(v0 + 424) = v50;
    *v50 = v0;
    v50[1] = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);
    v51 = v8;
    v52 = v10;
  }

  return DBManager.setSnapshotGeneration(_:)(v51, v52);
}

{
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v3, v2);
}

{
  v61 = v0;
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);

  *(v0 + 152) = v2;
  *(v0 + 160) = v1;
  v3 = dispatch thunk of ModelContainer.mainContext.getter();

  v4 = specialized static DBWriter._newSnapshotSequenceNumber(generation:context:)(v2, v1, v3);

  v55 = v2;
  v5 = v2;
  v6 = v1;
  v54 = v4;
  if (v4 == 1)
  {
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v9 = *(v0 + 288);
    UUID.init()();
    v5 = UUID.uuidString.getter();
    v11 = v10;
    (*(v8 + 8))(v7, v9);
    swift_beginAccess();
    *(v0 + 152) = v5;
    *(v0 + 160) = v11;
    v58 = v11;

    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 264);
    v12 = *(v0 + 272);
    v14 = *(v0 + 256);
    v15 = __swift_project_value_buffer(v14, static DBWriter.Log);
    swift_beginAccess();
    (*(v13 + 16))(v12, v15, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 256);
    if (v18)
    {
      v56 = *(v0 + 256);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v60[0] = v23;
      *v22 = 136446722;
      v52 = v19;
      swift_beginAccess();
      v24 = StaticString.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v60);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x800000021657FAA0, v60);
      *(v22 + 22) = 2080;
      v6 = v58;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v58, v60);

      *(v22 + 24) = v27;
      _os_log_impl(&dword_21607C000, v16, v17, "%{public}s.%{public}s Rotating new snapshot generation: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v23, -1, -1);
      MEMORY[0x21CE94770](v22, -1, -1);

      (*(v20 + 8))(v52, v56);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      v6 = v11;
    }
  }

  v57 = v5;
  v59 = v6;
  *(v0 + 432) = v6;
  v28 = *(v0 + 328);
  v50 = *(v0 + 376);
  v51 = *(v0 + 336);
  v30 = *(v0 + 312);
  v29 = *(v0 + 320);
  v32 = *(v0 + 240);
  v31 = *(v0 + 248);
  v33 = *(v0 + 176);
  v53 = *(v0 + 184);
  v34 = *(v0 + 168);
  (*(*(v0 + 296) + 56))(v31, 1, 1, *(v0 + 288));

  static Date.now.getter();
  (*(v29 + 16))(v28, v34, v30);
  v35 = OBJC_IVAR____TtC9MomentsUI9DBManager_blobFolderURL;
  v36 = type metadata accessor for URL();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v32, v50 + v35, v36);
  (*(v37 + 56))(v32, 0, 1, v36);
  type metadata accessor for DBSnapshot();
  swift_allocObject();

  v38 = DBSnapshot.init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(v31, v57, v59, v54, v51, v28, v33, v53, v32, 0);
  v39 = *(v0 + 208);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot);

  dispatch thunk of ModelContext.insert<A>(_:)();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMd);
  (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  type metadata accessor for DefaultHistoryTransaction();
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DefaultHistoryTransaction and conformance DefaultHistoryTransaction, 255, MEMORY[0x277CDD588]);
  HistoryDescriptor.init(predicate:)();
  dispatch thunk of ModelContext.deleteHistory<A>(_:)();
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

  v49 = dispatch thunk of ModelContext.hasChanges.getter();
  if (v49)
  {
    dispatch thunk of ModelContext.save()();
    *(v0 + 440) = 0;
  }

  *(v0 + 448) = v38;
  *(v0 + 456) = v59;

  if (v55 == v57 && v1 == v59)
  {

LABEL_12:
    v42 = *(v0 + 499);
    *(v0 + 497) = 6;
    v43 = swift_task_alloc();
    *(v0 + 472) = v43;
    *v43 = v0;
    v43[1] = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);
    v44 = *(v0 + 448);
    v45 = *(v0 + 344);
    v46 = *(v0 + 192);

    return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v44, v46, v42 & 1, v45, (v0 + 497));
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    goto LABEL_12;
  }

  v48 = swift_task_alloc();
  *(v0 + 464) = v48;
  *v48 = v0;
  v48[1] = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);

  return DBManager.setSnapshotGeneration(_:)(v57, v59);
}

{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v2 + v1);
  v4 = v3 == 1;
  v5 = v3 < 1;
  v6 = v3 - 1;
  if (!v5)
  {
    *(v2 + v1) = v6;
    v7 = !v4;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 498) = v7;

    static Published.subscript.setter();
  }

  v8 = *(v0 + 360);
  v9 = *(v0 + 368);

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v8, v9);
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 499);
  *(v1 + 497) = 6;
  v4 = swift_task_alloc();
  *(v1 + 472) = v4;
  *v4 = v2;
  v4[1] = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);
  v5 = *(v1 + 344);
  v6 = *(v1 + 192);
  v7 = *(v1 + 448);

  return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v7, v6, v3 & 1, v5, (v1 + 497));
}

{
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v3, v2);
}

{
  v1 = *(v0 + 448);
  if (v1)
  {
    v2 = (*(*v1 + 304))();
    v3 = (*(*v1 + 352))();
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = 1;
  }

  *(v0 + 500) = v4 & 1;
  *(v0 + 480) = v3;
  *(v0 + 488) = v2;
  v5 = *(v0 + 376);

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v5, 0);
}

{
  v6.is_nil = *(v0 + 500);
  v6.value = *(v0 + 480);
  v5.value = *(v0 + 488);
  v5.is_nil = *(v0 + 448) == 0;
  DBManager.addSnapshotEnd(sequence:suggestions:)(v5, v6);
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v1, v2);
}

{
  v1 = v0[43];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[25];

  specialized BTask.init(name:operation:)(0xD000000000000043, 0x800000021657FA50, &async function pointer to partial apply for closure #2 in DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[43];
  v2 = v0[39];
  v3 = v0[40];

  swift_willThrow();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 376);
  v6 = OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount;
  *(v3 + 384) = OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount;
  v7 = *(v5 + v6);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v5 + v6) = v9;
    v10 = v9 > 0;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v3 + 496) = v10;

    static Published.subscript.setter();
    a1 = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);
    a2 = v5;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t closure #2 in DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:)()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = closure #2 in DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);

  return DBManager.cleanup(wait:)(0);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DBWriter.deleteSnapshotsMain(snapshots:)(Swift::OpaquePointer snapshots)
{
  dispatch thunk of ModelContainer.mainContext.getter();
  if (snapshots._rawValue >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((snapshots._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  do
  {
    if ((snapshots._rawValue & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CE93180](v4, snapshots._rawValue);
    }

    else
    {
    }

    ++v4;
    type metadata accessor for DBSnapshot();
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot);
    dispatch thunk of ModelContext.delete<A>(_:)();
  }

  while (v3 != v4);
LABEL_10:
  if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    dispatch thunk of ModelContext.save()();

    if (v1)
    {
      return;
    }
  }

  else
  {
  }

  specialized BTask.init(name:operation:)(0xD000000000000028, 0x800000021657FAE0, &async function pointer to partial apply for closure #2 in DBWriter.deleteSnapshotsMain(snapshots:), v5);
}

uint64_t DBWriter.lookupSuggestionID(_:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v2[10] = v3;
  *v3 = v2;
  v3[1] = DBWriter.lookupSuggestionID(_:);

  return DBWriter.latestSnapshotMain(prefetch:)(0);
}

{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = DBWriter.lookupSuggestionID(_:);
  }

  else
  {
    v6 = DBWriter.lookupSuggestionID(_:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t DBWriter.lookupSuggestionID(_:)()
{
  v1 = *(v0 + 88);

  if (v1)
  {
    v3 = *(v0 + 88);
    *(v0 + 40) = 0;
    v4 = (*(*v3 + 304))(v2);
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static CommonLogger.processing);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_21607C000, v6, v7, "latest snapshot sequence %llu", v8, 0xCu);
      MEMORY[0x21CE94770](v8, -1, -1);
    }

    v9 = *(v0 + 96);
    v10 = *(v0 + 48);

    v11 = dispatch thunk of ModelContainer.mainContext.getter();
    specialized closure #1 in DBWriter.lookupSuggestionID(_:)(v11, v10, v4, (v0 + 40));
    if (v9)
    {
      dispatch thunk of ModelContext.rollback()();
    }

    else
    {
      if (dispatch thunk of ModelContext.hasChanges.getter())
      {
        dispatch thunk of ModelContext.save()();
      }
    }

    swift_beginAccess();
    v16 = *(v0 + 40);
  }

  else
  {
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static CommonLogger.processing);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21607C000, v13, v14, "No latest snapshot found.", v15, 2u);
      MEMORY[0x21CE94770](v15, -1, -1);
    }

    v16 = 0;
  }

  v17 = *(v0 + 8);

  return v17(v16);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized closure #1 in DBWriter.lookupSuggestionID(_:)(uint64_t a1, uint64_t a2, unint64_t a3, NSObject **a4)
{
  v55 = a4;
  v5 = type metadata accessor for UUID();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v53 = a3;
  v54 = a2;
  v59 = a2;
  v60 = a3;
  v15 = type metadata accessor for DBSuggestion();
  LOBYTE(a3) = v15;
  v62[5] = v15;
  Predicate.init(_:)();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd);
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, 255, type metadata accessor for DBSuggestion);
  v18 = MEMORY[0x277D84F90];
  FetchDescriptor.init(predicate:sortBy:)();
  v19 = v58;
  v20 = dispatch thunk of ModelContext.fetch<A>(_:)();
  v21 = v19;
  if (v19)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v23 = v20;
  v58 = v7;
  v52 = v14;
  v24 = (v20 >> 62);
  if (v20 >> 62)
  {
LABEL_39:
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = v12;
  v51 = v11;
  v49 = v21;
  v48 = v24;
  if (!v25)
  {
    v7 = (v23 & 0xC000000000000001);
    goto LABEL_13;
  }

  if (v25 >= 1)
  {
    v26 = 0;
    v7 = (v23 & 0xC000000000000001);
    do
    {
      if (v7)
      {
        v24 = MEMORY[0x21CE93180](v26, v23);
      }

      else
      {
        v24 = *(v23 + 8 * v26 + 32);
      }

      ++v26;
      (*(*v24 + 1344))();
    }

    while (v25 != v26);
LABEL_13:
    a3 = 0;
    v62[0] = v18;
    v12 = v23 & 0xFFFFFFFFFFFFFF8;
    while (v25 != a3)
    {
      if (v7)
      {
        v24 = MEMORY[0x21CE93180](a3, v23);
        v11 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (a3 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v24 = *(v23 + 8 * a3 + 32);

        v11 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      v21 = DBSuggestion.asSuggestion.getter();

      ++a3;
      if (v21)
      {
        v24 = v62;
        MEMORY[0x21CE92260](v27);
        if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v18 = v62[0];
        a3 = v11;
      }
    }

    v28 = v55;
    swift_beginAccess();
    *v28 = v18;

    v29 = v52;
    v30 = v56;
    v31 = v54;
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static CommonLogger.notification);
    v33 = v58;
    v34 = v31;
    v35 = v57;
    (*(v30 + 16))(v58, v34, v57);

    v18 = Logger.logObject.getter();
    LOBYTE(a3) = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v18, a3))
    {

      swift_bridgeObjectRelease_n();
      (*(v30 + 8))(v33, v35);
      return (*(v50 + 8))(v29, v51);
    }

    v25 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v61 = v36;
    *v25 = 134218754;
    v54 = v36;
    if (v48)
    {
      v37 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v55;

    *(v25 + 4) = v37;

    LOWORD(v21) = 2048;
    *(v25 + 12) = 2048;
    swift_beginAccess();
    v39 = *v38;
    v12 = v50;
    v11 = v51;
    if (v39)
    {
      v23 = v57;
      v7 = v58;
      if (v39 >> 62)
      {
        goto LABEL_41;
      }

      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    else
    {
      v40 = -1;
      v23 = v57;
      v7 = v58;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_41:
  v40 = __CocoaSet.count.getter();
LABEL_36:
  *(v25 + 14) = v40;
  *(v25 + 22) = 2080;
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  v41 = dispatch thunk of CustomStringConvertible.description.getter();
  v42 = v23;
  v44 = v43;
  (*(v56 + 8))(v7, v42);
  v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v44, &v61);

  *(v25 + 24) = v45;
  *(v25 + 32) = v21;
  *(v25 + 34) = v53;
  _os_log_impl(&dword_21607C000, v18, a3, "[NotificationHandlingManager] fetched n=%ld from db, converted=%ld,  suggestionID=%s, latestSnapshot=%llu", v25, 0x2Au);
  v46 = v54;
  __swift_destroy_boxed_opaque_existential_1(v54);
  MEMORY[0x21CE94770](v46, -1, -1);
  MEMORY[0x21CE94770](v25, -1, -1);

  return (*(v12 + 8))(v52, v11);
}

uint64_t closure #2 in closure #1 in DBWriter.lookupSuggestionID(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v32 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGMd);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAoEy_AGy_AMSayAJ10DBSnapshotCGSgGAtC11ConjunctionVy_AC5EqualVy_AIy_AOGAC5ValueVy_AOGGAC21SequenceContainsWhereVy_AIy_ATGAZy_AGy_AIy_ASGs6UInt64VGA1_y_A9_GGGGSbGSbGMd);
  v17 = *(v16 - 8);
  v29 = v16;
  v30 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - v18;
  v20 = *a1;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v9 + 8))(v11, v8);
  v35 = v20;
  v36 = v27;
  v37 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC11ConjunctionVy_AC5EqualVy_AIy_AA4UUIDVGAC5ValueVy_AXGGAC21SequenceContainsWhereVy_AIy_APGAVy_AGy_AIy_AOGs6UInt64VGA_y_A7_GGGGSbGMd);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC11ConjunctionVy_AC5EqualVy_AIy_AA4UUIDVGAC5ValueVy_AXGGAC21SequenceContainsWhereVy_AIy_APGAVy_AGy_AIy_AOGs6UInt64VGA_y_A7_GGGGSbGMd);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v13 + 8))(v15, v12);
  v38 = 0;
  v21 = v31;
  static PredicateExpressions.build_Arg<A>(_:)();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAqGy_AIy_AOSayAL10DBSnapshotCGSgGAvC11ConjunctionVy_AC5EqualVy_AKy_AQGAC5ValueVy_AQGGAC21SequenceContainsWhereVy_AKy_AVGA0_y_AIy_AKy_AUGs6UInt64VGA3_y_A11_GGGGSbGSbGA3_y_SbGGMd);
  v23 = v32;
  v32[3] = v22;
  v23[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v23);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAoEy_AGy_AMSayAJ10DBSnapshotCGSgGAtC11ConjunctionVy_AC5EqualVy_AIy_AOGAC5ValueVy_AOGGAC21SequenceContainsWhereVy_AIy_ATGAZy_AGy_AIy_ASGs6UInt64VGA1_y_A9_GGGGSbGSbGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v24 = v29;
  v25 = v33;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v34 + 8))(v21, v25);
  return (*(v30 + 8))(v19, v24);
}

uint64_t closure #1 in closure #2 in closure #1 in DBWriter.lookupSuggestionID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v8, v5);
  v18 = a1;
  v19 = v15;
  v20 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AKGGAC21SequenceContainsWhereVy_AIy_Say9MomentsUI10DBSnapshotCGGAGy_AC7KeyPathVy_AIy_AUGs6UInt64VGANy_A0_GGGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI10DBSnapshotCGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>> and conformance PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AKGGAC21SequenceContainsWhereVy_AIy_Say9MomentsUI10DBSnapshotCGGAGy_AC7KeyPathVy_AIy_AUGs6UInt64VGANy_A0_GGGGMd);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in DBWriter.lookupSuggestionID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a1;
  v34 = a4;
  v27[1] = a2;
  v27[2] = a3;
  v38 = a5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMd);
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMd);
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  MEMORY[0x28223BE20](v6);
  v32 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_AA4UUIDVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AIGGMd);
  v18 = *(v17 - 8);
  v29 = v17;
  v30 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = v27 - v19;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<UUID> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4UUIDVGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  type metadata accessor for UUID();
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<[DBSnapshot]> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMd);
  v21 = v28;
  v22 = v31;
  static PredicateExpressions.build_Arg<A>(_:)();
  v39 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DBSnapshot] and conformance [A], &_sSay9MomentsUI10DBSnapshotCGMd);
  v23 = v32;
  static PredicateExpressions.build_contains<A, B>(_:where:)();
  (*(v35 + 8))(v21, v22);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AIGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance PredicateExpressions.SequenceContainsWhere<A, B>, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMd);
  v24 = v29;
  v25 = v36;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v37 + 8))(v23, v25);
  return (*(v30 + 8))(v20, v24);
}

uint64_t DBWriter.fetchEligibleNotificationSuggestions(after:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd);
  v2[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v2[5] = 0;
  v5 = swift_task_alloc();
  v2[22] = v5;
  *v5 = v2;
  v5[1] = DBWriter.fetchEligibleNotificationSuggestions(after:);

  return DBWriter.latestSnapshotMain(prefetch:)(0);
}

{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = DBWriter.fetchEligibleNotificationSuggestions(after:);
  }

  else
  {
    v6 = DBWriter.fetchEligibleNotificationSuggestions(after:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t DBWriter.fetchEligibleNotificationSuggestions(after:)()
{
  v1 = v0[23];

  if (v1)
  {
    v3 = (*(*v0[23] + 304))(v2);
    if (one-time initialization token for processing != -1)
    {
LABEL_53:
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static CommonLogger.processing);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v3;
      _os_log_impl(&dword_21607C000, v4, v5, "latest snapshot sequence %llu", v6, 0xCu);
      MEMORY[0x21CE94770](v6, -1, -1);
    }

    v49 = v0[24];
    v7 = v0[18];
    v8 = v0[19];
    v9 = v0[17];
    v11 = v0[14];
    v10 = v0[15];
    v46 = v0[13];
    v47 = v0[12];
    v12 = v0[9];
    v45 = v0[16];
    v13 = v0[7];

    *(swift_task_alloc() + 16) = v13;
    v14 = type metadata accessor for DBSuggestion();
    v0[6] = v14;
    Predicate.init(_:)();
    *(swift_task_alloc() + 16) = &outlined read-only object #0 of DBWriter.fetchEligibleNotificationSuggestions(after:);
    Predicate.init(_:)();
    v43 = v3;
    *(swift_task_alloc() + 16) = v3;
    Predicate.init(_:)();
    *(swift_task_alloc() + 16) = 202;
    Predicate.init(_:)();
    *(swift_task_alloc() + 16) = &outlined read-only object #1 of DBWriter.fetchEligibleNotificationSuggestions(after:);
    Predicate.init(_:)();
    dispatch thunk of ModelContainer.mainContext.getter();
    v15 = swift_task_alloc();
    v15[2] = v8;
    v15[3] = v7;
    v15[4] = v9;
    v15[5] = v45;
    v15[6] = v10;
    Predicate.init(_:)();
    (*(v11 + 56))(v12, 0, 1, v46);
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, 255, type metadata accessor for DBSuggestion);
    v16 = MEMORY[0x277D84F90];
    v17 = v47;
    FetchDescriptor.init(predicate:sortBy:)();
    v18 = v49;
    v19 = dispatch thunk of ModelContext.fetch<A>(_:)();
    if (v49)
    {
      (*(v0[11] + 8))(v0[12], v0[10]);
      dispatch thunk of ModelContext.rollback()();

      v14 = 0;
LABEL_47:

      v35 = v0[18];
      v34 = v0[19];
      v37 = v0[16];
      v36 = v0[17];
      v38 = v0[15];
      v39 = v0[13];
      v40 = *(v0[14] + 8);

      v40(v38, v39);
      v40(v37, v39);
      v40(v36, v39);
      v40(v35, v39);
      v40(v34, v39);

      goto LABEL_48;
    }

    v24 = v19;
    v50 = v16;
    v3 = v19 >> 62;
    if (v19 >> 62)
    {
      v25 = __CocoaSet.count.getter();
    }

    else
    {
      v25 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v3;
    if (v25)
    {
      if (v25 < 1)
      {
        __break(1u);
LABEL_56:
        v33 = __CocoaSet.count.getter();
LABEL_43:
        *(v17 + 14) = v33;
        *(v17 + 22) = 2048;
        *(v17 + 24) = v43;
        _os_log_impl(&dword_21607C000, v16, v18, "[NotificationHandlingManager] fetched n=%ld from db, converted=%ld, latestSnapshot=%llu", v17, 0x20u);
        MEMORY[0x21CE94770](v17, -1, -1);
LABEL_44:

        (*(v0[11] + 8))(v0[12], v0[10]);
        if (dispatch thunk of ModelContext.hasChanges.getter())
        {
          dispatch thunk of ModelContext.save()();
        }

        goto LABEL_47;
      }

      v26 = 0;
      v27 = v24 & 0xC000000000000001;
      do
      {
        if (v27)
        {
          v28 = MEMORY[0x21CE93180](v26, v24);
        }

        else
        {
          v28 = *(v24 + 8 * v26 + 32);
        }

        ++v26;
        (*(*v28 + 1344))();
      }

      while (v25 != v26);
    }

    else
    {
      v27 = v24 & 0xC000000000000001;
    }

    v29 = 0;
    v51 = v16;
    while (v25 != v29)
    {
      if (v27)
      {
        MEMORY[0x21CE93180](v29, v24);
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v29 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

      v3 = DBSuggestion.asSuggestion.getter();

      ++v29;
      if (v3)
      {
        MEMORY[0x21CE92260](v31);
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v50 = v51;
        v29 = v30;
      }
    }

    swift_beginAccess();
    v0[5] = v50;
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v44, static CommonLogger.notification);

    v16 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v16, v18))
    {
      swift_bridgeObjectRelease_n();
      v14 = v50;
      goto LABEL_44;
    }

    v17 = swift_slowAlloc();
    *v17 = 134218496;
    if (v48)
    {
      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 4) = v32;

    *(v17 + 12) = 2048;
    v14 = v50;
    if (!(v50 >> 62))
    {
      v33 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_43;
    }

    goto LABEL_56;
  }

  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static CommonLogger.processing);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_21607C000, v21, v22, "No latest snapshot found.", v23, 2u);
    MEMORY[0x21CE94770](v23, -1, -1);
  }

  v14 = 0;
LABEL_48:

  v41 = v0[1];

  return v41(v14);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #7 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v23 = a1;
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAoC10ComparisonVy_AIy_AOGAC5ValueVy_AOGGSbGMd);
  v15 = *(v14 - 8);
  v24 = v14;
  v25 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10ComparisonVy_AC8VariableVy_AA4DateVGAC5ValueVy_AIGGMd);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>> and conformance PredicateExpressions.Comparison<A, B>, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC8VariableVy_AA4DateVGAC5ValueVy_AIGGMd);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v11 + 8))(v13, v10);
  v30 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAqC10ComparisonVy_AKy_AQGAC5ValueVy_AQGGSbGAXy_SbGGMd);
  v19 = v26;
  v26[3] = v18;
  v19[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v19);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAoC10ComparisonVy_AIy_AOGAC5ValueVy_AOGGSbGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v20 = v24;
  v21 = v27;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v28 + 8))(v5, v21);
  return (*(v25 + 8))(v17, v20);
}

uint64_t closure #1 in closure #7 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v14 = a1;
  v17 = a2;
  v15 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMd);
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_AA4DateVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Date> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4DateVGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  type metadata accessor for Date();
  static PredicateExpressions.build_Arg<A>(_:)();
  v12 = v15;
  (*(v2 + 104))(v4, *MEMORY[0x277CC8FC0], v15);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Date> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMd);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, 255, MEMORY[0x277CC9578]);
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v2 + 8))(v4, v12);
  (*(v16 + 8))(v7, v5);
  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #8 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22 = a1;
  v25 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  MEMORY[0x28223BE20](v2);
  v24 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAIy_SiGGSbGMd);
  v13 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v15 = &v22 - v14;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v8, v5);
  v28 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySiGGAC8VariableVy_SiGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>> and conformance PredicateExpressions.SequenceContains<A, B>, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySiGGAC8VariableVy_SiGGMd);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v10 + 8))(v12, v9);
  v29 = 0;
  v16 = v24;
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAKy_SiGGSbGAUy_SbGGMd);
  v18 = v25;
  v25[3] = v17;
  v18[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v18);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAIy_SiGGSbGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v19 = v23;
  v20 = v26;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v27 + 8))(v16, v20);
  return (*(v13 + 8))(v15, v19);
}

uint64_t closure #1 in closure #8 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v12[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SiGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SaySiGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  v12[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Int> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<[Int]> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SaySiGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd);
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #9 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v23 = a1;
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGs6UInt64VGAC5ValueVy_AZGGGSbGMd);
  v15 = *(v14 - 8);
  v24 = v14;
  v25 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI10DBSnapshotCGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance PredicateExpressions.SequenceContainsWhere<A, B>, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMd);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v11 + 8))(v13, v10);
  v30 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAL10DBSnapshotCGSgGArC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGs6UInt64VGAC5ValueVy_A0_GGGSbGA3_y_SbGGMd);
  v19 = v26;
  v26[3] = v18;
  v19[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v19);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGs6UInt64VGAC5ValueVy_AZGGGSbGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v20 = v24;
  v21 = v27;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v28 + 8))(v5, v21);
  return (*(v25 + 8))(v17, v20);
}

uint64_t closure #1 in closure #9 in DBWriter.fetchEligibleNotificationSuggestions(after:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<[DBSnapshot]> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  v9 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DBSnapshot] and conformance [A], &_sSay9MomentsUI10DBSnapshotCGMd);
  static PredicateExpressions.build_contains<A, B>(_:where:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in DBWriter.lookupSuggestionID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a1;
  v17 = a2;
  v19 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd);
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  v20 = v17;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UInt64> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd);
  v14 = v18;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v14);
  return (*(v11 + 8))(v13, v10);
}

uint64_t closure #10 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22 = a1;
  v25 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  MEMORY[0x28223BE20](v2);
  v24 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AIy_SiGAC5ValueVy_SiGGSbGMd);
  v13 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v15 = &v22 - v14;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v8, v5);
  v28 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8NotEqualVy_AC8VariableVy_SiGAC5ValueVy_SiGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>> and conformance PredicateExpressions.NotEqual<A, B>, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC8VariableVy_SiGAC5ValueVy_SiGGMd);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v10 + 8))(v12, v9);
  v29 = 0;
  v16 = v24;
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AKy_SiGAC5ValueVy_SiGGSbGAVy_SbGGMd);
  v18 = v25;
  v25[3] = v17;
  v18[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v18);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AIy_SiGAC5ValueVy_SiGGSbGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v19 = v23;
  v20 = v26;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v27 + 8))(v16, v20);
  return (*(v13 + 8))(v15, v19);
}

uint64_t closure #1 in closure #10 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v12[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SiGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SiGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Int> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  v12[1] = a1;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Int> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SiGMd);
  static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #11 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22 = a1;
  v25 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  MEMORY[0x28223BE20](v2);
  v24 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAIy_SuGGSbGMd);
  v13 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v15 = &v22 - v14;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v8, v5);
  v28 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySuGGAC8VariableVy_SuGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>> and conformance PredicateExpressions.SequenceContains<A, B>, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySuGGAC8VariableVy_SuGGMd);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v10 + 8))(v12, v9);
  v29 = 0;
  v16 = v24;
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAKy_SuGGSbGAUy_SbGGMd);
  v18 = v25;
  v25[3] = v17;
  v18[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v18);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAIy_SuGGSbGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v19 = v23;
  v20 = v26;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v27 + 8))(v16, v20);
  return (*(v13 + 8))(v15, v19);
}

uint64_t closure #1 in closure #11 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v12[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SuGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SaySuGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  v12[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<UInt> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SuGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<[UInt]> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SaySuGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [UInt] and conformance [A], &_sSaySuGMd);
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #2 in closure #6 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v69 = a5;
  v68 = a4;
  v73 = a2;
  v74 = a3;
  v70 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ALG_QPGMd);
  v16 = *(v15 - 8);
  v82 = v15;
  v83 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v60 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v59 = &v54 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGMd);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v75 = &v54 - v20;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGMd);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v54 - v21;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGMd);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v76 = &v54 - v22;
  v84 = *a1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  v23 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  v91 = v7;
  v92 = v10;
  v24 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGMd);
  v90 = v23;
  v71 = v23;
  v25 = v14;
  v77 = v11;
  v79 = v24;
  static PredicateExpressions.build_evaluate<A, B>(_:_:)();
  v26 = *(v12 + 8);
  v26(v14, v11);
  v27 = v26;
  v81 = v26;
  v78 = v12 + 8;
  v28 = *(v8 + 8);
  v29 = v7;
  v28(v10, v7);
  v80 = v28;
  v72 = v8 + 8;
  static PredicateExpressions.build_Arg<A>(_:)();
  static PredicateExpressions.build_Arg<A>(_:)();
  v89 = v10;
  v30 = v60;
  v31 = v77;
  static PredicateExpressions.build_evaluate<A, B>(_:_:)();
  v27(v25, v31);
  v28(v10, v29);
  v73 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>, &_s10Foundation20PredicateExpressionsO0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ALG_QPGMd);
  v32 = v59;
  v33 = v82;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v34 = *(v83 + 8);
  v83 += 8;
  v34(v30, v33);
  v34(v32, v33);
  v58 = v34;
  static PredicateExpressions.build_Arg<A>(_:)();
  v57 = v29;
  static PredicateExpressions.build_Arg<A>(_:)();
  v88 = v10;
  v56 = v10;
  v55 = v25;
  v35 = v77;
  static PredicateExpressions.build_evaluate<A, B>(_:_:)();
  v81(v25, v35);
  v80(v10, v29);
  v74 = MEMORY[0x277CC8F18];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGMd);
  v36 = v61;
  v37 = v75;
  v38 = v32;
  v39 = v62;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v34(v32, v33);
  (*(v63 + 8))(v37, v39);
  v40 = v55;
  static PredicateExpressions.build_Arg<A>(_:)();
  v41 = v56;
  v42 = v57;
  static PredicateExpressions.build_Arg<A>(_:)();
  v87 = v41;
  v43 = v77;
  static PredicateExpressions.build_evaluate<A, B>(_:_:)();
  v81(v40, v43);
  v80(v41, v42);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGMd);
  v44 = v36;
  v45 = v64;
  v46 = v82;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v47 = v58;
  v58(v38, v46);
  (*(v65 + 8))(v44, v45);
  static PredicateExpressions.build_Arg<A>(_:)();
  static PredicateExpressions.build_Arg<A>(_:)();
  v86 = v41;
  static PredicateExpressions.build_evaluate<A, B>(_:_:)();
  v81(v40, v43);
  v80(v41, v42);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGATGMd);
  v49 = v70;
  v70[3] = v48;
  v49[4] = lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v49);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGMd);
  v50 = v76;
  v51 = v66;
  v52 = v82;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v47(v38, v52);
  return (*(v67 + 8))(v50, v51);
}

uint64_t DBWriter.latestSnapshotSequence()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x2822009F8](DBWriter.latestSnapshotSequence(), v0, 0);
}

{
  v1 = v0[5];
  swift_beginAccess();
  v0[6] = static CloudManager.systemIdiom;
  v2 = *(v1 + 112);
  v0[7] = v2;

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotSequence(), v2, 0);
}

{
  v9 = v0;
  v1 = *(v0 + 48) == 0;
  type metadata accessor for ModelContext();
  swift_allocObject();

  v2 = ModelContext.init(_:)();
  v3 = DBManager.getSnapshotGeneration()();
  specialized static DBWriter._latestSnapshotSequence(generation:context:nilFallback:loadedSuggestionCount:)(v3._countAndFlagsBits, v3._object, v2, v1, 1, v6);
  *(v0 + 64) = v7;
  *(v0 + 80) = v8;

  if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    dispatch thunk of ModelContext.save()();
  }

  v4 = *(v0 + 56);

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotSequence(), v4, 0);
}

{
  DBManager.setLatestLocalSnapshotSequence(_:_:)(*(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t DBWriter.latestSnapshotSequenceWithGeneration()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](DBWriter.latestSnapshotSequenceWithGeneration(), v1, 0);
}

uint64_t DBWriter.latestSnapshotSequenceWithGeneration()()
{
  v1 = v0[6];
  swift_beginAccess();
  v0[7] = static CloudManager.systemIdiom;
  v2 = *(v1 + 112);
  v0[8] = v2;

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotSequenceWithGeneration(), v2, 0);
}

{
  v16 = v0;
  v1 = *(v0 + 56) == 0;
  type metadata accessor for ModelContext();
  swift_allocObject();

  v2 = ModelContext.init(_:)();
  v3 = DBManager.getSnapshotGeneration()();
  specialized static DBWriter._latestSnapshotSequence(generation:context:nilFallback:loadedSuggestionCount:)(v3._countAndFlagsBits, v3._object, v2, v1, 1, &v11);
  v4 = v11;
  v5 = v12;
  *(v0 + 72) = v12;
  v7 = v13;
  v6 = v14;
  v8 = v15;

  if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    dispatch thunk of ModelContext.save()();
    *(v0 + 80) = 0;
  }

  *(v0 + 104) = v4;
  *(v0 + 112) = v5;
  *(v0 + 120) = v8;
  *(v0 + 88) = v6;
  *(v0 + 96) = v7;
  v9 = *(v0 + 64);

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotSequenceWithGeneration(), v9, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v5 = *(v0 + 88);
  v6 = *(v0 + 104);
  v8.value = v5.i64[0];
  v8.is_nil = v1;
  DBManager.setLatestLocalSnapshotSequence(_:_:)(v5.u64[1], v8);
  *v2 = v6;
  *(v2 + 16) = vextq_s8(v5, v5, 8uLL);
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 192) = v14;
  *(v9 + 200) = v8;
  *(v9 + 342) = v15;
  *(v9 + 341) = v13;
  *(v9 + 176) = a7;
  *(v9 + 184) = a8;
  *(v9 + 160) = a4;
  *(v9 + 168) = a6;
  *(v9 + 340) = a5;
  *(v9 + 144) = a2;
  *(v9 + 152) = a3;
  *(v9 + 136) = a1;
  *(v9 + 208) = *v8;
  v10 = type metadata accessor for Date();
  *(v9 + 216) = v10;
  *(v9 + 224) = *(v10 - 8);
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 343) = *v16;

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v8, 0);
}

uint64_t DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)()
{
  v1 = *(v0 + 340);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v4 = swift_allocObject();
  v5 = v4;
  *(v4 + 16) = xmmword_21659A8A0;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D83838];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = v7;
  if (v2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 7104878;
  }

  if (v2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  if (v1)
  {
    *(v4 + 96) = v6;
    *(v4 + 104) = v7;
    *(v4 + 72) = 7104878;
    *(v4 + 80) = 0xE300000000000000;
  }

  else
  {
    v10 = *(v0 + 160);
    v11 = MEMORY[0x277D84D80];
    *(v0 + 40) = MEMORY[0x277D84D38];
    *(v0 + 48) = v11;
    *(v0 + 16) = v10;
    outlined init with take of MusicPlaybackCoordinatorDelegate((v0 + 16), v4 + 72);
  }

  v12 = *(v0 + 216);
  v13 = *(v0 + 224);
  v14 = *(v0 + 168);
  v15 = *(v0 + 176);
  v5[17] = v12;
  v5[18] = _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, 255, MEMORY[0x277CC9578]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 14);
  (*(v13 + 16))(boxed_opaque_existential_1, v14, v12);
  if (v15 >> 62)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = *(v0 + 184);
  v19 = MEMORY[0x277D83B88];
  v20 = MEMORY[0x277D83BF8];
  v5[22] = MEMORY[0x277D83B88];
  v5[23] = v20;
  v5[19] = v17;
  if (v18 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = *(v0 + 342);
  v5[27] = v19;
  v5[28] = v20;
  v5[24] = v21;
  if (v22)
  {
    v5[32] = v19;
    v5[33] = v20;
    v5[29] = -1;
  }

  else
  {
    v23 = *(v0 + 192);
    v24 = MEMORY[0x277D83A60];
    *(v0 + 80) = MEMORY[0x277D839F8];
    *(v0 + 88) = v24;
    *(v0 + 56) = v23;
    outlined init with take of MusicPlaybackCoordinatorDelegate((v0 + 56), (v5 + 29));
  }

  v26 = *(v0 + 200);
  v25 = *(v0 + 208);
  *(v0 + 336) = *(v0 + 343);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventV6ReasonOSgMd);
  v27 = String.init<A>(describing:)();
  v5[37] = v6;
  v5[38] = v7;
  v5[34] = v27;
  v5[35] = v28;
  static CloudLog.LogBeginInfo(_:_:)(v5, "addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)", 103, 2, v25, &protocol witness table for DBWriter);

  Date.init()();
  v29 = *(v26 + 112);
  *(v0 + 240) = v29;

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v29, 0);
}

{
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  v1 = *(v0 + 341);
  v2 = *(v0 + 160);
  v10 = *(v0 + 168);
  v3 = *(v0 + 340);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  *(v0 + 104) = 0;
  *(v0 + 96) = 0;
  *(v0 + 112) = v4;
  *(v0 + 120) = v5;
  *(v0 + 128) = 0;
  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  *(v7 + 16) = *(v0 + 176);
  *(v7 + 32) = v0 + 96;
  *(v7 + 40) = v2;
  *(v7 + 48) = v3 & 1;
  *(v7 + 56) = v0 + 112;
  *(v7 + 64) = v1;
  *(v7 + 72) = v0 + 128;
  *(v7 + 80) = v6;
  *(v7 + 88) = v10;
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;

  v8 = swift_task_alloc();
  *(v0 + 264) = v8;
  *v8 = v0;
  v8[1] = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);

  return DBManager.beginMultiThreadedAsyncWrite(_:)(&async function pointer to partial apply for closure #1 in DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v7);
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  *(v0 + 280) = v1;
  if (!v1 || (v3 = *(v0 + 104)) != 0 && (*(v0 + 96) == v2 ? (v4 = v3 == v1) : (v4 = 0), v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v5 = *(v0 + 343);
    v6 = *(v0 + 342);
    v7 = *(v0 + 128);
    *(v0 + 296) = v7;
    *(v0 + 339) = v5;
    v8 = swift_task_alloc();
    *(v0 + 304) = v8;
    *v8 = v0;
    v8[1] = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);
    v9 = *(v0 + 232);
    v10 = *(v0 + 192);

    return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v7, v10, v6 & 1, v9, (v0 + 339));
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v12[1] = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);

    return DBManager.setSnapshotGeneration(_:)(v2, v1);
  }
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 343);
  v4 = *(v1 + 342);
  v5 = *(v1 + 128);
  *(v1 + 296) = v5;
  *(v1 + 339) = v3;
  v6 = swift_task_alloc();
  *(v1 + 304) = v6;
  *v6 = v2;
  v6[1] = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);
  v7 = *(v1 + 232);
  v8 = *(v1 + 192);

  return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v5, v8, v4 & 1, v7, (v1 + 339));
}

{
  v1 = *(*v0 + 200);

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v1, 0);
}

{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = (*(*v1 + 304))();
    v3 = (*(*v1 + 352))();
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = 1;
  }

  *(v0 + 344) = v4 & 1;
  *(v0 + 312) = v3;
  *(v0 + 320) = v2;
  v5 = *(v0 + 240);

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v5, 0);
}

{
  v5.is_nil = *(v0 + 344);
  v5.value = *(v0 + 312);
  v4.value = *(v0 + 320);
  v4.is_nil = *(v0 + 296) == 0;
  DBManager.addSnapshotEnd(sequence:suggestions:)(v4, v5);
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);

  return DBManager.cleanup(wait:)(1);
}

{
  v1 = *(*v0 + 200);

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v1, 0);
}

{
  v1 = v0[26];
  (*(v0[28] + 8))(v0[29], v0[27]);

  static CloudLog.LogEndInfo(_:)("addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)", 103, 2, v1, &protocol witness table for DBWriter);

  v2 = v0[1];

  return v2();
}

{
  v1 = *(v0 + 240);

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v1, 0);
}

{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v2 + v1);
  v4 = v3 == 1;
  v5 = v3 < 1;
  v6 = v3 - 1;
  if (!v5)
  {
    *(v2 + v1) = v6;
    v7 = !v4;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 338) = v7;

    static Published.subscript.setter();
  }

  v8 = *(v0 + 200);

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v8, 0);
}

{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  swift_willThrow();
  (*(v2 + 8))(v1, v3);

  static CloudLog.LogEndInfo(_:)("addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)", 103, 2, v4, &protocol witness table for DBWriter);

  v5 = v0[1];

  return v5();
}

uint64_t DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 240);
  v6 = OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount;
  *(v3 + 248) = OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount;
  v7 = *(v5 + v6);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v3 + 200);
    *(v5 + v6) = v9;
    v11 = v9 > 0;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v3 + 337) = v11;

    static Published.subscript.setter();
    a1 = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);
    a2 = v10;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t closure #1 in DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v21;
  *(v8 + 184) = v22;
  *(v8 + 160) = v19;
  *(v8 + 168) = v20;
  *(v8 + 417) = v18;
  *(v8 + 416) = a8;
  *(v8 + 144) = a7;
  *(v8 + 152) = v17;
  *(v8 + 128) = a5;
  *(v8 + 136) = a6;
  *(v8 + 112) = a3;
  *(v8 + 120) = a4;
  *(v8 + 96) = a1;
  *(v8 + 104) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGSgMd);
  *(v8 + 192) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData17HistoryDescriptorVyAA07DefaultC11TransactionVGMd);
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *(v8 + 224) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd);
  *(v8 + 280) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd);
  *(v8 + 288) = v11;
  *(v8 + 296) = *(v11 - 8);
  *(v8 + 304) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd);
  *(v8 + 312) = v12;
  *(v8 + 320) = *(v12 - 8);
  *(v8 + 328) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v8 + 336) = v13;
  *(v8 + 344) = *(v13 - 8);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v8 + 376) = v14;
  *(v8 + 384) = *(v14 - 8);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v22, 0);
}

uint64_t closure #1 in DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)()
{
  v173 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = specialized static DBWriter._mapSuggestions(_:context:)(*(v0 + 120), v4);
  v8 = specialized static DBWriter._mapSuggestions(_:context:)(v2, v4);
  *v3 = v6;
  v3[1] = v5;

  v161 = v7;
  if (v1)
  {
    v9 = specialized static DBWriter._newSnapshotSequenceNumber(generation:context:)(*(v0 + 96), *(v0 + 104), *(v0 + 112));
    if (v9 == 1)
    {
      v94 = *(v0 + 152);
      v95 = v94[1];
      if (!v95 || ((v95 & 0x2000000000000000) != 0 ? (v96 = HIBYTE(v95) & 0xF) : (v96 = *v94 & 0xFFFFFFFFFFFFLL), !v96))
      {
        v120 = *(v0 + 408);
        v121 = *(v0 + 376);
        v122 = *(v0 + 384);
        UUID.init()();
        v55 = UUID.uuidString.getter();
        v54 = v123;
        (*(v122 + 8))(v120, v121);
        *v94 = v55;
        v94[1] = v54;

        if (one-time initialization token for Log != -1)
        {
          goto LABEL_89;
        }

        goto LABEL_75;
      }

      v9 = 1;
    }
  }

  else
  {
    v9 = *(v0 + 144);
  }

  v152 = v9;
  v10 = *(v0 + 152);
  if (!v10[1])
  {
    *v10 = *(v0 + 96);
    v10[1] = v5;
  }

LABEL_6:
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI12DBSuggestionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (v7 >> 62)
  {
    goto LABEL_85;
  }

  v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v153 = v8;
  v169 = v0;
  v171 = v12;
  if (v12)
  {
    v13 = 0;
    v8 = *(v0 + 384);
    v162 = v7 & 0xFFFFFFFFFFFFFF8;
    v166 = v7 & 0xC000000000000001;
    do
    {
      if (v166)
      {
        v15 = MEMORY[0x21CE93180](v13, v7);
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v13 >= *(v162 + 16))
        {
          goto LABEL_80;
        }

        v15 = *(v7 + 8 * v13 + 32);

        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          v12 = __CocoaSet.count.getter();
          goto LABEL_8;
        }
      }

      v17 = *(v0 + 400);
      (*(*v15 + 296))();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v172[0] = v11;
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      v21 = v11[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_81;
      }

      v25 = v20;
      if (v11[3] >= v24)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v19;
          specialized _NativeDictionary.copy()();
          v19 = v33;
          v11 = v172[0];
        }
      }

      else
      {
        v26 = *(v0 + 400);
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
        v11 = v172[0];
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
        if ((v25 & 1) != (v27 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v0 = v169;
        v7 = v161;
      }

      v28 = *(v0 + 400);
      v29 = *(v0 + 376);
      if (v25)
      {
        *(v11[7] + 8 * v19) = v15;

        (*(v8 + 8))(v28, v29);
      }

      else
      {
        v11[(v19 >> 6) + 8] |= 1 << v19;
        v30 = v19;
        (*(v8 + 16))(v11[6] + *(v8 + 72) * v19, v28, v29);
        *(v11[7] + 8 * v30) = v15;

        (*(v8 + 8))(v28, v29);
        v31 = v11[2];
        v23 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v23)
        {
          goto LABEL_82;
        }

        v11[2] = v32;
      }

      ++v13;
      v14 = v16 == v171;
      v12 = v171;
    }

    while (!v14);
  }

  if (*(v0 + 417) != 1)
  {
    goto LABEL_67;
  }

  if (one-time initialization token for Log != -1)
  {
LABEL_87:
    swift_once();
  }

  v34 = *(v0 + 360);
  v35 = *(v0 + 336);
  v36 = *(v0 + 344);
  v37 = __swift_project_value_buffer(v35, static DBWriter.Log);
  swift_beginAccess();
  v151 = v37;
  v150 = *(v36 + 16);
  v150(v34, v37, v35);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_21607C000, v38, v39, "[addSnapshot] attempting to reusing suggestions", v40, 2u);
    MEMORY[0x21CE94770](v40, -1, -1);
  }

  v7 = *(v0 + 384);
  v41 = *(v0 + 360);
  v42 = *(v0 + 336);
  v43 = *(v0 + 344);
  v44 = *(v0 + 320);
  v45 = *(v0 + 296);

  v46 = *(v43 + 8);
  v46(v41, v42);
  if (!v12)
  {
    goto LABEL_67;
  }

  v47 = 0;
  v158 = (v44 + 56);
  v159 = (v44 + 16);
  v155 = (v45 + 8);
  v156 = (v44 + 8);
  v148 = (v7 + 48);
  v157 = (v7 + 8);
  v149 = v46;
  do
  {
    v8 = v47;
    while (1)
    {
      if ((v161 & 0xC000000000000001) != 0)
      {
        v167 = MEMORY[0x21CE93180](v8, v161);
        v48 = v169;
        v49 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_83;
        }
      }

      else
      {
        v48 = v169;
        if (v8 >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v167 = *(v161 + 8 * v8 + 32);

        v49 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_83;
        }
      }

      v160 = v49;
      v50 = v48[49];
      v51 = v48[41];
      v52 = v48[39];
      v53 = v48[35];
      (*(*v167 + 296))();
      *(swift_task_alloc() + 16) = v50;
      v48[11] = type metadata accessor for DBSuggestion();
      Predicate.init(_:)();
      (*v159)(v53, v51, v52);
      (*v158)(v53, 0, 1, v52);
      v54 = _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, 255, type metadata accessor for DBSuggestion);
      FetchDescriptor.init(predicate:sortBy:)();
      FetchDescriptor.fetchLimit.setter();
      v55 = 0;
      v56 = dispatch thunk of ModelContext.fetch<A>(_:)();
      v57 = v56;
      if (v56 >> 62)
      {
        break;
      }

      v0 = v169;
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

LABEL_39:
      v58 = *(v0 + 392);
      v59 = *(v0 + 376);
      v60 = *(v0 + 328);
      v7 = *(v0 + 304);
      v61 = *(v0 + 312);
      v62 = *(v0 + 288);

      (*v155)(v7, v62);
      (*v156)(v60, v61);
      (*v157)(v58, v59);

      ++v8;
      if (v160 == v171)
      {
        v0 = v169;
        goto LABEL_67;
      }
    }

    v0 = v169;
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_39;
    }

LABEL_45:
    if ((v57 & 0xC000000000000001) == 0)
    {
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v63 = *(v57 + 32);

        goto LABEL_48;
      }

      __break(1u);
LABEL_89:
      swift_once();
LABEL_75:
      v124 = *(v0 + 368);
      v125 = *(v0 + 336);
      v126 = *(v0 + 344);
      v127 = __swift_project_value_buffer(v125, static DBWriter.Log);
      swift_beginAccess();
      (*(v126 + 16))(v124, v127, v125);

      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.info.getter();

      v130 = os_log_type_enabled(v128, v129);
      v131 = *(v0 + 368);
      v132 = *(v0 + 336);
      v133 = *(v0 + 344);
      if (v130)
      {
        v134 = swift_slowAlloc();
        v154 = v8;
        v135 = swift_slowAlloc();
        *v134 = 136446722;
        v172[0] = v135;
        swift_beginAccess();
        v136 = StaticString.description.getter();
        v170 = v132;
        v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v137, v172);

        *(v134 + 4) = v138;
        *(v134 + 12) = 2082;
        *(v134 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000067, 0x800000021657FB10, v172);
        *(v134 + 22) = 2080;
        v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v172);

        *(v134 + 24) = v139;
        _os_log_impl(&dword_21607C000, v128, v129, "%{public}s.%{public}s Rotating new snapshot generation: %s", v134, 0x20u);
        swift_arrayDestroy();
        v140 = v135;
        v8 = v154;
        MEMORY[0x21CE94770](v140, -1, -1);
        MEMORY[0x21CE94770](v134, -1, -1);

        (*(v133 + 8))(v131, v170);
      }

      else
      {

        (*(v133 + 8))(v131, v132);
      }

      v152 = 1;
      v7 = v161;
      goto LABEL_6;
    }

    v63 = MEMORY[0x21CE93180](0, v57);
LABEL_48:
    v64 = *(v0 + 408);
    v65 = *(v0 + 376);
    v144 = *(v0 + 392);
    v146 = *(v0 + 352);
    v66 = *(v0 + 328);
    v163 = *(v0 + 336);
    v67 = *(v0 + 304);
    v68 = *(v0 + 312);
    v69 = *(v0 + 288);

    (*v155)(v67, v69);
    (*v156)(v66, v68);
    v70 = *v157;
    v71 = (*v157)(v144, v65);
    v72 = *(*v63 + 296);
    (v72)(v71);

    v73 = swift_isUniquelyReferenced_nonNull_native();
    v172[0] = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v64, v73);
    v145 = v70;
    v70(v64, v65);
    v11 = v172[0];
    v150(v146, v151, v163);

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v147 = v75;
      v164 = v74;
      v76 = *(v0 + 408);
      v141 = *(v0 + 376);
      v142 = *(v0 + 272);
      v77 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v172[0] = v143;
      *v77 = 136315394;
      v72();
      v78 = UUID.uuidString.getter();
      v80 = v79;
      v145(v76, v141);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v172);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2080;
      (*(*v63 + 344))(v82);
      if ((*v148)(v142, 1, v141) == 1)
      {
        outlined destroy of UTType?(*(v0 + 272), &_s10Foundation4UUIDVSgMd);
        v83 = 0xE300000000000000;
        v84 = 7104878;
      }

      else
      {
        v87 = *(v0 + 376);
        v88 = *(v0 + 272);
        v89 = UUID.uuidString.getter();
        v83 = v90;
        v145(v88, v87);
        v84 = v89;
      }

      v7 = v171;
      v91 = *(v0 + 352);
      v92 = *(v0 + 336);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v83, v172);

      *(v77 + 14) = v93;
      _os_log_impl(&dword_21607C000, v164, v147, "[addSnapshot] reusing suggestion, id=%s, suggestionID=%s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v143, -1, -1);
      MEMORY[0x21CE94770](v77, -1, -1);

      v149(v91, v92);
    }

    else
    {
      v85 = *(v0 + 352);
      v86 = *(v0 + 336);

      v149(v85, v86);
      v7 = v171;
    }

    v47 = v160;
  }

  while (v160 != v7);
LABEL_67:
  v98 = *(v0 + 264);
  v100 = *(v0 + 240);
  v99 = *(v0 + 248);
  v101 = *(v0 + 232);
  v102 = *(v0 + 168);
  v103 = *(v0 + 176);
  v104 = *(v0 + 152);

  outlined init with copy of DateInterval?(v102, v98, &_s10Foundation4UUIDVSgMd);
  v0 = *v104;
  v168 = v104[1];

  static Date.now.getter();
  (*(v100 + 16))(v99, v103, v101);
  v105 = v11[2];
  v171 = v0;
  if (v105)
  {
    v106 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5(v105, 0);
    v107 = specialized Sequence._copySequenceContents(initializing:)(v172, (v106 + 32), v105, v11);
    v12 = v172[1];

    outlined consume of [String : DBAssetData].Iterator._Variant();
    if (v107 != v105)
    {
      __break(1u);
      goto LABEL_87;
    }

    v165 = v106;
  }

  else
  {
    v165 = MEMORY[0x277D84F90];
  }

  v108 = *(v169 + 256);
  v109 = *(v169 + 264);
  v110 = *(v169 + 248);
  v111 = *(v169 + 224);
  v112 = *(*(v169 + 184) + 112);
  v113 = OBJC_IVAR____TtC9MomentsUI9DBManager_blobFolderURL;
  v114 = type metadata accessor for URL();
  v115 = *(v114 - 8);
  (*(v115 + 16))(v111, v112 + v113, v114);
  (*(v115 + 56))(v111, 0, 1, v114);
  type metadata accessor for DBSnapshot();
  swift_allocObject();
  v116 = DBSnapshot.init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(v109, v171, v168, v152, v108, v110, v165, v153, v111, 0);
  v117 = *(v169 + 192);
  **(v169 + 160) = v116;

  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot);
  dispatch thunk of ModelContext.insert<A>(_:)();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMd);
  (*(*(v118 - 8) + 56))(v117, 1, 1, v118);
  type metadata accessor for DefaultHistoryTransaction();
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DefaultHistoryTransaction and conformance DefaultHistoryTransaction, 255, MEMORY[0x277CDD588]);
  HistoryDescriptor.init(predicate:)();
  dispatch thunk of ModelContext.deleteHistory<A>(_:)();
  (*(*(v169 + 208) + 8))(*(v169 + 216), *(v169 + 200));

  v119 = *(v169 + 8);

  return v119();
}