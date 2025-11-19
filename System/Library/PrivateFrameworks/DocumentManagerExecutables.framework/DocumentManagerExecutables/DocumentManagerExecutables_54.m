id specialized static UIBezierPath.path(for:thumbnailSize:)(void *a1, double a2, double a3)
{
  if ([a1 isFolder])
  {
    v6 = specialized static UIBezierPath.folder.getter();
  }

  else if (a3 <= 100.0)
  {
    if (a3 >= 50.0)
    {
      v6 = specialized static UIBezierPath.document_84.getter();
    }

    else
    {
      v6 = specialized static UIBezierPath.document_44.getter();
    }
  }

  else
  {
    v6 = specialized static UIBezierPath.document.getter();
  }

  v7 = v6;
  if ((_UISolariumEnabled() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    [v7 bounds];
    v9 = a2 / v8;
    [v7 bounds];
    v11 = a3 / v10;
    if (a3 / v10 >= v9)
    {
      v11 = v9;
    }

    CGAffineTransformMakeScale(&v22, v11, v11);
    [v7 applyTransform_];
    v12 = [a1 isFolder];
    v13 = 0.857;
    if (v12)
    {
      v13 = 0.918;
    }

    CGAffineTransformMakeScale(&v22, v13, v13);
    [v7 applyTransform_];
    [v7 bounds];
    v15 = (a2 - v14) * 0.5;
    [v7 bounds];
    v22.a = 1.0;
    v22.b = 0.0;
    v22.c = 0.0;
    v22.d = 1.0;
    v22.tx = 0.0;
    v22.ty = 0.0;
    CGAffineTransformTranslate(&v21, &v22, v15, (a3 - v16) * 0.5);
    v22 = v21;
    [v7 applyTransform_];
    v17 = [v7 CGPath];
    v18 = [objc_opt_self() bezierPathWithCGPath_];

    return v18;
  }

  else
  {
    if (a3 >= a2)
    {
      a3 = a2;
    }

    [v7 bounds];
    CGAffineTransformMakeScale(&v22, a3 / v20, a3 / v20);
    [v7 applyTransform_];
    return v7;
  }
}

uint64_t DOCFileProviderSyncStateHeaderViewModel.__allocating_init(for:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 88) = 1;
  *(v2 + 32) = a1;
  return v2;
}

uint64_t DOCFileProviderSyncStateHeaderViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCFileProviderSyncStateHeaderViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return DOCFileProviderSyncStateFooterViewModel.delegate.modify;
}

uint64_t DOCFileProviderSyncStateHeaderViewModel.init(for:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 88) = 1;
  *(v1 + 32) = a1;
  return v1;
}

uint64_t DOCFileProviderSyncStateHeaderViewModel.__allocating_init(for:headerTextSyncStateProvider:)(uint64_t a1, __int128 *a2)
{
  v4 = (*(v2 + 168))();
  outlined init with take of DOCGoToFolderCandidate(a2, v6);
  swift_beginAccess();

  outlined assign with take of DOCFileProviderSyncStateProviding?(v6, v4 + 40);
  swift_endAccess();

  return v4;
}

BOOL static DOCFileProviderSyncStateHeaderViewModel.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      type metadata accessor for NSObject();
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  return !a2;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCFileProviderSyncStateHeaderViewModel.State(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      type metadata accessor for NSObject();
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  return !v2;
}

void *DOCFileProviderSyncStateHeaderViewModel.headerState.getter()
{
  result = *(v0 + 80);
  if (result)
  {
    if ([result contentType] != 1)
    {
      result = *(v0 + 80);
      if (!result)
      {
        return result;
      }

      if ([result contentType] != 2)
      {
        return 0;
      }
    }

    v2 = *(v0 + 80);
    if (v2)
    {
      v3 = *(v0 + 80);
      v4 = v2;
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DOCFileProviderSyncStateHeaderViewModel.shouldDisplayHeader.getter()
{
  if ((*(*v0 + 192))() & 1) != 0 || ((*(*v0 + 200))())
  {
    return 1;
  }

  v2 = *(*v0 + 208);

  return v2();
}

id DOCFileProviderSyncStateHeaderViewModel.shouldDisplayTitleContainer.getter()
{
  result = *(v0 + 80);
  if (result)
  {
    result = [result contentType];
    if (result != 1)
    {
      result = *(v0 + 80);
      if (result)
      {
        return ([result contentType] == 2);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall DOCFileProviderSyncStateHeaderViewModel.startObserving()()
{
  v1 = v0;
  swift_beginAccess();
  outlined init with copy of DOCFileProviderSyncStateProviding?(v0 + 40, v23);
  v2 = v24;
  outlined destroy of DOCFileProviderSyncStateProviding?(v23);
  if (!v2)
  {
    v3 = *(v1 + 32);
    v4 = type metadata accessor for DOCFileProviderSyncStateProvider();
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    v6 = one-time initialization token for shared;
    v7 = v3;
    if (v6 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = *(*static DOCFileProviderSyncStateObserverCache.shared + 112);

    v9 = v8(v7);

    *(v5 + 16) = v9;
    swift_beginAccess();
    if ((*(v5 + 24) & 1) == 0)
    {
      *(v5 + 24) = 1;
      (*(*v9 + 272))(v5);
    }

    v24 = v4;
    v25 = &protocol witness table for DOCFileProviderSyncStateProvider;
    v23[0] = v5;
    swift_beginAccess();
    outlined assign with take of DOCFileProviderSyncStateProviding?(v23, v1 + 40);
    swift_endAccess();
  }

  v11 = DOCFileProviderSyncStateHeaderViewModel.headerTextSyncStateProvider.modify();
  if (*(v10 + 24))
  {
    v12 = v10;
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = *(v12 + 24);
    v15 = *(v12 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v12, v14);
    (*(v15 + 32))(partial apply for closure #1 in DOCFileProviderSyncStateHeaderViewModel.startObserving(), v13, v14, v15);
  }

  (v11)(v23, 0);
  outlined init with copy of DOCFileProviderSyncStateProviding?(v1 + 40, v23);
  if (v24)
  {
    outlined init with copy of DOCSidebarItemIconProvider(v23, v20);
    outlined destroy of DOCFileProviderSyncStateProviding?(v23);
    v16 = v21;
    v17 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = *(v17 + 16);

    v19(partial apply for closure #1 in DOCFileProviderSyncStateHeaderViewModel.refreshInAppMessage(), v18, v16, v17);

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    outlined destroy of DOCFileProviderSyncStateProviding?(v23);
  }
}

uint64_t closure #1 in DOCFileProviderSyncStateHeaderViewModel.startObserving()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    outlined init with copy of DOCFileProviderSyncStateProviding?(v1 + 40, v9);
    if (v10)
    {
      outlined init with copy of DOCSidebarItemIconProvider(v9, v6);
      outlined destroy of DOCFileProviderSyncStateProviding?(v9);
      v2 = v7;
      v3 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = *(v3 + 16);

      v5(closure #1 in DOCFileProviderSyncStateHeaderViewModel.refreshInAppMessage()partial apply, v4, v2, v3);

      return __swift_destroy_boxed_opaque_existential_0(v6);
    }

    else
    {

      return outlined destroy of DOCFileProviderSyncStateProviding?(v9);
    }
  }

  return result;
}

Swift::Void __swiftcall DOCFileProviderSyncStateHeaderViewModel.stopObserving()()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  outlined assign with take of DOCFileProviderSyncStateProviding?(v2, v0 + 40);
  swift_endAccess();
  v1 = *(v0 + 88);
  *(v0 + 88) = 1;
  outlined consume of DOCProgressCollectionIndicatorView??(v1);
}

uint64_t closure #1 in DOCFileProviderSyncStateHeaderViewModel.refreshInAppMessage()(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 80);
    *(result + 80) = a1;
    v4 = a1;

    DOCFileProviderSyncStateHeaderViewModel.syncStateDidChange()();
  }

  return result;
}

void DOCFileProviderSyncStateHeaderViewModel.syncStateDidChange()()
{
  v1 = (*(*v0 + 176))();
  v2 = v1;
  v3 = v0[11];
  if (v3 == 1)
  {
    goto LABEL_2;
  }

  if (!v1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_2;
  }

  if (!v3)
  {
LABEL_2:
    v0[11] = v2;
    v9 = v2;
    outlined consume of DOCProgressCollectionIndicatorView??(v3);
    if ((*(*v0 + 120))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v2, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    goto LABEL_4;
  }

  v7 = v0;
  type metadata accessor for NSObject();
  outlined copy of DOCProgressCollectionIndicatorView??(v3);
  v9 = v2;
  v8 = static NSObject.== infix(_:_:)();
  outlined consume of DOCProgressCollectionIndicatorView??(v3);

  if ((v8 & 1) == 0)
  {
    v0 = v7;
    v3 = v7[11];
    goto LABEL_2;
  }

LABEL_4:
}

id *DOCFileProviderSyncStateHeaderViewModel.deinit()
{
  outlined destroy of weak DOCPresentationPreheatable?((v0 + 2));

  outlined destroy of DOCFileProviderSyncStateProviding?((v0 + 5));
  outlined consume of DOCProgressCollectionIndicatorView??(v0[11]);
  return v0;
}

uint64_t DOCFileProviderSyncStateHeaderViewModel.__deallocating_deinit()
{
  outlined destroy of weak DOCPresentationPreheatable?((v0 + 2));

  outlined destroy of DOCFileProviderSyncStateProviding?((v0 + 5));
  outlined consume of DOCProgressCollectionIndicatorView??(v0[11]);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for DOCFileProviderSyncStateHeaderViewModel.State(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DOCFileProviderSyncStateHeaderViewModel.State(uint64_t result, unsigned int a2, unsigned int a3)
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

void *destructiveInjectEnumTag for DOCFileProviderSyncStateHeaderViewModel.State(void *result, int a2)
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

char *static DOCVibrancy.Style.stroke(_:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  *a2 = 0;
  a2[1] = v2;
  return result;
}

uint64_t static DOCVibrancy.ConfigurationTrait.name.getter()
{
  swift_beginAccess();
  v0 = *static DOCVibrancy.ConfigurationTrait.name;

  return v0;
}

uint64_t static DOCVibrancy.ConfigurationTrait.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static DOCVibrancy.ConfigurationTrait.name = a1;
  *&static DOCVibrancy.ConfigurationTrait.name[8] = a2;
}

uint64_t key path setter for static DOCVibrancy.ConfigurationTrait.name : DOCVibrancy.ConfigurationTrait.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *static DOCVibrancy.ConfigurationTrait.name = v2;
  *&static DOCVibrancy.ConfigurationTrait.name[8] = v1;
}

uint64_t protocol witness for static UITraitDefinition.name.getter in conformance DOCVibrancy.ConfigurationTrait()
{
  swift_beginAccess();
  v0 = *static DOCVibrancy.ConfigurationTrait.name;

  return v0;
}

uint64_t UIMutableTraits.doc_vibrancyConfiguration.getter()
{
  lazy protocol witness table accessor for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait();

  return dispatch thunk of UIMutableTraits.subscript.getter();
}

unint64_t lazy protocol witness table accessor for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait()
{
  result = lazy protocol witness table cache variable for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait;
  if (!lazy protocol witness table cache variable for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait);
  }

  return result;
}

uint64_t (*UIMutableTraits.doc_vibrancyConfiguration.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  a1[1] = a3;
  a1[2] = v3;
  *a1 = a2;
  lazy protocol witness table accessor for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return UIMutableTraits.doc_vibrancyConfiguration.modify;
}

uint64_t UIMutableTraits.doc_vibrancyConfiguration.modify(uint64_t a1)
{
  *(a1 + 24) = 3;
  lazy protocol witness table accessor for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait();
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t UITraitCollection.doc_vibrancyConfiguration.getter()
{
  lazy protocol witness table accessor for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait();

  return UITraitCollection.subscript.getter();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCVibrancy.Style.Category(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1819044198;
  }

  else
  {
    v3 = 0x656B6F727473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1819044198;
  }

  else
  {
    v5 = 0x656B6F727473;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCVibrancy.Style.Category()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCVibrancy.Style.Category()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCVibrancy.Style.Category()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCVibrancy.Style.Category@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCVibrancy.Style.Category.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCVibrancy.Style.Category(uint64_t *a1@<X8>)
{
  v2 = 1819044198;
  if (!*v1)
  {
    v2 = 0x656B6F727473;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

DocumentManagerExecutables::DOCVibrancy::Style::Weight_optional __swiftcall DOCVibrancy.Style.Weight.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCVibrancy.Style.Weight.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t DOCVibrancy.Style.Weight.rawValue.getter()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x7972616974726574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCVibrancy.Style.Weight(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7261646E6F636573;
  v4 = 0xE900000000000079;
  if (v2 != 1)
  {
    v3 = 0x7972616974726574;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972616D697270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xE900000000000079;
  if (*a2 != 1)
  {
    v7 = 0x7972616974726574;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972616D697270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCVibrancy.Style.Weight()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCVibrancy.Style.Weight()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCVibrancy.Style.Weight()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCVibrancy.Style.Weight(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x7261646E6F636573;
  if (v2 != 1)
  {
    v5 = 0x7972616974726574;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D697270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

char *static DOCVibrancy.Style.fill(_:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  *a2 = 1;
  a2[1] = v2;
  return result;
}

uint64_t DOCVibrancy.Style.description.getter()
{
  BYTE8(v2) = 0;
  *&v2 = *(v0 + 1);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCVibrancy.Style()
{
  BYTE8(v2) = 0;
  *&v2 = *(v0 + 1);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

BOOL static DOCVibrancy.Configuration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCVibrancy.Configuration(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

Swift::Int DOCVibrancy.Environment.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t specialized static DOCVibrancy.Style.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 1819044198;
  }

  else
  {
    v5 = 0x656B6F727473;
  }

  if (v4)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (*a2)
  {
    v7 = 1819044198;
  }

  else
  {
    v7 = 0x656B6F727473;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = 0x7261646E6F636573;
  v13 = 0xE900000000000079;
  if (v2 != 1)
  {
    v12 = 0x7972616974726574;
    v13 = 0xE800000000000000;
  }

  if (v2)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0x7972616D697270;
  }

  if (v2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v16 = 0xE900000000000079;
      if (v14 != 0x7261646E6F636573)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v16 = 0xE800000000000000;
      if (v14 != 0x7972616974726574)
      {
LABEL_37:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_38;
      }
    }
  }

  else
  {
    v16 = 0xE700000000000000;
    if (v14 != 0x7972616D697270)
    {
      goto LABEL_37;
    }
  }

  if (v15 != v16)
  {
    goto LABEL_37;
  }

  v11 = 1;
LABEL_38:

  return v11 & 1;
}

unint64_t lazy protocol witness table accessor for type DOCVibrancy.Style.Weight and conformance DOCVibrancy.Style.Weight()
{
  result = lazy protocol witness table cache variable for type DOCVibrancy.Style.Weight and conformance DOCVibrancy.Style.Weight;
  if (!lazy protocol witness table cache variable for type DOCVibrancy.Style.Weight and conformance DOCVibrancy.Style.Weight)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCVibrancy.Style.Weight and conformance DOCVibrancy.Style.Weight);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCVibrancy.Environment and conformance DOCVibrancy.Environment()
{
  result = lazy protocol witness table cache variable for type DOCVibrancy.Environment and conformance DOCVibrancy.Environment;
  if (!lazy protocol witness table cache variable for type DOCVibrancy.Environment and conformance DOCVibrancy.Environment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCVibrancy.Environment and conformance DOCVibrancy.Environment);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCVibrancy.Style(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for DOCVibrancy.Style(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCVibrancy.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTag for DOCVibrancy.Configuration(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for DOCVibrancy.Configuration(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCVibrancy.Style.Category and conformance DOCVibrancy.Style.Category()
{
  result = lazy protocol witness table cache variable for type DOCVibrancy.Style.Category and conformance DOCVibrancy.Style.Category;
  if (!lazy protocol witness table cache variable for type DOCVibrancy.Style.Category and conformance DOCVibrancy.Style.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCVibrancy.Style.Category and conformance DOCVibrancy.Style.Category);
  }

  return result;
}

void __swiftcall DOCItemInfoContentViewController.contextMenuForItems(nodes:)(UIMenu_optional *__return_ptr retstr, Swift::OpaquePointer nodes)
{
  if (!(nodes._rawValue >> 62))
  {
    if (*((nodes._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      return;
    }

    goto LABEL_3;
  }

  rawValue = nodes._rawValue;
  v7 = __CocoaSet.count.getter();
  nodes._rawValue = rawValue;
  if (v7 == 1)
  {
LABEL_3:
    v3 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
    v4 = nodes._rawValue;
    swift_beginAccess();
    v5 = *(v2 + v3);
    specialized DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:)(v4, 0);
  }
}

uint64_t contextMenuActionOverrider #1 (_:) in DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:)(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_17:
    v13 = v3;
    return v3;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x24C1FC540](0, a2);
    goto LABEL_13;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(a2 + 32);
    swift_unknownObjectRetain();
LABEL_13:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = (*((*MEMORY[0x277D85000] & *static DOCOpenWithMenuController.shared) + 0x90))(v12, 0);
    swift_unknownObjectRelease();
    return v3;
  }

  __break(1u);
  return result;
}

void *DOCItemInfoContentViewController.iCloudLinkAction()()
{
  specialized DOCItemInfoContentViewController.createiCloudLinkBrowserAction()();
  v1 = v0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = partial apply for closure #1 in DOCItemInfoContentViewController.iCloudLinkAction();
  v14 = v2;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
  v12 = &block_descriptor_31_1;
  v3 = _Block_copy(&v9);

  [v1 setUnresolvedHandler_];
  _Block_release(v3);
  v4 = MEMORY[0x24C1FAD20](1802398060, 0xE400000000000000);
  v5 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
  [v1 setAvailability_];
  [v1 setSupportsMultipleItems_];
  [v1 setMenuSortOrder_];
  v13 = specialized closure #1 in static NSPredicate.validateAction(_:);
  v14 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
  v12 = &block_descriptor_34_3;
  v6 = _Block_copy(&v9);
  v7 = [objc_opt_self() predicateWithBlock_];
  _Block_release(v6);

  [v1 setFilteringPredicate_];

  return v1;
}

uint64_t filteredActions #1 (by:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4;
    v9 = v4 + 32;
    v4 = a1 + 56;
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x24C1FC540](v6, v21);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v10 = *(v9 + 8 * v6);
      }

      v11 = v10;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v13 = [v10 menuSortOrder];
      if (*(a1 + 16) && (v14 = v13, Hasher.init(_seed:)(), MEMORY[0x24C1FCBD0](v14), v15 = Hasher._finalize()(), v16 = -1 << *(a1 + 32), v17 = v15 & ~v16, ((*(v4 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
      {
        v18 = ~v16;
        while (*(*(a1 + 48) + 8 * v17) != v14)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v4 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v6 == i)
        {
LABEL_19:
          v19 = v22;
          goto LABEL_21;
        }
      }

      else
      {
LABEL_5:

        if (v6 == i)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_21:

  return v19;
}

uint64_t closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(void **a1, void **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 16);
  v5 = a3 + 32;
  v6 = v4 == 0;
  if (v4)
  {
    v7 = 0;
    v8 = *a1;
    while (1)
    {
      v9 = *(v5 + 8 * v7);
      if (v9 == [v8 menuSortOrder])
      {
        break;
      }

      v6 = v4 == ++v7;
      if (v4 == v7)
      {
        v7 = 0;
        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = v4 != 0;
  if (v4)
  {
    v11 = 0;
    while (1)
    {
      v12 = *(v5 + 8 * v11);
      if (v12 == [v3 menuSortOrder])
      {
        break;
      }

      v10 = v4 != ++v11;
      if (v4 == v11)
      {
        v11 = 0;
        break;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v10 & (v7 < v11);
  }
}

void closure #1 in closure #1 in browserActionsToMenuActions #1 (_:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_getObjectType();
    v10 = DOCNode.fpfs_syncFetchFPItem()();
    if (v10)
    {
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So6FPItemCtGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9A480;
      *(inited + 32) = 0xD000000000000039;
      *(inited + 40) = 0x8000000249BF1650;
      *(inited + 48) = v11;
      v27 = v11;
      v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So6FPItemCTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(inited + 32, &_sSS_So6FPItemCtMd);
      v14 = v9;
      v15 = [v14 effectiveAppearance];
      v16 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
      swift_beginAccess();
      v17 = *&v14[v16];
      swift_beginAccess();
      v18 = swift_unknownObjectWeakLoadStrong();
      v19 = v17;
      v20 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v13);

      v21 = type metadata accessor for DOCActionContext();
      v22 = objc_allocWithZone(v21);
      v26 = a5;
      swift_unknownObjectWeakInit();
      *&v22[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
      *&v22[OBJC_IVAR___DOCActionContext_appearance] = v15;
      *&v22[OBJC_IVAR___DOCActionContext_configuration] = v19;
      *&v22[OBJC_IVAR___DOCActionContext_presentingViewController] = v14;
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      *&v22[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
      *&v22[OBJC_IVAR___DOCActionContext_actionReporting] = v18;
      *&v22[OBJC_IVAR___DOCActionContext_userInfo] = v20;
      v28.receiver = v22;
      v28.super_class = v21;
      v23 = objc_msgSendSuper2(&v28, sel_init);
      (*((*MEMORY[0x277D85000] & *v23) + 0xC8))(a1);
      v24 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
      swift_beginAccess();
      v25 = *&v14[v24];
      specialized DOCActionManager.perform(_:on:actionContext:)(a4, v26, v23);

      if ([a4 performActionExitsEditMode])
      {
        [v14 setEditing:0 animated:1];
      }

      v9 = v27;
    }
  }
}

void closure #2 in DOCItemInfoContentViewController.shareAction()(unint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (specialized Array<A>.fpfs_syncFetchAllFPItems()(a1))
    {

      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      *(v4 + 24) = v3;

      v5 = v3;
      DOCRunInMainThread(_:)();
    }

    else
    {
    }
  }
}

void closure #1 in closure #2 in DOCItemInfoContentViewController.shareAction()(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() defaultPermission];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v8[4] = partial apply for closure #1 in closure #1 in closure #2 in DOCItemInfoContentViewController.shareAction();
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v8[3] = &block_descriptor_53_1;
  v6 = _Block_copy(v8);
  v7 = a2;

  [v3 adoptPersonaFromNodes:isa andPerformBlock:v6];
  _Block_release(v6);
}

void closure #1 in DOCItemInfoContentViewController.iCloudLinkAction()(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (specialized Array<A>.fpfs_syncFetchAllFPItems()(a1))
  {

    if (a1 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v5 = DOCNode.fpfs_syncFetchFPItem()();
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = [objc_opt_self() defaultManager];
      v8[4] = partial apply for closure #1 in closure #1 in DOCItemInfoContentViewController.iCloudLinkAction();
      v8[5] = a3;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v8[3] = &block_descriptor_37_2;
      v7 = _Block_copy(v8);

      [v6 fetchURLForItem:v5 completionHandler:v7];
      _Block_release(v7);
    }
  }
}

void closure #1 in closure #1 in DOCItemInfoContentViewController.iCloudLinkAction()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v15 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v32 - v17;
  outlined init with copy of URL?(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.UI);
    v20 = a2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = a2;
      v33 = v24;
      *v23 = 136315138;
      v25 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v26 = String.init<A>(describing:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v33);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_2493AC000, v21, v22, "No node url found. Failed to handle create iCloud link action. Error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x24C1FE850](v24, -1, -1);
      MEMORY[0x24C1FE850](v23, -1, -1);
    }
  }

  else
  {
    v29 = *(v11 + 32);
    v29(v18, v9, v10);
    (*(v11 + 16))(v15, v18, v10);
    v30 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v31 = swift_allocObject();
    v29((v31 + v30), v15, v10);
    *(v31 + ((v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

    DOCRunInMainThread(_:)();

    (*(v11 + 8))(v18, v10);
  }
}

void closure #1 in closure #1 in closure #1 in DOCItemInfoContentViewController.iCloudLinkAction()(uint64_t a1)
{
  v2 = type metadata accessor for CreateiCloudLinkView();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26[-v9];
  v11 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v11, v12);
  (*(v14 + 16))(&v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for CreateiCloudLinkViewModel();
  swift_allocObject();
  CreateiCloudLinkViewModel.init(fileURL:optionsGroups:dismissAction:)();

  CreateiCloudLinkView.init(viewModel:)();
  (*(v3 + 16))(v7, v10, v2);
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy012CloudSharingB007CreateiE8LinkViewVGMd));
  v17 = UIHostingController.init(rootView:)();
  [v17 setModalPresentationStyle_];
  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    [v18 presentViewController:v17 animated:1 completion:0];
  }

  v20 = [v17 presentationController];

  if (v20)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_249BA1010;
      v24 = objc_opt_self();
      *(v23 + 32) = [v24 mediumDetent];
      *(v23 + 40) = [v24 largeDetent];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v22 setDetents_];
    }

    else
    {
    }

    (*(v3 + 8))(v10, v2);
  }

  else
  {
    (*(v3 + 8))(v10, v2);
  }
}

uint64_t closure #2 in DOCItemInfoContentViewController.iCloudLinkAction()(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_19:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x24C1FC540](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_16:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v4 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_16;
          }
        }

        swift_getObjectType();
        if ([v4 isShared] & 1) != 0 || (objc_msgSend(v4, sel_doc_isCollaborationInvitation) & 1) != 0 || (DOCNode.doc_isAppContainerRoot.getter())
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v6 = [v4 isTrashed];
          swift_unknownObjectRelease();
          if ((v6 & 1) == 0)
          {
            return 1;
          }
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v90 = *(v8 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = v8;
        v8 = (v90 - 1);
        v92 = *&v91[16 * v90];
        v93 = *&v91[16 * v90 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v92), (*a3 + 8 * *&v91[16 * v90 + 16]), (*a3 + 8 * v93), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v93 < v92)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = specialized _ArrayBuffer._consumeAndCreateNew()(v91);
        }

        if (v90 - 2 >= *(v91 + 2))
        {
          goto LABEL_116;
        }

        v94 = &v91[16 * v90];
        *v94 = v92;
        *(v94 + 1) = v93;
        specialized Array.remove(at:)(v90 - 1);
        v8 = v91;
        v90 = *(v91 + 2);
        if (v90 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v100 = v5;
      v96 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v105 = [v13 menuSortOrder];
      v103 = [v14 menuSortOrder];

      v98 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 menuSortOrder];
        v7 = [v18 menuSortOrder];

        v21 = v20 >= v7;
        v8 = v19;
        v22 = v21;
        ++v15;
        ++v11;
        if ((((v105 < v103) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v98;
      v5 = v100;
      v23 = v96;
      if (v105 < v103)
      {
        if (v6 < v98)
        {
          goto LABEL_119;
        }

        if (v98 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v98;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v44 = *(v8 + 2);
    v43 = *(v8 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v8);
    }

    *(v8 + 2) = v45;
    v46 = &v8[16 * v44];
    *(v46 + 4) = v9;
    *(v46 + 5) = v7;
    v47 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_59:
          if (v52)
          {
            goto LABEL_106;
          }

          v65 = &v8[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_109;
          }

          v71 = &v8[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_113;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v75 = &v8[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_73:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = &v8[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_111;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_80:
        v86 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = *&v8[16 * v86 + 32];
        v88 = *&v8[16 * v48 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v87), (*a3 + 8 * *&v8[16 * v48 + 32]), (*a3 + 8 * v88), v47);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v88 < v87)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v86 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v89 = &v8[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        specialized Array.remove(at:)(v48);
        v45 = *(v8 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v8[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_104;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_105;
      }

      v60 = &v8[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_107;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_110;
      }

      if (v64 >= v56)
      {
        v82 = &v8[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_114;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v97 = v8;
  v99 = v9;
  v101 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v104 = v30;
LABEL_32:
  v106 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 menuSortOrder];
    v41 = [v39 menuSortOrder];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v106 + 1;
      v32 += 8;
      --v33;
      if ((v106 + 1) != v104)
      {
        goto LABEL_32;
      }

      v7 = v104;
      v9 = v99;
      v5 = v101;
      v8 = v97;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    v21 = __CFADD__(v35++, 1);
    if (v21)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, void **a2, void **a3, uint64_t __dst, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = v7 - 1;
      v31 = &v16[v29];
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v55 = v33;
        v34 = v30;
        v54 = *v30;
        v35 = v54;
        v36 = v33;
        v37 = v35;
        v38 = closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(&v55, &v54, a5);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v44 = v51;
          v45 = v52;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = (v6 + 1);
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v7 = v51;
          v15 = v52;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < (v15 + (v47 & 0xFFFFFFFFFFFFFFF8)) && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v55 = *v7;
    v20 = v15;
    v54 = *v15;
    v21 = v54;
    v22 = v55;
    v23 = v21;
    v24 = closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(&v55, &v54, a5);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if ((v25 & 1) == 0)
    {
      v26 = v20;
      v15 = v20 + 1;
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if (v18 - v20 >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, void **a2, id *a3, char *__src)
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
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 menuSortOrder];
          v35 = [v33 menuSortOrder];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 menuSortOrder];
          v20 = [v18 menuSortOrder];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    __dst = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_91;
    }

    goto LABEL_130;
  }

  v104 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_20;
    }

    v13 = *a3;
    v14 = *(*a3 + 8 * v12);
    v113 = *(*a3 + 8 * v11);
    v15 = v113;
    v114 = v14;
    v16 = v14;
    v17 = v15;
    LODWORD(__dst) = closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(&v114, &v113, a5);
    if (v6)
    {
      swift_bridgeObjectRelease_n();

      return;
    }

    v18 = v11 + 2;
    v105 = v11;
    v19 = 8 * v11;
    v20 = (v13 + v19 + 16);
    while (v8 != v18)
    {
      v21 = *v20;
      v113 = *(v20 - 1);
      v22 = v113;
      v114 = v21;
      v23 = v21;
      v24 = v22;
      LODWORD(v22) = closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(&v114, &v113, a5);

      ++v18;
      ++v20;
      if ((__dst ^ v22))
      {
        v8 = v18 - 1;
        break;
      }
    }

    if ((__dst & 1) == 0)
    {
      goto LABEL_18;
    }

    v25 = v105;
    if (v8 < v105)
    {
      goto LABEL_124;
    }

    if (v105 < v8)
    {
      v26 = 8 * v8 - 8;
      v27 = v8;
      do
      {
        if (v25 != --v27)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v29 = *(v28 + v19);
          *(v28 + v19) = *(v28 + v26);
          *(v28 + v26) = v29;
        }

        ++v25;
        v26 -= 8;
        v19 += 8;
      }

      while (v25 < v27);
LABEL_18:
      v12 = v8;
      v11 = v105;
      goto LABEL_20;
    }

    v12 = v8;
    v11 = v105;
LABEL_20:
    v30 = a3[1];
    if (v12 >= v30)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_120;
    }

    if (v12 - v11 >= v104)
    {
      goto LABEL_133;
    }

    v31 = v11 + v104;
    if (__OFADD__(v11, v104))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_126:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_127;
    }

    if (v31 >= v30)
    {
      v31 = a3[1];
    }

    if (v31 < v11)
    {
      goto LABEL_123;
    }

    if (v12 == v31)
    {
LABEL_133:
      if (v12 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v82 = *a3;
      v83 = *a3 + 8 * v12 - 8;
      v106 = v11;
      v84 = v11 - v12;
      v102 = v31;
      do
      {
        v109 = v12;
        __dst = v83;
        v85 = *(v82 + 8 * v12);
        v103 = v84;
        v86 = v84;
        do
        {
          v113 = *v83;
          v87 = v113;
          v114 = v85;
          v88 = v85;
          v89 = v87;
          v90 = closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(&v114, &v113, a5);
          if (v6)
          {
            swift_bridgeObjectRelease_n();

            return;
          }

          v91 = v90;

          if ((v91 & 1) == 0)
          {
            break;
          }

          if (!v82)
          {
            goto LABEL_126;
          }

          v92 = *v83;
          v85 = *(v83 + 8);
          *v83 = v85;
          *(v83 + 8) = v92;
          v83 -= 8;
        }

        while (!__CFADD__(v86++, 1));
        v12 = v109 + 1;
        v83 = __dst + 8;
        v84 = v103 - 1;
      }

      while (v109 + 1 != v102);
      v12 = v102;
      v11 = v106;
      if (v102 < v106)
      {
        goto LABEL_119;
      }
    }

    v108 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v33 = *(v10 + 2);
    v32 = *(v10 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v10);
    }

    *(v10 + 2) = v34;
    v35 = &v10[16 * v33];
    *(v35 + 4) = v11;
    *(v35 + 5) = v108;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v33)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v108;
    if (v108 >= v8)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v36 = v34 - 1;
    if (v34 >= 4)
    {
      v41 = &v10[16 * v34 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = &v10[16 * v34];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_118;
        }

        if (v39 < v73)
        {
          v36 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v34 == 3)
    {
      v37 = *(v10 + 4);
      v38 = *(v10 + 5);
      v47 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      v40 = v47;
LABEL_48:
      if (v40)
      {
        goto LABEL_108;
      }

      v53 = &v10[16 * v34];
      v55 = *v53;
      v54 = *(v53 + 1);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v59 = &v10[16 * v36 + 32];
      v61 = *v59;
      v60 = *(v59 + 1);
      v47 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v47)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v57, v62))
      {
        goto LABEL_115;
      }

      if (v57 + v62 >= v39)
      {
        if (v39 < v62)
        {
          v36 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v63 = &v10[16 * v34];
    v65 = *v63;
    v64 = *(v63 + 1);
    v47 = __OFSUB__(v64, v65);
    v57 = v64 - v65;
    v58 = v47;
LABEL_62:
    if (v58)
    {
      goto LABEL_110;
    }

    v66 = &v10[16 * v36];
    v68 = *(v66 + 4);
    v67 = *(v66 + 5);
    v47 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v47)
    {
      goto LABEL_113;
    }

    if (v69 < v57)
    {
      goto LABEL_3;
    }

LABEL_69:
    v74 = v36 - 1;
    if (v36 - 1 >= v34)
    {
      break;
    }

    v75 = *a3;
    if (!*a3)
    {
      goto LABEL_125;
    }

    v76 = *&v10[16 * v74 + 32];
    v77 = *&v10[16 * v36 + 40];
    v78 = (v75 + 8 * v76);
    v79 = (v75 + 8 * *&v10[16 * v36 + 32]);
    v80 = (v75 + 8 * v77);

    specialized _merge<A>(low:mid:high:buffer:by:)(v78, v79, v80, __dst, a5);
    if (v6)
    {
      swift_bridgeObjectRelease_n();

      return;
    }

    if (v77 < v76)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    if (v74 >= *(v10 + 2))
    {
      goto LABEL_105;
    }

    v81 = &v10[16 * v74];
    *(v81 + 4) = v76;
    *(v81 + 5) = v77;
    v115 = v10;
    specialized Array.remove(at:)(v36);
    v10 = v115;
    v34 = *(v115 + 2);
    if (v34 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
LABEL_91:
  v115 = v10;
  v94 = *(v10 + 2);
  if (v94 < 2)
  {
LABEL_99:

    swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v95 = *a3;
      if (!*a3)
      {
        break;
      }

      v96 = *&v10[16 * v94];
      v97 = *&v10[16 * v94 + 24];
      v98 = (v95 + 8 * v96);
      v99 = (v95 + 8 * *&v10[16 * v94 + 16]);
      v100 = (v95 + 8 * v97);

      specialized _merge<A>(low:mid:high:buffer:by:)(v98, v99, v100, __dst, a5);
      if (v6)
      {
        goto LABEL_99;
      }

      if (v97 < v96)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      }

      if (v94 - 2 >= *(v10 + 2))
      {
        goto LABEL_117;
      }

      v101 = &v10[16 * v94];
      *v101 = v96;
      *(v101 + 1) = v97;
      v115 = v10;
      specialized Array.remove(at:)(v94 - 1);
      v10 = v115;
      v94 = *(v115 + 2);
      if (v94 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_127:

    __break(1u);
LABEL_128:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_129:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_130:
    swift_bridgeObjectRelease_n();
    __break(1u);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v19 = v10;
    v20 = v9;
    while (1)
    {
      v22 = v11;
      v21 = *v9;
      v12 = v21;
      v13 = v11;
      v14 = v12;
      v15 = closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(&v22, &v21, a5);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v16 = *v9;
        v11 = *(v9 + 8);
        *v9 = v11;
        *(v9 + 8) = v16;
        v9 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v20 + 8;
      v10 = v19 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, a2);

  specialized ContiguousArray._endMutation()();
  return swift_bridgeObjectRelease_n();
}

void specialized DOCItemInfoContentViewController.createiCloudLinkBrowserAction()()
{
  v0 = *MEMORY[0x277D05F88];
  v1 = _DocumentManagerBundle();
  if (v1)
  {
    v2 = v1;
    v11._object = 0x8000000249BDCB60;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._object = 0x8000000249BDCB40;
    v4._countAndFlagsBits = 0x1000000000000015;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000033;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v11);

    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

    aBlock[4] = DOCGridLayout.specIconWidth.modify;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    aBlock[3] = &block_descriptor_44_6;
    v9 = _Block_copy(aBlock);
    [v7 initWithIdentifier:v0 localizedTitle:v8 unresolvedHandler:v9];

    _Block_release(v9);
  }

  else
  {

    __break(1u);
  }
}

uint64_t specialized DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v11 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
  swift_beginAccess();
  v12 = *(v6 + v11);
  v13 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  v14 = *(v7 + v13);
  v15 = v12;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18 = [v15 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = *(v7 + v11);
  v21 = DOCActionManager.collaborationActions(for:presentingViewController:availability:)(a1, v7, 1);

  v290 = v19;
  specialized Array.append<A>(contentsOf:)(v21);
  v22 = *(v7 + v13);
  v23 = *(v7 + v11);
  v24 = v22;
  v25 = specialized DOCActionManager.smartMoveActions(forMovingNodes:in:to:currentConfiguration:)(a1, a3);

  specialized Array.append<A>(contentsOf:)(v25);
  v26 = *(v7 + v13);
  v27 = *(v7 + v11);
  v28 = v26;
  v276 = a1;
  v29 = specialized DOCActionManager.openWithAppActions(for:currentConfiguration:)(a1, v28);

  specialized Array.append<A>(contentsOf:)(v29);
  v30 = v19;
  aBlock = MEMORY[0x277D84F90];
  if (v19 >> 62)
  {
    goto LABEL_189;
  }

  v31 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v32 = &selRef__setLocationsInBrowseTab_;
  if (v31)
  {
    v33 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x24C1FC540](v33, v30);
      }

      else
      {
        if (v33 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_181;
        }

        v34 = *(v30 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_180;
      }

      v37 = [v34 identifier];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
      {
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v43)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }
      }

      ++v33;
    }

    while (v36 != v31);
    v32 = &selRef__setLocationsInBrowseTab_;
  }

  aBlock = specialized Array._copyToContiguousArray()(v44);
  specialized MutableCollection<>.sort(by:)(&aBlock);
  v45 = swift_allocObject();

  v30 = aBlock;
  v256 = v45;
  *(v45 + 16) = aBlock;
  v46 = (v30 & 0x4000000000000000) != 0 || v30 < 0;
  v47 = !v46;
  v279 = v47;
  if (v46)
  {
    v48 = __CocoaSet.count.getter();
  }

  else
  {
    v48 = *(v30 + 16);
  }

  v49 = -v48;
  v50 = 4;
  while (v49 + v50 != 4)
  {
    v51 = v50 - 4;
    if ((v30 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x24C1FC540](v50 - 4, v30);
    }

    else
    {
      if (v51 >= *(v30 + 16))
      {
        goto LABEL_182;
      }

      v52 = *(v30 + 8 * v50);
    }

    v53 = v52;
    v54 = [v52 v32[466]];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
    {

      goto LABEL_45;
    }

    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v60)
    {

LABEL_45:
      v32 = &selRef__setLocationsInBrowseTab_;
      v61 = specialized static UIDocumentBrowserAction.shareAction(unresolvedHandler:)(DOCGridLayout.specIconWidth.modify, 0);
      v62 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v288 = partial apply for closure #2 in DOCItemInfoContentViewController.shareAction();
      v289 = v62;
      aBlock = MEMORY[0x277D85DD0];
      v285 = 1107296256;
      v286 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
      v287 = &block_descriptor_120;
      v63 = _Block_copy(&aBlock);

      [v61 setUnresolvedHandler_];
      _Block_release(v63);
      if ((v279 & swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
      }

      v64 = v30 & 0xFFFFFFFFFFFFFF8;
      if (v51 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v65 = *(v64 + 8 * v50);
        *(v64 + 8 * v50) = v61;

        *(v256 + 16) = v30;
        goto LABEL_49;
      }

      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      v273 = MEMORY[0x24C1FC540](0);
      goto LABEL_77;
    }

    ++v50;
    v32 = &selRef__setLocationsInBrowseTab_;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_184;
    }
  }

LABEL_49:
  v66 = v30 & 0xFFFFFFFFFFFFFF8;
  if (v30 >> 62)
  {
    v67 = __CocoaSet.count.getter();
  }

  else
  {
    v67 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = -v67;
  v69 = 4;
  while (1)
  {
    if (v68 + v69 == 4)
    {

      goto LABEL_72;
    }

    v70 = v69 - 4;
    if ((v30 & 0xC000000000000001) != 0)
    {
      v71 = MEMORY[0x24C1FC540](v69 - 4, v30);
    }

    else
    {
      if (v70 >= *(v66 + 16))
      {
        goto LABEL_183;
      }

      v71 = *(v30 + 8 * v69);
    }

    v72 = v71;
    v73 = [v71 v32[466]];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v76 == v77)
    {
      break;
    }

    v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v79)
    {
      goto LABEL_67;
    }

    ++v69;
    v32 = &selRef__setLocationsInBrowseTab_;
    v66 = v30 & 0xFFFFFFFFFFFFFF8;
    if (__OFADD__(v70, 1))
    {
      goto LABEL_185;
    }
  }

LABEL_67:
  v80 = v30 & 0xFFFFFFFFFFFFFF8;

  v81 = DOCItemInfoContentViewController.iCloudLinkAction()();
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v30 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
    v80 = v30 & 0xFFFFFFFFFFFFFF8;
  }

  if (v70 >= *(v80 + 16))
  {
    goto LABEL_195;
  }

  v83 = *(v80 + 8 * v69);
  *(v80 + 8 * v69) = v81;

  *(v256 + 16) = v30;
LABEL_72:
  v84 = v276;
  if (v276 >> 62)
  {
    v189 = __CocoaSet.count.getter();
    v84 = v276;
    if (v189 >= 1)
    {
      goto LABEL_74;
    }

LABEL_193:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    v190._countAndFlagsBits = 0;
    v190._object = 0xE000000000000000;
    v291.value.super.isa = 0;
    v291.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(MEMORY[0x277D84F90], v190, 0, v291, 0, 0xFFFFFFFFFFFFFFFFLL, MEMORY[0x277D84F90], v240);
    v192 = v191;

    return v192;
  }

  if (*((v276 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_193;
  }

LABEL_74:
  if ((v84 & 0xC000000000000001) != 0)
  {
    goto LABEL_196;
  }

  if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_239;
  }

  v273 = *(v84 + 32);
  swift_unknownObjectRetain();
LABEL_77:
  v85 = a6;
  if (a6 >> 62)
  {
    v86 = __CocoaSet.count.getter();
    v85 = a6;
    if (v86)
    {
LABEL_79:
      v87 = 0;
      v247 = v85 & 0xC000000000000001;
      v244 = v85 + 32;
      v245 = v85 & 0xFFFFFFFFFFFFFF8;
      v246 = v86;
      while (1)
      {
        if (v247)
        {
          v88 = v87;
          v89 = MEMORY[0x24C1FC540](v87);
          v90 = __OFADD__(v88, 1);
          v30 = v88 + 1;
          if (v90)
          {
            goto LABEL_188;
          }
        }

        else
        {
          if (v87 >= *(v245 + 16))
          {
            goto LABEL_240;
          }

          v89 = *(v244 + 8 * v87);
          v91 = v87;

          v90 = __OFADD__(v91, 1);
          v30 = v91 + 1;
          if (v90)
          {
            goto LABEL_188;
          }
        }

        v248 = v30;
        v92 = (*(*v89 + 152))();
        v93 = filteredActions #1 (by:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v92, v256);

        v94 = *(*v89 + 208);
        v95 = v94(v93);
        v96 = (*(*v89 + 176))(v95);
        if (v96)
        {
          v97 = v96;
          (*(*v89 + 200))();

          aBlock = specialized Array._copyToContiguousArray()(v98);
          specialized MutableCollection<>.sort(by:)(&aBlock, v97);

          swift_bridgeObjectRelease_n();
          v96 = v94(aBlock);
        }

        v249 = v89;
        v99 = (*(*v89 + 200))(v96);
        v100 = v99;
        v30 = MEMORY[0x277D84F90];
        v281 = MEMORY[0x277D84F90];
        v263 = v99 & 0xFFFFFFFFFFFFFF8;
        v269 = v99 >> 62 ? __CocoaSet.count.getter() : *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v101 = 0;
        v265 = v100 & 0xC000000000000001;
        v259 = v30;
        v261 = v100;
        while (v269 != v101)
        {
          if (v265)
          {
            v102 = MEMORY[0x24C1FC540](v101, v100);
          }

          else
          {
            if (v101 >= *(v263 + 16))
            {
              goto LABEL_179;
            }

            v102 = *(v100 + 8 * v101 + 32);
          }

          v103 = v102;
          if (__OFADD__(v101, 1))
          {
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            v31 = __CocoaSet.count.getter();
            goto LABEL_3;
          }

          v267 = v101 + 1;
          v104 = [v102 identifier];
          if (!v104)
          {
            v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v104 = MEMORY[0x24C1FAD20](v105);
          }

          v106 = [objc_opt_self() isDestructiveActionIdentifier_];

          if (v106)
          {
            v107 = 2;
          }

          else
          {
            v107 = 0;
          }

          UIDocumentBrowserAction.preferredLocalizedTitleForMenus.getter();
          if (![v103 imageOnlyForContextMenu])
          {
            v108 = [v103 image];
          }

          v109 = [v103 identifier];
          v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v112 = v111;

          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v110 && v113 == v112)
          {
          }

          else
          {
            v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v114 & 1) == 0)
            {
              v125 = [v103 identifier];
              v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v123 = v126;

              goto LABEL_111;
            }
          }

          v115 = [v103 identifier];
          v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v118 = v117;

          v119 = [v103 localizedTitle];
          v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v122 = v121;

          aBlock = v116;
          v285 = v118;

          MEMORY[0x24C1FAEA0](v120, v122);

          v124 = aBlock;
          v123 = v285;
LABEL_111:
          v100 = v261;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
          MEMORY[0x24C1FAD20](v124, v123);

          v127 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v128 = swift_allocObject();
          v128[2] = v127;
          v128[3] = v273;
          v128[4] = v103;
          v128[5] = v276;
          swift_unknownObjectRetain();
          v129 = v103;

          v242 = partial apply for closure #1 in closure #1 in browserActionsToMenuActions #1 (_:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:);
          v243 = v128;
          v240._rawValue = v107;
          v241 = 0;
          preferredElementSize = UIMenuElementSizeSmall;
          v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          if (a4)
          {

            v130 = a4(v30);

            v131 = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);
            ++v101;
            if (v130)
            {
              v30 = v130;
              goto LABEL_115;
            }
          }

          else
          {

LABEL_115:
            MEMORY[0x24C1FB090](v131);
            if (*((v281 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v281 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v259 = v281;
            v101 = v267;
          }
        }

        v132 = (*(*v249 + 232))(v259);
        v133 = (*(*v249 + 344))(v132);
        if (!v133)
        {
          goto LABEL_81;
        }

        v30 = v133;
        v134 = v133 & 0xFFFFFFFFFFFFFF8;
        if (v133 >> 62)
        {
          break;
        }

        v135 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v135)
        {
          goto LABEL_122;
        }

LABEL_80:

LABEL_81:

        v87 = v248;
        v85 = a6;
        if (v248 == v246)
        {
          goto LABEL_198;
        }
      }

      v135 = __CocoaSet.count.getter();
      if (!v135)
      {
        goto LABEL_80;
      }

LABEL_122:
      v136 = 0;
      v254 = v30 + 32;
      v255 = v30 & 0xC000000000000001;
      v252 = v134;
      v253 = v30;
      v251 = v135;
LABEL_124:
      if (v255)
      {
        v258 = MEMORY[0x24C1FC540](v136, v30);
        v90 = __OFADD__(v136, 1);
        v137 = v136 + 1;
        if (v90)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v136 >= *(v134 + 16))
        {
          goto LABEL_187;
        }

        v258 = *(v254 + 8 * v136);

        v90 = __OFADD__(v136, 1);
        v137 = v136 + 1;
        if (v90)
        {
          goto LABEL_186;
        }
      }

      v257 = v137;
      v138 = (*(*v258 + 152))();
      v139 = filteredActions #1 (by:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v138, v256);

      v140 = *(*v258 + 208);
      v141 = v140(v139);
      v142 = (*(*v258 + 176))(v141);
      if (v142)
      {
        v143 = v142;
        (*(*v258 + 200))();

        aBlock = specialized Array._copyToContiguousArray()(v144);
        specialized MutableCollection<>.sort(by:)(&aBlock, v143);

        swift_bridgeObjectRelease_n();
        v142 = v140(aBlock);
      }

      v145 = (*(*v258 + 200))(v142);
      v146 = v145;
      v30 = MEMORY[0x277D84F90];
      v282 = MEMORY[0x277D84F90];
      v147 = &selRef__setLocationsInBrowseTab_;
      v264 = v145 & 0xFFFFFFFFFFFFFF8;
      if (v145 >> 62)
      {
        v270 = __CocoaSet.count.getter();
      }

      else
      {
        v270 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v148 = 0;
      v266 = v146 & 0xC000000000000001;
      v260 = v30;
      v262 = v146;
      while (1)
      {
        if (v270 == v148)
        {

          (*(*v258 + 232))(v260);

          v134 = v252;
          v136 = v257;
          v30 = v253;
          if (v257 == v251)
          {
            goto LABEL_80;
          }

          goto LABEL_124;
        }

        if (v266)
        {
          v149 = MEMORY[0x24C1FC540](v148, v146);
        }

        else
        {
          if (v148 >= *(v264 + 16))
          {
            goto LABEL_177;
          }

          v149 = *(v146 + 8 * v148 + 32);
        }

        v30 = v149;
        if (__OFADD__(v148, 1))
        {
          __break(1u);
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }

        v268 = v148 + 1;
        v150 = [v149 v147[466]];
        if (!v150)
        {
          v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v150 = MEMORY[0x24C1FAD20](v151);
        }

        v152 = [objc_opt_self() isDestructiveActionIdentifier_];

        v153 = v152 ? 2 : 0;
        v154 = [v30 v147[466]];
        v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v157 = v156;

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v155 && v158 == v157)
        {
          break;
        }

        v159 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v159)
        {
          goto LABEL_146;
        }

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v155 && v180 == v157)
        {
          break;
        }

        v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v181)
        {
          goto LABEL_147;
        }

LABEL_148:
        v160 = [v30 localizedTitle];
LABEL_149:
        v161 = v160;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        if (![v30 imageOnlyForContextMenu])
        {
          v162 = [v30 image];
        }

        v163 = [v30 v147[466]];
        v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v166 = v165;

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v164 && v167 == v166)
        {
          v168 = v153;
        }

        else
        {
          v168 = v153;
          v169 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v169 & 1) == 0)
          {
            v182 = [v30 v147[466]];
            v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v178 = v183;

            goto LABEL_161;
          }
        }

        v170 = [v30 v147[466]];
        v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v173 = v172;

        v174 = [v30 localizedTitle];
        v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v177 = v176;

        aBlock = v171;
        v285 = v173;

        MEMORY[0x24C1FAEA0](v175, v177);

        v179 = aBlock;
        v178 = v285;
LABEL_161:
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
        MEMORY[0x24C1FAD20](v179, v178);

        v184 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v185 = swift_allocObject();
        v185[2] = v184;
        v185[3] = v273;
        v185[4] = v30;
        v185[5] = v276;
        swift_unknownObjectRetain();

        v186 = v30;
        v242 = closure #1 in closure #1 in browserActionsToMenuActions #1 (_:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)partial apply;
        v243 = v185;
        v240._rawValue = v168;
        v241 = 0;
        preferredElementSize = UIMenuElementSizeSmall;
        v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        if (a4)
        {

          v187 = a4(v30);

          v188 = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);
          ++v148;
          v147 = &selRef__setLocationsInBrowseTab_;
          v146 = v262;
          if (v187)
          {
            v30 = v187;
            goto LABEL_165;
          }
        }

        else
        {

          v147 = &selRef__setLocationsInBrowseTab_;
          v146 = v262;
LABEL_165:
          MEMORY[0x24C1FB090](v188);
          if (*((v282 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v282 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v260 = v282;
          v148 = v268;
        }
      }

LABEL_146:

LABEL_147:
      v160 = [v30 localizedCompactTitle];
      if (v160)
      {
        goto LABEL_149;
      }

      goto LABEL_148;
    }
  }

  else
  {
    v86 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v86)
    {
      goto LABEL_79;
    }
  }

LABEL_198:
  if (a6 >> 62)
  {
    v193 = __CocoaSet.count.getter();
  }

  else
  {
    v193 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v194 = MEMORY[0x277D84F90];
  if (!v193)
  {
    goto LABEL_233;
  }

  aBlock = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v193 & 0x8000000000000000) == 0)
  {
    v195 = 0;
    v271 = v193;
    do
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v198 = MEMORY[0x24C1FC540](v195, a6);
      }

      else
      {
        v198 = *(a6 + 32 + 8 * v195);
      }

      v283 = v194;
      v199 = (*(*v198 + 224))();
      v200 = specialized Array.append<A>(contentsOf:)(v199);
      v201 = (*(*v198 + 344))(v200);
      if (v201)
      {
        v202 = v201;
        v203 = v201 & 0xFFFFFFFFFFFFFF8;
        if (v201 >> 62)
        {
          v204 = __CocoaSet.count.getter();
        }

        else
        {
          v204 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v272 = v198;
        v275 = v195;
        if (v204)
        {
          v205 = 0;
          v278 = v204;
          v280 = v202 & 0xC000000000000001;
          v277 = v202;
          do
          {
            if (v280)
            {
              v206 = MEMORY[0x24C1FC540](v205, v202);
              v207 = v205 + 1;
              if (__OFADD__(v205, 1))
              {
                goto LABEL_237;
              }
            }

            else
            {
              if (v205 >= *(v203 + 16))
              {
                goto LABEL_238;
              }

              v206 = *(v202 + 8 * v205 + 32);

              v207 = v205 + 1;
              if (__OFADD__(v205, 1))
              {
LABEL_237:
                __break(1u);
LABEL_238:
                __break(1u);
LABEL_239:
                __break(1u);
LABEL_240:
                __break(1u);
LABEL_241:
                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

                v233 = _bridgeCocoaArray<A>(_:)();

                goto LABEL_235;
              }
            }

            v208 = (*(*v206 + 296))();
            if (!v209)
            {
              goto LABEL_243;
            }

            v210 = v208;
            v211 = v209;
            v212 = (*(*v206 + 320))();
            if (!v213)
            {
              goto LABEL_244;
            }

            v214 = v212;
            v215 = v213;
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
            v216 = MEMORY[0x24C1FAD20](v214, v215);

            v217 = [objc_opt_self() systemImageNamed_];

            preferredElementSizea = (*(*v206 + 224))();
            v218._countAndFlagsBits = v210;
            v218._object = v211;
            v293.value.super.isa = v217;
            v293.is_nil = 0;
            UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v219, v218, 0, v293, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSizea, v240);
            v221 = v220;
            MEMORY[0x24C1FB090]();
            if (*((v283 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v283 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            ++v205;
            v202 = v277;
          }

          while (v207 != v278);
        }

        v194 = MEMORY[0x277D84F90];
        v193 = v271;
        v195 = v275;
        v198 = v272;
      }

      if ((*(*v198 + 248))())
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
        v196 = (*(*v198 + 272))();
        v197._countAndFlagsBits = 0;
        v197._object = 0xE000000000000000;
        v292.value.super.isa = 0;
        v292.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v283, v197, 0, v292, 1, v196, v283, v240);
      }

      else
      {
        v222 = (*(*v198 + 296))();
        if (!v223)
        {
          goto LABEL_246;
        }

        v224 = v222;
        v225 = v223;
        v226 = (*(*v198 + 320))();
        if (!v227)
        {
          goto LABEL_245;
        }

        v228 = v226;
        v229 = v227;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
        v230 = MEMORY[0x24C1FAD20](v228, v229);

        v231 = [objc_opt_self() systemImageNamed_];

        v232._countAndFlagsBits = v224;
        v232._object = v225;
        v294.value.super.isa = v231;
        v294.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v283, v232, 0, v294, 0, 0xFFFFFFFFFFFFFFFFLL, v283, v240);
      }

      ++v195;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v195 != v193);
    v194 = aBlock;
LABEL_233:
    if (v194 >> 62)
    {
      goto LABEL_241;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
    v233 = v194;
LABEL_235:

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    v234._countAndFlagsBits = 0;
    v234._object = 0xE000000000000000;
    v295.value.super.isa = 0;
    v295.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v235, v234, 0, v295, 1, 0xFFFFFFFFFFFFFFFFLL, v233, v240);
    v192 = v236;

    swift_unknownObjectRelease();
    return v192;
  }

  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);

  __break(1u);
  return result;
}

id specialized DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  v57._object = 0x8000000249BF15F0;
  v7._countAndFlagsBits = 0x6F5420646441;
  v7._object = 0xE600000000000000;
  v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v8.value._object = 0xEB00000000656C62;
  v9._countAndFlagsBits = 0x6F5420646441;
  v9._object = 0xE600000000000000;
  v57._countAndFlagsBits = 0xD000000000000020;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v57);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v11 = result;
  v58._object = 0x8000000249BF1620;
  v12._countAndFlagsBits = 0x6341206B63697551;
  v12._object = 0xED0000736E6F6974;
  v58._countAndFlagsBits = 0xD000000000000027;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0x6341206B63697551;
  v14._object = 0xED0000736E6F6974;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v58);

  v16 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #0 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  type metadata accessor for DOCItemCollectionViewController._DOCSectionDescriptor();
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v18 = v17;
  swift_beginAccess();
  *(v18 + 16) = v16;

  swift_beginAccess();
  *(v18 + 48) = 0;
  swift_beginAccess();
  *(v18 + 64) = v15;

  swift_beginAccess();
  *(v18 + 80) = xmmword_249BB6110;

  swift_beginAccess();
  *(v18 + 56) = 2;
  swift_beginAccess();
  *(v18 + 24) = 0;

  swift_beginAccess();
  *(v18 + 96) = 0;

  v19 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
  swift_beginAccess();
  v20 = *(v3 + v19);
  LOBYTE(v16) = specialized DOCActionManager.shouldShowAddToSubmenu(for:)(a1);

  if (v16)
  {
    v21 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #1 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
    swift_allocObject();
    DOCItemCollectionViewController._DOCSectionDescriptor.init()();
    v23 = v22;
    swift_beginAccess();
    *(v23 + 16) = v21;

    swift_beginAccess();
    *(v23 + 48) = 0;
    swift_beginAccess();
    *(v23 + 64) = v10;

    swift_beginAccess();
    *(v23 + 80) = xmmword_249BA62B0;

    swift_beginAccess();
    *(v23 + 56) = 2;
    swift_beginAccess();
    *(v23 + 24) = 0;

    swift_beginAccess();
    *(v23 + 96) = 0;

    v24 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #2 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_249BA1010;
    *(v25 + 32) = v23;
    *(v25 + 40) = v18;
  }

  else
  {

    v24 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #3 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_249BA0290;
    *(v25 + 32) = v18;
  }

  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v27 = v26;
  swift_beginAccess();
  *(v27 + 16) = v24;

  swift_beginAccess();
  *(v27 + 48) = 1;
  swift_beginAccess();
  *(v27 + 64) = 0;
  *(v27 + 72) = 0;

  swift_beginAccess();
  *(v27 + 80) = 0;
  *(v27 + 88) = 0;

  swift_beginAccess();
  *(v27 + 56) = 2;
  swift_beginAccess();
  *(v27 + 24) = 0;

  swift_beginAccess();
  *(v27 + 96) = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BB6120;
  v29 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #4 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v31 = v30;
  swift_beginAccess();
  *(v31 + 16) = v29;

  swift_beginAccess();
  *(v31 + 48) = 1;
  swift_beginAccess();
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;

  swift_beginAccess();
  *(v31 + 80) = 0;
  *(v31 + 88) = 0;

  swift_beginAccess();
  *(v31 + 56) = 1;
  swift_beginAccess();
  *(v31 + 24) = &outlined read-only object #5 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:);

  swift_beginAccess();
  *(v31 + 96) = 0;

  *(inited + 32) = v31;
  v32 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #6 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v34 = v33;
  swift_beginAccess();
  *(v34 + 16) = v32;

  swift_beginAccess();
  *(v34 + 48) = 1;
  swift_beginAccess();
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;

  swift_beginAccess();
  *(v34 + 80) = 0;
  *(v34 + 88) = 0;

  swift_beginAccess();
  *(v34 + 56) = 2;
  swift_beginAccess();
  *(v34 + 24) = 0;

  swift_beginAccess();
  *(v34 + 96) = 0;

  *(inited + 40) = v34;
  v35 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #7 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v37 = v36;
  swift_beginAccess();
  *(v37 + 16) = v35;

  swift_beginAccess();
  *(v37 + 48) = 1;
  swift_beginAccess();
  *(v37 + 64) = 0;
  *(v37 + 72) = 0;

  swift_beginAccess();
  *(v37 + 80) = 0;
  *(v37 + 88) = 0;

  swift_beginAccess();
  *(v37 + 56) = 2;
  swift_beginAccess();
  *(v37 + 24) = 0;

  swift_beginAccess();
  *(v37 + 96) = 0;

  *(inited + 48) = v37;
  v38 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #8 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v40 = v39;
  swift_beginAccess();
  *(v40 + 16) = v38;

  swift_beginAccess();
  *(v40 + 48) = 1;
  swift_beginAccess();
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;

  swift_beginAccess();
  *(v40 + 80) = 0;
  *(v40 + 88) = 0;

  swift_beginAccess();
  *(v40 + 56) = 2;
  swift_beginAccess();
  *(v40 + 24) = 0;

  swift_beginAccess();
  *(v40 + 96) = 0;

  *(inited + 56) = v40;
  v41 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #9 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v43 = v42;
  swift_beginAccess();
  *(v43 + 16) = v41;

  swift_beginAccess();
  *(v43 + 48) = 1;
  swift_beginAccess();
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;

  swift_beginAccess();
  *(v43 + 80) = 0;
  *(v43 + 88) = 0;

  swift_beginAccess();
  *(v43 + 56) = 2;
  swift_beginAccess();
  *(v43 + 24) = 0;

  swift_beginAccess();
  *(v43 + 96) = 0;

  *(inited + 64) = v43;
  v44 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #10 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v46 = v45;
  swift_beginAccess();
  *(v46 + 16) = v44;

  swift_beginAccess();
  *(v46 + 48) = 1;
  swift_beginAccess();
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;

  swift_beginAccess();
  *(v46 + 80) = 0;
  *(v46 + 88) = 0;

  swift_beginAccess();
  *(v46 + 56) = 2;
  swift_beginAccess();
  *(v46 + 24) = 0;

  swift_beginAccess();
  *(v46 + 96) = 0;

  *(inited + 72) = v46;
  v47 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #11 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v49 = v48;
  swift_beginAccess();
  *(v49 + 16) = v47;

  swift_beginAccess();
  *(v49 + 48) = 1;
  swift_beginAccess();
  *(v49 + 64) = 0;
  *(v49 + 72) = 0;

  swift_beginAccess();
  *(v49 + 80) = 0;
  *(v49 + 88) = 0;

  swift_beginAccess();
  *(v49 + 56) = 2;
  swift_beginAccess();
  *(v49 + 24) = 0;

  swift_beginAccess();
  *(v49 + 96) = 0;

  *(inited + 80) = v49;
  *(inited + 88) = v27;
  v50 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #12 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v52 = v51;
  swift_beginAccess();
  *(v52 + 16) = v50;

  swift_beginAccess();
  *(v52 + 48) = 1;
  swift_beginAccess();
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;

  swift_beginAccess();
  *(v52 + 80) = 0;
  *(v52 + 88) = 0;

  swift_beginAccess();
  *(v52 + 56) = 2;
  swift_beginAccess();
  *(v52 + 24) = 0;

  swift_beginAccess();
  *(v52 + 96) = 0;

  *(inited + 96) = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = a1;

  v55 = specialized DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v54, a2, MEMORY[0x277D84F90], partial apply for contextMenuActionOverrider #1 (_:) in DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:), v53, inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v55;
}

uint64_t objectdestroy_21Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void partial apply for closure #1 in closure #1 in closure #1 in DOCItemInfoContentViewController.iCloudLinkAction()()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  closure #1 in closure #1 in closure #1 in DOCItemInfoContentViewController.iCloudLinkAction()(v2);
}

Swift::String *DOCViewOptionsViewModel.__allocating_init(groupingBehaviors:selectedGroupingBehavior:sortModes:selectedSortMode:selectedSortOrderAscending:sizeSettings:selectedSizeSetting:selectedSizeSliderValue:showFilenameExtensions:showFilenameExtensionsPublisher:isInPopover:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, int a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, double a18, char a19)
{
  v62 = a8;
  v60 = a5;
  v61 = a7;
  v58 = a3;
  v59 = a6;
  v57 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v63 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v54 - v19;
  v21 = swift_allocObject();
  v22 = *a4;
  v55 = *a2;
  v56 = v22;
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v24 = result;
  v66._object = 0x8000000249BE0C60;
  v25._countAndFlagsBits = 0x74704F2077656956;
  v25._object = 0xEC000000736E6F69;
  v66._countAndFlagsBits = 0xD000000000000025;
  v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v26.value._object = 0xEB00000000656C62;
  v27._countAndFlagsBits = 0x74704F2077656956;
  v27._object = 0xEC000000736E6F69;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v66);

  v21[1] = v28;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v29 = result;
  v67._object = 0x8000000249BE0C90;
  v30._countAndFlagsBits = 0x79422070756F7247;
  v67._countAndFlagsBits = 0xD00000000000003CLL;
  v30._object = 0xE800000000000000;
  v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v31.value._object = 0xEB00000000656C62;
  v32._countAndFlagsBits = 0x79422070756F7247;
  v32._object = 0xE800000000000000;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v67);

  v21[2] = v33;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v34 = result;
  v68._object = 0x8000000249BE0CD0;
  v35._countAndFlagsBits = 0x79422074726F53;
  v68._countAndFlagsBits = 0xD00000000000003BLL;
  v35._object = 0xE700000000000000;
  v36.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v36.value._object = 0xEB00000000656C62;
  v37._countAndFlagsBits = 0x79422074726F53;
  v37._object = 0xE700000000000000;
  v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v36, v34, v37, v68);

  v21[3] = v38;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v39 = result;
  v54 = v13;
  v69._object = 0x8000000249BE0D30;
  v40._object = 0x8000000249BE0D10;
  v41._object = 0x8000000249BE0D10;
  v69._countAndFlagsBits = 0xD000000000000042;
  v40._countAndFlagsBits = 0xD000000000000012;
  v42.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v42.value._object = 0xEB00000000656C62;
  v41._countAndFlagsBits = 0xD000000000000012;
  v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v42, v39, v41, v69);

  v21[4] = v43;
  result = _DocumentManagerBundle();
  if (result)
  {
    v44 = result;
    v70._object = 0x8000000249BE0DA0;
    v45._countAndFlagsBits = 0xD00000000000001CLL;
    v45._object = 0x8000000249BE0D80;
    v46._countAndFlagsBits = 0xD00000000000001CLL;
    v46._object = 0x8000000249BE0D80;
    v70._countAndFlagsBits = 0xD00000000000004ELL;
    v47.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v47.value._object = 0xEB00000000656C62;
    v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v47, v44, v46, v70);

    v21[5] = v48;
    v49 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__isInPopover;
    v65 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    Published.init(initialValue:)();
    *(&v21->_object + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate) = 0;
    swift_unknownObjectWeakInit();
    v50 = v58;
    *(&v21->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_groupingBehaviors) = v57;
    *(&v21->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_sortModes) = v50;
    *(&v21->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_sizeSettings) = v59;
    swift_beginAccess();
    LOBYTE(v64) = v55;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v64) = v56;
    Published.init(initialValue:)();
    swift_endAccess();
    *(&v21->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending) = v60 & 1;
    swift_beginAccess();
    LOBYTE(v64) = v61;
    Published.init(initialValue:)();
    swift_endAccess();
    v51 = v62;
    swift_beginAccess();
    v64 = v51;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v64) = a17 & 1;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
    (*(*(v52 - 8) + 8))(v21 + v49, v52);
    LOBYTE(v64) = a19;
    Published.init(initialValue:)();
    swift_endAccess();
    *(&v21->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_availableSections) = &outlined read-only object #0 of DOCViewOptionsViewModel.init(groupingBehaviors:selectedGroupingBehavior:sortModes:selectedSortMode:selectedSortOrderAscending:sizeSettings:selectedSizeSetting:selectedSizeSliderValue:showFilenameExtensions:showFilenameExtensionsPublisher:isInPopover:);
    v64 = a18;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
    Published.projectedValue.getter();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>();
    Publisher<>.assign(to:)();
    v53 = v54;
    (*(v14 + 16))(v63, v20, v54);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    (*(v14 + 8))(v20, v53);

    return v21;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t DOCViewOptionsViewModel.isInPopover.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t DOCViewOptionsViewModel.isInPopover.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

Swift::String *DOCViewOptionsViewModel.init(groupingBehaviors:selectedGroupingBehavior:sortModes:selectedSortMode:selectedSortOrderAscending:sizeSettings:selectedSizeSetting:selectedSizeSliderValue:showFilenameExtensions:showFilenameExtensionsPublisher:isInPopover:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, int a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, unsigned __int8 a17, double a18, unsigned __int8 a19)
{
  v19 = specialized DOCViewOptionsViewModel.init(groupingBehaviors:selectedGroupingBehavior:sortModes:selectedSortMode:selectedSortOrderAscending:sizeSettings:selectedSizeSetting:selectedSizeSliderValue:showFilenameExtensions:showFilenameExtensionsPublisher:isInPopover:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);

  return v19;
}

uint64_t DOCViewOptionsViewModel.selectedGroupingBehavior.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedGroupingBehavior.didset();
}

uint64_t DOCViewOptionsViewModel.selectedSortMode.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedSortMode.didset();
}

uint64_t DOCViewOptionsViewModel.selectedSizeSetting.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedSizeSetting.didset();
}

uint64_t DOCViewOptionsViewModel.selectedSizeSliderValue.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedSizeSliderValue.didset();
}

uint64_t DOCViewOptionsViewModel.showFilenameExtensions.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 40))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCViewOptionsViewModel.$showFilenameExtensions.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t DOCViewOptionsViewModel.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DOCViewOptionsViewModel.groupByRowTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DOCViewOptionsViewModel.sortByRowTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DOCViewOptionsViewModel.sizeSettingsTitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t DOCViewOptionsViewModel.showFilenameExtensionsTitle.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

Swift::String __swiftcall DOCViewOptionsViewModel.sizeSettingMenuItemAXIdentifier(for:)(DocumentManagerExecutables::DOCBrowserLayoutConfiguration::SizeSetting a1)
{
  if (a1)
  {
    if (a1 == DocumentManagerExecutables_DOCBrowserLayoutConfiguration_SizeSetting_regular)
    {
      v1 = 0x72616C75676572;
    }

    else
    {
      v1 = 0x6D6F74737563;
    }

    if (a1 == DocumentManagerExecutables_DOCBrowserLayoutConfiguration_SizeSetting_regular)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v1 = 0x746361706D6F63;
  }

  v3 = objc_opt_self();
  v4 = MEMORY[0x24C1FAD20](v1, v2);

  v5 = [v3 sizeSettingMenuItemForSize_];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t DOCViewOptionsViewModel.showFilenameExtensionsAXIdentifier.getter(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t key path getter for DOCViewOptionsViewModel.isInPopover : DOCViewOptionsViewModel@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for DOCViewOptionsViewModel.isInPopover : DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*DOCViewOptionsViewModel.isInPopover.modify(uint64_t *a1))()
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
  return ObservableString.value.modify;
}

uint64_t key path setter for DOCViewOptionsViewModel.$isInPopover : DOCViewOptionsViewModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  (v12)(v6, v11, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v11, v2);
}

uint64_t DOCViewOptionsViewModel.$isInPopover.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DOCViewOptionsViewModel.$isInPopover.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
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

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__isInPopover;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ObservableString.$value.modify;
}

uint64_t DOCViewOptionsViewModel.showFilenameExtensions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for DOCViewOptionsViewModel.showFilenameExtensions : DOCViewOptionsViewModel@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void (*DOCViewOptionsViewModel.showFilenameExtensions.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4[56] = *v4;
  return DOCViewOptionsViewModel.showFilenameExtensions.modify;
}

void DOCViewOptionsViewModel.showFilenameExtensions.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1[6];
  *v1 = v2;

  static Published.subscript.setter();
  v4 = v3 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 40))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  free(v1);
}

uint64_t key path setter for DOCViewOptionsViewModel.$showFilenameExtensions : DOCViewOptionsViewModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  (v12)(v6, v11, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v11, v2);
}

uint64_t (*DOCViewOptionsViewModel.$showFilenameExtensions.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__showFilenameExtensions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

uint64_t DOCViewOptionsViewModel.selectedGroupingBehavior.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for DOCViewOptionsViewModel.selectedGroupingBehavior : DOCViewOptionsViewModel@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for DOCViewOptionsViewModel.selectedGroupingBehavior : DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedGroupingBehavior.didset();
}

uint64_t DOCViewOptionsViewModel.selectedGroupingBehavior.didset()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5[0] = v5[1];
    (*(v3 + 8))(v0, v5, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*DOCViewOptionsViewModel.selectedGroupingBehavior.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return DOCViewOptionsViewModel.selectedGroupingBehavior.modify;
}

uint64_t key path setter for DOCViewOptionsViewModel.$selectedGroupingBehavior : DOCViewOptionsViewModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables23DOCItemGroupingBehaviorO_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  (v12)(v6, v11, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v11, v2);
}

uint64_t DOCViewOptionsViewModel.$selectedGroupingBehavior.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables23DOCItemGroupingBehaviorO_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DOCViewOptionsViewModel.$selectedGroupingBehavior.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables23DOCItemGroupingBehaviorO_GMd);
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

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedGroupingBehavior;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

uint64_t DOCViewOptionsViewModel.selectedSortMode.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for DOCViewOptionsViewModel.selectedSortMode : DOCViewOptionsViewModel@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t DOCViewOptionsViewModel.selectedSortMode.didset()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5[0] = v5[1];
    (*(v3 + 16))(v0, v5, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*DOCViewOptionsViewModel.selectedSortMode.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return DOCViewOptionsViewModel.selectedSortMode.modify;
}

uint64_t key path setter for DOCViewOptionsViewModel.$selectedSortMode : DOCViewOptionsViewModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables15DOCItemSortModeO_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  (v12)(v6, v11, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables15DOCItemSortModeOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v11, v2);
}

uint64_t DOCViewOptionsViewModel.$selectedSortMode.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables15DOCItemSortModeO_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables15DOCItemSortModeOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DOCViewOptionsViewModel.$selectedSortMode.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables15DOCItemSortModeO_GMd);
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

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedSortMode;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables15DOCItemSortModeOGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

uint64_t DOCViewOptionsViewModel.selectedSizeSetting.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for DOCViewOptionsViewModel.selectedSizeSetting : DOCViewOptionsViewModel@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for DOCViewOptionsViewModel.selectedSortMode : DOCViewOptionsViewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = static Published.subscript.setter();
  return a7(v8);
}

uint64_t DOCViewOptionsViewModel.selectedSizeSetting.didset()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    (*(v3 + 24))(v0, v5, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*DOCViewOptionsViewModel.selectedSizeSetting.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 8) = *(a1 + 9);
  return DOCViewOptionsViewModel.selectedSizeSetting.modify;
}

uint64_t DOCViewOptionsViewModel.selectedGroupingBehavior.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v7;

  v8 = static Published.subscript.setter();
  return a5(v8);
}

uint64_t key path setter for DOCViewOptionsViewModel.$selectedSizeSetting : DOCViewOptionsViewModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingO_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  (v12)(v6, v11, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v11, v2);
}

uint64_t DOCViewOptionsViewModel.$selectedSizeSetting.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingO_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DOCViewOptionsViewModel.$selectedSizeSetting.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingO_GMd);
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

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedSizeSetting;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

double DOCViewOptionsViewModel.selectedSizeSliderValue.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double key path getter for DOCViewOptionsViewModel.selectedSizeSliderValue : DOCViewOptionsViewModel@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for DOCViewOptionsViewModel.selectedSizeSliderValue : DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedSizeSliderValue.didset();
}

uint64_t DOCViewOptionsViewModel.selectedSizeSliderValue.didset()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        (*(v3 + 32))(v0, v5, ObjectType, v3);
        return swift_unknownObjectRelease();
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t (*DOCViewOptionsViewModel.selectedSizeSliderValue.modify(void *a1))(uint64_t *a1)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = a1[1];
  return DOCViewOptionsViewModel.selectedSizeSliderValue.modify;
}

uint64_t DOCViewOptionsViewModel.selectedSizeSliderValue.modify(uint64_t *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v2;

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedSizeSliderValue.didset();
}

uint64_t key path getter for DOCViewOptionsViewModel.$isInPopover : DOCViewOptionsViewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for DOCViewOptionsViewModel.$selectedSizeSliderValue : DOCViewOptionsViewModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  (v12)(v6, v11, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v11, v2);
}

uint64_t DOCViewOptionsViewModel.$selectedSizeSliderValue.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DOCViewOptionsViewModel.$selectedSizeSliderValue.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd);
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

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedSizeSliderValue;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

uint64_t DOCViewOptionsViewModel.selectedSortOrderAscending.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCViewOptionsViewModel.selectedSortOrderAscending.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCViewOptionsViewModel.forwardingDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*DOCViewOptionsViewModel.forwardingDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.gestureDelegate.modify;
}

uint64_t DOCViewOptionsViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__isInPopover;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__showFilenameExtensions;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedGroupingBehavior;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMd);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedSortMode;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables15DOCItemSortModeOGMd);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedSizeSetting;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMd);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedSizeSliderValue;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate);

  return v0;
}

uint64_t DOCViewOptionsViewModel.__deallocating_deinit()
{
  DOCViewOptionsViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DOCViewOptionsViewModelable.groupByRowTitle.getter in conformance DOCViewOptionsViewModel()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.sortByRowTitle.getter in conformance DOCViewOptionsViewModel()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.sizeSettingsTitle.getter in conformance DOCViewOptionsViewModel()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.showFilenameExtensionsTitle.getter in conformance DOCViewOptionsViewModel()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.isInPopover.getter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.isInPopover.setter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*protocol witness for DOCViewOptionsViewModelable.isInPopover.modify in conformance DOCViewOptionsViewModel(uint64_t *a1))()
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
  return USBEraseViewModel.name.modify;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.sizeSettingMenuItemAXIdentifier(for:) in conformance DOCViewOptionsViewModel(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0x72616C75676572;
    }

    else
    {
      v1 = 0x6D6F74737563;
    }

    if (a1 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v1 = 0x746361706D6F63;
  }

  v3 = objc_opt_self();
  v4 = MEMORY[0x24C1FAD20](v1, v2);

  v5 = [v3 sizeSettingMenuItemForSize_];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.groupByMenuPresentingButtonAXIdentifier.getter in conformance DOCViewOptionsViewModel(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.showFilenameExtensions.getter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*protocol witness for DOCViewOptionsViewModelable.showFilenameExtensions.modify in conformance DOCViewOptionsViewModel(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DOCViewOptionsViewModel.showFilenameExtensions.modify(v2);
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedGroupingBehavior.getter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedGroupingBehavior.setter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedGroupingBehavior.didset();
}

uint64_t (*protocol witness for DOCViewOptionsViewModelable.selectedGroupingBehavior.modify in conformance DOCViewOptionsViewModel(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DOCViewOptionsViewModel.selectedGroupingBehavior.modify(v2);
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedSortMode.getter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedSortMode.setter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedSortMode.didset();
}

uint64_t (*protocol witness for DOCViewOptionsViewModelable.selectedSortMode.modify in conformance DOCViewOptionsViewModel(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DOCViewOptionsViewModel.selectedSortMode.modify(v2);
  return protocol witness for DOCFileOperationsProviding.didUpdateInProgressFileOperationsHandler.modify in conformance DOCFileProviderSyncStateProvider;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedSortOrderAscending.getter in conformance DOCViewOptionsViewModel()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedSortOrderAscending.setter in conformance DOCViewOptionsViewModel(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedSizeSetting.getter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedSizeSetting.setter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedSizeSetting.didset();
}

uint64_t (*protocol witness for DOCViewOptionsViewModelable.selectedSizeSetting.modify in conformance DOCViewOptionsViewModel(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = DOCViewOptionsViewModel.selectedSizeSetting.modify(v2);
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

double protocol witness for DOCViewOptionsViewModelable.selectedSizeSliderValue.getter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedSizeSliderValue.setter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedSizeSliderValue.didset();
}

uint64_t (*protocol witness for DOCViewOptionsViewModelable.selectedSizeSliderValue.modify in conformance DOCViewOptionsViewModel(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DOCViewOptionsViewModel.selectedSizeSliderValue.modify(v2);
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.forwardingDelegate.setter in conformance DOCViewOptionsViewModel(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for DOCViewOptionsViewModelable.forwardingDelegate.modify in conformance DOCViewOptionsViewModel(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.delegate.modify;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance DOCViewOptionsViewModel@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t specialized DOCViewOptionsViewModel.groupByMenuItemAXIdentifier(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 4)
  {
    if (*a1 <= 2u)
    {
      if (v1 >= 2)
      {
        v3 = 0xE400000000000000;
        v2 = 1701667182;
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    v4 = v1 == 3;
    v5 = 0xE300000000000000;
    v6 = 6775156;
    v7 = 0xE400000000000000;
    v8 = 1702521203;
  }

  else
  {
    if (*a1 > 6u)
    {
      if (v1 - 7 >= 2)
      {
        if (v1 == 9)
        {
          v2 = 0x732064756F6C6369;
        }

        else
        {
          v2 = 1701736302;
        }

        if (v1 == 9)
        {
          v3 = 0xED00007375746174;
        }

        else
        {
          v3 = 0xE400000000000000;
        }

        goto LABEL_21;
      }

LABEL_12:
      v3 = 0xE400000000000000;
      v2 = 1702125924;
      goto LABEL_21;
    }

    v4 = v1 == 5;
    v5 = 0xE400000000000000;
    v6 = 1684957547;
    v7 = 0xE800000000000000;
    v8 = 0x7942646572616873;
  }

  if (v4)
  {
    v2 = v6;
  }

  else
  {
    v2 = v8;
  }

  if (v4)
  {
    v3 = v5;
  }

  else
  {
    v3 = v7;
  }

LABEL_21:
  v9 = objc_opt_self();
  v10 = MEMORY[0x24C1FAD20](v2, v3);

  v11 = [v9 groupByMenuItemForGrouping_];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

Swift::String *specialized DOCViewOptionsViewModel.init(groupingBehaviors:selectedGroupingBehavior:sortModes:selectedSortMode:selectedSortOrderAscending:sizeSettings:selectedSizeSetting:selectedSizeSliderValue:showFilenameExtensions:showFilenameExtensionsPublisher:isInPopover:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, int a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, unsigned __int8 a17, double a18, unsigned __int8 a19)
{
  v12 = v11;
  v70 = a8;
  v68 = a5;
  v69 = a7;
  v66 = a3;
  v67 = a6;
  v65 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v73 = *(v15 - 8);
  v74 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v72 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v59 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  v22 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v23);
  v25 = &v59 - v24;
  LODWORD(v24) = *a4;
  v63 = *a2;
  v64 = v24;
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v27 = result;
  v77._object = 0x8000000249BE0C60;
  v28._countAndFlagsBits = 0x74704F2077656956;
  v28._object = 0xEC000000736E6F69;
  v77._countAndFlagsBits = 0xD000000000000025;
  v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v29.value._object = 0xEB00000000656C62;
  v30._countAndFlagsBits = 0x74704F2077656956;
  v30._object = 0xEC000000736E6F69;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v77);

  v11[1] = v31;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v32 = result;
  v78._object = 0x8000000249BE0C90;
  v33._countAndFlagsBits = 0x79422070756F7247;
  v78._countAndFlagsBits = 0xD00000000000003CLL;
  v33._object = 0xE800000000000000;
  v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v34.value._object = 0xEB00000000656C62;
  v35._countAndFlagsBits = 0x79422070756F7247;
  v35._object = 0xE800000000000000;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v78);

  v11[2] = v36;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v37 = result;
  v79._object = 0x8000000249BE0CD0;
  v38._countAndFlagsBits = 0x79422074726F53;
  v79._countAndFlagsBits = 0xD00000000000003BLL;
  v38._object = 0xE700000000000000;
  v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v39.value._object = 0xEB00000000656C62;
  v40._countAndFlagsBits = 0x79422074726F53;
  v40._object = 0xE700000000000000;
  v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v79);

  v11[3] = v41;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v42 = result;
  v80._object = 0x8000000249BE0D30;
  v43._object = 0x8000000249BE0D10;
  v44._object = 0x8000000249BE0D10;
  v80._countAndFlagsBits = 0xD000000000000042;
  v43._countAndFlagsBits = 0xD000000000000012;
  v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v45.value._object = 0xEB00000000656C62;
  v44._countAndFlagsBits = 0xD000000000000012;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v45, v42, v44, v80);

  v11[4] = v46;
  result = _DocumentManagerBundle();
  if (result)
  {
    v47 = result;
    v62 = a18;
    v60 = a17;
    v61 = a19;
    v81._object = 0x8000000249BE0DA0;
    v48._countAndFlagsBits = 0xD00000000000001CLL;
    v48._object = 0x8000000249BE0D80;
    v49._countAndFlagsBits = 0xD00000000000001CLL;
    v49._object = 0x8000000249BE0D80;
    v81._countAndFlagsBits = 0xD00000000000004ELL;
    v50.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v50.value._object = 0xEB00000000656C62;
    v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v50, v47, v49, v81);

    v11[5] = v51;
    v52 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__isInPopover;
    v76 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    Published.init(initialValue:)();
    v53 = v25;
    v54 = v71;
    (*(v22 + 32))(v12 + v52, v53, v71);
    *(&v12->_object + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate) = 0;
    swift_unknownObjectWeakInit();
    v55 = v66;
    *(&v12->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_groupingBehaviors) = v65;
    *(&v12->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_sortModes) = v55;
    *(&v12->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_sizeSettings) = v67;
    swift_beginAccess();
    LOBYTE(v75) = v63;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v75) = v64;
    Published.init(initialValue:)();
    swift_endAccess();
    *(&v12->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending) = v68 & 1;
    swift_beginAccess();
    LOBYTE(v75) = v69;
    Published.init(initialValue:)();
    swift_endAccess();
    v56 = v70;
    swift_beginAccess();
    v75 = v56;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v75) = v60 & 1;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    (*(v22 + 8))(v12 + v52, v54);
    LOBYTE(v75) = v61;
    Published.init(initialValue:)();
    swift_endAccess();
    *(&v12->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_availableSections) = &outlined read-only object #0 of DOCViewOptionsViewModel.init(groupingBehaviors:selectedGroupingBehavior:sortModes:selectedSortMode:selectedSortOrderAscending:sizeSettings:selectedSizeSetting:selectedSizeSliderValue:showFilenameExtensions:showFilenameExtensionsPublisher:isInPopover:);
    v75 = v62;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
    Published.projectedValue.getter();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>();
    Publisher<>.assign(to:)();
    v57 = v73;
    v58 = v74;
    (*(v73 + 16))(v72, v21, v74);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    (*(v57 + 8))(v21, v58);
    return v12;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>()
{
  result = lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>;
  if (!lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>);
  }

  return result;
}

uint64_t specialized DOCViewOptionsViewModel.sortByMenuItemAXIdentifier(for:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 > 4)
  {
    v8 = 0xEB00000000646574;
    v9 = 0x6165724365746164;
    v10 = 0xE900000000000064;
    v11 = 0x6564644165746164;
    if (v1 != 8)
    {
      v11 = 0x745364756F6C6369;
      v10 = 0xEC00000073757461;
    }

    if (v1 != 7)
    {
      v9 = v11;
      v8 = v10;
    }

    v12 = 0xE400000000000000;
    v13 = 1684957547;
    if (v1 != 5)
    {
      v13 = 0x7942646572616873;
      v12 = 0xE800000000000000;
    }

    if (*a1 <= 6u)
    {
      v6 = v13;
    }

    else
    {
      v6 = v9;
    }

    if (*a1 <= 6u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    v2 = 0xEC00000064656966;
    v3 = 0x69646F4D65746164;
    v4 = 1701667182;
    v5 = 1936154996;
    if (v1 != 3)
    {
      v5 = 1702521203;
    }

    if (v1 != 2)
    {
      v4 = v5;
    }

    if (*a1)
    {
      v3 = 0x7473614C65746164;
      v2 = 0xEE0064656E65704FLL;
    }

    if (*a1 <= 1u)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }

    if (*a1 <= 1u)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0xE400000000000000;
    }
  }

  v14 = objc_opt_self();
  v15 = MEMORY[0x24C1FAD20](v6, v7);

  v16 = [v14 sortByMenuItemForSortMode_];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v17;
}

unint64_t instantiation function for generic protocol witness table for DOCViewOptionsViewModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DOCViewOptionsViewModel and conformance DOCViewOptionsViewModel();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for DOCViewOptionsViewModel()
{
  result = type metadata singleton initialization cache for DOCViewOptionsViewModel;
  if (!type metadata singleton initialization cache for DOCViewOptionsViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DOCViewOptionsViewModel()
{
  type metadata accessor for Published<Bool?>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<Bool>);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<DOCItemGroupingBehavior>);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<DOCItemSortMode>);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<DOCBrowserLayoutConfiguration.SizeSetting>);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<Double>);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Bool?>()
{
  if (!lazy cache variable for type metadata for Published<Bool?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool?>);
    }
  }
}

uint64_t specialized DOCNode.markCachedLocalizedChildItemCountDescriptionAsStale(forProperty:)(uint64_t a1)
{
  v2 = v1;
  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for propertiesAffectingChildCount != -1)
  {
    v7 = a1;
    swift_once();
    LODWORD(a1) = v7;
  }

  result = specialized Set.contains(_:)(a1, static Property.propertiesAffectingChildCount);
  if (result)
  {
LABEL_5:
    objc_sync_enter(v2);
    if (one-time initialization token for associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    v4 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo6FINodeC_Tt1B5(v2, static FINode.associatedObjectStorageKey);
    swift_getKeyPath();
    (*((*MEMORY[0x277D85000] & *v4) + 0x60))(&v8);

    result = objc_sync_exit(v2);
    v5 = v8;
    if (v8)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = 1;

      ReadWriteLock.withWriteLock(_:)(closure #1 in FINodeItemCountFetcher.isStale.setterpartial apply, v6);
    }
  }

  return result;
}

Swift::Void __swiftcall DOCFileSystemCollection.doc_startObserving()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x270))();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(*static DOCFileSystemCollectionManager.shared + 136);

  v1();
}

Swift::Void __swiftcall DOCFileSystemCollection.doc_stopObserving()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(*static DOCFileSystemCollectionManager.shared + 144);

  v1();

  (*((*MEMORY[0x277D85000] & *v0) + 0x280))(v2);
}

Swift::Void __swiftcall DOCFileSystemCollection.doc_startObservationIfNeeded()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1D8))() & 1) == 0)
  {
    (*((*v1 & *v0) + 0x270))();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = *(*static DOCFileSystemCollectionManager.shared + 136);

    v2();
  }
}

Swift::Void __swiftcall DOCFileSystemCollection.doc_restartObservation()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1D8))();
  if (v2)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = *(*static DOCFileSystemCollectionManager.shared + 144);

    v3();

    v2 = (*((*v1 & *v0) + 0x280))(v4);
  }

  (*((*v1 & *v0) + 0x270))(v2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *(*static DOCFileSystemCollectionManager.shared + 136);

  v5();
}

uint64_t DOCFileSystemCollectionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  DOCFileSystemCollectionManager.init()();
  return v0;
}

uint64_t *DOCFileSystemCollectionManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DOCFileSystemCollectionManager.shared;
}

uint64_t static DOCFileSystemCollectionManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static DOCFileSystemCollectionManager.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCFileSystemCollectionManager.shared = a1;
}

uint64_t (*static DOCFileSystemCollectionManager.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t key path getter for static DOCFileSystemCollectionManager.shared : DOCFileSystemCollectionManager.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DOCFileSystemCollectionManager.shared;
}

uint64_t key path setter for static DOCFileSystemCollectionManager.shared : DOCFileSystemCollectionManager.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCFileSystemCollectionManager.shared = v1;
}

id DOCFileSystemCollectionManager.activeCollections.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void DOCFileSystemCollectionManager.activeCollections.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t DOCFileSystemCollectionManager.observingCollections.getter()
{
  v1 = v0;
  v9 = 0;
  v2 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in DOCFileSystemCollectionManager.observingCollections.getter;
  *(v4 + 24) = v3;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_121;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;
    if (v9)
    {

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in DOCFileSystemCollectionManager.observingCollections.getter(uint64_t *a1, uint64_t a2)
{
  v3 = (*(*a2 + 96))();
  v4 = [v3 allObjects];

  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = specialized _arrayForceCast<A, B>(_:)(v5);

  *a1 = v6;
}

uint64_t DOCFileSystemCollectionManager.init()()
{
  v1 = v0;
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v6, v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CCA940]) initWithCapacity_];
  v14[1] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v15);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  [v11 addObserver:v1 selector:sel_applicationDidEnterBackgroundWithSender_ name:*MEMORY[0x277D76660] object:0];

  v12 = [v10 defaultCenter];
  [v12 addObserver:v1 selector:sel_applicationWillEnterForegroundWithSender_ name:*MEMORY[0x277D76758] object:0];

  return v1;
}

uint64_t DOCFileSystemCollectionManager.collectionDidStartObserving(_:)(void *a1)
{
  v3 = *(v1 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in DOCFileSystemCollectionManager.collectionDidStartObserving(_:);
  *(v5 + 24) = v4;
  v9[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_13_4;
  v6 = _Block_copy(v9);
  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCFileSystemCollectionManager.collectionDidStopObserving(_:)(void *a1)
{
  v3 = *(v1 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in DOCFileSystemCollectionManager.collectionDidStopObserving(_:);
  *(v5 + 24) = v4;
  v9[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_23_1;
  v6 = _Block_copy(v9);
  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in DOCFileSystemCollectionManager.collectionDidStartObserving(_:)(void *a1, uint64_t a2, const char *a3, SEL *a4)
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.Enumeration);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v12 = 136315138;
    v13 = [(*((*MEMORY[0x277D85000] & *v9) + 0x118))() displayName];
    swift_unknownObjectRelease();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = a3;
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, &v21);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_2493AC000, v10, v11, v15, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C1FE850](v19, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }

  v20 = (*(*a2 + 96))();
  [v20 *a4];
}

void closure #1 in DOCFileSystemCollectionManager.applicationDidEnterBackground(sender:)(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v15 = (*(*a2 + 120))(v12);
    v16 = v15;
    if (v15 >> 62)
    {
      if (__CocoaSet.count.getter() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v21 = static OS_dispatch_queue.main.getter();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      aBlock[4] = partial apply for closure #1 in closure #1 in DOCFileSystemCollectionManager.applicationDidEnterBackground(sender:);
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_272_0;
      v18 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      v20 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v19 = v21;
      MEMORY[0x24C1FB9A0](0, v14, v8, v18);
      _Block_release(v18);

      (*(v5 + 8))(v8, v4);
      (*(v10 + 8))(v14, v20);
      return;
    }
  }
}

void closure #1 in closure #1 in DOCFileSystemCollectionManager.applicationDidEnterBackground(sender:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v2 = 0;
    v3 = v1 & 0xC000000000000001;
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D85000];
    v19 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v3)
      {
        v5 = MEMORY[0x24C1FC540](v2, v1);
      }

      else
      {
        if (v2 >= *(v22 + 16))
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 8 * v2 + 32);
      }

      v6 = v5;
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.Enumeration);
      v9 = v6;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v24 = v21;
        *v12 = 136315138;
        v20 = v11;
        v13 = [(*((*v4 & *v9) + 0x118))() displayName];
        swift_unknownObjectRelease();
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v1;
        v17 = v16;

        v7 = v2 + 1;
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, &v24);
        v1 = v15;
        v3 = v19;

        *(v12 + 4) = v18;
        _os_log_impl(&dword_2493AC000, v10, v20, "DOCFileSystemCollectionManager:      stopping collection: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x24C1FE850](v21, -1, -1);
        MEMORY[0x24C1FE850](v12, -1, -1);
      }

      (*((*v4 & *v9) + 0x280))();
      ++v2;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void closure #1 in DOCFileSystemCollectionManager.applicationWillEnterForeground(sender:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v2 = 0;
    v3 = v1 & 0xC000000000000001;
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D85000];
    v19 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v3)
      {
        v5 = MEMORY[0x24C1FC540](v2, v1);
      }

      else
      {
        if (v2 >= *(v22 + 16))
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 8 * v2 + 32);
      }

      v6 = v5;
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.Enumeration);
      v9 = v6;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v24 = v21;
        *v12 = 136315138;
        v20 = v11;
        v13 = [(*((*v4 & *v9) + 0x118))() displayName];
        swift_unknownObjectRelease();
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v1;
        v17 = v16;

        v7 = v2 + 1;
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, &v24);
        v1 = v15;
        v3 = v19;

        *(v12 + 4) = v18;
        _os_log_impl(&dword_2493AC000, v10, v20, "DOCFileSystemCollectionManager:      re-starting collection: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x24C1FE850](v21, -1, -1);
        MEMORY[0x24C1FE850](v12, -1, -1);
      }

      (*((*v4 & *v9) + 0x270))();
      ++v2;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

uint64_t @objc DOCFileSystemCollectionManager.applicationDidEnterBackground(sender:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  a4(v5);
  swift_unknownObjectRelease();
}

uint64_t DOCFileSystemCollectionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id static FileSystemCollectionError.needsAuthenticationError()()
{
  v0 = *MEMORY[0x277CC6300];
  v1 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

  return [v1 initWithDomain:v0 code:-1000 userInfo:0];
}

uint64_t one-time initialization function for fsCollectionLogHandle()
{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
  result = OS_os_log.init(subsystem:category:)();
  fsCollectionLogHandle = result;
  return result;
}

uint64_t DOCFileSystemCollection.observedNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observedNode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t closure #1 in DOCFileSystemCollection.isGathering.didset(void *a1)
{
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x160))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCFileSystemCollection.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCFileSystemCollection.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

uint64_t DOCFileSystemCollection.nodes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t DOCFileSystemCollection.nodes.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t (*DOCFileSystemCollection.nodes.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v7);
  a1[3] = 0;
  os_unfair_lock_unlock(v4 + 4);
  v5 = v7;

  *a1 = v5;
  return DOCFileSystemCollection.nodes.modify;
}

uint64_t DOCFileSystemCollection.nodes.modify(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {

    os_unfair_lock_lock(v2 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {

    os_unfair_lock_lock(v2 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
    os_unfair_lock_unlock(v2 + 4);
  }
}

uint64_t DOCFileSystemCollection.isObserving.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t DOCFileSystemCollection.isObserving.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock);

  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t (*DOCFileSystemCollection.isObserving.modify(uint64_t a1))(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v7);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);
  v5 = v7[0];

  *(a1 + 24) = v5;
  return DOCFileSystemCollection.isObserving.modify;
}

uint64_t DOCFileSystemCollection.isObserving.modify(void *a1)
{
  v1 = *(*a1 + a1[1]);

  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t DOCFileSystemCollection.__allocating_init(for:configuration:source:extraOptions:)(uint64_t a1, void *a2, void *a3, unint64_t a4, uint64_t (*a5)(uint64_t, void *, void *, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v12 = a5(a1, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32), v5, ObjectType);

  return v12;
}

void closure #1 in DOCFileSystemCollection.startObserving()()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1E0))(1);
    static os_signpost_type_t.event.getter();
    if (one-time initialization token for updatePointsOfInterestHandler != -1)
    {
      swift_once();
    }

    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v8 = (*(v1 + 8))(v4, v0);
    (*((*v7 & *v6) + 0x118))(v8);
    type metadata accessor for DOCICloudRootNode();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.Enumeration);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v30 = v15;
        *v14 = 136446210;
        *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BDC240, &v30);
        _os_log_impl(&dword_2493AC000, v12, v13, "[DSEnumeration] %{public}s: node is DOCICloudRootNode", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x24C1FE850](v15, -1, -1);
        MEMORY[0x24C1FE850](v14, -1, -1);
      }

      v16 = *((*v7 & *v10) + 0x78);
      v17 = v16();
      if (v17)
      {

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v30 = v21;
          *v20 = 136446210;
          *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BDC240, &v30);
          _os_log_impl(&dword_2493AC000, v18, v19, "[DSEnumeration] %{public}s: DOCICloudRootNode: main container is ready, startObserving", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x24C1FE850](v21, -1, -1);
          MEMORY[0x24C1FE850](v20, -1, -1);
        }

        v22 = v16();
        if (v22)
        {
          v23 = v22;
          v24 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v25 = v23;
          LOBYTE(v23) = DOCNode.isEqualTo(node:)();

          swift_unknownObjectRelease();
          if ((v23 & 1) == 0)
          {
            *(v6 + v24) = v25;
            v26 = v25;
            swift_unknownObjectRelease();
          }

          DOCFileSystemCollection.startObservingNow()();
        }
      }

      else
      {
        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        *(v28 + 24) = v10;
        v29 = *((*v7 & *v10) + 0x98);

        swift_unknownObjectRetain();
        v29(partial apply for closure #1 in closure #1 in DOCFileSystemCollection.startObserving(), v28);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      DOCFileSystemCollection.startObservingNow()();
    }
  }
}

char *closure #1 in closure #1 in DOCFileSystemCollection.startObserving()(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22[1] = *&result[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue];
    v24 = result;
    v16 = swift_allocObject();
    v22[0] = v6;
    v23 = v10;
    v17 = v16;
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a1;
    v18[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCFileSystemCollection.startObserving();
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_253_1;
    v19 = _Block_copy(aBlock);
    v20 = a1;
    v21 = a3;

    static DispatchQoS.unspecified.getter();
    v25 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v14, v9, v19);
    _Block_release(v19);
    (*(v22[0] + 8))(v9, v5);
    (*(v11 + 8))(v14, v23);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in DOCFileSystemCollection.startObserving()(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      v7 = one-time initialization token for Enumeration;
      v8 = a2;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.Enumeration);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v15 = v13;
        *v12 = 136446210;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BDC240, &v15);
        _os_log_impl(&dword_2493AC000, v10, v11, "[DSEnumeration] %{public}s: DOCICloudRootNode: main container became ready, start Observing", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x24C1FE850](v13, -1, -1);
        MEMORY[0x24C1FE850](v12, -1, -1);
      }

      *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode] = v8;
      v14 = v8;
      swift_unknownObjectRelease();
      DOCFileSystemCollection.startObservingNow()();
      (*((*MEMORY[0x277D85000] & *a3) + 0x98))(0, 0);
    }
  }
}

void DOCFileSystemCollection.startObservingNow()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v111[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v111[-v7];
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v111[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v111[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue];
  *v19 = v20;
  (*(v15 + 104))(v19, *MEMORY[0x277D85200], v14, v17);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v19, v14);
  if (v20)
  {
    static os_signpost_type_t.event.getter();
    if (one-time initialization token for updatePointsOfInterestHandler == -1)
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
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v10 + 8))(v13, v9);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.Enumeration);
  v23 = v0;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    aBlock[0] = v115;
    *v26 = 136315138;
    v27 = [*&v23[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode] displayName];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, aBlock);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_2493AC000, v24, v25, "[DSEnumeration] startObserving: DOCNode %s", v26, 0xCu);
    v32 = v115;
    __swift_destroy_boxed_opaque_existential_0(v115);
    MEMORY[0x24C1FE850](v32, -1, -1);
    MEMORY[0x24C1FE850](v26, -1, -1);
  }

  v33 = *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_source];
  if (v33)
  {
    v34 = *(v33 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    v35 = v34;
  }

  else
  {
    v34 = 0;
  }

  DOCFileSystemCollection.receivedDomainUpdate(for:)(v34);

  v36 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode;
  objc_opt_self();
  v37 = [swift_dynamicCastObjCClassUnconditional() fileURL];
  if (v37)
  {
    v38 = v37;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = type metadata accessor for URL();
  v41 = *(v40 - 8);
  (*(v41 + 56))(v4, v39, 1, v40);
  outlined init with take of URL?(v4, v8);
  if ((*(v41 + 48))(v8, 1, v40) == 1)
  {
    outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd);
    v42 = 0;
  }

  else
  {
    v42 = URL.startAccessingSecurityScopedResource()();
    (*(v41 + 8))(v8, v40);
  }

  v23[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_shouldStopAccessing] = v42;
  v43 = *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserver];
  if (v43)
  {
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in DOCFileSystemCollection.startObservingNow();
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_200_0;
    v45 = _Block_copy(aBlock);

    v46 = [v43 addSubscriber_];
    _Block_release(v45);
  }

  else
  {
    v46 = 0;
  }

  v47 = *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserverToken];
  *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserverToken] = v46;

  [v43 startObservingSources];
  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (v48)
  {
    v49 = [v48 fpDomain];
    if (v49)
    {
      v50 = v49;
      v51 = v49;
      DOCFileSystemCollection.receivedDomainUpdate(for:)(v50);
    }
  }

  v52 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observer;
  v53 = *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observer];
  if (v53)
  {
    v54 = v23;
    v55 = v53;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v58 = 136446466;
      *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BF1EB0, aBlock);
      *(v58 + 12) = 2080;
      v60 = [*&v23[v36] displayName];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, aBlock);

      *(v58 + 14) = v64;
      _os_log_impl(&dword_2493AC000, v56, v57, "[DSEnumeration] %{public}s: observer already exists, start observing %s again", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v59, -1, -1);
      MEMORY[0x24C1FE850](v58, -1, -1);
    }

    [v55 startObserving_];
    DOCFileSystemCollection.refreshNodesAndNotifyDelegate(_:)(1);
  }

  else
  {
    v65 = *&v23[v36];
    objc_opt_self();
    v66 = swift_dynamicCastObjCClass();
    if (v66)
    {
      v67 = v66;
      v68 = v23;
      v115 = v65;
      swift_unknownObjectRetain();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        aBlock[0] = v113;
        *v71 = 136446466;
        *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BF1EB0, aBlock);
        *(v71 + 12) = 2080;
        v72 = [*&v23[v36] displayName];
        v114 = v68;
        v73 = v72;
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v70;
        v76 = v75;

        v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, aBlock);

        *(v71 + 14) = v77;
        v68 = v114;
        _os_log_impl(&dword_2493AC000, v69, v112, "[DSEnumeration] %{public}s: Creating Observer with DOCNode %s)", v71, 0x16u);
        v78 = v113;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v78, -1, -1);
        MEMORY[0x24C1FE850](v71, -1, -1);
      }

      v79 = [objc_opt_self() observerForFINode:v67 withObserver:v68];
      v80 = *&v23[v52];
      *&v23[v52] = v79;
      v81 = v79;

      v82 = v68;
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v113 = v82;
        v86 = v85;
        v87 = swift_slowAlloc();
        v114 = v81;
        v88 = v87;
        aBlock[0] = v87;
        *v86 = 136446466;
        *(v86 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BF1EB0, aBlock);
        *(v86 + 12) = 2080;
        v89 = [*&v23[v36] displayName];
        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;

        v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, aBlock);

        *(v86 + 14) = v93;
        _os_log_impl(&dword_2493AC000, v83, v84, "[DSEnumeration] %{public}s: Starting Observer with DOCNode %s", v86, 0x16u);
        swift_arrayDestroy();
        v94 = v88;
        v81 = v114;
        MEMORY[0x24C1FE850](v94, -1, -1);
        v95 = v86;
        v82 = v113;
        MEMORY[0x24C1FE850](v95, -1, -1);
      }

      v96 = *&v23[v52];
      if (v96)
      {
        [v96 startObserving_];
      }

      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        aBlock[0] = v100;
        *v99 = 136446210;
        *(v99 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BF1EB0, aBlock);
        _os_log_impl(&dword_2493AC000, v97, v98, "[DSEnumeration] %{public}s: start refreshing items", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v100);
        MEMORY[0x24C1FE850](v100, -1, -1);
        MEMORY[0x24C1FE850](v99, -1, -1);
      }

      DOCFileSystemCollection.refreshNodesAndNotifyDelegate(_:)(1);
      DOCFileSystemCollection.flushPendingNodesUpdates()();
      swift_unknownObjectRelease();
    }

    else
    {
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        aBlock[0] = v104;
        *v103 = 136446210;
        *(v103 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BF1EB0, aBlock);
        _os_log_impl(&dword_2493AC000, v101, v102, "[DSEnumeration] %{public}s: Error Cannot observe a non FINode from Desktop Services", v103, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v104);
        MEMORY[0x24C1FE850](v104, -1, -1);
        MEMORY[0x24C1FE850](v103, -1, -1);
      }

      v105 = MEMORY[0x277D85000];
      if ((*((*MEMORY[0x277D85000] & *v23) + 0x160))())
      {
        v107 = v106;
        ObjectType = swift_getObjectType();
        lazy protocol witness table accessor for type FileSystemCollectionError and conformance FileSystemCollectionError();
        v109 = swift_allocError();
        *v110 = 0xD00000000000002CLL;
        *(v110 + 8) = 0x8000000249BF1E80;
        *(v110 + 16) = 1;
        (*(v107 + 32))(v23, v109, ObjectType, v107);
        swift_unknownObjectRelease();
      }

      (*((*v105 & *v23) + 0x280))();
    }
  }
}

void closure #1 in DOCFileSystemCollection.startObservingNow()(unint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = v3;
    v40 = v2;
    v37 = v6;
    v38 = v7;
    v35 = v11;
    v36 = v8;
    if (a1 >> 62)
    {
LABEL_25:
      v12 = __CocoaSet.count.getter();
      v13 = Strong;
      if (v12)
      {
LABEL_4:
        v14 = 0;
        v44 = a1 & 0xC000000000000001;
        v42 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_source;
        v43 = (a1 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v44)
          {
            v15 = MEMORY[0x24C1FC540](v14, a1);
          }

          else
          {
            if (v14 >= v43[2])
            {
              goto LABEL_24;
            }

            v15 = *(a1 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          type metadata accessor for DOCFileProviderSource();
          v18 = swift_dynamicCastClass();
          if (v18)
          {
            v19 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
            if (v19)
            {
              v20 = *&v13[v42];
              if (v20)
              {
                v21 = *(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
                if (v21)
                {
                  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
                  v22 = v19;
                  v23 = v21;
                  v24 = static NSObject.== infix(_:_:)();

                  v13 = Strong;
                  if (v24)
                  {
                    break;
                  }
                }
              }
            }
          }

          ++v14;
          if (v17 == v12)
          {
            goto LABEL_21;
          }
        }

        v25 = swift_dynamicCastClass();
        if (v25)
        {
          v26 = *(v25 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
          if (v26)
          {
            v44 = *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue];
            v27 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v28 = swift_allocObject();
            *(v28 + 16) = v27;
            *(v28 + 24) = v26;
            aBlock[4] = partial apply for closure #2 in closure #1 in DOCFileSystemCollection.startObservingNow();
            aBlock[5] = v28;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            aBlock[3] = &block_descriptor_207_0;
            v29 = _Block_copy(aBlock);
            v43 = v26;

            v30 = v35;
            static DispatchQoS.unspecified.getter();
            v45 = MEMORY[0x277D84F90];
            _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
            v31 = v13;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
            lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
            v32 = v37;
            v33 = v40;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            MEMORY[0x24C1FB9A0](0, v30, v32, v29);
            _Block_release(v29);

            (*(v39 + 8))(v32, v33);
            (*(v36 + 8))(v30, v38);

            return;
          }
        }
      }
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = Strong;
      if (v12)
      {
        goto LABEL_4;
      }
    }

LABEL_21:
  }
}

void closure #2 in closure #1 in DOCFileSystemCollection.startObservingNow()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DOCFileSystemCollection.receivedDomainUpdate(for:)(a2);
  }
}

uint64_t DOCFileSystemCollection.startObserving()(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v5);
  (*(v9 + 8))(v12, v17);
}

void closure #1 in DOCFileSystemCollection.stopObserving()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v33 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *Strong) + 0x1D8))())
    {
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.Enumeration);
      v12 = v9;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v34 = v7;
        v16 = v15;
        v17 = swift_slowAlloc();
        v35 = v17;
        *v16 = 136315138;
        v18 = [*(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode) displayName];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v35);

        *(v16 + 4) = v22;
        _os_log_impl(&dword_2493AC000, v13, v14, "[DSEnumeration] stopObserving: DOCNode %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        v23 = v17;
        v10 = MEMORY[0x277D85000];
        MEMORY[0x24C1FE850](v23, -1, -1);
        v24 = v16;
        v7 = v34;
        MEMORY[0x24C1FE850](v24, -1, -1);
      }

      v25 = *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observer);
      if (v25)
      {
        [v25 stopObserving_];
      }

      v26 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserverToken;
      if (*(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserverToken))
      {
        [*(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserver) removeSubscriberForToken_];
        v27 = *(v12 + v26);
        *(v12 + v26) = 0;
      }

      [*(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserver) stopObservingSources];
      (*((*v10 & *v12) + 0x1E0))(0);
      [v12 setIsGathering_];
      if (*(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_shouldStopAccessing) == 1)
      {
        v28 = [*(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode) nodeURL];
        if (v28)
        {
          v29 = v28;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = 0;
        }

        else
        {
          v30 = 1;
        }

        v31 = type metadata accessor for URL();
        v32 = *(v31 - 8);
        (*(v32 + 56))(v3, v30, 1, v31);
        outlined init with take of URL?(v3, v7);
        if ((*(v32 + 48))(v7, 1, v31) == 1)
        {

          outlined destroy of CharacterSet?(v7, &_s10Foundation3URLVSgMd);
        }

        else
        {
          URL.stopAccessingSecurityScopedResource()();

          (*(v32 + 8))(v7, v31);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void DOCFileSystemCollection.receivedDomainUpdate(for:)(id a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 1);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue];
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x277D85200], v4, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (!a1)
  {
    return;
  }

  a1 = a1;
  if (![a1 isUsingFPFS])
  {
LABEL_22:

    return;
  }

  if ([a1 needsAuthentication] && v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState] != 2)
  {
    v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState] = 2;
    *(swift_allocObject() + 16) = v1;
    v23 = v1;
    DOCRunInMainThread(_:)();

    goto LABEL_22;
  }

  if (([a1 needsAuthentication] & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState;
    if (v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState] == 2)
    {
      v4 = v1;
      if (one-time initialization token for Enumeration == -1)
      {
LABEL_9:
        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.Enumeration);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v25[0] = v16;
          *v15 = 136446210;
          *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BF1E40, v25);
          _os_log_impl(&dword_2493AC000, v13, v14, "[DSEnumeration] %{public}s: Domain became authenticated, restarting observation", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x24C1FE850](v16, -1, -1);
          MEMORY[0x24C1FE850](v15, -1, -1);
        }

        *(v4 + v2) = 1;
        v17 = MEMORY[0x277D85000];
        v18 = (*((*MEMORY[0x277D85000] & *v4) + 0x1D8))();
        if (v18)
        {
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v19 = *(*static DOCFileSystemCollectionManager.shared + 144);

          v19(v4);

          v18 = (*((*v17 & *v4) + 0x280))(v20);
        }

        (*((*v17 & *v4) + 0x270))(v18);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v21 = *(*static DOCFileSystemCollectionManager.shared + 136);

        v21(v4);

        return;
      }

LABEL_25:
      swift_once();
      goto LABEL_9;
    }
  }

  v22 = [a1 needsAuthentication];

  if ((v22 & 1) == 0 && !v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState])
  {
    v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState] = 1;
  }
}

uint64_t closure #1 in DOCFileSystemCollection.receivedDomainUpdate(for:)(void *a1)
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Enumeration);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BF1E40, &v14);
    _os_log_impl(&dword_2493AC000, v3, v4, "[DSEnumeration] %{public}s: Domain needs authentication", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *a1) + 0x160))();
  if (v8)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    v12 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CC6300] code:-1000 userInfo:0];
    (*(v10 + 32))(a1, v12, ObjectType, v10);

    v8 = swift_unknownObjectRelease();
  }

  result = (*((*v7 & *a1) + 0x1D8))(v8);
  if (result)
  {
    return (*((*v7 & *a1) + 0x280))();
  }

  return result;
}

void *DOCFileSystemCollection.itemFilteringPredicate.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_itemFilteringPredicate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCFileSystemCollection.itemFilteringPredicate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_itemFilteringPredicate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for DOCFileSystemCollection.sortDescriptors : DOCFileSystemCollection(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sortDescriptors;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t DOCFileSystemCollection.observedNode.getter(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(*(v2 + v4));
}

uint64_t DOCFileSystemCollection.reorderItems(with:propertiesImpactingSort:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = partial apply for closure #1 in DOCFileSystemCollection.reorderItems(with:propertiesImpactingSort:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_56_1;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void closure #1 in DOCFileSystemCollection.reorderItems(with:propertiesImpactingSort:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1C0))();
    v9 = specialized _arrayConditionalCast<A, B>(_:)(v8);

    if (v9)
    {
      if (a2 >> 62)
      {
        v10 = __CocoaSet.count.getter();
      }

      else
      {
        v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.Enumeration);
      v12 = v6;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v26 = v10;
        v15 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28[0] = v27;
        *v15 = 136446722;
        *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000249BF1F20, v28);
        *(v15 + 12) = 2080;
        v16 = [*(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode) displayName];
        v17 = a3;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v7 = MEMORY[0x277D85000];
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v28);

        *(v15 + 14) = v21;
        a3 = v17;
        *(v15 + 22) = 2048;
        *(v15 + 24) = v26;
        _os_log_impl(&dword_2493AC000, v13, v14, "%{public}s: with DOCNode %s : %ld descriptors", v15, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v27, -1, -1);
        MEMORY[0x24C1FE850](v15, -1, -1);
      }

      v22 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sortDescriptors;
      swift_beginAccess();
      *(v12 + v22) = a2;

      *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_propertiesImpactingSort) = a3;

      v23 = DOCFileSystemCollection.sort(nodes:)();

      if (v23 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        v24 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        v24 = v23;
      }

      (*((*v7 & *v12) + 0x1C8))(v24);
      if (*(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState) == 2 || ([v12 isGathering] & 1) != 0 || ((*((*v7 & *v12) + 0x1D8))() & 1) == 0)
      {
      }

      else
      {
        *(swift_allocObject() + 16) = v12;
        v25 = v12;
        DOCRunInMainThread(_:)();
      }
    }

    else
    {
    }
  }
}

uint64_t closure #1 in closure #1 in DOCFileSystemCollection.reorderItems(with:propertiesImpactingSort:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  v7 = (*(v3 + 8))(v6, v2);
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x160))(v7);
  if (result)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(a1, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCFileSystemCollection.scheduleNodesUpdatesFlush(time:)(uint64_t a1)
{
  v16 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in DOCFileSystemCollection.scheduleNodesUpdatesFlush(time:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_193_0;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB940](v16, v9, v5, v11);
  _Block_release(v11);
  (*(v15 + 8))(v5, v2);
  (*(v6 + 8))(v9, v14);
}

void closure #1 in DOCFileSystemCollection.scheduleNodesUpdatesFlush(time:)()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    static os_signpost_type_t.event.getter();
    if (one-time initialization token for updatePointsOfInterestHandler != -1)
    {
      swift_once();
    }

    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    (*(v1 + 8))(v4, v0);
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.Enumeration);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136446210;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BF1E10, &v12);
      _os_log_impl(&dword_2493AC000, v8, v9, "[DSEnumeration] %{public}s: FlushingNodesUpdates", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    DOCFileSystemCollection.flushPendingNodesUpdates()();
  }
}

uint64_t DOCFileSystemCollection.flushPendingNodesUpdates()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v46 - v6;
  v50 = type metadata accessor for DispatchTime();
  v8 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v46 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 1);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = (&v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
  *v25 = v26;
  (*(v21 + 104))(v25, *MEMORY[0x277D85200], v20, v23);
  v27 = v26;
  v28 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v25, v20);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  static DispatchTime.now()();
  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodesWithPendingUpdates;
  swift_beginAccess();
  v29 = *(v0 + v28);
  if ((v29 & 0xC000000000000001) == 0)
  {
    if (*(v29 + 16) >= 1)
    {
      goto LABEL_4;
    }

    return (*(v8 + 8))(v19, v50);
  }

  v30 = __CocoaSet.count.getter();

  if (v30 < 1)
  {
    return (*(v8 + 8))(v19, v50);
  }

LABEL_4:
  v25 = v50;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState) == 2)
  {
    return (*(v8 + 8))(v19, v25);
  }

  if ([v0 isGathering])
  {
    return (*(v8 + 8))(v19, v25);
  }

  v20 = v0;
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x1D8))() & 1) == 0 || (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_dispatchedUpdateIsPending))
  {
    return (*(v8 + 8))(v19, v25);
  }

  v48 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_dispatchedUpdateIsPending;
  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_lastFlushTime;
  swift_beginAccess();
  v47 = v31;
  outlined init with copy of DispatchTime?(v0 + v31, v7);
  if ((*(v8 + 48))(v7, 1, v25) == 1)
  {
    outlined destroy of CharacterSet?(v7, &_s8Dispatch0A4TimeVSgMd);
    goto LABEL_17;
  }

  (*(v8 + 32))(v15, v7, v25);
  DispatchTime.advanced(by:)();
  if ((static DispatchTime.< infix(_:_:)() & 1) == 0)
  {
    v34 = *(v8 + 8);
    v34(v11, v25);
    v34(v15, v25);
LABEL_17:

    v15 = specialized _copyCollectionToContiguousArray<A>(_:)(v35);

    if (one-time initialization token for Enumeration == -1)
    {
LABEL_18:
      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.Enumeration);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v51[0] = v40;
        *v39 = 136446466;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BF1DD0, v51);
        *(v39 + 12) = 2048;
        if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
        {
          v41 = __CocoaSet.count.getter();
        }

        else
        {
          v41 = *(v15 + 16);
        }

        *(v39 + 14) = v41;

        _os_log_impl(&dword_2493AC000, v37, v38, "[DSEnumeration] %{public}s: updated %ld nodes", v39, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x24C1FE850](v40, -1, -1);
        MEMORY[0x24C1FE850](v39, -1, -1);

        v25 = v50;
      }

      else
      {
      }

      *(v20 + v28) = MEMORY[0x277D84FA0];

      v42 = v49;
      (*(v8 + 16))(v49, v19, v25);
      (*(v8 + 56))(v42, 0, 1, v25);
      v43 = v47;
      swift_beginAccess();
      outlined assign with take of DispatchTime?(v42, v20 + v43);
      swift_endAccess();
      *(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_hasScheduledUpdate) = 0;
      *(v20 + v48) = 1;
      v44 = swift_allocObject();
      *(v44 + 16) = v15;
      *(v44 + 24) = v20;
      v45 = v20;
      DOCRunInMainThread(_:)();

      return (*(v8 + 8))(v19, v25);
    }

LABEL_27:
    swift_once();
    goto LABEL_18;
  }

  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_hasScheduledUpdate) != 1)
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_hasScheduledUpdate) = 1;
    DOCFileSystemCollection.scheduleNodesUpdatesFlush(time:)(v11);
  }

  v33 = *(v8 + 8);
  v33(v11, v25);
  v33(v15, v25);
  return (v33)(v19, v25);
}

uint64_t closure #1 in DOCFileSystemCollection.flushPendingNodesUpdates()(unint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v32 - v6;
  v32 = type metadata accessor for DispatchTime();
  v8 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v13 + 8))(v16, v12);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.Enumeration);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  v20 = a1 >> 62;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    if (v20)
    {
      v22 = __CocoaSet.count.getter();
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 4) = v22;

    _os_log_impl(&dword_2493AC000, v18, v19, "[DSEnumeration] MainThread updating %ld nodes", v21, 0xCu);
    MEMORY[0x24C1FE850](v21, -1, -1);
  }

  else
  {
  }

  *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_dispatchedUpdateIsPending) = 0;
  if ((*((*MEMORY[0x277D85000] & *a2) + 0x160))(v23))
  {
    v25 = v24;

    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v31 = _bridgeCocoaArray<A>(_:)();

      a1 = v31;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    ObjectType = swift_getObjectType();
    (*(v25 + 48))(a2, a1, MEMORY[0x277D84F90], ObjectType, v25);

    swift_unknownObjectRelease();
  }

  v27 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_lastFlushTime;
  swift_beginAccess();
  outlined init with copy of DispatchTime?(a2 + v27, v7);
  v28 = v32;
  result = (*(v8 + 48))(v7, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    DispatchTime.advanced(by:)();
    v30 = *(v8 + 8);
    v30(v7, v28);
    DOCFileSystemCollection.scheduleNodesUpdatesFlush(time:)(v11);
    return (v30)(v11, v28);
  }

  return result;
}

unint64_t DOCFileSystemCollection.purgeCachedDataInNodes()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x277D85200], v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v9 = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    result = (*((*MEMORY[0x277D85000] & *v0) + 0x1C0))(v9);
    v1 = result;
    if (!(result >> 62))
    {
      v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = __CocoaSet.count.getter();
  v11 = result;
  if (!result)
  {
  }

LABEL_4:
  if (v11 >= 1)
  {
    v12 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v12, v1);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v12;
      swift_getObjectType();
      v13[12] = 1;
      DOCNode.markCachedLocalizedChildItemCountDescriptionAsStale(forProperty:)(0x100000000);
      swift_unknownObjectRelease();
    }

    while (v11 != v12);
  }

  __break(1u);
  return result;
}

uint64_t DOCFileSystemCollection.refreshNodesAndNotifyDelegate(_:)(int a1)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = (v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue];
  *v13 = v14;
  (*(v9 + 104))(v13, *MEMORY[0x277D85200], v8, v11);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v8);
  if (v14)
  {
    if (one-time initialization token for Enumeration == -1)
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
  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logger.Enumeration);
  v18 = v1;
  v113 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  v21 = os_log_type_enabled(v19, v20);
  v111 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v112 = v18;
    v24 = v23;
    v114 = v23;
    *v22 = 136446466;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v114);
    *(v22 + 12) = 2080;
    v25 = [*&v112[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode] displayName];
    v26 = v7;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v4;
    v29 = v3;
    v31 = v30;

    v32 = v27;
    v7 = v26;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v114);
    v3 = v29;
    v4 = v28;

    *(v22 + 14) = v33;
    _os_log_impl(&dword_2493AC000, v19, v20, "[DSEnumeration] %{public}s: DOCNode %s", v22, 0x16u);
    swift_arrayDestroy();
    v34 = v24;
    v18 = v112;
    MEMORY[0x24C1FE850](v34, -1, -1);
    MEMORY[0x24C1FE850](v22, -1, -1);
  }

  result = (*((*MEMORY[0x277D85000] & *v18) + 0x1D8))();
  if (result)
  {
    v36 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode;
    v37 = *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode];
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v38 = result;
      v109 = v37;
      swift_unknownObjectRetain();
      static os_signpost_type_t.begin.getter();
      if (one-time initialization token for fsCollectionLogHandle != -1)
      {
        swift_once();
      }

      v39 = fsCollectionLogHandle;
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v40 = *(v4 + 8);
      v106 = v4 + 8;
      v107 = v40;
      v40(v7, v3);
      v41 = specialized DOCFileSystemCollection.iterator(for:)(v38);
      if (v41)
      {
        v42 = v41;
        v104[1] = v39;
        swift_unknownObjectRetain_n();
        v43 = v18;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.info.getter();
        swift_unknownObjectRelease();
        v110 = v43;

        v46 = os_log_type_enabled(v44, v45);
        v108 = v42;
        v105 = v7;
        v112 = v18;
        if (v46)
        {
          v47 = v18;
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v114 = v49;
          *v48 = 136446722;
          *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v114);
          *(v48 + 12) = 2080;
          v50 = [*(v47 + v36) displayName];
          v51 = v3;
          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          v55 = v52;
          v3 = v51;
          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, &v114);

          *(v48 + 14) = v56;
          *(v48 + 22) = 2080;
          v57 = [v108 fullyPopulated];
          v58 = v57 == 0;
          if (v57)
          {
            v59 = 0;
          }

          else
          {
            v59 = 1953459744;
          }

          if (v58)
          {
            v60 = 0xE400000000000000;
          }

          else
          {
            v60 = 0xE000000000000000;
          }

          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v114);

          *(v48 + 24) = v61;
          _os_log_impl(&dword_2493AC000, v44, v45, "[DSEnumeration] %{public}s: iterator for %s%s fully populated", v48, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v49, -1, -1);
          MEMORY[0x24C1FE850](v48, -1, -1);
        }

        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v114 = v65;
          *v64 = 136446210;
          *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v114);
          _os_log_impl(&dword_2493AC000, v62, v63, "[DSEnumeration] %{public}s: starting iteration", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v65);
          MEMORY[0x24C1FE850](v65, -1, -1);
          MEMORY[0x24C1FE850](v64, -1, -1);
        }

        v76 = v108;
        swift_unknownObjectRetain();
        v77 = specialized DOCFileSystemCollection.iterateChildren(of:iterator:)(v38, v76);
        swift_unknownObjectRelease();

        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v114 = v81;
          *v80 = 136446466;
          *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v114);
          *(v80 + 12) = 2048;
          if (v77 >> 62)
          {
            v82 = __CocoaSet.count.getter();
          }

          else
          {
            v82 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v80 + 14) = v82;

          _os_log_impl(&dword_2493AC000, v78, v79, "[DSEnumeration] %{public}s: iteratedNodes count = %ld", v80, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v81);
          MEMORY[0x24C1FE850](v81, -1, -1);
          MEMORY[0x24C1FE850](v80, -1, -1);
        }

        else
        {
        }

        v83 = DOCFileSystemCollection.filter(nodes:)(v77);

        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v114 = v87;
          *v86 = 136446466;
          *(v86 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v114);
          *(v86 + 12) = 2048;
          if (v83 >> 62)
          {
            v88 = __CocoaSet.count.getter();
          }

          else
          {
            v88 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v86 + 14) = v88;

          _os_log_impl(&dword_2493AC000, v84, v85, "[DSEnumeration] %{public}s: filteredNodes count = %ld", v86, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v87);
          MEMORY[0x24C1FE850](v87, -1, -1);
          MEMORY[0x24C1FE850](v86, -1, -1);
        }

        else
        {
        }

        v89 = DOCFileSystemCollection.sort(nodes:)();

        if (v89 >> 62)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
          v103 = _bridgeCocoaArray<A>(_:)();

          v90 = v103;
        }

        else
        {
          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          v90 = v89;
        }

        (*((*MEMORY[0x277D85000] & *v110) + 0x1C8))(v90);

        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v114 = v94;
          *v93 = 136446466;
          *(v93 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v114);
          *(v93 + 12) = 2048;
          if (v89 >> 62)
          {
            v95 = __CocoaSet.count.getter();
          }

          else
          {
            v95 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v96 = v105;

          *(v93 + 14) = v95;

          _os_log_impl(&dword_2493AC000, v91, v92, "[DSEnumeration] %{public}s: sorted nodes count = %ld", v93, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v94);
          MEMORY[0x24C1FE850](v94, -1, -1);
          MEMORY[0x24C1FE850](v93, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v96 = v105;
        }

        static os_signpost_type_t.end.getter();
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:_:_:)();
        v107(v96, v3);
        if (v111)
        {
          DOCFileSystemCollection.purgeCachedDataInNodes()();
        }

        v97 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isFullyPopulated;
        v98 = v110;
        v99 = v110[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isFullyPopulated];
        v100 = [v108 fullyPopulated];
        v98[v97] = v100;
        [v98 setIsGathering_];
        v101 = swift_allocObject();
        *(v101 + 16) = v98;
        *(v101 + 24) = v99;
        v102 = v98;
        DOCRunInMainThread(_:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
      }

      else
      {
        (*((*MEMORY[0x277D85000] & *v18) + 0x1C8))(MEMORY[0x277D84F90]);
        v18[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isFullyPopulated] = 1;
        [v18 setIsGathering_];
        v66 = v18;
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v114 = v113;
          *v69 = 136446466;
          *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v114);
          *(v69 + 12) = 2080;
          v70 = [*&v18[v36] displayName];
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v114);

          *(v69 + 14) = v74;
          _os_log_impl(&dword_2493AC000, v67, v68, "[DSEnumeration] %{public}s: %s does not support iteration. Is it a file?", v69, 0x16u);
          v75 = v113;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v75, -1, -1);
          MEMORY[0x24C1FE850](v69, -1, -1);
        }

        static os_signpost_type_t.end.getter();
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:_:_:)();
        swift_unknownObjectRelease();
        return (v107)(v7, v3);
      }
    }
  }

  return result;
}