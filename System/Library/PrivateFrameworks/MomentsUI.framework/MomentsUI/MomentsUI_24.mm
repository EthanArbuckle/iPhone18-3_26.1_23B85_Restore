Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferMediaFirstPartyViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TransferMediaFirstPartyViewModel.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferMediaFirstPartyViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferMediaFirstPartyViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferMediaFirstPartyViewModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TransferMediaFirstPartyViewModel.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x80000002165765A0;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x6564496B63617274;
    v4 = 0xEF7265696669746ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C746974627573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TransferMediaFirstPartyViewModel.CodingKeys()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x6564496B63617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974627573;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferMediaFirstPartyViewModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferMediaFirstPartyViewModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferMediaFirstPartyViewModel.CodingKeys(uint64_t a1)
{
  PartyView = lazy protocol witness table accessor for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, PartyView);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferMediaFirstPartyViewModel.CodingKeys(uint64_t a1)
{
  PartyView = lazy protocol witness table accessor for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, PartyView);
}

id TransferMediaFirstPartyViewModel.init(coder:)(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_subtitle);
  *v3 = 0;
  v3[1] = 0;
  v4 = v1 + OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_mediaCategoryRawValue;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (v1 + OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_trackIdentifier);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString);
  *v5 = 0;
  v5[1] = 0;
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v3 = 0;
  v3[1] = 0;

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  v7 = NSCoder.decodeObject<A>(of:forKey:)();
  v8 = v7;
  if (v7)
  {
    v9 = [v7 integerValue];
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  *v4 = v9;
  *(v4 + 8) = v8 == 0;
  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v5 = 0;
  v5[1] = 0;

  v11 = specialized AssetViewModel.init(coder:)(a1);

  return v11;
}

Swift::Void __swiftcall TransferMediaFirstPartyViewModel.encode(with:)(NSCoder with)
{
  v2 = v1;
  AssetViewModel.encode(with:)(with);
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x220))();
  if (v6)
  {
    v7 = MEMORY[0x21CE91FC0](v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x21CE91FC0](0x656C746974627573, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = (*((*v4 & *v2) + 0x238))();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    isa = NSNumber.init(integerLiteral:)(v11).super.super.isa;
    v13 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x80000002165765A0);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v13];
  }

  v14 = (*((*v4 & *v2) + 0x250))(v9);
  if (v15)
  {
    v16 = MEMORY[0x21CE91FC0](v14);
  }

  else
  {
    v16 = 0;
  }

  v17 = MEMORY[0x21CE91FC0](0x6564496B63617274, 0xEF7265696669746ELL);
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];
  swift_unknownObjectRelease();
}

void TransferMediaFirstPartyViewModel.init(from:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_subtitle);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_mediaCategoryRawValue;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_trackIdentifier);
  *v3 = 0;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferMediaFirstPartyViewModel.init(dbObject:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_subtitle);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_mediaCategoryRawValue;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_trackIdentifier);
  *v3 = 0;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TransferMediaFirstPartyViewModel.init(mediaFirstPartyViewModel:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v39 - v7;
  v8 = &v3[OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_subtitle];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_mediaCategoryRawValue];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v3[OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_trackIdentifier];
  *v10 = 0;
  v10[1] = 0;
  v11 = swift_getObjectType();
  v12 = (*(a2 + 16))(v11, a2);
  v14 = v13;
  swift_beginAccess();
  *v8 = v12;
  v8[1] = v14;

  (*(a2 + 32))(v46, v11, a2);
  v15 = LOBYTE(v46[0]) == 4;
  if (LOBYTE(v46[0]) == 4)
  {
    v16 = 0;
  }

  else
  {
    v16 = LOBYTE(v46[0]);
  }

  swift_beginAccess();
  *v9 = v16;
  v9[8] = v15;
  v17 = (*(a2 + 24))(v11, a2);
  v19 = v18;
  swift_beginAccess();
  *v10 = v17;
  v10[1] = v19;

  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v20 = static ScreenSize.zero;
  v21 = (*(a2 + 48))(v11, a2);
  v22 = *((*MEMORY[0x277D85000] & *a1) + 0xD0);
  v23 = a1;
  v40 = v22();
  v25 = v24;

  v26 = v43;
  (*(*(a2 + 8) + 24))(v11);
  v41 = *(v23 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v27 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v28 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v30 = type metadata accessor for DateInterval();
  (*(*(v30 - 8) + 56))(&v3[v29], 1, 1, v30);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v20;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v31 = *&v3[v27];
  *&v3[v27] = v21;
  v32 = v20;
  v33 = v21;

  swift_beginAccess();
  *v28 = v40;
  v28[1] = v25;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v26, &v3[v29]);
  v34 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v41;
  (*(ObjectType + 328))(v45, v34);
  LOBYTE(v29) = v45[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v35 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v35 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v35 + 112) = v29;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v35;
  v36 = type metadata accessor for AssetViewModel();
  v44.receiver = v3;
  v44.super_class = v36;
  v37 = objc_msgSendSuper2(&v44, sel_init);

  outlined destroy of DateInterval?(v26);
  return v37;
}

uint64_t TransferMediaFirstPartyViewModel.__ivar_destroyer()
{
}

id TransferMediaFirstPartyViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferMediaFirstPartyViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized TransferMediaFirstPartyViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferMediaFirstPartyViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for TransferMediaFirstPartyViewModel()
{
  result = type metadata singleton initialization cache for TransferMediaFirstPartyViewModel;
  if (!type metadata singleton initialization cache for TransferMediaFirstPartyViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMediaFirstPartyViewModel.CodingKeys and conformance TransferMediaFirstPartyViewModel.CodingKeys);
  }

  return result;
}

uint64_t URLBasedVideo.token.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__token;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v1 + v3, a1, &_s10Foundation4UUIDVSgMd);
}

uint64_t URLBasedVideo.getVideoURL()(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](URLBasedVideo.getVideoURL(), 0, 0);
}

uint64_t URLBasedVideo.getVideoURL()()
{
  v1 = v0[23];
  v2 = v0[16];
  v3 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__videoURL;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v2 + v3, v1, &_s10Foundation3URLVSgMd);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v6 = v0[19];
    v7 = v0[20];
    v8 = v0[18];
    v9 = v0[16];
    outlined destroy of UTType?(v0[23], &_s10Foundation3URLVSgMd);
    v10 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__token;
    swift_beginAccess();
    outlined init with copy of DateInterval?(v9 + v10, v8, &_s10Foundation4UUIDVSgMd);
    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      v11 = v0[15];
      outlined destroy of UTType?(v0[18], &_s10Foundation4UUIDVSgMd);
      v12 = v2 + v3;
      v13 = v11;
    }

    else
    {
      (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
      if (one-time initialization token for $currentConnection != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v15 = v0[14];
      v16 = v0[20];
      if (v15)
      {
        v17 = v0[17];
        v30 = 1;
        (*(v16 + 56))(v17, 1, 1, v0[19]);
        swift_beginAccess();
        outlined assign with take of AttributedString?(v17, v9 + v10, &_s10Foundation4UUIDVSgMd);
        swift_endAccess();
        v18 = UUID.uuidString.getter();
        v19 = MEMORY[0x21CE91FC0](v18);

        v20 = MEMORY[0x21CE91FC0](0, 0xE000000000000000);
        v21 = [v15 retrieveUrlForToken:v19 type:v20];

        if (v21)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = 0;
        }

        v23 = v0[21];
        v22 = v0[22];
        v24 = v0[19];
        v25 = v0[20];
        v29 = v0[15];

        (*(v25 + 8))(v23, v24);
        (*(v5 + 56))(v22, v30, 1, v4);
        swift_beginAccess();
        outlined assign with take of AttributedString?(v22, v2 + v3, &_s10Foundation3URLVSgMd);
        swift_endAccess();
        v12 = v2 + v3;
        v13 = v29;
      }

      else
      {
        v26 = v0[15];
        (*(v16 + 8))(v0[21], v0[19]);
        v12 = v2 + v3;
        v13 = v26;
      }
    }

    outlined init with copy of DateInterval?(v12, v13, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v14 = v0[15];
    (*(v5 + 32))(v14, v0[23], v4);
    (*(v5 + 56))(v14, 0, 1, v4);
  }

  v27 = v0[1];

  return v27();
}

uint64_t URLBasedVideo.getAssetURL(assetType:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for URL();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](URLBasedVideo.getAssetURL(assetType:), 0, 0);
}

uint64_t URLBasedVideo.getAssetURL(assetType:)()
{
  v1 = v0[17];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__videoURL;
  v0[18] = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__videoURL;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v4 + v5, v1, &_s10Foundation3URLVSgMd);
  v6 = *(v3 + 48);
  LODWORD(v2) = v6(v1, 1, v2);
  v7 = outlined destroy of UTType?(v1, &_s10Foundation3URLVSgMd);
  if (v2 != 1)
  {
LABEL_9:
    outlined init with copy of DateInterval?(v0[9] + v0[18], v0[8], &_s10Foundation3URLVSgMd);

    v20 = v0[1];

    return v20();
  }

  v8 = *(v0[9] + OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__video);
  v9 = v0[16];
  if (!v8)
  {
    (*(v0[11] + 56))(v0[16], 1, 1, v0[10]);
    v11 = v0[16];
    goto LABEL_8;
  }

  v10 = v0[10];
  (*((*MEMORY[0x277D85000] & *v8) + 0xB8))(v7);
  if (v6(v9, 1, v10) == 1)
  {
    v11 = v0[16];
LABEL_8:
    outlined destroy of UTType?(v11, &_s10Foundation3URLVSgMd);
    goto LABEL_9;
  }

  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[11];
  v17 = *(v16 + 32);
  v0[19] = v17;
  v0[20] = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17(v14, v12, v15);
  type metadata accessor for PairedPhotoVideo();
  static PairedPhotoVideo.generateTemporaryPath(video:)(1, v13);
  v18 = v6(v13, 1, v15);
  v19 = v0[15];
  if (v18 == 1)
  {
    (*(v0[11] + 8))(v0[13], v0[10]);
    v11 = v19;
    goto LABEL_8;
  }

  v17(v0[12], v0[15], v0[10]);
  v22 = swift_task_alloc();
  v0[21] = v22;
  *v22 = v0;
  v22[1] = URLBasedVideo.getAssetURL(assetType:);
  v23 = v0[12];
  v24 = v0[13];

  return specialized static Exif.filterVideo(inputURL:outputURL:)(v24, v23);
}

{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = URLBasedVideo.getAssetURL(assetType:);
  }

  else
  {
    v2 = URLBasedVideo.getAssetURL(assetType:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[19];
  v2 = v0[18];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  (*(v5 + 8))(v0[13], v6);
  v1(v3, v4, v6);
  (*(v5 + 56))(v3, 0, 1, v6);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v3, v7 + v2, &_s10Foundation3URLVSgMd);
  swift_endAccess();
  outlined init with copy of DateInterval?(v0[9] + v0[18], v0[8], &_s10Foundation3URLVSgMd);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[22];
  v2 = v0[13];
  v3 = v0[10];
  v4 = *(v0[11] + 8);
  v4(v0[12], v3);
  v4(v2, v3);

  outlined init with copy of DateInterval?(v0[9] + v0[18], v0[8], &_s10Foundation3URLVSgMd);

  v5 = v0[1];

  return v5();
}

MomentsUI::URLBasedVideo::CodingKeys_optional __swiftcall URLBasedVideo.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of URLBasedVideo.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_URLBasedVideo_CodingKeys_token;
  }

  else
  {
    v4.value = MomentsUI_URLBasedVideo_CodingKeys_unknownDefault;
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

MomentsUI::URLBasedVideo::CodingKeys_optional __swiftcall URLBasedVideo.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of URLBasedVideo.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_URLBasedVideo_CodingKeys_token;
  }

  else
  {
    v4.value = MomentsUI_URLBasedVideo_CodingKeys_unknownDefault;
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

uint64_t URLBasedVideo.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0x4C52556F65646976;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance URLBasedVideo.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E656B6F74;
  }

  else
  {
    v3 = 0x4C52556F65646976;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E656B6F74;
  }

  else
  {
    v5 = 0x4C52556F65646976;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URLBasedVideo.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance URLBasedVideo.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URLBasedVideo.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance URLBasedVideo.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of URLBasedVideo.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance URLBasedVideo.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x4C52556F65646976;
  if (*v1)
  {
    v2 = 0x6E656B6F74;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance URLBasedVideo.CodingKeys()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0x4C52556F65646976;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URLBasedVideo.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of URLBasedVideo.CodingKeys.init(rawValue:), v3);

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URLBasedVideo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URLBasedVideo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id URLBasedVideo.__allocating_init(video:filterExif:)(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = objc_allocWithZone(v2);
  v9 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__videoURL;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__token;
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 56);
  v13(&v8[v11], 1, 1, v12);
  *&v8[OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__video] = a1;
  v8[OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__filterExif] = a2;
  v14 = a1;
  UUID.init()();
  v13(v7, 0, 1, v12);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v7, &v8[v11], &_s10Foundation4UUIDVSgMd);
  swift_endAccess();
  v18.receiver = v8;
  v18.super_class = v2;
  v15 = objc_msgSendSuper2(&v18, sel_init);

  return v15;
}

id URLBasedVideo.init(video:filterExif:)(void *a1, char a2)
{
  v3 = specialized URLBasedVideo.init(video:filterExif:)(a1, a2);

  return v3;
}

Swift::Void __swiftcall URLBasedVideo.encode(with:)(NSCoder with)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__token;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v1 + v6, v5, &_s10Foundation4UUIDVSgMd);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = MEMORY[0x21CE91FC0](0x6E656B6F74, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v10];
  swift_unknownObjectRelease();
}

id URLBasedVideo.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized URLBasedVideo.init(coder:)();

  return v4;
}

id URLBasedVideo.init(coder:)(void *a1)
{
  v2 = specialized URLBasedVideo.init(coder:)();

  return v2;
}

id URLBasedVideo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLBasedVideo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLBasedVideo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for URLBasedAsset.getAssetURL(assetType:) in conformance URLBasedVideo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & **v3) + 0xB0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = static Exif.filterImage(imageSource:outputURL:);

  return v11(a1, a2, a3);
}

id specialized URLBasedVideo.init(video:filterExif:)(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__videoURL;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__token;
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 56);
  v12(&v2[v10], 1, 1, v11);
  *&v2[OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__video] = a1;
  v2[OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__filterExif] = a2;
  v13 = a1;
  UUID.init()();
  v12(v7, 0, 1, v11);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v7, &v2[v10], &_s10Foundation4UUIDVSgMd);
  swift_endAccess();
  v14 = type metadata accessor for URLBasedVideo();
  v17.receiver = v2;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, sel_init);
}

id specialized URLBasedVideo.init(coder:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v20 = &v20 - v6;
  v7 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__videoURL;
  v8 = type metadata accessor for URL();
  v9 = 1;
  (*(*(v8 - 8) + 56))(&v0[v7], 1, 1, v8);
  v10 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__token;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(&v0[v10], 1, 1, v11);
  type metadata accessor for NSUUID();
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v14)
  {
    v15 = v14;
    v13(v5, 1, 1, v11);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    v16 = (*(v12 + 48))(v5, 1, v11);
    v17 = v20;
    if (v16 != 1)
    {
      (*(v12 + 32))(v20, v5, v11);
      v9 = 0;
    }
  }

  else
  {
    v17 = v20;
  }

  v13(v17, v9, 1, v11);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v17, &v1[v10], &_s10Foundation4UUIDVSgMd);
  swift_endAccess();
  *&v1[OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__video] = 0;
  v1[OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__filterExif] = 0;
  v18 = type metadata accessor for URLBasedVideo();
  v21.receiver = v1;
  v21.super_class = v18;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t type metadata accessor for URLBasedVideo()
{
  result = type metadata singleton initialization cache for URLBasedVideo;
  if (!type metadata singleton initialization cache for URLBasedVideo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLBasedVideo.CodingKeys and conformance URLBasedVideo.CodingKeys);
  }

  return result;
}

void type metadata completion function for URLBasedVideo()
{
  type metadata accessor for URL?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of URLBasedVideo.getVideoURL()(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return v7(a1);
}

uint64_t dispatch thunk of URLBasedVideo.getAssetURL(assetType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xB0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v11(a1, a2, a3);
}

uint64_t TransferWorkoutViewModel.activityType.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activityType;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void *TransferWorkoutViewModel.activeEnergyBurned.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurned;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferWorkoutViewModel.activeEnergyBurned.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurned;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TransferWorkoutViewModel.distance.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distance;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferWorkoutViewModel.distance.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distance;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TransferWorkoutViewModel.duration.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_duration;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void *TransferWorkoutViewModel.averageHeartRate.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferWorkoutViewModel.averageHeartRate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TransferWorkoutViewModel.isIndoors.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_isIndoors;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TransferWorkoutViewModel.isIndoors.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_isIndoors;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL TransferWorkoutViewModel.isSingleWorkout.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x260))();
  if (v1)
  {
  }

  return v1 == 0;
}

BOOL TransferWorkoutViewModel.isRouteBasedWorkout.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x350))();
  if (v1)
  {
  }

  return v1 != 0;
}

unint64_t TransferWorkoutViewModel.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v1 = 0x7974697669746361;
    if (a1 != 3)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000021;
    }

    v3 = 0xD000000000000011;
    if (a1)
    {
      v3 = 0xD000000000000012;
    }

    v4 = a1 <= 1u;
  }

  else
  {
    v1 = 0x6E6F697461727564;
    v2 = 0x726F6F646E497369;
    if (a1 != 9)
    {
      v2 = 0x636F4C6574756F72;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    if (a1 == 6)
    {
      v3 = 0x65636E6174736964;
    }

    if (a1 == 5)
    {
      v3 = 0xD00000000000001FLL;
    }

    v4 = a1 <= 7u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TransferWorkoutViewModel.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = TransferWorkoutViewModel.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == TransferWorkoutViewModel.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferWorkoutViewModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TransferWorkoutViewModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TransferWorkoutViewModel.CodingKeys()
{
  TransferWorkoutViewModel.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferWorkoutViewModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TransferWorkoutViewModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferWorkoutViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferWorkoutViewModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TransferWorkoutViewModel.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = TransferWorkoutViewModel.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferWorkoutViewModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferWorkoutViewModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferWorkoutViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferWorkoutViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void TransferWorkoutViewModel.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_workoutViewModels;
  *(v1 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_workoutViewModels) = 0;
  v5 = v1 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activityType;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurned;
  *(v1 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurned) = 0;
  v7 = (v1 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurnedLocalizedString);
  *v7 = 0;
  v7[1] = 0;
  v32 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distance;
  *(v1 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distance) = 0;
  v8 = (v1 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distanceLocalizedString);
  *v8 = 0;
  v8[1] = 0;
  v33 = v8;
  v9 = v1 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_duration;
  *v9 = 0;
  v34 = v9;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRate;
  *(v1 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRate) = 0;
  v11 = (v1 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRateLocalizedString);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_isIndoors;
  *(v1 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_isIndoors) = 2;
  v35 = v12;
  v36 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_routeLocations;
  *(v1 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_routeLocations) = 0;
  type metadata accessor for TransferWorkoutViewModel();
  v13 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  swift_beginAccess();
  *(v2 + v4) = v13;

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKQuantity);
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v15 = *(v2 + v6);
  *(v2 + v6) = v14;

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString);
  v43 = 0;
  v44 = 0;
  v16 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v7 = 0;
  v7[1] = 0;

  v17 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v18 = *(v2 + v10);
  *(v2 + v10) = v17;

  v41 = 0;
  v42 = 0;
  v19 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v11 = 0;
  v11[1] = 0;

  v20 = MEMORY[0x21CE91FC0](0x7974697669746361, 0xEC00000065707954);
  v21 = [a1 decodeIntegerForKey_];

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *v5 = v21;
    *(v5 + 8) = 0;
    v22 = NSCoder.decodeObject<A>(of:forKey:)();
    swift_beginAccess();
    v23 = *(v2 + v32);
    *(v2 + v32) = v22;

    v39 = 0;
    v40 = 0;
    v24 = NSCoder.decodeObject<A>(of:forKey:)();
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v25 = 1;
    swift_beginAccess();
    *v33 = 0;
    v33[1] = 0;

    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v26 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v26)
    {
      v37 = 0;
      v38 = 1;
      v27 = v26;
      MEMORY[0x21CE92530](v26, &v37);

      v28 = v37;
      v25 = v38;
    }

    else
    {
      v28 = 0;
    }

    swift_beginAccess();
    *v34 = v28;
    *(v34 + 8) = v25;
    v29 = MEMORY[0x21CE91FC0](0x726F6F646E497369, 0xE900000000000073);
    v30 = [a1 decodeBoolForKey_];

    swift_beginAccess();
    *(v2 + v35) = v30;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CLLocation);
    v31 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
    swift_beginAccess();
    *(v2 + v36) = v31;

    specialized AssetViewModel.init(coder:)(a1);
  }
}

Swift::Void __swiftcall TransferWorkoutViewModel.encode(with:)(NSCoder with)
{
  AssetViewModel.encode(with:)(with);
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x290))();
  v5 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x80000002165765E0);
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = (*((*v3 & *v1) + 0x2A8))();
  if (v7)
  {
    v8 = MEMORY[0x21CE91FC0](v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x8000000216576600);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  (*((*v3 & *v1) + 0x278))();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  v12 = MEMORY[0x21CE91FC0](0x7974697669746361, 0xEC00000065707954);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = (*((*v3 & *v1) + 0x308))();
  v14 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216576630);
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = (*((*v3 & *v1) + 0x320))();
  if (v16)
  {
    v17 = MEMORY[0x21CE91FC0](v15);
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x8000000216576650);
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  v19 = (*((*v3 & *v1) + 0x2C0))();
  v20 = MEMORY[0x21CE91FC0](0x65636E6174736964, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];

  v21 = (*((*v3 & *v1) + 0x2D8))();
  if (v22)
  {
    v23 = MEMORY[0x21CE91FC0](v21);
  }

  else
  {
    v23 = 0;
  }

  v24 = MEMORY[0x21CE91FC0](0xD000000000000017, 0x8000000216576680);
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();

  (*((*v3 & *v1) + 0x2F0))();
  if (v25)
  {
    isa = 0;
  }

  else
  {
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  }

  v27 = MEMORY[0x21CE91FC0](0x6E6F697461727564, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v27];
  swift_unknownObjectRelease();

  if ((*((*v3 & *v1) + 0x260))())
  {
    type metadata accessor for TransferWorkoutViewModel();
    v28.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v28.super.isa = 0;
  }

  v29 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x80000002165765C0);
  [(objc_class *)with.super.isa encodeObject:v28.super.isa forKey:v29];
  swift_unknownObjectRelease();

  if ((*((*v3 & *v1) + 0x338))() == 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v31 = MEMORY[0x21CE91FC0](0x726F6F646E497369, 0xE900000000000073);
  [(objc_class *)with.super.isa encodeObject:v30 forKey:v31];
  swift_unknownObjectRelease();

  if ((*((*v3 & *v1) + 0x350))())
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CLLocation);
    v32.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v32.super.isa = 0;
  }

  v33 = MEMORY[0x21CE91FC0](0x636F4C6574756F72, 0xEE00736E6F697461);
  [(objc_class *)with.super.isa encodeObject:v32.super.isa forKey:v33];
  swift_unknownObjectRelease();
}

void TransferWorkoutViewModel.init(dbObject:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_workoutViewModels) = 0;
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activityType;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurned) = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurnedLocalizedString);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distance) = 0;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distanceLocalizedString);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_duration;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRate) = 0;
  v5 = (v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRateLocalizedString);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_isIndoors) = 2;
  *(v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_routeLocations) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferWorkoutViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_workoutViewModels) = 0;
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activityType;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurned) = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurnedLocalizedString);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distance) = 0;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distanceLocalizedString);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_duration;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRate) = 0;
  v5 = (v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRateLocalizedString);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_isIndoors) = 2;
  *(v0 + OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_routeLocations) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TransferWorkoutViewModel.__allocating_init(subWorkoutViewModel:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized TransferWorkoutViewModel.init(subWorkoutViewModel:)(a1, a2);

  return v6;
}

id TransferWorkoutViewModel.init(subWorkoutViewModel:)(void *a1, uint64_t a2)
{
  v3 = specialized TransferWorkoutViewModel.init(subWorkoutViewModel:)(a1, a2);

  return v3;
}

id TransferWorkoutViewModel.init(workoutViewModel:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v71 - v7;
  v75 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_workoutViewModels;
  *&v2[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_workoutViewModels] = 0;
  v8 = &v2[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activityType];
  *v8 = 0;
  v80 = v8;
  v8[8] = 1;
  v76 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurned;
  *&v2[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurned] = 0;
  v9 = &v2[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurnedLocalizedString];
  *v9 = 0;
  v9[1] = 0;
  v77 = v9;
  v81 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distance;
  *&v2[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distance] = 0;
  v10 = &v2[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distanceLocalizedString];
  *v10 = 0;
  v10[1] = 0;
  v82 = v10;
  v11 = &v2[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_duration];
  *v11 = 0;
  v83 = v11;
  v11[8] = 1;
  v78 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRate;
  *&v2[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRate] = 0;
  v12 = &v2[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRateLocalizedString];
  *v12 = 0;
  v12[1] = 0;
  v79 = v12;
  v2[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_isIndoors] = 2;
  v84 = OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_routeLocations;
  *&v2[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_routeLocations] = 0;
  v13 = swift_getObjectType();
  v14 = (*(a2 + 16))(v13, a2);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v16 = v14;
    v74 = a2;
    v89 = MEMORY[0x277D84F90];
    a2 = *(v14 + 16);
    if (a2)
    {
      v72 = v13;
      v73 = a1;
      v17 = 0;
      a1 = (v14 + 40);
      while (v17 < *(v16 + 16))
      {
        v19 = *(a1 - 1);
        v18 = *a1;
        objc_allocWithZone(type metadata accessor for TransferWorkoutViewModel());
        v13 = v19;
        specialized TransferWorkoutViewModel.init(subWorkoutViewModel:)(v13, v18);

        MEMORY[0x21CE92260]();
        if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v17;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a1 += 2;
        if (a2 == v17)
        {
          v15 = v89;
          v13 = v72;
          a1 = v73;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:

    a2 = v74;
  }

  else
  {
    v15 = 0;
  }

  v20 = v75;
  swift_beginAccess();
  *&v3[v20] = v15;

  v21 = (*(a2 + 32))(v13, a2);
  v22 = v76;
  swift_beginAccess();
  v23 = *&v3[v22];
  *&v3[v22] = v21;

  v24 = (*(a2 + 40))(v13, a2);
  v26 = v25;
  v27 = v77;
  swift_beginAccess();
  *v27 = v24;
  v27[1] = v26;

  v28 = (*(a2 + 64))(v13, a2);
  v29 = v78;
  swift_beginAccess();
  v30 = *&v3[v29];
  *&v3[v29] = v28;

  v31 = (*(a2 + 72))(v13, a2);
  v33 = v32;
  v34 = v79;
  swift_beginAccess();
  *v34 = v31;
  v34[1] = v33;

  v35 = (*(a2 + 24))(v13, a2);
  LOBYTE(v33) = v36;
  v37 = v80;
  swift_beginAccess();
  *v37 = v35;
  v37[8] = v33 & 1;
  v38 = (*(a2 + 48))(v13, a2);
  v39 = v81;
  swift_beginAccess();
  v40 = *&v3[v39];
  *&v3[v39] = v38;

  v41 = (*(a2 + 56))(v13, a2);
  v43 = v42;
  v44 = v82;
  swift_beginAccess();
  *v44 = v41;
  v44[1] = v43;

  v45 = (*(a2 + 80))(v13, a2);
  LOBYTE(v43) = v46;
  v47 = v83;
  swift_beginAccess();
  *v47 = v45;
  *(v47 + 8) = v43 & 1;
  v48 = (*(a2 + 96))(v13, a2);
  v49 = v84;
  swift_beginAccess();
  *&v3[v49] = v48;

  if (one-time initialization token for zero != -1)
  {
LABEL_14:
    swift_once();
  }

  v50 = static ScreenSize.zero;
  v51 = (*(a2 + 120))(v13, a2);
  v52 = a1;
  v53 = *((*MEMORY[0x277D85000] & *a1) + 0xD0);
  v54 = v52;
  v55 = v53();
  v82 = v56;
  v83 = v55;

  (*(*(a2 + 8) + 24))(v13);
  LODWORD(v84) = *(v54 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v57 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v58 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v58 = 0;
  v58[1] = 0;
  v59 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v60 = type metadata accessor for DateInterval();
  (*(*(v60 - 8) + 56))(&v3[v59], 1, 1, v60);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v50;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v61 = *&v3[v57];
  *&v3[v57] = v51;
  v62 = v50;
  v63 = v51;

  swift_beginAccess();
  v64 = v82;
  *v58 = v83;
  v58[1] = v64;

  swift_beginAccess();
  v65 = v86;
  outlined assign with copy of DateInterval?(v86, &v3[v59]);
  v66 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v84;
  (*(ObjectType + 328))(v88, v66);
  LOBYTE(v59) = v88[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v67 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v67 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v67 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v67 + 112) = v59;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v67;
  v68 = type metadata accessor for AssetViewModel();
  v87.receiver = v3;
  v87.super_class = v68;
  v69 = objc_msgSendSuper2(&v87, sel_init);

  outlined destroy of DateInterval?(v65);
  return v69;
}

uint64_t TransferWorkoutViewModel.__ivar_destroyer()
{
}

id TransferWorkoutViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferWorkoutViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized TransferWorkoutViewModel.init(subWorkoutViewModel:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  *&v3[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_workoutViewModels] = 0;
  v9 = &v3[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activityType];
  *v9 = 0;
  v9[8] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurned] = 0;
  v10 = &v3[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_activeEnergyBurnedLocalizedString];
  *v10 = 0;
  v10[1] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distance] = 0;
  v11 = &v3[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_distanceLocalizedString];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v3[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_duration];
  *v12 = 0;
  v12[8] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRate] = 0;
  v13 = &v3[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_averageHeartRateLocalizedString];
  *v13 = 0;
  v13[1] = 0;
  v3[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_isIndoors] = 2;
  *&v3[OBJC_IVAR____TtC9MomentsUI24TransferWorkoutViewModel_routeLocations] = 0;
  v14 = swift_getObjectType();
  v15 = (*(a2 + 24))(v14, a2);
  v17 = v16;
  swift_beginAccess();
  *v9 = v15;
  v9[8] = v17 & 1;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v18 = static ScreenSize.zero;
  v19 = *((*MEMORY[0x277D85000] & *a1) + 0xD0);
  v20 = a1;
  v21 = v19();
  v23 = v22;

  (*(*(a2 + 8) + 24))(v14);
  v24 = *(v20 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v25 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v26 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v26 = 0;
  v26[1] = 0;
  v27 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v28 = type metadata accessor for DateInterval();
  (*(*(v28 - 8) + 56))(&v3[v27], 1, 1, v28);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v18;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v29 = *&v3[v25];
  *&v3[v25] = 0;
  v30 = v18;

  swift_beginAccess();
  *v26 = v21;
  v26[1] = v23;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v8, &v3[v27]);
  v31 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v24;
  (*(ObjectType + 328))(v39, v31);
  LOBYTE(v29) = v39[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v32 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v32 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v32 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v32 + 112) = v29;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v32;
  v33 = type metadata accessor for AssetViewModel();
  v38.receiver = v3;
  v38.super_class = v33;
  v34 = objc_msgSendSuper2(&v38, sel_init);
  outlined destroy of DateInterval?(v8);
  return v34;
}

unint64_t specialized TransferWorkoutViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferWorkoutViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for TransferWorkoutViewModel()
{
  result = type metadata singleton initialization cache for TransferWorkoutViewModel;
  if (!type metadata singleton initialization cache for TransferWorkoutViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferWorkoutViewModel.CodingKeys and conformance TransferWorkoutViewModel.CodingKeys);
  }

  return result;
}

uint64_t ScreenRect.__allocating_init(rect:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = a1;
  v10 = a2;
  Width = CGRectGetWidth(*&a1);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  v14.n128_f64[0] = CGRectGetHeight(v19);
  v12 = *(v4 + 112);
  v13.n128_f32[0] = v14.n128_f64[0];
  v14.n128_f32[0] = v9;
  v15.n128_f32[0] = v10;
  v16.n128_f32[0] = Width;

  return v12(v14, v15, v16, v13);
}

id ScreenRect.__allocating_init(originX:originY:width:height:)(float a1, float a2, float a3, float a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = a1;
  *&v9[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = a2;
  *&v9[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = a3;
  *&v9[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id ScreenRect.init(originX:originY:width:height:)(float a1, float a2, float a3, float a4)
{
  *&v4[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = a1;
  *&v4[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = a2;
  *&v4[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = a3;
  *&v4[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for ScreenRect();
  return objc_msgSendSuper2(&v6, sel_init);
}

MomentsUI::ScreenRect::CodingKeys_optional __swiftcall ScreenRect.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ScreenRect.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t ScreenRect.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x6874646977;
  v2 = 0x586E696769726FLL;
  if (a1 != 2)
  {
    v2 = 0x596E696769726FLL;
  }

  if (a1)
  {
    v1 = 0x746867696568;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ScreenRect.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6874646977;
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = 0x586E696769726FLL;
  if (v3 != 2)
  {
    v5 = 0x596E696769726FLL;
  }

  v6 = 0x746867696568;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v6 = 0x6874646977;
  }

  if (*a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v3 <= 1)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  v9 = 0xE500000000000000;
  v10 = 0x586E696769726FLL;
  if (*a2 != 2)
  {
    v10 = 0x596E696769726FLL;
  }

  if (*a2)
  {
    v2 = 0x746867696568;
    v9 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v10;
  }

  if (*a2 <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ScreenRect.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ScreenRect.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScreenRect.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ScreenRect.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ScreenRect.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ScreenRect.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6874646977;
  v4 = 0x586E696769726FLL;
  if (*v1 != 2)
  {
    v4 = 0x596E696769726FLL;
  }

  if (*v1)
  {
    v3 = 0x746867696568;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ScreenRect.CodingKeys()
{
  v1 = 0x6874646977;
  v2 = 0x586E696769726FLL;
  if (*v0 != 2)
  {
    v2 = 0x596E696769726FLL;
  }

  if (*v0)
  {
    v1 = 0x746867696568;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ScreenRect.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ScreenRect.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScreenRect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScreenRect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall ScreenRect.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC9MomentsUI10ScreenRect_width);
  v4 = MEMORY[0x21CE91FC0](0x6874646977, 0xE500000000000000);
  LODWORD(v5) = v3;
  [(objc_class *)with.super.isa encodeFloat:v4 forKey:v5];

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI10ScreenRect_height);
  v7 = MEMORY[0x21CE91FC0](0x746867696568, 0xE600000000000000);
  LODWORD(v8) = v6;
  [(objc_class *)with.super.isa encodeFloat:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX);
  v10 = MEMORY[0x21CE91FC0](0x586E696769726FLL, 0xE700000000000000);
  LODWORD(v11) = v9;
  [(objc_class *)with.super.isa encodeFloat:v10 forKey:v11];

  v12 = *(v1 + OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY);
  v14 = MEMORY[0x21CE91FC0](0x596E696769726FLL, 0xE700000000000000);
  LODWORD(v13) = v12;
  [(objc_class *)with.super.isa encodeFloat:v14 forKey:v13];
}

id ScreenRect.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSNumber();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4 && (v5 = v4, [v4 floatValue], v7 = v6, v5, (v8 = NSCoder.decodeObject<A>(of:forKey:)()) != 0) && (v9 = v8, objc_msgSend(v8, sel_floatValue), v11 = v10, v9, (v12 = NSCoder.decodeObject<A>(of:forKey:)()) != 0) && (v13 = v12, objc_msgSend(v12, sel_floatValue), v15 = v14, v13, (v16 = NSCoder.decodeObject<A>(of:forKey:)()) != 0))
  {
    v17 = v16;
    [v16 floatValue];
    v19 = v18;

    *&v2[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v15;
    *&v2[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v19;
    *&v2[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v7;
    *&v2[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = v11;
    v22.receiver = v2;
    v22.super_class = type metadata accessor for ScreenRect();
    v20 = objc_msgSendSuper2(&v22, sel_init);

    return v20;
  }

  else
  {

    type metadata accessor for ScreenRect();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id ScreenRect.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenRect.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenRect();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized ScreenRect.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ScreenRect.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenRect.CodingKeys and conformance ScreenRect.CodingKeys);
  }

  return result;
}

uint64_t MutableMediaFirstPartyViewModel.build()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v106 = &v82 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v82 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v82 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v105 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v107 = &v82 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v82 - v19;
  v21 = type metadata accessor for DateInterval();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v27 = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v27)
  {
    return 0;
  }

  v103 = v6;
  v104 = v11;
  if (!*(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles))
  {
    return 0;
  }

  v97 = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  v102 = &v82 - v25;
  v28 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v29 = v26;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v1 + v28, v20);
  v30 = *(v29 + 48);
  v99 = v29 + 48;
  v98 = v30;
  if (v30(v20, 1, v21) == 1)
  {
    outlined destroy of DateInterval?(v20);
    return 0;
  }

  v100 = v24;
  v32 = *(v29 + 32);
  v33 = v102;
  v84 = v29 + 32;
  v83 = v32;
  v32(v102, v20, v21);
  v95 = v3;
  v34 = *(v3 + 16);
  v101 = v13;
  v86 = v34;
  v34(v13, (v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid), v2);
  v35 = (v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v36 = v35[1];
  v88 = *v35;
  v85 = v36;
  v37 = v107;
  (*(v29 + 16))(v107, v33, v21);
  v94 = v29;
  (*(v29 + 56))(v37, 0, 1, v21);
  v38 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v39 = *(v1 + v38);
  v40 = (v1 + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_subtitle);
  swift_beginAccess();
  v41 = v40[1];
  v93 = *v40;
  v42 = (v1 + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_trackIdentifier);
  swift_beginAccess();
  v43 = *v42;
  v44 = v42[1];
  v91 = v43;
  v45 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory;
  swift_beginAccess();
  v89 = *(v1 + v45);
  v96 = v2;
  v92 = v44;
  v90 = v39;
  if (!v39)
  {

    v50 = v27;
    v48 = v85;

LABEL_12:
    v87 = 0;
    goto LABEL_13;
  }

  v46 = v39;
  v47 = v27;
  v48 = v85;

  v49 = Image.uiImage.getter();

  v2 = v96;
  if (!v49)
  {
    goto LABEL_12;
  }

  if (*(v1 + v45) == 4 || !v35[1])
  {
    goto LABEL_12;
  }

  v87 = 1;
LABEL_13:
  v51 = v104;
  UUID.init()();
  v52 = v51;
  v53 = v86;
  v86(v106, v52, v2);
  v53(v103, v101, v2);
  v54 = v97;
  v55 = v97[2];
  if (v55)
  {
    v56 = v41;
    v108 = MEMORY[0x277D84F90];
    v57 = v27;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
    v58 = v108;
    v59 = (v54 + 4);
    v60 = *(v108 + 16);
    do
    {
      v62 = *v59++;
      v61 = v62;
      v108 = v58;
      v63 = *(v58 + 24);
      if (v60 >= v63 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v60 + 1, 1);
        v58 = v108;
      }

      *(v58 + 16) = v60 + 1;
      *(v58 + v60++ + 32) = v61;
      v55 = (v55 - 1);
    }

    while (v55);
    v41 = v56;
  }

  else
  {
    v64 = v27;
    v58 = MEMORY[0x277D84F90];
  }

  v65 = v88;
  if (!v48)
  {
    v65 = 0;
  }

  v97 = v65;
  v66 = 0xE000000000000000;
  if (v48)
  {
    v66 = v48;
  }

  v88 = v66;
  v67 = v105;
  outlined init with copy of DateInterval?(v107, v105);
  v68 = v98;
  if (v98(v67, 1, v21) == 1)
  {
    DateInterval.init()();
    v69 = v68(v67, 1, v21);
    v70 = v93;
    if (v69 != 1)
    {
      outlined destroy of DateInterval?(v67);
    }
  }

  else
  {
    v83(v100, v67, v21);
    v70 = v93;
  }

  v71 = v90;
  if (v90)
  {
    v72 = v90;
    v73 = specialized static DBAssetModel.baseImage2DB(_:)(v71);
  }

  else
  {
    v73 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v72 = 0;
  }

  if (v41)
  {
    v74 = v70;
  }

  else
  {
    v74 = 0;
  }

  if (v41)
  {
    v75 = v41;
  }

  else
  {
    v75 = 0xE000000000000000;
  }

  if (v92)
  {
    v76 = v91;
  }

  else
  {
    v76 = 0;
  }

  if (v92)
  {
    v77 = v92;
  }

  else
  {
    v77 = 0xE000000000000000;
  }

  if (v89 == 4)
  {
    v78 = 0;
  }

  else
  {
    v78 = v89;
  }

  LOBYTE(v108) = v87;
  type metadata accessor for DBMediaFirstPartyModel();
  swift_allocObject();
  v79 = specialized DBMediaFirstPartyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subtitle:trackIdentifier:mediaCategoryRawValue:renderState:)(v106, v103, v27, v58, v97, v88, v100, v73, v74, v75, v76, v77, v78, 0, &v108);

  v80 = *(v95 + 8);
  v81 = v96;
  v80(v104, v96);
  outlined destroy of DateInterval?(v107);
  v80(v101, v81);
  (*(v94 + 8))(v102, v21);
  return v79;
}

Swift::Void __swiftcall DefaultsManager.setupTrial()()
{
  v1 = v0;
  v2 = [objc_opt_self() clientWithIdentifier_];
  v3 = (*(*v0 + 13))(v2);
  v4 = (*(*v0 + 12))(v3);
  if (v4)
  {
    v5 = v4;
    v6 = 0xED00004C41495254;
    v7 = 0x5F53544E454D4F4DLL;
    [v4 refresh];
    v8 = MEMORY[0x21CE91FC0](0x5F53544E454D4F4DLL, 0xED00004C41495254);
    v9 = [v5 experimentIdentifiersWithNamespaceName_];

    if (one-time initialization token for configuration != -1)
    {
LABEL_33:
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static CommonLogger.configuration);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    v45 = v11;
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v50 = v15;
      *v14 = 136315138;
      v16 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24TRIExperimentIdentifiersCSgMd);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v50);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_21607C000, v12, v13, "[setupTrial] experimentIds: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x21CE94770](v15, -1, -1);
      MEMORY[0x21CE94770](v14, -1, -1);
    }

    v20 = MEMORY[0x21CE91FC0](v7, v6);
    v47 = v5;
    v21 = [v5 factorLevelsWithNamespaceName_];

    type metadata accessor for TRIFactorLevel();
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = (v22 & 0xFFFFFFFFFFFFFF8);
    if (v22 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      v46 = v1;
      if (v6)
      {
LABEL_7:
        v7 = 0;
        oslog = MEMORY[0x277D84F90];
        v1 = &selRef_requestAuthorizationWithOptions_completionHandler_;
        do
        {
          v9 = v7;
          while (1)
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x21CE93180](v9, v22);
            }

            else
            {
              if (v9 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_32;
              }

              v23 = *(v22 + 8 * v9 + 32);
            }

            v24 = v23;
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v25 = [v23 factor];
            if (!v25)
            {
              __break(1u);
              return;
            }

            v26 = v25;
            v27 = [v25 name];

            if (v27)
            {
              break;
            }

            ++v9;
            if (v7 == v6)
            {
              goto LABEL_36;
            }
          }

          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v29;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            oslog = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(oslog + 2) + 1, 1, oslog);
          }

          v31 = *(oslog + 2);
          v30 = *(oslog + 3);
          if (v31 >= v30 >> 1)
          {
            oslog = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, oslog);
          }

          *(oslog + 2) = v31 + 1;
          v32 = &oslog[16 * v31];
          *(v32 + 4) = v28;
          *(v32 + 5) = v44;
        }

        while (v7 != v6);
        goto LABEL_36;
      }
    }

    else
    {
      v6 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v46 = v1;
      if (v6)
      {
        goto LABEL_7;
      }
    }

    oslog = MEMORY[0x277D84F90];
LABEL_36:

    (*(*v46 + 16))(oslog);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v50 = v39;
      *v38 = 136315138;
      (*(*v46 + 15))();
      v40 = MEMORY[0x21CE922B0]();
      v42 = v41;

      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v50);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_21607C000, v36, v37, "[setupTrial] trialFactorNames: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x21CE94770](v39, -1, -1);
      MEMORY[0x21CE94770](v38, -1, -1);
    }

    return;
  }

  if (one-time initialization token for configuration != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static CommonLogger.configuration);
  osloga = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(osloga, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_21607C000, osloga, v34, "[setupTrial] could not setup Trial", v35, 2u);
    MEMORY[0x21CE94770](v35, -1, -1);
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized static DefaultsManager.getTrialStringValue(for:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static DefaultsManager.shared;
  v5 = (*(*static DefaultsManager.shared + 120))();
  v16[0] = a1;
  v16[1] = a2;
  MEMORY[0x28223BE20](v5);
  v15[2] = v16;
  v6 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v15, v5);

  if (v6)
  {
    result = (*(*v4 + 96))(v7);
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = MEMORY[0x21CE91FC0](a1, a2);
    v11 = MEMORY[0x21CE91FC0](0x5F53544E454D4F4DLL, 0xED00004C41495254);
    v12 = [v9 levelForFactor:v10 withNamespaceName:v11];

    if (v12)
    {
      v13 = [v12 stringValue];

      if (v13)
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v14;
      }
    }
  }

  return 0;
}

unint64_t type metadata accessor for TRIFactorLevel()
{
  result = lazy cache variable for type metadata for TRIFactorLevel;
  if (!lazy cache variable for type metadata for TRIFactorLevel)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TRIFactorLevel);
  }

  return result;
}

uint64_t specialized static DefaultsManager.getTrialIntValue(for:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static DefaultsManager.shared;
  v5 = (*(*static DefaultsManager.shared + 120))();
  v16[0] = a1;
  v16[1] = a2;
  MEMORY[0x28223BE20](v5);
  v15[2] = v16;
  v6 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v15, v5);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  result = (*(*v4 + 96))(v7);
  if (result)
  {
    v9 = result;
    v10 = MEMORY[0x21CE91FC0](a1, a2);
    v11 = MEMORY[0x21CE91FC0](0x5F53544E454D4F4DLL, 0xED00004C41495254);
    v12 = [v9 levelForFactor:v10 withNamespaceName:v11];

    if (v12)
    {
      if ([v12 levelOneOfCase] == 13)
      {
        v14 = v9;
        v13 = [v12 longValue];
        v9 = v12;
        v12 = v14;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
      v12 = v9;
    }

    return v13;
  }

  return result;
}

void *specialized static DefaultsManager.getTrialDoubleValue(for:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static DefaultsManager.shared;
  v5 = (*(*static DefaultsManager.shared + 120))();
  v19[0] = a1;
  v19[1] = a2;
  MEMORY[0x28223BE20](v5);
  v18[2] = v19;
  v6 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v18, v5);

  if (v6)
  {
    *&result = COERCE_DOUBLE((*(*v4 + 96))(v7));
    if (*&result == 0.0)
    {
      return result;
    }

    v9 = result;
    v10 = MEMORY[0x21CE91FC0](a1, a2);
    v11 = MEMORY[0x21CE91FC0](0x5F53544E454D4F4DLL, 0xED00004C41495254);
    v12 = [v9 levelForFactor:v10 withNamespaceName:v11];

    if (v12)
    {
      v13 = [v12 levelOneOfCase];
      if (v13 == 14)
      {
        [v12 floatValue];
        v17 = v16;

        *&result = v17;
        return result;
      }

      if (v13 == 15)
      {
        [v12 doubleValue];
        v15 = v14;

        return v15;
      }
    }

    else
    {
    }
  }

  *&result = 0.0;
  return result;
}

uint64_t specialized static DefaultsManager.getTrialBoolValue(for:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static DefaultsManager.shared;
  v5 = (*(*static DefaultsManager.shared + 120))();
  v18[0] = a1;
  v18[1] = a2;
  MEMORY[0x28223BE20](v5);
  v17[2] = v18;
  v6 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v17, v5);

  if (v6)
  {
    v8 = (*(*v4 + 96))(v7);
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0x21CE91FC0](a1, a2);
      v11 = MEMORY[0x21CE91FC0](0x5F53544E454D4F4DLL, 0xED00004C41495254);
      v12 = [v9 levelForFactor:v10 withNamespaceName:v11];

      if (v12)
      {
        v13 = [v12 levelOneOfCase];
        if (v13 == 10)
        {
          v16 = [v12 BOOLeanValue];

          return v16;
        }

        if (v13 == 13)
        {
          v14 = [v12 longValue];

          return v14 == 0;
        }
      }

      else
      {
      }
    }
  }

  return 2;
}

unint64_t SuggestionSheetViewState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionSheetViewState and conformance SuggestionSheetViewState()
{
  result = lazy protocol witness table cache variable for type SuggestionSheetViewState and conformance SuggestionSheetViewState;
  if (!lazy protocol witness table cache variable for type SuggestionSheetViewState and conformance SuggestionSheetViewState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSheetViewState and conformance SuggestionSheetViewState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionSheetViewState and conformance SuggestionSheetViewState;
  if (!lazy protocol witness table cache variable for type SuggestionSheetViewState and conformance SuggestionSheetViewState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSheetViewState and conformance SuggestionSheetViewState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationScheduleConfiguration and conformance NotificationScheduleConfiguration()
{
  result = lazy protocol witness table cache variable for type NotificationScheduleConfiguration and conformance NotificationScheduleConfiguration;
  if (!lazy protocol witness table cache variable for type NotificationScheduleConfiguration and conformance NotificationScheduleConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationScheduleConfiguration and conformance NotificationScheduleConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NotificationScheduleConfiguration and conformance NotificationScheduleConfiguration;
  if (!lazy protocol witness table cache variable for type NotificationScheduleConfiguration and conformance NotificationScheduleConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationScheduleConfiguration and conformance NotificationScheduleConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationAvailabilityStatus and conformance NotificationAvailabilityStatus()
{
  result = lazy protocol witness table cache variable for type NotificationAvailabilityStatus and conformance NotificationAvailabilityStatus;
  if (!lazy protocol witness table cache variable for type NotificationAvailabilityStatus and conformance NotificationAvailabilityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAvailabilityStatus and conformance NotificationAvailabilityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NotificationAvailabilityStatus and conformance NotificationAvailabilityStatus;
  if (!lazy protocol witness table cache variable for type NotificationAvailabilityStatus and conformance NotificationAvailabilityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAvailabilityStatus and conformance NotificationAvailabilityStatus);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SuggestionSheetViewState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SuggestionSheetViewState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

MomentsUI::Color __swiftcall Color.init(red:green:blue:alpha:)(Swift::Double red, Swift::Double green, Swift::Double blue, Swift::Double alpha)
{
  *v4 = red;
  v4[1] = green;
  v4[2] = blue;
  v4[3] = alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

void __swiftcall Color.init(hex:)(MomentsUI::Color_optional *__return_ptr retstr, Swift::String hex)
{
  object = hex._object;
  countAndFlagsBits = hex._countAndFlagsBits;
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v5 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v6 = MEMORY[0x21CE91FC0](countAndFlagsBits, object);

  v7 = [v5 initWithString_];

  [v7 scanHexLongLong_];
  v8 = LOBYTE(v10[0]) / 255.0;
  v9.i64[0] = 255;
  v9.i64[1] = 255;
  *&retstr->value.red = vdivq_f64(vcvtq_f64_u64(vandq_s8(vshlq_u64(vdupq_n_s64(v10[0]), xmmword_21659E580), v9)), vdupq_n_s64(0x406FE00000000000uLL));
  retstr->value.blue = v8;
  retstr->value.alpha = 1.0;
  retstr->is_nil = 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.CodingKeys()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Color.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.CodingKeys and conformance Color.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.CodingKeys and conformance Color.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Color.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI5ColorV10CodingKeys33_60CEC0EC3A8EC572ED41059FA8A5BE49LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.CodingKeys and conformance Color.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Color.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CE937F0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x21CE937F0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x21CE937F0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x21CE937F0](*&v7);
}

Swift::Int Color.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x21CE937F0](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x21CE937F0](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x21CE937F0](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x21CE937F0](*&v8);
  return Hasher._finalize()();
}

uint64_t Color.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI5ColorV10CodingKeys33_60CEC0EC3A8EC572ED41059FA8A5BE49LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.CodingKeys and conformance Color.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v22 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v21 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v20 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    v19 = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v15;
    a2[3] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x21CE937F0](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x21CE937F0](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x21CE937F0](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x21CE937F0](*&v8);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Color.CodingKeys and conformance Color.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys);
  }

  return result;
}

uint64_t specialized Color.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t DBAsset.shouldSkipRendering.getter()
{
  v1 = MEMORY[0x277D84F90];
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v23 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    while (v4 < *(v2 + 16))
    {
      v1 = *(v2 + 32 + 8 * v4++);
      switch(v1 >> 60)
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
          v1 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      MEMORY[0x21CE92260](v5);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v3 == v4)
      {
        v1 = v23;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_13:

    if (!(v1 >> 62))
    {
      v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
LABEL_33:
        if (one-time initialization token for processing != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, static CommonLogger.processing);

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v23 = v14;
          *v13 = 136315394;
          v15 = UUID.uuidString.getter();
          v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v23);

          *(v13 + 4) = v17;
          *(v13 + 12) = 2080;
          v18 = type metadata accessor for DBAssetModel();
          v19 = MEMORY[0x21CE922D0](v1, v18);
          v21 = v20;

          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v23);

          *(v13 + 14) = v22;
          _os_log_impl(&dword_21607C000, v11, v12, "[DBAsset.isDeeplyTheSameAs] qualifies for lenient freshness, id=%s, representations=%s", v13, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v14, -1, -1);
          MEMORY[0x21CE94770](v13, -1, -1);
        }

        else
        {
        }

        return DBAsset.fullyRendered.getter();
      }

      goto LABEL_15;
    }
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_33;
  }

LABEL_15:
  v7 = 0;
  while ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CE93180](v7, v1);
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_26;
    }

LABEL_20:
    type metadata accessor for DBMapModel();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for DBMediaFirstPartyModel();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for DBWorkoutModel();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_27;
        }
      }
    }

    ++v7;
    if (v8 == v6)
    {
      goto LABEL_33;
    }
  }

  if (v7 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  v8 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
LABEL_27:

  return DBAsset.renderedAndFresh.getter();
}

uint64_t DBAsset.render(suggestionID:qos:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](DBAsset.render(suggestionID:qos:), 0, 0);
}

uint64_t DBAsset.render(suggestionID:qos:)()
{
  v1 = DBAsset.asMutableAsset.getter();
  if (v1 && (v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI5Asset_representations), *(v0 + 48) = v2, v3 = v1, , v3, v2))
  {
    v4 = *(v0 + 40);
    v5 = type metadata accessor for AssetViewModel();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI7DBAssetCSgMd);
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    v8 = *(v0 + 24);
    *(v7 + 16) = v2;
    *(v7 + 24) = vextq_s8(v8, v8, 8uLL);
    *(v7 + 40) = v4;
    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    v9[1] = DBAsset.render(suggestionID:qos:);

    return MEMORY[0x282200600](v0 + 16, v5, v6, 0, 0, &async function pointer to partial apply for closure #1 in DBAsset.render(suggestionID:qos:), v7, v5);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10(0);
  }
}

{

  return MEMORY[0x2822009F8](static PhotosUtilities.phAsset(from:), 0, 0);
}

BOOL DBAsset.isFresh.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  DBAsset.modifiedDate.getter(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of UTType?(v2, &_s10Foundation4DateVSgMd);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v12 = v11;
    v13 = *(v4 + 8);
    v13(v7, v3);
    v14 = specialized static DefaultsManager.Processing.assetRenderFreshnessTolerance.getter();
    v13(v9, v3);
    return v12 < v14;
  }
}

uint64_t DBAsset.isDeeplyTheSameAs(_:)(uint64_t a1)
{
  if (specialized static DBAsset.== infix(_:_:)(v1, a1))
  {
    v2 = DBAsset.dumpAssetData()();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_43:
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v31 = 0;
    while (1)
    {
      if (v5 == v6)
      {
        goto LABEL_16;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CE93180](v6, v3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:

          v13 = DBAsset.dumpAssetData()();
          v14 = v13;
          v4 = v13 & 0xFFFFFFFFFFFFFF8;
          if (v13 >> 62)
          {
            v3 = __CocoaSet.count.getter();
          }

          else
          {
            v3 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v15 = 0;
          v11 = 0;
          while (v3 != v15)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x21CE93180](v15, v14);
              v17 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                goto LABEL_29;
              }
            }

            else
            {
              if (v15 >= *(v4 + 16))
              {
                goto LABEL_42;
              }

              v16 = *(v14 + 8 * v15 + 32);

              v17 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
LABEL_29:
                __break(1u);
                break;
              }
            }

            v6 = (*(*v16 + 288))();
            v19 = v18;

            ++v15;
            if ((v19 & 1) == 0)
            {
              v15 = v17;
              v12 = __OFADD__(v11, v6);
              v11 += v6;
              if (v12)
              {
                goto LABEL_45;
              }
            }
          }

          v6 = v31;
          if (v31 != v11)
          {
            if (one-time initialization token for processing != -1)
            {
              goto LABEL_46;
            }

            goto LABEL_33;
          }

          return 1;
        }
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v7 = *(v3 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_15;
        }
      }

      v9 = (*(*v7 + 288))();
      v11 = v10;

      ++v6;
      if ((v11 & 1) == 0)
      {
        v6 = v8;
        v12 = __OFADD__(v31, v9);
        v31 += v9;
        if (v12)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
LABEL_33:
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static CommonLogger.processing);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21607C000, v22, v23, "[DBAsset.isDeeplyTheSameAs] found differences in DBAssetData", v24, 2u);
      MEMORY[0x21CE94770](v24, -1, -1);
    }

    v25 = vabdd_f64(v6, v11);
    v26 = v25 / v6;
    if (v26 < specialized static DefaultsManager.Processing.assetSizeDifferenceTolerance.getter())
    {
      v27 = v25 / v11;
      if (v27 < specialized static DefaultsManager.Processing.assetSizeDifferenceTolerance.getter())
      {
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 134218496;
          *(v30 + 4) = v26;
          *(v30 + 12) = 2048;
          *(v30 + 14) = v27;
          *(v30 + 22) = 2048;
          *(v30 + 24) = specialized static DefaultsManager.Processing.assetSizeDifferenceTolerance.getter();
          _os_log_impl(&dword_21607C000, v28, v29, "[DBAsset.isDeeplyTheSameAs] within tolerance, lhsDenomDifference=%f, rhsDenomDifference=%f threshold=%f", v30, 0x20u);
          MEMORY[0x21CE94770](v30, -1, -1);
        }

        return 1;
      }
    }
  }

  return 0;
}

uint64_t closure #1 in DBAsset.render(suggestionID:qos:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a3;
  v6[19] = a4;
  v6[16] = a1;
  v6[17] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[24] = v7;
  v8 = *(v7 - 8);
  v6[25] = v8;
  v6[26] = *(v8 + 64);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy9MomentsUI14AssetViewModelC_GMd);
  v6[29] = v9;
  v6[30] = *(v9 - 8);
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in DBAsset.render(suggestionID:qos:), 0, 0);
}

uint64_t closure #1 in DBAsset.render(suggestionID:qos:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(v3 + 144);
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return MEMORY[0x282200308](v5, a2, a3);
  }

  v6 = 0;
  v28 = *(v3 + 144) + 32;
  v31 = v4 & 0xC000000000000001;
  v32 = *(v3 + 200);
  v33 = v5;
  v30 = *(v3 + 208) + 7;
  v29 = **(v3 + 136);
  do
  {
    v39 = v6;
    if (v31)
    {
      v9 = MEMORY[0x21CE93180](v6, *(v3 + 144));
    }

    else
    {
      v9 = *(v28 + 8 * v6);
    }

    v37 = v9;
    v10 = *(v3 + 216);
    v11 = *(v3 + 184);
    v12 = *(v3 + 192);
    v36 = *(v3 + 176);
    v34 = v10;
    v35 = *(v3 + 168);
    v13 = *(v3 + 152);
    v14 = *(v3 + 160);
    v15 = type metadata accessor for TaskPriority();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v11, v13, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    (*(v32 + 16))(v10, v14, v12);
    v17 = (*(v32 + 80) + 40) & ~*(v32 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = v37;
    (*(v32 + 32))(&v18[v17], v34, v12);
    *&v18[(v30 + v17) & 0xFFFFFFFFFFFFFFF8] = v35;
    outlined init with copy of DateInterval?(v11, v36, &_sScPSgMd);
    LODWORD(v11) = (*(v16 + 48))(v36, 1, v15);
    v38 = v37;

    v19 = *(v3 + 176);
    if (v11 == 1)
    {
      outlined destroy of UTType?(*(v3 + 176), &_sScPSgMd);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v16 + 8))(v19, v15);
    }

    if (*(v18 + 2))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();
      v22 = v21;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v23 = swift_allocObject();
    *(v23 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in DBAsset.render(suggestionID:qos:);
    *(v23 + 24) = v18;
    type metadata accessor for AssetViewModel();

    if (v22 | v20)
    {
      v7 = v3 + 16;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      *(v3 + 32) = v20;
      *(v3 + 40) = v22;
    }

    else
    {
      v7 = 0;
    }

    v6 = v39 + 1;
    v8 = *(v3 + 184);
    *(v3 + 48) = 1;
    *(v3 + 56) = v7;
    *(v3 + 64) = v29;
    swift_task_create();

    outlined destroy of UTType?(v8, &_sScPSgMd);
  }

  while (v33 != v39 + 1);
LABEL_19:
  v24 = MEMORY[0x277D84F90];
  *(v3 + 112) = MEMORY[0x277D84F90];
  type metadata accessor for AssetViewModel();
  TaskGroup.makeAsyncIterator()();
  *(v3 + 256) = v24;
  v25 = lazy protocol witness table accessor for type TaskGroup<AssetViewModel>.Iterator and conformance TaskGroup<A>.Iterator();
  v26 = swift_task_alloc();
  *(v3 + 264) = v26;
  *v26 = v3;
  v26[1] = closure #1 in DBAsset.render(suggestionID:qos:);
  a2 = *(v3 + 232);
  v5 = v3 + 120;
  a3 = v25;

  return MEMORY[0x282200308](v5, a2, a3);
}

uint64_t closure #1 in DBAsset.render(suggestionID:qos:)()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 248);
    v6 = v2 + 232;
    v4 = *(v2 + 232);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v7 = closure #1 in DBAsset.render(suggestionID:qos:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v50 = v0;
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = v1;
    MEMORY[0x21CE92260]();
    if (*((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    *(v0 + 256) = *(v0 + 112);
    v3 = lazy protocol witness table accessor for type TaskGroup<AssetViewModel>.Iterator and conformance TaskGroup<A>.Iterator();
    v4 = swift_task_alloc();
    *(v0 + 264) = v4;
    *v4 = v0;
    v4[1] = closure #1 in DBAsset.render(suggestionID:qos:);
    v5 = *(v0 + 232);

    return MEMORY[0x282200308](v0 + 120, v5, v3);
  }

  else
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 224);
    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = *(v0 + 160);
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static CommonLogger.processing);
    v11 = *(v7 + 16);
    v11(v6, v9, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 224);
    v17 = *(v0 + 192);
    v16 = *(v0 + 200);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v46 = v11;
      v19 = swift_slowAlloc();
      v49 = v19;
      *v18 = 136315138;
      v20 = UUID.uuidString.getter();
      v22 = v21;
      v48 = *(v16 + 8);
      v48(v15, v17);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v49);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_21607C000, v12, v13, "[DBSuggestion.render] finished rendering all representations for asset in suggestionID=%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v11 = v46;
      MEMORY[0x21CE94770](v19, -1, -1);
      MEMORY[0x21CE94770](v18, -1, -1);
    }

    else
    {

      v48 = *(v16 + 8);
      v48(v15, v17);
    }

    v47 = *(v0 + 256);
    v24 = *(v0 + 216);
    v25 = *(v0 + 192);
    v26 = *(v0 + 168);
    v27 = (v11)(v24, v26 + OBJC_IVAR____TtC9MomentsUI7DBAsset_universalUUID, v25);
    v28 = (*(*v26 + 112))(v27);
    v45 = v29;
    v30 = type metadata accessor for Asset();
    v31 = objc_allocWithZone(v30);
    v32 = OBJC_IVAR____TtC9MomentsUI5Asset_styleDict;
    *&v31[v32] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v33 = &v31[OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore];
    *v33 = 0;
    v33[8] = 1;
    v11(&v31[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v24, v25);
    *&v31[OBJC_IVAR____TtC9MomentsUI5Asset_representations] = v47;
    swift_beginAccess();
    *v33 = v28;
    v33[8] = v45 & 1;
    *(v0 + 96) = v31;
    *(v0 + 104) = v30;
    v34 = objc_msgSendSuper2((v0 + 96), sel_init);
    v48(v24, v25);
    v35 = *(v34 + OBJC_IVAR____TtC9MomentsUI5Asset_representations);
    if (v35)
    {
      v36 = *(v0 + 216);
      v37 = *(v0 + 192);
      type metadata accessor for DBAsset();
      v11(v36, v34 + OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID, v37);
      v38 = *((*MEMORY[0x277D85000] & *v34) + 0x88);

      v40 = v38(v39);
      v42 = DBAsset.__allocating_init(universalUUID:representations:priorityScore:)(v36, v35, v40, v41 & 1);
    }

    else
    {

      v42 = 0;
    }

    **(v0 + 128) = v42;

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t closure #1 in closure #1 in DBAsset.render(suggestionID:qos:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for UUID();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in DBAsset.render(suggestionID:qos:), 0, 0);
}

uint64_t closure #1 in closure #1 in DBAsset.render(suggestionID:qos:)()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = specialized static DefaultsManager.Processing.assetRenderSingleTimeout.getter();
  v9 = *(v3 + 16);
  v0[11] = v9;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v6, v4);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v0[13] = v11;
  *(v11 + 16) = v7;
  (*(v3 + 32))(v11 + v10, v1, v4);
  *(v11 + ((v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v12 = v7;

  v13 = swift_task_alloc();
  v0[14] = v13;
  *(v13 + 2) = &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in DBAsset.render(suggestionID:qos:);
  *(v13 + 3) = v11;
  v13[4] = v8;
  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = closure #1 in closure #1 in DBAsset.render(suggestionID:qos:);

  return MEMORY[0x282200740](v14);
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in DBAsset.render(suggestionID:qos:);
  }

  else
  {

    v2 = closure #1 in closure #1 in DBAsset.render(suggestionID:qos:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 24);
  **(v0 + 16) = v1;
  v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

{
  v39 = v0;

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static CommonLogger.viewModel);
  v1(v2, v4, v3);
  v7 = v5;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 72);
  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  if (v10)
  {
    v14 = *(v0 + 24);
    v37 = *(v0 + 128);
    v35 = v9;
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v15 = 136315906;
    v16 = [v14 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v38);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    swift_getObjectType();
    v21 = _typeName(_:qualified:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v38);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    (*(v12 + 8))(v11, v13);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v38);

    *(v15 + 24) = v27;
    *(v15 + 32) = 2080;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v38);

    *(v15 + 34) = v30;
    _os_log_impl(&dword_21607C000, v8, v35, "[DBSuggestion.render] timed out rendering %s, type=%s in suggestionID=%s, assetID=%s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v36, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v31 = *(v0 + 24);
  **(v0 + 16) = v31;
  v32 = v31;

  v33 = *(v0 + 8);

  return v33();
}

uint64_t closure #1 in closure #1 in closure #1 in DBAsset.render(suggestionID:qos:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for UUID();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in DBAsset.render(suggestionID:qos:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in DBAsset.render(suggestionID:qos:)()
{
  v39 = v0;
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v6, static CommonLogger.processing);
  v7 = *(v3 + 16);
  v0[10] = v7;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v2);
  v8 = v5;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  if (v11)
  {
    v15 = v0[2];
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v16 = 136315906;
    v17 = [v15 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v10;
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v38);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    swift_getObjectType();
    v22 = _typeName(_:qualified:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v38);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    v25 = UUID.uuidString.getter();
    v27 = v26;
    v28 = *(v13 + 8);
    v28(v12, v14);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v38);

    *(v16 + 24) = v29;
    *(v16 + 32) = 2080;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v38);

    *(v16 + 34) = v32;
    _os_log_impl(&dword_21607C000, v9, v35, "[DBSuggestion.render] started rendering %s, type=%s in suggestionID=%s, assetID=%s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v36, -1, -1);
    MEMORY[0x21CE94770](v16, -1, -1);
  }

  else
  {

    v28 = *(v13 + 8);
    v28(v12, v14);
  }

  v0[12] = v28;
  v37 = (*((*MEMORY[0x277D85000] & *v0[2]) + 0x1C0) + **((*MEMORY[0x277D85000] & *v0[2]) + 0x1C0));
  v33 = swift_task_alloc();
  v0[13] = v33;
  *v33 = v0;
  v33[1] = closure #1 in closure #1 in closure #1 in DBAsset.render(suggestionID:qos:);

  return v37();
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in DBAsset.render(suggestionID:qos:), 0, 0);
}

{
  v32 = v0;
  v1 = *(v0 + 16);
  (*(v0 + 80))(*(v0 + 56), *(v0 + 24), *(v0 + 40));
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  if (v5)
  {
    v30 = v4;
    v9 = *(v0 + 16);
    v28 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v10 = 136315906;
    v11 = [v9 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v31);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    swift_getObjectType();
    v16 = _typeName(_:qualified:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v31);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    v28(v7, v8);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v31);

    *(v10 + 24) = v22;
    *(v10 + 32) = 2080;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v31);

    *(v10 + 34) = v25;
    _os_log_impl(&dword_21607C000, v3, v30, "[DBSuggestion.render] finished rendering %s, type=%s in suggestionID=%s, assetID=%s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v29, -1, -1);
    MEMORY[0x21CE94770](v10, -1, -1);
  }

  else
  {

    v6(v7, v8);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t DBAsset.modifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v28 - v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = *(v7 + 56);
  v37 = a1;
  v33 = v12;
  v34 = v7 + 56;
  v12(a1, 1, 1, v6);
  v13 = MEMORY[0x277D84F90];
  if (*(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v13 = *(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  v36 = v13;
  v14 = *(v13 + 16);
  if (v14)
  {
    v35 = (v7 + 16);
    v15 = (v7 + 48);
    v16 = (v7 + 32);
    v29 = (v7 + 8);

    v17 = 32;
    v18 = v32;
    v30 = (v7 + 48);
    do
    {
      v20 = *(v36 + v17);
      switch(v20 >> 60)
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
          v20 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      (*v35)(v11, v20 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v6);
      outlined init with copy of DateInterval?(v37, v18, &_s10Foundation4DateVSgMd);
      if ((*v15)(v18, 1, v6) == 1)
      {
        v19 = v37;
        outlined destroy of UTType?(v37, &_s10Foundation4DateVSgMd);
        outlined destroy of UTType?(v18, &_s10Foundation4DateVSgMd);
        (*v16)(v19, v11, v6);
        v33(v19, 0, 1, v6);
      }

      else
      {
        v21 = v37;
        v22 = *v16;
        v23 = v31;
        (*v16)(v31, v18, v6);
        Date.timeIntervalSince(_:)();
        v25 = v24;
        v26 = *v29;
        (*v29)(v23, v6);
        if (v25 <= 0.0)
        {
          v26(v11, v6);
        }

        else
        {
          outlined destroy of UTType?(v21, &_s10Foundation4DateVSgMd);
          v22(v21, v11, v6);
          v33(v21, 0, 1, v6);
        }

        v18 = v32;
        v15 = v30;
      }

      v17 += 8;
      --v14;
    }

    while (v14);
  }

  else
  {
  }
}

BOOL DBAsset.renderedAndFresh.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = DBAsset.asMutableAsset.getter();
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC9MomentsUI5Asset_representations);
    v13 = v11;

    if (v12)
    {
      v25 = v8;
      v26 = v10;
      v27 = v0;
      v28 = v5;
      if (v12 >> 62)
      {
LABEL_21:
        v14 = __CocoaSet.count.getter();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = 0;
      v16 = MEMORY[0x277D85000];
      while (v14 != v15)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x21CE93180](v15, v12);
        }

        else
        {
          if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v17 = *(v12 + 8 * v15 + 32);
        }

        v18 = v17;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v19 = (*((*v16 & *v17) + 0x1D8))();

        ++v15;
        if ((v19 & 1) == 0)
        {

          return 0;
        }
      }

      v5 = v28;
      v8 = v25;
      v10 = v26;
    }
  }

  DBAsset.modifiedDate.getter(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of UTType?(v3, &_s10Foundation4DateVSgMd);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v21 = v20;
    v22 = *(v5 + 8);
    v22(v8, v4);
    v23 = specialized static DefaultsManager.Processing.assetRenderFreshnessTolerance.getter();
    v22(v10, v4);
    return v21 < v23;
  }
}

uint64_t partial apply for closure #1 in DBAsset.render(suggestionID:qos:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in DBAsset.render(suggestionID:qos:)(a1, a2, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in closure #1 in DBAsset.render(suggestionID:qos:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in closure #1 in DBAsset.render(suggestionID:qos:)(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR9MomentsUI14AssetViewModelC_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScTyytSgADG_TG5(a1, v4);
}

unint64_t lazy protocol witness table accessor for type TaskGroup<AssetViewModel>.Iterator and conformance TaskGroup<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type TaskGroup<AssetViewModel>.Iterator and conformance TaskGroup<A>.Iterator;
  if (!lazy protocol witness table cache variable for type TaskGroup<AssetViewModel>.Iterator and conformance TaskGroup<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScG8IteratorVy9MomentsUI14AssetViewModelC_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskGroup<AssetViewModel>.Iterator and conformance TaskGroup<A>.Iterator);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in DBAsset.render(suggestionID:qos:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in closure #1 in DBAsset.render(suggestionID:qos:)(a1, v6, v1 + v5, v7);
}

uint64_t ClientMapViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientMapViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ClientMapViewModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_subtitle);

  return v1;
}

__n128 ClientMapViewModel.pinColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_pinColor + 32);
  result = *(v1 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_pinColor);
  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_pinColor + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t ClientMapViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientMapViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void ClientMapViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientMapViewModel.init(from:)()
{
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientMapViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientMapViewModel.init(coder:)()
{
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t ClientMapViewModel.pinGlyph.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 552))(result);

    return v1;
  }

  return result;
}

uint64_t ClientMapViewModel.mapImage.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 336))(result);

    return v1;
  }

  return result;
}

void *ClientMapViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for MapView());
  return MapView.init(viewModel:style:)(v1, &v3);
}

uint64_t ClientMapViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id ClientMapViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientMapViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for MapViewModel.subtitle.getter in conformance ClientMapViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_subtitle);

  return v1;
}

__n128 protocol witness for MapViewModel.pinColor.getter in conformance ClientMapViewModel@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_pinColor + 32);
  result = *(v1 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_pinColor);
  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_pinColor + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t specialized ClientMapViewModel.init(dbObject:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[3] = a3;
  v33[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_weakInit();
  outlined init with copy of DBObject(v33, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBMapModel();
  if (swift_dynamicCast())
  {
    v8 = v31;
    v9 = *(v31 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_subtitle + 8);
    v10 = (a2 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_subtitle);
    *v10 = *(v31 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_subtitle);
    v10[1] = v9;
    v11 = *(*v31 + 536);

    *(a2 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_singularLocation) = v11(v12);
    (*(*v31 + 560))(v32);
    v13 = (a2 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_pinColor);
    v14 = v32[1];
    *v13 = v32[0];
    *(v13 + 1) = v14;
    v13[32] = 0;
    v15 = swift_weakAssign();
    v16 = (*(*v31 + 528))(v15);
    if (v16)
    {
      v17 = v16;
      v18 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >> 62)
      {
        goto LABEL_21;
      }

      v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = a2; v19; i = a2)
      {
        a2 = 0;
        v20 = MEMORY[0x277D84F90];
        while ((v17 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x21CE93180](a2, v17);
          v22 = (a2 + 1);
          if (__OFADD__(a2, 1))
          {
            goto LABEL_19;
          }

LABEL_9:
          v23 = objc_allocWithZone(type metadata accessor for ClientMapViewModel());
          v24 = specialized ClientMapViewModel.init(dbObject:)(v21, v23);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
          }

          v26 = v20[2];
          v25 = v20[3];
          if (v26 >= v25 >> 1)
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v20);
          }

          v20[2] = v26 + 1;
          v27 = &v20[2 * v26];
          v27[4] = v24;
          v27[5] = &protocol witness table for ClientMapViewModel;
          ++a2;
          if (v22 == v19)
          {
            goto LABEL_23;
          }
        }

        if (a2 >= *(v18 + 16))
        {
          goto LABEL_20;
        }

        v21 = *(v17 + 8 * a2 + 32);

        v22 = (a2 + 1);
        if (!__OFADD__(a2, 1))
        {
          goto LABEL_9;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v19 = __CocoaSet.count.getter();
      }

      v20 = MEMORY[0x277D84F90];
LABEL_23:

      v8 = v31;
      a2 = i;
    }

    else
    {
      v20 = 0;
    }

    *(a2 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_mapViewModels) = v20;
    v28 = specialized AssetViewModel.init(clientDBObject:)(v8, a2);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return v28;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientMapViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientMapViewModel());
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientMapViewModel.init(dbObject:)(v9, v10, a3, a4);
}

uint64_t type metadata accessor for ClientMapViewModel()
{
  result = type metadata singleton initialization cache for ClientMapViewModel;
  if (!type metadata singleton initialization cache for ClientMapViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int ProcessingServerCoreConnection.ProcessingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](0);
  return Hasher._finalize()();
}

id ProcessingServerCoreConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessingServerCoreConnection.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessingServerCoreConnection();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ProcessingServerCoreConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessingServerCoreConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ProcessingServerCoreConnection.remoteTarget.getter()
{
  v15 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI16ServerConnection_lock);
  swift_unknownObjectWeakInit();
  [v1 lock];
  specialized closure #1 in ProcessingServerCoreConnection.remoteTarget.getter(v14, &v15);
  [v1 unlock];
  MEMORY[0x21CE948B0](v14);
  v2 = v15;
  if (v15)
  {
    swift_unknownObjectRetain();
    v3 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x80000002165794A0);
    v4 = MEMORY[0x21CE91FC0](0x676E416369736142, 0xED00004350496C65);
    v5 = [objc_opt_self() attributeWithDomain:v3 name:v4];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21658E210;
    *(v6 + 32) = v5;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for RBSAttribute);
    v7 = v5;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v2 remoteTargetWithLaunchingAssertionAttributes_];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI20ProcessingServerCore_pMd);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        return v11;
      }
    }

    else
    {
      outlined destroy of UTType?(v14, &_sypSgMd);
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t specialized closure #1 in ProcessingServerCoreConnection.remoteTarget.getter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = MEMORY[0x277D85000];
  if (!Strong || (v5 = Strong, v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0x70))(), v5, !v6))
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = v7;
    if (one-time initialization token for queue != -1)
    {
      swift_once();
    }

    v9 = static ProcessingServerCoreConnection.queue;
    v6 = [objc_opt_self() protocolForProtocol_];
    (*((*v4 & *v8) + 0xB8))(0xD000000000000027, 0x8000000216579690, v9, v6, 0);
  }

LABEL_8:
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = (*((*v4 & *v10) + 0x70))();

    if (!v12)
    {
LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }

    v10 = swift_dynamicCastObjCProtocolConditional();
    if (!v10)
    {

      goto LABEL_12;
    }
  }

LABEL_13:
  *a2 = v10;
  return swift_unknownObjectRelease();
}

uint64_t ProcessingServerCoreConnection.cloudSync()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](ProcessingServerCoreConnection.cloudSync(), 0, 0);
}

{
  v1 = [*(v0 + 152) remoteTarget];
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.cloudCancelSync();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccys5Error_pSgs5NeverOGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
    *(v0 + 104) = &block_descriptor_24;
    *(v0 + 112) = v3;
    [v2 cloudSyncWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerCoreConnection.ProcessingError and conformance ProcessingServerCoreConnection.ProcessingError();
    v4 = swift_allocError();
    v5 = *(v0 + 8);

    return v5(v4);
  }
}

unint64_t lazy protocol witness table accessor for type ProcessingServerCoreConnection.ProcessingError and conformance ProcessingServerCoreConnection.ProcessingError()
{
  result = lazy protocol witness table cache variable for type ProcessingServerCoreConnection.ProcessingError and conformance ProcessingServerCoreConnection.ProcessingError;
  if (!lazy protocol witness table cache variable for type ProcessingServerCoreConnection.ProcessingError and conformance ProcessingServerCoreConnection.ProcessingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProcessingServerCoreConnection.ProcessingError and conformance ProcessingServerCoreConnection.ProcessingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProcessingServerCoreConnection.ProcessingError and conformance ProcessingServerCoreConnection.ProcessingError;
  if (!lazy protocol witness table cache variable for type ProcessingServerCoreConnection.ProcessingError and conformance ProcessingServerCoreConnection.ProcessingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProcessingServerCoreConnection.ProcessingError and conformance ProcessingServerCoreConnection.ProcessingError);
  }

  return result;
}

uint64_t @objc closure #1 in ProcessingServerCoreConnection.cloudSync()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.cloudCancelSync();

  return ProcessingServerCoreConnection.cloudSync()();
}

uint64_t ProcessingServerCoreConnection.runFullProcessing()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](ProcessingServerCoreConnection.runFullProcessing(), 0, 0);
}

{
  v1 = [*(v0 + 152) remoteTarget];
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseWipe();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccys5Error_pSgs5NeverOGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
    *(v0 + 104) = &block_descriptor_3_1;
    *(v0 + 112) = v3;
    [v2 runFullProcessingWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerCoreConnection.ProcessingError and conformance ProcessingServerCoreConnection.ProcessingError();
    v4 = swift_allocError();
    v5 = *(v0 + 8);

    return v5(v4);
  }
}

uint64_t @objc closure #1 in ProcessingServerCoreConnection.runFullProcessing()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.runFullProcessing();

  return ProcessingServerCoreConnection.runFullProcessing()();
}

uint64_t ProcessingServerCoreConnection.realTimeCheckForNotification(significantLocationEnabled:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v3[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_s5Error_pSgtMd);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](ProcessingServerCoreConnection.realTimeCheckForNotification(significantLocationEnabled:), 0, 0);
}

uint64_t ProcessingServerCoreConnection.realTimeCheckForNotification(significantLocationEnabled:)()
{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 184);
    v4 = *(v0 + 152);
    *(v0 + 16) = v0;
    *(v0 + 56) = v3;
    *(v0 + 24) = ProcessingServerConnection.realTimeCheckForNotification(significantLocationEnabled:);
    v5 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4DateVSg_s5Error_pSgts5NeverOGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSDate?, @unowned NSError?) -> () with result type (Date?, Error?);
    *(v0 + 104) = &block_descriptor_6_2;
    *(v0 + 112) = v5;
    [v2 realTimeCheckForNotificationWithSignificantLocationEnabled:v4 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v6 = *(v0 + 144);
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    lazy protocol witness table accessor for type ProcessingServerCoreConnection.ProcessingError and conformance ProcessingServerCoreConnection.ProcessingError();
    v8 = swift_allocError();

    v9 = *(v0 + 8);

    return v9(v8);
  }
}

uint64_t @objc closure #1 in ProcessingServerCoreConnection.realTimeCheckForNotification(significantLocationEnabled:)(void *a1, const void *a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v3[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  v8 = a1;
  a3;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = @objc closure #1 in ProcessingServerConnection.realTimeCheckForNotification(significantLocationEnabled:);

  return ProcessingServerCoreConnection.realTimeCheckForNotification(significantLocationEnabled:)(v7, v8);
}

uint64_t ProcessingServerCoreConnection.runNotificationServicing(for:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](ProcessingServerCoreConnection.runNotificationServicing(for:), 0, 0);
}

uint64_t ProcessingServerCoreConnection.runNotificationServicing(for:)()
{
  v1 = [*(v0 + 168) remoteTarget];
  *(v0 + 176) = v1;
  if (v1)
  {
    v2 = v1;
    if (*(v0 + 160))
    {
      v3 = MEMORY[0x21CE91FC0](*(v0 + 152));
    }

    else
    {
      v3 = 0;
    }

    *(v0 + 184) = v3;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerCoreConnection.runNotificationServicing(for:);
    v7 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccys5Error_pSgs5NeverOGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
    *(v0 + 104) = &block_descriptor_9_1;
    *(v0 + 112) = v7;
    [v2 runNotificationServicingFor:v3 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerCoreConnection.ProcessingError and conformance ProcessingServerCoreConnection.ProcessingError();
    v4 = swift_allocError();
    v5 = *(v0 + 8);

    return v5(v4);
  }
}

{

  return MEMORY[0x2822009F8](ProcessingServerCoreConnection.runNotificationServicing(for:), 0, 0);
}

{
  v1 = v0[23];
  swift_unknownObjectRelease();
  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t @objc closure #1 in ProcessingServerCoreConnection.runNotificationServicing(for:)(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in ProcessingServerConnection.runNotificationServicing(for:);

  return ProcessingServerCoreConnection.runNotificationServicing(for:)(a1, v7);
}

uint64_t ProcessingServerCoreConnection.isUIActive()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](ProcessingServerCoreConnection.isUIActive(), 0, 0);
}

{
  v1 = [*(v0 + 152) remoteTarget];
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.isUIActive();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8NSNumberCSgs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> () with result type NSNumber?;
    *(v0 + 104) = &block_descriptor_12_0;
    *(v0 + 112) = v3;
    [v2 isUIActiveWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerCoreConnection.ProcessingError and conformance ProcessingServerCoreConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerCoreConnection.isUIActive()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.isUIActive();

  return ProcessingServerCoreConnection.isUIActive()();
}

uint64_t partial apply for @objc closure #1 in ProcessingServerCoreConnection.isUIActive()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerCoreConnection.isUIActive()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of TaskPriority?(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of UTType?(v11, &_sScPSgMd);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of UTType?(a3, &_sScPSgMd);

    return v21;
  }

LABEL_8:
  outlined destroy of UTType?(a3, &_sScPSgMd);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_36(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerCoreConnection.runNotificationServicing(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerCoreConnection.runNotificationServicing(for:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerCoreConnection.realTimeCheckForNotification(significantLocationEnabled:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerCoreConnection.realTimeCheckForNotification(significantLocationEnabled:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerCoreConnection.runFullProcessing()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterImage(imageSource:outputURL:);

  return @objc closure #1 in ProcessingServerCoreConnection.runFullProcessing()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerCoreConnection.cloudSync()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerCoreConnection.cloudSync()(v2, v3);
}

MomentsUI::HashableCoordinate __swiftcall HashableCoordinate.init(latitude:longitude:)(Swift::Double latitude, Swift::Double longitude)
{
  *v2 = latitude;
  v2[1] = longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

Swift::Int HashableCoordinate.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x21CE937F0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x21CE937F0](*&v4);
  return Hasher._finalize()();
}

uint64_t HashableCoordinate.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CE937F0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x21CE937F0](*&v3);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance HashableCoordinate.CodingKeys()
{
  if (*v0)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HashableCoordinate.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HashableCoordinate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HashableCoordinate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HashableCoordinate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI18HashableCoordinateV10CodingKeys33_DB8B91EA518E898FCF3A0400863ABB91LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t HashableCoordinate.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI18HashableCoordinateV10CodingKeys33_DB8B91EA518E898FCF3A0400863ABB91LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v15 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HashableCoordinate()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x21CE937F0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x21CE937F0](*&v4);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys;
  if (!lazy protocol witness table cache variable for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys;
  if (!lazy protocol witness table cache variable for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys;
  if (!lazy protocol witness table cache variable for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys;
  if (!lazy protocol witness table cache variable for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableCoordinate.CodingKeys and conformance HashableCoordinate.CodingKeys);
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of static TipCollectionViewCell.registration(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x80);

  return v1(v2);
}

uint64_t static TipCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013TipCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static TipCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t TipCollectionViewCell.viewModel.setter()
{
  swift_beginAccess();
  swift_weakAssign();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    TipCollectionViewCell.configureTipView(with:)(Strong);
  }
}

void (*TipCollectionViewCell.viewModel.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI21TipCollectionViewCell_viewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return TipCollectionViewCell.viewModel.modify;
}

void TipCollectionViewCell.viewModel.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      TipCollectionViewCell.configureTipView(with:)(Strong);
    }
  }

  free(v3);
}

id TipCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void *TipCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9MomentsUI21TipCollectionViewCell_tipView] = 0;
  swift_weakInit();
  v16.receiver = v4;
  v16.super_class = type metadata accessor for TipCollectionViewCell();
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = *((*MEMORY[0x277D85000] & *v9) + 0x90);
  v11 = v9;
  v10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21658CA50;
  v13 = type metadata accessor for UITraitUserInterfaceStyle();
  v14 = MEMORY[0x277D74BF0];
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  MEMORY[0x21CE92C30](v12, sel_handleTraitChange);

  swift_unknownObjectRelease();

  return v11;
}

id TipCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TipCollectionViewCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI21TipCollectionViewCell_tipView) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall TipCollectionViewCell.configureViews()()
{
  v1 = [v0 contentView];
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setBackgroundColor_];

  v4 = [v2 clearColor];
  [v0 setBackgroundColor_];
}

uint64_t TipCollectionViewCell.configureTipView(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9MomentsUI21TipCollectionViewCell_tipView;
  v8 = *&v1[OBJC_IVAR____TtC9MomentsUI21TipCollectionViewCell_tipView];
  if (v8)
  {
    v8 = [v8 removeFromSuperview];
  }

  (*(*a1 + 368))(&v40, v8);
  if (!v41)
  {
    return outlined destroy of Tip?(&v40);
  }

  outlined init with take of MusicPlaybackCoordinatorDelegate(&v40, v42);
  outlined init with copy of DBObject(v42, &v40);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = objc_allocWithZone(type metadata accessor for TipUIView());
  v10 = TipUIView.init(_:arrowEdge:actionHandler:)();
  v11 = *&v1[v7];
  *&v1[v7] = v10;
  v12 = v10;

  v13 = [v2 contentView];
  v14 = v12;
  [v13 addSubview_];

  (*(*a1 + 280))();
  v15 = &v6[*(v4 + 32)];
  v16 = *(v15 + 1);
  if (!v16)
  {
    outlined destroy of Client(v6);
    goto LABEL_12;
  }

  if (*v15 != 0xD000000000000011 || v16 != 0x8000000216578900)
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined destroy of Client(v6);
    if (v18)
    {
      goto LABEL_11;
    }

LABEL_12:
    v19 = &selRef_systemBlueColor;
    goto LABEL_13;
  }

  outlined destroy of Client(v6);
LABEL_11:
  v19 = &selRef_systemIndigoColor;
LABEL_13:
  v20 = [objc_opt_self() *v19];
  [v14 setTintColor_];

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_216590220;
  v23 = [v14 topAnchor];

  v24 = [v2 contentView];
  v25 = [v24 topAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v22 + 32) = v26;
  v27 = [v14 leadingAnchor];

  v28 = [v2 contentView];
  v29 = [v28 leadingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:8.0];
  *(v22 + 40) = v30;
  v31 = [v14 trailingAnchor];

  v32 = [v2 contentView];
  v33 = [v32 trailingAnchor];

  v34 = [v31 constraintEqualToAnchor:v33 constant:-8.0];
  *(v22 + 48) = v34;
  v35 = [v14 bottomAnchor];

  v36 = [v2 contentView];
  v37 = [v36 bottomAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v22 + 56) = v38;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 activateConstraints_];

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

void closure #1 in TipCollectionViewCell.configureTipView(with:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (Tips.Action.id.getter() == 0x656C62616E65 && v2 == 0xE600000000000000)
    {
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) == 0)
      {
LABEL_7:

        return;
      }
    }

    specialized TipCollectionViewCell.enableButtonTapped()();
    goto LABEL_7;
  }
}

id TipCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined destroy of Tip?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit0A0_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized TipCollectionViewCell.enableButtonTapped()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    URL.init(string:)();
    v5 = type metadata accessor for URL();
    v6 = *(v5 - 8);
    v8 = 0;
    if ((*(v6 + 48))(v2, 1, v5) != 1)
    {
      URL._bridgeToObjectiveC()(v7);
      v8 = v9;
      (*(v6 + 8))(v2, v5);
    }

    [v4 openSensitiveURL:v8 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t AssetViewModel.buildGenericFallbackModel()()
{
  v1 = v0;
  v118 = type metadata accessor for Date();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  *&v138 = &v108 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v135 = &v108 - v6;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v119 = *(v137 - 8);
  v7 = MEMORY[0x28223BE20](v137);
  v110 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v108 - v9;
  v10 = type metadata accessor for DateInterval();
  v130 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  *&v140 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v133 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v108 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v128 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v108 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v108 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v108 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v108 - v30;
  v124 = v18;
  v32 = *(v18 + 16);
  v32(&v108 - v30, v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v17);
  LODWORD(v132) = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v33 = *(v130 + 56);
  v123 = v16;
  v125 = v10;
  v33(v16, 1, 1, v10);
  UUID.init()();
  v34 = MEMORY[0x277D84F90];
  v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v134 = type metadata accessor for DBAssetModel();
  v120 = v34;
  v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v142 = v35;
  v38 = 0;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v36, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v142);

  v129 = v142;
  v121 = v26;
  v115 = v29;
  v32(v26, v29, v17);
  v122 = v23;
  v136 = v31;
  v139 = v17;
  v32(v23, v31, v17);
  v39 = v32;
  if (one-time initialization token for zero != -1)
  {
LABEL_31:
    swift_once();
  }

  v40 = static ScreenSize.zero;
  v41 = v133;
  outlined init with copy of DateInterval?(v123, v133);
  v42 = v130;
  v43 = *(v130 + 48);
  v44 = v125;
  if (v43(v41, 1, v125) == 1)
  {
    v45 = v40;
    v46 = v140;
    DateInterval.init()();
    v47 = v43(v41, 1, v44) == 1;
    v48 = v41;
    v49 = v122;
    if (!v47)
    {
      outlined destroy of UTType?(v48, &_s10Foundation12DateIntervalVSgMd);
    }
  }

  else
  {
    v50 = *(v42 + 32);
    v46 = v140;
    v50(v140, v41, v44);
    v51 = v40;
    v49 = v122;
  }

  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  v133 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v53 = v139;
  v39(v52 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id, v121, v139);
  v131 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v39(v52 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID, v49, v53);
  *(v52 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v132;
  v54 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport;
  *(v52 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v40;
  *(v52 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = MEMORY[0x277D84F90];
  v55 = (v52 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  *v55 = 0;
  v55[1] = 0xE000000000000000;
  v56 = *(v130 + 16);
  v132 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval;
  v56(v52 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval, v46, v44);
  v113 = v40;
  v57 = v129;
  v58 = specialized Dictionary.compactMapValues<A>(_:)(v129);
  v111 = v38;
  if (v38)
  {

    v106 = *(v124 + 8);
    v107 = v139;
    v106(&v133[v52], v139);
    v106(v131 + v52, v107);

    (*(v130 + 8))(v132 + v52, v125);
    swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    *(v52 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v58;
    *(v52 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = MEMORY[0x277D84F90];
    v59 = v58;
    swift_beginAccess();
    v114 = v52;
    *(v52 + 16) = 0;
    v60 = v57 + 64;
    v61 = 1 << *(v57 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & *(v57 + 64);
    v38 = ((v61 + 63) >> 6);
    v133 = (v124 + 48);
    v127 = (v124 + 32);
    v132 = (v119 + 56);
    v131 = (v119 + 48);
    v112 = v59;

    v64 = 0;
    v65 = v140;
    v66 = v136;
    v39 = v138;
    v67 = v137;
    v134 = v57 + 64;
    v126 = v38;
    while (v63)
    {
      v68 = v64;
LABEL_15:
      v69 = *(*(v57 + 56) + 8 * (__clz(__rbit64(v63)) | (v68 << 6)));
      v70 = *(*v69 + 192);

      v70(v71);
      v72 = v139;
      if ((*v133)(v39, 1, v139) == 1)
      {
        outlined destroy of UTType?(v39, &_s10Foundation4UUIDVSgMd);
        v73 = v135;
        (*v132)(v135, 1, 1, v67);
      }

      else
      {
        v74 = v72;
        v75 = *v127;
        v76 = v128;
        (*v127)(v128, v138, v72);
        v77 = *(v137 + 48);
        v73 = v135;
        v78 = v76;
        v57 = v129;
        v79 = v74;
        v67 = v137;
        v75(v135, v78, v79);
        v38 = v126;
        v39 = v138;
        *(v73 + v77) = v69;
        (*v132)(v73, 0, 1, v67);
      }

      v63 &= v63 - 1;

      if ((*v131)(v73, 1, v67) == 1)
      {
        outlined destroy of UTType?(v73, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
        v64 = v68;
        v65 = v140;
        v66 = v136;
        v60 = v134;
      }

      else
      {
        v80 = v73;
        v81 = v109;
        outlined init with take of (UUID, DBAssetData)(v80, v109);
        outlined init with take of (UUID, DBAssetData)(v81, v110);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120[2] + 1, 1, v120);
        }

        v60 = v134;
        v83 = v120[2];
        v82 = v120[3];
        if (v83 >= v82 >> 1)
        {
          v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v82 > 1, v83 + 1, 1, v120);
        }

        v84 = v120;
        v120[2] = v83 + 1;
        outlined init with take of (UUID, DBAssetData)(v110, v84 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v83);
        v64 = v68;
        v65 = v140;
        v66 = v136;
      }
    }

    while (1)
    {
      v68 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v68 >= v38)
      {
        break;
      }

      v63 = *(v60 + 8 * v68);
      ++v64;
      if (v63)
      {
        goto LABEL_15;
      }
    }

    if (v120[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
      v85 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v85 = MEMORY[0x277D84F98];
    }

    v86 = v117;
    v87 = v125;
    v88 = v114;
    v141 = v85;

    v90 = v111;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v89, 1, &v141);
    if (!v90)
    {

      v91 = v141;
      v92 = swift_allocObject();
      *(v92 + 16) = v91;
      v93 = (v88 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
      *v93 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
      v93[1] = v92;
      v94 = swift_allocObject();
      *(v94 + 16) = v91;
      v95 = (v88 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
      *v95 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
      v95[1] = v94;
      v96 = (v88 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
      *v96 = closure #3 in DBAssetModel.init(from:);
      v96[1] = 0;
      v97 = swift_allocObject();
      *(v97 + 16) = v112;
      swift_beginAccess();
      v140 = *v93;
      swift_beginAccess();
      v138 = *v95;
      swift_beginAccess();
      v98 = *v96;
      v99 = v96[1];
      v100 = v88 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
      *v100 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
      *(v100 + 8) = v97;
      v101 = v138;
      *(v100 + 16) = v140;
      *(v100 + 32) = v101;
      *(v100 + 48) = v98;
      *(v100 + 56) = v99;

      v102 = v116;
      static Date.now.getter();

      (*(v130 + 8))(v65, v87);
      v103 = *(v124 + 8);
      v104 = v139;
      v103(v122, v139);
      v103(v121, v104);
      v103(v115, v104);
      outlined destroy of UTType?(v123, &_s10Foundation12DateIntervalVSgMd);
      v103(v66, v104);
      (*(v86 + 32))(v88 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v102, v118);
      return v88;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MUIProcessingError()
{
  result = type metadata singleton initialization cache for MUIProcessingError;
  if (!type metadata singleton initialization cache for MUIProcessingError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MUIProcessingError()
{
  type metadata accessor for (task: MOTaskWork)(319, &lazy cache variable for type metadata for (task: MOTaskWork), type metadata accessor for MOTaskWork);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (task: MOTaskWork)(319, &lazy cache variable for type metadata for (tokenId: UUID), MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (task: MOTaskWork)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t MutableMapViewModel.build()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v135 = &v103 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v103 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v103 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v103 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v103 - v20;
  v22 = type metadata accessor for DateInterval();
  v23 = MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v27 = *&v0[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport];
  if (!v27)
  {
    return 0;
  }

  v134 = v5;
  if (!*&v0[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles])
  {
    return 0;
  }

  v126 = *&v0[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles];
  v128 = v26;
  v129 = &v103 - v24;
  v131 = v19;
  v130 = v10;
  v132 = v12;
  v133 = v1;
  v28 = MEMORY[0x277D85000];
  v29 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  v30 = v25;
  v127 = v27;
  v29();
  v31 = *(v30 + 48);
  if (v31(v21, 1, v22) == 1)
  {

    outlined destroy of DateInterval?(v21);
    return 0;
  }

  v115 = v31;
  v116 = v30 + 48;
  v33 = *(v30 + 32);
  v34 = v22;
  v35 = v129;
  v105 = v30 + 32;
  v104 = v33;
  v33(v129, v21, v34);
  v125 = v2;
  v110 = *(v2 + 16);
  v36 = v110(v132, &v0[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid], v133);
  v111 = (*((*v28 & *v0) + 0xD0))(v36);
  v112 = v37;
  v38 = v131;
  v39 = v35;
  v40 = v34;
  (*(v30 + 16))(v131, v39, v34);
  v124 = v30;
  v41 = (*(v30 + 56))(v38, 0, 1, v34);
  v42 = (*((*v28 & *v0) + 0xB8))(v41);
  v122 = MutableMapViewModel.nullableSubMapViewModels.getter();
  v113 = (*((*v28 & *v0) + 0x2A0))();
  v114 = v43;
  v44 = *&v0[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation];
  v45 = *((*v28 & *v0) + 0x288);

  v47 = v45(v138, v46);
  v48 = *v138;
  v49 = *&v138[1];
  v50 = *&v138[2];
  v106 = *&v138[3];
  v120 = v139;
  v51 = (*((*v28 & *v0) + 0x268))(v47);
  v117 = (*((*v28 & *v0) + 0x1D8))();
  v52 = v130;
  UUID.init()();
  v53 = v127;
  v127 = v51;
  v54 = specialized static DBMapModel.pinGlyph2DB(_:)(v51);
  v119 = v55;
  v123 = v42;
  v56 = specialized static DBAssetModel.baseImage2DB(_:)(v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v137 = v54;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v56, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v137);

  v118 = v137;
  v58 = v133;
  v59 = v110;
  v110(v135, v52, v133);
  v59(v134, v132, v58);
  v60 = v126;
  v61 = *(v126 + 16);
  if (v61)
  {
    v110 = v40;
    v137 = MEMORY[0x277D84F90];
    v62 = v53;
    v63 = v53;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61, 0);
    v64 = v137;
    v65 = (v60 + 32);
    v66 = *(v137 + 16);
    do
    {
      v68 = *v65++;
      v67 = v68;
      v137 = v64;
      v69 = *(v64 + 24);
      if (v66 >= v69 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v66 + 1, 1);
        v64 = v137;
      }

      *(v64 + 16) = v66 + 1;
      *(v64 + v66++ + 32) = v67;
      --v61;
    }

    while (v61);
    v53 = v62;
    v40 = v110;
  }

  else
  {
    v70 = v53;
    v64 = MEMORY[0x277D84F90];
  }

  if (v112)
  {
    v71 = v111;
  }

  else
  {
    v71 = 0;
  }

  v72 = 0xE000000000000000;
  if (v112)
  {
    v72 = v112;
  }

  v112 = v72;
  outlined init with copy of DateInterval?(v131, v16);
  v73 = v115;
  v74 = v115(v16, 1, v40);
  v121 = v53;
  v109 = v48;
  v108 = v49;
  v107 = v50;
  v126 = v71;
  if (v74 == 1)
  {
    DateInterval.init()();
    if (v73(v16, 1, v40) != 1)
    {
      outlined destroy of DateInterval?(v16);
    }
  }

  else
  {
    v104(v128, v16, v40);
  }

  v75 = v114;
  v76 = v113;
  if (!v114)
  {
    v76 = 0;
  }

  v116 = v76;
  if (!v114)
  {
    v75 = 0xE000000000000000;
  }

  v115 = v75;
  v77 = *(*v44 + 168);

  v79 = v77(v78);
  v80 = (*(*v44 + 192))();
  v81 = *(v44 + OBJC_IVAR____TtC9MomentsUI11MapLocation_horizontalUncertainty);
  v83 = *(v44 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
  v82 = *(v44 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name + 8);

  if (v82)
  {
    v84 = v83;
  }

  else
  {
    v84 = 0;
  }

  v114 = v84;
  if (v82)
  {
    v85 = v82;
  }

  else
  {
    v85 = 0xE000000000000000;
  }

  if (*(v44 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city + 8))
  {
    v86 = *(v44 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
    v87 = *(v44 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city + 8);
  }

  else
  {
    v86 = 0;
    v87 = 0xE000000000000000;
  }

  v88 = *(*v44 + 216);

  v90 = v88(v89);
  v91 = *(v44 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel);
  (*(*v44 + 240))(&v137);

  LOBYTE(v137) = v137 + 1;
  if (v127)
  {
    v92 = *(v127 + OBJC_IVAR____TtC9MomentsUI5Image_isGlyph);
  }

  else
  {
    v92 = 2;
  }

  v93 = *(v44 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount);
  v94 = 0.0;
  v95 = 0.0;
  v96 = 0.0;
  v97 = 0.0;
  if ((v120 & 1) == 0)
  {
    v94 = v106;
    v95 = v107;
    v96 = v108;
    v97 = v109;
  }

  v136 = v117 & 1;
  type metadata accessor for DBMapModel();
  swift_allocObject();
  v102 = v86;
  v98 = v121;
  v99 = specialized DBMapModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subMaps:subtitle:latitude:longitude:horizontalUncertainty:locationName:city:mapItem:confidenceLevel:pinType:pinImageIsGlyph:clusterCount:pinColorR:pinColorG:pinColorB:pinColorA:mapAssetDataIDs:renderState:)(v135, v134, v121, v64, v126, v112, v128, v118, v79, v80, v81, v91, v97, v96, v95, v94, v122, v116, v115, v114, v85, v102, v87, v90, &v137, v92, v93, v119, &v136);

  v100 = *(v125 + 8);
  v101 = v133;
  v100(v130, v133);
  outlined destroy of DateInterval?(v131);
  v100(v132, v101);
  (*(v124 + 8))(v129, v40);
  return v99;
}

uint64_t MutableMapViewModel.nullableSubMapViewModels.getter()
{
  v179 = type metadata accessor for UUID();
  v1 = *(v179 - 8);
  v2 = MEMORY[0x28223BE20](v179);
  v4 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v138 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v138 - v9;
  MEMORY[0x28223BE20](v8);
  v178 = &v138 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v175 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v177 = &v138 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v138 - v17;
  v19 = type metadata accessor for DateInterval();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v176 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v138 - v24;
  v26 = (*((*MEMORY[0x277D85000] & *v0) + 0x250))(v23);
  if (!v26)
  {
    return 0;
  }

  v189 = MEMORY[0x277D84F90];
  v27 = *(v26 + 16);
  if (!v27)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_74:

    return v30;
  }

  v172 = v10;
  v167 = v7;
  v168 = v4;
  v28 = 0;
  v180 = (v20 + 48);
  v166 = (v20 + 32);
  v169 = (v1 + 16);
  v163 = (v20 + 16);
  v162 = (v20 + 56);
  v161 = (v1 + 8);
  v160 = (v20 + 8);
  v29 = v26 + 32;
  v158 = v27 - 1;
  v30 = MEMORY[0x277D84F90];
  v181 = v19;
  v182 = v18;
  v170 = v25;
  v183 = v27;
  v184 = v26;
  v159 = v26 + 32;
LABEL_4:
  v31 = (v29 + 16 * v28);
  while (1)
  {
    if (v28 >= *(v26 + 16))
    {
      __break(1u);
      goto LABEL_77;
    }

    v32 = *v31;
    type metadata accessor for MutableMapViewModel();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = v33;
      v35 = *&v33[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport];
      if (v35)
      {
        v36 = *&v33[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles];
        if (v36)
        {
          break;
        }
      }
    }

LABEL_5:
    ++v28;
    v31 += 2;
    v26 = v184;
    if (v183 == v28)
    {
      goto LABEL_74;
    }
  }

  v37 = *((*MEMORY[0x277D85000] & *v33) + 0xE8);
  v38 = v32;
  v39 = v35;

  v37(v40);
  v42 = v181;
  v41 = v182;
  v43 = *v180;
  if ((*v180)(v182, 1, v181) == 1)
  {

    outlined destroy of DateInterval?(v41);
    goto LABEL_5;
  }

  v154 = v38;
  v44 = v170;
  v141 = *v166;
  v141(v170, v41, v42);
  v143 = *v169;
  v45 = v143(v178, &v34[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid], v179);
  v46 = MEMORY[0x277D85000];
  v147 = (*((*MEMORY[0x277D85000] & *v34) + 0xD0))(v45);
  v146 = v47;
  v48 = v177;
  (*v163)(v177, v44, v42);
  v49 = (*v162)(v48, 0, 1, v42);
  v50 = (*((*v46 & *v34) + 0xB8))(v49);
  v151 = MutableMapViewModel.nullableSubMapViewModels.getter();
  v145 = (*((*v46 & *v34) + 0x2A0))();
  v144 = v51;
  v52 = *((*v46 & *v34) + 0x288);
  v157 = *&v34[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation];

  v54 = v52(v187, v53);
  v55 = *v187;
  v56 = *&v187[1];
  v57 = *&v187[2];
  v58 = *&v187[3];
  v150 = v188;
  v59 = (*((*v46 & *v34) + 0x268))(v54);
  v148 = (*((*v46 & *v34) + 0x1D8))();
  UUID.init()();
  v155 = v39;
  v156 = v59;
  v60 = specialized static DBMapModel.pinGlyph2DB(_:)(v59);
  v149 = v61;
  v153 = v50;
  v62 = specialized static DBAssetModel.baseImage2DB(_:)(v50);
  LODWORD(v174) = swift_isUniquelyReferenced_nonNull_native();
  v186 = v60;
  v63 = v62 + 64;
  v64 = -1 << *(v62 + 32);
  if (-v64 < 64)
  {
    v65 = ~(-1 << -v64);
  }

  else
  {
    v65 = -1;
  }

  v66 = v65 & *(v62 + 64);
  v142 = -1 << *(v62 + 32);
  v67 = (63 - v64) >> 6;
  v171 = v62;

  v68 = 0;
  v152 = v28 + 1;
  v165 = v62 + 64;
  v164 = v67;
  while (v66)
  {
    v69 = v68;
LABEL_24:
    v71 = __clz(__rbit64(v66)) | (v69 << 6);
    v72 = (v171[6] + 16 * v71);
    v73 = *v72;
    v74 = v72[1];
    v75 = *(v171[7] + 8 * v71);

    v173 = v75;

    v77 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v74);
    v78 = v60[2];
    v79 = (v76 & 1) == 0;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      goto LABEL_78;
    }

    v81 = v76;
    if (v60[3] >= v80)
    {
      if ((v174 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v80, v174 & 1);
      v82 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v74);
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_80;
      }

      v77 = v82;
    }

    v66 &= v66 - 1;
    v60 = v186;
    if (v81)
    {

      *(v60[7] + 8 * v77) = v173;
    }

    else
    {
      v186[(v77 >> 6) + 8] |= 1 << v77;
      v84 = (v60[6] + 16 * v77);
      *v84 = v73;
      v84[1] = v74;
      *(v60[7] + 8 * v77) = v173;
      v85 = v60[2];
      v86 = __OFADD__(v85, 1);
      v87 = v85 + 1;
      if (v86)
      {
        goto LABEL_79;
      }

      v60[2] = v87;
    }

    LODWORD(v174) = 1;
    v68 = v69;
    v42 = v181;
    v63 = v165;
    v67 = v164;
  }

  v70 = v68;
  while (1)
  {
    v69 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v69 >= v67)
    {
      v174 = v60;
      outlined consume of [String : DBAssetData].Iterator._Variant();

      v88 = v179;
      v89 = v143;
      v143(v167, v172, v179);
      v89(v168, v178, v88);
      v90 = *(v36 + 16);
      if (v90)
      {
        v186 = MEMORY[0x277D84F90];
        v91 = v155;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90, 0);
        v92 = v186;
        v93 = v186[2];
        v94 = 32;
        do
        {
          v95 = *(v36 + v94);
          v186 = v92;
          v96 = *(v92 + 24);
          if (v93 >= v96 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v93 + 1, 1);
            v92 = v186;
          }

          *(v92 + 16) = v93 + 1;
          *(v92 + v93 + 32) = v95;
          ++v94;
          ++v93;
          --v90;
        }

        while (v90);

        v42 = v181;
      }

      else
      {
        v97 = v155;

        v92 = MEMORY[0x277D84F90];
      }

      v98 = v147;
      if (!v146)
      {
        v98 = 0;
      }

      v173 = v98;
      v99 = 0xE000000000000000;
      if (v146)
      {
        v99 = v146;
      }

      v171 = v99;
      v100 = v175;
      outlined init with copy of DateInterval?(v177, v175);
      v101 = v43(v100, 1, v42);
      v140 = v57;
      v139 = v58;
      if (v101 == 1)
      {
        DateInterval.init()();
        if (v43(v100, 1, v42) != 1)
        {
          outlined destroy of DateInterval?(v100);
        }
      }

      else
      {
        v141(v176, v100, v42);
      }

      v102 = v145;
      if (!v144)
      {
        v102 = 0;
      }

      v165 = v102;
      if (v144)
      {
        v103 = v144;
      }

      else
      {
        v103 = 0xE000000000000000;
      }

      v164 = v103;
      v104 = v157;
      v105 = *(*v157 + 168);

      v107 = v105(v106);
      v108 = (*(*v104 + 192))();
      v109 = *(v104 + OBJC_IVAR____TtC9MomentsUI11MapLocation_horizontalUncertainty);
      v110 = *(v104 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
      v111 = *(v104 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name + 8);

      if (v111)
      {
        v112 = v110;
      }

      else
      {
        v112 = 0;
      }

      if (v111)
      {
        v113 = v111;
      }

      else
      {
        v113 = 0xE000000000000000;
      }

      v114 = (v104 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
      v115 = *(v104 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city + 8);
      if (v115)
      {
        v116 = *v114;
        v117 = v115;
      }

      else
      {
        v116 = 0;
        v117 = 0xE000000000000000;
      }

      v118 = v157;
      v119 = *(*v157 + 216);

      v121 = v119(v120);
      v122 = *(v118 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel);
      (*(*v118 + 240))(&v186);

      LOBYTE(v186) = v186 + 1;
      v123 = v56;
      v124 = v55;
      if (v156)
      {
        v125 = v156[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph];
      }

      else
      {
        v125 = 2;
      }

      v126 = *(v157 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount);
      v127 = 0.0;
      v128 = 0.0;
      v129 = 0.0;
      v130 = 0.0;
      if ((v150 & 1) == 0)
      {
        v127 = v139;
        v128 = v140;
        v129 = v123;
        v130 = v124;
      }

      v185 = v148 & 1;
      type metadata accessor for DBMapModel();
      swift_allocObject();
      v137 = v125;
      v131 = v155;
      specialized DBMapModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subMaps:subtitle:latitude:longitude:horizontalUncertainty:locationName:city:mapItem:confidenceLevel:pinType:pinImageIsGlyph:clusterCount:pinColorR:pinColorG:pinColorB:pinColorA:mapAssetDataIDs:renderState:)(v167, v168, v155, v92, v173, v171, v176, v174, v107, v108, v109, v122, v130, v129, v128, v127, v151, v165, v164, v112, v113, v116, v117, v121, &v186, v137, v126, v149, &v185);

      v132 = *v161;
      v133 = v179;
      (*v161)(v172, v179);
      outlined destroy of DateInterval?(v177);
      v132(v178, v133);
      v134 = (*v160)(v170, v181);
      MEMORY[0x21CE92260](v134);
      if (*((v189 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v189 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v30 = v189;
      v135 = v158 == v28;
      v26 = v184;
      v29 = v159;
      v28 = v152;
      if (v135)
      {
        goto LABEL_74;
      }

      goto LABEL_4;
    }

    v66 = *(v63 + 8 * v69);
    ++v70;
    if (v66)
    {
      goto LABEL_24;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__int128 *VideoView.Constants.accessibilityString.unsafeMutableAddressor()
{
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  return &static VideoView.Constants.accessibilityString;
}

uint64_t static VideoView.Constants.accessibilityString.getter()
{
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v0 = static VideoView.Constants.accessibilityString;

  return v0;
}

void *VideoView.init(viewModel:style:)(void *a1, char *a2)
{
  v4 = *a2;
  v5 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for VideoStaticView()) init];
  v6 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for VideoPlayerView()) init];
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v7 = *MEMORY[0x277D76560];
    if (one-time initialization token for accessibilityString != -1)
    {
      swift_once();
    }

    v8 = static VideoView.Constants.accessibilityString;
    v9 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v10 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v11 = a1;
    *&v2[v9] = [v10 init];
    swift_unknownObjectWeakInit();
    v12 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(&v2[v12], 1, 1, v13);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v2[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v4;
    v30.receiver = v2;
    v30.super_class = type metadata accessor for AssetView();
    v14 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v15 = *((*MEMORY[0x277D85000] & *v14) + 0xE8);
    v16 = v14;
    v15();
    AssetView.setFallBackView()();
    [v16 setIsAccessibilityElement_];
    v17 = [v16 accessibilityTraits];
    if ((v7 & ~v17) != 0)
    {
      v18 = v7;
    }

    else
    {
      v18 = 0;
    }

    [v16 setAccessibilityTraits_];
    v19 = MEMORY[0x21CE91FC0](v8, *(&v8 + 1));
    [v16 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21658CA50;
    v21 = type metadata accessor for UITraitUserInterfaceStyle();
    v22 = MEMORY[0x277D74BF0];
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    v23 = v16;
    MEMORY[0x21CE92C30](v20, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v23 handleTraitChange];
    [v23 setTranslatesAutoresizingMaskIntoConstraints_];

    [v23 setClipsToBounds_];
    v24 = *&v23[OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView];
    v25 = v23;
    [v25 addSubview_];
    [v25 addSubview_];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    v26 = *&v25[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
    v27 = MEMORY[0x21CE91FC0](0x6F65646976, 0xE500000000000000);
    v28 = [objc_opt_self() systemImageNamed_];

    [v26 setImage_];
    return v14;
  }

  else
  {

    type metadata accessor for VideoView();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for VideoView()
{
  result = type metadata singleton initialization cache for VideoView;
  if (!type metadata singleton initialization cache for VideoView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall VideoView.addSubViews()()
{
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView];

  [v0 addSubview_];
}

Swift::Void __swiftcall VideoView.addConstraints()()
{
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
}

Swift::Void __swiftcall VideoView.configureFallback()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView);
  v2 = MEMORY[0x21CE91FC0](0x6F65646976, 0xE500000000000000);
  v3 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
}

id VideoView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void VideoView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for VideoStaticView()) init];
  v2 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for VideoPlayerView()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall VideoView.hideViews()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView) setHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView);

  [v1 setHidden_];
}

Swift::Void __swiftcall VideoView.showViews()()
{
  AssetView.showViews()();
  [*(v0 + OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView) setHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView);

  [v1 setHidden_];
}

uint64_t VideoView.updateAndShowViews()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = VideoView.updateAndShowViews();

  return VideoView.replaceVideo()();
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](VideoView.updateAndShowViews(), v1, v0);
}

{
  v1 = *(v0 + 16);

  VideoView.replaceDuration()();
  VideoView.adjustCrop()();
  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t VideoView.replaceVideo()()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v1[4] = swift_task_alloc();
  v1[5] = type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](VideoView.replaceVideo(), v3, v2);
}

{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x70))();
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = v2;
    swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = v4;
      v6 = *((*v1 & **(v0 + 24)) + 0x88);
      v6();
      if (*(v0 + 136) == 6)
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI5VideoCSgMd);
        v8 = static MainActor.shared.getter();
        *(v0 + 80) = v8;
        v9 = swift_task_alloc();
        *(v0 + 88) = v9;
        *(v9 + 16) = v3;
        *(v9 + 24) = v5;
        v10 = swift_task_alloc();
        *(v0 + 96) = v10;
        *v10 = v0;
        v10[1] = VideoView.replaceVideo();
        v11 = MEMORY[0x277D85700];

        return MEMORY[0x282200600](v0 + 16, v7, v7, v8, v11, &async function pointer to partial apply for closure #1 in VideoView.replaceVideo(), v9, v7);
      }

      v12 = *((*v1 & *v3) + 0xB8);
      v13 = v3;
      v14 = v12();
      *(v0 + 104) = v14;

      if (v14)
      {
        v15 = *(v0 + 24);
        v16 = (v6)();
        v17 = (*((*v1 & *v15) + 0xD8))(v16);
        v18 = *(v13 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
        *(v0 + 112) = v18;
        v19 = v18;
        v20 = swift_task_alloc();
        *(v0 + 120) = v20;
        *v20 = v0;
        v20[1] = VideoView.replaceVideo();

        return Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)((v0 + 137), 1, v17, v18, 0x566563616C706572, 0xEE0029286F656469);
      }

      v21 = *(v0 + 72);
      v22 = *(v0 + 32);
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v25 = static MainActor.shared.getter();
      v26 = swift_allocObject();
      v27 = MEMORY[0x277D85700];
      v26[2] = v25;
      v26[3] = v27;
      v26[4] = v24;
      v26[5] = 0;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v22, &async function pointer to partial apply for closure #3 in VideoView.replaceVideo(), v26);
    }

    else
    {
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](VideoView.replaceVideo(), v3, v2);
}

{
  v1 = v0[9];
  v2 = v0[4];

  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = v3;

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;
  v8[5] = v3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #2 in VideoView.replaceVideo(), v8);

  v10 = v0[1];

  return v10();
}

{

  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = v1;

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;
  v8[5] = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #3 in VideoView.replaceVideo(), v8);

  v10 = v0[1];

  return v10();
}

uint64_t VideoView.replaceVideo()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  *(*v1 + 128) = a1;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);

  return MEMORY[0x2822009F8](VideoView.replaceVideo(), v6, v5);
}

Swift::Void __swiftcall VideoView.replaceDuration()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v2)
  {
    v14 = v2;
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4 && (v5 = (*(v4 + 32))(ObjectType, v4), (v6 & 1) == 0))
    {
      v7 = *&v5;
      (*((*v1 & *v0) + 0x88))(&v16);
      if (v16 == 6)
      {
        v8 = *(v0 + OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView);
        v9 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_durationLabelView;
      }

      else
      {
        v8 = *(v0 + OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView);
        v9 = OBJC_IVAR____TtC9MomentsUI15VideoStaticView_durationLabelView;
      }

      v10 = *(v8 + v9);
      v11 = specialized static VideoStaticView.durationLabelText(from:)(v7);
      if (v12)
      {
        v13 = MEMORY[0x21CE91FC0](v11);
      }

      else
      {
        v13 = 0;
      }

      [v10 setText_];
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall VideoView.adjustCrop()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (!v2)
  {
    return;
  }

  v90 = v2;
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (!v3)
  {
    goto LABEL_62;
  }

  v4 = v3;
  (*((*v1 & *v0) + 0x88))(&v93);
  if (v93 > 7u)
  {
    goto LABEL_57;
  }

  if (((1 << v93) & 0x8B) != 0)
  {
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = *(v6 + 32);
    v7(&v94, ObjectType, v6);
    if (v95)
    {
      goto LABEL_21;
    }

    width = v94.size.width;
    height = v94.size.height;
    x = v94.origin.x;
    y = v94.origin.y;
    v12 = CGRectGetWidth(v94);
    v13 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v14)
    {
      if (v12 <= 0.5)
      {
LABEL_21:
        if (one-time initialization token for views != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static CommonLogger.views);
        v36 = v90;
        v90 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v90, v37))
        {
          v38 = 7104878;
          v86 = v7;
          v39 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v92 = v88;
          *v39 = 136315394;
          v40 = (*(v6 + 40))(ObjectType, v6);
          if (!v41)
          {
            v40 = 7104878;
          }

          v42 = 0xE300000000000000;
          if (v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = 0xE300000000000000;
          }

          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v43, &v92);

          *(v39 + 4) = v44;
          *(v39 + 12) = 2080;
          v86(&cropRect, ObjectType, v6);
          if (!cropRect.is_nil)
          {
            v38 = CGRect.debugDescription.getter();
            v42 = v45;
          }

          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v42, &v92);

          *(v39 + 14) = v46;
          v47 = "[adjustCrop] unreasonable squareCropRect or no crop, cloudID=%s, crop=%s)";
LABEL_56:
          _os_log_impl(&dword_21607C000, v90, v37, v47, v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v88, -1, -1);
          MEMORY[0x21CE94770](v39, -1, -1);

          goto LABEL_57;
        }

        goto LABEL_61;
      }
    }

    else if (v12 <= v13)
    {
      goto LABEL_21;
    }

    v98.origin.x = x;
    v98.origin.y = y;
    v98.size.width = width;
    v98.size.height = height;
    v32 = CGRectGetHeight(v98);
    v33 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v34)
    {
      if (v32 <= 0.25)
      {
        goto LABEL_21;
      }
    }

    else if (v32 <= v33)
    {
      goto LABEL_21;
    }

LABEL_43:
    v56 = *(v0 + OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView);
    v102.origin.x = 0.0;
    v102.origin.y = 0.0;
    v102.size.width = 0.0;
    v102.size.height = 0.0;
    v101.origin.x = x;
    v101.origin.y = y;
    v101.size.width = width;
    v101.size.height = height;
    v57 = CGRectEqualToRect(v101, v102);
    v58 = [*(v56 + OBJC_IVAR____TtC9MomentsUI15VideoStaticView_staticImageView) layer];
    v36 = v58;
    if (v57)
    {
      v59 = 0.0;
      v60 = 0.0;
      v61 = 1.0;
      v62 = 1.0;
    }

    else
    {
      v59 = x;
      v60 = y;
      v61 = width;
      v62 = height;
    }

    [v58 setContentsRect:v59, v60, v61, v62];
LABEL_61:

LABEL_62:

    return;
  }

  if (((1 << v93) & 0x14) != 0)
  {
    v15 = swift_getObjectType();
    v16 = *(v4 + 8);
    v17 = *(v16 + 24);
    v17(&v94, v15, v16);
    if (v95)
    {
      goto LABEL_45;
    }

    width = v94.size.width;
    height = v94.size.height;
    x = v94.origin.x;
    y = v94.origin.y;
    v18 = CGRectGetWidth(v94);
    v19 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v20)
    {
      if (v18 <= 0.5)
      {
        goto LABEL_45;
      }
    }

    else if (v18 <= v19)
    {
      goto LABEL_45;
    }

    v99.origin.x = x;
    v99.origin.y = y;
    v99.size.width = width;
    v99.size.height = height;
    v48 = CGRectGetHeight(v99);
    *&v49 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v50)
    {
      v51 = 0.25;
    }

    else
    {
      v51 = *&v49;
    }

    if (v48 > v51)
    {
      goto LABEL_43;
    }

LABEL_45:
    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static CommonLogger.views);
    v36 = v90;
    v90 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v90, v37))
    {
      v64 = 7104878;
      v87 = v17;
      v39 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v92 = v88;
      *v39 = 136315394;
      v65 = (*(v16 + 40))(v15, v16);
      if (!v66)
      {
        v65 = 7104878;
      }

      v67 = 0xE300000000000000;
      if (v66)
      {
        v68 = v66;
      }

      else
      {
        v68 = 0xE300000000000000;
      }

      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v68, &v92);

      *(v39 + 4) = v69;
      *(v39 + 12) = 2080;
      v87(&cropRect, v15, v16);
      if (!cropRect.is_nil)
      {
        v64 = CGRect.debugDescription.getter();
        v67 = v70;
      }

      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v67, &v92);

      *(v39 + 14) = v71;
      v47 = "[adjustCrop] unreasonable landscapeCropRect or no crop, cloudID=%s, crop=%s)";
      goto LABEL_56;
    }

    goto LABEL_61;
  }

  if (v93 != 6)
  {
LABEL_57:

    return;
  }

  v21 = swift_getObjectType();
  v22 = *(v4 + 8);
  v23 = *(v22 + 32);
  v23(&v94, v21, v22);
  if ((v95 & 1) == 0)
  {
    v24 = v94.origin.x;
    v25 = v94.origin.y;
    v26 = v94.size.width;
    v27 = v94.size.height;
    v28 = CGRectGetWidth(v94);
    *&v29 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    v31 = (v30 & 1) != 0 ? 0.5 : *&v29;
    if (v28 > v31)
    {
      v100.origin.x = v24;
      v100.origin.y = v25;
      v100.size.width = v26;
      v100.size.height = v27;
      v52 = CGRectGetHeight(v100);
      *&v53 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
      v55 = (v54 & 1) != 0 ? 0.25 : *&v53;
      if (v52 > v55)
      {
        cropRect.value.origin.x = v24;
        cropRect.value.origin.y = v25;
        cropRect.value.size.width = v26;
        cropRect.value.size.height = v27;
        cropRect.is_nil = 0;
        VideoPlayerView.updateCrop(cropRect:)(&cropRect);
        goto LABEL_57;
      }
    }
  }

  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, static CommonLogger.views);
  v73 = v90;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v89 = v23;
    v76 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v92 = v91;
    *v76 = 136315394;
    v77 = (*(v22 + 40))(v21, v22);
    if (!v78)
    {
      v77 = 7104878;
    }

    v79 = 0xE300000000000000;
    if (v78)
    {
      v80 = v78;
    }

    else
    {
      v80 = 0xE300000000000000;
    }

    v81 = v21;
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v80, &v92);

    *(v76 + 4) = v82;
    *(v76 + 12) = 2080;
    v89(&cropRect, v81, v22);
    v83 = 7104878;
    if (!cropRect.is_nil)
    {
      v83 = CGRect.debugDescription.getter();
      v79 = v84;
    }

    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v79, &v92);

    *(v76 + 14) = v85;
    _os_log_impl(&dword_21607C000, v74, v75, "[adjustCrop] unreasonable squareCropRect or no crop, cloudID=%s, crop=%s)", v76, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v91, -1, -1);
    MEMORY[0x21CE94770](v76, -1, -1);
  }
}

id VideoView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void VideoView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView);
}

id VideoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for AssetViewBase.init(viewModel:style:) in conformance VideoView@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  result = (*(v3 + 280))(a1, &v6);
  *a3 = result;
  return result;
}

id protocol witness for AssetViewBase.addSubViews() in conformance VideoView()
{
  v1 = *v0;
  [*v0 addSubview_];
  v2 = *&v1[OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView];

  return [v1 addSubview_];
}

uint64_t protocol witness for AssetViewBase.addConstraints() in conformance VideoView()
{
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
}

void protocol witness for AssetViewBase.configureFallback() in conformance VideoView()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView);
  v2 = MEMORY[0x21CE91FC0](0x6F65646976, 0xE500000000000000);
  v3 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
}

uint64_t closure #1 in VideoView.replaceVideo()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy9MomentsUI5VideoCSg_GMd);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return MEMORY[0x2822009F8](closure #1 in VideoView.replaceVideo(), v7, v6);
}

uint64_t closure #1 in VideoView.replaceVideo()()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for TaskPriority();
  v7 = *(v0 + 40);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v7;
  v5 = v7;
  _sScG7addTask8priority9operationyScPSg_xyYaYAcntF9MomentsUI5VideoCSg_Tg5(v1, &async function pointer to partial apply for closure #1 in closure #1 in VideoView.replaceVideo(), v4);
  outlined destroy of TaskPriority?(v1);
  *(v0 + 120) = *v2;

  return MEMORY[0x2822009F8](closure #1 in VideoView.replaceVideo(), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI5VideoCSgMd);
  TaskGroup.makeAsyncIterator()();
  v0[16] = 0;
  v1 = lazy protocol witness table accessor for type TaskGroup<Video?>.Iterator and conformance TaskGroup<A>.Iterator();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = closure #1 in VideoView.replaceVideo();
  v3 = v0[7];

  return MEMORY[0x282200308](v0 + 2, v3, v1);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[16];
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v7 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v7 = closure #1 in VideoView.replaceVideo();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = v0[2];
  v0[18] = v1;
  v2 = v0[16];
  if (v1 == 1)
  {
    v3 = v0[3];
    (*(v0[8] + 8))(v0[9], v0[7]);
    *v3 = v2;
    v4 = v0[13];
    v5 = v0[14];
    v6 = closure #1 in LivePhotoView.replaceLivePhoto();
  }

  else
  {

    v0[19] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v6 = closure #1 in VideoView.replaceVideo();
    v4 = v7;
    v5 = v9;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{

  v0[16] = v0[18];
  v1 = lazy protocol witness table accessor for type TaskGroup<Video?>.Iterator and conformance TaskGroup<A>.Iterator();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = closure #1 in VideoView.replaceVideo();
  v3 = v0[7];

  return MEMORY[0x282200308](v0 + 2, v3, v1);
}

uint64_t closure #1 in closure #1 in VideoView.replaceVideo()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in VideoView.replaceVideo(), 0, 0);
}

uint64_t closure #1 in closure #1 in VideoView.replaceVideo()()
{
  v1 = v0[4];
  v2 = v0[2];
  ObjectType = swift_getObjectType();
  *v2 = (*(v1 + 24))(ObjectType, v1);
  v4 = v0[1];

  return v4();
}

uint64_t closure #2 in VideoView.replaceVideo()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in VideoView.replaceVideo(), v7, v6);
}

uint64_t closure #2 in VideoView.replaceVideo()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 96);
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView);

    VideoPlayerView.updateVideo(video:)(v2);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView);

    [v7 setHidden_];
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView);

    [v10 setHidden_];
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #3 in VideoView.replaceVideo()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #3 in VideoView.replaceVideo(), v7, v6);
}

uint64_t closure #3 in VideoView.replaceVideo()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 96);
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView);

    [*&v4[OBJC_IVAR____TtC9MomentsUI15VideoStaticView_staticImageView] setImage_];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView);

    [v7 setHidden_];
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView);

    [v10 setHidden_];
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t partial apply for closure #3 in VideoView.replaceVideo()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #3 in VideoView.replaceVideo()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in VideoView.replaceVideo()(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in VideoView.replaceVideo()(a1, a2, v7, v6);
}

uint64_t partial apply for closure #2 in VideoView.replaceVideo()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in VideoView.replaceVideo()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in VideoView.replaceVideo()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in closure #1 in VideoView.replaceVideo()(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type TaskGroup<Video?>.Iterator and conformance TaskGroup<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type TaskGroup<Video?>.Iterator and conformance TaskGroup<A>.Iterator;
  if (!lazy protocol witness table cache variable for type TaskGroup<Video?>.Iterator and conformance TaskGroup<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScG8IteratorVy9MomentsUI5VideoCSg_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskGroup<Video?>.Iterator and conformance TaskGroup<A>.Iterator);
  }

  return result;
}

uint64_t SegmentType.asString.getter()
{
  v1 = *v0;
  type metadata accessor for SuggestionCollectionViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  if (v1)
  {
    v10 = 0xE600000000000000;
    v4 = 0x746E65636552;
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEB00000000646564;
    v10 = 0xEB00000000646564;
    v4 = 0x6E656D6D6F636552;
  }

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = v4;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v3, v6, *(&v10 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t type metadata accessor for SuggestionCollectionViewModel()
{
  result = type metadata singleton initialization cache for SuggestionCollectionViewModel;
  if (!type metadata singleton initialization cache for SuggestionCollectionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

MomentsUI::SegmentType_optional __swiftcall SegmentType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SuggestionCollectionViewModel.__allocating_init(suggestionViewModels:client:cloudManager:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  SuggestionCollectionViewModel.init(suggestionViewModels:client:cloudManager:options:)(a1, a2, a3, a4);
  return v8;
}

MomentsUI::SuggestionSubgroup __swiftcall SuggestionSubgroup.init()()
{
  *v0 = xmmword_21659EE80;
  *(v0 + 16) = 0;
  return result;
}

MomentsUI::SuggestionSubgroup __swiftcall SuggestionSubgroup.init(suggestionCount:layout:type:)(Swift::Int suggestionCount, MomentsUI::SuggestionSubgroupLayout layout, MomentsUI::SuggestionGroupType type)
{
  v4 = *layout;
  v5 = *type;
  *v3 = 2;
  *(v3 + 8) = suggestionCount;
  *(v3 + 16) = v4;
  *(v3 + 17) = v5;
  result.maxCount = suggestionCount;
  result.layout = type;
  LOBYTE(result.suggestionCount) = layout;
  return result;
}

uint64_t SuggestionGroup.subgroups.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SuggestionGroup.items.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

MomentsUI::SuggestionGroup __swiftcall SuggestionGroup.init(subgroups:items:)(Swift::OpaquePointer subgroups, Swift::OpaquePointer items)
{
  v2->_rawValue = subgroups._rawValue;
  v2[1]._rawValue = items._rawValue;
  result.items = items;
  result.subgroups = subgroups;
  return result;
}

uint64_t SuggestionCollectionViewModel.cloudManager.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*SuggestionCollectionViewModel.cloudManager.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return SuggestionCollectionViewModel.cloudManager.modify;
}

void SuggestionCollectionViewModel.cloudManager.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t key path setter for SuggestionCollectionViewModel.client : SuggestionCollectionViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Client(a1, v6);
  return (*(**a2 + 328))(v6);
}

uint64_t SuggestionCollectionViewModel.client.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_client;
  swift_beginAccess();
  return outlined init with copy of Client(v1 + v3, a1);
}

uint64_t SuggestionCollectionViewModel.client.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_client;
  swift_beginAccess();
  outlined assign with take of Client(a1, v1 + v3);
  return swift_endAccess();
}

void *SuggestionCollectionViewModel.options.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_options;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SuggestionCollectionViewModel.options.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_options;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SuggestionCollectionViewModel.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_delegate;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v1 + v3, a1, &_s9MomentsUI37SuggestionCollectionViewModelDelegate_pSgMd);
}

uint64_t SuggestionCollectionViewModel.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_delegate;
  swift_beginAccess();
  outlined assign with take of AttributedString?(a1, v1 + v3, &_s9MomentsUI37SuggestionCollectionViewModelDelegate_pSgMd);
  return swift_endAccess();
}

uint64_t SuggestionCollectionViewModel.currentSuggestionViewModels.didset()
{
  v1 = type metadata accessor for IndexSet();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentSuggestionViewModels;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_sortedSuggestionViewModels;
  swift_beginAccess();
  *(v0 + v7) = v6;

  if (*(v0 + v7) >> 62 && __CocoaSet.count.getter() < 0)
  {
    __break(1u);
  }

  IndexSet.init(integersIn:)();
  v8 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_ungroupedViewModelsIndexSet;
  swift_beginAccess();
  (*(v2 + 40))(v0 + v8, v4, v1);
  return swift_endAccess();
}

uint64_t SuggestionCollectionViewModel.currentLoadedSnapshot.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentLoadedSnapshot;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t SuggestionCollectionViewModel.currentLoadedNumSuggestions.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentLoadedNumSuggestions;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t key path getter for SuggestionCollectionViewModel.shouldAllowVisualizationOfDraft : SuggestionCollectionViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result & 1;
  return result;
}

uint64_t SuggestionCollectionViewModel.shouldAllowVisualizationOfDraft.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t SuggestionCollectionViewModel.shouldAllowVisualizationOfDraft.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*SuggestionCollectionViewModel.shouldAllowVisualizationOfDraft.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return BlurGradientView.locations.modify;
}

uint64_t key path setter for SuggestionCollectionViewModel.$shouldAllowVisualizationOfDraft : SuggestionCollectionViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 568))(v6);
}

uint64_t SuggestionCollectionViewModel.$shouldAllowVisualizationOfDraft.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SuggestionCollectionViewModel.$shouldAllowVisualizationOfDraft.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel__shouldAllowVisualizationOfDraft;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return DBManager.$latestLocalSnapshotSequence.modify;
}

uint64_t SuggestionCollectionViewModel.messagingGroup.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_messagingGroup);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return outlined copy of SuggestionGroup?(v4);
}

uint64_t SuggestionCollectionViewModel.messagingGroup.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_messagingGroup);
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  v4[1] = v3;
  return outlined consume of SuggestionGroup?(v5);
}

uint64_t SuggestionCollectionViewModel.messageViewModel.getter()
{
  return SuggestionCollectionViewModel.messageViewModel.getter();
}

{
  swift_beginAccess();
}

uint64_t SuggestionCollectionViewModel.primaryDeviceID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_primaryDeviceID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SuggestionCollectionViewModel.primaryDeviceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_primaryDeviceID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SuggestionCollectionViewModel.shouldShowMessage()()
{
  *(v1 + 112) = v0;
  *(v1 + 120) = *v0;
  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.shouldShowMessage(), 0, 0);
}

{
  if ((*(**(v0 + 112) + 536))())
  {
    v1 = 1;
LABEL_17:
    v12 = *(v0 + 8);

    return v12(v1 & 1);
  }

  v2 = (*(**(v0 + 112) + 296))();
  *(v0 + 128) = v2;
  if (!v2)
  {
LABEL_16:
    v1 = 0;
    goto LABEL_17;
  }

  v3 = v2;
  if (((*(*(v0 + 120) + 864))() & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v4 = (**(v0 + 112) + 632);
  v5 = *v4;
  *(v0 + 136) = *v4;
  *(v0 + 144) = v4 & 0xFFFFFFFFFFFFLL | 0x1223000000000000;
  v6 = v5();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    swift_beginAccess();
    if (static CloudManager.currentID != v8 || v9 != qword_2811A6918)
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v1 = v11 ^ 1;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.shouldShowMessage(), v3, 0);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 152) = *(v0 + 16);

  return MEMORY[0x2822009F8](SuggestionCollectionViewModel.shouldShowMessage(), 0, 0);
}

{
  v40 = v0;
  if (*(v0 + 160))
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static CommonLogger.viewModel);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 136);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v39 = v6;
      *v5 = 136315394;
      swift_beginAccess();
      v7 = static CloudManager.currentID;
      v8 = qword_2811A6918;

      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v39);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      v11 = v4(v10);
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v11 = 7104878;
        v13 = 0xE300000000000000;
      }

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v39);

      *(v5 + 14) = v14;
      _os_log_impl(&dword_21607C000, v2, v3, "[SuggestionViewController] current device ID: %s, primary device ID: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v6, -1, -1);
      MEMORY[0x21CE94770](v5, -1, -1);
    }

    v15 = *(v0 + 136);
    (*(**(v0 + 112) + 640))(*(v0 + 152), *(v0 + 160));
    swift_beginAccess();
    v17 = static CloudManager.currentID;
    v16 = qword_2811A6918;

    v19 = v15(v18);
    if (!v20)
    {

      v35 = 1;
      goto LABEL_25;
    }

    if (v17 != v19 || v20 != v16)
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v35 = v36 ^ 1;
      goto LABEL_25;
    }
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static CommonLogger.viewModel);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 136);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315394;
      swift_beginAccess();
      v28 = static CloudManager.currentID;
      v27 = qword_2811A6918;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v39);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v31 = v24(v30);
      if (v32)
      {
        v33 = v32;
      }

      else
      {
        v31 = 7104878;
        v33 = 0xE300000000000000;
      }

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v39);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_21607C000, v22, v23, "[SuggestionViewController] shouldShowMessage, hide message, current device ID: %s, primary device ID: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v26, -1, -1);
      MEMORY[0x21CE94770](v25, -1, -1);

      goto LABEL_24;
    }
  }

LABEL_24:
  v35 = 0;
LABEL_25:
  v37 = *(v0 + 8);

  return v37(v35 & 1);
}

BOOL SuggestionCollectionViewModel.hasNoSuggestions.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentSuggestionViewModels;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      return 0;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentEvergreenViewModels);
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 == 0;
}

uint64_t SuggestionCollectionViewModel.currentSegmentType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentSegmentType;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t SuggestionCollectionViewModel.currentSegmentType.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentSegmentType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void *SuggestionCollectionViewModel.currentTraitCollection.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentTraitCollection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SuggestionCollectionViewModel.currentTraitCollection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_currentTraitCollection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SuggestionCollectionViewModel.messageViewModel.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

BOOL SuggestionCollectionViewModel.isRegularSizeClass.getter()
{
  v1 = (*(*v0 + 792))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 horizontalSizeClass];

    return v3 == 2;
  }

  else
  {
    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    return v6 == 1;
  }
}

BOOL static SuggestionCollectionViewModel.isPad.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

BOOL static SuggestionCollectionViewModel.isPhone.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 0;
}

void *key path getter for SuggestionCollectionViewModel.contentState : SuggestionCollectionViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 872))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for SuggestionCollectionViewModel.contentState : SuggestionCollectionViewModel(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 880))(&v4);
}

uint64_t SuggestionCollectionViewModel.contentState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t SuggestionCollectionViewModel.contentState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*SuggestionCollectionViewModel.contentState.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return BlurGradientView.startPoint.modify;
}

uint64_t key path setter for SuggestionCollectionViewModel.$contentState : SuggestionCollectionViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI29SuggestionCollectionViewModelC12ContentStateO_GMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 904))(v6);
}

uint64_t SuggestionCollectionViewModel.$contentState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI29SuggestionCollectionViewModelC12ContentStateO_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI29SuggestionCollectionViewModelC12ContentStateOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SuggestionCollectionViewModel.$contentState.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI29SuggestionCollectionViewModelC12ContentStateO_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel__contentState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI29SuggestionCollectionViewModelC12ContentStateOGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return DBManager.$pendingDBChanges.modify;
}

uint64_t SuggestionCollectionViewModel.deinit()
{
  v1 = v0;
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.viewModel);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[SuggestionCollectionViewModel] de-init", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  swift_weakDestroy();
  _s9MomentsUI6ClientVWOhTm_1(v1 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_client, type metadata accessor for Client);

  outlined destroy of UTType?(v1 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_delegate, &_s9MomentsUI37SuggestionCollectionViewModelDelegate_pSgMd);

  v6 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel__shouldAllowVisualizationOfDraft;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  outlined consume of SuggestionGroup?(*(v1 + OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_messagingGroup));

  v8 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel_ungroupedViewModelsIndexSet;
  v9 = type metadata accessor for IndexSet();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);

  v10 = OBJC_IVAR____TtC9MomentsUI29SuggestionCollectionViewModel__contentState;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI29SuggestionCollectionViewModelC12ContentStateOGMd);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  return v1;
}