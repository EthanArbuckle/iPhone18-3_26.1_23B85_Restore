id specialized DOCSmartFolderManager.init(_:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_currentUserActivity] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_defaultSaveLocationItemId] = 0;
  if (a1)
  {
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database] = a1;
    v3 = a1;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D05F00]) init];
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database] = v4;
    v3 = v4;
  }

  v5 = a1;
  [v3 open];

  v7.receiver = v1;
  v7.super_class = type metadata accessor for DOCSmartFolderManager();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t outlined init with copy of DOCSmartFolderInputFile(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCSmartFolderInputFile();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DOCSmartFolderInputFile(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCSmartFolderInputFile();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in DOCSmartFolderManager.register(savedFile:in:)(void *a1)
{
  type metadata accessor for DOCSmartFolderInputFile();

  return closure #1 in DOCSmartFolderManager.register(savedFile:in:)(a1);
}

id DOCSmartFolderLogHandle()
{
  v0 = MEMORY[0x277D062F0];
  v1 = *MEMORY[0x277D062F0];
  if (!*MEMORY[0x277D062F0])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type UTType and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UTType and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UTType and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for UTType);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTType and conformance NSObject);
  }

  return result;
}

uint64_t specialized DOCSmartFolderManager.group(_:configuration:managedPermission:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28NSFileProviderItemIdentifiera_SaySo17DOCSmartFolderHitCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
LABEL_32:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

    return v6;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return v6;
  }

LABEL_3:
  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  v36 = a1 & 0xFFFFFFFFFFFFFF8;
  v39 = a1;
  v40 = a3;
  v35 = a2;
  v37 = a1 & 0xC000000000000001;
  v38 = v7;
  while (1)
  {
    if (v9)
    {
      v10 = MEMORY[0x24C1FC540](v8, a1);
    }

    else
    {
      if (v8 >= *(v36 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(a1 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v13 = [v10 folderItem];
    if ([a3 canAppWithConfiguration:a2 handleNode:v13])
    {
      break;
    }

LABEL_5:
    ++v8;
    if (v12 == v7)
    {
      return v6;
    }
  }

  v14 = [v13 itemIdentifier];
  v15 = v14;
  if (v6[2])
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
    if (v17)
    {
      v18 = *(v6[7] + 8 * v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v19 = v15;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA0290;
      *(inited + 32) = v11;
      v42 = v18;

      v21 = v11;
      specialized Array.append<A>(contentsOf:)(inited);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, v19, isUniquelyReferenced_nonNull_native);

      a3 = v40;
LABEL_27:
      v7 = v38;
      a1 = v39;
      v9 = v37;
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  a1 = swift_allocObject();
  *(a1 + 16) = xmmword_249BA0290;
  *(a1 + 32) = v11;
  v41 = v11;
  a3 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v15;
  a2 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
  v25 = v6[2];
  v26 = (v24 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    goto LABEL_30;
  }

  v28 = v24;
  if (v6[3] >= v27)
  {
    if (a3)
    {
      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v28)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    v6[(a2 >> 6) + 8] |= 1 << a2;
    *(v6[6] + 8 * a2) = v23;
    *(v6[7] + 8 * a2) = a1;

    v31 = v6[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_31;
    }

    v6[2] = v33;
    goto LABEL_26;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, a3);
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
  if ((v28 & 1) == (v30 & 1))
  {
    a2 = v29;
    if ((v28 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_22:
    *(v6[7] + 8 * a2) = a1;

LABEL_26:
    a3 = v40;
    a2 = v35;
    goto LABEL_27;
  }

  type metadata accessor for NSFileProviderItemIdentifier(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28NSFileProviderItemIdentifiera_SaySo17DOCHotFolderEventCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
LABEL_32:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

    return v6;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return v6;
  }

LABEL_3:
  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  v36 = a1 & 0xFFFFFFFFFFFFFF8;
  v39 = a1;
  v40 = a3;
  v35 = a2;
  v37 = a1 & 0xC000000000000001;
  v38 = v7;
  while (1)
  {
    if (v9)
    {
      v10 = MEMORY[0x24C1FC540](v8, a1);
    }

    else
    {
      if (v8 >= *(v36 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(a1 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v13 = [v10 folderItem];
    if ([a3 canAppWithConfiguration:a2 handleNode:v13])
    {
      break;
    }

LABEL_5:
    ++v8;
    if (v12 == v7)
    {
      return v6;
    }
  }

  v14 = [v13 itemIdentifier];
  v15 = v14;
  if (v6[2])
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
    if (v17)
    {
      v18 = *(v6[7] + 8 * v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v19 = v15;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA0290;
      *(inited + 32) = v11;
      v42 = v18;

      v21 = v11;
      specialized Array.append<A>(contentsOf:)(inited);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, v19, isUniquelyReferenced_nonNull_native);

      a3 = v40;
LABEL_27:
      v7 = v38;
      a1 = v39;
      v9 = v37;
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  a1 = swift_allocObject();
  *(a1 + 16) = xmmword_249BA0290;
  *(a1 + 32) = v11;
  v41 = v11;
  a3 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v15;
  a2 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
  v25 = v6[2];
  v26 = (v24 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    goto LABEL_30;
  }

  v28 = v24;
  if (v6[3] >= v27)
  {
    if (a3)
    {
      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v28)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    v6[(a2 >> 6) + 8] |= 1 << a2;
    *(v6[6] + 8 * a2) = v23;
    *(v6[7] + 8 * a2) = a1;

    v31 = v6[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_31;
    }

    v6[2] = v33;
    goto LABEL_26;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, a3);
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
  if ((v28 & 1) == (v30 & 1))
  {
    a2 = v29;
    if ((v28 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_22:
    *(v6[7] + 8 * a2) = a1;

LABEL_26:
    a3 = v40;
    a2 = v35;
    goto LABEL_27;
  }

  type metadata accessor for NSFileProviderItemIdentifier(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t type metadata completion function for DOCSmartFolderInputFile()
{
  result = type metadata accessor for UTType();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t DOCPresentationPreheatable<>.doc_preheatForPresenting(completion:)(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v2, static UIViewController.associatedObjectStorageKey, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd);
  swift_getKeyPath();
  v7 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v6) + 0x78))(&v15);

  if (v15)
  {
  }

  else
  {
    swift_dynamicCastObjCProtocolUnconditional();
    v8 = static UIViewController.associatedObjectStorageKey;
    v9 = v3;
    v10 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v9, v8, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd);
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v12 = swift_allocObject();
    *(v12 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v12 + 32) = MEMORY[0x277D84F90];
    *(v12 + 40) = 0;
    swift_unknownObjectWeakAssign();
    v15 = v12;
    (*((*v7 & *v10) + 0x80))(&v15, KeyPath);
  }

  v13 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v3, static UIViewController.associatedObjectStorageKey, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd);
  swift_getKeyPath();
  (*((*v7 & *v13) + 0x78))(&v15);

  if (!v15)
  {
    return a1();
  }

  DOCPresentationPreheatController.performOrRunAfterPreheat(_:)(a1, a2);
}

uint64_t UIViewController.doc_presentationPreheatController.getter()
{
  v1 = v0;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v0, static UIViewController.associatedObjectStorageKey, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd);
  swift_getKeyPath();
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x78))(&v11);

  if (v11)
  {
  }

  else if (swift_dynamicCastObjCProtocolConditional())
  {
    v4 = static UIViewController.associatedObjectStorageKey;
    v5 = v1;
    v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v5, v4, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd);
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v8 = swift_allocObject();
    *(v8 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v8 + 32) = MEMORY[0x277D84F90];
    *(v8 + 40) = 0;
    swift_unknownObjectWeakAssign();
    v11 = v8;
    (*((*v3 & *v6) + 0x80))(&v11, KeyPath);
  }

  v9 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v1, static UIViewController.associatedObjectStorageKey, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd);
  swift_getKeyPath();
  (*((*v3 & *v9) + 0x78))(&v11);

  return v11;
}

void DOCPresentationPreheatable<>.doc_preheatDidFinish()()
{
  v1 = v0;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v0, static UIViewController.associatedObjectStorageKey, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd);
  swift_getKeyPath();
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x78))(&v10);

  if (v10)
  {
  }

  else
  {
    swift_dynamicCastObjCProtocolUnconditional();
    v4 = static UIViewController.associatedObjectStorageKey;
    v5 = v1;
    v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v5, v4, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd);
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v8 = swift_allocObject();
    *(v8 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v8 + 32) = MEMORY[0x277D84F90];
    *(v8 + 40) = 0;
    swift_unknownObjectWeakAssign();
    v10 = v8;
    (*((*v3 & *v6) + 0x80))(&v10, KeyPath);
  }

  v9 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v1, static UIViewController.associatedObjectStorageKey, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd);
  swift_getKeyPath();
  (*((*v3 & *v9) + 0x78))(&v10);

  if (v10)
  {
    DOCPresentationPreheatController.endWithState(_:)(2);
  }
}

void UIViewController.objc_doc_preheatForPresenting(completion:)(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v6 = v3;
    DOCPresentationPreheatable<>.doc_preheatForPresenting(completion:)(a1, a2);
  }

  else
  {
    a1();
  }
}

Swift::Void __swiftcall UIViewController.objc_doc_preheatDidFinish()()
{
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v1 = v0;
    DOCPresentationPreheatable<>.doc_preheatDidFinish()();
  }
}

uint64_t key path getter for UIViewController.doc_presentationPreheatController : UIViewController@<X0>(uint64_t *a1@<X8>)
{
  result = UIViewController.doc_presentationPreheatController.getter();
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCPresentationPreheatController.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCPresentationPreheatController.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

void DOCPresentationPreheatController.performOrRunAfterPreheat(_:)(void (*a1)(void), uint64_t a2)
{
  if (*(v2 + 40) == 2)
  {
    a1();
  }

  else
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_beginAccess();
    v6 = *(v2 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 32) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
      *(v2 + 32) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v10[5] = v5;
    *(v2 + 32) = v6;
    swift_endAccess();
    DOCPresentationPreheatController.startIfNecessary()();
  }
}

void DOCPresentationPreheatController.startIfNecessary()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v20 = &v25 - v19;
  if (!*(v1 + 40))
  {
    v27 = v18;
    v28 = v7;
    v29 = v8;
    v30 = v3;
    *(v1 + 40) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong doc_startPreheatIfNecessary];
      swift_unknownObjectRelease();
    }

    type metadata accessor for OS_dispatch_queue();
    v26 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v22 = *(v27 + 8);
    v22(v15, v12);
    aBlock[4] = partial apply for closure #1 in DOCPresentationPreheatController.startIfNecessary();
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_1;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v26;
    MEMORY[0x24C1FB940](v20, v11, v6, v23);
    _Block_release(v23);

    (*(v30 + 8))(v6, v2);
    (*(v29 + 8))(v11, v28);
    v22(v20, v12);
  }
}

uint64_t DOCPresentationPreheatController.endWithState(_:)(uint64_t result)
{
  if (*(v1 + 40) != 2)
  {
    *(v1 + 40) = result;
    if (result == 2)
    {
      result = swift_beginAccess();
      v2 = *(v1 + 32);
      *(v1 + 32) = MEMORY[0x277D84F90];
      v3 = *(v2 + 16);
      if (v3)
      {
        v4 = 0;
        v5 = v2 + 40;
        while (v4 < *(v2 + 16))
        {
          ++v4;
          v6 = *(v5 - 8);

          v6(v7);

          v5 += 16;
          if (v3 == v4)
          {
          }
        }

        __break(1u);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t DOCPresentationPreheatController.__deallocating_deinit()
{
  outlined destroy of weak DOCPresentationPreheatable?(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for DOCPresentationPreheatController.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DOCPresentationPreheatController.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type DOCPresentationPreheatController.State and conformance DOCPresentationPreheatController.State()
{
  result = lazy protocol witness table cache variable for type DOCPresentationPreheatController.State and conformance DOCPresentationPreheatController.State;
  if (!lazy protocol witness table cache variable for type DOCPresentationPreheatController.State and conformance DOCPresentationPreheatController.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCPresentationPreheatController.State and conformance DOCPresentationPreheatController.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

id one-time initialization function for blank()
{
  result = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  static DOCSidebarIcon.blank = result;
  byte_27EF185B0 = 0;
  return result;
}

DocumentManagerExecutables::DOCSidebarIcon __swiftcall DOCSidebarIcon.init(image:requireHierarchicalColors:)(DocumentManagerExecutables::DOCSidebarIcon image, Swift::Bool requireHierarchicalColors)
{
  v2 = requireHierarchicalColors;
  image.requireHierarchicalColors = v2;
  return image;
}

uint64_t *DOCSidebarIcon.blank.unsafeMutableAddressor()
{
  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  return &static DOCSidebarIcon.blank;
}

uint64_t static DOCSidebarIcon.blank.getter()
{
  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DOCSidebarIcon.blank;
  v1 = static DOCSidebarIcon.blank;
  return v0;
}

void static DOCSidebarIcon.blank.setter(uint64_t a1, char a2)
{
  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static DOCSidebarIcon.blank;
  static DOCSidebarIcon.blank = a1;
  byte_27EF185B0 = a2 & 1;
}

uint64_t (*static DOCSidebarIcon.blank.modify())()
{
  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

id key path getter for static DOCSidebarIcon.blank : DOCSidebarIcon.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DOCSidebarIcon.blank;
  v3 = byte_27EF185B0;
  *a1 = static DOCSidebarIcon.blank;
  *(a1 + 8) = v3;

  return v2;
}

void key path setter for static DOCSidebarIcon.blank : DOCSidebarIcon.Type(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = one-time initialization token for blank;
  v3 = *a1;
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static DOCSidebarIcon.blank;
  static DOCSidebarIcon.blank = v3;
  byte_27EF185B0 = v1;
}

id DOCSidebarIcon.Metrics.init(traitCollection:)(void *a1)
{
  specialized static CGSize.doc_preferredSourceListIconSize(for:)(a1);
  v2 = [objc_opt_self() unspecifiedConfiguration];

  return v2;
}

uint64_t DOCSidebarItemContentValueBinding.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DOCSidebarItemContentValueBinding.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static DOCSidebarItemContentValueBinding.titleNumberOfLinesDefault(for:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v3 = [objc_opt_self() mainScreen];
    v2 = [v3 traitCollection];
  }

  v4 = a1;
  v5 = [v2 preferredContentSizeCategory];
  v6 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v6)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t DOCSidebarItemContentValueBinding.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DOCSidebarItemContentValueBinding.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DOCSidebarItemContentValueBinding.apply(to:)()
{
  if ((*(v0 + 24) & 1) == 0)
  {

    if (String.count.getter() <= 0)
    {
    }
  }

  UIListContentConfiguration.text.setter();
  v1 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v1(v6, 0);

  UIListContentConfiguration.secondaryText.setter();
  v2 = *(v0 + 56);
  UIListContentConfiguration.image.setter();
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  v3 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
  v3(v6, 0);
  v4 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.accessibilityIgnoresInvertColors.setter();
  return v4(v6, 0);
}

void __swiftcall DOCSidebarItemContentValueBinding.init()(DocumentManagerExecutables::DOCSidebarItemContentValueBinding *__return_ptr retstr)
{
  specialized DOCSidebarItemContentValueBinding.init()(v4);
  v2 = v4[1];
  retstr->title = v4[0];
  *&retstr->titleNumberOfLines = v2;
  v3 = v4[3];
  retstr->subtitle = v4[2];
  *&retstr->iconAccessibilityInvertColorsEnabled = v3;
}

uint64_t default argument 1 of DOCSidebarItemContentValueBinding.init(title:titleNumberOfLines:titleHiddenForEditing:subtitle:iconAccessibilityInvertColorsEnabled:icon:)()
{
  v0 = [objc_opt_self() mainScreen];
  v1 = [v0 traitCollection];

  v2 = [v1 preferredContentSizeCategory];
  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v3)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

id default argument 5 of DOCSidebarItemContentValueBinding.init(title:titleNumberOfLines:titleHiddenForEditing:subtitle:iconAccessibilityInvertColorsEnabled:icon:)()
{
  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DOCSidebarIcon.blank;

  return v0;
}

void __swiftcall DOCSidebarItemContentValueBinding.init(title:titleNumberOfLines:titleHiddenForEditing:subtitle:iconAccessibilityInvertColorsEnabled:icon:)(DocumentManagerExecutables::DOCSidebarItemContentValueBinding *__return_ptr retstr, Swift::String title, Swift::Int titleNumberOfLines, Swift::Bool titleHiddenForEditing, Swift::String_optional subtitle, Swift::Bool iconAccessibilityInvertColorsEnabled, UIImage icon)
{
  retstr->title = title;
  retstr->titleNumberOfLines = titleNumberOfLines;
  retstr->titleHiddenForEditing = titleHiddenForEditing;
  retstr->subtitle = subtitle;
  retstr->iconAccessibilityInvertColorsEnabled = iconAccessibilityInvertColorsEnabled;
  retstr->icon = icon;
}

double protocol witness for DOCCellContentConfigurationBindings.init() in conformance DOCSidebarItemContentValueBinding@<D0>(_OWORD *a1@<X8>)
{
  specialized DOCSidebarItemContentValueBinding.init()(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t DOCSidebarItemCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for DOCSidebarItemCell.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCSidebarItemCell.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = direct field offset for DOCSidebarItemCell.delegate;
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

void DOCSidebarItemCell.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t DOCSidebarItemCell.isRepresentingFolder.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.isRepresentingFolder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarItemCell.isRepresentingFolder.setter(char a1)
{
  v3 = direct field offset for DOCSidebarItemCell.isRepresentingFolder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL DOCSidebarItemCell.isRepresentingTag.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.itemTag;
  swift_beginAccess();
  return *(v0 + v1) != 0;
}

uint64_t DOCSidebarItemCell.isRepresentingUSB.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.isRepresentingUSB;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarItemCell.isRepresentingUSB.setter(char a1)
{
  v3 = direct field offset for DOCSidebarItemCell.isRepresentingUSB;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Void __swiftcall DOCSidebarItemCell.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v26.receiver = v0;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_prepareForReuse);
  v2 = &v0[direct field offset for DOCSidebarItemCell.delegate];
  swift_beginAccess();
  *(v2 + 1) = 0;
  swift_unknownObjectWeakAssign();
  DOCSidebarItemCell.unseenIndicatorState.setter(0);
  v25.receiver = v0;
  v25.super_class = ObjectType;
  LODWORD(v2) = objc_msgSendSuper2(&v25, sel_isEditing);
  v24.receiver = v0;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, sel_setEditing_, 0);
  v23.receiver = v0;
  v23.super_class = ObjectType;
  if (v2 != objc_msgSendSuper2(&v23, sel_isEditing))
  {
    v22.receiver = v0;
    v22.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v22, sel_isEditing);
    DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
    v4 = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
    if (v4)
    {
      [v4 setUserInteractionEnabled_];
    }

    DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(v3);
  }

  v21.receiver = v0;
  v21.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v21, sel_isSelected);
  v20.receiver = v0;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_setSelected_, 0);
  v19.receiver = v0;
  v19.super_class = ObjectType;
  if (v5 != objc_msgSendSuper2(&v19, sel_isSelected))
  {
    [v0 setNeedsUpdateConfiguration];
  }

  v6 = direct field offset for DOCSidebarItemCell.sourceIsEnabled;
  swift_beginAccess();
  v7 = v0[v6];
  v0[v6] = 2;
  if (v7 != 2)
  {
    specialized DOCSidebarCell.removeAccessoryItem(named:)(0xD000000000000013, 0x8000000249BC8990);
  }

  v8 = direct field offset for DOCSidebarItemCell.isRepresentingFolder;
  swift_beginAccess();
  v0[v8] = 0;
  v9 = direct field offset for DOCSidebarItemCell.isRepresentingUSB;
  swift_beginAccess();
  v0[v9] = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v10 = direct field offset for DOCSidebarItemCell.iconProvider;
  swift_beginAccess();
  outlined assign with copy of DOCSidebarItemIconProvider?(v17, &v0[v10]);
  swift_endAccess();
  DOCSidebarItemCell.updateContentViewIcons()();
  outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd);
  v11 = direct field offset for DOCSidebarItemCell.itemTag;
  swift_beginAccess();
  v12 = *&v0[v11];
  *&v0[v11] = 0;

  v13 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v14 = *&v0[v13];
  *&v0[v13] = 0;
  if (v14)
  {
    DOCSidebarItemCell.ejectionStateDidChange()();
  }

  v15 = *&v0[direct field offset for DOCSidebarItemCell.ejectionButton];
  *&v0[direct field offset for DOCSidebarItemCell.ejectionButton] = 0;
  if (v15)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  *&v0[direct field offset for DOCSidebarItemCell.cachedEjectAccesory] = 0;

  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v16 = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v16)
  {
    [v16 setHidden_];
  }

  [v0 setUserInteractionEnabled_];
}

uint64_t DOCSidebarItemCell.unseenIndicatorState.setter(unsigned __int8 a1)
{
  v3 = direct field offset for DOCSidebarItemCell.unseenIndicatorState;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    v6 = DOCSidebarItemCell.UnseenIndicatorState.accessory.getter(a1);
    v7 = *(v1 + direct field offset for DOCSidebarItemCell.seenIndicatorAccessory);
    *(v1 + direct field offset for DOCSidebarItemCell.seenIndicatorAccessory) = v6;

    DOCSidebarItemCell.seenIndicatorAccessory.didset(v7);
  }

  return result;
}

void DOCSidebarItemCell.isEditing.setter(char a1)
{
  ObjectType = swift_getObjectType();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v10, sel_isEditing);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_setEditing_, a1 & 1);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  if (v4 != objc_msgSendSuper2(&v8, sel_isEditing))
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v7, sel_isEditing);
    DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
    v6 = *&v1[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
    if (v6)
    {
      [v6 setUserInteractionEnabled_];
    }

    DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(v5);
  }
}

id DOCSidebarItemCell.isSelected.setter(char a1)
{
  ObjectType = swift_getObjectType();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, sel_isSelected);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_setSelected_, a1 & 1);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, sel_isSelected);
  if (v4 != result)
  {
    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t DOCSidebarItemCell.sourceIsEnabled.setter(int a1)
{
  v3 = a1;
  v4 = direct field offset for DOCSidebarItemCell.sourceIsEnabled;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v3 == 2)
  {
    if (v6 != 2)
    {
      return specialized DOCSidebarCell.removeAccessoryItem(named:)(0xD000000000000013, 0x8000000249BC8990);
    }
  }

  else if (v6 == 2 || ((v6 ^ a1) & 1) != 0)
  {
    v7 = DOCSidebarItemCell.editingAccessorySwitch.getter();
    v8 = a1 & 1;
    *(v7 + direct field offset for DOCSidebarItemCell.SourceEnabledSwitchAccessory.isOn) = v8;
    v9 = direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded;
    swift_beginAccess();
    v10 = *(v7 + v9);
    if (v10)
    {
      v11 = v10;
      [v11 setOn:v8 animated:0];
    }

    specialized DOCSidebarCell.addAccessoryItem(_:)(v12);
  }

  return result;
}

uint64_t DOCSidebarItemCell.iconProvider.setter(uint64_t a1)
{
  v3 = direct field offset for DOCSidebarItemCell.iconProvider;
  swift_beginAccess();
  outlined assign with copy of DOCSidebarItemIconProvider?(a1, v1 + v3);
  swift_endAccess();
  DOCSidebarItemCell.updateContentViewIcons()();
  return outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd);
}

void DOCSidebarItemCell.ejectionController.setter(void *a1)
{
  v3 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (!v4)
    {
      v9 = a1;
LABEL_9:
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      goto LABEL_10;
    }

    v5 = v1;
    type metadata accessor for DOCEjectionController();
    v6 = a1;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {

      a1 = v7;
LABEL_11:

      return;
    }

    if (*(v5 + v3))
    {
      goto LABEL_9;
    }

LABEL_10:
    DOCSidebarItemCell.ejectionStateDidChange()();

    goto LABEL_11;
  }

  if (v4)
  {
    goto LABEL_10;
  }
}

void *DOCSidebarItemCell.inlineEditingTextField.getter()
{
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v1 = *(v0 + direct field offset for DOCSidebarItemCell._inlineEditingTextField);
  v2 = v1;
  return v1;
}

void @objc DOCSidebarItemCell.prepareForReuse()(void *a1)
{
  v1 = a1;
  DOCSidebarItemCell.prepareForReuse()();
}

Swift::Void __swiftcall DOCSidebarItemCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_traitCollectionDidChange_, isa, v7);
  DOCSidebarItemCell.updateContentViewIcons()();
  v10 = [v1 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  DOCSidebarItemCell.updateEjectAccessoryItem(with:)();
  (*(v5 + 8))(v9, v4);
  DOCSidebarItemCell.updateProviderSyncStateAccessoryItem()();
  DOCSidebarItemCell.updateRemovableMediaStateAccessoryItem()();
  DOCSidebarItemCell.inlineEditingLayoutTraitCollectionDidChange(_:)(isa);
}

id DOCSidebarItemCell.updateContentViewIcons()()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState();
  v49 = *(v2 - 8);
  v50 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = specialized static CGSize.doc_preferredSourceListIconSize(for:)(v7);
  v10 = v9;
  v11 = objc_opt_self();
  isEscapingClosureAtFileLocation = [v11 unspecifiedConfiguration];

  v13 = UICollectionViewListCell.preferredIconColor.getter();
  if (!v13)
  {
    v14 = [v1 tintColor];
    if (v14)
    {
      goto LABEL_4;
    }

    v13 = [objc_opt_self() systemBlueColor];
  }

  v14 = v13;
LABEL_4:
  v15 = v1 + direct field offset for DOCSidebarItemCell.iconProvider;
  swift_beginAccess();
  if (*(v15 + 24))
  {
    outlined init with copy of DOCSidebarItemIconProvider(v15, aBlock);
    v16 = v53;
    v17 = v54;
    __swift_project_boxed_opaque_existential_1(aBlock, v53);
    v18 = (*(v17 + 1))(isEscapingClosureAtFileLocation, v1, v14, v16, v17, v8, v10, -12.0);
    LOBYTE(v15) = v19;
    v20 = __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  else
  {
    if (one-time initialization token for blank != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    LOBYTE(v15) = byte_27EF185B0;
    v20 = static DOCSidebarIcon.blank;
    v18 = v20;
  }

  v51 = &v46;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v23 = &v46 - 10;
  *(&v46 - 8) = v1;
  *(&v46 - 7) = v8;
  *(&v46 - 6) = v10;
  *(&v46 - 5) = isEscapingClosureAtFileLocation;
  *(&v46 - 4) = 0xC028000000000000;
  *(&v46 - 3) = v18;
  *(&v46 - 16) = v15 & 1;
  *(&v46 - 1) = v14;
  result = [v1 window];
  if (!result)
  {
    goto LABEL_13;
  }

  MEMORY[0x28223BE20](v26, v27);
  v28 = &v46 - 6;
  *(&v46 - 4) = partial apply for closure #1 in DOCSidebarItemCell.updateContentViewIcons();
  *(&v46 - 3) = v23;
  *(&v46 - 2) = v1;
  while (1)
  {
    v23 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = closure #1 in DOCSidebarCell.updateContentBindings(_:)specialized partial apply;
    *(v15 + 24) = v28;
    v1 = swift_allocObject();
    v1[2] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v1[3] = v15;
    v54 = thunk for @callee_guaranteed () -> ()partial apply;
    v55 = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    v53 = &block_descriptor_223;
    v6 = _Block_copy(aBlock);
    v11 = v55;

    [v23 performWithoutAnimation_];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    v29 = MEMORY[0x28223BE20](result, v25);
    v28 = &v46 - 6;
    *(&v46 - 4) = partial apply for closure #1 in DOCSidebarItemCell.updateContentViewIcons();
    *(&v46 - 3) = v23;
    *(&v46 - 2) = v1;
    v30 = [v1 window];
    if (v30)
    {

      v31 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68);
      swift_beginAccess();
      v32 = [v18 isSymbolImage];
      v33 = direct field offset for DOCSidebarItemCell.itemTag;
      swift_beginAccess();
      if (*(v1 + v33) || (v32 & 1) == 0)
      {
        v39 = [v18 imageWithRenderingMode_];
      }

      else
      {
        if (v15)
        {
          v34 = objc_opt_self();
          v48 = isEscapingClosureAtFileLocation;
          v35 = [v34 tintColor];
          v36 = [v11 configurationWithHierarchicalColor_];
          v47 = v36;

          v37 = v48;
          v38 = [v48 configurationByApplyingConfiguration_];
        }

        else
        {
          v38 = isEscapingClosureAtFileLocation;
        }

        v40 = [v18 imageWithConfiguration_];
        if (v15)
        {
          v41 = v40;

          v39 = v41;
        }

        else
        {
          v42 = v40;
          v43 = [v40 imageWithRenderingMode_];

          v39 = v43;
        }
      }

      v44 = *(v31 + 7);
      *(v31 + 7) = v39;

      v31[48] = 0;
      v31[48] = *(v1 + v33) != 0;
      swift_endAccess();
      v45 = [v1 _bridgedConfigurationState];
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v6);
      return (*(v49 + 8))(v6, v50);
    }
  }

  return result;
}

uint64_t DOCSidebarItemCell.updateEjectAccessoryItem(with:)()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v50 = &v43 - v7;
  v51 = type metadata accessor for UIListContentConfiguration();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v8);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration.Size();
  v48 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = direct field offset for DOCSidebarItemCell.ejectionButton;
  v16 = *&v0[direct field offset for DOCSidebarItemCell.ejectionButton];
  if (v16)
  {
    v17 = direct field offset for DOCSidebarItemCell.cachedEjectAccesory;
    v18 = *&v0[direct field offset for DOCSidebarItemCell.cachedEjectAccesory];
    if (v18)
    {
      v19 = *(v18 + direct field offset for DOCSidebarItemCell.EjectAccessoryItem.ejectButton);
      type metadata accessor for DOCEjectButton();
      v20 = v16;
      v21 = v19;
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v23 = v16;
    }

    type metadata accessor for DOCSidebarItemCell.EjectAccessoryItem(0);
    swift_allocObject();
    *&v1[v17] = DOCSidebarItemCell.EjectAccessoryItem.init(ejectButton:)(v16);

    specialized DOCSidebarCell.removeAccessoryItem(named:)(0x7463656A65, 0xE500000000000000);
LABEL_7:
  }

  v24 = [v1 traitCollection];
  v25 = [v24 sourceOutlineStyle];

  v26 = UICellConfigurationState.isSelected.getter();
  v27 = *&v1[direct field offset for DOCSidebarItemCell.cachedEjectAccesory];
  if (v27 && v26 & 1 | (v25 == 1))
  {

    specialized DOCSidebarCell.addAccessoryItem(_:)(v28);
    v29 = *&v1[v15];
    v30 = MEMORY[0x277D85000];
    if (v29)
    {
      (*(v48 + 104))(v14, *MEMORY[0x277D75030], v10);
      v31 = *((*v30 & *v29) + 0x88);
      v32 = v29;
      v31(v14);
    }

    v33 = [objc_opt_self() tertiaryLabelColor];
    MEMORY[0x24C1FBB10](v52);
    v34 = v49;
    v35 = (v49 + 56);
    v36 = v51;
    if (v52[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
      v37 = v50;
      v38 = swift_dynamicCast();
      (*(v34 + 56))(v37, v38 ^ 1u, 1, v36);
      if ((*(v34 + 48))(v37, 1, v36) != 1)
      {
        v39 = v44;
        (*(v34 + 32))(v44, v37, v36);
        v40 = v45;
        UIListContentConfiguration.imageProperties.getter();
        isa = UIListContentConfiguration.ImageProperties.resolvedTintColor(for:)(v33).super.isa;

        (*(v46 + 8))(v40, v47);
        (*(v34 + 8))(v39, v36);
        v33 = isa;
LABEL_20:
        (*((*v30 & **(v27 + direct field offset for DOCSidebarItemCell.EjectAccessoryItem.ejectButton)) + 0xF0))(v33);
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v52, &_s5UIKit22UIContentConfiguration_pSgMd);
      v37 = v50;
      (*v35)(v50, 1, 1, v36);
    }

    outlined destroy of CharacterSet?(v37, &_s5UIKit26UIListContentConfigurationVSgMd);
    goto LABEL_20;
  }

  return specialized DOCSidebarCell.removeAccessoryItem(named:)(0x7463656A65, 0xE500000000000000);
}

uint64_t DOCSidebarItemCell.updateProviderSyncStateAccessoryItem()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v23[-1] - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23[-1] - v6;
  result = specialized DOCSidebarCell.accessoryItem(named:)(0xD000000000000013, 0x8000000249BC91D0);
  if (result)
  {
    type metadata accessor for DOCSidebarItemCell.ProviderSyncStateAccessoryItem(0);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = direct field offset for DOCSidebarItemCell.ProviderSyncStateAccessoryItem.accessoryView;
      v11 = v9;
      v12 = *(v9 + direct field offset for DOCSidebarItemCell.ProviderSyncStateAccessoryItem.accessoryView);
      v13 = UICollectionViewListCell.preferredIconColor.getter();
      v14 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v12) + 0xB8))(v13);

      v15 = *(v11 + v10);
      MEMORY[0x24C1FBB10](v23);
      if (v23[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
        v16 = type metadata accessor for UIListContentConfiguration();
        v17 = swift_dynamicCast();
        v18 = *(v16 - 8);
        (*(v18 + 56))(v3, v17 ^ 1u, 1, v16);
        if ((*(v18 + 48))(v3, 1, v16) != 1)
        {
          UIListContentConfiguration.imageProperties.getter();
          (*(v18 + 8))(v3, v16);
          v19 = 0;
LABEL_11:
          v21 = type metadata accessor for UIListContentConfiguration.ImageProperties();
          (*(*(v21 - 8) + 56))(v7, v19, 1, v21);
          (*((*v14 & *v15) + 0xD0))(v7);
        }
      }

      else
      {
        outlined destroy of CharacterSet?(v23, &_s5UIKit22UIContentConfiguration_pSgMd);
        v20 = type metadata accessor for UIListContentConfiguration();
        (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
      }

      outlined destroy of CharacterSet?(v3, &_s5UIKit26UIListContentConfigurationVSgMd);
      v19 = 1;
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t DOCSidebarItemCell.updateRemovableMediaStateAccessoryItem()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v23[-1] - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23[-1] - v6;
  result = specialized DOCSidebarCell.accessoryItem(named:)(0xD000000000000015, 0x8000000249BC91B0);
  if (result)
  {
    type metadata accessor for DOCSidebarItemCell.RemoveableItemStateAccessoryItem(0);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = direct field offset for DOCSidebarItemCell.RemoveableItemStateAccessoryItem.accessoryView;
      v11 = v9;
      v12 = *(v9 + direct field offset for DOCSidebarItemCell.RemoveableItemStateAccessoryItem.accessoryView);
      v13 = UICollectionViewListCell.preferredIconColor.getter();
      v14 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v12) + 0xD8))(v13);

      v15 = *(v11 + v10);
      MEMORY[0x24C1FBB10](v23);
      if (v23[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
        v16 = type metadata accessor for UIListContentConfiguration();
        v17 = swift_dynamicCast();
        v18 = *(v16 - 8);
        (*(v18 + 56))(v3, v17 ^ 1u, 1, v16);
        if ((*(v18 + 48))(v3, 1, v16) != 1)
        {
          UIListContentConfiguration.imageProperties.getter();
          (*(v18 + 8))(v3, v16);
          v19 = 0;
LABEL_11:
          v21 = type metadata accessor for UIListContentConfiguration.ImageProperties();
          (*(*(v21 - 8) + 56))(v7, v19, 1, v21);
          (*((*v14 & *v15) + 0xF0))(v7);
        }
      }

      else
      {
        outlined destroy of CharacterSet?(v23, &_s5UIKit22UIContentConfiguration_pSgMd);
        v20 = type metadata accessor for UIListContentConfiguration();
        (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
      }

      outlined destroy of CharacterSet?(v3, &_s5UIKit26UIListContentConfigurationVSgMd);
      v19 = 1;
      goto LABEL_11;
    }
  }

  return result;
}

id DOCSidebarItemCell.inlineEditingLayoutTraitCollectionDidChange(_:)(void *a1)
{
  v3 = [v1 traitCollection];
  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v10 = static UITraitCollection.Traits.sizeCategory;
  v11 = qword_27EEE9CC0;

  _StringGuts.grow(_:)(18);

  *v9 = 0x6172287469617254;
  *&v9[8] = 0xEF3A65756C615677;
  v8 = 0;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v4);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v5 = *v9;
  *v9 = 0;
  *&v9[8] = v5;

  specialized OptionSet<>.insert(_:)(&v8, v10, *(&v10 + 1), v11);

  outlined destroy of UITraitCollection.Traits(&v10);
  v6 = UITraitCollection.doc_hasChanged(_:comparesTo:)(v9, a1);

  if (v6)
  {
    return DOCSidebarItemCell.updateInlineEditingLeadingInset()();
  }

  return result;
}

void @objc DOCSidebarItemCell.traitCollectionDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v11 = a3;
  v12 = a1;
  objc_msgSendSuper2(&v14, sel_traitCollectionDidChange_, v11);
  DOCSidebarItemCell.updateContentViewIcons()();
  v13 = [v12 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  DOCSidebarItemCell.updateEjectAccessoryItem(with:)();
  (*(v7 + 8))(v10, v6);
  DOCSidebarItemCell.updateProviderSyncStateAccessoryItem()();
  DOCSidebarItemCell.updateRemovableMediaStateAccessoryItem()();
  DOCSidebarItemCell.inlineEditingLayoutTraitCollectionDidChange(_:)(a3);
}

id DOCSidebarItemCell.updateConfiguration(using:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel__bridgedUpdateConfigurationUsingState_, isa);

  return DOCSidebarItemCell.updateContentViewIcons()();
}

uint64_t @objc DOCSidebarItemCell.updateConfiguration(using:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UICellConfigurationState();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v11.receiver = v8;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel__bridgedUpdateConfigurationUsingState_, isa);

  DOCSidebarItemCell.updateContentViewIcons()();
  return (*(v4 + 8))(v7, v3);
}

uint64_t DOCSidebarItemCell.iconProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for DOCSidebarItemCell.iconProvider;
  swift_beginAccess();
  return outlined init with copy of DOCGridLayout.Spec?(v1 + v3, a1, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd);
}

uint64_t key path setter for DOCSidebarItemCell.iconProvider : DOCSidebarItemCell(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of DOCGridLayout.Spec?(a1, v6, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd);
  v3 = *a2;
  v4 = direct field offset for DOCSidebarItemCell.iconProvider;
  swift_beginAccess();
  outlined assign with copy of DOCSidebarItemIconProvider?(v6, v3 + v4);
  swift_endAccess();
  DOCSidebarItemCell.updateContentViewIcons()();
  return outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd);
}

id (*DOCSidebarItemCell.iconProvider.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSidebarItemCell.iconProvider.modify;
}

id DOCSidebarItemCell.iconProvider.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return DOCSidebarItemCell.updateContentViewIcons()();
  }

  return result;
}

void *DOCSidebarItemCell.RawImageIconProvider.icon.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t DOCSidebarItemCell.RawImageIconProvider.__allocating_init(icon:)(id a1, char a2)
{
  result = swift_allocObject();
  if (!a1)
  {
    v5 = result;
    if (one-time initialization token for blank != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    a2 = byte_27EF185B0;
    a1 = static DOCSidebarIcon.blank;
    result = v5;
  }

  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  return result;
}

uint64_t DOCSidebarItemCell.RawImageIconProvider.init(icon:)(id a1, char a2)
{
  if (!a1)
  {
    if (one-time initialization token for blank != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    a2 = byte_27EF185B0;
    a1 = static DOCSidebarIcon.blank;
  }

  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return v2;
}

uint64_t DOCSidebarItemCell.TagIconProvider.__allocating_init(tag:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = [a1 labelIndex] == 0;
  return v2;
}

uint64_t DOCSidebarItemCell.TagIconProvider.init(tag:)(void *a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = [a1 labelIndex] == 0;
  return v1;
}

id DOCSidebarItemCell.TagIconProvider.icon(with:cell:variant:)(double a1, double a2, double a3, uint64_t a4, void *a5)
{
  v7 = [objc_opt_self() requestForTag:*(v5 + 16) tagDimension:a1 + a3];
  [v7 setAllowUnsizedSymbolImages_];
  if (*(v5 + 24) == 1)
  {
    specialized DOCSidebarItemCell.TagIconProvider.configureRequestForNoneTag(_:cell:)(v7, a5);
  }

  else
  {
    v8 = [a5 traitCollection];
    v9 = [v8 sourceOutlineStyle];

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = [objc_opt_self() secondarySystemBackgroundColor];
    }

    [v7 setSelectionOutlineColor_];
  }

  v11 = [objc_opt_self() shared];
  v12 = [v11 renderImageWithRequest_];

  return v12;
}

uint64_t DOCSidebarItemCell.TagIconProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void closure #1 in DOCSidebarItemCell.updateContentViewIcons()(uint64_t a1, uint64_t a2, void *a3, id a4, char a5)
{
  v10 = [a4 isSymbolImage];
  v11 = direct field offset for DOCSidebarItemCell.itemTag;
  swift_beginAccess();
  if (*(a2 + v11) || (v10 & 1) == 0)
  {
    v17 = [a4 imageWithRenderingMode_];
  }

  else
  {
    if (a5)
    {
      v12 = objc_opt_self();
      v13 = a3;
      v14 = [v12 tintColor];
      v15 = [objc_opt_self() configurationWithHierarchicalColor_];

      v16 = [v13 configurationByApplyingConfiguration_];
    }

    else
    {
      v16 = a3;
    }

    v18 = [a4 imageWithConfiguration_];
    v17 = v18;
    if (a5)
    {
    }

    else
    {
      v19 = [v18 imageWithRenderingMode_];

      v17 = v19;
    }
  }

  *(a1 + 56) = v17;
  *(a1 + 48) = 0;
  *(a1 + 48) = *(a2 + v11) != 0;
}

void *DOCSidebarItemCell.itemTag.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.itemTag;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarItemCell.itemTag.setter(uint64_t a1)
{
  v3 = direct field offset for DOCSidebarItemCell.itemTag;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for DOCSidebarItemCell.title : DOCSidebarItemCell@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - v5;
  specialized DOCSidebarCell.content.getter(&v11 - v5);
  v7 = &v6[*(v3 + 48)];
  v9 = *v7;
  v8 = *(v7 + 1);

  result = outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  *a1 = v9;
  a1[1] = v8;
  return result;
}

void DOCSidebarItemCell.title.setter(void *a1, uint64_t isEscapingClosureAtFileLocation)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for UICellConfigurationState();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v37 = isEscapingClosureAtFileLocation;
  v14 = &selRef_setNavigationTitleForTagListInInfoPanel_;
  v15 = [v2 window];
  if (!v15)
  {
    goto LABEL_5;
  }

  v14 = &v33;
  MEMORY[0x28223BE20](v17, v18);
  v19 = &v33 - 6;
  *(&v33 - 4) = partial apply for closure #1 in DOCSidebarItemCell.title.setter;
  *(&v33 - 3) = v35;
  *(&v33 - 2) = v2;
  while (1)
  {
    a1 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for specialized closure #1 in DOCSidebarCell.updateContentBindings(_:);
    *(v9 + 24) = v19;
    v13 = swift_allocObject();
    *(v13 + 2) = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    *(v13 + 3) = v9;
    aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
    v39 = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_2;
    v20 = _Block_copy(aBlock);
    v10 = v39;

    [a1 performWithoutAnimation_];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v34 = &v33;
    MEMORY[0x28223BE20](v15, v16);
    v19 = &v33 - 6;
    *(&v33 - 4) = partial apply for closure #1 in DOCSidebarItemCell.title.setter;
    *(&v33 - 3) = v35;
    *(&v33 - 2) = v2;
    v21 = [v2 v14[365]];
    if (v21)
    {

      v22 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x68));
      swift_beginAccess();
      if (isEscapingClosureAtFileLocation)
      {
        v23 = a1;
      }

      else
      {
        v23 = 0;
      }

      v24 = 0xE000000000000000;
      if (isEscapingClosureAtFileLocation)
      {
        v24 = isEscapingClosureAtFileLocation;
      }

      *v22 = v23;
      v22[1] = v24;

      v25 = [v2 _bridgedConfigurationState];
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v13);

      (*(v10 + 1))(v13, v9);
      break;
    }

    v14 = v34;
  }

  DOCSidebarItemCell.updateInlineEditingTextFieldContent()();
  [objc_opt_self() sidebar];
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized DOCSidebarCell.content.getter(v8);
  v27 = &v8[*(v5 + 40)];
  v28 = *v27;
  v29 = v27[1];

  outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v30 = MEMORY[0x24C1FAD20](v28, v29);

  v31 = [ObjCClassFromMetadata itemWithTitle_];

  if (!v31)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = MEMORY[0x24C1FAD20](v32);
  }

  [v2 setAccessibilityIdentifier_];
}

void DOCSidebarItemCell.updateInlineEditingTextFieldContent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v26 - v3;
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v5 = *(v0 + direct field offset for DOCSidebarItemCell._inlineEditingTextField);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  specialized DOCSidebarCell.content.getter(v4);
  v7 = &v4[*(v1 + 40)];
  v9 = *v7;
  v8 = v7[1];

  outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v10 = [v6 text];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == v9 && v14 == v8)
  {

    goto LABEL_10;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v16 & 1) == 0)
  {
LABEL_8:

    v17 = MEMORY[0x24C1FAD20](v9, v8);

    [v6 setText_];
  }

LABEL_10:
  v18 = [v6 placeholder];
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v20 != v9 || v22 != v8)
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {

LABEL_18:

      return;
    }

LABEL_17:
    v25 = MEMORY[0x24C1FAD20](v9, v8);

    [v6 setPlaceholder_];

    goto LABEL_18;
  }
}

void (*DOCSidebarItemCell.title.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  v5 = v4;
  a1[3] = v4;
  specialized DOCSidebarCell.content.getter(v4);
  v6 = (v5 + *(v3 + 40));
  v8 = *v6;
  v7 = v6[1];

  outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  *a1 = v8;
  a1[1] = v7;
  return DOCSidebarItemCell.title.modify;
}

uint64_t DOCSidebarItemCell.titleNumberOfLines.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  specialized DOCSidebarCell.content.getter(&v7 - v3);
  v5 = *&v4[*(v1 + 48) + 16];
  outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  return v5;
}

uint64_t key path getter for DOCSidebarItemCell.titleNumberOfLines : DOCSidebarItemCell@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - v5;
  specialized DOCSidebarCell.content.getter(&v9 - v5);
  v7 = *&v6[*(v3 + 48) + 16];
  result = outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  *a1 = v7;
  return result;
}

id DOCSidebarItemCell.titleNumberOfLines.setter(void *a1)
{
  v3 = type metadata accessor for UICellConfigurationState();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  isEscapingClosureAtFileLocation = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  result = [v1 window];
  if (!result)
  {
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v10, v11);
  v12 = &v17[-48];
  *&v17[-32] = partial apply for closure #1 in DOCSidebarItemCell.titleNumberOfLines.setter;
  *&v17[-24] = v17;
  *&v17[-16] = v1;
  while (1)
  {
    v13 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = closure #1 in DOCSidebarCell.updateContentBindings(_:)specialized partial apply;
    *(v3 + 24) = v12;
    v1 = swift_allocObject();
    v1[2] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v1[3] = v3;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_17;
    a1 = _Block_copy(aBlock);

    [v13 performWithoutAnimation_];
    _Block_release(a1);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      break;
    }

    __break(1u);
LABEL_5:
    MEMORY[0x28223BE20](result, v9);
    v12 = &v17[-48];
    *&v17[-32] = partial apply for closure #1 in DOCSidebarItemCell.titleNumberOfLines.setter;
    *&v17[-24] = v17;
    *&v17[-16] = v1;
    v14 = [v1 window];
    if (v14)
    {

      v15 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68);
      swift_beginAccess();
      *(v15 + 2) = a1;
      v16 = [v1 _bridgedConfigurationState];
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(isEscapingClosureAtFileLocation);
      return (*(v4 + 8))(isEscapingClosureAtFileLocation, v3);
    }
  }

  return result;
}

void (*DOCSidebarItemCell.titleNumberOfLines.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  v5 = v4;
  a1[2] = v4;
  specialized DOCSidebarCell.content.getter(v4);
  v6 = *(v5 + *(v3 + 40) + 16);
  outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  *a1 = v6;
  return DOCSidebarItemCell.titleNumberOfLines.modify;
}

void DOCSidebarItemCell.titleNumberOfLines.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  DOCSidebarItemCell.titleNumberOfLines.setter(*a1);

  free(v1);
}

uint64_t key path getter for DOCSidebarItemCell.subtitle : DOCSidebarItemCell@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - v5;
  specialized DOCSidebarCell.content.getter(&v11 - v5);
  v7 = &v6[*(v3 + 48)];
  v9 = *(v7 + 4);
  v8 = *(v7 + 5);

  result = outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  *a1 = v9;
  a1[1] = v8;
  return result;
}

id DOCSidebarItemCell.subtitle.setter(void *a1, uint64_t isEscapingClosureAtFileLocation)
{
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1;
  v20 = isEscapingClosureAtFileLocation;
  result = [v2 window];
  if (!result)
  {
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v12, v13);
  v14 = &v18[-48];
  *&v18[-32] = partial apply for closure #1 in DOCSidebarItemCell.subtitle.setter;
  *&v18[-24] = v18;
  *&v18[-16] = v2;
  while (1)
  {
    v9 = objc_opt_self();
    v2 = swift_allocObject();
    v2[2] = closure #1 in DOCSidebarCell.updateContentBindings(_:)specialized partial apply;
    v2[3] = v14;
    v5 = swift_allocObject();
    *(v5 + 16) = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    *(v5 + 24) = v2;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_29;
    a1 = _Block_copy(aBlock);

    [v9 performWithoutAnimation_];

    _Block_release(a1);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      break;
    }

    __break(1u);
LABEL_5:
    MEMORY[0x28223BE20](result, v11);
    v14 = &v18[-48];
    *&v18[-32] = partial apply for closure #1 in DOCSidebarItemCell.subtitle.setter;
    *&v18[-24] = v18;
    *&v18[-16] = v2;
    v15 = [v2 window];
    if (v15)
    {

      v16 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x68);
      swift_beginAccess();
      *(v16 + 4) = a1;
      *(v16 + 5) = isEscapingClosureAtFileLocation;

      v17 = [v2 _bridgedConfigurationState];
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v9);

      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

void (*DOCSidebarItemCell.subtitle.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  v5 = v4;
  a1[3] = v4;
  specialized DOCSidebarCell.content.getter(v4);
  v6 = v5 + *(v3 + 40);
  v8 = *(v6 + 32);
  v7 = *(v6 + 40);

  outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  *a1 = v8;
  a1[1] = v7;
  return DOCSidebarItemCell.subtitle.modify;
}

void DOCSidebarItemCell.title.modify(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[3];
  if (a2)
  {

    a3(v5, v4);
  }

  else
  {
    a3(*a1, v4);
  }

  free(v6);
}

uint64_t DOCSidebarItemCell.updateAccessoryItems(with:)()
{
  DOCSidebarItemCell.updateEjectAccessoryItem(with:)();
  DOCSidebarItemCell.updateProviderSyncStateAccessoryItem()();

  return DOCSidebarItemCell.updateRemovableMediaStateAccessoryItem()();
}

void *DOCSidebarItemCell.syncStateDomain.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.syncStateDomain;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarItemCell.syncStateDomain.didset(void *a1)
{
  v2 = v1;
  v4 = direct field offset for DOCSidebarItemCell.syncStateDomain;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
    v6 = v5;
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return;
    }

    v5 = *(v2 + v4);
    if (v5)
    {
LABEL_5:
      type metadata accessor for DOCSidebarItemCell.ProviderSyncStateAccessoryItem(0);
      swift_allocObject();
      v9 = v5;
      v10 = specialized DOCSidebarItemCell.ProviderSyncStateAccessoryItem.init(for:)(v9);
      v11 = [objc_opt_self() shared];
      v21 = partial apply for closure #1 in DOCSidebarItemCell.syncStateDomain.didset;
      v22 = v10;
      aBlock = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v20 = &block_descriptor_170;
      v12 = _Block_copy(&aBlock);

      [v11 performAfterLaunch_];
      _Block_release(v12);

      specialized DOCSidebarCell.addAccessoryItem(_:)(v10);
      goto LABEL_10;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (!specialized DOCSidebarCell.accessoryItem(named:)(0xD000000000000013, 0x8000000249BC91D0))
  {
    return;
  }

  type metadata accessor for DOCSidebarItemCell.ProviderSyncStateAccessoryItem(0);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() shared];
    v21 = partial apply for closure #2 in DOCSidebarItemCell.syncStateDomain.didset;
    v22 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v20 = &block_descriptor_167;
    v16 = _Block_copy(&aBlock);

    [v15 performAfterLaunch_];
    _Block_release(v16);

    specialized DOCSidebarCell.removeAccessoryItem(named:)(*(v14 + 16), *(v14 + 24));
  }

LABEL_10:
}

void (*DOCSidebarItemCell.syncStateDomain.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = direct field offset for DOCSidebarItemCell.syncStateDomain;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCSidebarItemCell.syncStateDomain.modify;
}

void vtable thunk for DOCSidebarCellCustomAccessoryItem.__allocating_init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:) dispatching to DOCSidebarItemCell.ProviderSyncStateAccessoryItem.__allocating_init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)()
{
  vtable thunk for DOCSidebarCellCustomAccessoryItem.__allocating_init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:) dispatching to DOCSidebarItemCell.ProviderSyncStateAccessoryItem.__allocating_init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)();
}

{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void *DOCSidebarItemCell.removableMediaStateDomain.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.removableMediaStateDomain;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarItemCell.syncStateDomain.setter(void *a1, uint64_t *a2, void (*a3)(void *))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;
  a3(v7);
}

uint64_t DOCSidebarItemCell.removableMediaStateDomain.didset(void *a1)
{
  v2 = v1;
  v4 = specialized DOCSidebarCell.accessoryItem(named:)(0xD000000000000015, 0x8000000249BC91B0);
  v5 = direct field offset for DOCSidebarItemCell.removableMediaStateDomain;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
    v7 = v6;
    v8 = a1;
    v9 = static NSObject.== infix(_:_:)();

    v6 = *(v2 + v5);
    if (v9)
    {
      if (!v6 || v4)
      {
      }

      goto LABEL_10;
    }

    if (v6)
    {
LABEL_10:
      v10 = one-time initialization token for shared;
      v11 = v6;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = static DOCUSBFormatting.shared;
      v13 = [v11 identifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = (*(*v12 + 160))(v14, v16);

      if (v17)
      {

        type metadata accessor for DOCSidebarItemCell.RemoveableItemStateAccessoryItem(0);
        swift_allocObject();
        v18 = v11;
        v19 = DOCSidebarItemCell.RemoveableItemStateAccessoryItem.init(for:)(v18);
        v20 = [objc_opt_self() shared];
        v31 = partial apply for closure #1 in DOCSidebarItemCell.removableMediaStateDomain.didset;
        v32 = v19;
        aBlock = MEMORY[0x277D85DD0];
        v28 = 1107296256;
        v29 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v30 = &block_descriptor_158;
        v21 = _Block_copy(&aBlock);

        [v20 performAfterLaunch_];
        _Block_release(v21);

        specialized DOCSidebarCell.addAccessoryItem(_:)(v19);
LABEL_18:
      }
    }
  }

  else if (!a1)
  {
  }

  if (specialized DOCSidebarCell.accessoryItem(named:)(0xD000000000000015, 0x8000000249BC91B0))
  {
    type metadata accessor for DOCSidebarItemCell.RemoveableItemStateAccessoryItem(0);
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      v24 = [objc_opt_self() shared];
      v31 = partial apply for closure #2 in DOCSidebarItemCell.removableMediaStateDomain.didset;
      v32 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v28 = 1107296256;
      v29 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v30 = &block_descriptor_155;
      v25 = _Block_copy(&aBlock);

      [v24 performAfterLaunch_];
      _Block_release(v25);

      specialized DOCSidebarCell.removeAccessoryItem(named:)(*(v23 + 16), *(v23 + 24));
    }

    goto LABEL_18;
  }
}

void (*DOCSidebarItemCell.removableMediaStateDomain.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = direct field offset for DOCSidebarItemCell.removableMediaStateDomain;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCSidebarItemCell.removableMediaStateDomain.modify;
}

void DOCSidebarItemCell.syncStateDomain.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v5 = *a1;
  v7 = (*a1 + 24);
  v6 = *v7;
  v9 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v10 = *(v9 + v8);
  *(v9 + v8) = *v7;
  v11 = v6;
  v12 = v11;
  if (a2)
  {
    v13 = v11;
    a3(v10);

    v10 = *v7;
  }

  else
  {
    a3(v10);
  }

  free(v5);
}

uint64_t DOCSidebarItemCell.RemoveableItemStateAccessoryItem.init(for:)(void *a1)
{
  v2 = v1;
  v60 = type metadata accessor for UICellAccessory.LayoutDimension();
  v58 = *(v60 - 8);
  v5 = MEMORY[0x28223BE20](v60, v4);
  v59 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v61 = &v49 - v8;
  v9 = type metadata accessor for UICellAccessory.Placement();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v49 - v15;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static DOCUSBFormatting.shared;
  v18 = [a1 identifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = (*(*v17 + 160))(v19, v21);

  v55 = a1;
  if (v22)
  {
    v24 = objc_allocWithZone(type metadata accessor for DOCRemovableMediaStateSidebarCellAccessoryItem());
    v53 = v22;
    v25 = DOCRemovableMediaStateSidebarCellAccessoryItem.init(with:)(v53);
    *(v2 + direct field offset for DOCSidebarItemCell.RemoveableItemStateAccessoryItem.accessoryView) = v25;
    v26 = v25;
    v51 = v25;
    v54 = 0x8000000249BC91B0;
    v27 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48)];
    v28 = *MEMORY[0x277D74A90];
    v29 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v29 - 8) + 104))(v16, v28, v29);
    *v27 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
    v27[1] = 0;
    v30 = *MEMORY[0x277D74AD8];
    v31 = *(v10 + 104);
    v52 = v16;
    v32 = v9;
    v49 = v9;
    v31(v16, v30, v9);
    v50 = swift_allocObject();
    *(v50 + 16) = v26;
    v33 = v58;
    v34 = v60;
    v35 = v61;
    (*(v58 + 104))(v61, *MEMORY[0x277D74AB0], v60);
    *(v2 + direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded) = 0;
    v36 = v56;
    (*(v10 + 16))(v56, v16, v32);
    v37 = v59;
    (*(v33 + 16))(v59, v35, v34);
    v38 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v39 = (v11 + *(v33 + 80) + v38) & ~*(v33 + 80);
    v40 = v39 + v57;
    v41 = swift_allocObject();
    v42 = v50;
    *(v41 + 16) = partial apply for closure #1 in DOCSidebarItemCell.RemoveableItemStateAccessoryItem.init(for:);
    *(v41 + 24) = v42;
    v43 = v36;
    v44 = v49;
    (*(v10 + 32))(v41 + v38, v43, v49);
    (*(v33 + 32))(v41 + v39, v37, v34);
    *(v41 + v40) = 2;
    v45 = v51;

    (*(v33 + 8))(v61, v34);
    (*(v10 + 8))(v52, v44);
    *(v2 + 32) = 1;
    v46 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
    v47 = type metadata accessor for UICellAccessory();
    (*(*(v47 - 8) + 56))(v2 + v46, 1, 1, v47);
    *(v2 + 16) = 0xD000000000000015;
    *(v2 + 24) = v54;
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of DOCSidebarItemCell.RemoveableItemStateAccessoryItem.init(for:);
    swift_beginAccess();
    *(v2 + 32) = 1;
    v48 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
    *v48 = partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:);
    v48[1] = v41;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCSidebarItemCell.ProviderSyncStateAccessoryItem.__deallocating_deinit(void *a1)
{

  outlined destroy of CharacterSet?(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded, &_s5UIKit15UICellAccessoryVSgMd);

  return swift_deallocClassInstance();
}

uint64_t DOCSidebarItemCell.UnseenIndicatorState.accessory.getter(char a1)
{
  v46 = type metadata accessor for UICellAccessory.LayoutDimension();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v46, v4);
  v49 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v50 = &v44 - v7;
  v8 = type metadata accessor for UICellAccessory.Placement();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v44 - v18;
  v20 = (&v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48) - v18);
  v21 = *MEMORY[0x277D74A88];
  v22 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v22 - 8) + 104))(v19, v21, v22);
  *v20 = closure #1 in default argument 1 of UICellAccessory.Placement.leading(_:);
  v20[1] = 0;
  (*(v9 + 104))(v19, *MEMORY[0x277D74AD0], v8);
  if (a1)
  {
    v47 = v16;
    if (a1 == 1)
    {
      v44 = *(v9 + 16);
      v45 = 0x8000000249BC9250;
      v44(v16, v19, v8);
      v23 = v50;
      v24 = v46;
      (*(v2 + 104))(v50, *MEMORY[0x277D74AB0], v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables33DOCSidebarCellCustomAccessoryItemCySo6UIViewCGMd);
      v25 = swift_allocObject();
      *(v25 + direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded) = 0;
      v44(v48, v47, v8);
      (*(v2 + 16))(v49, v23, v24);
      v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v27 = (v10 + *(v2 + 80) + v26) & ~*(v2 + 80);
      v28 = v27 + v3;
      v29 = swift_allocObject();
      *(v29 + 16) = closure #1 in DOCSidebarItemCell.UnseenIndicatorState.accessory.getter;
      *(v29 + 24) = 0;
      (*(v9 + 32))(v29 + v26, v48, v8);
      (*(v2 + 32))(v29 + v27, v49, v24);
      *(v29 + v28) = 2;
      (*(v2 + 8))(v50, v24);
      v30 = *(v9 + 8);
      v30(v47, v8);
      v30(v19, v8);
      *(v25 + 32) = 1;
      v31 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
      v32 = type metadata accessor for UICellAccessory();
      (*(*(v32 - 8) + 56))(v25 + v31, 1, 1, v32);
      *(v25 + 16) = 0xD00000000000001CLL;
      *(v25 + 24) = v45;
      *(v25 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of DOCSidebarItemCell.UnseenIndicatorState.accessory.getter;
    }

    else
    {
      v44 = *(v9 + 16);
      v45 = 0x8000000249BC9220;
      v44(v16, v19, v8);
      v35 = v50;
      v36 = v46;
      (*(v2 + 104))(v50, *MEMORY[0x277D74AB0], v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables33DOCSidebarCellCustomAccessoryItemCySo6UIViewCGMd);
      v25 = swift_allocObject();
      *(v25 + direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded) = 0;
      v44(v48, v47, v8);
      (*(v2 + 16))(v49, v35, v36);
      v37 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v38 = (v10 + *(v2 + 80) + v37) & ~*(v2 + 80);
      v39 = v38 + v3;
      v29 = swift_allocObject();
      *(v29 + 16) = closure #2 in DOCSidebarItemCell.UnseenIndicatorState.accessory.getter;
      *(v29 + 24) = 0;
      (*(v9 + 32))(v29 + v37, v48, v8);
      (*(v2 + 32))(v29 + v38, v49, v36);
      *(v29 + v39) = 2;
      (*(v2 + 8))(v50, v36);
      v40 = *(v9 + 8);
      v40(v47, v8);
      v40(v19, v8);
      *(v25 + 32) = 1;
      v41 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
      v42 = type metadata accessor for UICellAccessory();
      (*(*(v42 - 8) + 56))(v25 + v41, 1, 1, v42);
      v43 = v45;
      *(v25 + 16) = 0xD000000000000020;
      *(v25 + 24) = v43;
      *(v25 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #1 of DOCSidebarItemCell.UnseenIndicatorState.accessory.getter;
    }

    swift_beginAccess();
    result = v25;
    *(v25 + 32) = 1;
    v33 = (v25 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
    *v33 = closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)specialized partial apply;
    v33[1] = v29;
  }

  else
  {
    (*(v9 + 8))(v19, v8);
    return 0;
  }

  return result;
}

id closure #1 in DOCSidebarItemCell.UnseenIndicatorState.accessory.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = [objc_opt_self() linkColor];
  [v0 setBackgroundColor_];

  return v0;
}

id closure #2 in DOCSidebarItemCell.UnseenIndicatorState.accessory.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D18]);

  return [v0 initWithFrame_];
}

Swift::Int DOCSidebarItemCell.UnseenIndicatorState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

uint64_t DOCSidebarItemCell.seenIndicatorAccessory.didset(uint64_t result)
{
  v2 = result;
  v3 = direct field offset for DOCSidebarItemCell.seenIndicatorAccessory;
  v4 = *(v1 + direct field offset for DOCSidebarItemCell.seenIndicatorAccessory);
  if (v4)
  {
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);

    if (!v2)
    {
      if (!v5)
      {
        return result;
      }

      if (!*(v1 + v3))
      {
        return result;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v5 = 0;
    v6 = 0;
  }

  v8 = *(v2 + 16);
  v7 = *(v2 + 24);

  if (!v5)
  {
    if (!v7)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (!v7)
  {
LABEL_17:

    goto LABEL_18;
  }

  if (v6 != v8 || v5 != v7)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return result;
    }

LABEL_18:
    v11 = *(v2 + 16);
    v12 = *(v2 + 24);

    specialized DOCSidebarCell.removeAccessoryItem(named:)(v11, v12);

    if (!*(v1 + v3))
    {
      return result;
    }

LABEL_19:

    specialized DOCSidebarCell.addAccessoryItem(_:)(v13);
  }
}

uint64_t DOCSidebarItemCell.unseenIndicatorState.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.unseenIndicatorState;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*DOCSidebarItemCell.unseenIndicatorState.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = direct field offset for DOCSidebarItemCell.unseenIndicatorState;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCSidebarItemCell.unseenIndicatorState.modify;
}

void DOCSidebarItemCell.unseenIndicatorState.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    DOCSidebarItemCell.unseenIndicatorState.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[3];
      v8 = DOCSidebarItemCell.UnseenIndicatorState.accessory.getter(v3);
      v9 = *(v7 + direct field offset for DOCSidebarItemCell.seenIndicatorAccessory);
      *(v7 + direct field offset for DOCSidebarItemCell.seenIndicatorAccessory) = v8;

      DOCSidebarItemCell.seenIndicatorAccessory.didset(v9);
    }
  }

  free(v2);
}

void *DOCSidebarItemCell.ejectionController.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void key path setter for DOCSidebarItemCell.syncStateDomain : DOCSidebarItemCell(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(void *))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  v11 = v7;
  a6(v10);
}

void DOCSidebarItemCell.ejectionController.didset(void *a1)
{
  v3 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    type metadata accessor for DOCEjectionController();
    v5 = v4;
    v6 = a1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    if (*(v1 + v3))
    {
LABEL_5:
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }
  }

  else if (!a1)
  {
    return;
  }

  DOCSidebarItemCell.ejectionStateDidChange()();
}

Swift::Void __swiftcall DOCSidebarItemCell.ejectionStateDidChange()()
{
  v1 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    if ([*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source) isEjectable])
    {
      v3 = *&v0[v1];
      if (v3)
      {
        v4 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source];
        v5 = v3;
        if ([v4 isEjectable])
        {
          v6 = v0;
          v7 = DOCEjectionController._button.getter();

          v8 = *&v0[direct field offset for DOCSidebarItemCell.ejectionButton];
          *&v0[direct field offset for DOCSidebarItemCell.ejectionButton] = v7;
          if (v8)
          {
            type metadata accessor for DOCEjectButton();
            v9 = v7;
            v8 = v8;
            v10 = static NSObject.== infix(_:_:)();

            if (v10)
            {

              goto LABEL_11;
            }

            v0 = v6;
          }

          else
          {
            v11 = v7;
          }

          [v0 setNeedsUpdateConfiguration];

          goto LABEL_11;
        }
      }
    }
  }

  v8 = *&v0[direct field offset for DOCSidebarItemCell.ejectionButton];
  *&v0[direct field offset for DOCSidebarItemCell.ejectionButton] = 0;
  if (!v8)
  {
    return;
  }

  [v0 setNeedsUpdateConfiguration];
LABEL_11:
}

void (*DOCSidebarItemCell.ejectionController.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for DOCSidebarItemCell.ejectionController;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 72) = v6;
  v7 = v6;
  return DOCSidebarItemCell.ejectionController.modify;
}

void DOCSidebarItemCell.ejectionController.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v6 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (!v3)
    {
      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (v7)
    {
      type metadata accessor for DOCEjectionController();
      v8 = v3;
      v9 = v7;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {

        v3 = v8;
LABEL_19:

LABEL_20:
        v3 = *v4;
        goto LABEL_24;
      }

      if (!*(v2[10] + v2[11]))
      {
LABEL_18:
        DOCSidebarItemCell.ejectionStateDidChange()();

        goto LABEL_19;
      }
    }

    else
    {
      v14 = v3;
    }

    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    goto LABEL_18;
  }

  if (v3)
  {
    if (!v7)
    {
      v15 = v3;
LABEL_22:
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      goto LABEL_23;
    }

    type metadata accessor for DOCEjectionController();
    v11 = v3;
    v12 = v7;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {

      v3 = v11;
LABEL_24:

      goto LABEL_25;
    }

    if (*(v2[10] + v2[11]))
    {
      goto LABEL_22;
    }

LABEL_23:
    DOCSidebarItemCell.ejectionStateDidChange()();

    goto LABEL_24;
  }

  if (v7)
  {
    goto LABEL_23;
  }

LABEL_25:

  free(v2);
}

uint64_t DOCSidebarItemCell.EjectAccessoryItem.init(ejectButton:)(void *a1)
{
  v3 = type metadata accessor for UICellAccessory.Placement();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v39 - v9;
  v41 = type metadata accessor for UICellAccessory.LayoutDimension();
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v41, v13);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v45 = &v39 - v17;
  *(v1 + direct field offset for DOCSidebarItemCell.EjectAccessoryItem.ejectButton) = a1;
  v42 = v1;
  v40 = a1;
  (*(v11 + 104))(&v39 - v17, *MEMORY[0x277D74AB0], v16);
  v18 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48)];
  v19 = *MEMORY[0x277D74A90];
  v20 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v20 - 8) + 104))(v10, v19, v20);
  *v18 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
  v18[1] = 0;
  v21 = *MEMORY[0x277D74AD8];
  v22 = *(v4 + 104);
  v39 = v3;
  v22(v10, v21, v3);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v1 + direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded) = 0;
  (*(v4 + 16))(v44, v10, v3);
  v24 = v43;
  v25 = v41;
  (*(v11 + 16))(v43, v45, v41);
  v26 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v27 = (v5 + *(v11 + 80) + v26) & ~*(v11 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #1 in DOCSidebarItemCell.RemoveableItemStateAccessoryItem.init(for:);
  *(v28 + 24) = v23;
  v29 = v28 + v26;
  v30 = v39;
  (*(v4 + 32))(v29, v44, v39);
  (*(v11 + 32))(v28 + v27, v24, v25);
  *(v28 + v27 + v12) = 1;
  v31 = *(v4 + 8);
  v32 = v40;
  v31(v10, v30);
  (*(v11 + 8))(v45, v25);
  v33 = v42;
  v34 = v42;
  *(v42 + 32) = 1;
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  v36 = type metadata accessor for UICellAccessory();
  (*(*(v36 - 8) + 56))(v33 + v35, 1, 1, v36);
  *(v33 + 16) = 0x7463656A65;
  *(v33 + 24) = 0xE500000000000000;
  *(v33 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of DOCSidebarItemCell.EjectAccessoryItem.init(ejectButton:);
  swift_beginAccess();
  *(v34 + 32) = 1;
  v37 = (v33 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v37 = partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:);
  v37[1] = v28;
  return v33;
}

uint64_t DOCSidebarItemCell.sourceIsEnabled.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.sourceIsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarItemCell.editingAccessorySwitch.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.$__lazy_storage_$_editingAccessorySwitch;
  if (*(v0 + direct field offset for DOCSidebarItemCell.$__lazy_storage_$_editingAccessorySwitch))
  {
    v2 = *(v0 + direct field offset for DOCSidebarItemCell.$__lazy_storage_$_editingAccessorySwitch);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for DOCSidebarItemCell.SourceEnabledSwitchAccessory(0);
    swift_allocObject();
    v2 = DOCSidebarItemCell.SourceEnabledSwitchAccessory.init(didChangeValueHandler:)(partial apply for closure #1 in closure #1 in DOCSidebarItemCell.editingAccessorySwitch.getter, v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

void (*DOCSidebarItemCell.sourceIsEnabled.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = direct field offset for DOCSidebarItemCell.sourceIsEnabled;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return DOCSidebarItemCell.sourceIsEnabled.modify;
}

void DOCSidebarItemCell.sourceIsEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  DOCSidebarItemCell.sourceIsEnabled.setter(*(*a1 + 32));

  free(v1);
}

void closure #1 in closure #1 in DOCSidebarItemCell.editingAccessorySwitch.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + direct field offset for DOCSidebarItemCell.delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v3, *(a1 + direct field offset for DOCSidebarItemCell.SourceEnabledSwitchAccessory.isOn), ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t DOCSidebarItemCell.SourceEnabledSwitchAccessory.init(didChangeValueHandler:)(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for UICellAccessory.LayoutDimension();
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v42, v7);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v45 = &v39 - v10;
  v11 = type metadata accessor for UICellAccessory.Placement();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v39 - v17;
  *(v2 + direct field offset for DOCSidebarItemCell.SourceEnabledSwitchAccessory.isOn) = 0;
  v19 = (v2 + direct field offset for DOCSidebarItemCell.SourceEnabledSwitchAccessory.didChangeValueHandler);
  *v19 = a1;
  v19[1] = a2;
  v44 = 0x8000000249BC8990;
  v20 = (&v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48) - v17);
  v21 = *MEMORY[0x277D74A88];
  v22 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v22 - 8) + 104))(v18, v21, v22);
  *v20 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
  v20[1] = 0;
  v23 = *MEMORY[0x277D74AD8];
  v24 = *(v12 + 104);
  v40 = v11;
  v24(v18, v23, v11);
  v25 = v45;
  v26 = v42;
  (*(v5 + 104))(v45, *MEMORY[0x277D74AB0], v42);
  *(v2 + direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded) = 0;
  (*(v12 + 16))(&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v11);
  v27 = v43;
  v28 = v26;
  (*(v5 + 16))(v43, v25, v26);
  v29 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v30 = (v13 + *(v5 + 80) + v29) & ~*(v5 + 80);
  v31 = v30 + v6;
  v32 = swift_allocObject();
  *(v32 + 16) = closure #1 in DOCSidebarItemCell.SourceEnabledSwitchAccessory.init(didChangeValueHandler:);
  *(v32 + 24) = 0;
  v33 = v32 + v29;
  v34 = v40;
  (*(v12 + 32))(v33, v41, v40);
  (*(v5 + 32))(v32 + v30, v27, v28);
  *(v32 + v31) = 2;
  (*(v5 + 8))(v45, v28);
  (*(v12 + 8))(v18, v34);
  *(v2 + 32) = 1;
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  v36 = type metadata accessor for UICellAccessory();
  (*(*(v36 - 8) + 56))(v2 + v35, 1, 1, v36);
  *(v2 + 16) = 0xD000000000000013;
  *(v2 + 24) = v44;
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of DOCSidebarItemCell.SourceEnabledSwitchAccessory.init(didChangeValueHandler:);
  swift_beginAccess();
  *(v2 + 32) = 1;
  v37 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v37 = partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:);
  v37[1] = v32;
  return v2;
}

id closure #1 in DOCSidebarItemCell.SourceEnabledSwitchAccessory.init(didChangeValueHandler:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75AE8]);

  return [v0 init];
}

void DOCSidebarItemCell.SourceEnabledSwitchAccessory.didLoad(view:)(void *a1)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [a1 addAction:v3 forControlEvents:{4096, 0, 0, 0, partial apply for closure #1 in DOCSidebarItemCell.SourceEnabledSwitchAccessory.didLoad(view:), v2}];
}

uint64_t closure #1 in DOCSidebarItemCell.SourceEnabledSwitchAccessory.didLoad(view:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(*result + 216);

    v3 = v2();

    if (v3)
    {
      v4 = [v3 isOn];
      *(v1 + direct field offset for DOCSidebarItemCell.SourceEnabledSwitchAccessory.isOn) = v4;
      v5 = direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded;
      swift_beginAccess();
      v6 = *(v1 + v5);
      if (v6)
      {
        [v6 setOn:v4 animated:0];
      }

      v7 = *(v1 + direct field offset for DOCSidebarItemCell.SourceEnabledSwitchAccessory.didChangeValueHandler);

      v7(v1);
    }
  }

  return result;
}

uint64_t DOCSidebarItemCell.SourceEnabledSwitchAccessory.__deallocating_deinit()
{

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded, &_s5UIKit15UICellAccessoryVSgMd);

  return swift_deallocClassInstance();
}

void @objc DOCSidebarItemCell.isSelected.setter(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, sel_isSelected);
  v9.receiver = v6;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_setSelected_, a3);
  v8.receiver = v6;
  v8.super_class = ObjectType;
  if (v7 != objc_msgSendSuper2(&v8, sel_isSelected))
  {
    [v6 setNeedsUpdateConfiguration];
  }
}

void (*DOCSidebarItemCell.isSelected.modify(uint64_t *a1))(objc_super **a1, char a2)
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
  *(v3 + 112) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 120) = ObjectType;
  *v4 = v1;
  *(v4 + 8) = ObjectType;
  *(v4 + 128) = objc_msgSendSuper2(v4, sel_isSelected);
  return DOCSidebarItemCell.isSelected.modify;
}

void DOCSidebarItemCell.isSelected.modify(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver_low = LOBYTE((*a1)[8].receiver);
  receiver = (*a1)[7].receiver;
  super_class = (*a1)[7].super_class;
  v6 = *a1;
  if (a2)
  {
    v6[1].receiver = receiver;
    v2[1].super_class = super_class;
    v7 = objc_msgSendSuper2(v6 + 1, sel_isSelected);
    v2[2].receiver = receiver;
    v2[2].super_class = super_class;
    objc_msgSendSuper2(v2 + 2, sel_setSelected_, receiver_low);
    v2[3].receiver = receiver;
    v8 = v2 + 3;
  }

  else
  {
    v6[4].receiver = receiver;
    v2[4].super_class = super_class;
    v7 = objc_msgSendSuper2(v6 + 4, sel_isSelected);
    v2[5].receiver = receiver;
    v2[5].super_class = super_class;
    objc_msgSendSuper2(v2 + 5, sel_setSelected_, receiver_low);
    v2[6].receiver = receiver;
    v8 = v2 + 6;
  }

  v8->super_class = super_class;
  if (v7 != [(objc_super *)v8 isSelected])
  {
    [v2[7].receiver setNeedsUpdateConfiguration];
  }

  free(v2);
}

Swift::Void __swiftcall DOCSidebarItemCell.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_tintColorDidChange);
  [v0 setNeedsUpdateConfiguration];
}

void @objc DOCSidebarItemCell.tintColorDidChange()(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_tintColorDidChange);
  [v1 setNeedsUpdateConfiguration];
}

uint64_t DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename.setter(char a1)
{
  v3 = direct field offset for DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id @objc DOCSidebarItemCell.isSelected.getter(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

id DOCSidebarItemCell.isSelected.getter(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

void @objc DOCSidebarItemCell.isEditing.setter(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  DOCSidebarItemCell.isEditing.setter(a3);
}

void DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(char a1)
{
  v2 = v1;
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v4 = *&v1[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v4)
  {
    v5 = &v1[direct field offset for DOCSidebarItemCell.delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 32);
      v9 = v4;
      LOBYTE(v6) = v8(v1, ObjectType, v6);
      swift_unknownObjectRelease();
      if (v6)
      {
        v10 = swift_allocObject();
        *(v10 + 16) = v9;
        *(v10 + 24) = a1 & 1;
        *(v10 + 32) = v1;
        v11 = objc_opt_self();
        v12 = swift_allocObject();
        v12[2] = partial apply for closure #1 in DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:);
        v12[3] = v10;
        v12[4] = v2;
        v13 = swift_allocObject();
        *(v13 + 16) = partial apply for closure #2 in DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:);
        *(v13 + 24) = v12;
        aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
        aBlock[5] = v13;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_236;
        v14 = _Block_copy(aBlock);
        v15 = v2;
        v9 = v9;
        v16 = v15;

        [v11 performWithoutAnimation_];

        _Block_release(v14);
        LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

        if ((v15 & 1) == 0)
        {
          return;
        }

        __break(1u);
      }
    }
  }
}

void (*DOCSidebarItemCell.isEditing.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 152) = ObjectType;
  *v4 = v1;
  *(v4 + 8) = ObjectType;
  *(v4 + 160) = objc_msgSendSuper2(v4, sel_isEditing);
  return DOCSidebarItemCell.isEditing.modify;
}

void DOCSidebarItemCell.isEditing.modify(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver_low = LOBYTE((*a1)[10].receiver);
  receiver = (*a1)[9].receiver;
  super_class = (*a1)[9].super_class;
  v6 = *a1;
  if (a2)
  {
    v6[1].receiver = receiver;
    v2[1].super_class = super_class;
    v7 = objc_msgSendSuper2(v6 + 1, sel_isEditing);
    v2[2].receiver = receiver;
    v2[2].super_class = super_class;
    objc_msgSendSuper2(v2 + 2, sel_setEditing_, receiver_low);
    v2[3].receiver = receiver;
    v2[3].super_class = super_class;
    if (v7 == objc_msgSendSuper2(v2 + 3, sel_isEditing))
    {
      goto LABEL_9;
    }

    v12 = v2[9];
    v2[4] = v12;
    v8 = objc_msgSendSuper2(v2 + 4, sel_isEditing, v12);
  }

  else
  {
    v6[5].receiver = receiver;
    v2[5].super_class = super_class;
    v9 = objc_msgSendSuper2(v6 + 5, sel_isEditing);
    v2[6].receiver = receiver;
    v2[6].super_class = super_class;
    objc_msgSendSuper2(v2 + 6, sel_setEditing_, receiver_low);
    v2[7].receiver = receiver;
    v2[7].super_class = super_class;
    if (v9 == objc_msgSendSuper2(v2 + 7, sel_isEditing))
    {
      goto LABEL_9;
    }

    v14 = v2[9];
    v2[8] = v14;
    v8 = objc_msgSendSuper2(v2 + 8, sel_isEditing, v14);
  }

  v10 = v8;
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v11 = *(v13 + direct field offset for DOCSidebarItemCell._inlineEditingTextField);
  if (v11)
  {
    [v11 setUserInteractionEnabled_];
  }

  DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(v10);
LABEL_9:

  free(v2);
}

id @objc DOCSidebarItemCell.canBecomeFocused.getter(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = a1;
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v4 = *&v3[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v4 && [v4 isFirstResponder])
  {

    return 0;
  }

  else
  {
    v7.receiver = v3;
    v7.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v7, sel_canBecomeFocused);
  }

  return v5;
}

id DOCSidebarItemCell.canBecomeFocused.getter()
{
  ObjectType = swift_getObjectType();
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v2 = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v2 && ([v2 isFirstResponder] & 1) != 0)
  {
    return 0;
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_canBecomeFocused);
}

Swift::Void __swiftcall DOCSidebarItemCell.startInlineTextEditing()()
{
  ObjectType = swift_getObjectType();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  if (objc_msgSendSuper2(&v7, sel_isSelected))
  {
    v2 = direct field offset for DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename;
    swift_beginAccess();
    v0[v2] = 1;
    v6.receiver = v0;
    v6.super_class = ObjectType;
    LODWORD(v2) = objc_msgSendSuper2(&v6, sel_isSelected);
    v5.receiver = v0;
    v5.super_class = ObjectType;
    objc_msgSendSuper2(&v5, sel_setSelected_, 0);
    v4.receiver = v0;
    v4.super_class = ObjectType;
    if (v2 != objc_msgSendSuper2(&v4, sel_isSelected))
    {
      [v0 setNeedsUpdateConfiguration];
    }
  }

  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(1);
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v3 = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v3)
  {
    [v3 setUserInteractionEnabled_];
  }

  DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(1);
}

void DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(int a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v44[-v10];
  v12 = direct field offset for DOCSidebarItemCell._inlineEditingTextField;
  if (!*&v1[direct field offset for DOCSidebarItemCell._inlineEditingTextField])
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v49.receiver = v1;
      v49.super_class = ObjectType;
      if (objc_msgSendSuper2(&v49, sel_isEditing) & 1) != 0 || (a1)
      {
        specialized DOCSidebarCell.content.getter(v11);
        v13 = *&v11[*(v4 + 44)];
        outlined destroy of CharacterSet?(v11, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
        v14 = [v13 textLayoutGuide];

        if (v14)
        {
          v45 = a1;
          v15 = [objc_allocWithZone(MEMORY[0x277D75BB8]) initWithFrame_];
          [v15 setTranslatesAutoresizingMaskIntoConstraints_];
          [v15 setTextSelectionBehavior_];
          specialized DOCSidebarCell.content.getter(v8);
          v16 = *&v8[*(v4 + 44)];
          outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
          [v16 addSubview_];

          v17 = [v15 leadingAnchor];
          v18 = [v14 leadingAnchor];
          v19 = [v17 constraintEqualToAnchor_];

          v46 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_249BA0470;
          *(v20 + 32) = v19;
          v47 = v19;
          v21 = [v15 trailingAnchor];
          specialized DOCSidebarCell.content.getter(v8);
          v22 = *&v8[*(v4 + 44)];
          outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
          v23 = [v22 layoutMarginsGuide];

          v24 = [v23 trailingAnchor];
          v25 = [v21 constraintEqualToAnchor_];

          *(v20 + 40) = v25;
          v26 = [v15 topAnchor];
          v27 = [v14 topAnchor];
          v28 = [v26 constraintEqualToAnchor_];

          *(v20 + 48) = v28;
          v29 = [v15 bottomAnchor];
          v30 = [v14 bottomAnchor];
          v31 = [v29 constraintEqualToAnchor_];

          *(v20 + 56) = v31;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v46 activateConstraints_];

          [v15 setEnablesReturnKeyAutomatically_];
          [v15 setKeyboardType_];
          [v15 setReturnKeyType_];
          [v15 setDelegate_];
          [v15 setHidden_];

          [v15 setAdjustsFontForContentSizeCategory_];
          v33 = [objc_opt_self() preferredFontForTextStyle_];
          [v15 setFont_];

          v34 = *&v1[v12];
          *&v1[v12] = v15;
          v35 = v15;

          v36 = *&v1[direct field offset for DOCSidebarItemCell._inlineEditingLeadingConstraint];
          v37 = v47;
          *&v1[direct field offset for DOCSidebarItemCell._inlineEditingLeadingConstraint] = v47;
          v38 = v37;

          v39 = DOCSidebarItemCell.updateInlineEditingLeadingInset()();
          DOCSidebarItemCell.updateInlineEditingTextFieldContent()(v39);
          DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
          v40 = *&v1[v12];
          if (v40)
          {
            v48.receiver = v1;
            v48.super_class = ObjectType;
            v41 = v40;
            v42 = objc_msgSendSuper2(&v48, sel_isEditing);
            v43 = 1.0;
            if (((v42 | v45) & 1) == 0)
            {
              v43 = 0.0;
            }

            [v41 setAlpha_];
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCSidebarItemCell.stopInlineTextEditing()()
{
  ObjectType = swift_getObjectType();
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v2 = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v2)
  {
    [v2 setUserInteractionEnabled_];
  }

  DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(0);
  v3 = direct field offset for DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename;
  swift_beginAccess();
  if (v0[v3] == 1)
  {
    v0[v3] = 0;
    v7.receiver = v0;
    v7.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v7, sel_isSelected);
    v6.receiver = v0;
    v6.super_class = ObjectType;
    objc_msgSendSuper2(&v6, sel_setSelected_, 1);
    v5.receiver = v0;
    v5.super_class = ObjectType;
    if (v4 != objc_msgSendSuper2(&v5, sel_isSelected))
    {
      [v0 setNeedsUpdateConfiguration];
    }
  }
}

Swift::Bool __swiftcall DOCSidebarItemCell.textFieldShouldBeginEditing(_:)(UITextField *a1)
{
  v2 = v1 + direct field offset for DOCSidebarItemCell.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 32))(v1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void closure #1 in DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(void *a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v50 - v8;
  v10 = type metadata accessor for UICellConfigurationState();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  [a1 setHidden_];
  v52[16] = a2;
  v16 = [a3 window];
  if (v16)
  {

    MEMORY[0x28223BE20](v18, v19);
    v20 = &v50 - 6;
    *(&v50 - 4) = partial apply for closure #1 in closure #1 in DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:);
    *(&v50 - 3) = v52;
    *(&v50 - 2) = a3;
  }

  else
  {
    v34 = MEMORY[0x28223BE20](0, v17);
    v20 = &v50 - 6;
    *(&v50 - 4) = partial apply for closure #1 in closure #1 in DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:);
    *(&v50 - 3) = v52;
    *(&v50 - 2) = a3;
    v35 = [a3 window];
    if (v35)
    {

      v36 = a3 + *((*MEMORY[0x277D85000] & *a3) + 0x68);
      swift_beginAccess();
      v36[24] = a2 & 1;
      v37 = [a3 _bridgedConfigurationState];
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v15);
      (*(v11 + 8))(v15, v10);
      if (a2)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }
  }

  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = closure #1 in DOCSidebarCell.updateContentBindings(_:)specialized partial apply;
  *(v22 + 24) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  *(v23 + 24) = v22;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_248;
  v24 = _Block_copy(aBlock);

  [v21 performWithoutAnimation_];
  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
    return;
  }

  if (a2)
  {
LABEL_5:
    specialized DOCSidebarCell.content.getter(v9);
    v25 = &v9[*(v6 + 40)];
    v26 = *v25;
    v27 = v25[1];

    outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
    v28 = MEMORY[0x24C1FAD20](v26, v27);

    v29 = v51;
    [v51 setText_];

    specialized DOCSidebarCell.content.getter(v9);
    v30 = &v9[*(v6 + 40)];
    v31 = *v30;
    v32 = v30[1];

    outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
    v33 = MEMORY[0x24C1FAD20](v31, v32);

    [v29 setPlaceholder_];

    return;
  }

LABEL_8:
  specialized DOCSidebarCell.content.getter(v9);
  outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v38 = [a3 traitCollection];
  v39 = v38;
  if (!v38)
  {
    v40 = [objc_opt_self() mainScreen];
    v39 = [v40 traitCollection];
  }

  v41 = v38;
  v42 = [v39 preferredContentSizeCategory];
  v43 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v43)
  {
    v44 = 3;
  }

  else
  {
    v44 = 2;
  }

  DOCSidebarItemCell.titleNumberOfLines.setter(v44);
  v45 = [v51 text];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  DOCSidebarItemCell.title.setter(v47, v49);
}

void closure #2 in DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(void (*a1)(double))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v3 = v2 - 8;
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v9 - v6;
  a1(v5);
  specialized DOCSidebarCell.content.getter(v7);
  v8 = *&v7[*(v3 + 52)];
  outlined destroy of CharacterSet?(v7, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  [v8 layoutBelowIfNeeded];
}

uint64_t @objc DOCSidebarItemCell.accessibilityExpanded.getter(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  v8 = [v7 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v8) = UICellConfigurationState.isExpanded.getter();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t DOCSidebarItemCell.accessibilityExpanded.getter()
{
  v1 = type metadata accessor for UICellConfigurationState();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v7) = UICellConfigurationState.isExpanded.getter();
  (*(v2 + 8))(v6, v1);
  return v7 & 1;
}

id @objc DOCSidebarItemCell.accessibilityIsEjectable.getter(uint64_t a1)
{
  v2 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3)
  {
    return [*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source) isEjectable];
  }

  else
  {
    return 0;
  }
}

id DOCSidebarItemCell.isEjectable.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source) isEjectable];
  }

  else
  {
    return 0;
  }
}

uint64_t @objc DOCSidebarItemCell.accessibilityShowFolder.getter(uint64_t a1)
{
  v2 = direct field offset for DOCSidebarItemCell.isRepresentingFolder;
  swift_beginAccess();
  return *(a1 + v2);
}

id @objc DOCSidebarItemCell.accessibilityTitle.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - v5;
  v7 = a1;
  specialized DOCSidebarCell.content.getter(v6);

  v8 = &v6[*(v3 + 48)];
  v9 = *v8;
  v10 = v8[1];

  outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v11 = MEMORY[0x24C1FAD20](v9, v10);

  return v11;
}

uint64_t DOCSidebarItemCell.title.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  specialized DOCSidebarCell.content.getter(&v7 - v3);
  v5 = *&v4[*(v1 + 48)];

  outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  return v5;
}

id @objc DOCSidebarItemCell.accessibilitySubtitle.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - v5;
  v7 = a1;
  specialized DOCSidebarCell.content.getter(v6);

  v8 = &v6[*(v3 + 48)];
  v10 = *(v8 + 4);
  v9 = *(v8 + 5);

  outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  if (v9)
  {
    v11 = MEMORY[0x24C1FAD20](v10, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t DOCSidebarItemCell.subtitle.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  specialized DOCSidebarCell.content.getter(&v7 - v3);
  v5 = *&v4[*(v1 + 48) + 32];

  outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  return v5;
}

void *@objc DOCSidebarItemCell.accessibilityTitleTextField.getter(void *a1)
{
  v1 = a1;
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v2 = *&v1[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  v3 = v2;

  return v2;
}

id DOCSidebarItemCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCSidebarItemCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[direct field offset for DOCSidebarItemCell.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[direct field offset for DOCSidebarItemCell.isRepresentingFolder] = 0;
  v4[direct field offset for DOCSidebarItemCell.isRepresentingUSB] = 0;
  v10 = &v4[direct field offset for DOCSidebarItemCell.iconProvider];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[direct field offset for DOCSidebarItemCell.itemTag] = 0;
  *&v4[direct field offset for DOCSidebarItemCell._inlineEditingTextField] = 0;
  *&v4[direct field offset for DOCSidebarItemCell._inlineEditingLeadingConstraint] = 0;
  *&v4[direct field offset for DOCSidebarItemCell.syncStateDomain] = 0;
  *&v4[direct field offset for DOCSidebarItemCell.removableMediaStateDomain] = 0;
  *&v4[direct field offset for DOCSidebarItemCell.seenIndicatorAccessory] = 0;
  v4[direct field offset for DOCSidebarItemCell.unseenIndicatorState] = 0;
  *&v4[direct field offset for DOCSidebarItemCell.ejectionController] = 0;
  *&v4[direct field offset for DOCSidebarItemCell.ejectionButton] = 0;
  *&v4[direct field offset for DOCSidebarItemCell.cachedEjectAccesory] = 0;
  v4[direct field offset for DOCSidebarItemCell.sourceIsEnabled] = 2;
  *&v4[direct field offset for DOCSidebarItemCell.$__lazy_storage_$_editingAccessorySwitch] = 0;
  v4[direct field offset for DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t DOCSidebarItemCell.__ivar_destroyer()
{
  outlined destroy of weak DOCPresentationPreheatable?(v0 + direct field offset for DOCSidebarItemCell.delegate);
  outlined destroy of CharacterSet?(v0 + direct field offset for DOCSidebarItemCell.iconProvider, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd);
}

id DOCSidebarItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc DOCSidebarItemCell.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of weak DOCPresentationPreheatable?(a1 + direct field offset for DOCSidebarItemCell.delegate);
  outlined destroy of CharacterSet?(a1 + direct field offset for DOCSidebarItemCell.iconProvider, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd);
}

uint64_t specialized DOCSidebarCell.content.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v33 - v5;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIListContentConfiguration();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UICellConfigurationState();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized DOCSidebarCell.ensureHasContentViewConfiguration()();
  v19 = [v1 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x24C1FBB10](&v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pSgMd);
  v36 = v11;
  swift_dynamicCast();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellCyAA0D23ItemContentValueBindingVGMd);
  v43.receiver = v1;
  v43.super_class = v20;
  v21 = objc_msgSendSuper2(&v43, sel_contentView);
  objc_opt_self();
  v33 = swift_dynamicCastObjCClassUnconditional();
  MEMORY[0x24C1FBB30]();
  v22 = *(v8 + 48);
  if (v22(v6, 1, v7) == 1)
  {
    static UIBackgroundConfiguration.clear()();
    if (v22(v6, 1, v7) != 1)
    {
      outlined destroy of CharacterSet?(v6, &_s5UIKit25UIBackgroundConfigurationVSgMd);
    }
  }

  else
  {
    (*(v8 + 32))(v37, v6, v7);
  }

  v23 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60));
  v24 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68));
  swift_beginAccess();
  v25 = v24[1];
  v39 = *v24;
  v40 = v25;
  v26 = v24[3];
  v41 = v24[2];
  v42 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v28 = v36;
  (*(v12 + 16))(&a1[v27[12]], v15, v36);
  v29 = &a1[v27[10]];
  v30 = v40;
  *v29 = v39;
  v29[1] = v30;
  v31 = v42;
  v29[2] = v41;
  v29[3] = v31;
  *a1 = v23;
  (*(v34 + 32))(&a1[v27[9]], v18, v35);
  *&a1[v27[11]] = v33;
  (*(v8 + 32))(&a1[v27[13]], v37, v7);
  outlined init with copy of DOCSidebarItemContentValueBinding(&v39, v38);
  return (*(v12 + 8))(v15, v28);
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v34 - v5;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIListContentConfiguration();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UICellConfigurationState();
  v37 = *(v16 - 8);
  v38 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized DOCSidebarCell.ensureHasContentViewConfiguration()();
  v20 = [v1 _bridgedConfigurationState];
  v36 = v19;
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x24C1FBB10](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pSgMd);
  v39 = v11;
  swift_dynamicCast();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellCyAA0D25HeaderContentValueBindingVGMd);
  v41.receiver = v1;
  v41.super_class = v21;
  v22 = objc_msgSendSuper2(&v41, sel_contentView);
  objc_opt_self();
  v35 = swift_dynamicCastObjCClassUnconditional();
  MEMORY[0x24C1FBB30]();
  v23 = *(v8 + 48);
  v24 = v7;
  if (v23(v6, 1, v7) == 1)
  {
    static UIBackgroundConfiguration.clear()();
    if (v23(v6, 1, v7) != 1)
    {
      outlined destroy of CharacterSet?(v6, &_s5UIKit25UIBackgroundConfigurationVSgMd);
    }
  }

  else
  {
    (*(v8 + 32))(v40, v6, v7);
  }

  v25 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60));
  v26 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68));
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd);
  v30 = v39;
  (*(v12 + 16))(&a1[v29[12]], v15, v39);
  v31 = &a1[v29[10]];
  *v31 = v28;
  v31[1] = v27;
  *a1 = v25;
  (*(v37 + 32))(&a1[v29[9]], v36, v38);
  *&a1[v29[11]] = v35;
  (*(v8 + 32))(&a1[v29[13]], v40, v24);
  v32 = *(v12 + 8);

  return v32(v15, v30);
}

uint64_t specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v44 = &v41 - v5;
  v45 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIListContentConfiguration();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v41 - v21;
  (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v20);
  type metadata accessor for UICellConfigurationState();
  lazy protocol witness table accessor for type UICellConfigurationState and conformance UICellConfigurationState();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0 || (*v22 & 1) == 0)
  {
    static UIListContentConfiguration.subtitleCell()();
    v23 = v42;
    static UIBackgroundConfiguration.listCell()();
    (*(v10 + 40))(&v22[v14[12]], v13, v9);
    (*(v6 + 40))(&v22[v14[13]], v23, v45);
  }

  v24 = &v22[v14[10]];
  v25 = v24[1];
  v54 = *v24;
  v55 = v25;
  v26 = v24[3];
  v56 = v24[2];
  v57 = v26;
  DOCSidebarItemContentValueBinding.apply(to:)();
  outlined init with copy of DOCGridLayout.Spec?(v22, v18, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v27 = v14[12];
  *(&v51 + 1) = v9;
  *&v52 = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
  (*(v10 + 16))(boxed_opaque_existential_1, &v18[v27], v9);
  MEMORY[0x24C1FBB20](&v50);
  v29 = v44;
  v30 = v45;
  (*(v6 + 16))(v44, &v18[v14[13]], v45);
  (*(v6 + 56))(v29, 0, 1, v30);
  MEMORY[0x24C1FBB40](v29);
  v31 = MEMORY[0x277D85000];
  *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60)) = *v18;
  v32 = &v18[v14[10]];
  v33 = v32[3];
  v48 = v32[2];
  v49 = v33;
  v34 = v32[1];
  v46 = *v32;
  v47 = v34;
  outlined init with copy of DOCSidebarItemContentValueBinding(&v46, &v50);
  outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
  v35 = (v2 + *((*v31 & *v2) + 0x68));
  swift_beginAccess();
  v36 = v35[1];
  v50 = *v35;
  v51 = v36;
  v37 = v35[3];
  v52 = v35[2];
  v53 = v37;
  v38 = v47;
  *v35 = v46;
  v35[1] = v38;
  v39 = v49;
  v35[2] = v48;
  v35[3] = v39;
  outlined destroy of DOCSidebarItemContentValueBinding(&v50);
  return outlined destroy of CharacterSet?(v22, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd);
}

{
  v2 = v1;
  v37[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v38 = v37 - v5;
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = v37 - v22;
  (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v21);
  type metadata accessor for UICellConfigurationState();
  lazy protocol witness table accessor for type UICellConfigurationState and conformance UICellConfigurationState();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0 || (*v23 & 1) == 0)
  {
    v24 = UICellConfigurationState.traitCollection.getter();
    v25 = [v24 sourceOutlineStyle];

    if (v25 == 1)
    {
      static UIListContentConfiguration.prominentInsetGroupedHeader()();
    }

    else
    {
      static UIListContentConfiguration.header()();
    }

    static UIBackgroundConfiguration.listHeader()();
    (*(v11 + 40))(&v23[v15[12]], v14, v10);
    (*(v39 + 40))(&v23[v15[13]], v9, v40);
  }

  UIListContentConfiguration.text.setter();
  outlined init with copy of DOCGridLayout.Spec?(v23, v19, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd);
  v26 = v15[12];
  v41[3] = v10;
  v41[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(v11 + 16))(boxed_opaque_existential_1, &v19[v26], v10);
  MEMORY[0x24C1FBB20](v41);
  v28 = v38;
  v29 = v39;
  v30 = v40;
  (*(v39 + 16))(v38, &v19[v15[13]], v40);
  (*(v29 + 56))(v28, 0, 1, v30);
  MEMORY[0x24C1FBB40](v28);
  v31 = MEMORY[0x277D85000];
  *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60)) = *v19;
  v32 = &v19[v15[10]];
  v34 = *v32;
  v33 = v32[1];

  outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd);
  v35 = (v2 + *((*v31 & *v2) + 0x68));
  swift_beginAccess();
  *v35 = v34;
  v35[1] = v33;

  return outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd);
}

uint64_t specialized DOCSidebarCell.ensureHasContentViewConfiguration()()
{
  v1 = type metadata accessor for UICellConfigurationState();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v17[-1] - v9;
  MEMORY[0x24C1FBB10](v17, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pSgMd);
  v11 = type metadata accessor for UIListContentConfiguration();
  v12 = swift_dynamicCast();
  v13 = *(*(v11 - 8) + 56);
  if (v12)
  {
    v13(v10, 0, 1, v11);
    return outlined destroy of CharacterSet?(v10, &_s5UIKit26UIListContentConfigurationVSgMd);
  }

  else
  {
    v13(v10, 1, 1, v11);
    outlined destroy of CharacterSet?(v10, &_s5UIKit26UIListContentConfigurationVSgMd);
    v15 = [v0 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    v17[3] = v11;
    v17[4] = MEMORY[0x277D74C30];
    __swift_allocate_boxed_opaque_existential_1(v17);
    static UIListContentConfiguration.subtitleCell()();
    (*(v2 + 8))(v5, v1);
    return MEMORY[0x24C1FBB20](v17);
  }
}

{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v20[-1] - v10;
  MEMORY[0x24C1FBB10](v20, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pSgMd);
  v12 = type metadata accessor for UIListContentConfiguration();
  v13 = swift_dynamicCast();
  v14 = *(*(v12 - 8) + 56);
  if (v13)
  {
    v14(v11, 0, 1, v12);
    return outlined destroy of CharacterSet?(v11, &_s5UIKit26UIListContentConfigurationVSgMd);
  }

  else
  {
    v14(v11, 1, 1, v12);
    outlined destroy of CharacterSet?(v11, &_s5UIKit26UIListContentConfigurationVSgMd);
    v16 = [v1 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    v20[3] = v12;
    v20[4] = MEMORY[0x277D74C30];
    __swift_allocate_boxed_opaque_existential_1(v20);
    v17 = UICellConfigurationState.traitCollection.getter();
    v18 = [v17 sourceOutlineStyle];

    if (v18 == 1)
    {
      static UIListContentConfiguration.prominentInsetGroupedHeader()();
    }

    else
    {
      static UIListContentConfiguration.header()();
    }

    (*(v3 + 8))(v6, v2);
    return MEMORY[0x24C1FBB20](v20);
  }
}

uint64_t specialized DOCSidebarCell.addAccessoryItem(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
LABEL_22:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](i, v5);
      if (__OFADD__(i, 1))
      {
LABEL_16:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v8 = *(v5 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }
    }

    if (*(v8 + 16) == *(a1 + 16) && *(v8 + 24) == *(a1 + 24))
    {
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
    }
  }

  swift_beginAccess();

  MEMORY[0x24C1FB090](v11);
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v12 = swift_endAccess();
  return (*((*MEMORY[0x277D85000] & *v2) + 0x150))(v12);
}

uint64_t specialized DOCSidebarCell.removeAccessoryItem(named:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *v3) + 0x78);
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 >> 62)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();

  v10 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v3 + v7), a1, a2);

  v11 = *(v3 + v7);
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= v10)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = __CocoaSet.count.getter();
  if (v12 < v10)
  {
    goto LABEL_11;
  }

LABEL_5:
  specialized Array.replaceSubrange<A>(_:with:)(v10, v12);
  swift_endAccess();
  v13 = *(v3 + v7);
  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == v9)
    {
      return result;
    }

    return (*((*v6 & *v3) + 0x150))();
  }

LABEL_12:
  result = __CocoaSet.count.getter();
  if (result == v9)
  {
    return result;
  }

  return (*((*v6 & *v3) + 0x150))();
}

uint64_t specialized DOCSidebarCell.accessoryItem(named:)(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_22:
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v9 = *(v6 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }
      }

      v11 = *(v9 + 16) == a1 && *(v9 + 24) == a2;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return v9;
      }

      ++v8;
    }

    while (v10 != v7);
  }

  return 0;
}

size_t specialized DOCSidebarCell.reloadDisplayedAccessories()()
{
  v1 = type metadata accessor for UICellAccessory();
  v2 = *(v1 - 8);
  v38 = v1;
  v39 = v2;
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v0) + 0xE0))(v4);
  v9 = [v0 traitCollection];
  v10 = [v9 sourceOutlineStyle];

  v11 = *((*v7 & *v0) + 0x78);
  swift_beginAccess();
  v37 = v0;
  v12 = *(v0 + v11);
  v40 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
LABEL_34:
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v35 = v6;
    v36 = v12;
    v15 = 0;
    v16 = v12 & 0xC000000000000001;
    v6 = (v12 & 0xFFFFFFFFFFFFFF8);
    v17 = v12 + 32;
    while (1)
    {
      if (v16)
      {
        v12 = MEMORY[0x24C1FC540](v15, v36);
        v18 = __OFADD__(v15++, 1);
        if (v18)
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v23 = v40;
          v6 = v35;
          v14 = MEMORY[0x277D84F90];
          goto LABEL_21;
        }
      }

      else
      {
        if (v15 >= *(v6 + 2))
        {
          __break(1u);
          goto LABEL_34;
        }

        v12 = *(v17 + 8 * v15);

        v18 = __OFADD__(v15++, 1);
        if (v18)
        {
          goto LABEL_18;
        }
      }

      if ((v8 & 1) == 0 || ((*(*v12 + 120))() & 1) == 0)
      {
        v19 = *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles);
        v20 = *(v19 + 16);
        v21 = (v19 + 32);
        while (v20)
        {
          v22 = *v21++;
          --v20;
          if (v22 == v10)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            goto LABEL_6;
          }
        }
      }

LABEL_6:
      if (v15 == v13)
      {
        goto LABEL_19;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_21:

  if ((v23 & 0x8000000000000000) == 0 && (v23 & 0x4000000000000000) == 0)
  {
    v24 = *(v23 + 16);
    if (v24)
    {
      goto LABEL_24;
    }

LABEL_36:

    return UICollectionViewListCell.accessories.setter();
  }

  v24 = __CocoaSet.count.getter();
  if (!v24)
  {
    goto LABEL_36;
  }

LABEL_24:
  v40 = v14;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v27 = v40;
    v28 = v23;
    v29 = v23 & 0xC000000000000001;
    v30 = v28;
    do
    {
      if (v29)
      {
        v31 = MEMORY[0x24C1FC540](v26);
      }

      else
      {
        v31 = *(v28 + 8 * v26 + 32);
      }

      (*(*v31 + 168))();

      v40 = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
        v27 = v40;
      }

      ++v26;
      *(v27 + 16) = v33 + 1;
      (*(v39 + 32))(v27 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33, v6, v38);
      v28 = v30;
    }

    while (v24 != v26);
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

id DOCSidebarItemCell.updateInlineEditingLeadingInset()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v1)
  {
    v3 = [v0 traitCollection];
    v4 = specialized static CGSize.doc_preferredSourceListIconSize(for:)(v3);

    result = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingLeadingConstraint];
    if (!result)
    {
      return result;
    }

    v6 = v4 + 8.0;
  }

  else
  {
    result = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingLeadingConstraint];
    if (!result)
    {
      return result;
    }

    v6 = 0.0;
  }

  return [result setConstant_];
}

Swift::Void __swiftcall DOCSidebarItemCell.textFieldDidEndEditing(_:)(UITextField *a1)
{
  v2 = v1;
  v4 = v1 + direct field offset for DOCSidebarItemCell.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    v6 = [(UITextField *)a1 text];
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v1, v8, v10, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v12 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  v13 = *(v2 + v12);
  *(v2 + v12) = 0;
  if (v13 == 1)
  {
    specialized DOCSidebarCell.reloadDisplayedAccessories()();
  }
}

uint64_t specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, int a4@<W5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v35 = a4;
  v33 = a3;
  v34 = a6;
  v31 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v30 - v10;
  v30 = type metadata accessor for UICellAccessory.Placement();
  v12 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v16 = *(v32 - 8);
  v18 = MEMORY[0x28223BE20](v32, v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v22 = swift_dynamicCastClassUnconditional();
  v23 = *(*v22 + 224);
  v24 = v21;
  v23(v21);
  v25 = (*(*v22 + 248))(v24);
  (*(*v22 + 264))(v25);
  (*(v12 + 16))(v15, v31, v30);
  v26 = type metadata accessor for UICellAccessory.LayoutDimension();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v11, v33, v26);
  (*(v27 + 56))(v11, 0, 1, v26);
  v28 = v24;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();

  return (*(v16 + 8))(v20, v32);
}

uint64_t specialized closure #1 in DOCSidebarCell.updateContentBindings(_:)(void (*a1)(char *), uint64_t a2, char *a3)
{
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((*MEMORY[0x277D85000] & *a3) + 0x68);
  swift_beginAccess();
  a1(&a3[v10]);
  swift_endAccess();
  v11 = [a3 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v9);
  return (*(v6 + 8))(v9, v5);
}

{
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((*MEMORY[0x277D85000] & *a3) + 0x68);
  swift_beginAccess();
  a1(&a3[v10]);
  swift_endAccess();
  v11 = [a3 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v9);
  return (*(v6 + 8))(v9, v5);
}

id specialized DOCSidebarItemContentValueBinding.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  v3 = [v2 traitCollection];

  v4 = [v3 preferredContentSizeCategory];
  v5 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  swift_beginAccess();
  v7 = static DOCSidebarIcon.blank;
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v7;

  return v7;
}

uint64_t outlined assign with copy of DOCSidebarItemIconProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void specialized DOCSidebarItemCell.TagIconProvider.configureRequestForNoneTag(_:cell:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() nonClearNoneTagColor];
  MEMORY[0x24C1FBB30]();
  v9 = type metadata accessor for UIBackgroundConfiguration();
  if ((*(*(v9 - 8) + 48))(v7, 1, v9))
  {
    outlined destroy of CharacterSet?(v7, &_s5UIKit25UIBackgroundConfigurationVSgMd);
  }

  else
  {
    v10 = UIBackgroundConfiguration.backgroundColor.getter();
    outlined destroy of CharacterSet?(v7, &_s5UIKit25UIBackgroundConfigurationVSgMd);
    if (v10)
    {
      v11 = [a2 tintColor];
      v12 = [v10 _isSimilarToColor_withinPercentage_];

      if (v12)
      {
        v13 = [objc_opt_self() systemWhiteColor];

        v8 = v13;
      }

      else
      {
      }
    }
  }

  [a1 setRingColor_];
}

id specialized DOCSidebarItemCell.RawImageIconProvider.iconByResizing(_:toSize:forCell:)(void *a1, char a2, void *a3, double a4, double a5)
{
  if ([a1 isSymbolImage])
  {
    return a1;
  }

  [a1 size];
  if (v11 == a4 && v10 == a5)
  {
    return a1;
  }

  v13 = [a3 traitCollection];
  v14 = [objc_opt_self() formatForTraitCollection_];
  v15 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v14 format:{a4, a5}];

  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2 & 1;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in DOCSidebarItemCell.RawImageIconProvider.iconByResizing(_:toSize:forCell:);
  *(v17 + 24) = v16;
  v22[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v22[5] = v17;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v22[3] = &block_descriptor_187;
  v18 = _Block_copy(v22);
  v19 = a1;

  v20 = [v15 imageWithActions_];

  _Block_release(v18);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in DOCSidebarItemCell.title.setter(void *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 16);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = *(v1 + 24);
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t partial apply for specialized closure #1 in DOCSidebarCell.updateContentBindings(_:)()
{
  return specialized closure #1 in DOCSidebarCell.updateContentBindings(_:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in DOCSidebarCell.updateContentBindings(_:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t partial apply for closure #1 in DOCSidebarItemCell.subtitle.setter(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  return result;
}

uint64_t specialized DOCSidebarItemCell.ProviderSyncStateAccessoryItem.init(for:)(void *a1)
{
  v2 = v1;
  v58 = type metadata accessor for UICellAccessory.LayoutDimension();
  v60 = *(v58 - 8);
  v62 = *(v60 + 64);
  v5 = MEMORY[0x28223BE20](v58, v4);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v51 - v8;
  v10 = type metadata accessor for UICellAccessory.Placement();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v51 - v16;
  type metadata accessor for DOCFileProviderSyncStateSidebarCellAccessoryItemViewModel();
  swift_allocObject();
  v59 = specialized DOCFileProviderSyncStateSidebarCellAccessoryItemViewModel.init(for:)(a1);
  v18 = objc_allocWithZone(type metadata accessor for DOCFileProviderSyncStateSidebarCellAccessoryItemView());

  v20 = DOCFileProviderSyncStateSidebarCellAccessoryItemView.init(with:)(v19);
  v55 = v20;
  v56 = v2;
  *(v2 + direct field offset for DOCSidebarItemCell.ProviderSyncStateAccessoryItem.accessoryView) = v20;
  v63 = 0x8000000249BC91D0;
  v21 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48)];
  v22 = *MEMORY[0x277D74A90];
  v23 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v23 - 8) + 104))(v17, v22, v23);
  *v21 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
  v21[1] = 0;
  v24 = *MEMORY[0x277D74AD8];
  v25 = *(v11 + 104);
  v54 = v17;
  v52 = v10;
  v25(v17, v24, v10);
  v26 = swift_allocObject();
  *(v26 + 16) = v20;
  v27 = *MEMORY[0x277D74AB0];
  v28 = v60;
  v29 = *(v60 + 104);
  v30 = v9;
  v53 = v9;
  v31 = v9;
  v32 = v58;
  v29(v31, v27, v58);
  *(v2 + direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded) = 0;
  v33 = v57;
  (*(v11 + 16))(v57, v17, v10);
  v34 = v28;
  v35 = v61;
  v36 = v30;
  v37 = v32;
  (*(v28 + 16))(v61, v36, v32);
  v38 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v39 = (v12 + *(v34 + 80) + v38) & ~*(v34 + 80);
  v40 = v39 + v62;
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for closure #1 in DOCSidebarItemCell.RemoveableItemStateAccessoryItem.init(for:);
  *(v41 + 24) = v26;
  v42 = v41 + v38;
  v43 = v52;
  (*(v11 + 32))(v42, v33, v52);
  (*(v34 + 32))(v41 + v39, v35, v37);
  *(v41 + v40) = 2;
  v44 = v55;

  (*(v34 + 8))(v53, v37);
  (*(v11 + 8))(v54, v43);
  v45 = v56;
  v46 = v56;
  *(v56 + 32) = 1;
  v47 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  v48 = type metadata accessor for UICellAccessory();
  (*(*(v48 - 8) + 56))(v45 + v47, 1, 1, v48);
  *(v45 + 16) = 0xD000000000000013;
  *(v45 + 24) = v63;
  *(v45 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of DOCSidebarItemCell.ProviderSyncStateAccessoryItem.init(for:);
  swift_beginAccess();
  *(v46 + 32) = 1;
  v49 = (v45 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v49 = closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)specialized partial apply;
  v49[1] = v41;
  return v45;
}

uint64_t specialized DOCSidebarItemCell.textFieldDidBeginEditing(_:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 1;
  if ((v2 & 1) == 0)
  {
    specialized DOCSidebarCell.reloadDisplayedAccessories()();
  }

  v3 = v0 + direct field offset for DOCSidebarItemCell.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v0, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarItemCell.UnseenIndicatorState and conformance DOCSidebarItemCell.UnseenIndicatorState()
{
  result = lazy protocol witness table cache variable for type DOCSidebarItemCell.UnseenIndicatorState and conformance DOCSidebarItemCell.UnseenIndicatorState;
  if (!lazy protocol witness table cache variable for type DOCSidebarItemCell.UnseenIndicatorState and conformance DOCSidebarItemCell.UnseenIndicatorState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarItemCell.UnseenIndicatorState and conformance DOCSidebarItemCell.UnseenIndicatorState);
  }

  return result;
}

uint64_t keypath_set_40Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

id keypath_get_45Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarIcon(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCSidebarIcon(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarIcon.Metrics(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCSidebarIcon.Metrics(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarItemContentValueBinding(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for DOCSidebarItemContentValueBinding(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for DOCSidebarItemCell(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UICellConfigurationState and conformance UICellConfigurationState()
{
  result = lazy protocol witness table cache variable for type UICellConfigurationState and conformance UICellConfigurationState;
  if (!lazy protocol witness table cache variable for type UICellConfigurationState and conformance UICellConfigurationState)
  {
    type metadata accessor for UICellConfigurationState();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UICellConfigurationState and conformance UICellConfigurationState);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)@<X0>(uint64_t a1@<X8>)
{
  return partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)(&_s26DocumentManagerExecutables33DOCSidebarCellCustomAccessoryItemCySo6UIViewCGMd, a1);
}

{
  return partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)(&_s26DocumentManagerExecutables33DOCSidebarCellCustomAccessoryItemCyAA14DOCEjectButtonCGMd, a1);
}

{
  return partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)(&_s26DocumentManagerExecutables33DOCSidebarCellCustomAccessoryItemCySo8UISwitchCGMd, a1);
}

uint64_t partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UICellAccessory.Placement() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UICellAccessory.LayoutDimension() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  return specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)(*(v2 + 16), v2 + v6, v2 + v9, *(v2 + v9 + *(v8 + 64)), a1, a2);
}

uint64_t objectdestroy_163Tm()
{
  v1 = type metadata accessor for UICellAccessory.Placement();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UICellAccessory.LayoutDimension();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 1, v10 | 7);
}

uint64_t outlined init with copy of DOCSidebarItemIconProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Bool __swiftcall DOCCopyOperation.shouldUseDSCopyEngine()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      if ((specialized DOCCopyOperation.itemSupportsDSCopy(_:)(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem)) & 1) == 0)
      {
        break;
      }

      v2 = v2 ? __CocoaSet.count.getter() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = v0;
      v4 = 0;
      while (1)
      {
        v0 = v2 == v4;
        if (v2 == v4)
        {
LABEL_16:

          return v0;
        }

        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x24C1FC540](v4, v1);
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v7 = specialized DOCCopyOperation.itemSupportsDSCopy(_:)(v5);

        ++v4;
        if ((v7 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    while (__CocoaSet.count.getter());
  }

  LOBYTE(v0) = 0;
  return v0;
}

Swift::Bool __swiftcall DOCCopyOperation.handlePresendNotifications_asDSCopy()()
{
  v1 = v0;
  LOBYTE(v2) = DOCCopyOperation.shouldUseDSCopyEngine()();
  if ((v2 & 1) == 0)
  {
    return v2 & 1;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem);
  v4 = specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(v3, 3);
  v36 = v3;

  if (v4)
  {
    v29 = FPProviderDomain.shouldUseDSEnumeration.getter();

    if (v29)
    {
      return v2 & 1;
    }
  }

  v5 = [v1 stitcher];
  if (!v5)
  {
    return v2 & 1;
  }

  v6 = v5;
  [v5 start];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8FPItemIDC_ADTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v37 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems);
  v35 = v8;
  if (v8 >> 62)
  {
LABEL_43:
    v31 = v7;
    v9 = __CocoaSet.count.getter();
    v7 = v31;
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_36:
    (*((*MEMORY[0x277D85000] & *v1) + 0x100))();
    [v6 flush];

    return v2 & 1;
  }

LABEL_6:
  v32 = v1;
  v33 = v2;
  v10 = 0;
  v2 = v35;
  v34 = v6;
  while (1)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v10, v2);
    }

    else
    {
      if (v10 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v7 = *(v2 + 8 * v10 + 32);
    }

    v12 = v7;
    v1 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v13 = [v7 itemID];
    v14 = [v36 itemIdentifier];
    v15 = [v36 providerDomainID];
    v16 = [v6 createPlaceholderWithCopyOfExistingItem:v12 lastUsageUpdatePolicy:1 underParent:v14 inProviderDomainID:v15];

    if (v16)
    {
      break;
    }

    v11 = specialized Dictionary._Variant.removeValue(forKey:)(v13);

LABEL_8:
    ++v10;
    if (v1 == v9)
    {
      LOBYTE(v2) = v33;
      v1 = v32;
      goto LABEL_36;
    }
  }

  v17 = v37;
  if ((v37 & 0xC000000000000001) != 0)
  {
    if (v37 >= 0)
    {
      v17 = (v37 & 0xFFFFFFFFFFFFFF8);
    }

    v7 = __CocoaSet.count.getter();
    if (__OFADD__(v7, 1))
    {
      goto LABEL_40;
    }

    v17 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8FPItemIDC_AHTt1g5Tm(v17, v7 + 1, &_ss18_DictionaryStorageCySo8FPItemIDCADGMd, &_ss18_DictionaryStorageCySo8FPItemIDCADGMR, &lazy cache variable for type metadata for FPItemID);
    v37 = v17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  v20 = v17[2];
  v21 = (v19 & 1) == 0;
  v7 = (v20 + v21);
  if (__OFADD__(v20, v21))
  {
    goto LABEL_39;
  }

  LOBYTE(v2) = v19;
  if (v17[3] >= v7)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v19)
      {
        goto LABEL_27;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo8FPItemIDCADGMd);
      if (v2)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    v17[(v6 >> 6) + 8] |= 1 << v6;
    *(v17[6] + 8 * v6) = v13;
    *(v17[7] + 8 * v6) = v16;

    v26 = v17[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_42;
    }

    v17[2] = v28;
    goto LABEL_31;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v7, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCySo8FPItemIDCADGMd);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  if ((v2 & 1) == (v23 & 1))
  {
    v6 = v22;
    if ((v2 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_27:
    v24 = v17[7];
    v25 = *(v24 + 8 * v6);
    *(v24 + 8 * v6) = v16;

LABEL_31:
    v37 = v17;
    v6 = v34;
    v2 = v35;
    goto LABEL_8;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall DOCCopyOperation.handleActionMain_asDSCopy()()
{
  v1 = DOCCopyOperation.shouldUseDSCopyEngine()();
  if (!v1)
  {
    return v1;
  }

  v2 = DOCCreateDSNSHelperContext();
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DOCDSCopyEngineXPCConnection();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v9 = v4;
    v10 = &protocol witness table for DOCDSCopyEngineXPCConnection;
    *&v8 = v5;
    outlined init with take of DOCGoToFolderCandidate(&v8, v11);
    v6 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    specialized DOCCopyOperation.copyWithDSCopyEngine(_:)(*v6, v0);
    __swift_destroy_boxed_opaque_existential_0(v11);
    return v1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t DOCCopyOperation.transferResults.getter()
{
  if (!DOCCopyOperation.shouldUseDSCopyEngine()())
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    outlined destroy of CharacterSet?(&v13, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMd);
    v12.receiver = v0;
    v12.super_class = type metadata accessor for DOCCopyOperation();
    v9 = objc_msgSendSuper2(&v12, sel_transferResults);
    if (v9)
    {
      v10 = v9;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      return v8;
    }

    return 0;
  }

  v1 = DOCCreateDSNSHelperContext();
  if (v1)
  {
    v2 = v1;
    v3 = type metadata accessor for DOCDSCopyEngineXPCConnection();
    inited = swift_initStackObject();
    *(inited + 16) = v2;
    *(&v14 + 1) = v3;
    v15 = &protocol witness table for DOCDSCopyEngineXPCConnection;
    *&v13 = inited;
    v5 = outlined destroy of CharacterSet?(&v13, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMd);
    v6 = (*((*MEMORY[0x277D85000] & *v0) + 0xB0))(v5);
    if (v6)
    {
      v7 = specialized Dictionary.compactMapValues<A>(_:)(v6);

      v8 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v7);

      return v8;
    }

    return 0;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = &_s10Foundation3URLV3key_So7DOCNode_p5valuetMd;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So7DOCNode_p5valuetMd);
  MEMORY[0x28223BE20](v55, v3);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v54 = &v46 - v7;
  MEMORY[0x28223BE20](v8, v9);
  v53 = &v46 - v10;
  v49 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F98];
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v56 = a1;

  v17 = 0;
  v51 = v15;
  for (i = a1 + 64; ; v11 = i)
  {
    v18 = v17;
    if (!v14)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v19 = v2;
      v17 = v18;
LABEL_11:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v17 << 6);
      v22 = v56;
      v23 = *(v56 + 48);
      v24 = type metadata accessor for URL();
      v50 = *(v24 - 8);
      v25 = *(v50 + 72);
      v26 = v53;
      (*(v50 + 16))(v53, v23 + v25 * v21, v24);
      v27 = v54;
      *(v26 + *(v55 + 48)) = *(*(v22 + 56) + 8 * v21);
      v2 = v19;
      v28 = v19;
      v29 = v27;
      outlined init with take of (key: URL, value: FPItem)(v26, v27, v28);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v30 = DOCNode.fpfs_syncFetchFPItem()();
      if (v30)
      {
        break;
      }

      result = outlined destroy of CharacterSet?(v29, v2);
      v18 = v17;
      v15 = v51;
      v11 = i;
      if (!v14)
      {
LABEL_7:
        while (1)
        {
          v17 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v17 >= v15)
          {

            return v49;
          }

          v14 = *(v11 + 8 * v17);
          ++v18;
          if (v14)
          {
            v19 = v2;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    v31 = v30;
    v46 = v25;
    v47 = v24;
    outlined init with take of (key: URL, value: FPItem)(v29, v48, v2);
    v32 = v49[2];
    if (v49[3] <= v32)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32 + 1, 1, &_ss18_DictionaryStorageCy10Foundation3URLVSo6FPItemCGMd);
    }

    v33 = v57;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v34 = v33 + 64;
    v49 = v33;
    v35 = -1 << *(v33 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v33 + 64 + 8 * (v36 >> 6))) == 0)
    {
      break;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v33 + 64 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v39 = v50;
    v40 = v46;
LABEL_26:
    *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v45 = v49;
    (*(v39 + 32))(v49[6] + v38 * v40, v48, v47);
    *(v45[7] + 8 * v38) = v31;
    ++v45[2];
    result = swift_unknownObjectRelease();
    v15 = v51;
  }

  v41 = 0;
  v42 = (63 - v35) >> 6;
  v39 = v50;
  v40 = v46;
  while (++v37 != v42 || (v41 & 1) == 0)
  {
    v43 = v37 == v42;
    if (v37 == v42)
    {
      v37 = 0;
    }

    v41 |= v43;
    v44 = *(v34 + 8 * v37);
    if (v44 != -1)
    {
      v38 = __clz(__rbit64(~v44)) + (v37 << 6);
      goto LABEL_26;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v47 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So6FPItemC5valuetMd);
  MEMORY[0x28223BE20](v46, v6);
  v45 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v44 = v42 - v10;
  v50 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVSo6FPItemCGMd);
    v11 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v12 = v50 + 64;
  v13 = 1 << *(v50 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v50 + 64);
  v16 = (v13 + 63) >> 6;
  v42[1] = v49 + 16;
  v42[0] = v49 + 32;
  v17 = v11 + 64;

  v19 = 0;
  v43 = v11;
  while (v15)
  {
LABEL_15:
    v23 = __clz(__rbit64(v15)) | (v19 << 6);
    v25 = v49;
    v24 = v50;
    v26 = v44;
    v27 = v48;
    (*(v49 + 16))(v44, *(v50 + 48) + *(v49 + 72) * v23, v48);
    v28 = *(*(v24 + 56) + 8 * v23);
    v29 = v46;
    *&v26[*(v46 + 48)] = v28;
    v30 = v26;
    v31 = v45;
    outlined init with take of (key: URL, value: FPItem)(v30, v45, &_s10Foundation3URLV3key_So6FPItemC5valuetMd);
    v32 = *(v29 + 48);
    (*(v25 + 32))(v47, v31, v27);
    v33 = v28;
    swift_dynamicCast();
    v34 = *(v31 + v32);
    v54 = v51;
    v11 = v43;
    result = AnyHashable._rawHashValue(seed:)(*(v43 + 40));
    v35 = -1 << *(v11 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v17 + 8 * (v36 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v35) >> 6;
      while (++v37 != v39 || (v38 & 1) == 0)
      {
        v40 = v37 == v39;
        if (v37 == v39)
        {
          v37 = 0;
        }

        v38 |= v40;
        v41 = *(v17 + 8 * v37);
        if (v41 != -1)
        {
          v20 = __clz(__rbit64(~v41)) + (v37 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v20 = __clz(__rbit64((-1 << v36) & ~*(v17 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v15 &= v15 - 1;
    *(v17 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v21 = *(v11 + 48) + 40 * v20;
    *v21 = v51;
    *(v21 + 16) = v52;
    *(v21 + 32) = v53;
    *(*(v11 + 56) + 8 * v20) = v34;
    ++*(v11 + 16);
  }

  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v22 >= v16)
    {

      return v11;
    }

    v15 = *(v12 + 8 * v22);
    ++v19;
    if (v15)
    {
      v19 = v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = outlined init with take of Any(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = outlined init with take of Any(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

        v19 = v18;
        swift_dynamicCast();
        outlined init with take of Any(&v25, v27);
        outlined init with take of Any(v27, v28);
        outlined init with take of Any(v28, &v26);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = outlined init with take of Any(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = outlined init with take of Any(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84F98];
    goto LABEL_6;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8FPItemIDCSo7DOCNode_pGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
LABEL_6:
  if (type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID) != MEMORY[0x277D837D0])
  {
    if (v2)
    {
      v4 = __CocoaDictionary.makeIterator()();
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = v4 | 0x8000000000000000;
    }

    else
    {
      v14 = -1 << *(a1 + 32);
      v6 = ~v14;
      v5 = a1 + 64;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v7 = v16 & *(a1 + 64);
      v8 = a1;
    }

    v17 = (v6 + 64) >> 6;
    v18 = v3 + 64;

    v20 = 0;
    for (i = v8; ; v8 = i)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        v30 = __CocoaDictionary.Iterator.next()();
        if (!v30)
        {
          goto LABEL_61;
        }

        v61 = v30;
        swift_dynamicCast();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
        swift_dynamicCast();
        v29 = v61;
        v28 = v63;
        v23 = v20;
        v25 = v7;
        if (!v63)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v22 = v7;
        v23 = v20;
        if (!v7)
        {
          v24 = v20;
          while (1)
          {
            v23 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v23 >= v17)
            {
              goto LABEL_61;
            }

            v22 = *(v5 + 8 * v23);
            ++v24;
            if (v22)
            {
              v8 = i;
              goto LABEL_25;
            }
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

LABEL_25:
        v25 = (v22 - 1) & v22;
        v26 = (v23 << 9) | (8 * __clz(__rbit64(v22)));
        v27 = *(*(v8 + 56) + v26);
        v28 = *(*(v8 + 48) + v26);
        v29 = v27;
        if (!v28)
        {
          goto LABEL_61;
        }
      }

      result = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v31 = -1 << *(v3 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) != 0)
      {
        v21 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        do
        {
          if (++v33 == v35 && (v34 & 1) != 0)
          {
            __break(1u);
            goto LABEL_63;
          }

          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
        }

        while (v37 == -1);
        v21 = __clz(__rbit64(~v37)) + (v33 << 6);
      }

      *(v18 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v3 + 48) + 8 * v21) = v28;
      *(*(v3 + 56) + 8 * v21) = v29;
      ++*(v3 + 16);
      v20 = v23;
      v7 = v25;
    }
  }

  if (v2)
  {
    v9 = __CocoaDictionary.makeIterator()();
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v9 | 0x8000000000000000;
  }

  else
  {
    v38 = -1 << *(a1 + 32);
    v11 = ~v38;
    v10 = a1 + 64;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v12 = v40 & *(a1 + 64);
    v13 = a1;
  }

  v41 = (v11 + 64) >> 6;

  v42 = 0;
  for (j = v13; ; v13 = j)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      v54 = __CocoaDictionary.Iterator.next()();
      if (!v54)
      {
        goto LABEL_61;
      }

      v62 = v54;
      swift_dynamicCast();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      swift_dynamicCast();
      v53 = v62;
      v52 = v63;
      v47 = v42;
      v49 = v12;
      if (!v63)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v46 = v12;
      v47 = v42;
      if (!v12)
      {
        v48 = v42;
        while (1)
        {
          v47 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_64;
          }

          if (v47 >= v41)
          {
            break;
          }

          v46 = *(v10 + 8 * v47);
          ++v48;
          if (v46)
          {
            v13 = j;
            goto LABEL_53;
          }
        }

LABEL_61:
        outlined consume of Set<UITouch>.Iterator._Variant();

        return v3;
      }

LABEL_53:
      v49 = (v46 - 1) & v46;
      v50 = (v47 << 9) | (8 * __clz(__rbit64(v46)));
      v51 = *(*(v13 + 56) + v50);
      v52 = *(*(v13 + 48) + v50);
      v53 = v51;
      if (!v52)
      {
        goto LABEL_61;
      }
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(v52);
    if (v55)
    {
      v43 = *(v3 + 48);
      v44 = *(v43 + 8 * result);
      *(v43 + 8 * result) = v52;
      v45 = result;

      *(*(v3 + 56) + 8 * v45) = v53;
      result = swift_unknownObjectRelease();
      goto LABEL_45;
    }

    if (*(v3 + 16) >= *(v3 + 24))
    {
      goto LABEL_65;
    }

    *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(*(v3 + 48) + 8 * result) = v52;
    *(*(v3 + 56) + 8 * result) = v53;
    v56 = *(v3 + 16);
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      break;
    }

    *(v3 + 16) = v58;
LABEL_45:
    v42 = v47;
    v12 = v49;
  }

LABEL_66:
  __break(1u);
  return result;
}

id DOCCopyOperation.doc_transferResults.getter()
{
  if (DOCCopyOperation.shouldUseDSCopyEngine()())
  {
    v1 = DOCCreateDSNSHelperContext();
    if (v1)
    {
      v2 = v1;
      v3 = type metadata accessor for DOCDSCopyEngineXPCConnection();
      inited = swift_initStackObject();
      *(inited + 16) = v2;
      *(&v11 + 1) = v3;
      v12 = &protocol witness table for DOCDSCopyEngineXPCConnection;
      *&v10 = inited;
      v5 = outlined destroy of CharacterSet?(&v10, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMd);
      return (*((*MEMORY[0x277D85000] & *v0) + 0xB0))(v5);
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    outlined destroy of CharacterSet?(&v10, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMd);
    result = [v0 transferResults];
    if (result)
    {
      v7 = result;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v8);

      return v9;
    }
  }

  return result;
}

uint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v56 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So7DOCNode_p5valuetMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v64 = &v56 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7DOCNode_ptMd);
  MEMORY[0x28223BE20](v63, v9);
  v62 = &v56 - v10;
  v11 = type metadata accessor for URL();
  v67 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v70 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v61 = &v56 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v60 = &v56 - v19;
  v68 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation3URLVSo7DOCNode_pGMd);
    v20 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
  }

  v21 = v68 + 64;
  v22 = 1 << *(v68 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v68 + 64);
  v25 = (v22 + 63) >> 6;
  v66 = (v67 + 56);
  v71 = (v67 + 32);

  v27 = 0;
  v65 = v5;
  v59 = v21;
  v58 = v25;
  v57 = v20;
  v56 = v20 + 64;
  while (1)
  {
    if (!v24)
    {
      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v25)
        {

          return v20;
        }

        v24 = *(v21 + 8 * v29);
        ++v27;
        if (v24)
        {
          v27 = v29;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_15:
    v30 = __clz(__rbit64(v24)) | (v27 << 6);
    v31 = v68;
    outlined init with copy of AnyHashable(*(v68 + 48) + 40 * v30, v76);
    v32 = *(*(v31 + 56) + 8 * v30);
    *(&v77 + 1) = v32;
    v74[0] = v76[0];
    v74[1] = v76[1];
    v75 = v77;
    outlined init with copy of AnyHashable(v74, v73);
    v33 = v32;
    if (!swift_dynamicCast())
    {
      break;
    }

    v34 = v5;
    (*v66)(v5, 0, 1, v11);
    v35 = *v71;
    v36 = v61;
    (*v71)(v61, v34, v11);
    v37 = *(&v75 + 1);
    outlined destroy of CharacterSet?(v74, &_ss11AnyHashableV3key_So6FPItemC5valuetMd);
    v72 = &unk_285DA7F78;
    v38 = swift_dynamicCastObjCProtocolUnconditional();
    v39 = v11;
    v40 = v64;
    v35(v64, v36, v39);
    v41 = v63;
    v42 = *(v63 + 48);
    v43 = v62;
    v44 = v40;
    v11 = v39;
    v35(v62, v44, v39);
    *&v43[v42] = v38;
    v45 = *(v41 + 48);
    v46 = v70;
    v47 = v60;
    v35(v60, v43, v11);
    v69 = *&v43[v45];
    v20 = v57;
    v48 = v35;
    v35(v46, v47, v11);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v49 = -1 << *(v20 + 32);
    v50 = result & ~v49;
    v51 = v50 >> 6;
    if (((-1 << v50) & ~*(v56 + 8 * (v50 >> 6))) == 0)
    {
      v52 = 0;
      v53 = (63 - v49) >> 6;
      v5 = v65;
      v21 = v59;
      v25 = v58;
      while (++v51 != v53 || (v52 & 1) == 0)
      {
        v54 = v51 == v53;
        if (v51 == v53)
        {
          v51 = 0;
        }

        v52 |= v54;
        v55 = *(v56 + 8 * v51);
        if (v55 != -1)
        {
          v28 = __clz(__rbit64(~v55)) + (v51 << 6);
          goto LABEL_9;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v28 = __clz(__rbit64((-1 << v50) & ~*(v56 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
    v5 = v65;
    v21 = v59;
    v25 = v58;
LABEL_9:
    v24 &= v24 - 1;
    *(v56 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = (v48)(*(v20 + 48) + *(v67 + 72) * v28, v70, v11);
    *(*(v20 + 56) + 8 * v28) = v69;
    ++*(v20 + 16);
  }

  outlined destroy of CharacterSet?(v74, &_ss11AnyHashableV3key_So6FPItemC5valuetMd);

  (*v66)(v5, 1, 1, v11);
  outlined destroy of CharacterSet?(v5, &_s10Foundation3URLVSgMd);

  return 0;
}

{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18FPProviderDomainIDaSo0cD0CGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v10 = 0;
  v23 = v1;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v12 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v12);
        ++v10;
        if (v6)
        {
          v10 = v12;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_15:
    v13 = __clz(__rbit64(v6)) | (v10 << 6);
    outlined init with copy of AnyHashable(*(v1 + 48) + 40 * v13, v30);
    outlined init with copy of Any(*(v1 + 56) + 32 * v13, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    outlined init with copy of AnyHashable(v27, v25);
    type metadata accessor for FPProviderDomainID(0);
    if (!swift_dynamicCast())
    {
      outlined destroy of CharacterSet?(v27, &_ss11AnyHashableV3key_yp5valuetMd);

      goto LABEL_29;
    }

    v14 = v26;
    outlined init with copy of Any(v28 + 8, v25);
    outlined destroy of CharacterSet?(v27, &_ss11AnyHashableV3key_yp5valuetMd);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v24 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v8 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      v1 = v23;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v8 + 8 * v18);
        if (v22 != -1)
        {
          v11 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

LABEL_32:
      __break(1u);
      return result;
    }

    v11 = __clz(__rbit64((-1 << v17) & ~*(v8 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    v1 = v23;
LABEL_9:
    v6 &= v6 - 1;
    *(v8 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    *(*(v2 + 48) + 8 * v11) = v14;
    *(*(v2 + 56) + 8 * v11) = v24;
    ++*(v2 + 16);
  }

LABEL_29:
  v26 = 0;

  return 0;
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        outlined init with copy of Any(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        outlined init with take of Any(v22, v21);

        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + v9) = v20 & 1;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + result) = v20 & 1;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t DOCCopyOperation.doc_transferResults(from:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v136 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for URL();
  v131 = *(v134 - 8);
  v6 = *(v131 + 64);
  MEMORY[0x28223BE20](v134, v7);
  MEMORY[0x28223BE20](v8, v9);
  v122 = &v107 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v123 = &v107 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v132 = &v107 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v130 = &v107 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v133 = &v107 - v22;
  v23 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v23, v24);
  v138 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DispatchQoS();
  v135 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v26);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v113 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v5;
  v112 = v2;
  specialized DOCCopyOperation.associateThumbnails(on:)(a1);
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D84F90];
  v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_So7DOCNode_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v125 = v34;
  *(v34 + 16) = v36;
  v116 = v34 + 16;
  v126 = dispatch_group_create();
  v137 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v30 + 104))(v33, *MEMORY[0x277D85268], v29);
  static DispatchQoS.unspecified.getter();
  *&aBlock = v35;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  v37 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v110 = v28;
  v124 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v38 = a1 + 64;
  v39 = 1 << *(a1 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(a1 + 64);
  v121 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems;
  v115 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem;
  v42 = (v39 + 63) >> 6;
  v43 = v131;
  v137 = v131 + 32;
  v138 = (v131 + 16);
  v120 = v37;
  v109 = v37 + 7;
  v119 = &v141;
  v108 = (v136 + 8);
  v107 = (v135 + 8);
  v128 = (v131 + 8);

  v44 = 0;
  v45 = a1;
  v46 = v134;
  v47 = v130;
  v129 = v42;
  while (v41)
  {
LABEL_12:
    v49 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v50 = v43[9];
    v51 = v45[6] + v50 * (v49 | (v44 << 6));
    v52 = v133;
    v135 = v43[2];
    (v135)(v133, v51, v46);
    v136 = v43[4];
    (v136)(v47, v52, v46);
    if (!v45[2] || (v53 = specialized __RawDictionaryStorage.find<A>(_:)(v47), (v54 & 1) == 0))
    {
      (*v128)(v47, v46);
      goto LABEL_6;
    }

    v55 = v45[7] + v53 * v50;
    v56 = v123;
    (v135)(v123, v55, v46);
    (v136)(v132, v56, v46);
    dispatch_group_enter(v126);
    v57 = *&v127[v121];
    if (v57 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_31:
        v142 = 0;
        aBlock = 0u;
        v141 = 0u;
        outlined destroy of CharacterSet?(&aBlock, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMd);
        v118 = [objc_opt_self() defaultManager];
        URL._bridgeToObjectiveC()(&v144);
        v117 = v89;
        v90 = v122;
        (v135)(v122, v130, v46);
        v91 = (*(v131 + 80) + 40) & ~*(v131 + 80);
        v92 = swift_allocObject();
        v93 = v126;
        v94 = v124;
        v92[2] = v126;
        v92[3] = v94;
        v92[4] = v125;
        v95 = v90;
        v47 = v130;
        (v136)(v92 + v91, v95, v134);
        v142 = partial apply for closure #2 in DOCCopyOperation.doc_transferResults(from:);
        v143 = v92;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v141 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
        *(&v141 + 1) = &block_descriptor_49;
        v96 = _Block_copy(&aBlock);
        v97 = v93;

        v98 = v94;
        v46 = v134;

        v99 = v118;
        v100 = v117;
        [v118 fetchItemForURL:v117 completionHandler:v96];
        _Block_release(v96);

        v43 = v131;
        v101 = v43[1];
        v101(v132, v46);
        v101(v47, v46);
        goto LABEL_6;
      }
    }

    else if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    if ((specialized DOCCopyOperation.itemSupportsDSCopy(_:)(*&v127[v115]) & 1) == 0)
    {
      goto LABEL_31;
    }

    v118 = v45;
    if (v57 >> 62)
    {
      v58 = __CocoaSet.count.getter();
    }

    else
    {
      v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v117 = v127;
    v59 = 0;
    while (v58 != v59)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x24C1FC540](v59, v57);
      }

      else
      {
        if (v59 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v60 = *(v57 + 8 * v59 + 32);
      }

      v61 = v60;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_38;
      }

      v62 = specialized DOCCopyOperation.itemSupportsDSCopy(_:)(v60);

      ++v59;
      if ((v62 & 1) == 0)
      {
        v88 = v117;

        v45 = v118;
        v46 = v134;
        goto LABEL_31;
      }
    }

    v63 = v117;

    v64 = DOCCreateDSNSHelperContext();
    v65 = v134;
    if (!v64)
    {
      goto LABEL_40;
    }

    v66 = v64;
    v67 = type metadata accessor for DOCDSCopyEngineXPCConnection();
    inited = swift_initStackObject();
    *(inited + 16) = v66;
    *(&v141 + 1) = v67;
    v142 = &protocol witness table for DOCDSCopyEngineXPCConnection;
    *&aBlock = inited;
    outlined destroy of CharacterSet?(&aBlock, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMd);
    v69 = v122;
    v70 = v135;
    (v135)(v122, v132, v65);
    v70(v113, v130, v65);
    v71 = *(v131 + 80);
    v72 = (v71 + 16) & ~v71;
    v73 = (v109 + v72) & 0xFFFFFFFFFFFFFFF8;
    v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v71 + v74 + 8) & ~v71;
    v76 = swift_allocObject();
    v77 = v76 + v72;
    v78 = v136;
    (v136)(v77, v69, v134);
    v79 = v126;
    *(v76 + v73) = v126;
    *(v76 + v74) = v125;
    v78(v76 + v75, v113, v134);
    v142 = partial apply for closure #1 in DOCCopyOperation.doc_transferResults(from:);
    v143 = v76;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v141 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v141 + 1) = &block_descriptor_55;
    v80 = _Block_copy(&aBlock);
    v81 = v79;

    v82 = v110;
    static DispatchQoS.unspecified.getter();
    v139 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v83 = v111;
    v84 = v112;
    v46 = v134;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v82, v83, v80);
    _Block_release(v80);
    v85 = v83;
    v47 = v130;
    v86 = v84;
    v43 = v131;
    (*v108)(v85, v86);
    (*v107)(v82, v114);
    v87 = v43[1];
    v87(v132, v46);
    v87(v47, v46);

    v45 = v118;
LABEL_6:
    v42 = v129;
  }

  while (1)
  {
    v48 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v48 >= v42)
    {

      v102 = v126;
      OS_dispatch_group.wait()();
      swift_beginAccess();
      v103 = v125;

      DOCCopyOperation.updateLastUsedDate(on:)(v104);

      v105 = *(v103 + 16);

      return v105;
    }

    v41 = *(v38 + 8 * v48);
    ++v44;
    if (v41)
    {
      v44 = v48;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in DOCCopyOperation.doc_transferResults(from:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v17 - v10;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = static FINode.docNode(from:)(v11);
  outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
  if (v14)
  {
    swift_beginAccess();
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a3 + 16);
    *(a3 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a4, isUniquelyReferenced_nonNull_native, &v17);
    *(a3 + 16) = v17;
    swift_endAccess();
    dispatch_group_leave(a2);
  }

  else
  {
    dispatch_group_leave(a2);
  }
}

void closure #2 in DOCCopyOperation.doc_transferResults(from:)(void *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v38 = a5;
  v41 = a4;
  v42 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v22 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    v33 = v42;

    dispatch_group_leave(v33);
  }

  else
  {
    (*(v18 + 16))(&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v17, v21);
    v23 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v36 = v8;
    v37 = v9;
    v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v35 = v12;
    *(v26 + 16) = v38;
    (*(v18 + 32))(v26 + v23, v22, v17);
    *(v26 + v24) = a1;
    v27 = v42;
    *(v26 + v25) = v42;
    aBlock[4] = partial apply for closure #1 in closure #2 in DOCCopyOperation.doc_transferResults(from:);
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_61;
    v28 = _Block_copy(aBlock);
    v29 = a1;

    v30 = v27;
    static DispatchQoS.unspecified.getter();
    v43 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v32 = v35;
    v31 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v16, v32, v28);
    _Block_release(v28);

    (*(v37 + 8))(v32, v31);
    (*(v39 + 8))(v16, v40);
  }
}

void closure #1 in closure #2 in DOCCopyOperation.doc_transferResults(from:)(uint64_t a1, uint64_t a2, void *a3, NSObject *a4)
{
  swift_beginAccess();
  v8 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, isUniquelyReferenced_nonNull_native, &v10);
  *(a1 + 16) = v10;
  swift_endAccess();
  dispatch_group_leave(a4);
}

void DOCCopyOperation.updateLastUsedDate(on:)(uint64_t a1)
{
  v82 = a1;
  v69 = type metadata accessor for Date();
  v2 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v3);
  v68 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v67 = &v64 - v7;
  MEMORY[0x28223BE20](v8, v9);
  v66 = &v64 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v75 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetSgMd);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v78 = (&v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v64 - v25;
  v27 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v70 = v1;
  v28 = v27(v24);
  if (!v28)
  {
    return;
  }

  v29 = 0;
  v76 = v28;
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v12;
  v33 = v31 & *(v28 + 64);
  v34 = (v30 + 63) >> 6;
  v72 = v28 + 64;
  v73 = v32 + 16;
  v80 = v15;
  v81 = (v32 + 32);
  v74 = v32;
  v77 = (v32 + 8);
  v64 = (v2 + 32);
  v65 = (v2 + 8);
  v79 = v26;
  v71 = v11;
  while (v33)
  {
    v35 = v29;
LABEL_17:
    v38 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v39 = v38 | (v35 << 6);
    v40 = v75;
    v41 = *(*(v76 + 48) + 8 * v39);
    v42 = v74;
    (*(v74 + 16))(v75, *(v76 + 56) + *(v74 + 72) * v39, v11);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetMd);
    v44 = *(v43 + 48);
    v45 = v11;
    v46 = v78;
    *v78 = v41;
    v47 = v40;
    v48 = v45;
    (*(v42 + 32))(v46 + v44, v47);
    (*(*(v43 - 8) + 56))(v46, 0, 1, v43);

    v26 = v79;
    v15 = v80;
LABEL_18:
    outlined init with take of (key: URL, value: FPItem)(v46, v26, &_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetSgMd);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetMd);
    if ((*(*(v49 - 8) + 48))(v26, 1, v49) == 1)
    {

      return;
    }

    v11 = v48;
    (*v81)(v15, &v26[*(v49 + 48)], v48);
    if (!*(v82 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v15), (v50 & 1) == 0))
    {

      v57 = *v77;
      v58 = v15;
      v59 = v48;
      goto LABEL_27;
    }

    v51 = *v77;
    swift_unknownObjectRetain();
    v51(v15, v48);
    swift_getObjectType();
    v52 = DOCNode.fpfs_syncFetchFPItem()();
    swift_unknownObjectRelease();
    if (v52)
    {
      swift_getObjectType();
      v53 = DOCNode.fpfs_syncFetchFPItem()();
      if (!v53)
      {

        goto LABEL_6;
      }

      v54 = v53;
      v55 = [v70 lastUsageUpdatePolicy];
      if (v55 == 1)
      {
        v61 = [v54 lastUsedDate];
        v26 = v79;
        v15 = v80;
        v11 = v71;
        if (v61)
        {
          v62 = v61;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v63 = v66;
          (*v64)(v66, v67, v69);
          FPItem.setLastOpenDate(_:delay:)(v63, 0.0);

          v58 = v66;
          v57 = *v65;
          goto LABEL_31;
        }

LABEL_32:
      }

      else
      {
        v26 = v79;
        v15 = v80;
        v11 = v71;
        if (v55 != 2)
        {
          goto LABEL_32;
        }

        v56 = v68;
        Date.init()();
        FPItem.setLastOpenDate(_:delay:)(v56, 0.0);

        v57 = *v65;
        v58 = v68;
LABEL_31:
        v59 = v69;
LABEL_27:
        v57(v58, v59);
      }
    }

    else
    {
LABEL_6:

      v26 = v79;
      v15 = v80;
      v11 = v71;
    }
  }

  if (v34 <= v29 + 1)
  {
    v36 = v29 + 1;
  }

  else
  {
    v36 = v34;
  }

  v37 = v36 - 1;
  while (1)
  {
    v35 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v35 >= v34)
    {
      v48 = v11;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetMd);
      v46 = v78;
      (*(*(v60 - 8) + 56))(v78, 1, 1, v60);
      v33 = 0;
      v29 = v37;
      goto LABEL_18;
    }

    v33 = *(v72 + 8 * v35);
    ++v29;
    if (v33)
    {
      v29 = v35;
      goto LABEL_17;
    }
  }

  __break(1u);
}

Swift::Int closure #1 in DOCCopyOperation.copyWithDSCopyEngine(_:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v33 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v33 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_projectBox();
  outlined init with copy of URL?(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_249BA08C0;
    v24 = MEMORY[0x277D837D0];
    *(v23 + 56) = MEMORY[0x277D837D0];
    v25 = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 64) = v25;
    *(v23 + 32) = 0xD000000000000018;
    *(v23 + 40) = 0x8000000249BC93D0;
    *(v23 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    *(v23 + 104) = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
    *(v23 + 72) = a4;
    if (a2)
    {
      v26 = a4;
      v27 = _convertErrorToNSError(_:)();
      v35 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
      v36 = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
      *&v34 = v27;
      outlined init with take of DOCGoToFolderCandidate(&v34, v23 + 112);
    }

    else
    {
      *(v23 + 136) = v24;
      *(v23 + 144) = v25;
      strcpy((v23 + 112), "Unknown error");
      *(v23 + 126) = -4864;
      v29 = a4;
    }

    os_log(_:dso:log:type:_:)();

    swift_beginAccess();
    v30 = *(a5 + 16);
    *(a5 + 16) = a2;
    v31 = a2;
  }

  else
  {
    v28 = *(v18 + 32);
    v28(v21, v16, v17);
    v28(v12, v21, v17);
    (*(v18 + 56))(v12, 0, 1, v17);
    swift_beginAccess();
    outlined assign with take of URL?(v12, v22);
  }

  return OS_dispatch_semaphore.signal()();
}

uint64_t closure #1 in closure #2 in DOCCopyOperation.copyWithDSCopyEngine(_:)(uint64_t a1, void *a2, NSObject *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v59 = a7;
  v60 = a8;
  v58 = a6;
  v66 = a2;
  v67 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v63 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v14);
  v61 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v54 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v24 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v54 - v27;
  outlined init with copy of URL?(a1, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    outlined destroy of CharacterSet?(v19, &_s10Foundation3URLVSgMd);
    dispatch_group_leave(v67);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_249BA08C0;
    v30 = MEMORY[0x277D837D0];
    *(v29 + 56) = MEMORY[0x277D837D0];
    v31 = lazy protocol witness table accessor for type String and conformance String();
    *(v29 + 64) = v31;
    *(v29 + 32) = 0xD000000000000018;
    *(v29 + 40) = 0x8000000249BC93D0;
    *(v29 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    *(v29 + 104) = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
    *(v29 + 72) = a4;
    v32 = v66;
    if (v66)
    {
      v33 = a4;
      v34 = _convertErrorToNSError(_:)();
      v70 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
      v71 = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
      *&aBlock = v34;
      outlined init with take of DOCGoToFolderCandidate(&aBlock, v29 + 112);
    }

    else
    {
      *(v29 + 136) = v30;
      *(v29 + 144) = v31;
      strcpy((v29 + 112), "Unknown error");
      *(v29 + 126) = -4864;
      v51 = a4;
    }

    os_log(_:dso:log:type:_:)();

    swift_beginAccess();
    v52 = *(a5 + 16);
    if (!v52)
    {
      v53 = v32;
      v52 = v32;
    }

    result = swift_beginAccess();
    *(a5 + 16) = v52;
  }

  else
  {
    v66 = v11;
    v55 = a4;
    v35 = *(v21 + 32);
    v57 = v28;
    v35(v28, v19, v20);
    (*(v21 + 16))(v24, v28, v20);
    v36 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v37 = (v22 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    v56 = v20;
    *(v39 + 16) = v59;
    v35((v39 + v36), v24, v20);
    v40 = v60;
    *(v39 + v37) = v60;
    v41 = v55;
    *(v39 + v38) = v55;
    v42 = v67;
    *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
    v71 = partial apply for closure #1 in closure #1 in closure #2 in DOCCopyOperation.copyWithDSCopyEngine(_:);
    v72 = v39;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v69 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v70 = &block_descriptor_31;
    v43 = _Block_copy(&aBlock);

    v44 = v40;
    v45 = v41;
    v46 = v42;
    v47 = v61;
    static DispatchQoS.unspecified.getter();
    v73 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v48 = v63;
    v49 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v47, v48, v43);
    _Block_release(v43);
    (*(v65 + 8))(v48, v49);
    (*(v62 + 8))(v47, v64);
    (*(v21 + 8))(v57, v56);
  }

  return result;
}

void closure #1 in closure #1 in closure #2 in DOCCopyOperation.copyWithDSCopyEngine(_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, NSObject *a5)
{
  v19 = a5;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a2, v9, v12);
  swift_beginAccess();
  v15 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
    *(a1 + 16) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  (*(v10 + 32))(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v14, v9);
  *(a1 + 16) = v15;
  specialized DOCCopyOperation.map(sourceNode:toURL:)(a4, a2, a3);
  dispatch_group_leave(v19);
}

uint64_t closure #1 in DOCDSCopyEngineXPCConnection.copyItems(at:to:operation:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v101 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v97 = &v92 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So7DOCNode_p5valuetSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v102 = &v92 - v17;
  v18 = swift_allocObject();
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24FPActionOperationLocatorC_ADTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v104 = v18;
  *(v18 + 16) = v19;
  v20 = DOCCopyOperation.doc_transferResults(from:)(a1);
  v21 = *((*MEMORY[0x277D85000] & *a2) + 0xB8);

  v21(v22);
  if (!v20)
  {
LABEL_70:
    $defer #1 () in closure #1 in DOCDSCopyEngineXPCConnection.copyItems(at:to:operation:)(a2, v104);
  }

  if (!*(v20 + 16))
  {
    v23 = [objc_opt_self() shared];
    [v23 removeAllActionsWithTarget_];
  }

  v24 = 0;
  v99 = v20;
  v25 = v20 + 64;
  v26 = 1 << *(v20 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v20 + 64);
  v29 = (v26 + 63) >> 6;
  v93 = v4;
  v94 = v101 + 16;
  v106 = v14;
  v107 = (v101 + 32);
  v98 = (v101 + 8);
  v103 = a2;
  v100 = v7;
  v95 = v29;
  v96 = v25;
  if (!v28)
  {
    goto LABEL_11;
  }

  do
  {
    while (1)
    {
      v30 = v7;
      v31 = v24;
LABEL_19:
      v34 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v35 = v34 | (v31 << 6);
      v36 = v99;
      v37 = v101;
      v38 = v97;
      (*(v101 + 16))(v97, *(v99 + 48) + *(v101 + 72) * v35, v4);
      v39 = *(*(v36 + 56) + 8 * v35);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So7DOCNode_p5valuetMd);
      v41 = *(v40 + 48);
      v42 = *(v37 + 32);
      v14 = v106;
      v43 = v38;
      v44 = v4;
      v42(v106, v43, v4);
      *&v14[v41] = v39;
      (*(*(v40 - 8) + 56))(v14, 0, 1, v40);
      swift_unknownObjectRetain();
      v7 = v30;
      a2 = v103;
LABEL_20:
      v45 = v102;
      outlined init with take of (key: URL, value: FPItem)(v14, v102, &_s10Foundation3URLV3key_So7DOCNode_p5valuetSgMd);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So7DOCNode_p5valuetMd);
      if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
      {
        goto LABEL_69;
      }

      v47 = *(v45 + *(v46 + 48));
      v4 = v44;
      v48 = (*v107)(v7, v45, v44);
      v49 = (*((*MEMORY[0x277D85000] & *a2) + 0xE0))(v48);
      if (!v49)
      {
        swift_unknownObjectRelease();

        goto LABEL_65;
      }

      if (!*(v49 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v7), (v50 & 1) == 0))
      {
        swift_unknownObjectRelease();

LABEL_65:
        (*v98)(v7, v44);
        goto LABEL_70;
      }

      swift_unknownObjectRetain();

      swift_getObjectType();
      v51 = DOCNode.fpfs_syncFetchFPItem()();
      swift_unknownObjectRelease();
      if (!v51)
      {
        (*v98)(v7, v4);
        goto LABEL_68;
      }

      swift_getObjectType();
      v52 = DOCNode.fpfs_syncFetchFPItem()();
      if (!v52)
      {
        (*v98)(v7, v4);

LABEL_68:
        swift_unknownObjectRelease();
LABEL_69:

        goto LABEL_70;
      }

      v53 = v52;
      v105 = v47;
      v54 = objc_opt_self();
      v55 = [v54 locatorForItem_];
      if (v55)
      {
        v56 = v55;
        v57 = [v54 locatorForItem_];
        if (v57)
        {
          v58 = v57;
          v59 = *(v104 + 16);
          if ((v59 & 0xC000000000000001) != 0)
          {
            if (v59 >= 0)
            {
              v59 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v60 = v57;
            v61 = __CocoaSet.count.getter();
            if (__OFADD__(v61, 1))
            {
              goto LABEL_73;
            }

            v59 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8FPItemIDC_AHTt1g5Tm(v59, v61 + 1, &_ss18_DictionaryStorageCySo24FPActionOperationLocatorCADGMd, &_ss18_DictionaryStorageCySo24FPActionOperationLocatorCADGMR, &lazy cache variable for type metadata for FPActionOperationLocator);
          }

          else
          {
            v63 = v57;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = v59;
          *(v104 + 16) = 0x8000000000000000;
          v66 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
          v67 = *(v59 + 16);
          v68 = (v65 & 1) == 0;
          v69 = v67 + v68;
          if (__OFADD__(v67, v68))
          {
            goto LABEL_72;
          }

          v70 = v65;
          if (*(v59 + 24) >= v69)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo24FPActionOperationLocatorCADGMd);
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v69, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCySo24FPActionOperationLocatorCADGMd);
            v71 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
            if ((v70 & 1) != (v72 & 1))
            {
              goto LABEL_75;
            }

            v66 = v71;
          }

          v4 = v93;
          v73 = v109;
          if (v70)
          {
            v74 = v109[7];
            v75 = *(v74 + 8 * v66);
            *(v74 + 8 * v66) = v58;
          }

          else
          {
            v109[(v66 >> 6) + 8] |= 1 << v66;
            *(v73[6] + 8 * v66) = v56;
            *(v73[7] + 8 * v66) = v58;

            v76 = v73[2];
            v77 = __OFADD__(v76, 1);
            v78 = v76 + 1;
            if (v77)
            {
              goto LABEL_74;
            }

            v73[2] = v78;
          }

          *(v104 + 16) = v73;

          a2 = v103;
        }

        else
        {
        }

        v7 = v100;
      }

      v79 = (*((*MEMORY[0x277D85000] & *a2) + 0xF8))();
      if (v79)
      {
        break;
      }

      swift_unknownObjectRelease();
      (*v98)(v7, v4);
LABEL_9:
      v14 = v106;
      v29 = v95;
      v25 = v96;
      if (!v28)
      {
        goto LABEL_11;
      }
    }

    v80 = v79;
    v81 = [v51 itemID];
    v82 = v81;
    if ((v80 & 0xC000000000000001) != 0)
    {
      v83 = v81;
      v84 = __CocoaDictionary.lookup(_:)();

      if (!v84)
      {
        goto LABEL_58;
      }

      v108 = v84;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID);
      swift_dynamicCast();
      v85 = v109;
    }

    else
    {
      if (!*(v80 + 16) || (v86 = specialized __RawDictionaryStorage.find<A>(_:)(v81), (v87 & 1) == 0))
      {
LABEL_58:

LABEL_59:
        v7 = v100;
        (*v98)(v100, v4);

        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      v85 = *(*(v80 + 56) + 8 * v86);
    }

    if (!v85)
    {
      goto LABEL_59;
    }

    v88 = [a2 stitcher];
    if (v88)
    {
      v89 = v88;
      [v88 replacePlaceholderWithID:v85 withItem:v53];

      swift_unknownObjectRelease();
      v7 = v100;
      (*v98)(v100, v4);
    }

    else
    {
      v90 = v100;
      (*v98)(v100, v4);
      swift_unknownObjectRelease();

      v7 = v90;
    }

    v14 = v106;
    v29 = v95;
    v25 = v96;
  }

  while (v28);
LABEL_11:
  if (v29 <= v24 + 1)
  {
    v32 = v24 + 1;
  }

  else
  {
    v32 = v29;
  }

  v33 = v32 - 1;
  while (1)
  {
    v31 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v31 >= v29)
    {
      v44 = v4;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So7DOCNode_p5valuetMd);
      (*(*(v62 - 8) + 56))(v14, 1, 1, v62);
      v28 = 0;
      v24 = v33;
      goto LABEL_20;
    }

    v28 = *(v25 + 8 * v31);
    ++v24;
    if (v28)
    {
      v30 = v7;
      v24 = v31;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPActionOperationLocator);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id $defer #1 () in closure #1 in DOCDSCopyEngineXPCConnection.copyItems(at:to:operation:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v8 = *(v19 - 8);
  v10 = MEMORY[0x28223BE20](v19, v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 callbackQueue];
  if (result)
  {
    v14 = result;
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    aBlock[4] = partial apply for closure #1 in $defer #1 () in closure #1 in DOCDSCopyEngineXPCConnection.copyItems(at:to:operation:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_40;
    v16 = _Block_copy(aBlock);
    v17 = a1;

    static DispatchQoS.unspecified.getter();
    v21 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v12, v7, v16);
    _Block_release(v16);

    (*(v20 + 8))(v7, v4);
    (*(v8 + 8))(v12, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCDSCopyEngineXPCConnection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void closure #1 in $defer #1 () in closure #1 in DOCDSCopyEngineXPCConnection.copyItems(at:to:operation:)(void *a1)
{
  swift_beginAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPActionOperationLocator);
  lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type FPActionOperationLocator and conformance NSObject, &lazy cache variable for type metadata for FPActionOperationLocator);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24FPActionOperationLocatorC_s5Error_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v3 = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 completedWithResultsByRoot:isa errorsByRoot:v3 error:0];
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    updated = type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo();
    v20 = *(updated - 8);
    outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v12 + *(v20 + 72) * v7, a2, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = updated;
  }

  else
  {
    v18 = type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for URL();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for URL();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
    v20 = *(v13 - 8);
    outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v12 + *(v20 + 72) * v7, a2, type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        specialized _NativeDictionary._delete(at:)(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo8FPItemIDCADGMd);
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaSet.count.getter();
  v8 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8FPItemIDC_AHTt1g5Tm(v4, v7, &_ss18_DictionaryStorageCySo8FPItemIDCADGMd, &_ss18_DictionaryStorageCySo8FPItemIDCADGMR, &lazy cache variable for type metadata for FPItemID);

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  specialized _NativeDictionary._delete(at:)(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for RestorableSettings(0);
    v19 = *(v12 - 8);
    outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v11 + *(v19 + 72) * v8, a3, type metadata accessor for RestorableSettings);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for RestorableSettings(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}