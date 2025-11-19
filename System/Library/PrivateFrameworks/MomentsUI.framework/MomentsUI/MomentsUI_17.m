uint64_t lazy protocol witness table accessor for type UUID? and conformance <A> A?(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd);
    _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(a2, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(a2, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Data? and conformance <A> A?(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for DBAssetData()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t _s9MomentsUI11DBAssetDataCAC05SwiftD015PersistentModelAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

MomentsUI::MediaThirdPartyCategory_optional __swiftcall MediaThirdPartyCategory.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

MomentsUI::MediaThirdPartyBackgroundColorVariant_optional __swiftcall MediaThirdPartyBackgroundColorVariant.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MediaThirdPartyBackgroundColorVariant.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t MediaThirdPartyBackgroundColorVariant.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 1802658148;
  if (*v0 != 2)
  {
    v2 = 0x6B72614479726576;
  }

  if (*v0)
  {
    v1 = 0x746867696CLL;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MediaThirdPartyBackgroundColorVariant()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MediaThirdPartyBackgroundColorVariant()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MediaThirdPartyBackgroundColorVariant()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MediaThirdPartyBackgroundColorVariant(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE400000000000000;
  v5 = 1802658148;
  if (*v1 != 2)
  {
    v5 = 0x6B72614479726576;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x746867696CLL;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t ClientMediaThirdPartyViewModel.colorVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_colorVariant;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ClientMediaThirdPartyViewModel.colorVariant.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_colorVariant;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t ClientMediaThirdPartyViewModel.trackTitle.getter()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);

  return v1;
}

uint64_t ClientMediaThirdPartyViewModel.appIcon.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 336))(result);

    return v1;
  }

  return result;
}

uint64_t ClientMediaThirdPartyViewModel.mediaCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_mediaCategory;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ClientMediaThirdPartyViewModel.mediaCategory.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_mediaCategory;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

__n128 ClientMediaThirdPartyViewModel.backgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_backgroundColor;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 ClientMediaThirdPartyViewModel.backgroundColor.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_backgroundColor;
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t ClientMediaThirdPartyViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientMediaThirdPartyViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ClientMediaThirdPartyViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientMediaThirdPartyViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void ClientMediaThirdPartyViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_colorVariant] = 4;
  v1[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_mediaCategory] = 3;
  v2 = &v1[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_backgroundColor];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientMediaThirdPartyViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_colorVariant) = 4;
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_bundleIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_subtitle);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_mediaCategory) = 3;
  v3 = v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_backgroundColor;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientMediaThirdPartyViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_colorVariant] = 4;
  v1[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_mediaCategory] = 3;
  v2 = &v1[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_backgroundColor];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *ClientMediaThirdPartyViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for MediaThirdPartyView());
  return MediaThirdPartyView.init(viewModel:style:)(v1, &v3);
}

uint64_t ClientMediaThirdPartyViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id ClientMediaThirdPartyViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientMediaThirdPartyViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized ClientMediaThirdPartyViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v27[3] = a3;
  v27[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_colorVariant;
  a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_colorVariant] = 4;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_bundleIdentifier];
  *v9 = 0;
  v9[1] = 0;
  v10 = &a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_subtitle];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_mediaCategory;
  a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_mediaCategory] = 3;
  v12 = &a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_backgroundColor];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[32] = 1;
  swift_weakInit();
  outlined init with copy of DBObject(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBMediaThirdPartyModel();
  if (swift_dynamicCast())
  {
    v13 = v25;
    v15 = *(v25 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_subtitle);
    v14 = *(v25 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_subtitle + 8);
    swift_beginAccess();
    *v10 = v15;
    v10[1] = v14;

    if (*(v13 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue + 8))
    {
      v16 = 3;
    }

    else if (*(v13 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue) >= 3uLL)
    {
      v16 = 3;
    }

    else
    {
      v16 = *(v13 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue);
    }

    swift_beginAccess();
    a2[v11] = v16;
    v17 = *(v13 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 32);
    v22 = *(v13 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 16);
    v23 = *(v13 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor);
    v18 = swift_beginAccess();
    *v12 = v23;
    *(v12 + 1) = v22;
    v12[32] = v17;
    (*(*v13 + 440))(&v24, v18);
    v19 = v24;
    swift_beginAccess();
    a2[v8] = v19;
    swift_weakAssign();
    v20 = specialized AssetViewModel.init(clientDBObject:)(v13, a2);
    __swift_destroy_boxed_opaque_existential_1(v27);
    return v20;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientMediaThirdPartyViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientMediaThirdPartyViewModel());
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientMediaThirdPartyViewModel.init(dbObject:)(v9, v10, a3, a4);
}

void specialized ClientMediaThirdPartyViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_colorVariant) = 4;
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_bundleIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_subtitle);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_mediaCategory) = 3;
  v3 = v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_backgroundColor;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for ClientMediaThirdPartyViewModel()
{
  result = type metadata singleton initialization cache for ClientMediaThirdPartyViewModel;
  if (!type metadata singleton initialization cache for ClientMediaThirdPartyViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory()
{
  result = lazy protocol witness table cache variable for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory;
  if (!lazy protocol witness table cache variable for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory;
  if (!lazy protocol witness table cache variable for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MediaThirdPartyBackgroundColorVariant and conformance MediaThirdPartyBackgroundColorVariant()
{
  result = lazy protocol witness table cache variable for type MediaThirdPartyBackgroundColorVariant and conformance MediaThirdPartyBackgroundColorVariant;
  if (!lazy protocol witness table cache variable for type MediaThirdPartyBackgroundColorVariant and conformance MediaThirdPartyBackgroundColorVariant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaThirdPartyBackgroundColorVariant and conformance MediaThirdPartyBackgroundColorVariant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaThirdPartyBackgroundColorVariant and conformance MediaThirdPartyBackgroundColorVariant;
  if (!lazy protocol witness table cache variable for type MediaThirdPartyBackgroundColorVariant and conformance MediaThirdPartyBackgroundColorVariant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaThirdPartyBackgroundColorVariant and conformance MediaThirdPartyBackgroundColorVariant);
  }

  return result;
}

void *MutablePhotoViewModel.photo.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t MutablePhotoViewModel.isRenderedBasedOnProperties.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = Image.uiImage.getter();

  if (!v4)
  {
    return 0;
  }

  return 1;
}

id MutablePhotoViewModel.__allocating_init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(v5);
  swift_weakInit();
  swift_weakAssign();
  (*(v12 + 16))(v14, a5, v11);
  v16 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(a1, a2, a3, a4, v14);

  (*(v12 + 8))(a5, v11);
  return v16;
}

id static MutablePhotoViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutablePhotoViewModel.empty;

  return v1;
}

id MutablePhotoViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  swift_weakAssign();
  (*(v11 + 16))(v13, a5, v10);
  v14 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(a1, a2, a3, a4, v13);

  (*(v11 + 8))(a5, v10);
  return v14;
}

uint64_t MutablePhotoViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutablePhotoViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t MutablePhotoViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutablePhotoViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void MutablePhotoViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutablePhotoViewModel.init(from:)()
{
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutablePhotoViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutablePhotoViewModel.init(coder:)()
{
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutablePhotoViewModel.render()()
{
  v1[15] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](MutablePhotoViewModel.render(), 0, 0);
}

{
  v1 = v0[15];
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  v0[20] = v2;
  if (v2 && (v3 = (v1 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier), swift_beginAccess(), v4 = *v3, v0[21] = *v3, v5 = v3[1], (v0[22] = v5) != 0))
  {
    v6 = one-time initialization token for assetRendering;
    v7 = v2;

    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v8, static CommonSignposter.assetRendering);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v9 = OSSignposter.logHandle.getter();
    v10 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v9, v10, v12, "UIService_LoadPhotoAsset", "", v11, 2u);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[16];
    v16 = v0[17];

    (*(v16 + 16))(v14, v13, v15);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v0[23] = OSSignpostIntervalState.init(id:isOpen:)();
    v17 = swift_task_alloc();
    v0[24] = v17;
    *(v17 + 16) = v4;
    *(v17 + 24) = v5;
    v18 = swift_task_alloc();
    v0[25] = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7PHAssetCSgMd);
    *v18 = v0;
    v18[1] = MutablePhotoViewModel.render();

    return MEMORY[0x2822007B8](v0 + 13, 0, 0, 0x2874657373416870, 0xEE00293A6D6F7266, partial apply for closure #1 in static PhotosUtilities.phAsset(from:), v17, v19);
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static CommonLogger.viewModel);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21607C000, v21, v22, "[MutablePhotoViewModel] Doees not have maximumSupportedViewport", v23, 2u);
      MEMORY[0x21CE94770](v23, -1, -1);
    }

    v24 = v0[1];

    return v24();
  }
}

{

  return MEMORY[0x2822009F8](MutablePhotoViewModel.render(), 0, 0);
}

{
  v1 = *(v0 + 104);
  *(v0 + 208) = v1;
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 120);
    *(v0 + 232) = 0;
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x60))();
    v6 = (*((*v4 & *v2) + 0x78))();
    *(v0 + 233) = *(v3 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    v7[1] = MutablePhotoViewModel.render();

    return PHAsset.closestExactImage(type:viewport:assetClass:)(v0 + 16, (v0 + 232), (v0 + 233), v5, v6);
  }

  else
  {

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static CommonLogger.viewModel);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21607C000, v10, v11, "[MutablePhotoViewModel] Cannot retrieve PHAsset", v12, 2u);
      MEMORY[0x21CE94770](v12, -1, -1);
    }

    v13 = *(v0 + 184);
    v14 = *(v0 + 152);
    v15 = *(v0 + 160);
    v16 = *(v0 + 128);
    v17 = *(v0 + 136);

    $defer #1 () in MutablePhotoViewModel.render()(v13, "UIService_LoadPhotoAsset");

    (*(v17 + 8))(v14, v16);

    v18 = *(v0 + 8);

    return v18();
  }
}

{

  return MEMORY[0x2822009F8](MutablePhotoViewModel.render(), 0, 0);
}

{
  v18 = v0;
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI25ConstructedPhotosResource_pMd);
    type metadata accessor for Image();
    if (swift_dynamicCast())
    {
      v1 = v0[15];

      v2 = v0[14];
      v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v4 = *(v1 + v3);
      *(v1 + v3) = v2;

      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of ConstructedPhotosResource?((v0 + 2));
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static CommonLogger.viewModel);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[22];
  if (v8)
  {
    v10 = v0[21];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v17);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21607C000, v6, v7, "[MutablePhotoViewModel] Cannot render, localID=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CE94770](v12, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);
  }

  else
  {
  }

LABEL_10:
  v14 = v0[26];
  v15 = swift_task_alloc();
  v0[28] = v15;
  *v15 = v0;
  v15[1] = MutablePhotoViewModel.render();

  return MutablePhotosFamilyViewModel.sharedRender(asset:)(v14);
}

{

  return MEMORY[0x2822009F8](MutablePhotoViewModel.render(), 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);

  $defer #1 () in MutablePhotoViewModel.render()(v1, "UIService_LoadPhotoAsset");

  (*(v5 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

Swift::Bool __swiftcall MutablePhotoViewModel.clearCache()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  return 1;
}

void *MutablePhotoViewModel.view(style:)(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(type metadata accessor for PhotoView());
  v4 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  v5 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v6 = v1;
  *&v3[v4] = [v5 init];
  v7 = *MEMORY[0x277D76560];
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v8 = static PhotoView.Constants.accessibilityString;
  v9 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  v10 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v11 = v6;
  *&v3[v9] = [v10 init];
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v2;
  v31.receiver = v3;
  v31.super_class = type metadata accessor for AssetView();
  v14 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
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
  v24 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  v25 = *&v23[OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView];
  v26 = v23;
  [v25 setContentMode_];
  [*&v23[v24] setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v27 = *&v26[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
  v28 = MEMORY[0x21CE91FC0](0x6F746F6870, 0xE500000000000000);
  v29 = [objc_opt_self() systemImageNamed_];

  [v27 setImage_];
  return v14;
}

id MutablePhotoViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MutablePhotoViewModel.fetchedImage(asset:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](MutablePhotoViewModel.fetchedImage(asset:), 0, 0);
}

uint64_t MutablePhotoViewModel.fetchedImage(asset:)()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (v1)
  {
    v2 = MEMORY[0x277D85000];
    v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x60))();
    v4 = (*((*v2 & *v1) + 0x78))();
    if (one-time initialization token for assetRendering != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v5, static CommonSignposter.assetRendering);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v6 = OSSignposter.logHandle.getter();
    v7 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v6, v7, v9, "UIService_LoadImageThumbnail", "", v8, 2u);
      MEMORY[0x21CE94770](v8, -1, -1);
    }

    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];

    (*(v13 + 16))(v11, v10, v12);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v0[9] = OSSignpostIntervalState.init(id:isOpen:)();
    v15 = [objc_allocWithZone(MEMORY[0x277CD98A0]) init];
    v0[10] = v15;
    [v15 setDeliveryMode_];
    [v15 setNetworkAccessAllowed_];
    [v15 setUseLowMemoryMode_];
    [v15 setDownloadIntent_];
    v16 = [objc_allocWithZone(MEMORY[0x277CD9898]) init];
    v0[11] = v16;
    v17 = swift_task_alloc();
    v0[12] = v17;
    *(v17 + 16) = v16;
    *(v17 + 24) = v14;
    *(v17 + 32) = v3;
    *(v17 + 40) = v4;
    *(v17 + 48) = v15;
    v18 = swift_task_alloc();
    v0[13] = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd);
    *v18 = v0;
    v18[1] = MutablePhotoViewModel.fetchedImage(asset:);

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000014, 0x800000021657E660, partial apply for closure #1 in MutablePhotoViewModel.fetchedImage(asset:), v17, v19);
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static CommonLogger.viewModel);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21607C000, v21, v22, "[MutablePhotoViewModel] Viewport not set", v23, 2u);
      MEMORY[0x21CE94770](v23, -1, -1);
    }

    v24 = v0[1];

    return v24(0);
  }
}

{

  return MEMORY[0x2822009F8](MutablePhotoViewModel.fetchedImage(asset:), 0, 0);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);

  v6 = *(v0 + 16);
  $defer #1 () in MutablePhotoViewModel.render()(v3, "UIService_LoadImageThumbnail");

  (*(v5 + 8))(v2, v4);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t $defer #1 () in MutablePhotoViewModel.render()(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for assetRendering != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static CommonSignposter.assetRendering);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x21CE94770](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

void closure #1 in MutablePhotoViewModel.fetchedImage(asset:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCSgs5NeverOGMd);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = aBlock - v14;
  (*(v13 + 16))(aBlock - v14, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, v15, v12);
  aBlock[4] = partial apply for closure #1 in closure #1 in MutablePhotoViewModel.fetchedImage(asset:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIImage?, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_17;
  v18 = _Block_copy(aBlock);

  [a2 requestImageForAsset:a3 targetSize:1 contentMode:a4 options:v18 resultHandler:{a5, a6}];
  _Block_release(v18);
}

uint64_t closure #1 in closure #1 in MutablePhotoViewModel.fetchedImage(asset:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCSgs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t specialized MutablePhotosFamilyViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  return specialized MutablePhotosFamilyViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBVideoModel);
}

{
  return specialized MutablePhotosFamilyViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBLivePhotoModel);
}

{
  return specialized MutablePhotosFamilyViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBPhotoModel);
}

uint64_t specialized MutablePhotosFamilyViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t (*a3)(void))
{
  v28[3] = a3(0);
  v28[4] = &protocol witness table for DBAssetModel;
  v28[0] = a1;
  v5 = &a2[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_portraitCropRect];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = &a2[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_landscapeCropRect];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v7 = &a2[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_squareCropRect];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier];
  *v8 = 0;
  v8[1] = 0;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier];
  *v9 = 0;
  v9[1] = 0;
  outlined init with copy of DBObject(v28, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBPhotosFamilyModel();
  if (swift_dynamicCast())
  {
    v10 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 32);
    v20 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 16);
    v23 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect);
    swift_beginAccess();
    *v5 = v23;
    *(v5 + 1) = v20;
    v5[32] = v10;
    v11 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 32);
    v21 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 16);
    v24 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect);
    swift_beginAccess();
    *v6 = v24;
    *(v6 + 1) = v21;
    v6[32] = v11;
    v12 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 32);
    v22 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 16);
    v25 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect);
    swift_beginAccess();
    *v7 = v25;
    *(v7 + 1) = v22;
    v7[32] = v12;
    v14 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v13 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);
    swift_beginAccess();
    *v8 = v14;
    v8[1] = v13;

    v16 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
    v15 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
    swift_beginAccess();
    *v9 = v16;
    v9[1] = v15;

    *&a2[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_dbPhotosFamilyModel] = v26;

    v18 = specialized AssetViewModel.init(dbObject:)(v17, a2);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return v18;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized MutablePhotoViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v20[3] = a3;
  v20[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_weakInit();
  outlined init with copy of DBObject(v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBPhotoModel();
  if (swift_dynamicCast())
  {
    swift_weakAssign();

    v9 = specialized MutablePhotosFamilyViewModel.init(dbObject:)(v8, a2, type metadata accessor for DBPhotoModel);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v11 = *(v18 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
    v10 = *(v18 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
    v12 = &v9[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier];
    swift_beginAccess();
    *v12 = v11;
    *(v12 + 1) = v10;
    v13 = v9;

    v15 = *(v18 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v14 = *(v18 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);

    v16 = &v13[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier];
    swift_beginAccess();
    *v16 = v15;
    *(v16 + 1) = v14;

    return v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized MutablePhotoViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutablePhotoViewModel.init(dbObject:)(v9, v11, a3, a4);
}

uint64_t type metadata accessor for MutablePhotoViewModel()
{
  result = type metadata singleton initialization cache for MutablePhotoViewModel;
  if (!type metadata singleton initialization cache for MutablePhotoViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in MutablePhotoViewModel.fetchedImage(asset:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCSgs5NeverOGMd);

  return closure #1 in closure #1 in MutablePhotoViewModel.fetchedImage(asset:)(a1);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__int128 *PhotoView.Constants.accessibilityString.unsafeMutableAddressor()
{
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  return &static PhotoView.Constants.accessibilityString;
}

uint64_t static PhotoView.Constants.accessibilityString.getter()
{
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v0 = static PhotoView.Constants.accessibilityString;

  return v0;
}

void *PhotoView.init(viewModel:style:)(void *a1, char *a2)
{
  v4 = *a2;
  v5 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v6 = *MEMORY[0x277D76560];
    if (one-time initialization token for accessibilityString != -1)
    {
      swift_once();
    }

    v7 = static PhotoView.Constants.accessibilityString;
    v8 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v9 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v10 = a1;
    *&v2[v8] = [v9 init];
    swift_unknownObjectWeakInit();
    v11 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v2[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v4;
    v30.receiver = v2;
    v30.super_class = type metadata accessor for AssetView();
    v13 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v14 = *((*MEMORY[0x277D85000] & *v13) + 0xE8);
    v15 = v13;
    v14();
    AssetView.setFallBackView()();
    [v15 setIsAccessibilityElement_];
    v16 = [v15 accessibilityTraits];
    if ((v6 & ~v16) != 0)
    {
      v17 = v6;
    }

    else
    {
      v17 = 0;
    }

    [v15 setAccessibilityTraits_];
    v18 = MEMORY[0x21CE91FC0](v7, *(&v7 + 1));
    [v15 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21658CA50;
    v20 = type metadata accessor for UITraitUserInterfaceStyle();
    v21 = MEMORY[0x277D74BF0];
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    v22 = v15;
    MEMORY[0x21CE92C30](v19, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v22 handleTraitChange];
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];

    [v22 setClipsToBounds_];
    v23 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
    v24 = *&v22[OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView];
    v25 = v22;
    [v24 setContentMode_];
    [*&v22[v23] setTranslatesAutoresizingMaskIntoConstraints_];
    [v25 addSubview_];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    v26 = *&v25[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
    v27 = MEMORY[0x21CE91FC0](0x6F746F6870, 0xE500000000000000);
    v28 = [objc_opt_self() systemImageNamed_];

    [v26 setImage_];
    return v13;
  }

  else
  {

    type metadata accessor for PhotoView();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for PhotoView()
{
  result = type metadata singleton initialization cache for PhotoView;
  if (!type metadata singleton initialization cache for PhotoView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall PhotoView.addSubViews()()
{
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView];
  [v1 setContentMode_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];

  [v0 addSubview_];
}

Swift::Void __swiftcall PhotoView.addConstraints()()
{
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
}

Swift::Void __swiftcall PhotoView.configureFallback()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView);
  v2 = MEMORY[0x21CE91FC0](0x6F746F6870, 0xE500000000000000);
  v3 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
}

id PhotoView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PhotoView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall PhotoView.hideViews()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView) setHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView);

  [v1 setHidden_];
}

Swift::Void __swiftcall PhotoView.showViews()()
{
  AssetView.showViews()();
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView);

  [v1 setHidden_];
}

uint64_t PhotoView.updateAndShowViews()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = PhotoView.updateAndShowViews();

  return PhotoView.replacePhoto()();
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PhotoView.updateAndShowViews(), v1, v0);
}

{
  v1 = *(v0 + 16);

  PhotoView.adjustCrop()();
  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t PhotoView.replacePhoto()()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](PhotoView.replacePhoto(), v3, v2);
}

{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))();
  *(v0 + 48) = v2;
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (!v4)
  {

LABEL_9:

    goto LABEL_10;
  }

  v5 = v4;
  *(v0 + 56) = *(*(v0 + 16) + OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 16))(ObjectType, v5);
  *(v0 + 64) = v7;
  if (v7)
  {
    v8 = *(v0 + 16);
    v9 = (*((*v1 & *v8) + 0x88))();
    v10 = (*((*v1 & *v8) + 0xD8))(v9);
    v11 = *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport];
    *(v0 + 72) = v11;
    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 80) = v13;
    *v13 = v0;
    v13[1] = PhotoView.replacePhoto();

    return Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)((v0 + 96), 1, v10, v11, 0x506563616C706572, 0xEE0029286F746F68);
  }

  v16 = *(v0 + 48);
  [*(v0 + 56) setImage_];

LABEL_10:
  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = *(v0 + 88);

  v2 = *(v0 + 48);
  [*(v0 + 56) setImage_];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t PhotoView.replacePhoto()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 88) = a1;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);

  return MEMORY[0x2822009F8](PhotoView.replacePhoto(), v6, v5);
}

Swift::Void __swiftcall PhotoView.adjustCrop()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (!v2)
  {
    return;
  }

  v118 = v2;
  swift_getObjectType();
  v117 = swift_conformsToProtocol2();
  if (v117)
  {
    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static CommonLogger.views);
    v4 = v0;
    v5 = v118;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    v116 = v4;
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v131 = v9;
      *v8 = 134218498;
      (*((*v1 & *v4) + 0x88))(&v129);
      *(v8 + 4) = v129;

      *(v8 + 12) = 2080;
      ObjectType = swift_getObjectType();
      v11 = *(v117 + 8);
      (*(v11 + 32))(&v121, ObjectType, v11);
      if (v122)
      {
        v12 = 0xE300000000000000;
        v13 = 7104878;
      }

      else
      {
        v13 = CGRect.debugDescription.getter();
        v12 = v14;
      }

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v131);

      *(v8 + 14) = v15;
      *(v8 + 22) = 2080;
      (*(v11 + 24))(&v123, ObjectType, v11);
      if (v124)
      {
        v16 = 0xE300000000000000;
        v17 = 7104878;
      }

      else
      {
        v17 = CGRect.debugDescription.getter();
        v16 = v18;
      }

      v1 = MEMORY[0x277D85000];
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v131);

      *(v8 + 24) = v19;
      _os_log_impl(&dword_21607C000, v6, v7, "[adjustCrop] (PhotoView) applying crop for viewStyle=%ld, squareCropRect=%s, landscapeCropRect=%s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v9, -1, -1);
      MEMORY[0x21CE94770](v8, -1, -1);

      v4 = v116;
    }

    else
    {
    }

    (*((*v1 & *v4) + 0x88))(&v131);
    if (v131 > 7u)
    {
      goto LABEL_60;
    }

    if (((1 << v131) & 0xCB) != 0)
    {
      v20 = swift_getObjectType();
      v21 = *(v117 + 8);
      v22 = *(v21 + 32);
      v22(&v125, v20, v21);
      if (v126)
      {
        goto LABEL_28;
      }

      width = v125.size.width;
      height = v125.size.height;
      x = v125.origin.x;
      y = v125.origin.y;
      v27 = CGRectGetWidth(v125);
      v28 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
      if (v29)
      {
        if (v27 <= 0.5)
        {
LABEL_28:
          v114 = v22;
          v43 = v5;
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v44, v45))
          {
            v119 = v5;
            v46 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            v131 = v113;
            *v46 = 136315394;
            v47 = (*(v21 + 40))(v20, v21);
            if (!v48)
            {
              v47 = 7104878;
            }

            v49 = 0xE300000000000000;
            if (v48)
            {
              v50 = v48;
            }

            else
            {
              v50 = 0xE300000000000000;
            }

            v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v50, &v131);

            *(v46 + 4) = v51;
            *(v46 + 12) = 2080;
            v114(&v127, v20, v21);
            v52 = 7104878;
            if ((v128 & 1) == 0)
            {
              v52 = CGRect.debugDescription.getter();
              v49 = v53;
            }

            v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v49, &v131);

            *(v46 + 14) = v54;
            v55 = "[adjustCrop] unreasonable squareCropRect or no crop, cloudID=%s, crop=%s)";
LABEL_58:
            _os_log_impl(&dword_21607C000, v44, v45, v55, v46, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v113, -1, -1);
            MEMORY[0x21CE94770](v46, -1, -1);

            v4 = v116;
            v5 = v119;
            goto LABEL_60;
          }

          goto LABEL_59;
        }
      }

      else if (v27 <= v28)
      {
        goto LABEL_28;
      }

      v134.origin.x = x;
      v134.origin.y = y;
      v134.size.width = width;
      v134.size.height = height;
      v40 = CGRectGetHeight(v134);
      v41 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
      if (v42)
      {
        if (v40 <= 0.25)
        {
          goto LABEL_28;
        }
      }

      else if (v40 <= v41)
      {
        goto LABEL_28;
      }

      v56 = v20;
      v57 = *(v4 + OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView);
      v58 = [v57 layer];
      [v58 setContentsRect_];

      [v57 setNeedsDisplay];
      v59 = v5;
      v118 = Logger.logObject.getter();
      v60 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v118, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v127 = v62;
        *v61 = 136315394;
        v22(&v129, v56, v21);
        if (v130)
        {
          v63 = 0xE300000000000000;
          v64 = 7104878;
        }

        else
        {
          v64 = CGRect.debugDescription.getter();
          v63 = v100;
        }

        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v63, &v127);

        *(v61 + 4) = v101;
        *(v61 + 12) = 2080;
        (*(v21 + 24))(&v131, v56, v21);
        if (v132)
        {
          v102 = 0xE300000000000000;
          v103 = 7104878;
        }

        else
        {
          v103 = CGRect.debugDescription.getter();
          v102 = v104;
        }

        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v102, &v127);

        *(v61 + 14) = v105;
        v106 = v60;
LABEL_84:
        _os_log_impl(&dword_21607C000, v118, v106, "[adjustCrop] (PhotoView) applied crop for square, squareCropRect=%s, landscapeCropRect=%s", v61, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v62, -1, -1);
        MEMORY[0x21CE94770](v61, -1, -1);

        return;
      }

LABEL_73:

      goto LABEL_70;
    }

    if (((1 << v131) & 0x14) == 0)
    {
LABEL_60:
      v118 = v5;
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v120 = v87;
        *v86 = 136315394;
        v88 = swift_getObjectType();
        v89 = *(v117 + 8);
        (*(v89 + 32))(&v129, v88, v89);
        if (v130)
        {
          v90 = 0xE300000000000000;
          v91 = 7104878;
        }

        else
        {
          v91 = CGRect.debugDescription.getter();
          v90 = v92;
        }

        v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v90, &v120);

        *(v86 + 4) = v93;
        *(v86 + 12) = 2080;
        (*(v89 + 24))(&v131, v88, v89);
        if (v132)
        {
          v94 = 0xE300000000000000;
          v95 = 7104878;
        }

        else
        {
          v95 = CGRect.debugDescription.getter();
          v94 = v96;
        }

        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v94, &v120);

        *(v86 + 14) = v97;
        _os_log_impl(&dword_21607C000, v84, v85, "[adjustCrop] (PhotoView) applied no crop, squareCropRect=%s, landscapeCropRect=%s", v86, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v87, -1, -1);
        MEMORY[0x21CE94770](v86, -1, -1);

        v4 = v116;
      }

      else
      {
      }

      v98 = *(v4 + OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView);
      v99 = [v98 layer];
      [v99 setContentsRect_];

      [v98 setNeedsDisplay];
      goto LABEL_70;
    }

    v30 = swift_getObjectType();
    v31 = *(v117 + 8);
    v32 = *(v31 + 24);
    v32(&v125, v30, v31);
    if ((v126 & 1) == 0)
    {
      v34 = v125.size.width;
      v33 = v125.size.height;
      v36 = v125.origin.x;
      v35 = v125.origin.y;
      v37 = CGRectGetWidth(v125);
      v38 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
      if (v39)
      {
        if (v37 <= 0.5)
        {
          goto LABEL_49;
        }
      }

      else if (v37 <= v38)
      {
        goto LABEL_49;
      }

      v135.origin.x = v36;
      v135.origin.y = v35;
      v135.size.width = v34;
      v135.size.height = v33;
      v65 = CGRectGetHeight(v135);
      *&v66 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
      if (v67)
      {
        v68 = 0.25;
      }

      else
      {
        v68 = *&v66;
      }

      if (v65 > v68)
      {
        v69 = *(v4 + OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView);
        v70 = [v69 layer];
        [v70 setContentsRect_];

        [v69 setNeedsDisplay];
        v59 = v5;
        v118 = Logger.logObject.getter();
        v71 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v118, v71))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v127 = v62;
          *v61 = 136315394;
          (*(v31 + 32))(&v129, v30, v31);
          v72 = v30;
          if (v130)
          {
            v73 = 0xE300000000000000;
            v74 = 7104878;
          }

          else
          {
            v74 = CGRect.debugDescription.getter();
            v73 = v107;
          }

          v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, &v127);

          *(v61 + 4) = v108;
          *(v61 + 12) = 2080;
          v32(&v131, v72, v31);
          if (v132)
          {
            v109 = 0xE300000000000000;
            v110 = 7104878;
          }

          else
          {
            v110 = CGRect.debugDescription.getter();
            v109 = v111;
          }

          v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v109, &v127);

          *(v61 + 14) = v112;
          v106 = v71;
          goto LABEL_84;
        }

        goto LABEL_73;
      }
    }

LABEL_49:
    v115 = v32;
    v75 = v5;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v119 = v5;
      v46 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v131 = v113;
      *v46 = 136315394;
      v76 = (*(v31 + 40))(v30, v31);
      if (!v77)
      {
        v76 = 7104878;
      }

      v78 = 0xE300000000000000;
      if (v77)
      {
        v79 = v77;
      }

      else
      {
        v79 = 0xE300000000000000;
      }

      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v79, &v131);

      *(v46 + 4) = v80;
      *(v46 + 12) = 2080;
      v115(&v127, v30, v31);
      v81 = 7104878;
      if ((v128 & 1) == 0)
      {
        v81 = CGRect.debugDescription.getter();
        v78 = v82;
      }

      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v78, &v131);

      *(v46 + 14) = v83;
      v55 = "[adjustCrop] unreasonable landscapeCropRect or no crop, cloudID=%s, crop=%s)";
      goto LABEL_58;
    }

LABEL_59:

    goto LABEL_60;
  }

LABEL_70:
}

id PhotoView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for AssetViewBase.init(viewModel:style:) in conformance PhotoView@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  result = (*(v3 + 272))(a1, &v6);
  *a3 = result;
  return result;
}

id protocol witness for AssetViewBase.addSubViews() in conformance PhotoView()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  [*&v1[OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView] setContentMode_];
  [*&v1[v2] setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = *&v1[v2];

  return [v1 addSubview_];
}

uint64_t protocol witness for AssetViewBase.addConstraints() in conformance PhotoView()
{
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
}

void protocol witness for AssetViewBase.configureFallback() in conformance PhotoView()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView);
  v2 = MEMORY[0x21CE91FC0](0x6F746F6870, 0xE500000000000000);
  v3 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
}

Swift::Int PrivacySettings.JournalingSuggestions.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PrivacySettings.JournalingSuggestions and conformance PrivacySettings.JournalingSuggestions()
{
  result = lazy protocol witness table cache variable for type PrivacySettings.JournalingSuggestions and conformance PrivacySettings.JournalingSuggestions;
  if (!lazy protocol witness table cache variable for type PrivacySettings.JournalingSuggestions and conformance PrivacySettings.JournalingSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrivacySettings.JournalingSuggestions and conformance PrivacySettings.JournalingSuggestions);
  }

  return result;
}

uint64_t MutableMediaThirdPartyViewModel.build()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v108 = &v82 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v82 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v110 = &v82 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v82 - v19;
  v21 = type metadata accessor for DateInterval();
  v109 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v25 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v25)
  {
    return 0;
  }

  v107 = v5;
  v26 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (!v26)
  {
    return 0;
  }

  v103 = v24;
  v104 = &v82 - v23;
  v105 = v10;
  v106 = v12;
  v27 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v27, v20);
  v28 = v109;
  v29 = v109 + 48;
  v101 = *(v109 + 48);
  if (v101(v20, 1, v21) == 1)
  {
    outlined destroy of DateInterval?(v20);
    return 0;
  }

  v86 = v26;
  v94 = v29;
  v31 = *(v28 + 32);
  v32 = v104;
  v84 = v28 + 32;
  v83 = v31;
  v31(v104, v20, v21);
  v98 = v2;
  v85 = *(v2 + 16);
  v85(v106, v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v1);
  v33 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v34 = v33[1];
  v88 = *v33;
  v99 = v34;
  v35 = v110;
  (*(v28 + 16))(v110, v32, v21);
  (*(v28 + 56))(v35, 0, 1, v21);
  v36 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v37 = *(v0 + v36);
  v38 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_subtitle);
  swift_beginAccess();
  v39 = v38[1];
  v97 = *v38;
  v40 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier);
  swift_beginAccess();
  v41 = v40[1];
  v96 = *v40;
  v42 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant;
  swift_beginAccess();
  v89 = *(v0 + v42);
  v43 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory;
  swift_beginAccess();
  v93 = *(v0 + v43);
  v44 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor);
  swift_beginAccess();
  v45 = v44[1];
  v92 = *v44;
  v91 = v45;
  v90 = *(v44 + 32);
  v102 = v37;
  v100 = v39;
  v95 = v41;
  if (v37)
  {

    v46 = v37;
    v47 = v25;
    v48 = v99;

    v49 = Image.uiImage.getter();

    if (v49)
    {

      if (*(v44 + 32) != 1)
      {
        v87 = 1;
        goto LABEL_12;
      }
    }
  }

  else
  {

    v50 = v25;
    v48 = v99;
  }

  v87 = 0;
LABEL_12:
  v51 = v86;
  v52 = v105;
  UUID.init()();
  v53 = v52;
  v54 = v85;
  v85(v108, v53, v1);
  v54(v107, v106, v1);
  v55 = *(v51 + 16);
  if (v55)
  {
    v86 = v1;
    *&v112[0] = MEMORY[0x277D84F90];
    v56 = v25;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
    v57 = *&v112[0];
    v58 = (v51 + 32);
    v59 = *(*&v112[0] + 16);
    v60 = v100;
    do
    {
      v62 = *v58++;
      v61 = v62;
      *&v112[0] = v57;
      v63 = *(v57 + 24);
      if (v59 >= v63 >> 1)
      {
        v64 = v60;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v59 + 1, 1);
        v60 = v64;
        v48 = v99;
        v57 = *&v112[0];
      }

      *(v57 + 16) = v59 + 1;
      *(v57 + v59++ + 32) = v61;
      --v55;
    }

    while (v55);
    v1 = v86;
  }

  else
  {
    v65 = v25;
    v57 = MEMORY[0x277D84F90];
  }

  if (v48)
  {
    v66 = v88;
  }

  else
  {
    v66 = 0;
  }

  if (v48)
  {
    v67 = v48;
  }

  else
  {
    v67 = 0xE000000000000000;
  }

  outlined init with copy of DateInterval?(v110, v16);
  v68 = v101;
  v69 = v101(v16, 1, v21);
  v70 = v102;
  if (v69 == 1)
  {
    DateInterval.init()();
    if (v68(v16, 1, v21) != 1)
    {
      outlined destroy of DateInterval?(v16);
    }

    if (v70)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v83(v103, v16, v21);
    if (v70)
    {
LABEL_29:
      v71 = v70;
      v72 = specialized static DBAssetModel.baseImage2DB(_:)(v70);

      goto LABEL_32;
    }
  }

  v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
LABEL_32:
  v101 = v72;
  v73 = v67;
  v74 = v66;
  if (v89 <= 1)
  {
    if (v89)
    {
      v75 = 0xE500000000000000;
      v76 = 0x746867696CLL;
    }

    else
    {
      v75 = 0xE700000000000000;
      v76 = 0x6E776F6E6B6E75;
    }

    goto LABEL_41;
  }

  if (v89 == 2)
  {
    v75 = 0xE400000000000000;
    v76 = 1802658148;
    goto LABEL_41;
  }

  if (v89 == 3)
  {
    v75 = 0xE800000000000000;
    v76 = 0x6B72614479726576;
LABEL_41:
    v77 = v1;
    goto LABEL_42;
  }

  v77 = v1;
  v76 = 0;
  v75 = 0;
LABEL_42:
  v78 = v93 == 3;
  if (v93 == 3)
  {
    v79 = 0;
  }

  else
  {
    v79 = v93;
  }

  v112[0] = v92;
  v112[1] = v91;
  v113 = v90;
  v111 = v87;
  type metadata accessor for DBMediaThirdPartyModel();
  swift_allocObject();
  v80 = specialized DBMediaThirdPartyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subtitle:bundleIdentifier:colorVariantString:mediaThirdPartyCategoryRawValue:backgroundColor:renderState:)(v108, v107, v25, v57, v74, v73, v103, v101, v97, v100, v96, v95, v76, v75, v79, v78, v112, &v111);

  v81 = *(v98 + 8);
  v81(v105, v77);
  outlined destroy of DateInterval?(v110);
  v81(v106, v77);
  (*(v109 + 8))(v104, v21);
  return v80;
}

void *BlurGradientView.__allocating_init(colors:locations:startPoint:endPoint:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v13 = [objc_allocWithZone(v6) initWithFrame_];
  v14 = MEMORY[0x277D85000];
  v15 = *((*MEMORY[0x277D85000] & *v13) + 0x80);
  v16 = v13;
  v15(a1);
  (*((*v14 & *v16) + 0x98))(a2);
  (*((*v14 & *v16) + 0xB0))(a3, a4);
  (*((*v14 & *v16) + 0xC8))(a5, a6);

  return v16;
}

id MaskedBlurView.blurMaskView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14MaskedBlurView_blurMaskView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MaskedBlurView.blurMaskView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14MaskedBlurView_blurMaskView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MaskedBlurView.contentView.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MomentsUI14MaskedBlurView_blurView) contentView];

  return v1;
}

char *MaskedBlurView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC9MomentsUI14MaskedBlurView_blurView;
  v11 = [objc_opt_self() effectWithStyle_];
  v12 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v5[v10] = v12;
  v13 = OBJC_IVAR____TtC9MomentsUI14MaskedBlurView_blurMaskView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_216597AD0;
  v15 = objc_opt_self();
  *(v14 + 32) = [v15 clearColor];
  v16 = [v15 whiteColor];
  v17 = [v16 colorWithAlphaComponent_];

  *(v14 + 40) = v17;
  *(v14 + 48) = [v15 whiteColor];
  static UnitPoint.top.getter();
  v19 = v18;
  v21 = v20;
  static UnitPoint.bottom.getter();
  v23 = v22;
  v25 = v24;
  v26 = [objc_allocWithZone(type metadata accessor for BlurGradientView()) initWithFrame_];
  v27 = MEMORY[0x277D85000];
  v28 = *((*MEMORY[0x277D85000] & *v26) + 0x80);
  v29 = v26;
  v28(v14);
  (*((*v27 & *v29) + 0x98))(&outlined read-only object #0 of MaskedBlurView.init(frame:));
  (*((*v27 & *v29) + 0xB0))(v19, v21);
  (*((*v27 & *v29) + 0xC8))(v23, v25);

  *&v5[v13] = v29;
  v37.receiver = v5;
  v37.super_class = type metadata accessor for MaskedBlurView();
  v30 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
  [v30 setOverrideUserInterfaceStyle_];
  v31 = OBJC_IVAR____TtC9MomentsUI14MaskedBlurView_blurView;
  v32 = *&v30[OBJC_IVAR____TtC9MomentsUI14MaskedBlurView_blurView];
  [v30 bounds];
  [v32 setFrame_];

  [*&v30[v31] setAutoresizingMask_];
  v33 = *&v30[v31];
  v34 = OBJC_IVAR____TtC9MomentsUI14MaskedBlurView_blurMaskView;
  swift_beginAccess();
  [v33 setMaskView_];
  v35 = *&v30[v34];
  [v30 bounds];
  [v35 setFrame_];

  [*&v30[v34] setAutoresizingMask_];
  [*&v30[v34] setClipsToBounds_];
  [v30 addSubview_];

  return v30;
}

uint64_t type metadata accessor for BlurGradientView()
{
  result = type metadata singleton initialization cache for BlurGradientView;
  if (!type metadata singleton initialization cache for BlurGradientView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MaskedBlurView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t MaskedBlurView.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MomentsUI14MaskedBlurView_blurView;
  v5 = [objc_opt_self() effectWithStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v2 + v4) = v6;
  v7 = OBJC_IVAR____TtC9MomentsUI14MaskedBlurView_blurMaskView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_216597AD0;
  v9 = objc_opt_self();
  *(v8 + 32) = [v9 clearColor];
  v10 = [v9 whiteColor];
  v11 = [v10 colorWithAlphaComponent_];

  *(v8 + 40) = v11;
  *(v8 + 48) = [v9 whiteColor];
  static UnitPoint.top.getter();
  v13 = v12;
  v15 = v14;
  static UnitPoint.bottom.getter();
  v17 = v16;
  v19 = v18;
  v20 = [objc_allocWithZone(type metadata accessor for BlurGradientView()) initWithFrame_];
  v21 = MEMORY[0x277D85000];
  v22 = *((*MEMORY[0x277D85000] & *v20) + 0x80);
  v23 = v20;
  v22(v8);
  (*((*v21 & *v23) + 0x98))(&outlined read-only object #0 of MaskedBlurView.init(coder:));
  (*((*v21 & *v23) + 0xB0))(v13, v15);
  (*((*v21 & *v23) + 0xC8))(v17, v19);

  *(v2 + v7) = v23;
  type metadata accessor for MaskedBlurView();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall MaskedBlurView.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MaskedBlurView();
  v1 = objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x60))(v1);
  [v0 bounds];
  [v2 setFrame_];

  v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI14MaskedBlurView_blurView);
  [v0 bounds];
  [v3 setFrame_];
}

Swift::Void __swiftcall MaskedBlurView.changeGradientDirection(isVertical:)(Swift::Bool isVertical)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v5 = v4();
  if (isVertical)
  {
    v6 = static UnitPoint.top.getter();
    (*((*v3 & *v5) + 0xB0))(v6);

    v7 = v4();
    v8 = &outlined read-only object #0 of MaskedBlurView.changeGradientDirection(isVertical:);
    v9 = static UnitPoint.bottom.getter();
  }

  else
  {
    v10 = static UnitPoint.leading.getter();
    (*((*v3 & *v5) + 0xB0))(v10);

    v7 = v4();
    v8 = &outlined read-only object #1 of MaskedBlurView.changeGradientDirection(isVertical:);
    v9 = static UnitPoint.trailing.getter();
  }

  (*((*v3 & *v7) + 0xC8))(v9);

  v11 = v4();
  (*((*v3 & *v11) + 0x98))(v8);
}

uint64_t key path getter for BlurGradientView.colors : BlurGradientView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t key path setter for BlurGradientView.colors : BlurGradientView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x80);

  return v2(v3);
}

uint64_t BlurGradientView.colors.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

uint64_t BlurGradientView.colors.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static UIView.Invalidating.subscript.setter();
}

uint64_t (*BlurGradientView.colors.modify(uint64_t *a1))()
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
  *(v3 + 48) = static UIView.Invalidating.subscript.modify();
  return BlurGradientView.locations.modify;
}

uint64_t key path getter for BlurGradientView.locations : BlurGradientView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t key path setter for BlurGradientView.locations : BlurGradientView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x98);

  return v2(v3);
}

uint64_t BlurGradientView.locations.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

uint64_t BlurGradientView.locations.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static UIView.Invalidating.subscript.setter();
}

uint64_t (*BlurGradientView.locations.modify(uint64_t *a1))()
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
  *(v3 + 48) = static UIView.Invalidating.subscript.modify();
  return BlurGradientView.locations.modify;
}

double BlurGradientView.startPoint.getter()
{
  return BlurGradientView.startPoint.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

uint64_t BlurGradientView.startPoint.setter()
{
  return BlurGradientView.startPoint.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static UIView.Invalidating.subscript.setter();
}

uint64_t (*BlurGradientView.startPoint.modify(uint64_t *a1))()
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
  *(v3 + 48) = static UIView.Invalidating.subscript.modify();
  return BlurGradientView.startPoint.modify;
}

uint64_t (*BlurGradientView.endPoint.modify(uint64_t *a1))()
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
  *(v3 + 48) = static UIView.Invalidating.subscript.modify();
  return BlurGradientView.locations.modify;
}

void BlurGradientView.colors.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

Swift::Void __swiftcall BlurGradientView.didMoveToWindow()()
{
  v1 = v0;
  v2 = [v0 window];
  if (!v2)
  {
    goto LABEL_30;
  }

  v3 = v2;
  v4 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v5 = v0;
  v6 = v0;
  v7 = v0;
  if (v0)
  {
    do
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        v10 = [v6 superview];
        if (!v10)
        {
          break;
        }

        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v11 = [v10 superview];
          v10 = v11;
          if (!v11)
          {
            goto LABEL_15;
          }
        }

        v6 = v10;
      }

      MEMORY[0x21CE92260]();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v34;
      if (!v6)
      {
        break;
      }

      v8 = [v6 superview];
      v9 = v8;

      v6 = v8;
    }

    while (v8);
  }

LABEL_15:

  if (v4 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_17:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CE93180](0, v4);
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v12 = *(v4 + 32);
      }

      v13 = v12;

      v14 = [v13 backgroundView];
      if (v14)
      {
        v15 = v14;
        if ([v5 isDescendantOfView_])
        {
          v16 = *&v5[OBJC_IVAR____TtC9MomentsUI16BlurGradientView_layoutGuide];
          [v5 addLayoutGuide_];
          v32 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_216590220;
          v18 = [v16 topAnchor];
          v19 = [v3 safeAreaLayoutGuide];
          v20 = [v19 topAnchor];

          v21 = [v18 constraintEqualToAnchor_];
          *(v17 + 32) = v21;
          v22 = [v16 leadingAnchor];
          v23 = [v5 leadingAnchor];
          v24 = [v22 constraintEqualToAnchor_];

          *(v17 + 40) = v24;
          v25 = [v16 bottomAnchor];
          v26 = [v5 bottomAnchor];
          v27 = [v25 constraintEqualToAnchor_];

          *(v17 + 48) = v27;
          v28 = [v16 trailingAnchor];
          v29 = [v5 trailingAnchor];
          v30 = [v28 constraintEqualToAnchor_];

          *(v17 + 56) = v30;
          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v32 activateConstraints_];

          return;
        }

        v3 = v15;
      }

      else
      {

        v3 = v13;
      }

      goto LABEL_29;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_29:

LABEL_30:
  v31 = *&v1[OBJC_IVAR____TtC9MomentsUI16BlurGradientView_layoutGuide];

  [v1 removeLayoutGuide_];
}

Swift::Void __swiftcall BlurGradientView.layoutSubviews()()
{
  v1 = v0;
  v31 = [v0 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v34 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v30 = v3;
      v3 = 0;
      v8 = v34;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x21CE93180](v3, v6);
          goto LABEL_11;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v3 + 32);
LABEL_11:
        v10 = v9;
        v11 = [v9 CGColor];
        type metadata accessor for CGColorRef(0);
        v33 = v12;

        *&v32 = v11;
        v34 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        v4 = (v14 + 1);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v8 = v34;
        }

        ++v3;
        *(v8 + 16) = v4;
        outlined init with take of Any(&v32, (v8 + 32 * v14 + 32));
        if (i == v3)
        {

          v3 = v30;
          v4 = MEMORY[0x277D85000];
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_22:
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 setColors_];

    v16 = (*((*v4 & *v1) + 0x90))();
    if (v16)
    {
      specialized _arrayForceCast<A, B>(_:)(v16);

      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
      v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v17.super.isa = 0;
    }

    [v3 setLocations_];

    v18 = [v1 effectiveUserInterfaceLayoutDirection];
    v19 = (*((*v4 & *v1) + 0xA8))();
    if (v18 == 1)
    {
      v20 = 1.0 - v19;
    }

    else
    {
      v20 = v19;
    }

    v21 = *((*v4 & *v1) + 0xA8);
    v21();
    if (v22 == 0.0 && (v23 = *(v1 + OBJC_IVAR____TtC9MomentsUI16BlurGradientView_layoutGuide), (v24 = [v23 owningView]) != 0))
    {

      [v23 layoutFrame];
      MinY = CGRectGetMinY(v36);
      [v1 bounds];
      v26 = MinY / CGRectGetHeight(v37);
    }

    else
    {
      v21();
    }

    [v3 setStartPoint_];
    v27 = [v1 effectiveUserInterfaceLayoutDirection];
    v28 = (*((*v4 & *v1) + 0xC0))();
    if (v27 == 1)
    {
      v29 = 1.0 - v28;
    }

    else
    {
      v29 = v28;
    }

    (*((*v4 & *v1) + 0xC0))();
    [v3 setEndPoint_];
  }

  else
  {
  }
}

id MaskedBlurView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BlurGradientView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_7SwiftUI9UnitPointVAbCE13InvalidationsO6LayoutVGMd);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_Say12CoreGraphics7CGFloatVGSgAbCE13InvalidationsO6LayoutVGMd);
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for UIView.Invalidations.Layout();
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_SaySo7UIColorCGAbCE13InvalidationsO6LayoutVGMd);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - v18;
  v20 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView_layoutGuide;
  *&v4[v20] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v21 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__colors;
  v38 = MEMORY[0x277D84F90];
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7UIColorCGMd);
  lazy protocol witness table accessor for type [UIColor] and conformance <A> [A]();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v17 + 32))(&v4[v21], v19, v16);
  v22 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__locations;
  v38 = 0;
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGSgMd);
  lazy protocol witness table accessor for type [CGFloat]? and conformance <A> A?();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v33 + 32))(&v4[v22], v14, v34);
  v23 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__startPoint;
  static UnitPoint.top.getter();
  v38 = v24;
  v39 = v25;
  UIView.Invalidations.Layout.init()();
  lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint();
  UIView.Invalidating.init(wrappedValue:_:)();
  v26 = v36;
  v27 = *(v35 + 32);
  v27(&v4[v23], v11, v36);
  v28 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__endPoint;
  static UnitPoint.bottom.getter();
  v38 = v29;
  v39 = v30;
  UIView.Invalidations.Layout.init()();
  UIView.Invalidating.init(wrappedValue:_:)();
  v27(&v4[v28], v11, v26);
  v31 = type metadata accessor for BlurGradientView();
  v37.receiver = v4;
  v37.super_class = v31;
  return objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
}

id BlurGradientView.init(coder:)(void *a1)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_7SwiftUI9UnitPointVAbCE13InvalidationsO6LayoutVGMd);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_Say12CoreGraphics7CGFloatVGSgAbCE13InvalidationsO6LayoutVGMd);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for UIView.Invalidations.Layout();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_SaySo7UIColorCGAbCE13InvalidationsO6LayoutVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView_layoutGuide;
  *&v1[v13] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v14 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__colors;
  v35 = MEMORY[0x277D84F90];
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7UIColorCGMd);
  lazy protocol witness table accessor for type [UIColor] and conformance <A> [A]();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v10 + 32))(&v1[v14], v12, v9);
  v15 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__locations;
  v35 = 0;
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGSgMd);
  lazy protocol witness table accessor for type [CGFloat]? and conformance <A> A?();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v29 + 32))(&v1[v15], v7, v30);
  v16 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__startPoint;
  static UnitPoint.top.getter();
  v35 = v17;
  v36 = v18;
  UIView.Invalidations.Layout.init()();
  lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint();
  UIView.Invalidating.init(wrappedValue:_:)();
  v19 = v32;
  v20 = *(v31 + 32);
  v20(&v1[v16], v4, v32);
  v21 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__endPoint;
  static UnitPoint.bottom.getter();
  v35 = v22;
  v36 = v23;
  UIView.Invalidations.Layout.init()();
  UIView.Invalidating.init(wrappedValue:_:)();
  v20(&v1[v21], v4, v19);
  v24 = type metadata accessor for BlurGradientView();
  v34.receiver = v1;
  v34.super_class = v24;
  v25 = v33;
  v26 = objc_msgSendSuper2(&v34, sel_initWithCoder_, v33);

  if (v26)
  {
  }

  return v26;
}

id MaskedBlurView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type UIColor and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIColor and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIColor and conformance NSObject)
  {
    type metadata accessor for NSAttributedString(255, &lazy cache variable for type metadata for UIColor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIColor and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CGFloat]? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type [CGFloat]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [CGFloat]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12CoreGraphics7CGFloatVGSgMd);
    lazy protocol witness table accessor for type [UIColor] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], &_sSay12CoreGraphics7CGFloatVGMd, &_sSay12CoreGraphics7CGFloatVGMR, lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CGFloat]? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [UIColor] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint()
{
  result = lazy protocol witness table cache variable for type UnitPoint and conformance UnitPoint;
  if (!lazy protocol witness table cache variable for type UnitPoint and conformance UnitPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitPoint and conformance UnitPoint);
  }

  return result;
}

void type metadata completion function for BlurGradientView()
{
  type metadata accessor for UIView.Invalidating<[UIColor], UIView.Invalidations.Layout>(319, &lazy cache variable for type metadata for UIView.Invalidating<[UIColor], UIView.Invalidations.Layout>, &_sSaySo7UIColorCGMd, &_sSaySo7UIColorCGMR, lazy protocol witness table accessor for type [UIColor] and conformance <A> [A]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIView.Invalidating<[UIColor], UIView.Invalidations.Layout>(319, &lazy cache variable for type metadata for UIView.Invalidating<[CGFloat]?, UIView.Invalidations.Layout>, &_sSay12CoreGraphics7CGFloatVGSgMd, &_sSay12CoreGraphics7CGFloatVGSgMR, lazy protocol witness table accessor for type [CGFloat]? and conformance <A> A?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIView.Invalidating<UnitPoint, UIView.Invalidations.Layout>();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for UIView.Invalidating<[UIColor], UIView.Invalidations.Layout>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    type metadata accessor for UIView.Invalidations.Layout();
    a5();
    v7 = type metadata accessor for UIView.Invalidating();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for UIView.Invalidating<UnitPoint, UIView.Invalidations.Layout>()
{
  if (!lazy cache variable for type metadata for UIView.Invalidating<UnitPoint, UIView.Invalidations.Layout>)
  {
    type metadata accessor for UIView.Invalidations.Layout();
    lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint();
    v0 = type metadata accessor for UIView.Invalidating();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIView.Invalidating<UnitPoint, UIView.Invalidations.Layout>);
    }
  }
}

uint64_t EngagementEvent.init(viewModel:type:uiContainer:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unsigned __int8 *a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Client();
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a2;
  v20 = *a3;
  (*(*a1 + 280))(v17);
  v21 = &v19[*(v16 + 40)];
  v23 = *v21;
  v22 = *(v21 + 1);

  v24 = outlined destroy of Client(v19);
  if (!v22)
  {
    goto LABEL_6;
  }

  v34 = v20;
  v25 = (*(*a1 + 256))(v24);
  if (!v25)
  {

    goto LABEL_6;
  }

  v26 = v25;
  v27 = *(a1 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType);
  if (v27 == 65)
  {

LABEL_6:

    goto LABEL_7;
  }

  (*(*a1 + 184))();

  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v30 = *(v12 + 32);
    v30(v14, v10, v11);
    *a4 = v23;
    *(a4 + 1) = v22;
    *(a4 + 2) = v26;
    v31 = type metadata accessor for EngagementEvent();
    v30(&a4[v31[6]], v14, v11);
    a4[v31[7]] = v27;
    v32 = v34;
    a4[v31[8]] = v35;
    a4[v31[9]] = v32;
    return (*(*(v31 - 1) + 56))(a4, 0, 1, v31);
  }

  outlined destroy of UUID?(v10);
LABEL_7:
  v28 = type metadata accessor for EngagementEvent();
  return (*(*(v28 - 8) + 56))(a4, 1, 1, v28);
}

Swift::Int MessageSuggestionViewModel.Style.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t MessageSuggestionViewModel.style.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MessageSuggestionViewModel_style;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MessageSuggestionViewModel.style.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI26MessageSuggestionViewModel_style;
  result = swift_beginAccess();
  *(v1 + v3) = a1 & 1;
  return result;
}

uint64_t MessageSuggestionViewModel.__allocating_init(message:style:client:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  MessageSuggestionViewModel.init(message:style:client:)(a1, a2, a3 & 1, a4);
  return v8;
}

uint64_t MessageSuggestionViewModel.init(message:style:client:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v43 = a2;
  v44 = a4;
  v42 = a1;
  v40 = type metadata accessor for UUID();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  v38 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v17;
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  *(v4 + OBJC_IVAR____TtC9MomentsUI26MessageSuggestionViewModel_style) = a3 & 1;
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  v22 = *(v6 + 56);
  v23 = v40;
  v22(v13, 1, 1, v40);
  outlined init with copy of Client(v44, v10);
  v24 = v39;
  UUID.init()();
  UUID.init()();
  v25 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  v22((v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID), 1, 1, v23);
  v26 = (v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_title);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_subtitle);
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  *(v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking) = 0;
  v29 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  *(v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets) = 0;
  (*(v6 + 16))(v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID, v24, v23);
  swift_beginAccess();
  v30 = v43;
  *v26 = v42;
  v26[1] = v30;
  swift_beginAccess();
  *v27 = 0;
  v27[1] = 0;
  outlined init with copy of Date?(v19, v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate);
  v31 = v37;
  outlined init with copy of Date?(v37, v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate);
  swift_beginAccess();
  v32 = v4 + v25;
  v33 = v38;
  outlined assign with copy of UUID?(v38, v32);
  swift_endAccess();
  outlined destroy of Client(v44);
  (*(v6 + 8))(v24, v23);
  outlined destroy of UTType?(v33, &_s10Foundation4UUIDVSgMd);
  outlined destroy of UTType?(v31, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v19, &_s10Foundation4DateVSgMd);
  swift_beginAccess();
  *(v4 + v29) = 0;

  *(v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) = 13;
  *(v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) = 65;
  swift_beginAccess();
  v34 = *(v4 + v28);
  *(v4 + v28) = 0;

  outlined init with take of Client(v41, v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);
  *(v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt) = 0;
  return v4;
}

uint64_t MessageSuggestionViewModel.__deallocating_deinit()
{
  SuggestionViewModel.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type MessageSuggestionViewModel.Style and conformance MessageSuggestionViewModel.Style()
{
  result = lazy protocol witness table cache variable for type MessageSuggestionViewModel.Style and conformance MessageSuggestionViewModel.Style;
  if (!lazy protocol witness table cache variable for type MessageSuggestionViewModel.Style and conformance MessageSuggestionViewModel.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageSuggestionViewModel.Style and conformance MessageSuggestionViewModel.Style);
  }

  return result;
}

uint64_t type metadata accessor for MessageSuggestionViewModel()
{
  result = type metadata singleton initialization cache for MessageSuggestionViewModel;
  if (!type metadata singleton initialization cache for MessageSuggestionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static PresenterServerConnection.currentConnection.getter()
{
  if (one-time initialization token for $currentConnection != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  return v1;
}

uint64_t one-time initialization function for $currentConnection()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCy9MomentsUI25PresenterServerConnectionCSgGMd);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static PresenterServerConnection.$currentConnection = result;
  return result;
}

uint64_t static PresenterServerConnection.$currentConnection.getter()
{
  if (one-time initialization token for $currentConnection != -1)
  {
    swift_once();
  }
}

Swift::Int PresenterServerConnection.PresenterError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t PresenterServerConnection.presenterDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_presenterDelegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t PresenterServerConnection.currConnectionID.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_currConnectionID;
  swift_beginAccess();
  outlined assign with copy of UUID?(a1, v1 + v10);
  swift_endAccess();
  outlined init with copy of DateInterval?(v1 + v10, v5, &_s10Foundation4UUIDVSgMd);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of UTType?(a1, &_s10Foundation4UUIDVSgMd);
    return outlined destroy of UTType?(v5, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    v12 = (*(v7 + 32))(v9, v5, v6);
    v13 = (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v12);
    if (v13)
    {
      v14 = v13;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v14 didReceiveConnectionUUIDWithUuid_];
      swift_unknownObjectRelease();
    }

    outlined destroy of UTType?(a1, &_s10Foundation4UUIDVSgMd);
    return (*(v7 + 8))(v9, v6);
  }
}

id PresenterServerConnection.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xD0);
  v2 = v0;
  v1();

  v4.receiver = v2;
  v4.super_class = type metadata accessor for PresenterServerConnection();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for PresenterServerConnection()
{
  result = type metadata singleton initialization cache for PresenterServerConnection;
  if (!type metadata singleton initialization cache for PresenterServerConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall PresenterServerConnection.connectionInterrupted()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v3 didTransitionTo_];

    (*((*v1 & *v0) + 0xD0))();

    swift_unknownObjectRelease();
  }
}

id PresenterServerConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PresenterServerConnection.init()()
{
  *&v0[OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_presenterDelegate] = 0;
  v1 = OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_currConnectionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PresenterServerConnection();
  return objc_msgSendSuper2(&v4, sel_init);
}

id PresenterServerConnection.remoteTarget.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v28 = 0;
  v7 = *(v0 + OBJC_IVAR____TtC9MomentsUI16ServerConnection_lock);
  swift_unknownObjectWeakInit();
  [v7 lock];
  specialized closure #1 in PresenterServerConnection.remoteTarget.getter(v27, &v28);
  [v7 unlock];
  MEMORY[0x21CE948B0](v27);
  v8 = v28;
  if (v28)
  {
    swift_unknownObjectRetain();
    v9 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x80000002165794A0);
    v10 = MEMORY[0x21CE91FC0](0x676E416369736142, 0xED00004350496C65);
    v11 = [objc_opt_self() attributeWithDomain:v9 name:v10];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21658E210;
    *(v12 + 32) = v11;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for RBSAttribute);
    v13 = v11;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [v8 remoteTargetWithLaunchingAssertionAttributes_];

    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27[0] = v25;
    v27[1] = v26;
    if (*(&v26 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11ViewService_pMd);
      if (swift_dynamicCast())
      {
        v16 = v24;
        if (v24)
        {
          v17 = [v24 getConnectionID];
          if (v17)
          {
            v18 = v17;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v19 = 0;
          }

          else
          {
            v19 = 1;
          }

          v22 = type metadata accessor for UUID();
          (*(*(v22 - 8) + 56))(v4, v19, 1, v22);
          outlined init with take of UUID?(v4, v6);
          goto LABEL_13;
        }
      }
    }

    else
    {
      outlined destroy of UTType?(v27, &_sypSgMd);
    }

    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v16 = 0;
LABEL_13:
    PresenterServerConnection.currConnectionID.setter(v6);
    swift_unknownObjectRelease_n();

    return v16;
  }

  return 0;
}

uint64_t specialized closure #1 in PresenterServerConnection.remoteTarget.getter(uint64_t a1, void *a2)
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

    v9 = static PresenterServerConnection.queue;
    v10 = objc_opt_self();
    v11 = [v10 protocolForProtocol_];
    v6 = [v10 protocolForProtocol_];
    v4 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v8) + 0xB8))(0xD00000000000002CLL, 0x800000021657EA80, v9, v11, v6);
  }

LABEL_8:
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = *((*v4 & *v12) + 0x70);
    v14 = v12;
    v15 = v13();

    if (!v15)
    {
LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }

    v12 = swift_dynamicCastObjCProtocolConditional();
    if (!v12)
    {

      goto LABEL_12;
    }
  }

LABEL_13:
  *a2 = v12;
  return swift_unknownObjectRelease();
}

void PresenterServerConnection.updatePicker(with:animated:)(uint64_t a1, void *a2)
{
  v5 = [v2 remoteTarget];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (a1)
  {
    goto LABEL_5;
  }

  v7 = (*((*MEMORY[0x277D85000] & *v2) + 0x70))();
  if (v7)
  {

LABEL_5:
    if (one-time initialization token for presentation != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static CommonLogger.presentation);
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 134218242;
      *(v12 + 4) = a1;
      *(v12 + 12) = 2112;
      *(v12 + 14) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&dword_21607C000, v10, v11, "[PresenterServerConnection] updatePicker to state: %ld, animated: %@", v12, 0x16u);
      outlined destroy of UTType?(v13, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v13, -1, -1);
      MEMORY[0x21CE94770](v12, -1, -1);
    }

    v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v6 updatePickerWith:v19 animated:v9];
    swift_unknownObjectRelease();

    return;
  }

  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static CommonLogger.presentation);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_21607C000, v16, v17, "[PresenterServerConnection] Avoid double dismisal", v18, 2u);
    MEMORY[0x21CE94770](v18, -1, -1);
  }

  swift_unknownObjectRelease();
}

id PresenterServerConnection.requestPresentation(for:with:)(void *a1, void *a2)
{
  v3 = v2;
  result = [v3 remoteTarget];
  if (result)
  {
    v7 = result;
    if (one-time initialization token for presentation != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static CommonLogger.presentation);
    v9 = a1;
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315394;
      if (a1)
      {
        v15 = [v9 stringRepresentation];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0xE000000000000000;
      }

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v25);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2080;
      v20 = [v10 debugDescription];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v25);

      *(v13 + 14) = v24;
      _os_log_impl(&dword_21607C000, v11, v12, "[PresenterServerConnection] requestPresentation for token: %s, with options: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v14, -1, -1);
      MEMORY[0x21CE94770](v13, -1, -1);
    }

    [v7 requestPresentationFor:v9 with:v10];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PresenterServerConnection.retrieveOnboardingState()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](PresenterServerConnection.retrieveOnboardingState(), 0, 0);
}

{
  v1 = [*(v0 + 152) remoteTarget];
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = v1;
    if (one-time initialization token for presentation != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    *(v0 + 168) = __swift_project_value_buffer(v3, static CommonLogger.presentation);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21607C000, v4, v5, "[PresenterServerConnection] retrieveOnboardingState", v6, 2u);
      MEMORY[0x21CE94770](v6, -1, -1);
    }

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = PresenterServerConnection.retrieveOnboardingState();
    v7 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8NSNumberCs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MKMapSnapshot?, @unowned NSError?) -> () with result type MKMapSnapshot;
    *(v0 + 104) = &block_descriptor_18;
    *(v0 + 112) = v7;
    [v2 retrieveOnboardingStateWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = PresenterServerConnection.retrieveOnboardingState();
  }

  else
  {
    v2 = PresenterServerConnection.retrieveOnboardingState();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 144);
  v2 = [v1 integerValue];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_21607C000, v3, v4, "[PresenterServerConnection] retrieveOnboardingState, retrievedState=%ld", v5, 0xCu);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  swift_unknownObjectRelease();
  v6 = *(v0 + 8);

  return v6(v2);
}

{
  v1 = *(v0 + 176);
  swift_willThrow();
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t @objc closure #1 in PresenterServerConnection.retrieveOnboardingState()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in PresenterServerConnection.retrieveOnboardingState();

  return PresenterServerConnection.retrieveOnboardingState()();
}

uint64_t @objc closure #1 in PresenterServerConnection.retrieveOnboardingState()(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t PresenterServerConnection.retrieveOnboardingStateLocal()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return specialized PresenterServerConnection.retrieveOnboardingStateLocal()();
}

uint64_t @objc closure #1 in PresenterServerConnection.retrieveOnboardingStateLocal()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in PresenterServerConnection.retrieveOnboardingStateLocal();

  return specialized PresenterServerConnection.retrieveOnboardingStateLocal()();
}

uint64_t @objc closure #1 in PresenterServerConnection.retrieveOnboardingStateLocal()(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t PresenterServerConnection.retrieveNotificationConfiguration()()
{
  v1[39] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v1[40] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[41] = v2;
  v1[42] = *(v2 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](PresenterServerConnection.retrieveNotificationConfiguration(), 0, 0);
}

{
  v1 = [*(v0 + 312) remoteTarget];
  *(v0 + 360) = v1;
  if (!v1)
  {
    lazy protocol witness table accessor for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
LABEL_9:

    v14 = *(v0 + 8);

    return v14();
  }

  v2 = v1;
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_currConnectionID;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v6 + v7, v5, &_s10Foundation4UUIDVSgMd);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    outlined destroy of UTType?(*(v0 + 320), &_s10Foundation4UUIDVSgMd);
    if (one-time initialization token for presentation != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static CommonLogger.presentation);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21607C000, v9, v10, "[PresenterServerConnection] No known connectionID to get notification schedule setting", v11, 2u);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    lazy protocol witness table accessor for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  (*(*(v0 + 336) + 32))(*(v0 + 352), *(v0 + 320), *(v0 + 328));
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  *(v0 + 368) = __swift_project_value_buffer(v16, static CommonLogger.presentation);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_21607C000, v17, v18, "[PresenterServerConnection] get notification availability status", v19, 2u);
    MEMORY[0x21CE94770](v19, -1, -1);
  }

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 296;
  *(v0 + 24) = PresenterServerConnection.retrieveNotificationConfiguration();
  v20 = swift_continuation_init();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8NSNumberCs5Error_pGMd);
  *(v0 + 376) = v21;
  *(v0 + 200) = v21;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MKMapSnapshot?, @unowned NSError?) -> () with result type MKMapSnapshot;
  *(v0 + 168) = &block_descriptor_4;
  *(v0 + 176) = v20;
  [v2 retrieveNotificationAvailabilityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = PresenterServerConnection.retrieveNotificationConfiguration();
  }

  else
  {
    v2 = PresenterServerConnection.retrieveNotificationConfiguration();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v29 = v0;
  v1 = v0[37];
  v2 = [v1 integerValue];
  v0[49] = v2;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_21607C000, v3, v4, "[PresenterServerConnection] retrieveNotificationAvailability, retrievedState=%ld", v5, 0xCu);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[41];
  v9 = v0[42];

  (*(v9 + 16))(v7, v6, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[42];
  v13 = v0[43];
  v15 = v0[41];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315138;
    v27 = UUID.uuidString.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v19, &v28);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_21607C000, v10, v11, "[PresenterServerConnection] retrieveNotificationScheduleType. currConnectionID: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x21CE94770](v17, -1, -1);
    MEMORY[0x21CE94770](v16, -1, -1);
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v13, v15);
  }

  v0[50] = v20;
  v22 = v0[47];
  v23 = v0[45];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[51] = isa;
  v0[10] = v0;
  v0[15] = v0 + 38;
  v0[11] = PresenterServerConnection.retrieveNotificationConfiguration();
  v25 = swift_continuation_init();
  v0[33] = v22;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MKMapSnapshot?, @unowned NSError?) -> () with result type MKMapSnapshot;
  v0[29] = &block_descriptor_7_0;
  v0[30] = v25;
  [v23 retrieveNotificationScheduleTypeWithConnectionID:isa completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = PresenterServerConnection.retrieveNotificationConfiguration();
  }

  else
  {
    v2 = PresenterServerConnection.retrieveNotificationConfiguration();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 408);
  v2 = *(v0 + 304);
  v3 = [v2 integerValue];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v3;
    _os_log_impl(&dword_21607C000, v4, v5, "[PresenterServerConnection] retrieveNotificationScheduleType, retrievedState=%ld", v6, 0xCu);
    MEMORY[0x21CE94770](v6, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v0 + 400))(*(v0 + 352), *(v0 + 328));

  v7 = *(v0 + 8);
  v8 = *(v0 + 392);

  return v7(v3, v8);
}

{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  swift_willThrow();
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[51];
  v2 = v0[50];
  v3 = v0[44];
  v4 = v0[41];
  swift_willThrow();

  swift_willThrow();
  swift_unknownObjectRelease();
  v2(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t @objc closure #1 in PresenterServerConnection.retrieveNotificationConfiguration()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in PresenterServerConnection.retrieveNotificationConfiguration();

  return PresenterServerConnection.retrieveNotificationConfiguration()();
}

uint64_t @objc closure #1 in PresenterServerConnection.retrieveNotificationConfiguration()(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 24);
  v7 = *(*v3 + 16);
  v8 = *v3;

  v9 = (v6 + 16);
  v10 = *(v8 + 24);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*v9)(v10, 0, 0, v11);
  }

  else
  {
    (*v9)(*(v8 + 24), a1, a2, 0);
  }

  _Block_release(*(v8 + 24));
  v12 = *(v8 + 8);

  return v12();
}

uint64_t PresenterServerConnection.retrieveUrlForToken(_:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a2;
  v47 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v41 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v41 - v16;
  v18 = [v5 remoteTarget];
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v23 = *(v20 + 56);
  v22 = v20 + 56;
  v21 = v23;
  if (v18)
  {
    v43 = v12;
    v44 = v9;
    v45 = a5;
    v41[1] = v22;
    v42 = v21;
    v21(v17, 1, 1, v19);
    if (one-time initialization token for presentation != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static CommonLogger.presentation);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21607C000, v25, v26, "[PresenterServerConnection] get asset url with token", v27, 2u);
      MEMORY[0x21CE94770](v27, -1, -1);
    }

    v28 = MEMORY[0x21CE91FC0](a1, v46);
    v29 = MEMORY[0x21CE91FC0](v47, a4);
    v30 = [v18 retrieveUrlForToken:v28 type:v29];

    if (v30)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v33 = v43;
    v42(v15, v31, 1, v19);
    outlined assign with take of URL?(v15, v17);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48[0] = v37;
      *v36 = 136315138;
      swift_beginAccess();
      outlined init with copy of DateInterval?(v17, v33, &_s10Foundation3URLVSgMd);
      v38 = String.init<A>(describing:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v48);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_21607C000, v34, v35, "[PresenterServerConnection] retrieveUrlForToken, retrievedUrl=%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x21CE94770](v37, -1, -1);
      MEMORY[0x21CE94770](v36, -1, -1);
    }

    swift_unknownObjectRelease();

    swift_beginAccess();
    outlined init with copy of DateInterval?(v17, v45, &_s10Foundation3URLVSgMd);
    return outlined destroy of UTType?(v17, &_s10Foundation3URLVSgMd);
  }

  else
  {

    return (v21)(a5, 1, 1, v19);
  }
}

Swift::Void __swiftcall PresenterServerConnection.willReceiveUserSelection()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  if (v1)
  {
    [v1 willReceiveUserSelection];

    swift_unknownObjectRelease();
  }
}

void *PresenterServerConnection.didReceiveUserSelection(suggestion:)(uint64_t a1)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();
  if (result)
  {
    [result didReceiveUserSelectionWithSuggestion_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *PresenterServerConnection.didReceiveStateUpdateRequest(_:)(void *a1, const char *a2, SEL *a3)
{
  v6 = v3;
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static CommonLogger.presentation);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_21607C000, v10, v11, a2, v12, 0xCu);
    outlined destroy of UTType?(v13, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  result = (*((*MEMORY[0x277D85000] & *v6) + 0xF0))();
  if (result)
  {
    [result *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

void specialized PresenterServerConnection.retrieveOnboardingStateLocal()()
{
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.presentation);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[PresenterServerConnection] retrieveOnboardingStateLocal", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  swift_beginAccess();
  v5 = static MomentsUIManager.onboardingFlowStatus;
  if (static MomentsUIManager.onboardingFlowStatus && (v6 = qword_2811A7C30, v7 = , v8 = v5(v7), v10 = v9, outlined consume of (@escaping @callee_guaranteed () -> (@unowned UInt?))?(v5, v6), (v10 & 1) == 0))
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v8;
      _os_log_impl(&dword_21607C000, v11, v12, "[PresenterServerConnection] retrieveOnboardingStateLocal, retrievedState=%lu", v13, 0xCu);
      MEMORY[0x21CE94770](v13, -1, -1);
    }

    if (v8 < 0)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *(v0 + 8);

  v14(v8);
}

unint64_t lazy protocol witness table accessor for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError()
{
  result = lazy protocol witness table cache variable for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError;
  if (!lazy protocol witness table cache variable for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError;
  if (!lazy protocol witness table cache variable for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError);
  }

  return result;
}

void type metadata completion function for PresenterServerConnection()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t partial apply for @objc closure #1 in PresenterServerConnection.retrieveNotificationConfiguration()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in PresenterServerConnection.retrieveNotificationConfiguration()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in PresenterServerConnection.retrieveOnboardingStateLocal()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in PresenterServerConnection.retrieveOnboardingStateLocal()(v2);
}

uint64_t partial apply for @objc closure #1 in PresenterServerConnection.retrieveOnboardingState()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterImage(imageSource:outputURL:);

  return @objc closure #1 in PresenterServerConnection.retrieveOnboardingState()(v2, v3);
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

uint64_t static PosterCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016PosterCollectionbD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static PosterCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id PosterCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t static PosterSmallCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021PosterSmallCollectionbD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static PosterSmallCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id PosterCollectionViewCell.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static PosterHorizontalCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI026PosterHorizontalCollectionbD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static PosterHorizontalCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *specialized PosterCollectionViewCell.init(frame:)(char a1)
{
  if (one-time initialization token for empty != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = static MutablePosterViewModel.empty;
  v12 = a1;
  v2 = objc_allocWithZone(type metadata accessor for PosterView());
  v3 = PosterView.init(viewModel:style:)(v1, &v12);
  if (v3)
  {
    v4 = v3;
    v5 = CollectionViewAssetCell.init(assetView:)(v4);
    v6 = *((*MEMORY[0x277D85000] & *v5) + 0x90);
    v7 = v5;
    v8 = v6();

    [v8 addSubview_];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v7;
  }

  else
  {
    v10 = [objc_allocWithZone(type metadata accessor for AssetView()) init];

    return CollectionViewAssetCell.init(assetView:)(v10);
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v29 - v7;
  MEMORY[0x28223BE20](v6);
  v11 = &v29 - v10;
  v12 = *(a1 + 64);
  v31 = a1 + 64;
  v32 = v9;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v30 = (v13 + 63) >> 6;
  v16 = v9 + 16;
  v17 = (v9 + 8);

  v19 = 0;
  v33 = a1;
  v40 = v17;
  v41 = v8;
  v38 = v2;
  v39 = v11;
  v37 = v16;
  while (v15)
  {
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    result = *(*(a1 + 56) + ((v19 << 9) | (8 * v21)));
    v22 = *(result + 16);
    if (v22)
    {
      v35 = v19;
      v36 = v15;
      v23 = result + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v43 = *(v32 + 72);
      v42 = *(v32 + 16);
      v34 = result;

      do
      {
        v24 = v39;
        v25 = v42;
        v42(v39, v23, v2);
        v25(v5, v24, v2);
        v26 = v41;
        specialized Set._Variant.insert(_:)(v41, v5);
        v27 = v5;
        v28 = *v40;
        (*v40)(v26, v2);
        v28(v24, v2);
        v5 = v27;
        v23 += v43;
        --v22;
      }

      while (v22);

      a1 = v33;
      v19 = v35;
      v15 = v36;
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v30)
    {
    }

    v15 = *(v31 + 8 * v20);
    ++v19;
    if (v15)
    {
      v19 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static DBSnapshot.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static DBSnapshot.Class = a1;
  unk_27CA90D68 = a2;
  byte_27CA90D70 = a3;
  return result;
}

uint64_t DBSnapshot.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static DBSnapshot.Log);
}

uint64_t static DBSnapshot.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSnapshot.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DBSnapshot.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSnapshot.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DBSnapshot.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static DBSnapshot.Log);
  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance DBSnapshot@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSnapshot.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

MomentsUI::DBSnapshot::Tab_optional __swiftcall DBSnapshot.Tab.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if ((rawValue + 1) < 3)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DBSnapshot.Tab.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {

    v6 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    if (v5 == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5 == 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t key path setter for DBSnapshot.id : DBSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 216))(v6);
}

uint64_t type metadata accessor for DBSnapshot()
{
  result = type metadata singleton initialization cache for DBSnapshot;
  if (!type metadata singleton initialization cache for DBSnapshot)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*DBSnapshot.id.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
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
  *(v4 + 24) = v1;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v5[7] = v9;
  v5[8] = v10;
  *v5 = v1;
  swift_getKeyPath();
  v5[9] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  PersistentModel.getValue<A>(forKey:)();

  return DBSnapshot.id.modify;
}

void DBSnapshot.id.modify(uint64_t a1, char a2)
{
  DBSnapshot.id.modify(a1, a2);
}

{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v12[1] = *(*a1 + 64);
  v12[2] = v3;
  v4 = v2[6];
  v5 = v2[7];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[3];
  if (a2)
  {
    (*(v7 + 16))(v2[6], v2[7], v2[4]);
    v2[1] = v8;
    KeyPath = swift_getKeyPath();
    v12[0] = v12;
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v10 = *(v7 + 8);
    v10(v4, v6);
    v10(v5, v6);
  }

  else
  {
    v2[2] = v8;
    v11 = swift_getKeyPath();
    v12[0] = v12;
    MEMORY[0x28223BE20](v11);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v7 + 8))(v5, v6);
  }

  free(v5);
  free(v4);
  free(v2);
}

uint64_t key path getter for DBSnapshot.generation : DBSnapshot@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for DBSnapshot.generation : DBSnapshot(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 264);

  return v4(v2, v3);
}

uint64_t DBSnapshot.generation.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t DBSnapshot.generation.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in DBSnapshot.generation.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*DBSnapshot.generation.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return DBSnapshot.generation.modify;
}

void DBSnapshot.generation.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*a1 + 16) = *(*a1 + 32);
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

uint64_t key path getter for DBSnapshot.sequence : DBSnapshot@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

uint64_t DBSnapshot.sequence.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t DBSnapshot.sequence.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in DBSnapshot.sequence.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*DBSnapshot.sequence.modify(void *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return DBSnapshot.sequence.modify;
}

void DBSnapshot.sequence.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 8) = *(*a1 + 16);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t key path getter for DBSnapshot.loadedSuggestions : DBSnapshot@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UInt64? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UInt64? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss6UInt64VSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UInt64? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss6UInt64VSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64? and conformance <A> A?);
  }

  return result;
}

uint64_t DBSnapshot.loadedSuggestions.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type UInt64? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t DBSnapshot.loadedSuggestions.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in DBSnapshot.loadedSuggestions.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type UInt64? and conformance <A> A?();
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*DBSnapshot.loadedSuggestions.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type UInt64? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSnapshot.loadedSuggestions.modify;
}

void DBSnapshot.loadedSuggestions.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 16) = *(*a1 + 32);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

Swift::Void __swiftcall DBSnapshot.refreshLoadedSuggestions()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  v24 = MEMORY[0x277D84FA0];
  v9 = (*(*v0 + 576))(v6);
  specialized Sequence.forEach(_:)(v9);

  type metadata accessor for DBSnapshot();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  if (!PersistentModel.modelContext.getter())
  {
    goto LABEL_6;
  }

  v22 = v5;
  v10 = dispatch thunk of ModelContext.container.getter();

  type metadata accessor for ModelContext();
  swift_allocObject();

  v21 = v10;
  v19[1] = ModelContext.init(_:)();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd);
  v12 = *(v11 - 8);
  v20 = 0;
  v13 = *(v12 + 56);
  v13(v3, 1, 1, v11);
  v14 = type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  FetchDescriptor.init(predicate:sortBy:)();
  v15 = FetchDescriptor.includePendingChanges.setter();
  v19[0] = v19;
  MEMORY[0x28223BE20](v15);
  v19[-2] = &v24;
  v23 = v14;
  Predicate.init(_:)();
  v13(v3, 0, 1, v11);
  FetchDescriptor.predicate.setter();
  v16 = v20;
  v17 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
  if (v16)
  {

    (*(v22 + 8))(v8, v4);
LABEL_6:

    return;
  }

  v18 = v22;
  if ((v17 & 0x8000000000000000) == 0)
  {
    (*(*v0 + 360))();

    (*(v18 + 8))(v8, v4);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t closure #3 in DBSnapshot.refreshLoadedSuggestions()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbSgGMd);
  v6 = *(v5 - 8);
  v58 = v5;
  v59 = v6;
  MEMORY[0x28223BE20](v5);
  v55 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGMd);
  v9 = *(v8 - 8);
  v56 = v8;
  v57 = v9;
  MEMORY[0x28223BE20](v8);
  v51 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGAC5ValueVy_ANGGMd);
  v12 = *(v11 - 8);
  v60 = v11;
  v61 = v12;
  MEMORY[0x28223BE20](v11);
  v54 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd);
  v19 = *(v18 - 8);
  v49 = v18;
  v50 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4UUIDVGGMd);
  v48 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAIGGMd);
  v26 = *(v25 - 8);
  v52 = v25;
  v53 = v26;
  MEMORY[0x28223BE20](v25);
  v63 = &v43 - v27;
  v45 = *a1;
  v65 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4UUIDVGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v28 = *(v15 + 8);
  v43 = v15 + 8;
  v44 = v28;
  v28(v17, v14);
  v47 = MEMORY[0x277CC9080];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<UUID>> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4UUIDVGGMd);
  v46 = MEMORY[0x277CC90C0];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Set<UUID> and conformance Set<A>, &_sShy10Foundation4UUIDVGMd);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v29 = v49;
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v50 + 8))(v21, v29);
  (*(v48 + 8))(v24, v22);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v30 = v51;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v44(v17, v14);
  v64 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
  v31 = v55;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool?> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbSgGMd);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  v32 = v54;
  v33 = v31;
  v34 = v56;
  v35 = v58;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v59 + 8))(v33, v35);
  (*(v57 + 8))(v30, v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAKGGAC5EqualVy_AOy_AUSbSgGAIy_AZGGGMd);
  v37 = v62;
  v62[3] = v36;
  v37[4] = lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>>> and conformance <> PredicateExpressions.Conjunction<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v37);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>> and conformance PredicateExpressions.SequenceContains<A, B>, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAIGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGAC5ValueVy_ANGGMd);
  v38 = v63;
  v39 = v32;
  v40 = v52;
  v41 = v60;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v61 + 8))(v39, v41);
  return (*(v53 + 8))(v38, v40);
}

uint64_t key path setter for DBSnapshot.expiry : DBSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 416))(v6);
}

uint64_t DBSnapshot.id.getter(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type UUID and conformance UUID(a2, a3);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t DBSnapshot.id.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v6 = a4(0);
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t closure #1 in DBSnapshot.id.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type UUID and conformance UUID(a4, a5);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*DBSnapshot.expiry.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
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
  *(v4 + 24) = v1;
  v6 = type metadata accessor for Date();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v5[7] = v9;
  v5[8] = v10;
  *v5 = v1;
  swift_getKeyPath();
  v5[9] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  PersistentModel.getValue<A>(forKey:)();

  return DBSnapshot.expiry.modify;
}

uint64_t key path setter for DBSnapshot.creationDate : DBSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 464))(v6);
}

void (*DBSnapshot.creationDate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
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
  *(v4 + 24) = v1;
  v6 = type metadata accessor for Date();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v5[7] = v9;
  v5[8] = v10;
  *v5 = v1;
  swift_getKeyPath();
  v5[9] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  PersistentModel.getValue<A>(forKey:)();

  return DBSnapshot.creationDate.modify;
}

uint64_t key path getter for DBSnapshot._suggestions : DBSnapshot@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DBSnapshot._suggestions : DBSnapshot(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 512);

  return v2(v3);
}

uint64_t DBSnapshot._suggestions.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  PersistentModel.getValue<A, B>(forKey:)();

  return v0;
}

uint64_t DBSnapshot._suggestions.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in DBSnapshot._suggestions.setter()
{
  swift_getKeyPath();
  type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  PersistentModel.setValue<A, B>(forKey:to:)();
}

void (*DBSnapshot._suggestions.modify(void *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  PersistentModel.getValue<A, B>(forKey:)();

  *v4 = *v6;
  return DBSnapshot._suggestions.modify;
}

void DBSnapshot._suggestions.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*a1 + 8) = *(*a1 + 16);
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

unint64_t DBSnapshot._suggestionCache.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in DBSnapshot._suggestionCache.getter(v0);
    v3 = *(v0 + 24);
    *(v0 + 24) = v2;

    outlined consume of [UUID : DBSuggestion]??(v3);
  }

  outlined copy of [UUID : DBSuggestion]??(v1);
  return v2;
}

unint64_t closure #1 in DBSnapshot._suggestionCache.getter(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI12DBSuggestionCtMd);
  v2 = *(v18 - 8);
  v3 = MEMORY[0x28223BE20](v18);
  v5 = &v17 - v4;
  result = (*(*a1 + 504))(v3);
  if (result)
  {
    v7 = result;
    if (result >> 62)
    {
      v8 = __CocoaSet.count.getter();
      if (v8)
      {
LABEL_4:
        v19 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
        if (v8 < 0)
        {
          __break(1u);
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        v9 = 0;
        v10 = v19;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x21CE93180](v9, v7);
          }

          else
          {
            v11 = *(v7 + 8 * v9 + 32);
          }

          v12 = *(v18 + 48);
          (*(*v11 + 296))();
          *&v5[v12] = v11;
          v19 = v10;
          v14 = *(v10 + 16);
          v13 = *(v10 + 24);
          if (v14 >= v13 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1);
            v10 = v19;
          }

          ++v9;
          *(v10 + 16) = v14 + 1;
          outlined init with take of (UUID, DBSuggestion)(v5, v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14);
        }

        while (v8 != v9);

        if (*(v10 + 16))
        {
          goto LABEL_13;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI12DBSuggestionCGMd);
      v15 = static _DictionaryStorage.allocate(capacity:)();
LABEL_17:
      v19 = v15;

      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v16, 1, &v19);

      return v19;
    }

LABEL_16:
    v15 = MEMORY[0x277D84F98];
    goto LABEL_17;
  }

  return result;
}

uint64_t key path getter for DBSnapshot._suggestionTabs : DBSnapshot@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 576))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DBSnapshot._suggestionTabs : DBSnapshot(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 584);

  return v2(v3);
}

uint64_t DBSnapshot._suggestionTabs.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type [DBSnapshot.Tab : [UUID]] and conformance <> [A : B]();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t DBSnapshot._suggestionTabs.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in DBSnapshot._suggestionTabs.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type [DBSnapshot.Tab : [UUID]] and conformance <> [A : B]();
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*DBSnapshot._suggestionTabs.modify(void *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  lazy protocol witness table accessor for type [DBSnapshot.Tab : [UUID]] and conformance <> [A : B]();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return DBSnapshot._suggestionTabs.modify;
}

void DBSnapshot._suggestionTabs.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*a1 + 8) = *(*a1 + 16);
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

uint64_t DBSnapshot.recommended.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - v7;
  result = (*(*v0 + 504))(v6);
  if (result)
  {

    v11 = (*(*v0 + 576))(v10);
    if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(1u), (v13 & 1) != 0))
    {
      v30 = *(*(v11 + 56) + 8 * v12);

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v1, static DBSnapshot.Log);
      swift_beginAccess();
      v28 = *(v2 + 16);
      v29 = v14;
      v28(v8, v14, v1);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v27 = v2;
        v18 = v17;
        v19 = swift_slowAlloc();
        v31 = v19;
        *v18 = 136446210;
        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E656D6D6F636572, 0xEB00000000646564, &v31);
        _os_log_impl(&dword_21607C000, v15, v16, "[SpinnerDebug]%{public}s Entering mapIDs", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x21CE94770](v19, -1, -1);
        v20 = v18;
        v2 = v27;
        MEMORY[0x21CE94770](v20, -1, -1);
      }

      v21 = *(v2 + 8);
      v21(v8, v1);
      v22 = DBSnapshot.mapIDs(_:)(v30);

      v28(v5, v29, v1);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31 = v26;
        *v25 = 136446210;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E656D6D6F636572, 0xEB00000000646564, &v31);
        _os_log_impl(&dword_21607C000, v23, v24, "[SpinnerDebug]%{public}s Exiting mapIDs", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x21CE94770](v26, -1, -1);
        MEMORY[0x21CE94770](v25, -1, -1);
      }

      v21(v5, v1);
      return v22;
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t DBSnapshot.recentTab.getter()
{
  v1 = v0;
  result = (*(*v0 + 504))();
  if (result)
  {

    v4 = (*(*v0 + 576))(v3);
    if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(2u), (v6 & 1) != 0))
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      if (*(v1 + 40))
      {
        v8 = *(v1 + 40);

        return v8;
      }

      else
      {
        v9 = DBSnapshot.mapIDs(_:)(v7);

        *(v1 + 40) = v9;

        return v9;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t DBSnapshot.isValid.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  result = (*(*v0 + 304))(v6);
  if (result)
  {
    (*(*v0 + 408))();
    Date.init()();
    v10 = static Date.> infix(_:_:)();
    v11 = *(v2 + 8);
    v11(v5, v1);
    v12 = (v11)(v8, v1);
    if (v10)
    {
      result = (*(*v0 + 504))(v12);
      if (result)
      {

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DBSnapshot.__allocating_init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, char a10)
{
  v16 = swift_allocObject();
  DBSnapshot.init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v16;
}

size_t DBSnapshot.init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, char a10)
{
  v11 = v10;
  v144 = a8;
  v132 = a7;
  v139 = a6;
  v140 = a5;
  v145._countAndFlagsBits = a4;
  v135 = a3;
  v128 = a2;
  v141 = a1;
  v138 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v130 = v122 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v125 = v122 - v15;
  v142 = type metadata accessor for Date();
  v145._object = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v17 = v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v143 = v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v133 = v122 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v126 = v122 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v122 - v26;
  v28 = type metadata accessor for DBSnapshot();
  *(v11 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI10DBSnapshotC_AGQo_Md);
  v29 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  v148 = v28;
  v149 = v28;
  v150 = v29;
  v151 = v29;
  *(v11 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v11 + 48));
  static PersistentModel.createBackingData<A>()();
  UUID.init()();
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v146 = v18;
  v147 = v19;
  v30 = *(v19 + 8);
  v124 = v19 + 8;
  v123 = v30;
  v30(v27, v18);
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  v148 = 0;
  v149 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  v148 = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 17) = 1;
  static Date.distantPast.getter();
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  v137 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v31 = v17;
  v32 = v142;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v33 = v145._object + 8;
  v34 = *(v145._object + 1);
  v34(v31, v32);
  static Date.now.getter();
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v129 = v31;
  v137 = v33;
  v136 = v34;
  v34(v31, v32);
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  v35 = MEMORY[0x277D84F90];
  v148 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
  v36 = type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  v131 = v36;
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v11 + 18) = 0;
  *(v11 + 24) = 1;
  v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI10DBSnapshotC3TabO_Say10Foundation4UUIDVGTt0g5Tf4g_n(v35);
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  v148 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMd);
  lazy protocol witness table accessor for type [DBSnapshot.Tab : [UUID]] and conformance <> [A : B]();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  v38 = v11;
  v39 = v11 + OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  ObservationRegistrar.init()();
  if (!v145._countAndFlagsBits && (a10 & 1) == 0)
  {

    type metadata accessor for SwiftDataError();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type SwiftDataError and conformance SwiftDataError, MEMORY[0x277CDD480]);
    swift_allocError();
    static SwiftDataError.modelValidationFailure.getter();
    swift_willThrow();

    outlined destroy of UTType?(v138, &_s10Foundation3URLVSgMd);
    v40 = v142;
    v41 = v136;
    v136(v139, v142);
    v41(v140, v40);
    outlined destroy of UTType?(v141, &_s10Foundation4UUIDVSgMd);
    return v38;
  }

  v122[1] = v39;
  v42 = v125;
  outlined init with copy of DateInterval?(v141, v125, &_s10Foundation4UUIDVSgMd);
  v43 = v146;
  v44 = v147;
  v45 = *(v147 + 48);
  if (v45(v42, 1, v146) == 1)
  {
    v46 = v126;
    UUID.init()();
    v47 = v45(v42, 1, v43);
    v48 = v127;
    if (v47 != 1)
    {
      outlined destroy of UTType?(v42, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    v46 = v126;
    (*(v44 + 32))(v126, v42, v43);
    v48 = v127;
  }

  v49 = v38;
  v148 = v38;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v122[-2] = v38;
  v122[-1] = v46;
  v51 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v123(v46, v43);
  v148 = v49;
  v52 = swift_getKeyPath();
  MEMORY[0x28223BE20](v52);
  v53 = v128;
  v122[-4] = v49;
  v122[-3] = v53;
  v122[-2] = v135;
  v127 = v51;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v148 = v49;
  v54 = swift_getKeyPath();
  MEMORY[0x28223BE20](v54);
  countAndFlagsBits = v145._countAndFlagsBits;
  v122[-2] = v49;
  v122[-1] = countAndFlagsBits;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v145._countAndFlagsBits = v48;

  v145._object = *(v145._object + 2);
  v56 = v129;
  v57 = v142;
  (v145._object)(v129, v140, v142);
  v148 = v49;
  v58 = swift_getKeyPath();
  MEMORY[0x28223BE20](v58);
  v122[-2] = v49;
  v122[-1] = v56;
  v59 = v145._countAndFlagsBits;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v145._countAndFlagsBits = v59;

  v60 = v136;
  v136(v56, v57);
  (v145._object)(v56, v139, v57);
  v148 = v49;
  v61 = swift_getKeyPath();
  v134 = v49;
  MEMORY[0x28223BE20](v61);
  v122[-2] = v134;
  v122[-1] = v56;
  v62 = v145._countAndFlagsBits;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v145._object = v62;
  v63 = v134;

  v60(v56, v57);
  v64 = v132;
  v148 = v132;

  specialized Array.append<A>(contentsOf:)(v65);
  v66 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI12DBSuggestionC_SayAFGTt0g5Tf4g_n(v148);

  v67 = specialized _copyCollectionToContiguousArray<A>(_:)(v66);
  v148 = v63;
  v68 = swift_getKeyPath();
  MEMORY[0x28223BE20](v68);
  v122[-2] = v63;
  v122[-1] = v67;
  object = v145._object;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v127 = object;

  v70 = v130;
  outlined init with copy of DateInterval?(v138, v130, &_s10Foundation3URLVSgMd);
  v71 = type metadata accessor for URL();
  v72 = *(v71 - 8);
  if ((*(v72 + 48))(v70, 1, v71) == 1)
  {

    outlined destroy of UTType?(v70, &_s10Foundation3URLVSgMd);
    v73 = v133;
    v38 = v63;
LABEL_43:
    if (v64 >> 62)
    {
      goto LABEL_58;
    }

    v94 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v94)
    {
      goto LABEL_45;
    }

    goto LABEL_61;
  }

  v145 = URL.path(percentEncoded:)(1);
  (*(v72 + 8))(v70, v71);
  v74 = (v66 & 0xC000000000000001) == 0;
  v38 = v66;
  v73 = v133;
  v126 = v38;
  if (v74)
  {
    v79 = -1 << *(v38 + 32);
    v75 = v38 + 56;
    v76 = ~v79;
    v80 = -v79;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    else
    {
      v81 = -1;
    }

    v78 = v81 & *(v38 + 56);

    v77 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
    Set.Iterator.init(_cocoa:)();
    v38 = v152;
    v75 = v153;
    v76 = v154;
    v77 = v155;
    v78 = v156;
  }

  v125 = v76;
  v64 = (v76 + 64) >> 6;
  v130 = v75;
  v129 = v38;
  v128 = v64;
  while (1)
  {
    if ((v38 & 0x8000000000000000) != 0)
    {
      v88 = __CocoaSet.Iterator.next()();
      if (!v88)
      {
        goto LABEL_42;
      }

      v157 = v88;
      v87 = swift_dynamicCast();
      v86 = v148;
      v84 = v77;
      v85 = v78;
      if (!v148)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v82 = v77;
      v83 = v78;
      v84 = v77;
      if (!v78)
      {
        while (1)
        {
          v84 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            goto LABEL_57;
          }

          if (v84 >= v64)
          {
            break;
          }

          v83 = *(v75 + 8 * v84);
          ++v82;
          if (v83)
          {
            goto LABEL_24;
          }
        }

LABEL_42:
        outlined consume of [String : DBAssetData].Iterator._Variant();

        v38 = v134;
        v64 = v132;
        goto LABEL_43;
      }

LABEL_24:
      v85 = (v83 - 1) & v83;
      v86 = *(*(v38 + 48) + ((v84 << 9) | (8 * __clz(__rbit64(v83)))));

      if (!v86)
      {
        goto LABEL_42;
      }
    }

    v135 = v85;
    v89 = (*(*v86 + 1160))(v87);
    if (v89)
    {
      break;
    }

LABEL_18:

    v77 = v84;
    v78 = v135;
  }

  v90 = v89;
  v73 = v89 & 0xFFFFFFFFFFFFFF8;
  if (!(v89 >> 62))
  {
    v91 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v91)
    {
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  v91 = __CocoaSet.count.getter();
  if (!v91)
  {
LABEL_17:

    v73 = v133;
    v75 = v130;
    v38 = v129;
    v64 = v128;
    goto LABEL_18;
  }

LABEL_31:
  v92 = 0;
  v64 = v90 & 0xC000000000000001;
  while (v64)
  {
    v93 = MEMORY[0x21CE93180](v92, v90);
    v38 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      goto LABEL_55;
    }

LABEL_35:
    (*(*v93 + 608))(v145._countAndFlagsBits, v145._object);

    ++v92;
    if (v38 == v91)
    {
      goto LABEL_17;
    }
  }

  if (v92 >= *(v73 + 16))
  {
    goto LABEL_56;
  }

  v93 = *(v90 + 8 * v92 + 32);

  v38 = v92 + 1;
  if (!__OFADD__(v92, 1))
  {
    goto LABEL_35;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  if (!__CocoaSet.count.getter())
  {
LABEL_61:

    goto LABEL_62;
  }

  v94 = __CocoaSet.count.getter();
  if (!v94)
  {

    v97 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

LABEL_45:
  v148 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94 & ~(v94 >> 63), 0);
  if (v94 < 0)
  {
    __break(1u);
    goto LABEL_81;
  }

  v145._object = v94;
  v96 = 0;
  v97 = v148;
  do
  {
    if ((v64 & 0xC000000000000001) != 0)
    {
      v98 = MEMORY[0x21CE93180](v96, v64);
    }

    else
    {
      v98 = *(v64 + 8 * v96 + 32);
    }

    (*(*v98 + 296))();

    v148 = v97;
    v99 = v73;
    v101 = *(v97 + 16);
    v100 = *(v97 + 24);
    if (v101 >= v100 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v100 > 1, v101 + 1, 1);
      v97 = v148;
    }

    v96 = v96 + 1;
    *(v97 + 16) = v101 + 1;
    (*(v147 + 32))(v97 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v101, v99, v146);
    v73 = v99;
  }

  while (v145._object != v96);

LABEL_54:
  v38 = v134;
  v102 = (*(*v134 + 592))(&v148);
  v104 = v103;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v104;
  *v104 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v97, 1, isUniquelyReferenced_nonNull_native);
  *v104 = v157;
  v102(&v148, 0);
LABEL_62:
  v106 = MEMORY[0x277D84F90];
  if (v144 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_77;
    }

    v107 = __CocoaSet.count.getter();
    if (!v107)
    {

      v109 = MEMORY[0x277D84F90];
LABEL_73:
      v38 = v134;
      v116 = (*(*v134 + 592))(&v148);
      v118 = v117;
      v119 = swift_isUniquelyReferenced_nonNull_native();
      v157 = *v118;
      *v118 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v109, 2, v119);
      *v118 = v157;
      v116(&v148, 0);
      goto LABEL_78;
    }

LABEL_64:
    v148 = v106;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107 & ~(v107 >> 63), 0);
    if ((v107 & 0x8000000000000000) == 0)
    {
      v108 = 0;
      v109 = v148;
      v111 = v143;
      v110 = v144;
      v112 = v144 & 0xC000000000000001;
      do
      {
        if (v112)
        {
          v113 = MEMORY[0x21CE93180](v108, v110);
        }

        else
        {
          v113 = *(v110 + 8 * v108 + 32);
        }

        (*(*v113 + 296))();

        v148 = v109;
        v115 = *(v109 + 16);
        v114 = *(v109 + 24);
        if (v115 >= v114 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v114 > 1, v115 + 1, 1);
          v109 = v148;
        }

        ++v108;
        *(v109 + 16) = v115 + 1;
        (*(v147 + 32))(v109 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v115, v111, v146);
        v110 = v144;
      }

      while (v107 != v108);

      goto LABEL_73;
    }

LABEL_81:
    __break(1u);
    return result;
  }

  v107 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v107)
  {
    goto LABEL_64;
  }

LABEL_77:

LABEL_78:
  outlined destroy of UTType?(v138, &_s10Foundation3URLVSgMd);
  v120 = v142;
  v121 = v136;
  v136(v139, v142);
  v121(v140, v120);
  outlined destroy of UTType?(v141, &_s10Foundation4UUIDVSgMd);
  return v38;
}

unint64_t DBSnapshot.mapIDs(_:)(uint64_t a1)
{
  if (!(*(*v1 + 504))())
  {
    return 0;
  }

  result = DBSnapshot._suggestionCache.getter();
  if (!result)
  {
    return 0;
  }

  v4 = result;
  v5 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = v7;
      while (1)
      {
        if (v8 >= v6)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v9 = type metadata accessor for UUID();
        v11 = *(v9 - 8);
        result = v9 - 8;
        v10 = v11;
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_18;
        }

        result = closure #1 in DBSnapshot.mapIDs(_:)(a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, v4, &v12);
        if (v12)
        {
          break;
        }

        ++v8;
        if (v7 == v6)
        {
          goto LABEL_14;
        }
      }

      MEMORY[0x21CE92260](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v13;
    }

    while (v7 != v6);
  }

LABEL_14:

  return v5;
}

uint64_t closure #1 in DBSnapshot.mapIDs(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v93 = a3;
  v5 = type metadata accessor for Logger();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v79[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v87 = &v79[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v79[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd);
  v89 = *(v13 - 8);
  v90 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v79[-v14];
  v94 = type metadata accessor for UUID();
  v16 = *(v94 - 8);
  v17 = MEMORY[0x28223BE20](v94);
  v19 = &v79[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v86 = &v79[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v79[-v22];
  if (*(a2 + 16))
  {
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v25)
    {
      v26 = *(*(a2 + 56) + 8 * v24);

LABEL_18:
      v58 = *(*v26 + 1344);

      v58(v59);

      *v93 = v26;
      return result;
    }
  }

  v88 = v15;
  type metadata accessor for DBSnapshot();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  v27 = PersistentModel.modelContext.getter();
  if (v27)
  {
    v28 = v27;
    v29 = v94;
    v84 = *(v16 + 16);
    v30 = v84(v23, a1, v94);
    v83 = a1;
    v85 = v79;
    MEMORY[0x28223BE20](v30);
    *&v79[-16] = v23;
    v97 = type metadata accessor for DBSuggestion();
    Predicate.init(_:)();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd);
    (*(*(v31 - 8) + 56))(v12, 0, 1, v31);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
    v32 = v88;
    FetchDescriptor.init(predicate:sortBy:)();
    v33 = v95;
    v34 = dispatch thunk of ModelContext.fetch<A>(_:)();
    if (v33)
    {
      (*(v89 + 8))(v32, v90);

      return (*(v16 + 8))(v23, v29);
    }

    v81 = v23;
    v82 = v16;
    v51 = v83;
    v52 = v84;
    if (v34 >> 62)
    {
      v78 = v34;
      v53 = __CocoaSet.count.getter();
      v34 = v78;
    }

    else
    {
      v53 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = v87;
    v55 = v28;
    if (v53)
    {
      v56 = v88;
      if ((v34 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x21CE93180](0);
        v54 = v81;
        v57 = v82;
        goto LABEL_17;
      }

      v54 = v81;
      v57 = v82;
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = *(v34 + 32);

LABEL_17:

        (*(v89 + 8))(v56, v90);
        (*(v57 + 8))(v54, v94);
        goto LABEL_18;
      }

      __break(1u);
    }

    else
    {
      v95 = 0;

      if (one-time initialization token for Log == -1)
      {
LABEL_22:
        v60 = v92;
        v61 = __swift_project_value_buffer(v92, static DBSnapshot.Log);
        swift_beginAccess();
        v62 = v91;
        (*(v91 + 16))(v54, v61, v60);
        v63 = v86;
        v64 = v51;
        v65 = v94;
        v52(v86, v64, v94);
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v83 = v68;
          v87 = swift_slowAlloc();
          v96 = v87;
          *v68 = 136315138;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v69 = dispatch thunk of CustomStringConvertible.description.getter();
          v71 = v70;
          v80 = v67;
          v72 = *(v82 + 8);
          v84 = v55;
          v72(v63, v65);
          v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v96);

          v74 = v83;
          *(v83 + 1) = v73;
          v75 = v72;
          v76 = v74;
          _os_log_impl(&dword_21607C000, v66, v80, "[mapIDs] Could not find Suggestion with ID: %s", v74, 0xCu);
          v77 = v87;
          __swift_destroy_boxed_opaque_existential_1(v87);
          MEMORY[0x21CE94770](v77, -1, -1);
          MEMORY[0x21CE94770](v76, -1, -1);
        }

        else
        {

          v75 = *(v82 + 8);
          v75(v63, v65);
        }

        (*(v62 + 8))(v54, v92);
        (*(v89 + 8))(v88, v90);
        result = (v75)(v81, v65);
        *v93 = 0;
        return result;
      }
    }

    swift_once();
    goto LABEL_22;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v36 = v92;
  v37 = __swift_project_value_buffer(v92, static DBSnapshot.Log);
  swift_beginAccess();
  v38 = v91;
  (*(v91 + 16))(v8, v37, v36);
  v39 = *(v16 + 16);
  v40 = v16;
  v41 = v94;
  v39(v19, a1, v94);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = v41;
    v45 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v97 = v90;
    *v45 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    (*(v40 + 8))(v19, v44);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v97);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_21607C000, v42, v43, "[mapIDs] Could not find Suggestion with ID: %s", v45, 0xCu);
    v50 = v90;
    __swift_destroy_boxed_opaque_existential_1(v90);
    MEMORY[0x21CE94770](v50, -1, -1);
    MEMORY[0x21CE94770](v45, -1, -1);

    result = (*(v91 + 8))(v8, v92);
  }

  else
  {

    (*(v40 + 8))(v19, v41);
    result = (*(v38 + 8))(v8, v36);
  }

  *v93 = 0;
  return result;
}

uint64_t closure #3 in closure #1 in DBSnapshot.mapIDs(_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v17[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - v13;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  type metadata accessor for UUID();
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd);
  a2[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v15 = v18;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v19 + 8))(v6, v15);
  return (*(v12 + 8))(v14, v11);
}

void (*DBSnapshot.persistentBackingData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of DBObject(v1 + 48, v4);
  return DBAssetData.persistentBackingData.modify;
}

uint64_t static DBSnapshot.schemaMetadata.getter()
{
  v49 = type metadata accessor for Schema.PropertyMetadata();
  v0 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Schema.Relationship.DeleteRule();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMd);
  v3 = *(v0 + 72);
  v48 = v0;
  v4 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v44 = 8 * v3;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_216598D80;
  v46 = v4;
  v47 = v5;
  v6 = v5 + v4;
  swift_getKeyPath();
  *(&v56 + 1) = type metadata accessor for UUID();
  __swift_allocate_boxed_opaque_existential_1(&v55);
  UUID.init()();
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = v6;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v55 = 0u;
  v56 = 0u;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMd);
  v8 = *(*(type metadata accessor for Schema.Attribute.Option() - 8) + 72);
  v40 = v7;
  v9 = swift_allocObject();
  v51 = xmmword_21658CA50;
  *(v9 + 16) = xmmword_21658CA50;
  static Schema.Attribute.Option.preserveValueOnDeletion.getter();
  v10 = type metadata accessor for Schema.Attribute();
  swift_allocObject();
  v11 = Schema.Attribute.init(_:originalName:hashModifier:)();
  *(&v53 + 1) = v10;
  v54 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Schema.Attribute and conformance Schema.Attribute, MEMORY[0x277CDD5E8]);
  v12 = v54;
  v39 = v54;
  *&v52 = v11;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *(&v56 + 1) = MEMORY[0x277D83B88];
  *&v55 = 0;
  v38[1] = v8;
  *(swift_allocObject() + 16) = v51;
  static Schema.Attribute.Option.preserveValueOnDeletion.getter();
  swift_allocObject();
  v13 = Schema.Attribute.init(_:originalName:hashModifier:)();
  *(&v53 + 1) = v10;
  v54 = v12;
  *&v52 = v13;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v55 = 0u;
  v56 = 0u;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  v14 = v3;
  v38[0] = swift_getKeyPath();
  v15 = type metadata accessor for Date();
  *(&v56 + 1) = v15;
  __swift_allocate_boxed_opaque_existential_1(&v55);
  static Date.distantPast.getter();
  *(swift_allocObject() + 16) = v51;
  static Schema.Attribute.Option.preserveValueOnDeletion.getter();
  swift_allocObject();
  v16 = Schema.Attribute.init(_:originalName:hashModifier:)();
  v17 = v39;
  *(&v53 + 1) = v10;
  v54 = v39;
  *&v52 = v16;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  v38[0] = swift_getKeyPath();
  *(&v56 + 1) = v15;
  __swift_allocate_boxed_opaque_existential_1(&v55);
  static Date.now.getter();
  *(swift_allocObject() + 16) = v51;
  v18 = v14;
  static Schema.Attribute.Option.preserveValueOnDeletion.getter();
  swift_allocObject();
  v19 = Schema.Attribute.init(_:originalName:hashModifier:)();
  *(&v53 + 1) = v10;
  v54 = v17;
  *&v52 = v19;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
  v21 = MEMORY[0x277D84F90];
  *(&v56 + 1) = v20;
  *&v55 = MEMORY[0x277D84F90];
  (*(v42 + 104))(v41, *MEMORY[0x277CDD5A8], v43);
  swift_getKeyPath();
  v22 = type metadata accessor for Schema.Relationship();
  swift_allocObject();
  v23 = Schema.Relationship.init(_:deleteRule:minimumModelCount:maximumModelCount:originalName:inverse:hashModifier:)();
  *(&v53 + 1) = v22;
  v54 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Schema.Relationship and conformance Schema.Relationship, MEMORY[0x277CDD5B8]);
  *&v52 = v23;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(v21);
  *(&v56 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
  *&v55 = v24;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v55 = 0u;
  v56 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySays14PartialKeyPathCy9MomentsUI10DBSnapshotCGGGMd);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2165965F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v26 = swift_allocObject();
  v51 = xmmword_21658E210;
  *(v26 + 16) = xmmword_21658E210;
  *(v26 + 32) = swift_getKeyPath();
  *(v25 + 32) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v51;
  *(v27 + 32) = swift_getKeyPath();
  *(v25 + 40) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v51;
  *(v28 + 32) = swift_getKeyPath();
  *(v25 + 48) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = v51;
  *(v29 + 32) = swift_getKeyPath();
  *(v25 + 56) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData6SchemaC5IndexCy_9MomentsUI10DBSnapshotCGMd);
  swift_allocObject();
  v31 = Schema.Index.init(_:)();
  *(&v53 + 1) = v30;
  v32 = v45;
  v54 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Schema.Index<DBSnapshot> and conformance Schema.Index<A>, &_s9SwiftData6SchemaC5IndexCy_9MomentsUI10DBSnapshotCGMd);
  *&v52 = v31;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v21);
  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1, v33);
  }

  *(v33 + 2) = v35 + 1;
  v36 = v33;
  (*(v48 + 32))(&v33[v46 + v35 * v18], v32, v49);
  *&v52 = v47;
  specialized Array.append<A>(contentsOf:)(v36);
  return v52;
}

uint64_t key path getter for DBSuggestion._snapshots : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1264))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DBSuggestion._snapshots : DBSuggestion(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 1272);

  return v2(v3);
}

uint64_t DBSnapshot.__allocating_init(backingData:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DBSnapshot.init(backingData:)(a1);
  return v2;
}

uint64_t DBSnapshot.init(backingData:)(uint64_t a1)
{
  v2 = v1;
  v19 = a1;
  v3 = type metadata accessor for Date();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DBSnapshot();
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI10DBSnapshotC_AGQo_Md);
  v11 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  v20 = v10;
  v21 = v10;
  v22 = v11;
  v23 = v11;
  *(v2 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v2 + 48));
  static PersistentModel.createBackingData<A>()();
  UUID.init()();
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  v20 = 0;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  v20 = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 17) = 1;
  static Date.distantPast.getter();
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v12 = *(v18 + 8);
  v12(v5, v3);
  static Date.now.getter();
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v12(v5, v3);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  v13 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
  type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v2 + 18) = 0;
  *(v2 + 24) = 1;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI10DBSnapshotC3TabO_Say10Foundation4UUIDVGTt0g5Tf4g_n(v13);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMd);
  lazy protocol witness table accessor for type [DBSnapshot.Tab : [UUID]] and conformance <> [A : B]();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  ObservationRegistrar.init()();
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  v15 = v19;
  outlined init with copy of DBObject(v19, &v20);
  (*(*v2 + 728))(&v20);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v2;
}

uint64_t DBSnapshot.deinit()
{
  outlined consume of [UUID : DBSuggestion]??(*(v0 + 24));

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  v1 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DBSnapshot.__deallocating_deinit()
{
  outlined consume of [UUID : DBSuggestion]??(*(v0 + 24));

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  v1 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t DBSnapshot.debugDescription.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(91);
  v5 = MEMORY[0x21CE92100](0x69746172656E6547, 0xEC000000203A6E6FLL);
  v6 = (*(*v0 + 256))(v5);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0x3E6C696E3CLL;
    v8 = 0xE500000000000000;
  }

  MEMORY[0x21CE92100](v6, v8);

  v9 = MEMORY[0x21CE92100](0x636E65757165530ALL, 0xEB00000000203A65);
  v27 = (*(*v0 + 304))(v9);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v10);

  v11 = MEMORY[0x21CE92100](0x6F6974616572430ALL, 0xEF203A657461446ELL);
  (*(*v0 + 456))(v11);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v12);

  v13 = *(v2 + 8);
  v13(v4, v1);
  v14 = MEMORY[0x21CE92100](0x3A7972697078450ALL, 0xE900000000000020);
  (*(*v0 + 408))(v14);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v15);

  v13(v4, v1);
  v16 = MEMORY[0x21CE92100](0xD000000000000014, 0x800000021657ECB0);
  (*(*v0 + 576))(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd);
  lazy protocol witness table accessor for type DBSnapshot.Tab and conformance DBSnapshot.Tab();
  v17 = Dictionary.description.getter();
  v19 = v18;

  MEMORY[0x21CE92100](v17, v19);

  v20 = MEMORY[0x21CE92100](0x747365676775530ALL, 0xEE000A3A736E6F69);
  v21 = v29;
  result = (*(*v0 + 504))(v20);
  if (!result)
  {
    return v21;
  }

  v23 = result;
  if (!(result >> 62))
  {
    v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  result = __CocoaSet.count.getter();
  v24 = result;
  if (!result)
  {
LABEL_15:

    return v21;
  }

LABEL_7:
  if (v24 >= 1)
  {
    v25 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CE93180](v25, v23);
      }

      else
      {
      }

      ++v25;
      v26 = DBSuggestion.debugDescription.getter();
      v27 = 9;
      v28 = 0xE100000000000000;
      MEMORY[0x21CE92100](v26);

      MEMORY[0x21CE92100](10, 0xE100000000000000);
      MEMORY[0x21CE92100](v27, v28);
    }

    while (v24 != v25);

    return v29;
  }

  __break(1u);
  return result;
}

Swift::Int DBSnapshot.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for DBSnapshot();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

void (*protocol witness for PersistentModel.persistentBackingData.modify in conformance DBSnapshot(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 736))();
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncAssetData;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBSnapshot()
{
  Hasher.init(_seed:)();
  type metadata accessor for DBSnapshot();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBSnapshot()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBSnapshot(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212CAA0](v4, v5, a3, WitnessTable);
}

uint64_t type metadata completion function for DBSnapshot()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t outlined init with take of (UUID, DBSuggestion)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI12DBSuggestionCtMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<UUID> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?> and conformance <> PredicateExpressions.KeyPath<A, B>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<UUID> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd);
    v1 = MEMORY[0x277CC95F0];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAKGGAC5EqualVy_AOy_AUSbSgGAIy_AZGGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>> and conformance <> PredicateExpressions.Equal<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAIGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Set<UUID>> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGAC5ValueVy_ANGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool?> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Bool?> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool?> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool?> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbSgGMd);
    lazy protocol witness table accessor for type Bool? and conformance <A> A?();
    lazy protocol witness table accessor for type Bool? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool?> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t closure #1 in ListPlayButton.mediaAssetID.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  type metadata accessor for MainActor();
  *(v4 + 64) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in ListPlayButton.mediaAssetID.didset, v6, v5);
}

uint64_t closure #1 in ListPlayButton.mediaAssetID.didset()
{

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = static MusicPlaybackCoordinatorService.shared;
  v3 = type metadata accessor for ListPlayButton();
  *(v0 + 40) = v3;
  *(v0 + 48) = &protocol witness table for ListPlayButton;
  *(v0 + 16) = v1;
  v4 = *(*v2 + 216);
  v5 = v1;
  v4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  *(v0 + 40) = v3;
  *(v0 + 48) = &protocol witness table for ListPlayButton;
  *(v0 + 16) = v5;
  v6 = *(*v2 + 352);
  v7 = v5;
  LOBYTE(v3) = v6(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v8 = [objc_opt_self() configurationWithPointSize:6 weight:10.0];
  if (v3)
  {
    v9 = MEMORY[0x21CE91FC0](0x69662E6573756170, 0xEA00000000006C6CLL);
  }

  else
  {
    v9 = MEMORY[0x21CE91FC0](0x6C69662E79616C70, 0xE90000000000006CLL);
  }

  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  if (!v10)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  [*(v0 + 56) setImage:v10 forState:0];

  v11 = *(v0 + 8);

  return v11();
}

uint64_t ListPlayButton.mediaAssetID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI14ListPlayButton_mediaAssetID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ListPlayButton.mediaAssetID.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = &v2[OBJC_IVAR____TtC9MomentsUI14ListPlayButton_mediaAssetID];
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 1) = a2;

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v2;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ListPlayButton.mediaAssetID.didset, v12);
}

uint64_t partial apply for closure #1 in ListPlayButton.mediaAssetID.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in ListPlayButton.mediaAssetID.didset(a1, v4, v5, v6);
}

void (*ListPlayButton.mediaAssetID.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  *(v5 + 32) = v7;
  swift_beginAccess();
  return ListPlayButton.mediaAssetID.modify;
}

void ListPlayButton.mediaAssetID.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = v5;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in ListPlayButton.mediaAssetID.didsetpartial apply, v9);
  }

  free(v4);

  free(v3);
}

uint64_t closure #1 in ListPlayButton.mediaAssetID.didsetpartial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in ListPlayButton.mediaAssetID.didset(a1, v4, v5, v6);
}

id ListPlayButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ListPlayButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9MomentsUI14ListPlayButton_mediaAssetID];
  v10 = type metadata accessor for ListPlayButton();
  *v9 = 0;
  *(v9 + 1) = 0;
  v13.receiver = v4;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  ListPlayButton.sharedInit()();

  return v11;
}

id ListPlayButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ListPlayButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC9MomentsUI14ListPlayButton_mediaAssetID];
  v4 = type metadata accessor for ListPlayButton();
  *v3 = 0;
  *(v3 + 1) = 0;
  v9.receiver = v1;
  v9.super_class = v4;
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    ListPlayButton.sharedInit()();
  }

  return v6;
}

uint64_t ListPlayButton.sharedInit()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration.Size();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UIButton.Configuration();
  v13 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x21CE92D80]([v1 setTranslatesAutoresizingMaskIntoConstraints_]);
  (*(v10 + 104))(v12, *MEMORY[0x277D75020], v9);
  UIButton.Configuration.buttonSize.setter();
  (*(v6 + 104))(v8, *MEMORY[0x277D74FD8], v5);
  UIButton.Configuration.cornerStyle.setter();
  v16 = objc_opt_self();
  v17 = [v16 tertiarySystemFillColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v18 = [v16 labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v19 = [objc_opt_self() configurationWithPointSize:6 weight:10.0];
  v20 = MEMORY[0x21CE91FC0](0x6C69662E79616C70, 0xE90000000000006CLL);
  v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v19];

  UIButton.Configuration.image.setter();
  v22 = [objc_opt_self() mainBundle];
  v32._object = 0x800000021657EDF0;
  v23._countAndFlagsBits = 0x64654D2079616C50;
  v23._object = 0xEA00000000006169;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD000000000000027;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v32);

  v26 = MEMORY[0x21CE91FC0](v25._countAndFlagsBits, v25._object);

  [v1 setAccessibilityLabel_];

  v27 = v31;
  (*(v13 + 16))(v4, v15, v31);
  (*(v13 + 56))(v4, 0, 1, v27);
  UIButton.configuration.setter();
  type metadata accessor for UIAction();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v1 addAction:v28 forControlEvents:64];

  return (*(v13 + 8))(v15, v27);
}

void closure #1 in ListPlayButton.sharedInit()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x78))();
  }
}

Swift::Void __swiftcall ListPlayButton.touchPlayback()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static MusicPlaybackCoordinatorService.shared;
  v4[3] = type metadata accessor for ListPlayButton();
  v4[4] = &protocol witness table for ListPlayButton;
  v4[0] = v0;
  v2 = *(*v1 + 360);
  v3 = v0;
  v2(v4);
  __swift_destroy_boxed_opaque_existential_1(v4);
}

id ListPlayButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListPlayButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ListPlayButton.didReceiveShouldPlayNotification()(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() configurationWithPointSize:6 weight:10.0];
  v6 = MEMORY[0x21CE91FC0](a1, a2);
  v8 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  v7 = v8;
  if (!v8)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v9 = v7;
  [v2 setImage_forState_];
}

void *MutableMediaThirdPartyViewModel.appIcon.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t MutableMediaThirdPartyViewModel.isRenderedBasedOnProperties.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    v5 = Image.uiImage.getter();

    if (v5)
    {

      v6 = v1 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
      swift_beginAccess();
      LOBYTE(v3) = *(v6 + 32) ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

id MutableMediaThirdPartyViewModel.__allocating_init(intendedViewport:supportedStyles:appBundleId:trackTitle:artist:album:mediaCategory:backgroundColorString:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, __int128 a9, __int128 a10, unint64_t a11, uint64_t a12)
{
  v20 = objc_allocWithZone(v12);
  v21 = specialized MutableMediaThirdPartyViewModel.init(intendedViewport:supportedStyles:appBundleId:trackTitle:artist:album:mediaCategory:backgroundColorString:dateInterval:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, *(&a9 + 1), a10, __PAIR128__(a11, *(&a10 + 1)), a12);

  return v21;
}

id static MutableMediaThirdPartyViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutableMediaThirdPartyViewModel.empty;

  return v1;
}

uint64_t MutableMediaThirdPartyViewModel.colorVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t MutableMediaThirdPartyViewModel.colorVariant.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t MutableMediaThirdPartyViewModel.mediaCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t MutableMediaThirdPartyViewModel.mediaCategory.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

__n128 MutableMediaThirdPartyViewModel.backgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 MutableMediaThirdPartyViewModel.backgroundColor.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

unint64_t static MutableMediaThirdPartyViewModel.Constants.BackgroundColor.backgroundColorTrialKey(appIndex:)()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v0);

  return 0xD000000000000035;
}

void (*MutableMediaThirdPartyViewModel.trackTitle.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return MutableMediaThirdPartyViewModel.trackTitle.modify;
}

void MutableMediaThirdPartyViewModel.trackTitle.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*(*a1 + 40) + *(*a1 + 48));
  *v4 = *(*a1 + 24);
  v4[1] = v3;
  if (a2)
  {
  }

  free(v2);
}

void MutableMediaThirdPartyViewModel.appIcon.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void (*MutableMediaThirdPartyViewModel.appIcon.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return MutableMediaThirdPartyViewModel.appIcon.modify;
}

void MutableMediaThirdPartyViewModel.appIcon.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    v8 = v3;

    v7 = *v4;
  }

  free(v2);
}

id MutableMediaThirdPartyViewModel.init(intendedViewport:supportedStyles:appBundleId:trackTitle:artist:album:mediaCategory:backgroundColorString:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, unsigned __int8 *a11, unint64_t a12, unint64_t a13, uint64_t a14)
{
  v15 = specialized MutableMediaThirdPartyViewModel.init(intendedViewport:supportedStyles:appBundleId:trackTitle:artist:album:mediaCategory:backgroundColorString:dateInterval:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, __PAIR128__(a13, a12), a14);

  return v15;
}

uint64_t static MutableMediaThirdPartyViewModel.subtitleFrom(artist:album:title:category:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  v7 = a1;
  if (*a7 <= 1u)
  {
    if (!a2)
    {
      goto LABEL_9;
    }

    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
LABEL_9:
      if (a4 && a6 && (a3 != a5 || a4 != a6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v7 = a3;
      }
    }
  }

  return v7;
}

void __swiftcall MutableMediaThirdPartyViewModel.StructuredColor.init(string:)(MomentsUI::MutableMediaThirdPartyViewModel::StructuredColor_optional *__return_ptr retstr, Swift::String string)
{
  *&v27.value.red = string._countAndFlagsBits;
  *&v27.value.green = string._object;
  v28 = 44;
  v29 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();

  v4 = 0;
  v5 = *(v3 + 16);
  red = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v3 + 40 + 16 * v4);
  while (v5 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    ++v4;
    v9 = *(v7 - 1);
    v8 = *v7;
    v7 += 2;
    v10 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v10 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {

      v27.value.red = red;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&red + 16) + 1, 1);
        red = v27.value.red;
      }

      v12 = *(*&red + 16);
      v11 = *(*&red + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        red = v27.value.red;
      }

      *(*&red + 16) = v12 + 1;
      v13 = *&red + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v8;
      goto LABEL_2;
    }
  }

  if (*(*&red + 16) != 4)
  {

LABEL_20:
    retstr->value.hash._object = 0;
    *&retstr->value.color.green = 0u;
    *&retstr->value.color.alpha = 0u;
    retstr->value.bundleIdentifier = 0u;
    *&retstr->value.variant = 0u;
    return;
  }

  v15 = *(*&red + 32);
  v14 = *(*&red + 40);
  v17 = *(*&red + 64);
  v16 = *(*&red + 72);
  v18 = *(*&red + 48);
  v19 = *(*&red + 56);

  v20._countAndFlagsBits = v18;
  v20._object = v19;
  v21 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MediaThirdPartyBackgroundColorVariant.init(rawValue:), v20);

  if (v21 >= 4)
  {

    goto LABEL_19;
  }

  v22._countAndFlagsBits = v17;
  v22._object = v16;
  Color.init(hex:)(&v27, v22);
  if (v27.is_nil)
  {

LABEL_19:

    goto LABEL_20;
  }

  if (*(*&red + 16) < 4uLL)
  {
    goto LABEL_24;
  }

  v25 = *&v27.value.blue;
  v26 = *&v27.value.red;
  v24 = *(*&red + 80);
  v23 = *(*&red + 88);

  retstr->value.bundleIdentifier._countAndFlagsBits = v15;
  retstr->value.bundleIdentifier._object = v14;
  retstr->value.variant = v21;
  *&retstr->value.color.blue = v25;
  *&retstr->value.color.red = v26;
  retstr->value.hash._countAndFlagsBits = v24;
  retstr->value.hash._object = v23;
}

uint64_t MutableMediaThirdPartyViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutableMediaThirdPartyViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t MutableMediaThirdPartyViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutableMediaThirdPartyViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void MutableMediaThirdPartyViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant] = 4;
  v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory] = 3;
  v2 = &v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableMediaThirdPartyViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant) = 4;
  *(v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory) = 3;
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_subtitle);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColorString);
  *v4 = 0;
  v4[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableMediaThirdPartyViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant] = 4;
  v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory] = 3;
  v2 = &v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutableMediaThirdPartyViewModel.render()()
{
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = MutableMediaThirdPartyViewModel.render();

  return MutableMediaThirdPartyViewModel.getAppIcon()();
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;

  MutableMediaThirdPartyViewModel.setBackgroundColorAndVariant()();
  v5 = v0[1];

  return v5();
}

uint64_t MutableMediaThirdPartyViewModel.render()(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.render(), 0, 0);
}

uint64_t MutableMediaThirdPartyViewModel.getAppIcon()()
{
  *(v1 + 48) = v0;
  return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.getAppIcon(), 0, 0);
}

{
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier);
  swift_beginAccess();
  v2 = v1[1];
  if (v2 && (v3 = *v1, v4 = *(*(v0 + 48) + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport), (*(v0 + 56) = v4) != 0))
  {
    v5 = objc_allocWithZone(MEMORY[0x277D1B1A8]);

    v6 = v4;
    v7 = MEMORY[0x21CE91FC0](v3, v2);

    *(v0 + 64) = [v5 initWithBundleIdentifier_];

    v8 = MEMORY[0x277D85000];
    v9 = *((*MEMORY[0x277D85000] & *v6) + 0x60);
    *(v0 + 144) = v9();
    v10 = *((*v8 & *v6) + 0x78);
    v11 = v10();
    v12 = (v9)(v11);
    *(v0 + 148) = (v10)(v12);
    *(v0 + 72) = objc_opt_self();
    *(v0 + 80) = type metadata accessor for MainActor();
    *(v0 + 88) = static MainActor.shared.getter();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.getAppIcon(), v14, v13);
  }

  else
  {
    v15 = *(v0 + 8);

    return v15(0);
  }
}

{
  v1 = *(v0 + 72);

  *(v0 + 96) = [v1 mainScreen];

  return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.getAppIcon(), 0, 0);
}

{
  *(v0 + 104) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.getAppIcon(), v2, v1);
}

{
  v1 = *(v0 + 96);

  [v1 scale];
  *(v0 + 112) = v2;

  return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.getAppIcon(), 0, 0);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  __asm { FMOV            V1.2D, #0.5 }

  v8 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:vmulq_f64(vcvtq_f64_f32(*(v0 + 144)) scale:{_Q1), *(v0 + 112)}];
  *(v0 + 120) = v8;
  v9 = *(v2 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *(v10 + 16) = v1;
  *(v10 + 24) = v8;
  *(v10 + 32) = v9;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI5ImageCSgMd);
  *v11 = v0;
  v11[1] = MutableMediaThirdPartyViewModel.getAppIcon();

  return MEMORY[0x2822007B8](v0 + 40, 0, 0, 0x6349707041746567, 0xEC00000029286E6FLL, partial apply for closure #1 in MutableMediaThirdPartyViewModel.getAppIcon(), v10, v12);
}

{

  return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.getAppIcon(), 0, 0);
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);

  v3 = *(v0 + 40);
  v4 = *(v0 + 8);

  return v4(v3);
}

Swift::Void __swiftcall MutableMediaThirdPartyViewModel.setBackgroundColorAndVariant()()
{
  MutableMediaThirdPartyViewModel.popularAppPredefinedStructuredColor.getter(v17);
  if (v18)
  {
    v1 = v19;
    v2 = v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
    v12 = v21;
    v14 = v20;
    swift_beginAccess();
    *v2 = v14;
    *(v2 + 16) = v12;
    *(v2 + 32) = 0;
    outlined destroy of UTType?(v17, &_s9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVSgMd);
    v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant;
    swift_beginAccess();
    *(v0 + v3) = v1;
    return;
  }

  v4 = v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
  swift_beginAccess();
  if ((*(v4 + 32) & 1) == 0)
  {
    v7 = *v4;
    v9 = *(v4 + 8);
    v8 = *(v4 + 16);
LABEL_9:
    if (v7 * 0.2126 + v9 * 0.7152 + v8 * 0.0722 <= 0.1)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    goto LABEL_12;
  }

  v5 = specialized static DefaultsManager.getTrialStringValue(for:)(0xD000000000000041, 0x800000021657EE70);
  if (!v6)
  {
    v5 = 0xD000000000000040;
    v6 = 0x800000021657EE20;
  }

  MutableMediaThirdPartyViewModel.StructuredColor.init(string:)(&v16, *&v5);
  if (v16.value.bundleIdentifier._object)
  {
    v13 = *&v16.value.color.blue;
    *v15 = *&v16.value.color.red;
    outlined destroy of UTType?(&v16, &_s9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVSgMd);
    v8 = *&v13;
    v7 = v15[0];
    *v4 = *v15;
    *(v4 + 16) = v13;
    v9 = v15[1];
    *(v4 + 32) = 0;
    goto LABEL_9;
  }

  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  v10 = 4;
LABEL_12:
  v11 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant;
  swift_beginAccess();
  *(v0 + v11) = v10;
}

Swift::Bool __swiftcall MutableMediaThirdPartyViewModel.clearCache()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  return 1;
}

void *MutableMediaThirdPartyViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for MediaThirdPartyView());
  return MediaThirdPartyView.init(viewModel:style:)(v1, &v3);
}

uint64_t MutableMediaThirdPartyViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id MutableMediaThirdPartyViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for MediaThirdPartyViewModel.mediaCategory.getter in conformance MutableMediaThirdPartyViewModel@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

__n128 protocol witness for MediaThirdPartyViewModel.backgroundColor.getter in conformance MutableMediaThirdPartyViewModel@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t protocol witness for MediaThirdPartyViewModel.colorVariant.getter in conformance MutableMediaThirdPartyViewModel@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void closure #1 in MutableMediaThirdPartyViewModel.getAppIcon()(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI5ImageCSgs5NeverOGMd);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + v13 + v10) = a4 & 1;
  aBlock[4] = partial apply for closure #1 in closure #1 in MutableMediaThirdPartyViewModel.getAppIcon();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CGImageRef?) -> ();
  aBlock[3] = &block_descriptor_19;
  v15 = _Block_copy(aBlock);

  [a2 getCGImageForImageDescriptor:a3 completion:v15];
  _Block_release(v15);
}

void closure #1 in closure #1 in MutableMediaThirdPartyViewModel.getAppIcon()(void *a1, uint64_t a2, char a3)
{
  if (a1)
  {
    type metadata accessor for Image();
    v5 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v6 = a1;
    LOBYTE(v7) = a3 & 1;
    v7 = Image.__allocating_init(uiImage:isGlyph:assetClass:)([v5 initWithCGImage_], 0, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI5ImageCSgs5NeverOGMd);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI5ImageCSgs5NeverOGMd);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t MutableMediaThirdPartyViewModel.genericFallbackColorString.getter()
{
  result = specialized static DefaultsManager.getTrialStringValue(for:)(0xD000000000000041, 0x800000021657EE70);
  if (!v1)
  {
    return 0xD000000000000040;
  }

  return result;
}

uint64_t MutableMediaThirdPartyViewModel.popularAppPredefinedStructuredColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier);
  result = swift_beginAccess();
  v5 = v3[1];
  if (v5)
  {
    v40 = a1;
    v6 = *v3;

    result = specialized MutableMediaThirdPartyViewModel.predefinedColorStrings.getter();
    v7 = result;
    v8 = *(result + 16);
    if (v8)
    {
      v9 = 0;
      v10 = result + 40;
      v11 = MEMORY[0x277D84F90];
      v39 = result + 40;
      do
      {
        v12 = (v10 + 16 * v9);
        v13 = v9;
        while (1)
        {
          if (v13 >= *(v7 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          v9 = v13 + 1;
          v15 = *(v12 - 1);
          v14 = *v12;

          v16._countAndFlagsBits = v15;
          v16._object = v14;
          MutableMediaThirdPartyViewModel.StructuredColor.init(string:)(&v50, v16);
          if (v50.value.bundleIdentifier._object)
          {
            break;
          }

          v47 = *&v50.value.color.green;
          v48 = *&v50.value.color.alpha;
          object = v50.value.hash._object;
          countAndFlagsBits = v50.value.bundleIdentifier._countAndFlagsBits;
          v46 = *&v50.value.variant;
          result = outlined destroy of UTType?(&countAndFlagsBits, &_s9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVSgMd);
          v12 += 2;
          ++v13;
          if (v8 == v9)
          {
            goto LABEL_17;
          }
        }

        v47 = *&v50.value.color.green;
        v48 = *&v50.value.color.alpha;
        object = v50.value.hash._object;
        countAndFlagsBits = v50.value.bundleIdentifier;
        v46 = *&v50.value.variant;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
          v11 = result;
        }

        v18 = *(v11 + 16);
        v17 = *(v11 + 24);
        if (v18 >= v17 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v11);
          v11 = result;
        }

        v44 = object;
        v42 = v47;
        v43 = v48;
        v19 = countAndFlagsBits;
        v41 = v46;
        *(v11 + 16) = v18 + 1;
        v20 = v11 + 72 * v18;
        *(v20 + 32) = v19;
        *(v20 + 96) = v44;
        *(v20 + 64) = v42;
        *(v20 + 80) = v43;
        *(v20 + 48) = v41;
        v10 = v39;
      }

      while (v8 - 1 != v13);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

LABEL_17:

    v21 = *(v11 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = MEMORY[0x277D84F90];
LABEL_19:
      v24 = v11 + 32 + 72 * v22;
      v25 = v22;
      while (v25 < *(v11 + 16))
      {
        v50.value.bundleIdentifier = *v24;
        v26 = *(v24 + 16);
        v27 = *(v24 + 32);
        v28 = *(v24 + 48);
        v50.value.hash._object = *(v24 + 64);
        *&v50.value.color.green = v27;
        *&v50.value.color.alpha = v28;
        *&v50.value.variant = v26;
        if (v50.value.bundleIdentifier._countAndFlagsBits == v6 && v5 == v50.value.bundleIdentifier._object || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          outlined init with copy of MutableMediaThirdPartyViewModel.StructuredColor(&v50, &countAndFlagsBits);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1);
          }

          v30 = *(v23 + 16);
          v29 = *(v23 + 24);
          if (v30 >= v29 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          }

          v22 = v25 + 1;
          *(v23 + 16) = v30 + 1;
          v31 = v23 + 72 * v30;
          *(v31 + 32) = v50.value.bundleIdentifier;
          v32 = *&v50.value.variant;
          v33 = *&v50.value.color.green;
          v34 = *&v50.value.color.alpha;
          *(v31 + 96) = v50.value.hash._object;
          *(v31 + 64) = v33;
          *(v31 + 80) = v34;
          *(v31 + 48) = v32;
          if (v21 - 1 != v25)
          {
            goto LABEL_19;
          }

          goto LABEL_33;
        }

        ++v25;
        v24 += 72;
        if (v21 == v25)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      __break(1u);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
LABEL_33:

      if (*(v23 + 16) == 1)
      {
        v35 = *(v23 + 48);
        v36 = *(v23 + 80);
        *&v50.value.color.green = *(v23 + 64);
        *&v50.value.color.alpha = v36;
        v50.value.hash._object = *(v23 + 96);
        v50.value.bundleIdentifier = *(v23 + 32);
        *&v50.value.variant = v35;
        outlined init with copy of MutableMediaThirdPartyViewModel.StructuredColor(&v50, &countAndFlagsBits);

        v37 = *&v50.value.color.alpha;
        *(v40 + 32) = *&v50.value.color.green;
        *(v40 + 48) = v37;
        *(v40 + 64) = v50.value.hash._object;
        v38 = *&v50.value.variant;
        *v40 = v50.value.bundleIdentifier;
        *(v40 + 16) = v38;
      }

      else
      {

        *(v40 + 64) = 0;
        *(v40 + 32) = 0u;
        *(v40 + 48) = 0u;
        *v40 = 0u;
        *(v40 + 16) = 0u;
      }
    }
  }

  else
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void Color.inferredVariant.getter(char *a1@<X8>)
{
  v2 = vmulq_f64(*(v1 + 8), xmmword_21659A3B0);
  if (*v1 * 0.2126 + v2.f64[0] + v2.f64[1] <= 0.1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  *a1 = v3;
}

uint64_t MutableMediaThirdPartyViewModel.StructuredColor.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MutableMediaThirdPartyViewModel.StructuredColor.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 MutableMediaThirdPartyViewModel.StructuredColor.color.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 MutableMediaThirdPartyViewModel.StructuredColor.color.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  return result;
}

uint64_t MutableMediaThirdPartyViewModel.StructuredColor.hash.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t MutableMediaThirdPartyViewModel.StructuredColor.hash.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t specialized MutableMediaThirdPartyViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v25[3] = a3;
  v25[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant] = 4;
  v8 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory;
  a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory] = 3;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_subtitle];
  *v10 = 0;
  v10[1] = 0;
  v11 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier];
  *v11 = 0;
  v11[1] = 0;
  v12 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColorString];
  *v12 = 0;
  v12[1] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBMediaThirdPartyModel();
  if (swift_dynamicCast())
  {
    v14 = *(v23 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_subtitle);
    v13 = *(v23 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_subtitle + 8);
    swift_beginAccess();
    *v10 = v14;
    v10[1] = v13;

    if (*(v23 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue + 8))
    {
      v15 = 3;
    }

    else if (*(v23 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue) >= 3uLL)
    {
      v15 = 3;
    }

    else
    {
      v15 = *(v23 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue);
    }

    swift_beginAccess();
    a2[v8] = v15;
    v17 = *(v23 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_bundleIdentifier);
    v16 = *(v23 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_bundleIdentifier + 8);
    swift_beginAccess();
    *v11 = v17;
    v11[1] = v16;

    v18 = *(v23 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 32);
    v21 = *(v23 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 16);
    v22 = *(v23 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor);
    swift_beginAccess();
    *v9 = v22;
    *(v9 + 1) = v21;
    v9[32] = v18;
    swift_weakAssign();
    v19 = specialized AssetViewModel.init(dbObject:)(v23, a2);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v19;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized MutableMediaThirdPartyViewModel.init(intendedViewport:supportedStyles:appBundleId:trackTitle:artist:album:mediaCategory:backgroundColorString:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, unsigned __int8 *a11, Swift::String string, uint64_t a13)
{
  v14 = v13;
  *&v59 = a7;
  v58 = a5;
  v51 = a4;
  v50 = a3;
  v53 = a2;
  v54 = a1;
  v60 = a13;
  *&v52 = string._object;
  ObjectType = swift_getObjectType();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v57 = &v50 - v18;
  v19 = *a11;
  v13[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant] = 4;
  v20 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory;
  v13[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory] = 3;
  v21 = &v13[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[32] = 1;
  v22 = &v14[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_subtitle];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v14[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v14[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColorString];
  *v24 = 0;
  v24[1] = 0;
  swift_weakInit();
  if (v19 >= 2)
  {
    goto LABEL_10;
  }

  if (a8)
  {
    v25 = HIBYTE(a8) & 0xF;
    if ((a8 & 0x2000000000000000) == 0)
    {
      v25 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      goto LABEL_10;
    }
  }

  if (!a10)
  {
    goto LABEL_11;
  }

  if (a9 == v58 && a6 == a10 || (v55 = a9, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
LABEL_10:
  }

  else
  {

    *&v59 = v55;
    a8 = a10;
  }

LABEL_11:
  v55 = a6;
  swift_beginAccess();
  *v22 = v59;
  v22[1] = a8;

  swift_beginAccess();
  v14[v20] = v19;
  swift_beginAccess();
  v26 = v51;
  *v23 = v50;
  v23[1] = v26;

  v27 = v52;
  if (v52)
  {
    countAndFlagsBits = string._countAndFlagsBits;
    MutableMediaThirdPartyViewModel.StructuredColor.init(string:)(&v61, *(&v27 - 1));
    v29 = v62;
    if (v62)
    {
      v52 = v64;
      v59 = v63;
      outlined destroy of UTType?(&v61, &_s9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVSgMd);
    }

    else
    {
      v59 = 0u;
      v52 = 0u;
    }

    swift_beginAccess();
    v30 = v52;
    *v21 = v59;
    *(v21 + 1) = v30;
    v21[32] = v29 == 0;
  }

  swift_weakAssign();
  v31 = type metadata accessor for DateInterval();
  *&v59 = *(v31 - 8);
  v32 = v59;
  v33 = v57;
  (*(v59 + 16))(v57, v60, v31);
  v34 = *(v32 + 56);
  v34(v33, 0, 1, v31);
  type metadata accessor for DBAssetModel();
  v35 = ObjectType;
  static DBAssetModel.subscript.getter(ObjectType, &v67);
  v36 = v67;
  v37 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v38 = &v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v38 = 0;
  v38[1] = 0;
  v39 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v34(&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v31);
  UUID.init()();
  v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v40 = v54;
  *&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v54;
  *&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v53;
  swift_beginAccess();
  v41 = *&v14[v37];
  *&v14[v37] = 0;
  v42 = v40;

  swift_beginAccess();
  v43 = v55;
  *v38 = v58;
  v38[1] = v43;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v33, &v14[v39]);
  v44 = swift_endAccess();
  v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v36;
  (*(v35 + 328))(v66, v44);
  v45 = v66[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v46 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v46 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v46 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v46 + 112) = v45;
  *&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v46;
  v47 = type metadata accessor for AssetViewModel();
  v65.receiver = v14;
  v65.super_class = v47;
  v48 = objc_msgSendSuper2(&v65, sel_init);
  (*(v59 + 8))(v60, v31);
  outlined destroy of UTType?(v33, &_s10Foundation12DateIntervalVSgMd);
  return v48;
}

char *specialized MutableMediaThirdPartyViewModel.predefinedColorStrings.getter()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  v2 = &off_2828D8710;
  v25 = 0x800000021657EEC0;
  do
  {
    v3 = *v2;
    v26 = *(v2 - 1);
    v27 = v3;
    v28 = v0;

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = 0xD000000000000035;
    v29 = v25;
    MEMORY[0x21CE92100](v4);

    v5 = v28;
    v6 = v29;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v7 = static DefaultsManager.shared;
    v8 = (*(*static DefaultsManager.shared + 120))();
    v28 = v5;
    v29 = v6;
    MEMORY[0x28223BE20](v8);
    v24[2] = &v28;
    v9 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v24, v8);

    if ((v9 & 1) == 0 || (v11 = (*(*v7 + 96))(v10)) == 0)
    {

LABEL_11:
      v17 = v26;
      goto LABEL_12;
    }

    v12 = v11;
    v13 = MEMORY[0x21CE91FC0](v5, v6);

    v14 = MEMORY[0x21CE91FC0](0x5F53544E454D4F4DLL, 0xED00004C41495254);
    v15 = [v12 levelForFactor:v13 withNamespaceName:v14];

    if (!v15)
    {

      goto LABEL_11;
    }

    v16 = [v15 stringValue];

    v17 = v26;
    if (v16)
    {

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
      }

      goto LABEL_15;
    }

LABEL_12:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    }

    v19 = v27;
LABEL_15:
    v21 = *(v1 + 2);
    v20 = *(v1 + 3);
    if (v21 >= v20 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v1);
    }

    ++v0;
    *(v1 + 2) = v21 + 1;
    v22 = &v1[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v19;
    v2 += 2;
  }

  while (v0 != 15);
  return v1;
}

uint64_t specialized MutableMediaThirdPartyViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutableMediaThirdPartyViewModel.init(dbObject:)(v9, v11, a3, a4);
}

void specialized MutableMediaThirdPartyViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant) = 4;
  *(v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory) = 3;
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_subtitle);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColorString);
  *v4 = 0;
  v4[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for MutableMediaThirdPartyViewModel()
{
  result = type metadata singleton initialization cache for MutableMediaThirdPartyViewModel;
  if (!type metadata singleton initialization cache for MutableMediaThirdPartyViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MutableMediaThirdPartyViewModel.StructuredColor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MutableMediaThirdPartyViewModel.StructuredColor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void partial apply for closure #1 in closure #1 in MutableMediaThirdPartyViewModel.getAppIcon()(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI5ImageCSgs5NeverOGMd) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  closure #1 in closure #1 in MutableMediaThirdPartyViewModel.getAppIcon()(a1, v4, v5);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

const char *specialized static UIRenderingSession.signpostNameForCellRendering(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd);
  v1 = String.init<A>(describing:)();
  v3 = v2;
  v11 = v1;
  v12 = v2;
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {

    return "UIService_RenderPhotoCell";
  }

  else
  {
    v11 = v1;
    v12 = v3;
    if (StringProtocol.contains<A>(_:)())
    {

      return "UIService_RenderLivePhotoCell";
    }

    else
    {
      v11 = v1;
      v12 = v3;
      if (StringProtocol.contains<A>(_:)())
      {

        return "UIService_RenderVideoCell";
      }

      else
      {
        v11 = v1;
        v12 = v3;
        if (StringProtocol.contains<A>(_:)())
        {

          return "UIService_RenderContactCell";
        }

        else
        {
          v11 = v1;
          v12 = v3;
          if (StringProtocol.contains<A>(_:)())
          {

            return "UIService_RenderMapCell";
          }

          else
          {
            v11 = v1;
            v12 = v3;
            if (StringProtocol.contains<A>(_:)())
            {

              return "UIService_RenderWorkoutCell";
            }

            else
            {
              v11 = v1;
              v12 = v3;
              if (StringProtocol.contains<A>(_:)())
              {

                return "UIService_RenderMotionActivityCell";
              }

              else
              {
                v11 = v1;
                v12 = v3;
                if (StringProtocol.contains<A>(_:)())
                {

                  return "UIService_RenderMediaFirstPartyCell";
                }

                else
                {
                  v11 = v1;
                  v12 = v3;
                  if (StringProtocol.contains<A>(_:)())
                  {

                    return "UIService_RenderMediaThirdPartyCell";
                  }

                  else
                  {
                    v11 = v1;
                    v12 = v3;
                    if (StringProtocol.contains<A>(_:)())
                    {

                      return "UIService_RenderStateOfMindCell";
                    }

                    else
                    {
                      if (one-time initialization token for views != -1)
                      {
                        swift_once();
                      }

                      v5 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v5, static CommonLogger.views);

                      v6 = Logger.logObject.getter();
                      v7 = static os_log_type_t.error.getter();

                      if (os_log_type_enabled(v6, v7))
                      {
                        v8 = swift_slowAlloc();
                        v9 = swift_slowAlloc();
                        v11 = v9;
                        *v8 = 136315138;
                        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, &v11);

                        *(v8 + 4) = v10;
                        _os_log_impl(&dword_21607C000, v6, v7, "[signpostNameForCellRendering] Unrecognized cell view model type: %s - using UIService_RenderUnknownCell", v8, 0xCu);
                        __swift_destroy_boxed_opaque_existential_1(v9);
                        MEMORY[0x21CE94770](v9, -1, -1);
                        MEMORY[0x21CE94770](v8, -1, -1);
                      }

                      else
                      {
                      }

                      return "UIService_RenderUnknownCell";
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
}