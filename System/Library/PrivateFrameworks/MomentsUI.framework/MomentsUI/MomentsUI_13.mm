uint64_t ClientVideoViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id ClientVideoViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientVideoViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double protocol witness for PhotosFamilyViewModel.portraitCropRect.getter in conformance ClientVideoViewModel@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x268))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double protocol witness for PhotosFamilyViewModel.landscapeCropRect.getter in conformance ClientVideoViewModel@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x280))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double protocol witness for PhotosFamilyViewModel.squareCropRect.getter in conformance ClientVideoViewModel@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x298))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t specialized ClientVideoViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v33[3] = a3;
  v33[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_videoDurationSeconds];
  *v8 = 0;
  v8[8] = 1;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_portraitCropRect];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_landscapeCropRect];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v11 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_squareCropRect];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v12 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_cloudIdentifier];
  *v12 = 0;
  v12[1] = 0;
  v13 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_localIdentifier];
  *v13 = 0;
  v13[1] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v33, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBVideoModel();
  if (swift_dynamicCast())
  {
    swift_weakAssign();
    v14 = *(v31 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 32);
    v25 = *(v31 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 16);
    v28 = *(v31 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect);
    swift_beginAccess();
    *v11 = v28;
    *(v11 + 1) = v25;
    v11[32] = v14;
    v15 = *(v31 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 32);
    v26 = *(v31 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 16);
    v29 = *(v31 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect);
    swift_beginAccess();
    *v9 = v29;
    *(v9 + 1) = v26;
    v9[32] = v15;
    v16 = *(v31 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 32);
    v27 = *(v31 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 16);
    v30 = *(v31 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect);
    swift_beginAccess();
    *v10 = v30;
    *(v10 + 1) = v27;
    v10[32] = v16;
    v18 = *(v31 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v17 = *(v31 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);
    swift_beginAccess();
    *v12 = v18;
    v12[1] = v17;

    swift_beginAccess();
    *v13 = 0;
    v13[1] = 0;

    v20 = (*(*v31 + 456))(v19);
    v22 = v21;
    swift_beginAccess();
    *v8 = v20;
    v8[8] = v22 & 1;
    v23 = specialized AssetViewModel.init(dbObject:)(v31, a2);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return v23;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientVideoViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientVideoViewModel());
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientVideoViewModel.init(dbObject:)(v9, v10, a3, a4);
}

void specialized ClientVideoViewModel.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_videoDurationSeconds;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_portraitCropRect;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_landscapeCropRect;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  v4 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_squareCropRect;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  v5 = (v0 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_cloudIdentifier);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_localIdentifier);
  *v6 = 0;
  v6[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for ClientVideoViewModel()
{
  result = type metadata singleton initialization cache for ClientVideoViewModel;
  if (!type metadata singleton initialization cache for ClientVideoViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ClientVideoViewModel.portraitCropRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x270);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of ClientVideoViewModel.landscapeCropRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x288);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of ClientVideoViewModel.squareCropRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x2A0);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

void *TransferStateOfMindViewModel.stateOfMind.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_stateOfMind;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferStateOfMindViewModel.stateOfMind.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_stateOfMind;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TransferStateOfMindViewModel.lightBackgroundColors.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

MomentsUI::TransferStateOfMindViewModel::CodingKeys_optional __swiftcall TransferStateOfMindViewModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferStateOfMindViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t TransferStateOfMindViewModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x4D664F6574617473;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000014;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TransferStateOfMindViewModel.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000014;
  v3 = *a1;
  v4 = 0x80000002165762A0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (v3 == 1)
  {
    v6 = 0x80000002165762A0;
  }

  else
  {
    v6 = 0x80000002165762C0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4D664F6574617473;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEB00000000646E69;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x80000002165762C0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x4D664F6574617473;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000646E69;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferStateOfMindViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TransferStateOfMindViewModel.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferStateOfMindViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferStateOfMindViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferStateOfMindViewModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TransferStateOfMindViewModel.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646E69;
  v4 = 0x80000002165762A0;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x80000002165762C0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4D664F6574617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TransferStateOfMindViewModel.CodingKeys()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4D664F6574617473;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferStateOfMindViewModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferStateOfMindViewModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferStateOfMindViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferStateOfMindViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id TransferStateOfMindViewModel.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_stateOfMind;
  *(v1 + OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_stateOfMind) = 0;
  v5 = OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_lightBackgroundColors;
  *(v1 + OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_lightBackgroundColors) = 0;
  v6 = OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_darkBackgroundColors;
  *(v1 + OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_darkBackgroundColors) = 0;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKStateOfMind);
  v7 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v8 = *(v2 + v4);
  *(v2 + v4) = v7;

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIColor);
  v9 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  swift_beginAccess();
  *(v2 + v5) = v9;

  v10 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  swift_beginAccess();
  *(v2 + v6) = v10;

  v11 = specialized AssetViewModel.init(coder:)(a1);

  return v11;
}

Swift::Void __swiftcall TransferStateOfMindViewModel.encode(with:)(NSCoder with)
{
  AssetViewModel.encode(with:)(with);
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x220))();
  v5 = MEMORY[0x21CE91FC0](0x4D664F6574617473, 0xEB00000000646E69);
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  if ((*((*v3 & *v1) + 0x238))())
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIColor);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x80000002165762A0);
  [(objc_class *)with.super.isa encodeObject:v6.super.isa forKey:v7];
  swift_unknownObjectRelease();

  if ((*((*v3 & *v1) + 0x250))())
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIColor);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x80000002165762C0);
  [(objc_class *)with.super.isa encodeObject:v8.super.isa forKey:v9];
  swift_unknownObjectRelease();
}

void TransferStateOfMindViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_stateOfMind) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_lightBackgroundColors) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_darkBackgroundColors) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferStateOfMindViewModel.init(dbObject:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_stateOfMind) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_lightBackgroundColors) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_darkBackgroundColors) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TransferStateOfMindViewModel.init(stateOfMindViewModel:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_stateOfMind;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_stateOfMind] = 0;
  v10 = OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_lightBackgroundColors;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_lightBackgroundColors] = 0;
  v11 = OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_darkBackgroundColors;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferStateOfMindViewModel_darkBackgroundColors] = 0;
  v12 = swift_getObjectType();
  v13 = (*(a2 + 16))(v12, a2);
  swift_beginAccess();
  v14 = *&v3[v9];
  *&v3[v9] = v13;

  v15 = (*(a2 + 56))(v12, a2);
  swift_beginAccess();
  *&v3[v10] = v15;

  v16 = (*(a2 + 64))(v12, a2);
  swift_beginAccess();
  *&v3[v11] = v16;

  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v17 = static ScreenSize.zero;
  v18 = (*(a2 + 72))(v12, a2);
  v19 = *((*MEMORY[0x277D85000] & *a1) + 0xD0);
  v20 = a1;
  v36 = v19();
  v22 = v21;

  (*(*(a2 + 8) + 24))(v12);
  v37 = *(v20 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v23 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v24 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v26 = type metadata accessor for DateInterval();
  (*(*(v26 - 8) + 56))(&v3[v25], 1, 1, v26);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v17;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v27 = v8;
  v28 = *&v3[v23];
  *&v3[v23] = v18;
  v29 = v17;
  v30 = v18;

  swift_beginAccess();
  *v24 = v36;
  v24[1] = v22;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v27, &v3[v25]);
  v31 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v37;
  (*(ObjectType + 328))(v40, v31);
  LOBYTE(v28) = v40[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v32 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v32 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v32 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v32 + 112) = v28;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v32;
  v33 = type metadata accessor for AssetViewModel();
  v39.receiver = v3;
  v39.super_class = v33;
  v34 = objc_msgSendSuper2(&v39, sel_init);

  outlined destroy of DateInterval?(v27);
  return v34;
}

uint64_t TransferStateOfMindViewModel.__ivar_destroyer()
{
}

id TransferStateOfMindViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferStateOfMindViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized TransferStateOfMindViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferStateOfMindViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for TransferStateOfMindViewModel()
{
  result = type metadata singleton initialization cache for TransferStateOfMindViewModel;
  if (!type metadata singleton initialization cache for TransferStateOfMindViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferStateOfMindViewModel.CodingKeys and conformance TransferStateOfMindViewModel.CodingKeys);
  }

  return result;
}

uint64_t DBVideoModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseVideo:videoDurationSeconds:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, void (**a3)(void, void, void, void), uint64_t a4, char *a5, char *a6, uint64_t a7, void *a8, unsigned int (**a9)(uint64_t, uint64_t, id), char a10, void *a11, _OWORD *a12, _OWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 *a19)
{
  swift_allocObject();
  v23 = specialized DBVideoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseVideo:videoDurationSeconds:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10 & 1, a11, a12, a13, a14, a15, a16, a17, a18, a19);

  return v23;
}

uint64_t static DBVideoModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
  v5 = (a2 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
  v6 = v5[1];
  result = (v4 | v6) == 0;
  if (v4)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (*v3 == *v5 && v4 == v6)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t DBVideoModel.videoDurationSeconds.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI12DBVideoModel_videoDurationSeconds;
  swift_beginAccess();
  return *v1;
}

uint64_t DBVideoModel.videoDurationSeconds.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI12DBVideoModel_videoDurationSeconds;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

BOOL DBVideoModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBVideoModel.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL DBVideoModel.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBVideoModel.CodingKeys.init(stringValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBVideoModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBVideoModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBVideoModel.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance DBVideoModel.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBVideoModel.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance DBVideoModel.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBVideoModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBVideoModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBVideoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseVideo:videoDurationSeconds:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, void (**a3)(void, void, void, void), uint64_t a4, char *a5, char *a6, uint64_t a7, void *a8, unsigned int (**a9)(uint64_t, uint64_t, id), char a10, void *a11, _OWORD *a12, _OWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 *a19)
{
  v21 = specialized DBVideoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseVideo:videoDurationSeconds:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10 & 1, a11, a12, a13, a14, a15, a16, a17, a18, a19);

  return v21;
}

Swift::Int DBVideoModel.metadataHash.getter()
{
  Hasher.init()();
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher.finalize()();
}

uint64_t DBVideoModel.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBVideoModelC10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-1] - v6;
  v8 = v1 + OBJC_IVAR____TtC9MomentsUI12DBVideoModel_videoDurationSeconds;
  *v8 = 0;
  *(v8 + 8) = 1;
  outlined init with copy of DBObject(a1, v16);
  v9 = DBPhotosFamilyModel.init(from:)(v16);
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    v14 = v9 + OBJC_IVAR____TtC9MomentsUI12DBVideoModel_videoDurationSeconds;
    swift_beginAccess();
    *v14 = v11;
    *(v14 + 8) = v13 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t DBVideoModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBVideoModelC10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  result = DBPhotosFamilyModel.encode(to:)(a1);
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys();
    v9 = dispatch thunk of Encoder.container<A>(keyedBy:)();
    (*(*v1 + 456))(v9);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t DBVideoModel.deinit()
{
  v0 = DBAssetModel.deinit();

  return v0;
}

uint64_t DBVideoModel.__deallocating_deinit()
{
  DBAssetModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized DBVideoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseVideo:videoDurationSeconds:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, void (**a3)(void, void, void, void), uint64_t a4, char *a5, char *a6, uint64_t a7, void *a8, unsigned int (**a9)(uint64_t, uint64_t, id), char a10, void *a11, _OWORD *a12, _OWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 *a19)
{
  v20 = v19;
  v175 = a7;
  v181 = a6;
  v180 = a5;
  v191 = a3;
  v176 = a2;
  v177 = a1;
  v192 = 0;
  v197 = a11;
  v190 = *v20;
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v161 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v26 - 8);
  *&v195 = &v159 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v28 - 8);
  v194 = &v159 - v29;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v171 = *(v193 - 8);
  v30 = MEMORY[0x28223BE20](v193);
  v160 = &v159 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v159 = &v159 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v33 - 8);
  v170 = (&v159 - v34);
  v189 = type metadata accessor for DateInterval();
  v188 = *(v189 - 8);
  v35 = MEMORY[0x28223BE20](v189);
  v174 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v159 - v37;
  v39 = type metadata accessor for UUID();
  v187 = *(v39 - 1);
  v40 = MEMORY[0x28223BE20](v39);
  v182 = &v159 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v185 = &v159 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v173 = &v159 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v186 = &v159 - v47;
  MEMORY[0x28223BE20](v46);
  v184 = &v159 - v48;
  LODWORD(v179) = *a19;
  v49 = &v20[OBJC_IVAR____TtC9MomentsUI12DBVideoModel_videoDurationSeconds];
  *v49 = 0;
  v49[8] = 1;
  v50 = MEMORY[0x277D84F90];
  v51 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v52 = v51;
  v163 = v23;
  v162 = v24;
  v172 = v50;
  if (a8)
  {
    v53 = a8;
    v54 = Video.assetData.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v202 = v52;
    v56 = v192;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v54, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v202);

    *&v196 = v202;
  }

  else
  {
    *&v196 = v51;
    v56 = v192;
  }

  v57 = a10;
  v58 = a9;
  v59 = v197;
  if (v197)
  {
    v60 = v197;
    v192 = a9;
    v61 = v60;
    v62 = specialized static DBAssetModel.baseImage2DB(_:)(v59);
    v63 = v38;
    v64 = v20;
    v65 = v56;
    v66 = v196;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v66;
    v56 = v65;
    v20 = v64;
    v38 = v63;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v62, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v67, &v202);

    v57 = a10;
    v58 = v192;

    *&v196 = v202;
  }

  v192 = v56;
  v178 = v20;
  v167 = a14;
  v166 = a13;
  v165 = a12;
  swift_beginAccess();
  *v49 = v58;
  v49[8] = v57 & 1;
  v68 = (v187 + 16);
  v69 = *(v187 + 16);
  v69(v184, v177, v39);
  v197 = v39;
  v169 = v68;
  v168 = v69;
  v69(v186, v176, v39);
  v70 = *(a4 + 16);
  v183 = v38;
  if (v70)
  {
    v71 = v189;
    v200 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
    v72 = v200;
    v73 = *(v200 + 16);
    v74 = 32;
    v75 = v181;
    do
    {
      v76 = *(a4 + v74);
      v200 = v72;
      v77 = *(v72 + 24);
      if (v73 >= v77 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v73 + 1, 1);
        v72 = v200;
      }

      *(v72 + 16) = v73 + 1;
      *(v72 + v73 + 32) = v76;
      ++v74;
      ++v73;
      --v70;
    }

    while (v70);

    v78 = v71;
    v38 = v183;
  }

  else
  {

    v72 = MEMORY[0x277D84F90];
    v75 = v181;
    v78 = v189;
  }

  v164 = a18;
  v79 = v180;
  if (!v75)
  {
    v79 = 0;
  }

  v181 = v79;
  v80 = 0xE000000000000000;
  if (v75)
  {
    v80 = v75;
  }

  v180 = v80;
  v81 = v170;
  outlined init with copy of DateInterval?(v175, v170);
  v82 = v188;
  v83 = *(v188 + 48);
  if (v83(v81, 1, v78) == 1)
  {
    DateInterval.init()();
    if (v83(v81, 1, v78) != 1)
    {
      outlined destroy of UTType?(v81, &_s10Foundation12DateIntervalVSgMd);
    }
  }

  else
  {
    (*(v82 + 32))(v38, v81, v78);
  }

  v84 = v178;
  v85 = &v178[OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect];
  v86 = v165;
  v87 = v165[1];
  *v85 = *v165;
  *(v85 + 1) = v87;
  v85[32] = *(v86 + 32);
  v88 = &v84[OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect];
  v89 = v166;
  v90 = v166[1];
  *v88 = *v166;
  *(v88 + 1) = v90;
  v88[32] = *(v89 + 32);
  v91 = &v84[OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect];
  v92 = v167;
  v91[32] = *(v167 + 32);
  v93 = v92[1];
  *v91 = *v92;
  *(v91 + 1) = v93;
  v94 = &v84[OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier];
  *v94 = a15;
  *(v94 + 1) = a16;
  v95 = &v84[OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier];
  v96 = v164;
  *v95 = a17;
  *(v95 + 1) = v96;
  v97 = v173;
  v98 = v197;
  v99 = v168;
  v168(v173, v184, v197);
  v99(v185, v186, v98);
  v167 = type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(v190, &v201);
  v100 = v201;
  v170 = *(v188 + 16);
  v101 = v174;
  v102 = v189;
  (v170)(v174, v183, v189);
  v84[16] = 0;
  v190 = (v84 + 16);
  v166 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v99(&v84[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id], v97, v98);
  v165 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v99(&v84[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID], v185, v98);
  v84[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass] = v100;
  v103 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport;
  v104 = v191;
  *&v84[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport] = v191;
  *&v84[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles] = v72;
  v105 = v84;
  v106 = &v84[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle];
  v107 = v180;
  *v106 = v181;
  *(v106 + 1) = v107;
  v108 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval;
  (v170)(&v105[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval], v101, v102);
  v109 = v104;
  v110 = v196;
  v111 = v192;
  v112 = specialized Dictionary.compactMapValues<A>(_:)(v196);
  v113 = &v198;
  v169 = v111;
  if (v111)
  {
LABEL_46:

    v157 = *(v187 + 8);
    v158 = v197;
    v157(v166 + v105, v197);
    v157(v165 + v105, v158);

    (*(v188 + 8))(&v105[v108], v189);
    swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    *&v105[OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID] = v112;
    *&v105[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children] = MEMORY[0x277D84F90];
    v114 = v112;
    swift_beginAccess();
    v105[16] = v179;
    v105 = (v110 + 64);
    v115 = 1 << *(v110 + 32);
    v116 = -1;
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    v117 = v116 & *(v110 + 64);
    v118 = (v115 + 63) >> 6;
    v192 = (v187 + 48);
    v180 = (v187 + 32);
    v191 = (v171 + 56);
    v190 = (v171 + 48);
    v170 = v114;

    v113 = 0;
    v119 = v110;
    v181 = (v110 + 64);
    v179 = v118;
    while (v117)
    {
      v120 = v113;
LABEL_30:
      v121 = *(*(v119 + 56) + 8 * (__clz(__rbit64(v117)) | (v120 << 6)));
      v122 = *(*v121 + 192);

      v124 = v195;
      v122(v123);
      v108 = v197;
      if ((*v192)(v124, 1, v197) == 1)
      {
        outlined destroy of UTType?(v124, &_s10Foundation4UUIDVSgMd);
        v103 = v194;
        v125 = v193;
        (*v191)(v194, 1, 1, v193);
      }

      else
      {
        v126 = *v180;
        v127 = v182;
        (*v180)(v182, v124, v108);
        v128 = v108;
        v125 = v193;
        v108 = *(v193 + 48);
        v103 = v194;
        v129 = v127;
        v119 = v196;
        v126(v194, v129, v128);
        v118 = v179;
        v105 = v181;
        *(v103 + v108) = v121;
        (*v191)(v103, 0, 1, v125);
      }

      v117 &= v117 - 1;

      if ((*v190)(v103, 1, v125) == 1)
      {
        outlined destroy of UTType?(v103, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
        v113 = v120;
      }

      else
      {
        v130 = v159;
        outlined init with take of (UUID, DBAssetData)(v103, v159);
        outlined init with take of (UUID, DBAssetData)(v130, v160);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v172[2] + 1, 1, v172);
        }

        v132 = v172[2];
        v131 = v172[3];
        if (v132 >= v131 >> 1)
        {
          v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v131 > 1, v132 + 1, 1, v172);
        }

        v133 = v172;
        v172[2] = v132 + 1;
        outlined init with take of (UUID, DBAssetData)(v160, v133 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v132);
        v113 = v120;
      }
    }

    while (1)
    {
      v120 = v113 + 1;
      if (__OFADD__(v113, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v120 >= v118)
      {
        break;
      }

      v117 = *&v105[8 * v120];
      v113 = (v113 + 1);
      if (v117)
      {
        goto LABEL_30;
      }
    }

    if (v172[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
      v134 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v134 = MEMORY[0x277D84F98];
    }

    v135 = v178;
    v136 = v189;
    v137 = v188;
    v138 = v183;
    v199 = v134;

    v140 = v169;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v139, 1, &v199);
    if (!v140)
    {

      v141 = v199;
      v142 = swift_allocObject();
      *(v142 + 16) = v141;
      v143 = &v135[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup];
      *v143 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
      v143[1] = v142;
      v144 = swift_allocObject();
      *(v144 + 16) = v141;
      v145 = &v135[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet];
      *v145 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
      v145[1] = v144;
      v146 = &v135[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet];
      *v146 = closure #3 in DBAssetModel.init(from:);
      *(v146 + 1) = 0;
      v147 = swift_allocObject();
      *(v147 + 16) = v170;
      swift_beginAccess();
      v196 = *v143;
      swift_beginAccess();
      v195 = *v145;
      swift_beginAccess();
      v148 = *v146;
      v149 = *(v146 + 1);
      v150 = &v135[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData];
      *v150 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
      *(v150 + 1) = v147;
      v151 = v195;
      *(v150 + 1) = v196;
      *(v150 + 2) = v151;
      *(v150 + 6) = v148;
      *(v150 + 7) = v149;

      v152 = v161;
      static Date.now.getter();
      outlined destroy of UTType?(v175, &_s10Foundation12DateIntervalVSgMd);
      v153 = *(v187 + 8);
      v154 = v197;
      v153(v176, v197);
      v153(v177, v154);
      v155 = *(v137 + 8);
      v155(v174, v136);
      v153(v185, v154);
      v153(v173, v154);
      v155(v138, v136);
      v153(v186, v154);
      v153(v184, v154);
      (*(v162 + 32))(&v135[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate], v152, v163);
      return v135;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBVideoModel.CodingKeys and conformance DBVideoModel.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBVideoModel()
{
  result = type metadata singleton initialization cache for DBVideoModel;
  if (!type metadata singleton initialization cache for DBVideoModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DBPosterModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_spotlightIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_spotlightIdentifier + 8);
  v5 = (a2 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_spotlightIdentifier);
  v6 = v5[1];
  result = (v4 | v6) == 0;
  if (v4)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (*v3 == *v5 && v4 == v6)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t DBPosterModel.spotlightIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_spotlightIdentifier);

  return v1;
}

uint64_t DBPosterModel.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_bundleID);

  return v1;
}

uint64_t DBPosterModel.locationDisplayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_locationDisplayName);

  return v1;
}

MomentsUI::DBPosterModel::CodingKeys_optional __swiftcall DBPosterModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBPosterModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t DBPosterModel.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7461447472617473;
  v2 = 0x7475626972747461;
  if (a1 != 5)
  {
    v2 = 0x4449656C646E7562;
  }

  v3 = 0x74736F487369;
  if (a1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0x65746144646E65;
  }

  if (!a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBPosterModel.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = DBPosterModel.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == DBPosterModel.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBPosterModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBPosterModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBPosterModel.CodingKeys()
{
  DBPosterModel.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBPosterModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBPosterModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBPosterModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBPosterModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DBPosterModel.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = DBPosterModel.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBPosterModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DBPosterModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBPosterModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBPosterModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBPosterModel.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI13DBPosterModelC10CodingKeysOGMd);
  MEMORY[0x28223BE20](v31);
  v12 = v30 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys();
  v15 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
    type metadata accessor for DBPosterModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v8;
    LOBYTE(v34[0]) = 0;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = v33;
    v20 = (v33 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_spotlightIdentifier);
    *v20 = v17;
    v20[1] = v21;
    LOBYTE(v34[0]) = 6;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = (v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_bundleID);
    *v23 = v22;
    v23[1] = v24;
    v25 = type metadata accessor for Date();
    LOBYTE(v34[0]) = 1;
    v26 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v32 = v25;
    v30[1] = v26;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of URL?(v10, v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_startDate, &_s10Foundation4DateVSgMd);
    LOBYTE(v34[0]) = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of URL?(v16, v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_endDate, &_s10Foundation4DateVSgMd);
    LOBYTE(v34[0]) = 3;
    *(v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_isHost) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v34[0]) = 4;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = (v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_locationDisplayName);
    *v28 = v27;
    v28[1] = v29;
    type metadata accessor for AttributedString();
    LOBYTE(v34[0]) = 5;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of URL?(v4, v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_attributedTitle, &_s10Foundation16AttributedStringVSgMd);
    KeyedDecodingContainer.superDecoder()();
    v13 = DBAssetModel.init(from:)(v34);
    MEMORY[8](v12, v31);
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  return v13;
}

uint64_t DBPosterModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI13DBPosterModelC10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-1] - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v9[0]) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    LOBYTE(v9[0]) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v9[0]) = 1;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v9[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v9[0]) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v9[0]) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v9[0]) = 5;
    type metadata accessor for AttributedString();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    KeyedEncodingContainer.superEncoder()();
    DBAssetModel.encode(to:)(v9);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int DBPosterModel.metadataHash.getter()
{
  v1 = type metadata accessor for AttributedString();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  Hasher.init()();
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_spotlightIdentifier + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_bundleID + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  outlined init with copy of DateInterval?(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_startDate, v15, &_s10Foundation4DateVSgMd);
  v16 = *(v7 + 48);
  if (v16(v15, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v7 + 32))(v9, v15, v6);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v9, v6);
  }

  outlined init with copy of DateInterval?(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_endDate, v13, &_s10Foundation4DateVSgMd);
  if (v16(v13, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v7 + 32))(v9, v13, v6);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v9, v6);
  }

  v17 = *(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_isHost);
  if (v17 == 2)
  {
    v18 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v18 = v17 & 1;
  }

  v19 = v25;
  Hasher._combine(_:)(v18);
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_locationDisplayName + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  outlined init with copy of DateInterval?(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_attributedTitle, v5, &_s10Foundation16AttributedStringVSgMd);
  v20 = v24;
  if ((*(v24 + 48))(v5, 1, v19) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v21 = v23;
    (*(v20 + 32))(v23, v5, v19);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v20 + 8))(v21, v19);
  }

  return Hasher.finalize()();
}

uint64_t DBPosterModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseDateInterval:baseTitle:posterImage:spotlightIdentifier:bundleID:startDate:endDate:isHost:locationDisplayName:attributedTitle:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, void *), uint64_t a4, uint64_t a5, unsigned int (**a6)(uint64_t, uint64_t, uint64_t), unint64_t a7, void *a8, uint64_t a9, unint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, void (**a17)(void), uint64_t a18, unsigned __int8 *a19)
{
  swift_allocObject();
  v23 = specialized DBPosterModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseDateInterval:baseTitle:posterImage:spotlightIdentifier:bundleID:startDate:endDate:isHost:locationDisplayName:attributedTitle:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);

  return v23;
}

uint64_t DBPosterModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseDateInterval:baseTitle:posterImage:spotlightIdentifier:bundleID:startDate:endDate:isHost:locationDisplayName:attributedTitle:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, void *), uint64_t a4, uint64_t a5, unsigned int (**a6)(uint64_t, uint64_t, uint64_t), unint64_t a7, void *a8, uint64_t a9, unint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, void (**a17)(void), uint64_t a18, unsigned __int8 *a19)
{
  v21 = specialized DBPosterModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseDateInterval:baseTitle:posterImage:spotlightIdentifier:bundleID:startDate:endDate:isHost:locationDisplayName:attributedTitle:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);

  return v21;
}

uint64_t DBPosterModel.__ivar_destroyer()
{

  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_startDate, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_endDate, &_s10Foundation4DateVSgMd);

  return outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_attributedTitle, &_s10Foundation16AttributedStringVSgMd);
}

uint64_t DBPosterModel.deinit()
{
  v0 = DBAssetModel.deinit();

  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_startDate, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_endDate, &_s10Foundation4DateVSgMd);

  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_attributedTitle, &_s10Foundation16AttributedStringVSgMd);
  return v0;
}

uint64_t DBPosterModel.__deallocating_deinit()
{
  v0 = DBAssetModel.deinit();

  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_startDate, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_endDate, &_s10Foundation4DateVSgMd);

  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_attributedTitle, &_s10Foundation16AttributedStringVSgMd);

  return swift_deallocClassInstance();
}

unint64_t specialized DBPosterModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBPosterModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBPosterModel.CodingKeys and conformance DBPosterModel.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBPosterModel()
{
  result = type metadata singleton initialization cache for DBPosterModel;
  if (!type metadata singleton initialization cache for DBPosterModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized DBPosterModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseDateInterval:baseTitle:posterImage:spotlightIdentifier:bundleID:startDate:endDate:isHost:locationDisplayName:attributedTitle:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, void *), uint64_t a4, uint64_t a5, unsigned int (**a6)(uint64_t, uint64_t, uint64_t), unint64_t a7, void *a8, uint64_t a9, unint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, void (**a17)(void), uint64_t a18, unsigned __int8 *a19)
{
  v20 = v19;
  v140 = a8;
  v135 = a7;
  v136 = a6;
  v127 = a5;
  *&v142 = a4;
  v137 = a3;
  v128 = a2;
  v129 = a1;
  v132 = a17;
  v131 = a16;
  LODWORD(v130) = a15;
  v124 = a12;
  v121 = a11;
  v118 = a10;
  v126 = a18;
  v134 = *v19;
  v116 = type metadata accessor for Date();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v22 - 8);
  *&v141 = &v107 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v24 - 8);
  v139 = &v107 - v25;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v120 = *(v138 - 8);
  v26 = MEMORY[0x28223BE20](v138);
  v108 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v107 = &v107 - v28;
  v125 = type metadata accessor for DateInterval();
  v29 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 1);
  v33 = MEMORY[0x28223BE20](v31);
  v133 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v107 - v36;
  v122 = &v107 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v107 - v38;
  LODWORD(v119) = *a19;
  v40 = (v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_spotlightIdentifier);
  v41 = v118;
  *v40 = a9;
  v40[1] = v41;
  v42 = (v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_bundleID);
  v43 = v124;
  *v42 = v121;
  v42[1] = v43;
  v113 = a13;
  outlined init with copy of DateInterval?(a13, v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_startDate, &_s10Foundation4DateVSgMd);
  v112 = a14;
  outlined init with copy of DateInterval?(a14, v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_endDate, &_s10Foundation4DateVSgMd);
  *(v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_isHost) = v130;
  v44 = (v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_locationDisplayName);
  v45 = v132;
  *v44 = v131;
  v44[1] = v45;
  outlined init with copy of DateInterval?(v126, v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_attributedTitle, &_s10Foundation16AttributedStringVSgMd);
  v124 = v32;
  v46 = *(v32 + 16);
  v46(v39, v129, v31);
  v46(v37, v128, v31);
  v132 = type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(v134, &v144);
  v47 = v144;
  v48 = v136;
  if (!v135)
  {
    v48 = 0;
  }

  v134 = v48;
  v49 = 0xE000000000000000;
  if (v135)
  {
    v49 = v135;
  }

  v135 = v49;
  v111 = v29;
  v50 = *(v29 + 16);
  v51 = v123;
  v52 = v125;
  v50(v123, v127, v125);
  v118 = specialized static DBAssetModel.baseImage2DB(_:)(v140);
  *(v20 + 16) = 0;
  v136 = (v20 + 2);
  v131 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v110 = v39;
  v46(v20 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id, v39, v31);
  v130 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v140 = v31;
  v46(v20 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID, v122, v31);
  *(v20 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v47;
  v53 = v137;
  *(v20 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v137;
  *(v20 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v142;
  v54 = (v20 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v55 = v135;
  *v54 = v134;
  v54[1] = v55;
  v56 = v52;
  v57 = v118;
  v50(v20 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval, v51, v56);
  v58 = v53;
  v59 = specialized Dictionary.compactMapValues<A>(_:)(v57);
  v109 = 0;
  *(v20 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v59;
  v121 = MEMORY[0x277D84F90];
  *(v20 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = MEMORY[0x277D84F90];
  v60 = 1;
  v61 = v59;
  swift_beginAccess();
  v117 = v20;
  *(v20 + 16) = v119;
  v62 = v57 + 64;
  v63 = 1 << *(v57 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v57 + 64);
  v66 = (v63 + 63) >> 6;
  v137 = (v124 + 48);
  v132 = (v124 + 32);
  v67 = (v120 + 56);
  v136 = (v120 + 48);
  v119 = v61;

  v68 = 0;
  v69 = v141;
  v134 = v66;
  v131 = v57 + 64;
  v130 = v67;
  while (v65)
  {
    v70 = v68;
LABEL_13:
    v71 = __clz(__rbit64(v65)) | (v70 << 6);
    v60 = *(*(v57 + 56) + 8 * v71);
    v72 = *(*v60 + 192);
    *&v142 = *(*(v57 + 48) + 16 * v71 + 8);

    v72(v73);
    v74 = v140;
    if ((*v137)(v69, 1, v140) == 1)
    {
      outlined destroy of UTType?(v69, &_s10Foundation4UUIDVSgMd);
      v75 = v139;
      v76 = v138;
      (*v67)(v139, 1, 1, v138);
    }

    else
    {
      v77 = *v132;
      (*v132)(v133, v141, v74);
      v76 = v138;
      v135 = *(v138 + 48);
      v62 = v131;
      v66 = v134;
      v75 = v139;
      v77();
      v67 = v130;
      v69 = v141;
      *(v75 + v135) = v60;
      (*v67)(v75, 0, 1, v76);
    }

    v65 &= v65 - 1;

    if ((*v136)(v75, 1, v76) == 1)
    {
      outlined destroy of UTType?(v75, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
      v68 = v70;
    }

    else
    {
      v78 = v107;
      outlined init with take of URL?(v75, v107, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
      outlined init with take of URL?(v78, v108, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
      }

      v60 = v121[2];
      v79 = v121[3];
      v80 = v120;
      if (v60 >= v79 >> 1)
      {
        v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v79 > 1, v60 + 1, 1, v121);
        v80 = v120;
        v121 = v82;
      }

      v81 = v121;
      v121[2] = v60 + 1;
      outlined init with take of URL?(v108, v81 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v60, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
      v68 = v70;
      v66 = v134;
    }
  }

  while (1)
  {
    v70 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      __break(1u);

      v105 = *(v124 + 8);
      v106 = v140;
      v105(v60 + v131, v140);
      v105(v60 + v130, v106);

      (*(v111 + 8))(v60 + v66, v125);
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_29;
    }

    if (v70 >= v66)
    {
      break;
    }

    v65 = *(v62 + 8 * v70);
    ++v68;
    if (v65)
    {
      goto LABEL_13;
    }
  }

  v83 = v124;
  if (v121[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
    v84 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v84 = MEMORY[0x277D84F98];
  }

  v143 = v84;

  v86 = v109;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v85, 1, &v143);
  if (!v86)
  {

    v87 = v143;
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    v89 = v117;
    v90 = (v117 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v90 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v90[1] = v88;
    v91 = swift_allocObject();
    *(v91 + 16) = v87;
    v92 = (v89 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v92 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v92[1] = v91;
    v93 = (v89 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v93 = closure #3 in DBAssetModel.init(from:);
    v93[1] = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = v119;
    swift_beginAccess();
    v142 = *v90;
    swift_beginAccess();
    v141 = *v92;
    swift_beginAccess();
    v95 = *v93;
    v96 = v93[1];
    v97 = v89 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v97 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    *(v97 + 8) = v94;
    v98 = v141;
    *(v97 + 16) = v142;
    *(v97 + 32) = v98;
    *(v97 + 48) = v95;
    *(v97 + 56) = v96;

    v99 = v114;
    static Date.now.getter();
    outlined destroy of UTType?(v126, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of UTType?(v112, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v113, &_s10Foundation4DateVSgMd);
    v100 = *(v111 + 8);
    v101 = v125;
    v100(v127, v125);
    v102 = *(v83 + 8);
    v103 = v140;
    v102(v128, v140);
    v102(v129, v103);
    v100(v123, v101);
    v102(v122, v103);
    v102(v110, v103);
    (*(v115 + 32))(v89 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v99, v116);
    return v89;
  }

LABEL_29:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void type metadata completion function for DBPosterModel()
{
  type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date?(319, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x277CC8C40]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t closure #1 in variable initialization expression of static SuggestionListCollectionViewCell.registration(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x128);

  return v1(v2);
}

uint64_t static SuggestionListCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024SuggestionListCollectionbD0CAF06MosaichB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static SuggestionListCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id SuggestionListCollectionViewCell.platterView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_platterView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SuggestionListCollectionViewCell.platterView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_platterView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SuggestionListCollectionViewCell.isLastItemInSection.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_isLastItemInSection;
  swift_beginAccess();
  return *(v0 + v1);
}

id SuggestionListCollectionViewCell.isLastItemInSection.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_isLastItemInSection;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return [*(v1 + OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_separatorView) setHidden_];
}

void (*SuggestionListCollectionViewCell.isLastItemInSection.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_isLastItemInSection;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return SuggestionListCollectionViewCell.isLastItemInSection.modify;
}

void SuggestionListCollectionViewCell.isLastItemInSection.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_separatorView) setHidden_];
  }

  free(v3);
}

id SuggestionListCollectionViewCell.assetView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_assetView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SuggestionListCollectionViewCell.assetView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_assetView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SuggestionListCollectionViewCell.viewModel.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v46 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v48 = v4;
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x68))();
  v9 = (*(*v6 + 424))();
  v10 = MEMORY[0x21CE91FC0](v9);

  [v8 setText_];

  v11 = (*((*v7 & *v1) + 0x80))();
  v12 = (*(*v6 + 432))();
  v13 = MEMORY[0x21CE91FC0](v12);

  [v11 setText_];

  v14 = *((*v7 & *v1) + 0xD8);
  v46[1] = (*v7 & *v1) + 216;
  v47 = v14;
  v15 = v14();
  v16 = [v15 subviews];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIView);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    v18 = __CocoaSet.count.getter();
    if (!v18)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_11;
    }
  }

  if (v18 < 1)
  {
    __break(1u);
    goto LABEL_33;
  }

  for (i = 0; i != v18; ++i)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x21CE93180](i, v17);
    }

    else
    {
      v20 = *(v17 + 8 * i + 32);
    }

    v21 = v20;
    [v20 removeFromSuperview];
  }

LABEL_11:

  v23 = (*(*v6 + 392))(v22);
  (*((*v7 & *v1) + 0xF8))(v23 & 1);
  v24 = *(*v6 + 304);

  v15 = v24(v25);

  if (!v15)
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_15;
    }

LABEL_30:
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_33:
    v26 = MEMORY[0x21CE93180](0, v15);
LABEL_18:
    v27 = v26;

    LOBYTE(v49[0]) = 0;
    v28 = Asset.assetViewModelFor(style:)(v49);

    if (!v28)
    {
    }

    ObjectType = swift_getObjectType();
    v30 = swift_conformsToProtocol2();
    if (v30)
    {
      v31 = v30;
      v32 = *(v30 + 32);
      v33 = v28;
      v32(v49, ObjectType, v31);
      if (LOBYTE(v49[0]) == 1 || (v32(v49, ObjectType, v31), LOBYTE(v49[0]) == 2))
      {
        v34 = *(v1 + OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_playButton);
        v35 = (*(v31 + 24))(ObjectType, v31);
        v36 = (*((*v7 & *v34) + 0x60))(v35);
        (*((*v7 & *v1) + 0x140))(v36);

LABEL_25:
        LOBYTE(v49[0]) = 0;
        (*((*v7 & *v28) + 0x108))(v49);
        LOBYTE(v49[0]) = 0;
        v37 = (*((*v7 & *v28) + 0x1E0))(v49);
        if (v37)
        {
          v38 = v37;
          v39 = v47();
          v40 = v38;
          [v39 addSubview_];

          v41 = [v40 layer];
          [v41 setCornerRadius_];

          UIView.fillSuper(horizontalMargin:verticalMargin:)(4.0, 4.0);

          v42 = type metadata accessor for TaskPriority();
          v43 = v48;
          (*(*(v42 - 8) + 56))(v48, 1, 1, v42);
          v44 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v45 = swift_allocObject();
          *(v45 + 16) = 0;
          *(v45 + 24) = 0;
          *(v45 + 32) = v44;
          *(v45 + 40) = 9;
          _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v43, &async function pointer to partial apply for closure #1 in AssetView.performViewModelUpdate(style:), v45);

          return outlined destroy of UTType?(v43, &_sScPSgMd);
        }
      }
    }

    [*(v1 + OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_playButton) setHidden_];
    goto LABEL_25;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v15 + 32);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t SuggestionListCollectionViewCell.viewModel.setter()
{
  swift_beginAccess();
  swift_weakAssign();
  SuggestionListCollectionViewCell.viewModel.didset();
}

void (*SuggestionListCollectionViewCell.viewModel.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_viewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return SuggestionListCollectionViewCell.viewModel.modify;
}

void SuggestionListCollectionViewCell.viewModel.modify(void **a1, char a2)
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

    SuggestionListCollectionViewCell.viewModel.didset();
  }

  free(v3);
}

id SuggestionListCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SuggestionListCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall SuggestionListCollectionViewCell.configureViews()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  v3 = v2();
  [v3 setNumberOfLines_];

  v4 = *((*v1 & *v0) + 0x80);
  v5 = v4();
  [v5 setNumberOfLines_];

  v6 = (*((*v1 & *v0) + 0x108))();
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  v7 = *(v0 + OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_stackView);
  v8 = v2();
  [v7 addArrangedSubview_];

  v9 = v4();
  [v7 addArrangedSubview_];

  v10 = v2();
  [v7 setCustomSpacing:v10 afterView:0.0];

  v11 = (*((*v1 & *v0) + 0xD8))();
  [v0 addSubview_];

  [v0 addSubview_];
  [v0 addSubview_];
  (*((*v1 & *v0) + 0x140))([v0 addSubview_]);
  v12 = *((*v1 & *v0) + 0x148);

  v12();
}

Swift::Void __swiftcall SuggestionListCollectionViewCell.setPlayButton()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_buttonHolder);
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_playButton);
  [v1 addArrangedSubview_];
  [v1 setCustomSpacing:v2 afterView:12.0];
  v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_stackView);
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v1 leadingAnchor];
  v5 = [v3 trailingAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  [v6 setConstant_];
  [v6 setActive_];

  v7 = [v1 superview];
  if (v7)
  {
    v8 = v7;
    [v1 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = [v1 trailingAnchor];
    v10 = [v8 trailingAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    [v11 &selRef:-12.0 setShadowPathIsBounds:? + 2];
    [v11 setActive_];
  }

  v12 = [v1 superview];
  if (v12)
  {
    v13 = v12;
    [v1 setTranslatesAutoresizingMaskIntoConstraints_];
    v14 = [v1 centerYAnchor];
    v15 = [v13 centerYAnchor];
    v16 = [v14 &selRef_safeAreaLayoutGuide + 5];

    [v16 &selRef:0.0 setShadowPathIsBounds:? + 2];
    [v16 setActive_];
  }

  [v2 setUserInteractionEnabled_];
  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_216597AD0;
  v19 = [v2 heightAnchor];
  v20 = [v2 widthAnchor];
  v21 = [v19 &selRef_safeAreaLayoutGuide + 5];

  *(v18 + 32) = v21;
  v22 = [v2 widthAnchor];
  v23 = [v22 constraintGreaterThanOrEqualToConstant_];

  *(v18 + 40) = v23;
  v24 = [v2 widthAnchor];
  v25 = [v24 constraintLessThanOrEqualToConstant_];

  *(v18 + 48) = v25;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints_];

  [v2 setHidden_];
}

Swift::Void __swiftcall SuggestionListCollectionViewCell.setupConstraints()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_stackView);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v3 = v2();
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v1 leadingAnchor];
  v5 = [v3 trailingAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  [v6 setConstant_];
  [v6 setActive_];

  v7 = [v1 superview];
  if (v7)
  {
    v8 = v7;
    [v1 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = [v1 centerYAnchor];
    v10 = [v8 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    [v11 setConstant_];
    [v11 setActive_];
  }

  v12 = v2();
  v13 = [v12 superview];
  if (v13)
  {
    v14 = v13;
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    v15 = [v12 leadingAnchor];
    v16 = [v14 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    [v17 setConstant_];
    if (v17)
    {
      [v17 setActive_];
    }

    v18 = &unk_27821E000;
  }

  else
  {
    v17 = 0;
    v14 = v12;
    v18 = &unk_27821E000;
  }

  v19 = v2();
  v20 = [v19 superview];
  if (v20)
  {
    v21 = v20;
    [v19 v18[440]];
    v22 = [v19 centerYAnchor];
    v23 = [v21 centerYAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    [v24 setConstant_];
    if (v24)
    {
      [v24 setActive_];
    }
  }

  else
  {
    v24 = 0;
    v21 = v19;
  }

  v49 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_216597AE0;
  v26 = v2();
  v27 = [v26 widthAnchor];

  v28 = [v27 constraintEqualToConstant_];
  *(v25 + 32) = v28;
  v29 = v2();
  v30 = [v29 heightAnchor];

  v31 = v2();
  v32 = [v31 widthAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v25 + 40) = v33;
  v34 = [v0 heightAnchor];
  v35 = [v34 &selRef:56.0 presentViewController:? animated:? completion:? + 1];

  *(v25 + 48) = v35;
  v36 = *(v0 + OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_separatorView);
  v37 = [v36 leadingAnchor];
  v38 = [v1 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v25 + 56) = v39;
  v40 = [v36 trailingAnchor];
  v41 = [v0 trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:-12.0];

  *(v25 + 64) = v42;
  v43 = [v36 topAnchor];
  v44 = v2();
  v45 = [v44 bottomAnchor];

  v46 = [v43 constraintEqualToAnchor:v45 constant:6.0];
  *(v25 + 72) = v46;
  v47 = [v36 heightAnchor];
  v48 = [v47 constraintEqualToConstant_];

  *(v25 + 80) = v48;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v49 activateConstraints_];
}

Swift::Void __swiftcall SuggestionListCollectionViewCell.handleTraitChange()()
{
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xD8))();
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  specialized static CommonTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v3, v2);
}

uint64_t SuggestionListCollectionViewCell.updateConfiguration(using:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - v4;
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x21CE92AE0](v8);
  v11 = *(v7 + 48);
  if (v11(v5, 1, v6) == 1)
  {
    static UIBackgroundConfiguration.clear()();
    if (v11(v5, 1, v6) != 1)
    {
      outlined destroy of UTType?(v5, &_s5UIKit25UIBackgroundConfigurationVSgMd);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
  }

  v12 = _UISolariumEnabled();
  v13 = objc_opt_self();
  v14 = &selRef_clearColor;
  if (!v12)
  {
    v14 = &selRef_systemBackgroundColor;
  }

  v15 = [v13 *v14];
  UIBackgroundConfiguration.backgroundColor.setter();
  (*(v7 + 16))(v3, v10, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  MEMORY[0x21CE92AF0](v3);
  return (*(v7 + 8))(v10, v6);
}

uint64_t SuggestionListCollectionViewCell.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id SuggestionListCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionListCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *specialized SuggestionListCollectionViewCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_stackView;
  v2 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAxis_];
  [v2 setAlignment_];
  [v2 setDistribution_];
  *&v0[v1] = v2;
  v3 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_buttonHolder;
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAxis_];
  [v4 setAlignment_];
  [v4 setDistribution_];
  *&v0[v3] = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_platterView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = [v6 traitCollection];
  v8 = [v7 userInterfaceStyle];

  specialized static CommonTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v6, v8);
  *&v0[v5] = v6;
  v0[OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_isLastItemInSection] = 0;
  v9 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_separatorView;
  type metadata accessor for SuggestionSeparatorView();
  *&v0[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_playButton;
  type metadata accessor for ListPlayButton();
  *&v0[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_assetView;
  *&v0[v11] = [objc_allocWithZone(type metadata accessor for AssetView()) init];
  swift_weakInit();
  v19.receiver = v0;
  v19.super_class = type metadata accessor for SuggestionListCollectionViewCell();
  v12 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = *((*MEMORY[0x277D85000] & *v12) + 0x138);
  v14 = v12;
  v13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21658CA50;
  v16 = type metadata accessor for UITraitUserInterfaceStyle();
  v17 = MEMORY[0x277D74BF0];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  MEMORY[0x21CE92C30](v15, sel_handleTraitChange);

  swift_unknownObjectRelease();

  return v14;
}

void specialized SuggestionListCollectionViewCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_stackView;
  v2 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAxis_];
  [v2 setAlignment_];
  [v2 setDistribution_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_buttonHolder;
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAxis_];
  [v4 setAlignment_];
  [v4 setDistribution_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_platterView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = [v6 traitCollection];
  v8 = [v7 userInterfaceStyle];

  specialized static CommonTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v6, v8);
  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_isLastItemInSection) = 0;
  v9 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_separatorView;
  type metadata accessor for SuggestionSeparatorView();
  *(v0 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_playButton;
  type metadata accessor for ListPlayButton();
  *(v0 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC9MomentsUI32SuggestionListCollectionViewCell_assetView;
  *(v0 + v11) = [objc_allocWithZone(type metadata accessor for AssetView()) init];
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *MomentsImageTextAttachment.imageView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_imageView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MomentsImageTextAttachment.imageView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_imageView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double MomentsImageTextAttachment.size.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_size;
  swift_beginAccess();
  return *v1;
}

uint64_t MomentsImageTextAttachment.size.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_size);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *MomentsImageTextAttachment.viewProvider.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_viewProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MomentsImageTextAttachment.viewProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_viewProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *MomentsImageTextAttachment.init(imageView:size:)(uint64_t a1, double a2, double a3)
{
  *&v3[OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_imageView] = 0;
  v7 = &v3[OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_size];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_viewProvider] = 0;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for MomentsImageTextAttachment();
  v8 = objc_msgSendSuper2(&v14, sel_initWithData_ofType_, 0, 0);
  v9 = OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_imageView;
  swift_beginAccess();
  v10 = *&v8[v9];
  *&v8[v9] = a1;
  v11 = v8;

  v12 = &v11[OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_size];
  swift_beginAccess();
  *v12 = a2;
  v12[1] = a3;

  return v11;
}

id MomentsImageTextAttachment.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MomentsImageTextAttachment.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_imageView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_size);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_viewProvider) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MomentsImageTextAttachment.viewProvider(for:location:textContainer:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & *v3) + 0x98);
  result = v11();
  if (!result)
  {
    v9 = [a3 textLayoutManager];
    v10 = [objc_allocWithZone(type metadata accessor for MomentsImageTextAttachmentViewProvider()) initWithTextAttachment:v3 parentView:a1 textLayoutManager:v9 location:a2];

    (*((*v7 & *v3) + 0xA0))(v10);

    return v11();
  }

  return result;
}

id MomentsImageTextAttachmentViewProvider.__allocating_init(textAttachment:parentView:textLayoutManager:location:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(v4) initWithTextAttachment:a1 parentView:a2 textLayoutManager:a3 location:a4];

  swift_unknownObjectRelease();
  return v8;
}

double MomentsImageTextAttachment.attachmentBounds(for:location:textContainer:proposedLineFragment:position:)(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v22.receiver = v9;
  v22.super_class = type metadata accessor for MomentsImageTextAttachment();
  objc_msgSendSuper2(&v22, sel_attachmentBoundsForAttributes_location_textContainer_proposedLineFragment_position_, isa, a8, a9, a1, a2, a3, a4, a5, a6);
  v20 = v19;

  (*((*MEMORY[0x277D85000] & *v9) + 0x80))();
  return v20;
}

id MomentsImageTextAttachment.__allocating_init(data:ofType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  isa = 0;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = MEMORY[0x21CE91FC0](a3, a4);

LABEL_6:
  v11 = [objc_allocWithZone(v4) initWithData:isa ofType:v8];

  return v11;
}

Swift::Void __swiftcall MomentsImageTextAttachmentViewProvider.loadView()()
{
  v1 = v0;
  v2 = [v0 textAttachment];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for MomentsImageTextAttachment();
    v4 = swift_dynamicCastClass();
    v5 = v4;
    if (v4)
    {
      v6 = *((*MEMORY[0x277D85000] & *v4) + 0x68);
      v7 = v3;
      v9 = v6();

      v8 = v9;
    }

    else
    {

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v5 = 0;
  }

  v10 = v8;
  [v1 setView_];
}

id MomentsImageTextAttachmentViewProvider.init(textAttachment:parentView:textLayoutManager:location:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for MomentsImageTextAttachmentViewProvider();
  v9 = objc_msgSendSuper2(&v11, sel_initWithTextAttachment_parentView_textLayoutManager_location_, a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v9;
}

id MomentsImageTextAttachment.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v4[15] = *(v7 + 64);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v10 = (*(v3 + 112) + **(v3 + 112));
  v8 = swift_task_alloc();
  v4[18] = v8;
  *v8 = v4;
  v8[1] = static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:);

  return v10();
}

uint64_t static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:), 0, 0);
  }
}

{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:);
  }

  else
  {

    v4 = static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:)()
{
  if (*(v0 + 152))
  {
    UUID.init()();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 136);
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);
    *(v0 + 160) = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
    v4 = *(v3 + 80);
    *(v0 + 328) = v4;
    v5 = (v4 + 32) & ~v4;
    v6 = swift_allocObject();
    *(v0 + 168) = v6;
    *(v6 + 16) = xmmword_21658CA50;
    v7 = *(v3 + 16);
    *(v0 + 176) = v7;
    *(v0 + 184) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v6 + v5, v1, v2);
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:);

    return CloudManager.retainUIActive(_:_:_:)(v6, "resumeProcessingUntilComplete(withLatest:qos:startDate:)", 56, 2, 26);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

{

  return MEMORY[0x2822009F8](static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:), 0, 0);
}

{
  *(v0 + 200) = type metadata accessor for MainActor();
  *(v0 + 208) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:), v2, v1);
}

{

  v0[27] = DBManager.mainWriter.getter();
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:);
  v2 = v0[5];

  return DBWriter.mergedSuggestionsInWorking(with:)(v2);
}

{
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = __swift_project_value_buffer(v1, static CommonLogger.processing);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[29];
  if (v4)
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = *(v5 + 16);

    *(v9 + 12) = 2048;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v11 = v10;
    (*(v7 + 8))(v6, v8);
    *(v9 + 14) = v11;
    _os_log_impl(&dword_21607C000, v2, v3, "[resumeProcessingUntilComplete] merged suggestions, total=%ld, timestamp=%f", v9, 0x16u);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[8];
  swift_beginAccess();
  v12 = static MomentsUIManager.userIsActivelyWaitingOnUI;
  v16 = (*(v17 + 88) + **(v17 + 88));
  v13 = swift_task_alloc();
  v0[32] = v13;
  *v13 = v0;
  v13[1] = static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:);
  v14 = v0[6];

  return v16(v14, v12);
}

{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:);
  }

  else
  {
    v2 = static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[29];
  if (v3)
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    v9 = *(v4 + 16);

    *(v8 + 4) = v9;

    *(v8 + 12) = 2048;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v11 = v10;
    (*(v6 + 8))(v5, v7);
    *(v8 + 14) = v11;
    _os_log_impl(&dword_21607C000, v1, v2, "[resumeProcessingUntilComplete] fully rendered suggestions, n=%ld, timestamp=%f", v8, 0x16u);
    MEMORY[0x21CE94770](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  Date.init()();
  Date.timeIntervalSince(_:)();
  v0[34] = v15;
  v16 = *(v13 + 8);
  v0[35] = v16;
  v0[36] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v12, v14);
  v0[37] = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:), v18, v17);
}

{
  v1 = v0[34];
  v2 = v0[19];

  v0[38] = *(v2 + OBJC_IVAR____TtC9MomentsUI9DBManager____lazy_storage___mainWriter);

  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:);

  return DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:)(v1, 0, 1);
}

{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:);
  }

  else
  {

    v2 = static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + 96);
    v5 = *(v0 + 80);
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v8 = v7;
    v3(v4, v5);
    *(v6 + 4) = v8;
    _os_log_impl(&dword_21607C000, v1, v2, "[resumeProcessingUntilComplete] promoted draft as latest snapshot, timestamp=%f", v6, 0xCu);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  v19 = *(v0 + 176);
  v9 = *(v0 + 328);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 112);
  v13 = *(v0 + 104);
  v14 = *(v0 + 72);

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v19(v10, v11, v13);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v12 + 32))(v16 + ((v9 + 32) & ~v9), v10, v13);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &closure #1 in $defer #1 () in static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:)partial apply, v16);

  (*(v12 + 8))(v11, v13);

  v17 = *(v0 + 8);

  return v17();
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 328);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v12 = v4;
  v5 = *(v0 + 112);
  v6 = *(v0 + 104);
  v7 = *(v0 + 72);

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v1(v3, v4, v6);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v5 + 32))(v9 + ((v2 + 32) & ~v2), v3, v6);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in $defer #1 () in static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:), v9);

  (*(v5 + 8))(v12, v6);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 328);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v12 = v4;
  v5 = *(v0 + 112);
  v6 = *(v0 + 104);
  v7 = *(v0 + 72);

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v1(v3, v4, v6);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v5 + 32))(v9 + ((v2 + 32) & ~v2), v3, v6);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in $defer #1 () in static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:)partial apply, v9);

  (*(v5 + 8))(v12, v6);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 328);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v12 = v4;
  v5 = *(v0 + 112);
  v6 = *(v0 + 104);
  v7 = *(v0 + 72);

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v1(v3, v4, v6);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v5 + 32))(v9 + ((v2 + 32) & ~v2), v3, v6);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in $defer #1 () in static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:)partial apply, v9);

  (*(v5 + 8))(v12, v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd);
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[22] = swift_task_alloc();
  v6 = (*(v1 + 112) + **(v1 + 112));
  v4 = swift_task_alloc();
  v2[23] = v4;
  *v4 = v2;
  v4[1] = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);

  return v6();
}

{
  v3 = *v2;
  *(v3 + 192) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), 0, 0);
  }
}

uint64_t static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)()
{
  v1 = v0[24];
  if (v1)
  {
    v0[10] = MEMORY[0x277D84F90];
    v0[12] = 0;
    v0[11] = 0;
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v2[1] = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);

    return specialized DBManager.beginMultiThreadedAsyncWrite(_:)(v1, (v0 + 10), (v0 + 12), (v0 + 11));
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError();
    swift_allocError();
    *v4 = 6;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  else
  {
    v2 = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  *(v0 + 216) = v4;
  if (v3)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v5 = *(v0 + 80);
  *(v0 + 224) = v5;
  v6 = *(v5 + 16);
  *(v0 + 232) = v6;
  *(v0 + 240) = v6 + v4;
  if (__OFADD__(v6, v4))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v1 >= 1)
  {
    if (one-time initialization token for processing == -1)
    {
LABEL_5:
      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static CommonLogger.processing);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_21607C000, v8, v9, "[renderSuggestionsIfNecessary] early pre publish, have interesting non evergreens", v10, 2u);
        MEMORY[0x21CE94770](v10, -1, -1);
      }

      type metadata accessor for MainActor();
      *(v0 + 248) = static MainActor.shared.getter();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), v12, v11);
    }

LABEL_63:
    swift_once();
    goto LABEL_5;
  }

  if (v6)
  {
    if (*(v5 + 16))
    {
      v13 = (v0 + 16);
      if (one-time initialization token for momentsUI != -1)
      {
        swift_once();
      }

      v14 = static DefaultsManager.momentsUI;
      *(v0 + 280) = static DefaultsManager.momentsUI;
      *(v0 + 288) = type metadata accessor for UUID();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd);
      v16 = OBJC_IVAR____TtC9MomentsUI9DBManager_modelContainer;
      *(v0 + 296) = v15;
      *(v0 + 304) = v16;
      v17 = *(v0 + 224);
      *(v0 + 104) = MEMORY[0x277D84F90];
      if (v14)
      {
        v18 = (v0 + 48);
        v19 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x800000021657D100);
        v20 = [v14 objectForKey_];

        if (v20)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          *v18 = 0u;
          *(v0 + 64) = 0u;
        }

        v27 = *(v0 + 64);
        *v13 = *v18;
        *(v0 + 32) = v27;
        if (*(v0 + 40))
        {
          v28 = swift_dynamicCast();
          if (v28)
          {
            v29 = *(v0 + 120);
            if (v29 >= v17[2])
            {
              v30 = v17[2];
            }

            else
            {
              v30 = *(v0 + 120);
            }

            if ((v29 & 0x8000000000000000) != 0)
            {
              __break(1u);
              return MEMORY[0x282200740](v28);
            }

            v31 = (v0 + 104);
            if (!v30)
            {
LABEL_57:
              *(v0 + 312) = v17;
              v51 = *(v0 + 192);
              v52 = swift_task_alloc();
              *(v0 + 320) = v52;
              v53 = *(v0 + 128);
              *(v52 + 16) = v31;
              *(v52 + 24) = v51;
              *(v52 + 32) = v53;
              v54 = swift_task_alloc();
              *(v0 + 328) = v54;
              *v54 = v0;
              v54[1] = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
              v28 = v0 + 112;

              return MEMORY[0x282200740](v28);
            }

            goto LABEL_38;
          }

LABEL_34:
          if (v17[2] >= 5uLL)
          {
            v30 = 5;
          }

          else
          {
            v30 = v17[2];
          }

          v31 = (v0 + 104);
          if (!v30)
          {
            goto LABEL_57;
          }

LABEL_38:
          v56 = v31;
          v32 = MEMORY[0x277D84F90];
          while (1)
          {
            v33 = v17[2];
            if (!v33)
            {
              break;
            }

            v34 = *(*(v0 + 152) + 80);
            v35 = (v34 + 32) & ~v34;
            outlined init with copy of DateInterval?(v17 + v35, *(v0 + 168), &_s10Foundation4UUIDV_ACtMd);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || (v33 - 1) > v17[3] >> 1)
            {
              v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v33, 1, v17);
            }

            v37 = *(v0 + 152);
            v57 = v35;
            outlined destroy of UTType?(v17 + v35, &_s10Foundation4UUIDV_ACtMd);
            v38 = *(v37 + 72);
            v39 = v38 > 0 || v17 + v35 >= v17 + v35 + v38 + (v17[2] - 1) * v38;
            v59 = v30;
            v40 = v32;
            if (v39)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = *(v0 + 288);
            v43 = *(v0 + 160);
            v42 = *(v0 + 168);
            v44 = *(v0 + 144);
            v45 = v17;
            --v17[2];
            v46 = *(v44 + 48);
            v47 = *(*(v41 - 8) + 32);
            v47(v43, v42, v41);
            v47(v43 + v46, v42 + v46, v41);
            v32 = v40;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
            }

            v49 = v32[2];
            v48 = v32[3];
            v17 = v45;
            if (v49 >= v48 >> 1)
            {
              v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1, v32);
            }

            v50 = *(v0 + 160);
            v32[2] = v49 + 1;
            outlined init with take of URL?(v50, v32 + v57 + v49 * v38, &_s10Foundation4UUIDV_ACtMd);
            v30 = v59 - 1;
            if (v59 == 1)
            {
              v31 = v56;
              *(v0 + 80) = v17;
              *v56 = v32;
              goto LABEL_57;
            }
          }

          __break(1u);
          goto LABEL_61;
        }
      }

      else
      {
        *v13 = 0u;
        *(v0 + 32) = 0u;
      }

      outlined destroy of UTType?(v0 + 16, &_sypSgMd);
      goto LABEL_34;
    }

    v25 = *(v5 + 16);

    v26 = *(v0 + 8);

    return v26(v25);
  }

  else
  {
    v21 = *(v0 + 192);
    v22 = swift_task_alloc();
    *(v0 + 264) = v22;
    *v22 = v0;
    v22[1] = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
    v23 = *(v0 + 240);
    v24 = *(v0 + 136);

    return (specialized DBManager.beginMultiThreadedAsyncWrite(_:))(v21, v23, v0 + 80, v24);
  }
}

{

  *(v0 + 256) = DBManager.mainWriter.getter();

  return MEMORY[0x2822009F8](static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), 0, 0);
}

{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[22];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = lazy protocol witness table accessor for type DBWriter and conformance DBWriter(&lazy protocol witness table cache variable for type DBWriter and conformance DBWriter, type metadata accessor for DBWriter);
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v6;
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in DBWriter.publishDraft(rendered:total:), v7);

  return MEMORY[0x2822009F8](static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), 0, 0);
}

{
  if (!*(v0 + 232))
  {
    v8 = *(v0 + 192);
    v9 = swift_task_alloc();
    *(v0 + 264) = v9;
    *v9 = v0;
    v9[1] = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
    v10 = *(v0 + 240);
    v11 = *(v0 + 136);

    return (specialized DBManager.beginMultiThreadedAsyncWrite(_:))(v8, v10, v0 + 80, v11);
  }

  v1 = *(v0 + 224);
  if (!*(v1 + 16))
  {

    v13 = *(v1 + 16);

    v14 = *(v0 + 8);

    return v14(v13);
  }

  if (one-time initialization token for momentsUI != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v2 = static DefaultsManager.momentsUI;
    *(v0 + 280) = static DefaultsManager.momentsUI;
    *(v0 + 288) = type metadata accessor for UUID();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd);
    v4 = OBJC_IVAR____TtC9MomentsUI9DBManager_modelContainer;
    *(v0 + 296) = v3;
    *(v0 + 304) = v4;
    v5 = *(v0 + 224);
    *(v0 + 104) = MEMORY[0x277D84F90];
    if (v2)
    {
      break;
    }

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_23:
    outlined destroy of UTType?(v0 + 16, &_sypSgMd);
LABEL_24:
    if (v5[2] >= 5uLL)
    {
      v18 = 5;
    }

    else
    {
      v18 = v5[2];
    }

    v19 = (v0 + 104);
    if (!v18)
    {
      goto LABEL_47;
    }

LABEL_28:
    v43 = v19;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      v21 = v5[2];
      if (!v21)
      {
        break;
      }

      v22 = *(*(v0 + 152) + 80);
      v23 = (v22 + 32) & ~v22;
      outlined init with copy of DateInterval?(v5 + v23, *(v0 + 168), &_s10Foundation4UUIDV_ACtMd);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v21 - 1) > v5[3] >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21, 1, v5);
      }

      v46 = v18;
      v25 = *(v0 + 152);
      outlined destroy of UTType?(v5 + v23, &_s10Foundation4UUIDV_ACtMd);
      v26 = *(v25 + 72);
      v27 = v26 > 0 || v5 + v23 >= v5 + v23 + v26 + (v5[2] - 1) * v26;
      v44 = v23;
      v28 = v20;
      if (v27)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v26)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v29 = *(v0 + 288);
      v31 = *(v0 + 160);
      v30 = *(v0 + 168);
      v32 = *(v0 + 144);
      v33 = v5;
      --v5[2];
      v34 = *(v32 + 48);
      v35 = *(*(v29 - 8) + 32);
      v35(v31, v30, v29);
      v35(v31 + v34, v30 + v34, v29);
      v20 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
      }

      v37 = v20[2];
      v36 = v20[3];
      v5 = v33;
      if (v37 >= v36 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v20);
      }

      v38 = *(v0 + 160);
      v20[2] = v37 + 1;
      outlined init with take of URL?(v38, v20 + v44 + v37 * v26, &_s10Foundation4UUIDV_ACtMd);
      v18 = v46 - 1;
      if (v46 == 1)
      {
        *(v0 + 80) = v33;
        v19 = v43;
        *v43 = v20;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_51:
    swift_once();
  }

  v6 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x800000021657D100);
  v7 = [v2 objectForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  v15 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v15;
  if (!*(v0 + 40))
  {
    goto LABEL_23;
  }

  v16 = swift_dynamicCast();
  if ((v16 & 1) == 0)
  {
    goto LABEL_24;
  }

  v17 = *(v0 + 120);
  if (v17 >= v5[2])
  {
    v18 = v5[2];
  }

  else
  {
    v18 = *(v0 + 120);
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return MEMORY[0x282200740](v16);
  }

  v19 = (v0 + 104);
  if (v18)
  {
    goto LABEL_28;
  }

LABEL_47:
  *(v0 + 312) = v5;
  v39 = *(v0 + 192);
  v40 = swift_task_alloc();
  *(v0 + 320) = v40;
  v41 = *(v0 + 128);
  *(v40 + 16) = v19;
  *(v40 + 24) = v39;
  *(v40 + 32) = v41;
  v42 = swift_task_alloc();
  *(v0 + 328) = v42;
  *v42 = v0;
  v42[1] = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  v16 = v0 + 112;

  return MEMORY[0x282200740](v16);
}

{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  else
  {
    v2 = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 224);
  if (!*(v1 + 16))
  {

    v8 = *(v1 + 16);

    v9 = *(v0 + 8);

    return v9(v8);
  }

  if (one-time initialization token for momentsUI != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v2 = static DefaultsManager.momentsUI;
    *(v0 + 280) = static DefaultsManager.momentsUI;
    *(v0 + 288) = type metadata accessor for UUID();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd);
    v4 = OBJC_IVAR____TtC9MomentsUI9DBManager_modelContainer;
    *(v0 + 296) = v3;
    *(v0 + 304) = v4;
    v5 = *(v0 + 224);
    *(v0 + 104) = MEMORY[0x277D84F90];
    if (v2)
    {
      break;
    }

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_19:
    outlined destroy of UTType?(v0 + 16, &_sypSgMd);
LABEL_20:
    if (v5[2] >= 5uLL)
    {
      v14 = 5;
    }

    else
    {
      v14 = v5[2];
    }

    v15 = (v0 + 104);
    if (!v14)
    {
      goto LABEL_43;
    }

LABEL_24:
    v37 = v15;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v17 = v5[2];
      if (!v17)
      {
        break;
      }

      v18 = *(*(v0 + 152) + 80);
      v19 = (v18 + 32) & ~v18;
      outlined init with copy of DateInterval?(v5 + v19, *(v0 + 168), &_s10Foundation4UUIDV_ACtMd);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v17 - 1) > v5[3] >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v17, 1, v5);
      }

      v21 = *(v0 + 152);
      outlined destroy of UTType?(v5 + v19, &_s10Foundation4UUIDV_ACtMd);
      v22 = *(v21 + 72);
      v23 = v22 > 0 || v5 + v19 >= v5 + v19 + v22 + (v5[2] - 1) * v22;
      v41 = v14;
      v38 = v19;
      v39 = v16;
      if (v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v22)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v24 = *(v0 + 288);
      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v27 = *(v0 + 144);
      --v5[2];
      v28 = *(v27 + 48);
      v29 = *(*(v24 - 8) + 32);
      v29(v26, v25, v24);
      v29(v26 + v28, v25 + v28, v24);
      v16 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
      }

      v31 = v16[2];
      v30 = v16[3];
      if (v31 >= v30 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1, v16);
      }

      v32 = *(v0 + 160);
      v16[2] = v31 + 1;
      outlined init with take of URL?(v32, v16 + v38 + v31 * v22, &_s10Foundation4UUIDV_ACtMd);
      --v14;
      if (v41 == 1)
      {
        *(v0 + 80) = v5;
        v15 = v37;
        *v37 = v16;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

  v6 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x800000021657D100);
  v7 = [v2 objectForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  v11 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v11;
  if (!*(v0 + 40))
  {
    goto LABEL_19;
  }

  v12 = swift_dynamicCast();
  if ((v12 & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = *(v0 + 120);
  if (v13 >= v5[2])
  {
    v14 = v5[2];
  }

  else
  {
    v14 = *(v0 + 120);
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return MEMORY[0x282200740](v12);
  }

  v15 = (v0 + 104);
  if (v14)
  {
    goto LABEL_24;
  }

LABEL_43:
  *(v0 + 312) = v5;
  v33 = *(v0 + 192);
  v34 = swift_task_alloc();
  *(v0 + 320) = v34;
  v35 = *(v0 + 128);
  *(v34 + 16) = v15;
  *(v34 + 24) = v33;
  *(v34 + 32) = v35;
  v36 = swift_task_alloc();
  *(v0 + 328) = v36;
  *v36 = v0;
  v36[1] = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  v12 = v0 + 112;

  return MEMORY[0x282200740](v12);
}

{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  else
  {

    v2 = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v0[43] = v0[14];
  return MEMORY[0x2822009F8](static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), v0[24], 0);
}

{
  type metadata accessor for ModelContext();
  swift_allocObject();

  v1 = ModelContext.init(_:)();
  v0[44] = v1;
  v2 = DBManager.getSnapshotGeneration()();
  v0[45] = v2._object;
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  v4 = v0[43];
  v5 = v0[30];
  v6 = v0[17];

  return closure #4 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(v2._countAndFlagsBits, v2._object, v1, v4, v5, (v0 + 10), v6);
}

{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  else
  {

    v3 = *(v2 + 192);
    v4 = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  if ((dispatch thunk of ModelContext.hasChanges.getter() & 1) != 0 && (v1 = *(v0 + 376), dispatch thunk of ModelContext.save()(), (*(v0 + 384) = v1) != 0))
  {

    v2 = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  else
  {

    v2 = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 376);

  dispatch thunk of ModelContext.rollback()();

  return MEMORY[0x2822009F8](static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = (v0 + 104);
  v2 = *(v0 + 312);

  if (*(v2 + 16))
  {
    v3 = (v0 + 16);
    v4 = *(v0 + 312);
    v5 = *(v0 + 280);
    *(v0 + 104) = MEMORY[0x277D84F90];
    if (v5)
    {
      v6 = (v0 + 48);
      v7 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x800000021657D100);
      v8 = [v5 objectForKey_];

      if (v8)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        *v6 = 0u;
        *(v0 + 64) = 0u;
      }

      v13 = *(v0 + 64);
      *v3 = *v6;
      *(v0 + 32) = v13;
      v1 = (v0 + 104);
      if (*(v0 + 40))
      {
        v14 = swift_dynamicCast();
        if (v14)
        {
          v15 = *(v0 + 120);
          if (v15 >= v4[2])
          {
            v16 = v4[2];
          }

          else
          {
            v16 = *(v0 + 120);
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
LABEL_46:
            __break(1u);
            return MEMORY[0x282200740](v14);
          }

          if (!v16)
          {
LABEL_42:
            *(v0 + 312) = v4;
            v35 = *(v0 + 192);
            v36 = swift_task_alloc();
            *(v0 + 320) = v36;
            v37 = *(v0 + 128);
            *(v36 + 16) = v1;
            *(v36 + 24) = v35;
            *(v36 + 32) = v37;
            v38 = swift_task_alloc();
            *(v0 + 328) = v38;
            *v38 = v0;
            v38[1] = static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
            v14 = v0 + 112;

            return MEMORY[0x282200740](v14);
          }

LABEL_23:
          v39 = v1 - 3;
          v40 = v1;
          v17 = MEMORY[0x277D84F90];
          while (1)
          {
            v18 = v4[2];
            if (!v18)
            {
              break;
            }

            v19 = *(*(v0 + 152) + 80);
            v20 = (v19 + 32) & ~v19;
            outlined init with copy of DateInterval?(v4 + v20, *(v0 + 168), &_s10Foundation4UUIDV_ACtMd);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || (v18 - 1) > v4[3] >> 1)
            {
              v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v4);
            }

            v22 = *(v0 + 152);
            outlined destroy of UTType?(v4 + v20, &_s10Foundation4UUIDV_ACtMd);
            v23 = *(v22 + 72);
            v24 = v23 > 0 || v4 + v20 >= v4 + v20 + v23 + (v4[2] - 1) * v23;
            v44 = v16;
            v41 = v20;
            v42 = v17;
            if (v24)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v23)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v25 = *(v0 + 288);
            v27 = *(v0 + 160);
            v26 = *(v0 + 168);
            v28 = *(v0 + 144);
            v29 = v4;
            --v4[2];
            v30 = *(v28 + 48);
            v31 = *(*(v25 - 8) + 32);
            v31(v27, v26, v25);
            v31(v27 + v30, v26 + v30, v25);
            v17 = v42;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
            }

            v33 = v17[2];
            v32 = v17[3];
            v4 = v29;
            if (v33 >= v32 >> 1)
            {
              v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v17);
            }

            v34 = *(v0 + 160);
            v17[2] = v33 + 1;
            v14 = outlined init with take of URL?(v34, v17 + v41 + v33 * v23, &_s10Foundation4UUIDV_ACtMd);
            --v16;
            if (v44 == 1)
            {
              v1 = v40;
              *v39 = v29;
              *v40 = v17;
              goto LABEL_42;
            }
          }

          __break(1u);
          goto LABEL_46;
        }

LABEL_19:
        if (v4[2] >= 5uLL)
        {
          v16 = 5;
        }

        else
        {
          v16 = v4[2];
        }

        if (!v16)
        {
          goto LABEL_42;
        }

        goto LABEL_23;
      }
    }

    else
    {
      *v3 = 0u;
      *(v0 + 32) = 0u;
    }

    v14 = outlined destroy of UTType?(v3, &_sypSgMd);
    goto LABEL_19;
  }

  v9 = *(v0 + 312);

  v10 = *(v9 + 16);

  v11 = *(v0 + 8);

  return v11(v10);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((v3[27] | v3[30]) & 0x8000000000000000) == 0)
  {
    return MEMORY[0x2822009F8](static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), v3[32], 0);
  }

  __break(1u);
  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t closure #2 in closure #1 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(char *a1, uint64_t *a2, void *a3, void *a4)
{
  v66 = a4;
  v64 = a3;
  v69 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd);
  v68 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v67 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v60 - v8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v60 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v60 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v60 - v22;
  v24 = *a2;
  (*(*v24 + 344))(v21);
  if ((v11[6])(v9, 1, v10) == 1)
  {
    return outlined destroy of UTType?(v9, &_s10Foundation4UUIDVSgMd);
  }

  v62 = v10;
  v63 = v4;
  v61 = v11;
  v28 = v11[4];
  v27 = v11 + 4;
  v26 = v28;
  v29 = (v28)(v23, v9, v10);
  v30 = (*(*v24 + 440))(v29);
  if (v31)
  {
    (*(*v24 + 392))(&v70, v30);
  }

  else
  {
    DBSuggestion.SuggestionType.init(rawValue:)(v30);
  }

  if (v70 == 8)
  {
    if (__OFADD__(*v64, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v64;
      v26 = v61;
      v10 = v62;
      if (one-time initialization token for processing == -1)
      {
LABEL_9:
        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, static CommonLogger.processing);
        v26[2](v20, v23, v10);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v69 = v23;
          v37 = v36;
          v70 = v36;
          *v35 = 136315138;
          v38 = UUID.uuidString.getter();
          v40 = v39;
          v41 = v26[1];
          (v41)(v20);
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v70);

          *(v35 + 4) = v42;
          _os_log_impl(&dword_21607C000, v33, v34, "[renderSuggestionsIfNecessary] skip evergreen, suggestionID=%s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          MEMORY[0x21CE94770](v37, -1, -1);
          MEMORY[0x21CE94770](v35, -1, -1);

          return (v41)(v69, v10);
        }

        v59 = v26[1];
        (v59)(v20, v10);
        return (v59)(v23, v10);
      }
    }

    swift_once();
    goto LABEL_9;
  }

  if (DBSuggestion.isFresh.getter())
  {
    if (!__OFADD__(*v66, 1))
    {
      ++*v66;
      v43 = v61;
      v10 = v62;
      if (one-time initialization token for processing != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static CommonLogger.processing);
      v43[2](v17, v23, v10);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v69 = v23;
        v49 = v48;
        v70 = v48;
        *v47 = 136315138;
        v50 = UUID.uuidString.getter();
        v52 = v51;
        v53 = v43[1];
        (v53)(v17);
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v70);

        *(v47 + 4) = v54;
        _os_log_impl(&dword_21607C000, v45, v46, "[renderSuggestionsIfNecessary] suggestion is fresh - skip verification, suggestionID=%s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x21CE94770](v49, -1, -1);
        MEMORY[0x21CE94770](v47, -1, -1);

        return (v53)(v69, v10);
      }

      v59 = v43[1];
      (v59)(v17, v10);
      return (v59)(v23, v10);
    }

    __break(1u);
    goto LABEL_25;
  }

  (*(*v24 + 296))();
  v55 = *(v65 + 48);
  v17 = v67;
  v56 = v62;
  (v26)(v67, v14, v62);
  v10 = v56;
  v27 = v61;
  v61[2](&v17[v55], v23, v56);
  v14 = v69;
  v9 = *v69;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_25:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
  }

  v58 = v9[2];
  v57 = v9[3];
  if (v58 >= v57 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1, v9);
  }

  (v27[1])(v23, v10);
  v9[2] = v58 + 1;
  result = outlined init with take of URL?(v17, v9 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v58, &_s10Foundation4UUIDV_ACtMd);
  *v14 = v9;
  return result;
}

uint64_t closure #2 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = static Exif.filterImage(imageSource:outputURL:);

  return specialized closure #2 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(a3, a4, a5, a6);
}

uint64_t closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v7 = type metadata accessor for TaskPriority();
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v6[17] = *(v8 + 64);
  v6[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6[21] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[22] = v9;
  v10 = *(v9 - 8);
  v6[23] = v10;
  v6[24] = *(v10 + 64);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVy10Foundation4UUIDVs5Error_p_GMd);
  v6[29] = v11;
  v6[30] = *(v11 - 8);
  v6[31] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd);
  v6[32] = v12;
  v13 = *(v12 - 8);
  v6[33] = v13;
  v6[34] = *(v13 + 64);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), 0, 0);
}

uint64_t closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)()
{
  v1 = *(v0 + 88);
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 264);
    v40 = *(v0 + 256);
    v37 = *(v0 + 296) + *(v40 + 48);
    v36 = **(v0 + 80);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = v2 + v5;
    v38 = *(v0 + 128);
    v39 = *(v0 + 184);
    v35 = v5;
    v34 = (*(v0 + 272) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = *(v4 + 72);
    v32 = *(v0 + 136) + 7;

    v7 = v6;
    do
    {
      v50 = v3;
      v13 = *(v0 + 288);
      v14 = *(v0 + 296);
      v41 = *(v0 + 280);
      v52 = *(v0 + 208);
      v53 = *(v0 + 200);
      v44 = *(v0 + 192);
      v15 = *(v0 + 176);
      v54 = *(v0 + 160);
      v47 = *(v0 + 152);
      v43 = *(v0 + 144);
      v51 = *(v0 + 120);
      v46 = *(v0 + 112);
      v42 = *(v0 + 104);
      v45 = *(v0 + 96);
      v49 = v7;
      outlined init with copy of DateInterval?(v7, v14, &_s10Foundation4UUIDV_ACtMd);
      v16 = *(v40 + 48);
      v17 = *(v39 + 32);
      v17(v13, v14, v15);
      v17(v13 + v16, v37, v15);
      outlined init with copy of DateInterval?(v13, v41, &_s10Foundation4UUIDV_ACtMd);
      v17(v52, v41 + *(v40 + 48), v15);
      v48 = *(v39 + 8);
      v48(v41, v15);
      (*(v38 + 56))(v54, 1, 1, v51);
      outlined init with copy of DateInterval?(v13, v41, &_s10Foundation4UUIDV_ACtMd);
      (*(v39 + 16))(v53, v52, v15);
      (*(v38 + 16))(v43, v42, v51);
      v18 = (v34 + 8 + *(v39 + 80)) & ~*(v39 + 80);
      v19 = (v44 + *(v38 + 80) + v18) & ~*(v38 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      outlined init with take of URL?(v41, v20 + v35, &_s10Foundation4UUIDV_ACtMd);
      *(v20 + v34) = v45;
      v17(v20 + v18, v53, v15);
      (*(v38 + 32))(v20 + v19, v43, v51);
      *(v20 + ((v32 + v19) & 0xFFFFFFFFFFFFFFF8)) = v46;
      outlined init with copy of DateInterval?(v54, v47, &_sScPSgMd);
      v21 = (*(v38 + 48))(v47, 1, v51);

      v22 = *(v0 + 152);
      if (v21 == 1)
      {
        outlined destroy of UTType?(*(v0 + 152), &_sScPSgMd);
      }

      else
      {
        v23 = *(v0 + 120);
        TaskPriority.rawValue.getter();
        (*(v38 + 8))(v22, v23);
      }

      if (*(v20 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = dispatch thunk of Actor.unownedExecutor.getter();
        v26 = v25;
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      if (v26 | v24)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v24;
        *(v0 + 40) = v26;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 288);
      v10 = *(v0 + 208);
      v11 = *(v0 + 176);
      v12 = *(v0 + 160);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v36;
      swift_task_create();

      outlined destroy of UTType?(v12, &_sScPSgMd);
      v48(v10, v11);
      outlined destroy of UTType?(v9, &_s10Foundation4UUIDV_ACtMd);
      v7 = v49 + v33;
      v3 = v50 - 1;
    }

    while (v50 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v0 + 304) = MEMORY[0x277D84F90];
  v27 = lazy protocol witness table accessor for type ThrowingTaskGroup<UUID, Error>.Iterator and conformance ThrowingTaskGroup<A, B>.Iterator();
  v28 = swift_task_alloc();
  *(v0 + 312) = v28;
  *v28 = v0;
  v28[1] = closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  v29 = *(v0 + 232);
  v30 = *(v0 + 168);

  return MEMORY[0x282200308](v30, v29, v27);
}

{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    (*(v2[30] + 8))(v2[31], v2[29]);

    v3 = closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  else
  {
    v3 = closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[38];
  if (v4 == 1)
  {
    v6 = v0[9];
    (*(v0[30] + 8))(v0[31], v0[29]);
    outlined destroy of UTType?(v3, &_s10Foundation4UUIDVSgMd);
    *v6 = v5;

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[27];
    v9 = v0[28];
    v11 = *(v2 + 32);
    v11(v9, v3, v1);
    (*(v2 + 16))(v10, v9, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v0[38];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v0[38]);
    }

    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1, v13);
    }

    v16 = v0[27];
    v17 = v0[22];
    v18 = v0[23];
    (*(v18 + 8))(v0[28], v17);
    v13[2] = v15 + 1;
    v11(v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15, v16, v17);
    v0[38] = v13;
    v19 = lazy protocol witness table accessor for type ThrowingTaskGroup<UUID, Error>.Iterator and conformance ThrowingTaskGroup<A, B>.Iterator();
    v20 = swift_task_alloc();
    v0[39] = v20;
    *v20 = v0;
    v20[1] = closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
    v21 = v0[29];
    v22 = v0[21];

    return MEMORY[0x282200308](v22, v21, v19);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v9 = type metadata accessor for UUID();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd);
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), 0, 0);
}

uint64_t closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v16 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v15 = *(v0 + 40);
  outlined init with copy of DateInterval?(*(v0 + 24), v1, &_s10Foundation4UUIDV_ACtMd);
  v10 = *(v2 + 48);
  (*(v7 + 32))(v9, v1, v6);
  v11 = *(v7 + 8);
  *(v0 + 128) = v11;
  *(v0 + 136) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v1 + v10, v6);
  (*(v4 + 16))(v3, v8 + OBJC_IVAR____TtC9MomentsUI9DBManager_blobFolderURL, v5);
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *(v12 + 16) = v9;
  *(v12 + 24) = v15;
  *(v12 + 40) = v3;
  *(v12 + 48) = v16;
  v13 = swift_task_alloc();
  *(v0 + 152) = v13;
  *v13 = v0;
  v13[1] = closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);

  return DBManager.beginMultiThreadedAsyncWrite(_:)(&async function pointer to partial apply for closure #1 in closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), v12);
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  else
  {

    v2 = closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

{
  v32 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v4 = v0[20];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = v0[5];
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static CommonLogger.processing);
  (*(v6 + 16))(v5, v8, v7);
  v10 = v4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[20];
  v15 = v0[16];
  v16 = v0[10];
  v17 = v0[8];
  if (v13)
  {
    log = v11;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v18 = 138412546;
    v20 = v14;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    *(v18 + 12) = 2080;
    v22 = UUID.uuidString.getter();
    v28 = v14;
    v24 = v23;
    v15(v16, v17);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v31);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_21607C000, log, v12, "[renderSuggestionsIfNecessary] error=%@, suggestionID=%s", v18, 0x16u);
    outlined destroy of UTType?(v19, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x21CE94770](v30, -1, -1);
    MEMORY[0x21CE94770](v18, -1, -1);
  }

  else
  {

    v15(v16, v17);
  }

  v26 = v0[1];

  return v26();
}

uint64_t closure #1 in closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a3;
  v8[3] = a4;
  v9 = type metadata accessor for UUID();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)()
{
  v10 = v0[7];
  (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
  v9 = (*(v10 + 104) + **(v10 + 104));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v2, v3, v5, v7, v6, v4);
}

{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #1 in closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  else
  {
    v5 = closure #1 in closure #1 in closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  (*(v0[9] + 40))(v0[3], v0[11], v0[8]);

  v1 = v0[1];

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #4 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = static Exif.filterVideo(inputURL:outputURL:);

  return specialized closure #4 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(a3, a4, a5, a6, a7);
}

uint64_t static IncrementalProcessor.saveRenderedProgress(uuids:cumulativeTotal:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a2;
  v4[6] = a3;
  v4[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v11 = (*(v3 + 112) + **(v3 + 112));
  v9 = swift_task_alloc();
  v4[30] = v9;
  *v9 = v4;
  v9[1] = static IncrementalProcessor.saveRenderedProgress(uuids:cumulativeTotal:context:);

  return v11();
}

uint64_t static IncrementalProcessor.saveRenderedProgress(uuids:cumulativeTotal:context:)(uint64_t a1)
{
  v3 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](static IncrementalProcessor.saveRenderedProgress(uuids:cumulativeTotal:context:), 0, 0);
  }
}

uint64_t static IncrementalProcessor.saveRenderedProgress(uuids:cumulativeTotal:context:)()
{
  v165 = v0;
  if (!v0[31])
  {
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError();
    swift_allocError();
    *v4 = 6;
    swift_willThrow();
    goto LABEL_5;
  }

  v1 = v0[32];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI12DBSuggestionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = specialized static DBWriter.draftSnapshot(context:)();
  if (v1)
  {

LABEL_5:

    v5 = v0[1];

    return v5();
  }

  if (!v3)
  {
    goto LABEL_40;
  }

  v7 = (*(*v3 + 624))();
  if (v7)
  {
    v8 = v7;
    v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI12DBSuggestionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v10 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
LABEL_87:
      v11 = __CocoaSet.count.getter();
      if (!v11)
      {
LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_38;
      }
    }

    v12 = 0;
    v13 = v0[24];
    v162 = (v13 + 48);
    v163 = v8 & 0xC000000000000001;
    v153 = (v13 + 32);
    v155 = (v13 + 16);
    v151 = v13;
    v149 = (v13 + 8);
    do
    {
      v160 = v9;
      v14 = v12;
      while (1)
      {
        if (v163)
        {
          v15 = MEMORY[0x21CE93180](v14, v8);
          v12 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v14 >= *(v10 + 16))
          {
            goto LABEL_82;
          }

          v15 = *(v8 + 8 * v14 + 32);

          v12 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }
        }

        v16 = v8;
        v17 = v11;
        v19 = v0[22];
        v18 = v0[23];
        (*(*v15 + 344))();
        if ((*v162)(v19, 1, v18) != 1)
        {
          break;
        }

        v20 = v0[22];

        outlined destroy of UTType?(v20, &_s10Foundation4UUIDVSgMd);
        ++v14;
        v11 = v17;
        v21 = v12 == v17;
        v8 = v16;
        if (v21)
        {
          v9 = v160;
          goto LABEL_38;
        }
      }

      v22 = v0[28];
      v23 = v0[29];
      v24 = v0[23];
      (*v153)(v23, v0[22], v24);
      v146 = *v155;
      (*v155)(v22, v23, v24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v164[0] = v160;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
      v29 = v160[2];
      v30 = (v26 & 1) == 0;
      v31 = (v29 + v30);
      if (__OFADD__(v29, v30))
      {
        __break(1u);
LABEL_90:
        __break(1u);
        return MEMORY[0x2822009F8](v31, v26, v27);
      }

      v32 = v26;
      if (v160[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI12DBSuggestionCGMd);
          v160 = v164[0];
        }
      }

      else
      {
        v33 = v0[28];
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI12DBSuggestionCGMd);
        v160 = v164[0];
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
        if ((v32 & 1) != (v35 & 1))
        {
          goto LABEL_83;
        }

        v28 = v34;
      }

      v36 = v0[28];
      v37 = v0[29];
      v38 = v0[23];
      if (v32)
      {
        *(v160[7] + 8 * v28) = v15;
        v147 = v36;

        v39 = *v149;
        (*v149)(v147, v38);
        v39(v37, v38);
        v9 = v160;
      }

      else
      {
        v160[(v28 >> 6) + 8] |= 1 << v28;
        v144 = v37;
        v40 = v36;
        v146(v160[6] + *(v151 + 72) * v28, v36, v38);
        *(v160[7] + 8 * v28) = v15;

        v41 = *(v151 + 8);
        v41(v40, v38);
        v31 = (v41)(v144, v38);
        v42 = v160[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_90;
        }

        v9 = v160;
        v160[2] = v44;
      }

      v11 = v17;
      v21 = v12 == v17;
      v8 = v16;
    }

    while (!v21);
    goto LABEL_38;
  }

  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI12DBSuggestionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
LABEL_39:

  v2 = v9;
LABEL_40:
  v154 = *(v0[4] + 16);
  if (!v154)
  {
    goto LABEL_72;
  }

  v45 = 0;
  v46 = v0[24];
  v47 = v0[18];
  v148 = (v47 + 16);
  v145 = (v47 + 56);
  v142 = (v0[15] + 8);
  v143 = (v47 + 8);
  v141 = (v46 + 48);
  v48 = v0[10];
  v152 = (v46 + 8);
  v150 = v46;
  v136 = (v46 + 32);
  v137 = (v48 + 8);
  v138 = (v48 + 16);
  v135 = (v48 + 56);
  v140 = v0;
  do
  {
    v139 = v2;
    v49 = v45;
    v50 = v154;
    while (1)
    {
      if (v49 >= v50)
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      if (__OFADD__(v49, 1))
      {
        goto LABEL_80;
      }

      v161 = v49 + 1;
      v53 = v0[27];
      v54 = v0[19];
      v55 = v0[17];
      v56 = v0[13];
      v10 = v0[6];
      v156 = *(v150 + 16);
      v159 = v49;
      v156(v53, v0[4] + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v49, v0[23]);
      *(swift_task_alloc() + 16) = v53;
      v0[2] = type metadata accessor for DBSuggestion();
      Predicate.init(_:)();
      (*v148)(v56, v54, v55);
      (*v145)(v56, 0, 1, v55);
      v8 = lazy protocol witness table accessor for type DBWriter and conformance DBWriter(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
      FetchDescriptor.init(predicate:sortBy:)();
      FetchDescriptor.fetchLimit.setter();
      v9 = v10;
      v57 = dispatch thunk of ModelContext.fetch<A>(_:)();
      if (v57 >> 62)
      {
        v9 = v57;
        v69 = __CocoaSet.count.getter();
        v57 = v9;
        if (!v69)
        {
LABEL_55:
          v70 = v0[19];
          v72 = v0[16];
          v71 = v0[17];
          v73 = v0[14];

          (*v142)(v72, v73);
          (*v143)(v70, v71);
          goto LABEL_56;
        }
      }

      else if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      if ((v57 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x21CE93180](0);
      }

      else
      {
        if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_87;
        }

        v58 = *(v57 + 32);
      }

      v59 = v0[23];
      v60 = v0[21];
      v61 = v0[19];
      v63 = v0[16];
      v62 = v0[17];
      v64 = v0[14];

      (*v142)(v63, v64);
      v65 = (*v143)(v61, v62);
      v66 = *(*v58 + 344);
      (v66)(v65);
      v67 = *v141;
      if ((*v141)(v60, 1, v59) != 1)
      {
        break;
      }

      v68 = v0[21];

      outlined destroy of UTType?(v68, &_s10Foundation4UUIDVSgMd);
LABEL_56:
      if (one-time initialization token for processing != -1)
      {
        swift_once();
      }

      v74 = v0[27];
      v75 = v0[25];
      v76 = v0[23];
      v77 = type metadata accessor for Logger();
      __swift_project_value_buffer(v77, static CommonLogger.processing);
      v156(v75, v74, v76);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();
      v80 = os_log_type_enabled(v78, v79);
      v81 = v0[27];
      v82 = v0[25];
      v83 = v0[23];
      if (v80)
      {
        v157 = v0[27];
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v164[0] = v85;
        *v84 = 136315138;
        v86 = UUID.uuidString.getter();
        v88 = v87;
        v89 = *v152;
        (*v152)(v82, v83);
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v164);

        *(v84 + 4) = v90;
        _os_log_impl(&dword_21607C000, v78, v79, "[renderSuggestionsIfNecessary] cannot locate %s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v85);
        MEMORY[0x21CE94770](v85, -1, -1);
        MEMORY[0x21CE94770](v84, -1, -1);

        v89(v157, v83);
        v0 = v140;
        v50 = v154;
        v52 = v161;
        v49 = v159;
      }

      else
      {

        v51 = *v152;
        (*v152)(v82, v83);
        v51(v81, v83);
        v52 = v49 + 1;
        v50 = v154;
      }

      ++v49;
      if (v52 == v50)
      {
        v2 = v139;
        goto LABEL_72;
      }
    }

    (*v136)(v0[26], v0[21], v0[23]);
    static Date.now.getter();
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v91 = v0[11];
    v92 = v0[12];
    v93 = v0[9];
    v94 = type metadata accessor for Logger();
    __swift_project_value_buffer(v94, static CommonLogger.processing);
    v95 = *v138;
    (*v138)(v91, v92, v93);

    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v96, v97))
    {
      v131 = v97;
      log = v96;
      v98 = v0[23];
      v99 = v0[20];
      v100 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v164[0] = v129;
      *v100 = 136315394;
      v66();
      if (v67(v99, 1, v98) == 1)
      {
        outlined destroy of UTType?(v0[20], &_s10Foundation4UUIDVSgMd);
        v101 = 0xE300000000000000;
        v102 = 7104878;
      }

      else
      {
        v105 = v0[23];
        v106 = v0[20];
        v107 = UUID.uuidString.getter();
        v101 = v108;
        (*v152)(v106, v105);
        v102 = v107;
      }

      v109 = v0[11];
      v110 = v0[9];
      v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v101, v164);

      *(v100 + 4) = v111;
      *(v100 + 12) = 2080;
      lazy protocol witness table accessor for type DBWriter and conformance DBWriter(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v112 = dispatch thunk of CustomStringConvertible.description.getter();
      v114 = v113;
      v158 = *v137;
      (*v137)(v109, v110);
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, v164);

      *(v100 + 14) = v115;
      _os_log_impl(&dword_21607C000, log, v131, "[renderSuggestionsIfNecessary] group complete, saving suggestionIDs=%s, modifiedDate=%s", v100, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v129, -1, -1);
      MEMORY[0x21CE94770](v100, -1, -1);
    }

    else
    {
      v103 = v0[11];
      v104 = v0[9];

      v158 = *v137;
      (*v137)(v103, v104);
    }

    v132 = v0[23];
    loga = v0[27];
    v128 = v0[12];
    v130 = v0[26];
    v117 = v0[8];
    v116 = v0[9];
    v118 = v0[7];
    v95(v117);
    (*v135)(v117, 0, 1, v116);
    outlined init with copy of DateInterval?(v117, v118, &_s10Foundation4DateVSgMd);
    v0[3] = v58;
    swift_getKeyPath();
    v119 = swift_task_alloc();
    *(v119 + 16) = v58;
    *(v119 + 24) = v118;
    lazy protocol witness table accessor for type DBWriter and conformance DBWriter(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v117, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v118, &_s10Foundation4DateVSgMd);
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v164[0] = v139;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v130, v120);
    v2 = v164[0];
    v158(v128, v116);
    v121 = *v152;
    (*v152)(v130, v132);
    v121(loga, v132);

    v45 = v161;
  }

  while (v161 != v154);
LABEL_72:
  v0[33] = 0;
  v0[34] = v2;
  v122 = *(v2 + 16);
  if (!v122)
  {
    goto LABEL_75;
  }

  v123 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5Tm(*(v2 + 16), 0);
  v124 = specialized Sequence._copySequenceContents(initializing:)(v164, v123 + 4, v122, v2);

  outlined consume of [String : DBAssetData].Iterator._Variant();
  if (v124 != v122)
  {
    __break(1u);
LABEL_75:
    v123 = MEMORY[0x277D84F90];
  }

  v0[35] = v123;
  type metadata accessor for MainActor();
  v0[36] = static MainActor.shared.getter();
  v125 = dispatch thunk of Actor.unownedExecutor.getter();
  v127 = v126;
  v31 = static IncrementalProcessor.saveRenderedProgress(uuids:cumulativeTotal:context:);
  v26 = v125;
  v27 = v127;

  return MEMORY[0x2822009F8](v31, v26, v27);
}

{

  v1 = DBManager.mainWriter.getter();
  *(v0 + 296) = v1;

  return MEMORY[0x2822009F8](static IncrementalProcessor.saveRenderedProgress(uuids:cumulativeTotal:context:), v1, 0);
}

{
  v1 = v0[33];
  DBWriter.saveSuggestionsIntoDraft(_:context:renderedCount:publish:)(v0[35], v0[6], v0[5], 1);
  v0[38] = v1;
  if (v1)
  {
    v2 = static IncrementalProcessor.saveRenderedProgress(uuids:cumulativeTotal:context:);
  }

  else
  {

    v2 = static IncrementalProcessor.saveRenderedProgress(uuids:cumulativeTotal:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[38];
  dispatch thunk of ModelContext.save()();
  if (v1)
  {

    v2 = v0[1];
  }

  else
  {
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static CommonLogger.processing);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[35];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      if (v7 < 0 || (v7 & 0x4000000000000000) != 0)
      {
        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *(v0[35] + 16);
      }

      *(v8 + 4) = v9;

      _os_log_impl(&dword_21607C000, v4, v5, "[renderSuggestionsIfNecessary] saved suggestions into draft, total=%ld", v8, 0xCu);
      MEMORY[0x21CE94770](v8, -1, -1);
    }

    else
    {
    }

    v2 = v0[1];
  }

  return v2();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static IncrementalProcessor.renderAndReturn(_:suggestionID:context:qos:blobFolderURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](static IncrementalProcessor.renderAndReturn(_:suggestionID:context:qos:blobFolderURL:), 0, 0);
}

uint64_t static IncrementalProcessor.renderAndReturn(_:suggestionID:context:qos:blobFolderURL:)()
{
  v31 = v0;
  v1 = specialized static DBWriter.fetchedSuggestion(uuid:context:)(v0[3], v0[5]);
  v0[16] = v1;
  v0[17] = 0;
  if (v1)
  {
    (*(*v1 + 1344))();
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v4 = v0[15];
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[4];
    v8 = type metadata accessor for Logger();
    v0[18] = __swift_project_value_buffer(v8, static CommonLogger.processing);
    v9 = *(v5 + 16);
    v0[19] = v9;
    v0[20] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v4, v7, v6);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[15];
    v14 = v0[8];
    v15 = v0[9];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315138;
      v29 = UUID.uuidString.getter();
      v19 = v18;
      v20 = *(v15 + 8);
      v20(v13, v14);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v19, &v30);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_21607C000, v10, v11, "[renderSuggestionsIfNecessary] rendering suggestionID=%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x21CE94770](v17, -1, -1);
      MEMORY[0x21CE94770](v16, -1, -1);
    }

    else
    {

      v20 = *(v15 + 8);
      v20(v13, v14);
    }

    v0[21] = v20;
    v27 = swift_task_alloc();
    v0[22] = v27;
    *v27 = v0;
    v27[1] = static IncrementalProcessor.renderAndReturn(_:suggestionID:context:qos:blobFolderURL:);
    v28 = v0[6];

    return DBSuggestion.renderAssets(qos:)(v28);
  }

  else
  {
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static CommonLogger.processing);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21607C000, v23, v24, "[renderSuggestionsIfNecessary.renderGroup] cannot locate DBSuggestion", v25, 2u);
      MEMORY[0x21CE94770](v25, -1, -1);
    }

    lazy protocol witness table accessor for type IncrementalProcessor.RenderError and conformance IncrementalProcessor.RenderError();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }
}

{
  v79 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  if (v1)
  {
    v2(*(v0 + 112), v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 168);
    v9 = *(v0 + 112);
    v10 = *(v0 + 64);
    if (v7)
    {
      v74 = v6;
      v11 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v78[0] = v72;
      *v11 = 136315138;
      v12 = UUID.uuidString.getter();
      v14 = v13;
      v8(v9, v10);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v78);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21607C000, v5, v74, "[renderSuggestionsIfNecessary] finished rendering suggestionID=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x21CE94770](v72, -1, -1);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    else
    {

      v8(v9, v10);
    }

    v29 = (*(**(v0 + 128) + 1320))(*(v0 + 56), v1, *(v0 + 40));

    if (v29)
    {
      v30 = *(v0 + 136);
      dispatch thunk of ModelContext.save()();
      if (v30)
      {
      }

      else
      {
        (*(v0 + 152))(*(v0 + 104), *(v0 + 32), *(v0 + 64));

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();

        v45 = os_log_type_enabled(v43, v44);
        v46 = *(v0 + 168);
        if (v45)
        {
          v70 = *(v0 + 128);
          v77 = v44;
          v48 = *(v0 + 96);
          v47 = *(v0 + 104);
          v49 = *(v0 + 64);
          v50 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v78[0] = v73;
          *v50 = 136315650;
          log = v43;
          v51 = UUID.uuidString.getter();
          v53 = v52;
          v46(v47, v49);
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v78);

          *(v50 + 4) = v54;
          *(v50 + 12) = 2080;
          (*(*v70 + 296))(v55);
          v56 = UUID.uuidString.getter();
          v58 = v57;
          v46(v48, v49);
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v78);

          *(v50 + 14) = v59;
          *(v50 + 22) = 2080;
          (*(*v29 + 296))(v60);
          v61 = UUID.uuidString.getter();
          v63 = v62;
          v46(v48, v49);
          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v78);

          *(v50 + 24) = v64;
          _os_log_impl(&dword_21607C000, log, v77, "[renderSuggestionsIfNecessary] copied, suggestionID=%s, old id=%s, new id=%s", v50, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v73, -1, -1);
          MEMORY[0x21CE94770](v50, -1, -1);
        }

        else
        {
          v66 = *(v0 + 104);
          v67 = *(v0 + 64);

          v46(v66, v67);
        }

        (*(*v29 + 296))();
      }
    }

    else
    {
      (*(v0 + 152))(*(v0 + 88), *(v0 + 32), *(v0 + 64));
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 168);
      v35 = *(v0 + 88);
      v36 = *(v0 + 64);
      if (v33)
      {
        v76 = v32;
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v78[0] = v38;
        *v37 = 136315138;
        v39 = UUID.uuidString.getter();
        v41 = v40;
        v34(v35, v36);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v78);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_21607C000, v31, v76, "[renderSuggestionsIfNecessary.renderGroup] failed to copy, suggestionID=%s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x21CE94770](v38, -1, -1);
        MEMORY[0x21CE94770](v37, -1, -1);
      }

      else
      {

        v34(v35, v36);
      }

      lazy protocol witness table accessor for type IncrementalProcessor.RenderError and conformance IncrementalProcessor.RenderError();
      swift_allocError();
      *v65 = 1;
      swift_willThrow();
    }
  }

  else
  {
    v2(*(v0 + 80), v4, v3);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 168);
    v20 = *(v0 + 80);
    v21 = *(v0 + 64);
    if (v18)
    {
      v75 = v17;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v78[0] = v23;
      *v22 = 136315138;
      v24 = UUID.uuidString.getter();
      v26 = v25;
      v19(v20, v21);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v78);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_21607C000, v16, v75, "[renderSuggestionsIfNecessary] reusing suggestionID=%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x21CE94770](v23, -1, -1);
      MEMORY[0x21CE94770](v22, -1, -1);
    }

    else
    {

      v28 = (v19)(v20, v21);
    }

    (*(**(v0 + 128) + 296))(v28);
  }

  v68 = *(v0 + 8);

  return v68();
}

uint64_t static IncrementalProcessor.renderAndReturn(_:suggestionID:context:qos:blobFolderURL:)(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](static IncrementalProcessor.renderAndReturn(_:suggestionID:context:qos:blobFolderURL:), 0, 0);
}

uint64_t static IncrementalProcessor.preferredDBManager()()
{
  return MEMORY[0x2822009F8](static IncrementalProcessor.preferredDBManager(), 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v0 + 16) = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = static IncrementalProcessor.preferredDBManager();

  return CloudManager.getDBManager()();
}

{
  if (*(v0 + 32))
  {

    v1 = *(v0 + 8);
    v2 = *(v0 + 32);

    return v1(v2);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError();
    swift_allocError();
    *v4 = 6;
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t static IncrementalProcessor.preferredDBManager()(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](static IncrementalProcessor.preferredDBManager(), 0, 0);
}

uint64_t closure #1 in $defer #1 () in static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v0[3] = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[4] = v5;
  *(v5 + 16) = xmmword_21658CA50;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = closure #1 in $defer #1 () in static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:);

  return CloudManager.releaseUIActive(_:_:_:)(v5, "resumeProcessingUntilComplete(withLatest:qos:startDate:)", 56, 2, 29);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v4 = *(type metadata accessor for UUID() - 8);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_Si_Sdt5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_Si_Sdt5valuetGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5Tm(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_10Foundation4DateV5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_10Foundation4DateV5valuetGMd);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd) - 8);
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

unint64_t lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError()
{
  result = lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError;
  if (!lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError;
  if (!lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError);
  }

  return result;
}

uint64_t partial apply for closure #1 in $defer #1 () in static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in $defer #1 () in static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:)(a1, v6, v7, v1 + v5);
}

uint64_t closure #1 in $defer #1 () in static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:)partial apply(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in $defer #1 () in static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:)(a1, v6, v7, v1 + v5);
}

uint64_t partial apply for closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #3 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(a1, a2, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in DBWriter.publishDraft(rendered:total:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in DBWriter.publishDraft(rendered:total:)(a1, v4, v5, v6, v7, v8);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9MomentsUI11DBAssetDataCGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSi_SdtGMd);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = *v26;
      v28 = v26[1];
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v28;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay9MomentsUI32MusicPlaybackCoordinatorDelegate_pGGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaypGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo8NSObjectCGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI16DBAssetModelEnumOSi6models_Si5bytesSd8durationtGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 24 * v23);
      v26 = v25[2];
      v27 = *v25;
      v34 = v25[1];
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v15) >> 6;
        while (++v17 != v29 || (v28 & 1) == 0)
        {
          v30 = v17 == v29;
          if (v17 == v29)
          {
            v17 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v17);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 24 * v18);
      *v19 = v27;
      v19[1] = v34;
      v19[2] = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_32:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI11MapLocationCSo7CGPointVGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      (*(*v20 + 264))(v30);
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI18HashableCoordinateVSo7CGPointVGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v25 = *v23;
      v24 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v28 = *v26;
      v27 = v26[1];
      Hasher.init(_seed:)();
      if (v25 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v25;
      }

      MEMORY[0x21CE937F0](*&v29);
      if (v24 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v24;
      }

      MEMORY[0x21CE937F0](*&v30);
      result = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v25;
      v17[1] = v24;
      v18 = (*(v7 + 56) + v16);
      *v18 = v28;
      v18[1] = v27;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI11MapLocationCAC0E9ViewModel_pGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {

        v21 = v30;
      }

      Hasher.init(_seed:)();
      (*(*v20 + 264))(v31);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySiSay9MomentsUI19SuggestionViewModelCGGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI9AssetTypeOSayAC0E9ViewModelCGGMd);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x21CE937C0](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMd);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x21CE937C0](v20 - 1);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySiSay9MomentsUI12DBAssetModelCGGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI18HashableCoordinateVAC12MapViewModel_pGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = 16 * (v17 | (v8 << 6));
      v32 = *(*(v5 + 56) + v20);
      v33 = *(*(v5 + 48) + v20);
      if ((a2 & 1) == 0)
      {
        v21 = v32;
      }

      Hasher.init(_seed:)();
      v22 = *&v33;
      if (*&v33 == 0.0)
      {
        v22 = 0.0;
      }

      MEMORY[0x21CE937F0](*&v22);
      v23 = *(&v33 + 1);
      if (*(&v33 + 1) == 0.0)
      {
        v23 = 0.0;
      }

      MEMORY[0x21CE937F0](*&v23);
      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      *(*(v7 + 48) + v16) = v33;
      *(*(v7 + 56) + v16) = v32;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSaySiGGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo8CKRecordCGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSaySo10CKRecordIDCGGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10CKRecordIDCs6ResultOySo0C0Cs5Error_pGGMd);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v35 & 1) == 0)
      {
        v25 = v21;
        outlined copy of Result<CKRecord, Error>(v23);
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEpGMd);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 48 * v20);
      if (v33)
      {
        outlined init with take of Decodable & Encodable(v24, v34);
      }

      else
      {
        outlined init with copy of Decodable & Encodable(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Decodable & Encodable(v34, (*(v7 + 56) + 48 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay9MomentsUI18CloudSyncAssetDataCGGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS9MomentsUI18CloudSyncAssetDataCGMd);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277CC95F0], &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for CloudDevice, &_ss18_DictionaryStorageCySS9MomentsUI11CloudDeviceVGMd, &_ss18_DictionaryStorageCySS9MomentsUI11CloudDeviceVGMR, type metadata accessor for CloudDevice);
}

{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVShyAEGGMd);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      lazy protocol witness table accessor for type DBWriter and conformance DBWriter(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277CC9260], &_ss18_DictionaryStorageCySS10Foundation3URLVGMd);
}

{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI9AssetTypeOGMd);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      lazy protocol witness table accessor for type DBWriter and conformance DBWriter(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI12DBSuggestionCGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277CDD538], &_ss18_DictionaryStorageCy10Foundation4UUIDV9SwiftData20PersistentIdentifierVGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI19SuggestionViewModelCGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277CC9AF8], &_ss18_DictionaryStorageCy10Foundation4UUIDVAC9IndexPathVGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for CloudMetaDevice, &_ss18_DictionaryStorageCySS9MomentsUI15CloudMetaDeviceVGMd, &_ss18_DictionaryStorageCySS9MomentsUI15CloudMetaDeviceVGMR, type metadata accessor for CloudMetaDevice);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277CC9578], &_ss18_DictionaryStorageCySS10Foundation4DateVGMd);
}

{
  v3 = v2;
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.ZoneConfiguration();
  v5 = *(Changes - 8);
  MEMORY[0x28223BE20](Changes);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo14CKRecordZoneIDC8CloudKit12CKSyncEngineC19FetchChangesOptionsV0D13ConfigurationVGMd);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v38)
      {
        (*v16)(v39, v25, Changes);
      }

      else
      {
        (*v36)(v39, v25, Changes);
        v26 = v23;
      }

      result = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v39, Changes);
      ++*(v9 + 16);
      v5 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI5AssetCGMd);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      lazy protocol witness table accessor for type DBWriter and conformance DBWriter(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSi_9MomentsUI9AssetTypeOtGMd);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v47 = v8;
    v39 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    v42 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v22 = (v16 - 1) & v16;
LABEL_15:
      v25 = v21 | (v12 << 6);
      v46 = v22;
      v26 = *(v6 + 72);
      v27 = *(v9 + 48) + v26 * v25;
      if (v43)
      {
        (*v44)(v47, v27, v5);
      }

      else
      {
        (*v40)(v47, v27, v5);
      }

      v28 = *(v9 + 56) + 16 * v25;
      v29 = *(v28 + 8);
      v45 = *v28;
      lazy protocol witness table accessor for type DBWriter and conformance DBWriter(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)(*(v11 + 48) + v26 * v19, v47, v5);
      v20 = *(v11 + 56) + 16 * v19;
      v16 = v46;
      *v20 = v45;
      *(v20 + 8) = v29;
      ++*(v11 + 16);
      v6 = v41;
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMd);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v50 = result;
  if (*(v10 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v10 + 64);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = v50 + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = *(v10 + 48);
      v47 = *(v43 + 72);
      v27 = v47 * (v23 | (v12 << 6));
      if (v45)
      {
        v28 = *v46;
        v29 = v44;
        (*v46)(v44, v26 + v27, v5);
      }

      else
      {
        v28 = *v41;
        v29 = v44;
        (*v41)(v44, v26 + v27, v5);
      }

      v28(v49, *(v10 + 56) + v27, v5);
      v30 = v50;
      lazy protocol witness table accessor for type DBWriter and conformance DBWriter(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = v50;
      v21 = v47 * v19;
      v22 = *v46;
      (*v46)((*(v50 + 48) + v47 * v19), v29, v5);
      result = (v22)(*(v20 + 56) + v21, v49, v5);
      ++*(v20 + 16);
      v10 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v3;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v36)
      {
        outlined init with take of Any(v23, v37);
      }

      else
      {
        outlined init with copy of Any(v23, v37);
        v24 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v6 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x21CE937A0](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}