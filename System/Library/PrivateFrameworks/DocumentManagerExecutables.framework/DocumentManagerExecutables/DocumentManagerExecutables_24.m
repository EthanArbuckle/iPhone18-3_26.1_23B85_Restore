void specialized DOCTabSidebarDataSource.updateSelectionToMatchBrowsedLocation(_:animated:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_locationSelection;
  if (a1)
  {
    v5 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_locationSelection);
    v6 = *(v5 + 24);
    if (v6)
    {
      v7 = *(v5 + 24);
    }

    else
    {
      v8 = *(v5 + 16);
      if (!v8)
      {
        goto LABEL_8;
      }

      v7 = v8;
      v6 = 0;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
    v9 = a1;
    v10 = v6;
    v11 = v7;
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      return;
    }

    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_locationSelection;
  }

LABEL_8:
  v13 = *(v2 + v4);
  v14 = *(v13 + 24);
  *(v13 + 24) = 0;

  v15 = *(v2 + v4);
  v17 = *(v15 + 16);
  *(v15 + 16) = a1;
  v16 = a1;
}

uint64_t specialized DOCTabSidebarDataSource.firstSidebarItemMatching(predicate:)@<X0>(uint64_t a1@<X0>, DOCConcreteLocation *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v30 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData;
  while (1)
  {
    v6 = *(**(a1 + v30) + 136);
    v7 = outlined read-only object #0 of specialized DOCTabSidebarDataSource.firstSidebarItemMatching(predicate:)[v4 + 32];

    v6(v7);
    v9 = v8;

    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 72))(0, ObjectType, v9);
    result = swift_unknownObjectRelease();
    v12 = *(v11 + 16);
    if (v12)
    {
      break;
    }

LABEL_2:
    ++v4;

    if (v4 == 4)
    {
      v17 = 0;
      v27 = 0uLL;
      v18 = -1;
      v28 = 0uLL;
LABEL_10:
      *a3 = v27;
      *(a3 + 16) = v28;
      *(a3 + 32) = v17;
      *(a3 + 40) = v18;
      return result;
    }
  }

  v13 = 0;
  v14 = v11 + 48;
  while (v13 < *(v11 + 16))
  {
    v15 = *(v14 - 16);
    v16 = *v14;
    *&v36[9] = *(v14 + 9);
    v35 = v15;
    *v36 = v16;
    v32 = *v14;
    v33 = *(v14 - 16);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = outlined init with copy of DOCSidebarItem(&v35, v34);
    v25 = DOCSidebarItem.representedLocation.getter(v19, v20, v21, v22, v23, v24);
    v26 = DOCConcreteLocation.matchesSelectedSidebarLocation(_:)(a2);

    if (v26)
    {

      v28 = v32;
      v27 = v33;
      goto LABEL_10;
    }

    ++v13;
    result = outlined destroy of DOCSidebarItem(&v35);
    v14 += 48;
    if (v12 == v13)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type MutationReloadRequest and conformance MutationReloadRequest()
{
  result = lazy protocol witness table cache variable for type MutationReloadRequest and conformance MutationReloadRequest;
  if (!lazy protocol witness table cache variable for type MutationReloadRequest and conformance MutationReloadRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MutationReloadRequest and conformance MutationReloadRequest);
  }

  return result;
}

uint64_t type metadata accessor for DOCSidebarItemChangePacer()
{
  result = type metadata singleton initialization cache for DOCSidebarItemChangePacer;
  if (!type metadata singleton initialization cache for DOCSidebarItemChangePacer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DOCRecentsSpotlightCollectionObserver.__allocating_init(configuration:)(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D061F8]) initWithConfiguration:a1 tags:0];
  isa = [a1 recentDocumentsContentTypes];
  if (!isa)
  {
    type metadata accessor for UTType();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v3 setAllowedContentTypes_];

  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v3 setMaximumNumberOfItems_];

  v6 = objc_allocWithZone(v1);
  v7 = @"com.apple.DocumentManager.SpotlightFileProvider.recentDocuments";
  v8 = specialized DOCSpotlightCollectionObserver.init(configuration:identifier:properties:)(a1, v7, v3);

  return v8;
}

id DOCRecentsSpotlightCollectionObserver.init(configuration:identifier:properties:)(void *a1, void *a2, void *a3)
{
  v6 = specialized DOCSpotlightCollectionObserver.init(configuration:identifier:properties:)(a1, a2, a3);

  return v6;
}

id DOCSpotlightCollectionObserver.init(configuration:identifier:properties:)(void *a1, void *a2, void *a3)
{
  v6 = specialized DOCSpotlightCollectionObserver.init(configuration:identifier:properties:)(a1, a2, a3);

  return v6;
}

uint64_t DOCSpotlightCollectionObserver.oldItemCount.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_oldItemCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSpotlightCollectionObserver.oldItemCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_oldItemCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCSpotlightCollectionObserver.itemCount.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_itemCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSpotlightCollectionObserver.itemCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_itemCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCSpotlightCollectionObserver.didFinishGathering.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_didFinishGathering;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCSpotlightCollectionObserver.startObserving(updateBlock:)(uint64_t a1, uint64_t a2)
{
  v10[4] = closure #1 in DOCSpotlightCollectionObserver.startObserving(updateBlock:);
  v10[5] = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
  v10[3] = &block_descriptor_44;
  v5 = _Block_copy(v10);
  v6 = [objc_opt_self() predicateWithBlock_];
  _Block_release(v5);

  v7 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_collectionUpdateBlock);
  v8 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_collectionUpdateBlock);
  *v7 = a1;
  v7[1] = a2;

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
  v9 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_itemCollection);
  [v9 setDelegate_];
  [v9 setItemFilteringPredicate_];
  [v9 doc_startObserving];
}

id DOCSharedDocumentsSpotlightCollectionObserver.__allocating_init(configuration:)(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D061F8]) initWithConfiguration:a1 tags:0];
  isa = [a1 recentDocumentsContentTypes];
  if (!isa)
  {
    type metadata accessor for UTType();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v3 setAllowedContentTypes_];

  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v3 setMaximumNumberOfItems_];

  v6 = objc_allocWithZone(v1);
  return DOCSharedDocumentsSpotlightCollectionObserver.init(configuration:identifier:properties:)(a1, @"com.apple.DocumentManager.SpotlightFileProvider.sharedItems", v3);
}

id DOCSharedDocumentsSpotlightCollectionObserver.init(configuration:identifier:properties:)(void *a1, void *a2, void *a3)
{
  v6 = specialized DOCSpotlightCollectionObserver.init(configuration:identifier:properties:)(a1, a2, a3);
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = [v7 doc:*MEMORY[0x277D05E68] roleSpecificKeyForKey:a1 configuration:?];

  if (!v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = MEMORY[0x24C1FAD20](v9);
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = MEMORY[0x24C1FAD20](v10, v12);

  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    v16 = [v15 objectForKey_];

    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v24[0] = v22;
    v24[1] = v23;
    if (!*(&v23 + 1))
    {

      outlined destroy of Any?(v24);
      return v6;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return v6;
    }

    v8 = v6;
    v17 = [v21 integerValue];

    v18 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_itemCount;
    swift_beginAccess();
    *&v8[v18] = v17;
    v19 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_oldItemCount;
    swift_beginAccess();
    *&v8[v19] = v17;
  }

  else
  {
  }

  return v6;
}

Swift::Void __swiftcall DOCSharedDocumentsSpotlightCollectionObserver.collectionUpdated()()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_collectionUpdated);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x24C1FAD20](v1, v3);

  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_itemCount;
    swift_beginAccess();
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v6 doc:v8 setObject:*MEMORY[0x277D05E68] forRoleKey:*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_configuration] configuation:?];
  }
}

id DOCRecentsSpotlightCollectionObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DOCSpotlightCollectionObserver.__allocating_init(configuration:identifier:properties:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized DOCSpotlightCollectionObserver.init(configuration:identifier:properties:)(a1, a2, a3);

  return v8;
}

id closure #1 in DOCSpotlightCollectionObserver.startObserving(updateBlock:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v5);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    if (swift_dynamicCast())
    {
      swift_getObjectType();
      if (([v4 isTrashed] & 1) == 0 && (DOCNode.isSharedServerNode.getter() & 1) == 0)
      {
        v2 = [objc_opt_self() defaultPermission];
        v3 = [v2 canHostAppPerformAction:2 targetNode:v4];
        swift_unknownObjectRelease();

        return v3;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    outlined destroy of Any?(v5);
  }

  return 0;
}

id DOCSpotlightCollectionObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCSpotlightCollectionObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSpotlightCollectionObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DOCSpotlightCollectionObserver.collectionUpdated()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v8 = _dispatchPreconditionTest(_:)();
  v9 = (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    v13 = __CocoaSet.count.getter();
    goto LABEL_6;
  }

  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v2) + 0xB0))(v9) & 1) == 0)
  {
    return;
  }

  v3 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_collectionUpdateBlock);
  if (!v3)
  {
    return;
  }

  v10 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_itemCollection);

  v11 = [v10 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    goto LABEL_11;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

  v14 = (*((*v1 & *v2) + 0xA0))(v13);
  v15 = (*((*v1 & *v2) + 0x80))(v14);
  v16 = *((*v1 & *v2) + 0x98);
  if (v15 != v16())
  {
    v17 = v16();
    v18 = (*((*v1 & *v2) + 0x88))(v17);
    v19 = (v16)(v18);
    v3(v19);
  }

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
}

id DOCSpotlightCollectionObserver.collectionDidFinishGathering(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (one-time initialization token for UI == -1)
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
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249B9FA70;
  *(v10 + 56) = type metadata accessor for DOCSpotlightCollectionObserver();
  *(v10 + 64) = lazy protocol witness table accessor for type DOCSpotlightCollectionObserver and conformance NSObject();
  *(v10 + 32) = v2;
  v11 = v2;
  v12 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D83C10];
  *(v10 + 96) = MEMORY[0x277D83B88];
  *(v10 + 104) = v15;
  *(v10 + 72) = v14;
  os_log(_:dso:log:type:_:)();

  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_didFinishGathering;
  swift_beginAccess();
  v11[v16] = 1;
  return [v11 collectionUpdated];
}

id DOCSpotlightCollectionObserver.collection(_:didPerformBatchUpdateWithReplay:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    return [v1 collectionUpdated];
  }

  __break(1u);
  return result;
}

id DOCSpotlightCollectionObserver.data(forCollectionShouldBeReloaded:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    return [v1 collectionUpdated];
  }

  __break(1u);
  return result;
}

id specialized DOCSpotlightCollectionObserver.init(configuration:identifier:properties:)(void *a1, void *a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_oldItemCount] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_itemCount] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_didFinishGathering] = 0;
  v7 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_collectionUpdateBlock];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_configuration] = a1;
  v8 = objc_opt_self();
  v9 = a1;
  v10 = [v8 defaultManager];
  v11 = specialized FPItemManager.queryCollection(forIdentifier:properties:supportRemovableFileProviders:)(a2, a3, [v9 supportsRemovableFileProviders]);

  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver_itemCollection] = v11;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for DOCSpotlightCollectionObserver();
  return objc_msgSendSuper2(&v13, sel_init);
}

unint64_t lazy protocol witness table accessor for type DOCSpotlightCollectionObserver and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type DOCSpotlightCollectionObserver and conformance NSObject;
  if (!lazy protocol witness table cache variable for type DOCSpotlightCollectionObserver and conformance NSObject)
  {
    type metadata accessor for DOCSpotlightCollectionObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSpotlightCollectionObserver and conformance NSObject);
  }

  return result;
}

id static DOCCollaborationHighlightManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DOCCollaborationHighlightManager.shared;

  return v0;
}

void static DOCCollaborationHighlightManager.shared.setter(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DOCCollaborationHighlightManager.shared;
  static DOCCollaborationHighlightManager.shared = a1;
}

uint64_t (*static DOCCollaborationHighlightManager.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

id key path getter for static DOCCollaborationHighlightManager.shared : DOCCollaborationHighlightManager.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DOCCollaborationHighlightManager.shared;
  *a1 = static DOCCollaborationHighlightManager.shared;

  return v2;
}

void key path setter for static DOCCollaborationHighlightManager.shared : DOCCollaborationHighlightManager.Type(id *a1)
{
  v1 = one-time initialization token for shared;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static DOCCollaborationHighlightManager.shared;
  static DOCCollaborationHighlightManager.shared = v2;
}

void closure #1 in DOCCollaborationHighlightManager.highlight(for:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.DocumentManager);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_2493AC000, v10, v11, "No collaboration highlight in cache for %@, fetching...", v12, 0xCu);
    outlined destroy of CharacterSet?(v13, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }

  v15 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCollaborationHighlightManager_collaborationIdentifierToHighlightCache);
  v16 = MEMORY[0x24C1FAD20](a3, a4);
  v17 = [v15 objectForKey_];

  if (v17)
  {

    v18 = v9;
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v18;
      *v21 = v18;
      v22 = v18;
      _os_log_impl(&dword_2493AC000, oslog, v19, "Highlight already in cache for %@, ignoring!", v20, 0xCu);
      outlined destroy of CharacterSet?(v21, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v21, -1, -1);
      MEMORY[0x24C1FE850](v20, -1, -1);
    }

    goto LABEL_21;
  }

  v23 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCollaborationHighlightManager_highlightCenter);
  v24._countAndFlagsBits = a3;
  v24._object = a4;
  v25.super.super.isa = SWHighlightCenter.collaborationHighlight(forIdentifier:)(v24).super.super.isa;
  if (v26.super.super.isa)
  {
    v27 = v9;
    v28 = v26.super.super.isa;
    oslog = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v29))
    {

      isa = v26.super.super.isa;

      goto LABEL_17;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412546;
    *(v30 + 4) = v27;
    *v31 = v27;
    *(v30 + 12) = 2112;
    v32 = v27;
    v33 = v26.super.super.isa;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v34;
    v31[1] = v34;
    _os_log_impl(&dword_2493AC000, oslog, v29, "Failed to fetch highlight for item %@: %@", v30, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v31, -1, -1);
    MEMORY[0x24C1FE850](v30, -1, -1);

LABEL_21:
    isa = oslog;

LABEL_17:

    return;
  }

  v35 = v25.super.super.isa;
  v36 = [v23 fetchAttributionsForHighlight_];
  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {

    v50 = v9;
    oslog = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v50;
      *v53 = v50;
      v54 = v50;
      _os_log_impl(&dword_2493AC000, oslog, v51, "Could not get complete highlight for %@", v52, 0xCu);
      outlined destroy of CharacterSet?(v53, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v53, -1, -1);
      MEMORY[0x24C1FE850](v52, -1, -1);
    }

    goto LABEL_21;
  }

  v38 = v37;
  v55 = v35;
  v39 = v9;
  v40 = v36;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  osloga = v40;
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412546;
    *(v43 + 4) = v38;
    *(v43 + 12) = 2112;
    *(v43 + 14) = v39;
    *v44 = v38;
    v44[1] = v39;
    v45 = v39;
    v46 = osloga;
    _os_log_impl(&dword_2493AC000, v41, v42, "Successfully fetched highlight %@ for %@", v43, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v44, -1, -1);
    MEMORY[0x24C1FE850](v43, -1, -1);
  }

  v47 = MEMORY[0x24C1FAD20](a3, a4);
  [v15 setObject:v38 forKey:v47];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = a3;
  *(inited + 40) = a4;

  DOCCollaborationHighlightManager.notifyHighlightsDidChange(identifiers:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
}

uint64_t DOCCollaborationHighlightManager.notifyHighlightsDidChange(identifiers:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    swift_beginAccess();

    specialized Set.formUnion<A>(_:)(v4);
    swift_endAccess();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = ObjectType;
  v6 = v1;
  DOCRunInMainThread(_:)();
}

void closure #1 in DOCCollaborationHighlightManager.notifyHighlightsDidChange(identifiers:)(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCollaborationHighlightManager_coalescingTimer;
  [*&a1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCollaborationHighlightManager_coalescingTimer] invalidate];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v11[4] = partial apply for closure #1 in closure #1 in DOCCollaborationHighlightManager.notifyHighlightsDidChange(identifiers:);
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v11[3] = &block_descriptor_20;
  v7 = _Block_copy(v11);
  v8 = a1;

  v9 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:0.1];
  _Block_release(v7);
  v10 = *&a1[v4];
  *&a1[v4] = v9;
}

uint64_t closure #1 in closure #1 in DOCCollaborationHighlightManager.notifyHighlightsDidChange(identifiers:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCollaborationHighlightManager_pendingIdentifiersToNotify;
  swift_beginAccess();
  if (*(*(a2 + v3) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    v19[0] = 0xD000000000000012;
    v19[1] = 0x8000000249BD9600;
    AnyHashable.init<A>(_:)();
    v5 = *(a2 + v3);
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd);
    *(inited + 72) = v5;

    v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_ss11AnyHashableV_yptMd);
  }

  else
  {
    v6 = 0;
  }

  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.DocumentManager);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    v19[15] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2493AC000, v8, v9, "Sending highlights did change notification with userInfo=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  else
  {
  }

  v15 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for DOCCollaborationHighlightManagerHighlightsDidChange != -1)
  {
    swift_once();
  }

  v16 = static NSNotificationName.DOCCollaborationHighlightManagerHighlightsDidChange;
  if (v6)
  {
    v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  [v15 postNotificationName:v16 object:a2 userInfo:v17.super.isa];

  *(a2 + v3) = MEMORY[0x277D84FA0];
}

id DOCCollaborationHighlightManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCCollaborationHighlightManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DOCCollaborationHighlightManager.highlightCenterHighlightsDidChange(_:)(SWHighlightCenter a1)
{
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = ObjectType;
  v4 = v1;
  DOCRunInMainThread(_:)();
}

uint64_t one-time initialization function for filterType()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static DOCModalBlurViewControllerTransition.Specifications.Blur.filterType = result;
  *algn_27EEE9868 = v1;
  return result;
}

id one-time initialization function for color()
{
  result = [objc_opt_self() blackColor];
  static DOCModalBlurViewControllerTransition.Specifications.Shadow.color = result;
  return result;
}

Swift::Int DOCModalBlurViewControllerTransition.Direction.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

Swift::Int DOCModalBlurViewControllerTransition.PresentationAspect.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

id @objc DOCModalBlurViewControllerTransition.BackgroundView.init(frame:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  swift_unknownObjectWeakInit();
  v15.receiver = a1;
  v15.super_class = a8(0);
  return objc_msgSendSuper2(&v15, sel_initWithFrame_, a2, a3, a4, a5);
}

id @objc DOCModalBlurViewControllerTransition.BackgroundView.init(coder:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  swift_unknownObjectWeakInit();
  v11.receiver = a1;
  v11.super_class = a5(0);
  v8 = a3;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, v8);

  if (v9)
  {
  }

  return v9;
}

id DOCModalBlurViewControllerTransition.init(direction:)(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_backgroundView;
  type metadata accessor for DOCModalBlurViewControllerTransition.BackgroundView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_containerView;
  type metadata accessor for DOCModalBlurViewControllerTransition.ContainerView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_hostView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_direction] = v2;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DOCModalBlurViewControllerTransition();
  return objc_msgSendSuper2(&v7, sel_init);
}

void DOCModalBlurViewControllerTransition.animateTransition(using:)(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_direction))
  {
    DOCModalBlurViewControllerTransition.dismiss(using:)(a1);
  }

  else
  {
    DOCModalBlurViewControllerTransition.present(using:)(a1);
  }
}

void DOCModalBlurViewControllerTransition.present(using:)(void *a1)
{
  v3 = [a1 viewControllerForKey_];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 viewControllerForKey_];
    if (v5)
    {
      v6 = v5;
      v7 = [a1 viewForKey_];
      if (v7)
      {
        v107 = v7;
        v8 = [v4 view];
        v105 = v4;
        if (v8)
        {
          v9 = v8;
          v99 = v1;
          v10 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_backgroundView];
          v104 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v10 action:sel_dismissPresentedViewController_];
          [v9 bounds];
          [v10 setFrame_];
          v103 = v9;
          [v10 setAutoresizingMask_];
          [v10 addGestureRecognizer_];
          v11 = objc_opt_self();
          v12 = [v11 systemBackgroundColor];
          [v10 setBackgroundColor_];

          [v10 setAlpha_];
          swift_unknownObjectWeakAssign();
          v102 = v6;
          [v102 preferredContentSize];
          v14 = v13;
          v16 = v15;
          v17 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_containerView];
          [v9 bounds];
          [v17 setFrame_];
          [v17 setAutoresizingMask_];
          swift_unknownObjectWeakAssign();

          v96 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_hostView];
          [v96 setTranslatesAutoresizingMaskIntoConstraints_];
          [v107 setTranslatesAutoresizingMaskIntoConstraints_];
          v18 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
          v19 = [v11 clearColor];
          [v18 setBackgroundColor_];

          [v18 setTranslatesAutoresizingMaskIntoConstraints_];
          [v17 addSubview_];
          v106 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_249BA0470;
          v21 = [v18 leadingAnchor];
          v22 = [v17 keyboardLayoutGuide];
          v23 = [v22 &selRef_next + 1];

          v24 = [v21 constraintEqualToAnchor_];
          *(v20 + 32) = v24;
          v25 = [v18 trailingAnchor];
          v26 = [v17 keyboardLayoutGuide];
          v27 = [v26 &selRef_updateForChangedTraitsAffectingFonts + 4];

          v28 = [v25 constraintEqualToAnchor_];
          *(v20 + 40) = v28;
          v101 = v18;
          v29 = [v18 topAnchor];
          v30 = [v17 keyboardLayoutGuide];
          v31 = [v30 &selRef_updateBarVisibilityIfNecessary];

          v32 = [v29 constraintEqualToAnchor_];
          *(v20 + 48) = v32;
          v33 = [v18 bottomAnchor];
          v34 = [v17 keyboardLayoutGuide];
          v35 = [v34 bottomAnchor];

          v36 = [v33 constraintEqualToAnchor_];
          *(v20 + 56) = v36;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v106 activateConstraints_];

          v38 = [a1 containerView];
          [v38 addSubview_];

          v39 = [a1 containerView];
          [v39 addSubview_];

          [v17 addSubview_];
          [v96 addSubview_];
          v40 = [v96 heightAnchor];
          v41 = [v40 constraintEqualToConstant_];

          type metadata accessor for UILayoutPriority(0);
          lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
          static _UIKitNumericRawRepresentable.- infix(_:_:)();
          LODWORD(v42) = aBlock;
          [v41 setPriority_];
          v43 = [v96 heightAnchor];
          v44 = [v43 constraintGreaterThanOrEqualToConstant_];

          [v41 priority];
          static _UIKitNumericRawRepresentable.- infix(_:_:)();
          LODWORD(v45) = aBlock;
          [v44 &selRef_tabBarCurrentRawTab];
          v46 = [v96 centerYAnchor];
          v47 = [v17 safeAreaLayoutGuide];
          v48 = [v47 centerYAnchor];

          v49 = [v46 constraintEqualToAnchor_];
          [v44 priority];
          v115 = v50;
          v114 = 1065353216;
          static _UIKitNumericRawRepresentable.- infix(_:_:)();
          LODWORD(v51) = aBlock;
          [v49 setPriority_];
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_249BA75C0;
          v53 = [v96 widthAnchor];
          v54 = [v53 constraintEqualToConstant_];

          *(v52 + 32) = v54;
          *(v52 + 40) = v41;
          *(v52 + 48) = v44;
          v100 = v41;
          v98 = v44;
          v55 = [v96 heightAnchor];
          v56 = [v55 constraintLessThanOrEqualToConstant_];

          *(v52 + 56) = v56;
          v57 = [v96 topAnchor];
          v58 = [v17 safeAreaLayoutGuide];
          v59 = [v58 topAnchor];

          v60 = [v57 constraintGreaterThanOrEqualToAnchor_];
          *(v52 + 64) = v60;
          v61 = [v96 centerXAnchor];
          v62 = [v17 safeAreaLayoutGuide];
          v63 = [v62 centerXAnchor];

          v64 = [v61 constraintEqualToAnchor_];
          *(v52 + 72) = v64;
          *(v52 + 80) = v49;
          v97 = v49;
          v65 = [v17 keyboardLayoutGuide];
          v66 = [v65 topAnchor];

          v67 = [v96 bottomAnchor];
          v68 = [v66 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v67 multiplier:1.0];

          *(v52 + 88) = v68;
          v69 = [v107 topAnchor];
          v70 = [v96 topAnchor];
          v71 = [v69 constraintEqualToAnchor_];

          *(v52 + 96) = v71;
          v72 = [v107 bottomAnchor];
          v73 = [v96 bottomAnchor];
          v74 = [v72 constraintEqualToAnchor_];

          *(v52 + 104) = v74;
          v75 = [v107 leadingAnchor];
          v76 = [v96 leadingAnchor];
          v77 = [v75 constraintEqualToAnchor_];

          *(v52 + 112) = v77;
          v78 = [v107 trailingAnchor];
          v79 = [v96 trailingAnchor];
          v80 = [v78 constraintEqualToAnchor_];

          *(v52 + 120) = v80;
          v81 = Array._bridgeToObjectiveC()().super.isa;

          [v106 activateConstraints_];

          v82 = [v17 layer];
          v83 = [v96 layer];
          specialized DOCModalBlurViewControllerTransition.prepareLayer(containerLayer:hostLayer:)(v82, v83);

          v84 = [v17 layer];
          specialized DOCModalBlurViewControllerTransition.dismissLayer(_:)(v84);

          v85 = objc_opt_self();
          v86 = swift_allocObject();
          *(v86 + 16) = v99;
          v112 = partial apply for closure #1 in DOCModalBlurViewControllerTransition.present(using:);
          v113 = v86;
          aBlock = MEMORY[0x277D85DD0];
          v109 = 1107296256;
          v110 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v111 = &block_descriptor_46;
          v87 = _Block_copy(&aBlock);
          v88 = v99;

          v89 = swift_allocObject();
          *(v89 + 16) = a1;
          v112 = partial apply for closure #4 in DOCModalBlurViewControllerTransition.present(using:);
          v113 = v89;
          aBlock = MEMORY[0x277D85DD0];
          v109 = 1107296256;
          v110 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
          v111 = &block_descriptor_38_1;
          v90 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();

          [v85 animateWithDuration:0 delay:v87 usingSpringWithDamping:v90 initialSpringVelocity:0.4 options:0.0 animations:1.0 completion:0.0];
          _Block_release(v90);
          _Block_release(v87);
          v91 = swift_allocObject();
          *(v91 + 16) = v88;
          v112 = partial apply for closure #3 in DOCModalBlurViewControllerTransition.present(using:);
          v113 = v91;
          aBlock = MEMORY[0x277D85DD0];
          v109 = 1107296256;
          v110 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v111 = &block_descriptor_44_2;
          v92 = _Block_copy(&aBlock);
          v93 = v88;

          v94 = swift_allocObject();
          *(v94 + 16) = a1;
          v112 = partial apply for closure #4 in DOCModalBlurViewControllerTransition.present(using:);
          v113 = v94;
          aBlock = MEMORY[0x277D85DD0];
          v109 = 1107296256;
          v110 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
          v111 = &block_descriptor_50_2;
          v95 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();

          [v85 animateWithDuration:0 delay:v92 usingSpringWithDamping:v95 initialSpringVelocity:0.53 options:0.0 animations:0.68 completion:0.0];

          _Block_release(v95);
          _Block_release(v92);
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    else
    {
      v6 = v4;
    }
  }

  [a1 completeTransition_];
}

void closure #1 in DOCModalBlurViewControllerTransition.present(using:)(uint64_t a1)
{
  v4 = [*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_containerView) layer];
  if (!UIAccessibilityIsReduceMotionEnabled() && !UIAccessibilityIsReduceTransparencyEnabled())
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v3 = MEMORY[0x24C1FAD20](0xD000000000000020, 0x8000000249BD97D0);
    [v4 setValue:isa forKeyPath:v3];
  }

  LODWORD(v1) = 1.0;
  [v4 setOpacity_];
}

void closure #3 in DOCModalBlurViewControllerTransition.present(using:)(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_containerView) layer];
  v2 = *(MEMORY[0x277CD9DE8] + 80);
  v6[4] = *(MEMORY[0x277CD9DE8] + 64);
  v6[5] = v2;
  v3 = *(MEMORY[0x277CD9DE8] + 112);
  v6[6] = *(MEMORY[0x277CD9DE8] + 96);
  v6[7] = v3;
  v4 = *(MEMORY[0x277CD9DE8] + 16);
  v6[0] = *MEMORY[0x277CD9DE8];
  v6[1] = v4;
  v5 = *(MEMORY[0x277CD9DE8] + 48);
  v6[2] = *(MEMORY[0x277CD9DE8] + 32);
  v6[3] = v5;
  [v1 setTransform_];
}

void DOCModalBlurViewControllerTransition.dismiss(using:)(void *a1)
{
  v3 = [a1 viewForKey_];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 superview];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 superview];

      if (v7)
      {
        v8 = [v4 superview];
        if (v8)
        {
          v9 = v8;
          v10 = [v7 layer];
          v11 = [v9 layer];
          specialized DOCModalBlurViewControllerTransition.prepareLayer(containerLayer:hostLayer:)(v10, v11);

          v12 = [v7 layer];
          v27 = *(MEMORY[0x277CD9DE8] + 80);
          v33 = *(MEMORY[0x277CD9DE8] + 64);
          v28 = v33;
          v34 = v27;
          v25 = *(MEMORY[0x277CD9DE8] + 112);
          v35 = *(MEMORY[0x277CD9DE8] + 96);
          v26 = v35;
          v36 = v25;
          v23 = *(MEMORY[0x277CD9DE8] + 16);
          aBlock = *MEMORY[0x277CD9DE8];
          v24 = aBlock;
          v30 = v23;
          v21 = *(MEMORY[0x277CD9DE8] + 48);
          v31 = *(MEMORY[0x277CD9DE8] + 32);
          v22 = v31;
          v32 = v21;
          [v12 setTransform_];

          v13 = [v7 layer];
          v33 = v28;
          v34 = v27;
          v35 = v26;
          v36 = v25;
          aBlock = v24;
          v30 = v23;
          v31 = v22;
          v32 = v21;
          [v13 setTransform_];

          v14 = objc_opt_self();
          v15 = swift_allocObject();
          *(v15 + 16) = v1;
          *(v15 + 24) = v7;
          *&v31 = partial apply for closure #1 in DOCModalBlurViewControllerTransition.dismiss(using:);
          *(&v31 + 1) = v15;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v30 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v30 + 1) = &block_descriptor_56;
          v16 = _Block_copy(&aBlock);
          v17 = v1;
          v18 = v7;

          v19 = swift_allocObject();
          *(v19 + 16) = a1;
          *&v31 = partial apply for closure #2 in DOCModalBlurViewControllerTransition.dismiss(using:);
          *(&v31 + 1) = v19;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v30 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
          *(&v30 + 1) = &block_descriptor_62;
          v20 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();

          [v14 animateWithDuration:0 delay:v16 usingSpringWithDamping:v20 initialSpringVelocity:0.4 options:0.0 animations:1.0 completion:0.0];

          _Block_release(v20);
          _Block_release(v16);
          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  [a1 completeTransition_];
}

void closure #1 in DOCModalBlurViewControllerTransition.dismiss(using:)(int a1, id a2)
{
  v2 = [a2 layer];
  specialized DOCModalBlurViewControllerTransition.dismissLayer(_:)(v2);
}

id DOCModalBlurViewControllerTransition.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Bool __swiftcall DOCModalBlurViewControllerView._shouldAnimateProperty(withKey:)(Swift::String_optional withKey)
{
  if (withKey.value._object)
  {
    if (withKey.value._countAndFlagsBits == 0xD000000000000020 && 0x8000000249BD97D0 == withKey.value._object)
    {
      return 1;
    }

    countAndFlagsBits = withKey.value._countAndFlagsBits;
    object = withKey.value._object;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    v5 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for DOCModalBlurViewControllerView();
  v6 = objc_msgSendSuper2(&v7, sel__shouldAnimatePropertyWithKey_, v5);

  return v6;
}

id DOCModalBlurViewControllerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCModalBlurViewControllerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DOCModalBlurViewControllerView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id DOCModalBlurViewControllerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCModalBlurViewControllerView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCModalBlurViewControllerView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DOCModalBlurViewControllerTransition.BackgroundView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type DOCModalBlurViewControllerTransition.Direction and conformance DOCModalBlurViewControllerTransition.Direction()
{
  result = lazy protocol witness table cache variable for type DOCModalBlurViewControllerTransition.Direction and conformance DOCModalBlurViewControllerTransition.Direction;
  if (!lazy protocol witness table cache variable for type DOCModalBlurViewControllerTransition.Direction and conformance DOCModalBlurViewControllerTransition.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCModalBlurViewControllerTransition.Direction and conformance DOCModalBlurViewControllerTransition.Direction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCModalBlurViewControllerTransition.PresentationAspect and conformance DOCModalBlurViewControllerTransition.PresentationAspect()
{
  result = lazy protocol witness table cache variable for type DOCModalBlurViewControllerTransition.PresentationAspect and conformance DOCModalBlurViewControllerTransition.PresentationAspect;
  if (!lazy protocol witness table cache variable for type DOCModalBlurViewControllerTransition.PresentationAspect and conformance DOCModalBlurViewControllerTransition.PresentationAspect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCModalBlurViewControllerTransition.PresentationAspect and conformance DOCModalBlurViewControllerTransition.PresentationAspect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority()
{
  result = lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority;
  if (!lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority);
  }

  return result;
}

id specialized DOCModalBlurViewControllerTransition.prepareLayer(containerLayer:hostLayer:)(void *a1, void *a2)
{
  v4 = _UISolariumEnabled();
  v5 = 16.0;
  if (v4)
  {
    v5 = 26.0;
  }

  [a2 setCornerRadius_];
  [a2 setCornerCurve_];
  [a2 setMasksToBounds_];
  if (one-time initialization token for color != -1)
  {
    swift_once();
  }

  v6 = [static DOCModalBlurViewControllerTransition.Specifications.Shadow.color CGColor];
  [a1 setShadowColor_];

  [a1 setShadowRadius_];
  [a1 setShadowOffset_];
  LODWORD(v7) = 1051931443;
  [a1 setShadowOpacity_];

  return [a1 setAllowsGroupOpacity_];
}

id specialized DOCModalBlurViewControllerTransition.dismissLayer(_:)(void *a1)
{
  if (!UIAccessibilityIsReduceMotionEnabled() && !UIAccessibilityIsReduceTransparencyEnabled())
  {
    if (one-time initialization token for filterType != -1)
    {
      swift_once();
    }

    v2 = static DOCModalBlurViewControllerTransition.Specifications.Blur.filterType;
    v3 = *algn_27EEE9868;
    v4 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
    v5 = MEMORY[0x24C1FAD20](v2, v3);
    v6 = [v4 initWithType_];

    v7 = MEMORY[0x24C1FAD20](0x6E61697373756167, 0xEC00000072756C42);
    [v6 setName_];

    v8 = MEMORY[0x24C1FAD20](7827308, 0xE300000000000000);
    v9 = MEMORY[0x24C1FAD20](0xD000000000000019, 0x8000000249BD99E0);
    [v6 setValue:v8 forKey:v9];

    v10 = MEMORY[0x24C1FAD20](7827308, 0xE300000000000000);
    v11 = MEMORY[0x24C1FAD20](0x6175517475706E69, 0xEC0000007974696CLL);
    [v6 setValue:v10 forKey:v11];

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v13 = MEMORY[0x24C1FAD20](0x6461527475706E69, 0xEB00000000737569);
    [v6 setValue:isa forKey:v13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_249B9A480;
    *(v14 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for CAFilter);
    *(v14 + 32) = v6;
    v15 = v6;
    v16 = Array._bridgeToObjectiveC()().super.isa;

    [a1 setFilters_];
  }

  [a1 setOpacity_];
  [a1 anchorPoint];
  [a1 setAnchorPoint_];
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v18 = 1.15;
  if (IsReduceMotionEnabled)
  {
    v18 = 1.0;
  }

  v19 = *(MEMORY[0x277CD9DE8] + 80);
  *&v25.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v25.m33 = v19;
  v20 = *(MEMORY[0x277CD9DE8] + 112);
  *&v25.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v25.m43 = v20;
  v21 = *(MEMORY[0x277CD9DE8] + 16);
  *&v25.m11 = *MEMORY[0x277CD9DE8];
  *&v25.m13 = v21;
  v22 = *(MEMORY[0x277CD9DE8] + 48);
  *&v25.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v25.m23 = v22;
  CATransform3DScale(&v24, &v25, v18, v18, 1.0);
  return [a1 setTransform_];
}

void DOCSidebarViewController.diffableSnapshot()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x328))(v3);
  if (v3[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
    if (swift_dynamicCast())
    {
      v1 = v2;
      goto LABEL_8;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v3, &_sypSgMd);
  }

  if (one-time initialization token for nullDDS != -1)
  {
    swift_once();
  }

  v1 = static DOCSidebarViewController.nullDDS;
LABEL_8:
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
}

uint64_t DOCSidebarViewController.outlineSectionContentItems(in:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
  v4 = *(v3 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v3, v5);
  v8 = v18 - v7;
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v1) + 0x248))(v6);
  v11 = (*(*v10 + 136))(a1);
  v13 = v12;

  (*((*v9 & *v1) + 0x328))(v19, v14);
  if (v19[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
    if (swift_dynamicCast())
    {
      v15 = v18[1];
      goto LABEL_8;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v19, &_sypSgMd);
  }

  if (one-time initialization token for nullDDS != -1)
  {
    swift_once();
  }

  v15 = static DOCSidebarViewController.nullDDS;
LABEL_8:
  v19[0] = v11;
  v19[1] = v13;
  UICollectionViewDiffableDataSource.snapshot(for:)();

  v16 = specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v8, v3);
  return v16;
}

uint64_t specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
  result = NSDiffableDataSourceSectionSnapshot.items.getter();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v2 << 6;
  while (1)
  {
    if (v3 == v2)
    {

      return v4;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v6 = v5 + 64;
    ++v2;
    v7 = *(v1 + v5 + 88);
    v5 += 64;
    if (v7 != 255)
    {
      v8 = *(v1 + v6 - 16);
      v9 = *(v1 + v6 - 8);
      v10 = *(v1 + v6);
      v11 = *(v1 + v6 + 8);
      v12 = *(v1 + v6 + 16);
      v17 = *(v1 + v6 - 32);
      swift_unknownObjectRetain();
      outlined copy of DOCSidebarItem?(v8, v9, v10, v11, v12, v7);
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v8;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1);
      }

      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + (v14 << 6);
      *(v15 + 32) = v17;
      *(v15 + 48) = v16;
      *(v15 + 56) = v9;
      *(v15 + 64) = v10;
      *(v15 + 72) = v11;
      *(v15 + 80) = v12;
      *(v15 + 88) = v7;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd);
  result = NSDiffableDataSourceSectionSnapshot.items.getter();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = MEMORY[0x277D84F90];
    while (v3 < *(v1 + 16))
    {
      outlined init with copy of DOCSidebarViewController.XCTest.TestOutlineItem(v4, v12);
      if (v13[24])
      {
        result = outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(v12);
      }

      else
      {
        v9 = v12[0];
        v10 = v12[1];
        *v11 = *v13;
        *&v11[9] = *&v13[9];
        result = swift_isUniquelyReferenced_nonNull_native();
        v14 = v5;
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
          v5 = v14;
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v5 = v14;
        }

        *(v5 + 16) = v7 + 1;
        v8 = (v5 + (v7 << 6));
        *(v8 + 73) = *&v11[9];
        v8[3] = v10;
        v8[4] = *v11;
        v8[2] = v9;
      }

      ++v3;
      v4 += 64;
      if (v2 == v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_13:

    return v5;
  }

  return result;
}

void one-time initialization function for nullDDSCV()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v0 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  static DOCSidebarViewController.nullDDSCV = v1;
}

uint64_t one-time initialization function for nullDDS()
{
  if (one-time initialization token for nullDDSCV != -1)
  {
    swift_once();
  }

  v0 = static DOCSidebarViewController.nullDDSCV;
  v1 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd));
  v2 = v0;
  result = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  static DOCSidebarViewController.nullDDS = result;
  return result;
}

Swift::Int DOCSidebarViewController.OutlineCellType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t DOCSidebarViewController.OutlineSection.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  (*(a3 + 96))(v6, ObjectType, a3);
  AnyHashable.hash(into:)();
  return outlined destroy of AnyHashable(v6);
}

uint64_t DOCSidebarViewController.OutlineSection.description.getter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = (*(a2 + 24))(ObjectType, a2);
  MEMORY[0x24C1FAEA0](v4);

  return 0x6E6F6974636573;
}

Swift::Int DOCSidebarViewController.OutlineSection.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(a2 + 96))(v5, ObjectType, a2);
  AnyHashable.hash(into:)();
  outlined destroy of AnyHashable(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for DOCUIOutlineSection.showsHeader.getter in conformance DOCSidebarViewController.OutlineSection()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 64))(ObjectType, v1) & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCSidebarViewController.OutlineSection()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v1 + 96))(v4, ObjectType, v1);
  AnyHashable.hash(into:)();
  outlined destroy of AnyHashable(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCSidebarViewController.OutlineSection()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 96))(v4, ObjectType, v1);
  AnyHashable.hash(into:)();
  return outlined destroy of AnyHashable(v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCSidebarViewController.OutlineSection()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v1 + 96))(v4, ObjectType, v1);
  AnyHashable.hash(into:)();
  outlined destroy of AnyHashable(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCSidebarViewController.OutlineSection()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 24))(ObjectType, v1);
  MEMORY[0x24C1FAEA0](v3);

  return 0x6E6F6974636573;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCSidebarViewController.OutlineSection(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = a2[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 104))(v3, v4, ObjectType, v2) & 1;
}

uint64_t DOCSidebarViewController.OutlineItem.outlineSection.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for DOCSidebarViewController.OutlineSection;
  *(a1 + 32) = &protocol witness table for DOCSidebarViewController.OutlineSection;
  *a1 = *v1;
  return swift_unknownObjectRetain();
}

void DOCSidebarViewController.OutlineItem.hash(into:)()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 96))(v6, ObjectType, v1);
  AnyHashable.hash(into:)();
  outlined destroy of AnyHashable(v6);
  v3 = *(v0 + 56);
  if (v3 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6[0] = *(v0 + 16);
    v6[1] = v5;
    v7 = v4;
    v8 = v3;
    Hasher._combine(_:)(1u);
    DOCSidebarItem.hashComparableValue.getter();
    String.hash(into:)();
  }
}

uint64_t DOCSidebarViewController.OutlineItem.description.getter()
{
  *&v12[9] = *(v0 + 41);
  v1 = *(v0 + 32);
  v11 = *(v0 + 16);
  *v12 = v1;
  if (v12[24] == 255)
  {
    *&v13 = 0x203A726564616568;
    *(&v13 + 1) = 0xE800000000000000;
    v5 = *(v0 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 24))(ObjectType, v5);
    MEMORY[0x24C1FAEA0](v7);

    return 0x203A726564616568;
  }

  else
  {
    v2 = *(v0 + 32);
    v13 = *(v0 + 16);
    v14 = v2;
    v15 = *(v0 + 48);
    v16 = v12[24];
    v9 = 0x3A646C6968632020;
    v10 = 0xE800000000000000;
    outlined init with copy of DOCGridLayout.Spec?(&v11, &v8, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    v3 = DOCSidebarItem.localizedTitle.getter();
    MEMORY[0x24C1FAEA0](v3);

    outlined destroy of CharacterSet?(&v11, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    return v9;
  }
}

Swift::Int DOCSidebarViewController.OutlineItem.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 96))(v7, ObjectType, v1);
  AnyHashable.hash(into:)();
  outlined destroy of AnyHashable(v7);
  v3 = *(v0 + 56);
  if (v3 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + 48);
    v5 = *(v0 + 32);
    v7[0] = *(v0 + 16);
    v7[1] = v5;
    v8 = v4;
    v9 = v3;
    Hasher._combine(_:)(1u);
    DOCSidebarItem.hashComparableValue.getter();
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

__n128 DOCSidebarViewController.OutlineItem.init(section:itemInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 32);
  v5 = *(a3 + 40);
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v7 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v7;
  *(a4 + 48) = v4;
  *(a4 + 56) = v5;
  return result;
}

uint64_t protocol witness for DOCUIOutlineItem.outlineSection.getter in conformance DOCSidebarViewController.OutlineItem@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for DOCSidebarViewController.OutlineSection;
  *(a1 + 32) = &protocol witness table for DOCSidebarViewController.OutlineSection;
  *a1 = *v1;
  return swift_unknownObjectRetain();
}

void protocol witness for Hashable.hash(into:) in conformance DOCSidebarViewController.OutlineItem()
{
  v1 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  (*(v1 + 96))(v7, ObjectType, v1);
  AnyHashable.hash(into:)();
  outlined destroy of AnyHashable(v7);
  if (v3 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = v2;
    v9 = v3;
    Hasher._combine(_:)(1u);
    DOCSidebarItem.hashComparableValue.getter();
    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCSidebarViewController.OutlineItem()
{
  v1 = *(v0 + 8);
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v1 + 96))(v8, ObjectType, v1);
  AnyHashable.hash(into:)();
  outlined destroy of AnyHashable(v8);
  if (v3 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = v2;
    v10 = v3;
    Hasher._combine(_:)(1u);
    DOCSidebarItem.hashComparableValue.getter();
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCSidebarViewController.OutlineItem(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return specialized static DOCSidebarViewController.OutlineItem.== infix(_:_:)(v5, v7) & 1;
}

Swift::Void __swiftcall DOCSidebarViewController.configureDataSource()()
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables016DOCSidebarHeaderD0CAF0iB10ControllerC11OutlineItemVGMd);
  v1 = *(v49 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v49, v3);
  v46 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v40 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables014DOCSidebarItemD0CAF0iB10ControllerC07OutlineJ0VGMd);
  v44 = *(v48 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v48, v9);
  v10 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v40 - v13;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DOCSidebarItemCell(0);
  v47 = v14;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DOCSidebarHeaderCell();
  UICollectionView.CellRegistration.init(handler:)();
  v15 = type metadata accessor for DOCSidebarViewController(0);
  v45 = v0;
  v53.receiver = v0;
  v53.super_class = v15;
  if (objc_msgSendSuper2(&v53, sel_collectionView))
  {
    v16 = *(v1 + 16);
    v17 = v46;
    v41 = v7;
    v18 = v7;
    v19 = v49;
    v16(v46, v18, v49);
    v20 = v44;
    v21 = v48;
    (*(v44 + 16))(v10, v47, v48);
    v22 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v23 = (v2 + *(v20 + 80) + v22) & ~*(v20 + 80);
    v24 = swift_allocObject();
    v42 = v1;
    (*(v1 + 32))(v24 + v22, v17, v19);
    (*(v20 + 32))(v24 + v23, v10, v21);
    v25 = swift_allocObject();
    *(v25 + 16) = partial apply for closure #3 in DOCSidebarViewController.configureDataSource();
    *(v25 + 24) = v24;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
    v27 = objc_allocWithZone(v26);
    v28 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v29 = v45;
    v55 = v26;
    *&v54 = v28;
    v30 = MEMORY[0x277D85000];
    v31 = (*((*MEMORY[0x277D85000] & *v45) + 0x330))(&v54);
    (*((*v30 & *v29) + 0x328))(&v51, v31);
    if (v52)
    {
      outlined init with take of Any(&v51, &v54);
      swift_dynamicCast();
      v32 = v50;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = UICollectionViewDiffableDataSource.sectionSnapshotHandlers.modify();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceC23SectionSnapshotHandlersVy26DocumentManagerExecutables010DOCSidebarC10ControllerC07OutlineG0VAH0O4ItemV_ALGMd);
      UICollectionViewDiffableDataSource.SectionSnapshotHandlers.shouldExpandItem.setter();
      v33(&v54, 0);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = UICollectionViewDiffableDataSource.sectionSnapshotHandlers.modify();
      UICollectionViewDiffableDataSource.SectionSnapshotHandlers.shouldCollapseItem.setter();
      v34(&v54, 0);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = UICollectionViewDiffableDataSource.sectionSnapshotHandlers.modify();
      UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willExpandItem.setter();
      v35(&v54, 0);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = UICollectionViewDiffableDataSource.sectionSnapshotHandlers.modify();
      UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willCollapseItem.setter();
      v36(&v54, 0);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceC18ReorderingHandlersVy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAH0N4ItemV_GMd);
      UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.setter();
      v37(&v54, 0);
      v38 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
      UICollectionViewDiffableDataSource.ReorderingHandlers.willReorder.setter();
      v38(&v54, 0);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
      UICollectionViewDiffableDataSource.ReorderingHandlers.didReorder.setter();
      v39(&v54, 0);

      (*(v42 + 8))(v41, v49);
      (*(v20 + 8))(v47, v48);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void closure #1 in DOCSidebarViewController.configureDataSource()(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = *(a3 + 48);
  v11 = *(a3 + 56);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (v11 != 255)
    {
      v14[0] = v6;
      v14[1] = v7;
      v14[2] = v8;
      v14[3] = v9;
      v14[4] = v10;
      v15 = v11;
      outlined copy of DOCSidebarItem(v6, v7, v8, v9, v10, v11);
      DOCSidebarViewController.updateContentsOfCell(_:withSidebarItem:sidebarSection:)(a1, v14, v4, v5);
      outlined consume of DOCSidebarItem?(v6, v7, v8, v9, v10, v11);
    }
  }
}

void DOCSidebarViewController.updateContentsOfCell(_:withSidebarItem:sidebarSection:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *a2;
  v80 = type metadata accessor for URL();
  v79 = *(v80 - 8);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v80, v11);
  v78 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*((*MEMORY[0x277D85000] & *v4) + 0x428))(v12);
  if (v14)
  {
    v15 = (*(*v14 + 112))(v14);

    if (v15)
    {
      type metadata accessor for DOCSidebarItemCell(0);
      v16 = a1;
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        return;
      }
    }
  }

  v18 = &a1[direct field offset for DOCSidebarItemCell.delegate];
  swift_beginAccess();
  *(v18 + 1) = &protocol witness table for DOCSidebarViewController;
  swift_unknownObjectWeakAssign();
  DOCSidebarViewController.updateIconOfCell(_:withSidebarItem:)(a1, a2);
  DOCSidebarViewController.updateEjectController(_:withSidebarItem:)(a1, a2);
  v19 = DOCSidebarItem.localizedTitle.getter();
  DOCSidebarItemCell.title.setter(v19, v20);
  if (*(a2 + 40) == 1)
  {
    v21 = [*a2 domainName];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = v25;
      v21 = v23;
      goto LABEL_9;
    }
  }

  else
  {
    v21 = 0;
  }

  v26 = 0;
LABEL_9:
  DOCSidebarItemCell.subtitle.setter(v21, v26);
  v27 = DOCSidebarItem.isEnabled(sourceVisibilityController:)();
  DOCSidebarItemCell.sourceIsEnabled.setter(v27);
  if (*(a2 + 40) == 2)
  {
    v28 = *a2;
    v29 = v10;
  }

  else
  {
    v28 = 0;
  }

  v30 = direct field offset for DOCSidebarItemCell.itemTag;
  swift_beginAccess();
  v31 = *&a1[v30];
  *&a1[v30] = v28;

  v81 = a3;
  v32 = DOCSidebarViewController.unseenIndicatorState(for:in:)(a2, a3, a4);
  DOCSidebarItemCell.unseenIndicatorState.setter(v32);
  [a1 setIndentationLevel_];
  v33 = *(a2 + 40);
  if (v33 == 3)
  {
    v34 = *a2;
    v36 = v10;
  }

  else
  {
    if (*(a2 + 40))
    {
      v37 = 0;
      goto LABEL_18;
    }

    v34 = *a2;
    v35 = v10;
  }

  v37 = [v34 isFolder];

LABEL_18:
  v38 = direct field offset for DOCSidebarItemCell.isRepresentingFolder;
  swift_beginAccess();
  a1[v38] = v37;
  v39 = 0;
  if (v33 == 1)
  {
    type metadata accessor for DOCExternalDeviceSource();
    if (swift_dynamicCastClass())
    {
      v39 = 1;
    }
  }

  v40 = direct field offset for DOCSidebarItemCell.isRepresentingUSB;
  swift_beginAccess();
  a1[v40] = v39;
  if (v33 == 1 && (type metadata accessor for DOCFileProviderSource(), (v41 = swift_dynamicCastClass()) != 0))
  {
    v42 = *(v41 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    v43 = v42;
  }

  else
  {
    v42 = 0;
  }

  v44 = direct field offset for DOCSidebarItemCell.syncStateDomain;
  swift_beginAccess();
  v45 = *&a1[v44];
  *&a1[v44] = v42;
  v46 = v42;
  DOCSidebarItemCell.syncStateDomain.didset(v45);

  v47 = 0;
  if (v33 == 4)
  {
    v47 = *(*a2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    v48 = v47;
  }

  v49 = direct field offset for DOCSidebarItemCell.removableMediaStateDomain;
  v50 = 1;
  swift_beginAccess();
  v51 = *&a1[v49];
  *&a1[v49] = v47;
  v52 = v47;
  DOCSidebarItemCell.removableMediaStateDomain.didset(v51);

  v53 = *a2;
  if (v33)
  {
    if (v33 == 5)
    {
      v50 = 0;
    }

    else if (v33 == 1)
    {
      v54 = (*((*MEMORY[0x277D85000] & *v5) + 0x200))();
      type metadata accessor for DOCFileProviderSource();
      v55 = swift_dynamicCastClass();
      if (v55 && (v56 = *(v55 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) != 0)
      {
        outlined init with copy of DOCSidebarItem(a2, &v82);
        v57 = v56;
        v50 = DOCConfiguration.allowsSelecting(_:pickerContext:)(v57, v54);

        outlined destroy of DOCSidebarItem(a2);
      }

      else
      {

        v50 = 1;
      }
    }
  }

  else
  {
    v58 = (*((*MEMORY[0x277D85000] & *v5) + 0x200))();
    v50 = DOCConfiguration.allowsSelecting(_:pickerContext:)(v53, v58);
  }

  [a1 setUserInteractionEnabled_];
  specialized static DOCSidebarCellAccessoryItem.chevron(displayedInStyles:)(&outlined read-only object #0 of DOCSidebarViewController.updateContentsOfCell(_:withSidebarItem:sidebarSection:));
  specialized DOCSidebarCell.addAccessoryItem(_:)();

  ObjectType = swift_getObjectType();
  if ((*(a4 + 40))(ObjectType, a4))
  {
    specialized static DOCSidebarCellAccessoryItem.delete.getter();
    specialized DOCSidebarCell.addAccessoryItem(_:)();
  }

  if ((*(a4 + 56))(ObjectType, a4) & 1) != 0 && (DOCSidebarItem.movable.getter())
  {
    specialized static DOCSidebarCellAccessoryItem.reorder.getter();
    specialized DOCSidebarCell.addAccessoryItem(_:)();
  }

  if (*(a2 + 40) == 5)
  {
    v61 = *(a2 + 16);
    v60 = *(a2 + 24);
    v62 = *(a2 + 32);
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v62 + 16))
    {
      v65 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v64);
      v67 = v66;

      if (v67)
      {
        v84 = *(*(v62 + 56) + 8 * v65);
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          v68 = v82;
          *&v82 = 0x722F7665642FLL;
          *(&v82 + 1) = 0xE600000000000000;
          MEMORY[0x24C1FAEA0](v68, *(&v68 + 1));

          v69 = v78;
          URL.init(fileURLWithPath:)();

          if (one-time initialization token for progressSubscribers != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v70 = static DOCSidebarCellAccessoryItem.progressSubscribers;
          if (*(static DOCSidebarCellAccessoryItem.progressSubscribers + 16) && (v71 = specialized __RawDictionaryStorage.find<A>(_:)(v69), (v72 & 1) != 0))
          {
            outlined init with copy of Any(*(v70 + 56) + 32 * v71, &v82);
          }

          else
          {
            v83 = 0u;
            v82 = 0u;
          }

          swift_endAccess();
          if (*(&v83 + 1))
          {
            (*(v79 + 8))(v69, v80);
            outlined destroy of CharacterSet?(&v82, &_sypSgMd);
          }

          else
          {
            type metadata accessor for DOCSidebarCellAccessoryItem();
            outlined destroy of CharacterSet?(&v82, &_sypSgMd);
            static DOCSidebarCellAccessoryItem.progress(domain:)(v69);
            specialized DOCSidebarCell.addAccessoryItem(_:)();

            (*(v79 + 8))(v69, v80);
          }

          return;
        }
      }
    }

    else
    {
    }

    if (one-time initialization token for Sidebar != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static Logger.Sidebar);

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v82 = v77;
      *v76 = 136315394;
      *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000037, 0x8000000249BD9B10, &v82);
      *(v76 + 12) = 2080;
      *(v76 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v60, &v82);
      _os_log_impl(&dword_2493AC000, v74, v75, "%s: Failed to get BSD name for disk %s, can't create progress indicator", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v77, -1, -1);
      MEMORY[0x24C1FE850](v76, -1, -1);
    }
  }
}

uint64_t closure #2 in DOCSidebarViewController.configureDataSource()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    ObjectType = swift_getObjectType();
    v7 = *(v3 + 24);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v3);
    DOCSidebarHeaderCell.title.setter(v8, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #3 in DOCSidebarViewController.configureDataSource()(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *&v13[9] = *(a3 + 41);
  v3 = a3[2];
  v12 = a3[1];
  *v13 = v3;
  v4 = a3[1];
  v8 = *a3;
  v9 = v4;
  v10[0] = a3[2];
  *(v10 + 9) = *(a3 + 41);
  if (v13[24] == 255)
  {
    v7[0] = v8;
    type metadata accessor for DOCSidebarHeaderCell();
    swift_unknownObjectRetain();
    v5 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    outlined destroy of DOCSidebarViewController.OutlineSection(v7);
  }

  else
  {
    v11 = v8;
    outlined init with copy of DOCSidebarViewController.OutlineSection(&v11, v7);
    outlined init with copy of DOCGridLayout.Spec?(&v12, v7, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    type metadata accessor for DOCSidebarItemCell(0);
    v5 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    outlined destroy of DOCSidebarViewController.OutlineSection(&v11);
    outlined destroy of CharacterSet?(&v12, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  }

  return v5;
}

uint64_t closure #4 in DOCSidebarViewController.configureDataSource()(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = DOCSidebarViewController.shouldChangeExpandedState(of:to:)(v4, v5, a3 & 1);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void closure #1 in closure #6 in DOCSidebarViewController.configureDataSource()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(a2 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(ObjectType, v5);
    v8 = *(**(v4 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

    v9 = v8(v7);

    (*(*v9 + 192))(1);
    DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(0, 0);
    v10 = (*((*MEMORY[0x277D85000] & *v4) + 0x248))();
    (*(*v10 + 152))(v10);

    v11._object = 0x8000000249BD9B90;
    v11._countAndFlagsBits = 0xD000000000000016;
    DOCSidebarViewController.endDeferReloadsForUIChange(logID:reloadImmediately:)(v11, 0);
  }
}

uint64_t closure #6 in DOCSidebarViewController.configureDataSource()(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v23 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v12 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  v28 = *a1;
  v29 = v16;
  v30[0] = a1[2];
  *(v30 + 9) = *(a1 + 41);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v17 = static OS_dispatch_queue.main.getter();
  v31 = v28;
  v32 = v29;
  v33[0] = v30[0];
  *(v33 + 9) = *(v30 + 9);
  v18 = swift_allocObject();
  v19 = v29;
  *(v18 + 24) = v28;
  *(v18 + 16) = a2;
  *(v18 + 40) = v19;
  *(v18 + 56) = v30[0];
  *(v18 + 65) = *(v30 + 9);
  aBlock[4] = v23;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);

  outlined init with copy of DOCSidebarViewController.OutlineSection(&v31, v26);
  outlined init with copy of DOCGridLayout.Spec?(&v32, v26, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v15, v11, v20);
  _Block_release(v20);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v25);
}

void closure #1 in closure #7 in DOCSidebarViewController.configureDataSource()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(a2 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(ObjectType, v5);
    v8 = *(**(v4 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

    v9 = v8(v7);

    v10 = (*(*v9 + 192))(0);
    v11 = (*((*MEMORY[0x277D85000] & *v4) + 0x248))(v10);
    (*(*v11 + 152))(v11);

    v12._object = 0x8000000249BD9B90;
    v12._countAndFlagsBits = 0xD000000000000016;
    DOCSidebarViewController.endDeferReloadsForUIChange(logID:reloadImmediately:)(v12, 0);
  }
}

void *closure #8 in DOCSidebarViewController.configureDataSource()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    if (v7 == 255)
    {
    }

    else
    {
      ObjectType = swift_getObjectType();
      v11 = v6;
      v12 = ObjectType;
      v13 = v5;
      v14 = *((*MEMORY[0x277D85000] & *v9) + 0x440);
      v20 = v13;
      v21 = v4;
      v22 = v11;
      outlined copy of DOCSidebarItem?(v3, v2, v13, v4, v11, v7);
      v15 = swift_unknownObjectRetain();
      v16 = v14(v15);
      v17 = (*(v1 + 72))(v16, v12, v1);
      if ((*(v1 + 56))(v12, v1))
      {
        v18 = DOCSidebarItem.movable.getter();

        outlined consume of DOCSidebarItem?(v3, v2, v20, v21, v22, v7);
        swift_unknownObjectRelease();
        if (v18)
        {
          v19 = *(v17 + 16);

          return (v19 > 1);
        }
      }

      else
      {

        outlined consume of DOCSidebarItem?(v3, v2, v20, v21, v22, v7);

        swift_unknownObjectRelease();
      }
    }

    return 0;
  }

  return result;
}

uint64_t closure #10 in DOCSidebarViewController.configureDataSource()()
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
  v0 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v1);
  v36 = &v27 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit38NSDiffableDataSourceSectionTransactionVy26DocumentManagerExecutables24DOCSidebarViewControllerC07OutlineE0VAF0M4ItemVGMd);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v27 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v38 = result;
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31NSDiffableDataSourceTransactionVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
    result = NSDiffableDataSourceTransaction.sectionTransactions.getter();
    v8 = result;
    v35 = *(result + 16);
    if (v35)
    {
      v9 = 0;
      v34 = result + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v32 = (v0 + 8);
      v33 = v39 + 16;
      v31 = (v39 + 8);
      v28 = result;
      v29 = v6;
      v30 = v3;
      while (v9 < *(v8 + 16))
      {
        (*(v39 + 16))(v6, v34 + *(v39 + 72) * v9++, v3);
        NSDiffableDataSourceSectionTransaction.sectionIdentifier.getter();
        v43 = v46;
        v44 = v45;
        v10 = v36;
        NSDiffableDataSourceSectionTransaction.finalSnapshot.getter();
        v11 = v37;
        v12 = NSDiffableDataSourceSectionSnapshot.items.getter();
        result = (*v32)(v10, v11);
        v13 = 0;
        v14 = *(v12 + 16);
        v15 = MEMORY[0x277D84F90];
LABEL_7:
        v16 = v12 + (v13 << 6);
        while (v14 != v13)
        {
          if (v13 >= *(v12 + 16))
          {
            __break(1u);
            goto LABEL_19;
          }

          v17 = (v16 + 64);
          ++v13;
          v18 = *(v16 + 88);
          v16 += 64;
          if (v18 != 255)
          {
            v42 = v9;
            v19 = *(v17 - 2);
            v20 = *(v17 - 1);
            v21 = v17[1];
            v22 = v17[2];
            v40 = *v17;
            v41 = v19;
            outlined copy of DOCSidebarItem(v19, v20, v40, v21, v22, v18);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
              v15 = result;
            }

            v24 = *(v15 + 16);
            v23 = *(v15 + 24);
            if (v24 >= v23 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v15);
              v15 = result;
            }

            *(v15 + 16) = v24 + 1;
            v25 = v15 + 48 * v24;
            v26 = v40;
            *(v25 + 32) = v41;
            *(v25 + 40) = v20;
            *(v25 + 48) = v26;
            *(v25 + 56) = v21;
            *(v25 + 64) = v22;
            *(v25 + 72) = v18;
            v6 = v29;
            v3 = v30;
            v8 = v28;
            v9 = v42;
            goto LABEL_7;
          }
        }

        DOCSidebarViewController.commitUpdateItemOrderingInSection(_:newItemOrdering:)(v44, v43, v15);
        swift_unknownObjectRelease();

        result = (*v31)(v6, v3);
        if (v9 == v35)
        {
          goto LABEL_16;
        }
      }

LABEL_19:
      __break(1u);
    }

    else
    {
LABEL_16:
    }
  }

  return result;
}

void DOCSidebarViewController.whileCoalescingDiffableUpdates(animatingDifferences:_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x380);
  v6 = v5(v13);
  if (__OFADD__(*v7, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  ++*v7;
  v8 = v6(v13, 0);
  a2(v8);
  v9 = v5(v13);
  if (__OFSUB__(*v10, 1))
  {
LABEL_8:
    __break(1u);
    return;
  }

  --*v10;
  v11 = v9(v13, 0);
  if (!(*((*v4 & *v2) + 0x370))(v11) && ((*((*v4 & *v2) + 0x358))() & 1) != 0)
  {
    v12 = [objc_opt_self() areAnimationsEnabled];
    DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(v12, 1);
  }
}

Swift::Void __swiftcall DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(Swift::Bool animatingDifferences, Swift::Bool reflectSelection)
{
  v25[0] = type metadata accessor for DispatchTime();
  v5 = *(v25[0] - 8);
  MEMORY[0x28223BE20](v25[0], v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v25 - v11;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v15.n128_f64[0] = MEMORY[0x28223BE20](v13, v14);
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x218))(v15))
  {
    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = animatingDifferences;
  *(v17 + 25) = reflectSelection;
  aBlock[4] = partial apply for closure #1 in DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_47;
  _Block_copy(aBlock);
  v25[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v18 = DispatchWorkItem.init(flags:block:)();

  v19 = *((*MEMORY[0x277D85000] & *v2) + 0x220);

  v19(v20);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v21 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v5 + 8);
  v23 = v8;
  v24 = v25[0];
  v22(v23, v25[0]);
  MEMORY[0x24C1FB950](v12, v18);

  v22(v12, v24);
}

uint64_t DOCSidebarViewController.diffableDataSourceReloadability(_:)(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x388))() & 1) != 0 || ![v1 doc_hasAppearedOrIsAppearing])
  {
    return 1;
  }

  (*((*v4 & *v1) + 0x328))(v16);
  if (v16[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
    if (swift_dynamicCast())
    {
      v5 = v15;
      if (one-time initialization token for nullDDS != -1)
      {
        swift_once();
      }

      goto LABEL_11;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v16, &_sypSgMd);
  }

  if (one-time initialization token for nullDDS != -1)
  {
    swift_once();
  }

  v5 = static DOCSidebarViewController.nullDDS;
LABEL_11:
  v6 = static DOCSidebarViewController.nullDDS;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
  v7 = v6;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) != 0 || *(v2 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) > 0 || (*((*v4 & *v2) + 0x370))())
  {
    return 1;
  }

  result = (*((*v4 & *v2) + 0x340))();
  if (result)
  {
    if (a1)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.UI);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v16[0] = v14;
        *v13 = 136315138;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x8000000249BD9B50, v16);
        _os_log_impl(&dword_2493AC000, v11, v12, "ERROR: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x24C1FE850](v14, -1, -1);
        MEMORY[0x24C1FE850](v13, -1, -1);
      }
    }

    return 2;
  }

  return result;
}

uint64_t DOCSidebarViewController.initializeDiffableDataSourceSectionsIfNecessary()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v3 = *(v2 - 8);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v2, v4);
  v7 = v16 - v6;
  v8 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x328))(v17, v5);
  if (v17[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
    if (swift_dynamicCast())
    {
      v9 = v16[1];
      goto LABEL_8;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v17, &_sypSgMd);
  }

  if (one-time initialization token for nullDDS != -1)
  {
    swift_once();
  }

  v9 = static DOCSidebarViewController.nullDDS;
LABEL_8:
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v10 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
  result = (*(v3 + 8))(v7, v2);
  if (!v10)
  {
    v12 = (*((*v8 & *v1) + 0x248))(result);
    v14 = MEMORY[0x28223BE20](v12, v13);
    v16[-2] = v1;
    (*(*v15 + 144))(partial apply for closure #1 in DOCSidebarViewController.initializeDiffableDataSourceSectionsIfNecessary(), v14);
  }

  return result;
}

uint64_t closure #1 in DOCSidebarViewController.initializeDiffableDataSourceSectionsIfNecessary()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v15 - v10;
  lazy protocol witness table accessor for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem();
  swift_unknownObjectRetain();
  v12 = NSDiffableDataSourceSectionSnapshot.init()();
  (*((*MEMORY[0x277D85000] & *a4) + 0x328))(v16, v12);
  if (v16[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
    if (swift_dynamicCast())
    {
      v13 = v15[1];
      goto LABEL_8;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v16, &_sypSgMd);
  }

  if (one-time initialization token for nullDDS != -1)
  {
    swift_once();
  }

  v13 = static DOCSidebarViewController.nullDDS;
LABEL_8:
  v16[0] = a1;
  v16[1] = a2;
  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

  (*(v8 + 8))(v11, v7);
  return swift_unknownObjectRelease();
}

void closure #1 in DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    DOCSidebarViewController.reloadOutlineDiffableData(animatingDifferences:reflectSelection:)(a2 & 1, a3 & 1);
  }
}

Swift::Void __swiftcall DOCSidebarViewController.reloadOutlineDiffableData(animatingDifferences:reflectSelection:)(Swift::Bool animatingDifferences, Swift::Bool reflectSelection)
{
  v3 = v2;
  v6 = [v2 viewIfLoaded];
  if (!v6)
  {
    return;
  }

  v7 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x388))())
  {
    DOCSidebarViewController.initializeDiffableDataSourceSectionsIfNecessary()();
  }

  if (!animatingDifferences || ![v2 doc_hasAppearedOrIsAppearing])
  {
    goto LABEL_12;
  }

  v8 = [v2 view];
  if (!v8)
  {
    goto LABEL_31;
  }

  v9 = v8;
  v10 = [v8 window];

  if (v10)
  {

    if ([v3 doc_isAppearing])
    {
      v11 = [v3 navigationController];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 topViewController];
        if (v13)
        {
          v14 = v13;
          type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
          v15 = v3;
          v16 = static NSObject.== infix(_:_:)();

          v17 = v16 ^ 1;
          goto LABEL_13;
        }
      }
    }

    v17 = 1;
  }

  else
  {
LABEL_12:
    v17 = 0;
  }

LABEL_13:
  v18 = DOCSidebarViewController.diffableDataSourceReloadability(_:)(1);
  if (!v18)
  {
    v22 = *((*v7 & *v3) + 0x350);
    v23 = v22(v37);
    if (__OFADD__(*v24, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v24;
      v23(v37, 0);
      (*((*v7 & *v3) + 0x360))(0);
      if (one-time initialization token for UI == -1)
      {
LABEL_19:
        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logger.UI);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 67109120;
          *(v28 + 4) = v17 & 1;
          _os_log_impl(&dword_2493AC000, v26, v27, "Sidebar: reloading diffable, animatingDifferences = %{BOOL}d", v28, 8u);
          MEMORY[0x24C1FE850](v28, -1, -1);
        }

        v29 = DOCSidebarViewController.initializeDiffableDataSourceSectionsIfNecessary()();
        v30 = (*((*v7 & *v3) + 0x248))(v29);
        v32 = MEMORY[0x28223BE20](v30, v31);
        (*(*v33 + 144))(partial apply for closure #1 in DOCSidebarViewController.reloadOutlineDiffableData(animatingDifferences:reflectSelection:), v32);

        v34 = v3;
        specialized DOCSidebarViewController.forEachVisibleSidebarItemCell(handler:)(v34, v34);

        DOCSidebarViewController.updatePreferredFocusIndexPath()();
        if (reflectSelection)
        {
          DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(0, 0);
        }

        v35 = v22(v37);
        if (!__OFSUB__(*v36, 1))
        {
          --*v36;
          v35(v37, 0);
          return;
        }

        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }
    }

    swift_once();
    goto LABEL_19;
  }

  v19 = (*((*v7 & *v3) + 0x358))();
  v20 = *((*v7 & *v3) + 0x360);
  v21 = (v18 != 2) | v19 & 1u;

  v20(v21);
}

uint64_t closure #1 in DOCSidebarViewController.reloadOutlineDiffableData(animatingDifferences:reflectSelection:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v66 = &v59 - v15;
  ObjectType = swift_getObjectType();
  v17 = *((*MEMORY[0x277D85000] & *a4) + 0x440);
  v18 = swift_unknownObjectRetain();
  v65 = a4;
  v19 = v17(v18);
  v20 = *(a2 + 72);
  v67 = a1;
  v68 = a2;
  v21 = v20(v19, ObjectType, a2);
  v22 = *(v21 + 16);
  if (v22)
  {
    v60 = ObjectType;
    v61 = a5;
    v62 = v10;
    v63 = v9;
    *&v75[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = *&v75[0];
    v59 = v21;
    v24 = (v21 + 72);
    v25 = v67;
    do
    {
      v27 = *(v24 - 5);
      v26 = *(v24 - 4);
      v29 = *(v24 - 3);
      v28 = *(v24 - 2);
      v30 = *(v24 - 1);
      v31 = *v24;
      swift_unknownObjectRetain();
      v69 = v28;
      outlined copy of DOCSidebarItem(v27, v26, v29, v28, v30, v31);
      *&v75[0] = v23;
      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v34 = v33 + 1;
        v25 = v67;
        v23 = *&v75[0];
      }

      v24 += 48;
      *(v23 + 16) = v34;
      v35 = v23 + (v33 << 6);
      v36 = v68;
      *(v35 + 32) = v25;
      *(v35 + 40) = v36;
      *(v35 + 48) = v27;
      *(v35 + 56) = v26;
      v37 = v69;
      *(v35 + 64) = v29;
      *(v35 + 72) = v37;
      *(v35 + 80) = v30;
      *(v35 + 88) = v31;
      --v22;
    }

    while (v22);

    v9 = v63;
    v10 = v62;
    ObjectType = v60;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
    v25 = v67;
  }

  v38 = v68;
  if ((*(v68 + 64))(ObjectType, v68))
  {
    v39 = *(v68 + 32);
    swift_unknownObjectRetain();
    v40 = v39(ObjectType, v68);
    v38 = v68;
    v41 = v40;
    v42 = -1;
    v43 = v25;
    v44 = v68;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v41 = 1;
  }

  *&v74[0] = v43;
  *(&v74[0] + 1) = v44;
  memset(&v74[1], 0, 40);
  BYTE8(v74[3]) = v42;
  v75[0] = v74[0];
  v75[1] = 0u;
  v76[0] = 0u;
  *(v76 + 9) = *(&v74[2] + 9);
  lazy protocol witness table accessor for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem();
  NSDiffableDataSourceSectionSnapshot.init()();
  if (*(v23 + 16))
  {
    (*((*MEMORY[0x277D85000] & *v65) + 0x328))(&v71, v23);
    if (v73)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
      if (swift_dynamicCast())
      {
        v45 = v70;
LABEL_19:
        v71 = v67;
        v72 = v38;
        v46 = v64;
        UICollectionViewDiffableDataSource.snapshot(for:)();

        v47 = v66;
        (*(v10 + 8))(v66, v9);
        (*(v10 + 32))(v47, v46, v9);
        specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(headerItem:expanded:childItems:)(v75, v41 & 1);
        goto LABEL_20;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&v71, &_sypSgMd);
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v45 = static DOCSidebarViewController.nullDDS;
    goto LABEL_19;
  }

LABEL_20:

  v48 = v38;
  v49 = *(v38 + 16);
  swift_unknownObjectRetain();
  v50 = v49(ObjectType, v48);
  swift_unknownObjectRelease();
  v51 = v65;
  v52 = MEMORY[0x277D85000];
  v53 = (*((*MEMORY[0x277D85000] & *v65) + 0x560))(&v71);
  specialized Set._Variant.remove(_:)(v50);
  v54 = v53(&v71, 0);
  (*((*v52 & *v51) + 0x328))(&v71, v54);
  if (v73)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
    if (swift_dynamicCast())
    {
      v55 = v70;
      v56 = v68;
      goto LABEL_27;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(&v71, &_sypSgMd);
  }

  v56 = v68;
  if (one-time initialization token for nullDDS != -1)
  {
    swift_once();
  }

  v55 = static DOCSidebarViewController.nullDDS;
LABEL_27:
  v71 = v67;
  v72 = v56;
  v57 = v66;
  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

  outlined destroy of CharacterSet?(v74, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);
  (*(v10 + 8))(v57, v9);
  return swift_unknownObjectRelease();
}

uint64_t specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(headerItem:expanded:childItems:)(uint64_t a1, char a2)
{
  v23 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v28 = *(a1 + 32);
  v26 = *(a1 + 48);
  v27 = *(a1 + 40);
  v25 = *(a1 + 56);
  v5 = *(a1 + 16);
  v44 = *a1;
  v45 = v5;
  v46[0] = *(a1 + 32);
  *(v46 + 9) = *(a1 + 41);
  specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(&v47);
  v6 = v47;
  v21 = *(&v48 + 1);
  v22 = v48;
  v7 = *&v49[8];
  v20 = *v49;
  v8 = *&v49[16];
  v19 = v49[24];
  v9 = *(a1 + 16);
  v38 = *a1;
  v39 = v9;
  v10 = *(a1 + 41);
  *v40 = *(a1 + 32);
  *&v40[9] = v10;
  v41 = v47;
  v42 = v48;
  v43[0] = *v49;
  *(v43 + 9) = *&v49[9];
  v24 = v44;
  v18 = v4;
  v17 = *(&v47 + 1);
  if (v44)
  {
    if (v47)
    {
      v31 = v47;
      v32 = v48;
      v33 = *v49;
      *&v34 = *&v49[16];
      BYTE8(v34) = v49[24];
      v50[0] = v44;
      v50[1] = v23;
      v50[2] = v3;
      v50[3] = v4;
      v50[4] = v28;
      v50[5] = v27;
      v50[6] = v26;
      v51 = v25;
      outlined init with copy of DOCGridLayout.Spec?(&v47, v30, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);
      outlined init with copy of DOCGridLayout.Spec?(a1, v30, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);
      v11 = specialized static DOCSidebarViewController.OutlineItem.== infix(_:_:)(v50, &v31);
      swift_unknownObjectRelease();
      outlined consume of DOCSidebarItem?(v22, v21, v20, v7, v8, v19);
      outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v47)
  {
LABEL_5:
    v35 = v41;
    v36 = v42;
    v37[0] = v43[0];
    *(v37 + 9) = *(v43 + 9);
    v31 = v38;
    v32 = v39;
    v33 = *v40;
    v34 = *&v40[16];
    outlined init with copy of DOCGridLayout.Spec?(&v47, v50, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);
    outlined init with copy of DOCGridLayout.Spec?(a1, v50, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);
    outlined destroy of CharacterSet?(&v31, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSg_AFtMd);
    v11 = 0;
    goto LABEL_7;
  }

  v11 = 1;
LABEL_7:
  v12 = *(specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter() + 16);

  if (v12)
  {
    v13 = specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
    NSDiffableDataSourceSectionSnapshot.delete(_:)(v13);
  }

  if ((v11 & 1) == 0)
  {
    if (v47)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_249B9A480;
      *(v14 + 32) = v6;
      *(v14 + 40) = v17;
      *(v14 + 48) = v22;
      *(v14 + 56) = v21;
      *(v14 + 64) = v20;
      *(v14 + 72) = v7;
      *(v14 + 80) = v8;
      *(v14 + 88) = v19;
      outlined init with copy of DOCGridLayout.Spec?(&v47, &v38, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);
      swift_unknownObjectRetain();
      outlined copy of DOCSidebarItem?(v22, v21, v20, v7, v8, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
      NSDiffableDataSourceSectionSnapshot.delete(_:)(v14);
      swift_unknownObjectRelease();
      outlined consume of DOCSidebarItem?(v22, v21, v20, v7, v8, v19);
    }

    if (*a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_249B9A480;
      *(v15 + 32) = v24;
      *(v15 + 40) = v23;
      *(v15 + 48) = v3;
      *(v15 + 56) = v18;
      *(v15 + 64) = v28;
      *(v15 + 72) = v27;
      *(v15 + 80) = v26;
      *(v15 + 88) = v25;
      v39 = 0u;
      memset(v40, 0, 25);
      v38 = 0u;
      outlined init with copy of DOCGridLayout.Spec?(a1, v30, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);
      swift_unknownObjectRetain();
      outlined copy of DOCSidebarItem?(v3, v18, v28, v27, v26, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
      NSDiffableDataSourceSectionSnapshot.append(_:to:)();
      swift_unknownObjectRelease();

      outlined consume of DOCSidebarItem?(v3, v18, v28, v27, v26, v25);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(expanded:)(a2 & 1);
  return outlined destroy of CharacterSet?(&v47, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);
}

{
  specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(v20);
  outlined init with copy of DOCGridLayout.Spec?(a1, &v15, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v20, v18, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
  if (!*(&v15 + 1))
  {
    if (!*(&v18[0] + 1))
    {
      outlined destroy of CharacterSet?(&v15, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
      v4 = 1;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  outlined init with copy of DOCGridLayout.Spec?(&v15, &v12, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
  if (!*(&v18[0] + 1))
  {
    outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(&v12);
LABEL_8:
    outlined destroy of CharacterSet?(&v15, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSg_AHtMd);
    v4 = 0;
    goto LABEL_11;
  }

  v10[0] = v18[0];
  v10[1] = v18[1];
  v11[0] = v19[0];
  *(v11 + 9) = *(v19 + 9);
  if (v12 == v18[0])
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(v10);
  outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(&v12);
  outlined destroy of CharacterSet?(&v15, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
LABEL_11:
  v5 = *(specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter() + 16);

  if (v5)
  {
    v6 = specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd);
    NSDiffableDataSourceSectionSnapshot.delete(_:)(v6);
  }

  if ((v4 & 1) == 0)
  {
    outlined init with copy of DOCGridLayout.Spec?(v20, &v12, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
    if (*(&v12 + 1))
    {
      v15 = v12;
      v16 = v13;
      v17[0] = v14[0];
      *(v17 + 9) = *(v14 + 9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_249B9A480;
      outlined init with copy of DOCSidebarViewController.XCTest.TestOutlineItem(&v15, v7 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd);
      NSDiffableDataSourceSectionSnapshot.delete(_:)(v7);

      outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(&v15);
    }

    else
    {
      outlined destroy of CharacterSet?(&v12, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
    }

    outlined init with copy of DOCGridLayout.Spec?(a1, &v12, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
    if (*(&v12 + 1))
    {
      v15 = v12;
      v16 = v13;
      v17[0] = v14[0];
      *(v17 + 9) = *(v14 + 9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_249B9A480;
      outlined init with copy of DOCSidebarViewController.XCTest.TestOutlineItem(&v15, v8 + 32);
      v13 = 0u;
      memset(v14, 0, 25);
      v12 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd);
      NSDiffableDataSourceSectionSnapshot.append(_:to:)();

      outlined destroy of CharacterSet?(&v12, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
      outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(&v15);
    }

    else
    {
      outlined destroy of CharacterSet?(&v12, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd);
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(expanded:)(a2 & 1);
  return outlined destroy of CharacterSet?(v20, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
}

Swift::Void __swiftcall DOCSidebarViewController.updateContentsOfAllVisibleCells()()
{
  v1 = v0;
  specialized DOCSidebarViewController.forEachVisibleSidebarItemCell(handler:)(v1, v1);
}

char *DOCSidebarViewController.updateDiffableDataSourceByInsertingFavorites(_:at:)(unint64_t a1, uint64_t a2)
{
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
  v100 = *(v101 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v101, v5);
  v8 = &v92 - v7;
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v2) + 0x248);
  v102 = v2;
  v11 = v10(v6);
  v12 = (*(*v11 + 136))(2);
  v110 = v13;

  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_16:
    swift_unknownObjectRetain();
    v113 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_3:
  v124[0] = MEMORY[0x277D84F90];
  swift_unknownObjectRetain();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v112 = a2;
    v16 = v8;
    v17 = v124[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        v19 = MEMORY[0x24C1FC540](v18, a1);
        v124[0] = v17;
        v20 = v12;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        swift_unknownObjectRetain();
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v17 = v124[0];
        }

        ++v18;
        *(v17 + 16) = v22 + 1;
        v23 = v17 + (v22 << 6);
        v24 = v110;
        *(v23 + 32) = v20;
        *(v23 + 40) = v24;
        *(v23 + 48) = v19;
        *(v23 + 56) = 0u;
        *(v23 + 72) = 0u;
        *(v23 + 88) = 0;
        v12 = v20;
      }

      while (v14 != v18);
    }

    else
    {
      v25 = (a1 + 32);
      do
      {
        v26 = *v25;
        v124[0] = v17;
        v27 = v17;
        v29 = *(v17 + 16);
        v28 = *(v17 + 24);
        swift_unknownObjectRetain();
        v30 = v26;
        if (v29 >= v28 >> 1)
        {
          v33 = v30;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          v30 = v33;
          v27 = v124[0];
        }

        *(v27 + 16) = v29 + 1;
        v31 = v27 + (v29 << 6);
        v32 = v110;
        *(v31 + 32) = v12;
        *(v31 + 40) = v32;
        *(v31 + 48) = v30;
        *(v31 + 56) = 0u;
        *(v31 + 72) = 0u;
        ++v25;
        *(v31 + 88) = 0;
        --v14;
        v17 = v27;
      }

      while (v14);
    }

    v113 = v17;
    v8 = v16;
    v9 = MEMORY[0x277D85000];
LABEL_17:
    v34 = IndexPath.row.getter();
    ObjectType = swift_getObjectType();
    v36 = v12;
    isUniquelyReferenced_nonNull_native = (*(v110 + 64))();
    if (__OFSUB__(v34, isUniquelyReferenced_nonNull_native & 1))
    {
      goto LABEL_61;
    }

    v103 = v34 - (isUniquelyReferenced_nonNull_native & 1);
    v97 = ObjectType;
    v40 = (*v9 & *v102) + 808;
    v99 = *((*v9 & *v102) + 0x328);
    v98 = v40;
    (v99)(v124);
    if (v124[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
      if (swift_dynamicCast())
      {
        v41 = v115;
        goto LABEL_25;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v124, &_sypSgMd);
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v41 = static DOCSidebarViewController.nullDDS;
LABEL_25:
    v124[0] = v12;
    v124[1] = v110;
    UICollectionViewDiffableDataSource.snapshot(for:)();

    v36 = v8;
    specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(v124);
    isUniquelyReferenced_nonNull_native = specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter();
    v39 = v103;
    if (v103 < 0)
    {
      goto LABEL_62;
    }

    v42 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v42 < v103)
    {
      goto LABEL_63;
    }

    v108 = isUniquelyReferenced_nonNull_native;
    if (v42 == v103)
    {
      v44 = v103;

      v109 = isUniquelyReferenced_nonNull_native;
    }

    else
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native + 32, 0, (2 * v103) | 1);
      v109 = isUniquelyReferenced_nonNull_native;
      v44 = *(isUniquelyReferenced_nonNull_native + 16);
    }

    v36 = v113;
    v95 = v12;
    v96 = v8;
    if (v44)
    {
      v45 = 0;
      v39 = v109 + 48;
      v93 = v44 - 1;
      v104 = MEMORY[0x277D84F90];
      v105 = v44;
      v94 = v109 + 48;
      do
      {
        v46 = v39 + (v45 << 6);
        while (1)
        {
          if (v45 >= *(v109 + 16))
          {
            __break(1u);
            goto LABEL_60;
          }

          v111 = &v92;
          v48 = *(v46 - 16);
          v47 = *(v46 - 8);
          v50 = *v46;
          v49 = *(v46 + 8);
          v52 = *(v46 + 16);
          v51 = *(v46 + 24);
          v53 = *(v46 + 32);
          v54 = *(v46 + 40);
          v112 = v45 + 1;
          v115 = v48;
          v116 = v47;
          v107 = v47;
          v117 = v50;
          v118 = v49;
          v119 = v52;
          v120 = v51;
          v121 = v53;
          v122 = v54;
          v106 = v45;
          MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v43);
          *(&v92 - 2) = &v115;
          swift_unknownObjectRetain();
          outlined copy of DOCSidebarItem?(v50, v49, v52, v51, v53, v54);
          v36 = v113;
          if ((specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v92 - 4), v113) & 1) == 0)
          {
            break;
          }

          swift_unknownObjectRelease();
          outlined consume of DOCSidebarItem?(v50, v49, v52, v51, v53, v54);
          v46 += 64;
          v45 = v112;
          v39 = &v125;
          if (v105 == v112)
          {
            goto LABEL_44;
          }
        }

        v55 = v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v55;
        v123 = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1);
          v36 = v113;
          v56 = v123;
        }

        v57 = v107;
        v59 = v56[2];
        v58 = v56[3];
        v60 = (v59 + 1);
        if (v59 >= v58 >> 1)
        {
          v111 = (v59 + 1);
          isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
          v60 = v111;
          v57 = v107;
          v36 = v113;
          v56 = v123;
        }

        v56[2] = v60;
        v104 = v56;
        v61 = &v56[8 * v59];
        v61[4] = v48;
        v61[5] = v57;
        v61[6] = v50;
        v61[7] = v49;
        v61[8] = v52;
        v61[9] = v51;
        v61[10] = v53;
        *(v61 + 88) = v54;
        v39 = v94;
        v45 = v112;
      }

      while (v93 != v106);
    }

    else
    {
      v104 = MEMORY[0x277D84F90];
    }

LABEL_44:

    isUniquelyReferenced_nonNull_native = v108;
    v39 = *(v108 + 16);
    v38 = v103;
    if (v39 < v103)
    {
      goto LABEL_64;
    }

    if (v103)
    {
      goto LABEL_65;
    }

    for (; v39; isUniquelyReferenced_nonNull_native = v83)
    {
      v63 = 0;
      v64 = isUniquelyReferenced_nonNull_native + 48;
      v106 = v39;
      v94 = v39 - 1;
      v39 = &v125;
      v105 = MEMORY[0x277D84F90];
      v108 = isUniquelyReferenced_nonNull_native;
      v103 = isUniquelyReferenced_nonNull_native + 48;
LABEL_48:
      v65 = v64 + (v63 << 6);
      while (v63 < *(isUniquelyReferenced_nonNull_native + 16))
      {
        v111 = &v92;
        v67 = *(v65 - 16);
        v66 = *(v65 - 8);
        v68 = *v65;
        v69 = *(v65 + 8);
        v70 = *(v65 + 16);
        v71 = *(v65 + 24);
        v72 = *(v65 + 32);
        v73 = *(v65 + 40);
        v112 = v63 + 1;
        v115 = v67;
        v116 = v66;
        v109 = v66;
        v117 = v68;
        v118 = v69;
        v119 = v70;
        v120 = v71;
        v121 = v72;
        v122 = v73;
        v107 = v63;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v62);
        *(&v92 - 2) = &v115;
        swift_unknownObjectRetain();
        outlined copy of DOCSidebarItem?(v68, v69, v70, v71, v72, v73);
        v36 = v113;
        if ((specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v92 - 4), v113) & 1) == 0)
        {
          v74 = v105;
          v75 = swift_isUniquelyReferenced_nonNull_native();
          v76 = v74;
          v123 = v74;
          if ((v75 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 16) + 1, 1);
            v36 = v113;
            v76 = v123;
          }

          isUniquelyReferenced_nonNull_native = v108;
          v77 = v109;
          v79 = *(v76 + 16);
          v78 = *(v76 + 24);
          v80 = (v79 + 1);
          if (v79 >= v78 >> 1)
          {
            v111 = (v79 + 1);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
            v80 = v111;
            v77 = v109;
            isUniquelyReferenced_nonNull_native = v108;
            v36 = v113;
            v76 = v123;
          }

          *(v76 + 16) = v80;
          v105 = v76;
          v81 = v76 + (v79 << 6);
          *(v81 + 32) = v67;
          *(v81 + 40) = v77;
          *(v81 + 48) = v68;
          *(v81 + 56) = v69;
          *(v81 + 64) = v70;
          *(v81 + 72) = v71;
          *(v81 + 80) = v72;
          *(v81 + 88) = v73;
          v39 = v107;
          v64 = v103;
          v63 = v112;
          if (v94 != v107)
          {
            goto LABEL_48;
          }

          goto LABEL_67;
        }

        swift_unknownObjectRelease();
        outlined consume of DOCSidebarItem?(v68, v69, v70, v71, v72, v73);
        v65 += 64;
        v39 = v112;
        v63 = v112;
        isUniquelyReferenced_nonNull_native = v108;
        if (v106 == v112)
        {
          goto LABEL_67;
        }
      }

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
      specialized _copyCollectionToContiguousArray<A>(_:)(isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native + 32, v38, (2 * v39) | 1);
      v83 = v82;

      v39 = *(v83 + 16);
    }

    v105 = MEMORY[0x277D84F90];
LABEL_67:

    v114 = v104;
    specialized Array.append<A>(contentsOf:)(v36);
    specialized Array.append<A>(contentsOf:)(v105);
    v84 = v95;
    v85 = (*(v110 + 32))(v97);
    v86 = v96;
    specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(headerItem:expanded:childItems:)(v124, v85 & 1);

    v87 = swift_unknownObjectRelease();
    v99(&v115, v87);
    if (v118)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
      v88 = swift_dynamicCast();
      v89 = v101;
      v90 = v100;
      if (v88)
      {
        v91 = v123;
LABEL_74:
        v115 = v84;
        v116 = v110;
        UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

        outlined destroy of CharacterSet?(v124, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);
        (*(v90 + 8))(v86, v89);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&v115, &_sypSgMd);
      v89 = v101;
      v90 = v100;
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v91 = static DOCSidebarViewController.nullDDS;
    goto LABEL_74;
  }

  __break(1u);
  return result;
}

void specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
  v2 = NSDiffableDataSourceSectionSnapshot.items.getter();
  if (*(v2 + 16))
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = *(v2 + 64);
    v6 = *(v2 + 72);
    v7 = *(v2 + 80);
    v8 = *(v2 + 88);
    v11 = *(v2 + 32);
    swift_unknownObjectRetain();
    outlined copy of DOCSidebarItem?(v3, v4, v5, v6, v7, v8);

    if (v8 == 255)
    {
      v9 = -1;
      v10 = v11;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
    outlined consume of DOCSidebarItem?(v3, v4, v5, v6, v7, v8);
  }

  else
  {
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v9 = 0;
  v10 = 0uLL;
LABEL_7:
  *a1 = v10;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v9;
}

uint64_t specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter@<X0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd);
  v2 = NSDiffableDataSourceSectionSnapshot.items.getter();
  if (*(v2 + 16))
  {
    outlined init with copy of DOCSidebarViewController.XCTest.TestOutlineItem(v2 + 32, v6);

    *&v10[9] = *&v7[9];
    v8 = v6[0];
    v9 = v6[1];
    *v10 = *v7;
    if (v7[24])
    {
      v4 = v9;
      *a1 = v8;
      a1[1] = v4;
      a1[2] = *v10;
      v5 = *&v10[9];
    }

    else
    {
      result = outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(&v8);
      v5 = 0uLL;
      *a1 = 0u;
      a1[1] = 0u;
      a1[2] = 0u;
    }

    *(a1 + 41) = v5;
  }

  else
  {

    *(a1 + 41) = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t DOCSidebarViewController.commitDeletionOfSidebarItem(_:in:animatingDeletionOfItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = (*(a3 + 16))(ObjectType, a3);
  v11 = *(**(v4 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

  v12 = v11(v10);

  if (closure #1 in DOCSidebarViewController.commitDeletionOfSidebarItem(_:in:animatingDeletionOfItem:)(v12, a1, v4, a4))
  {
    v13 = (*((*MEMORY[0x277D85000] & *v4) + 0x550))();
    v14 = specialized Set.contains(_:)(v10, v13);

    if (*(v5 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) <= 0)
    {
      DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)((v14 & 1) == 0, 1);
    }

    else
    {
      DOCSidebarViewController.markModelDidUpdateDuringUIChange()();
    }
  }
}

uint64_t closure #1 in DOCSidebarViewController.commitDeletionOfSidebarItem(_:in:animatingDeletionOfItem:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v9 = *(v8 - 8);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v8, v10);
  v13 = &v34 - v12;
  v14 = MEMORY[0x277D85000];
  v15 = (*((*MEMORY[0x277D85000] & *a3) + 0x440))(v11);
  (*(*a1 + 400))(a2, v15);
  v16 = *a4;
  if (*a4)
  {
    v17 = v8;
    v36 = v9;
    v18 = a4[1];
    v19 = *((*v14 & *a3) + 0x328);
    v20 = *(a4 + 1);
    v42[0] = *a4;
    v21 = *(a4 + 2);
    v42[1] = v20;
    v43[0] = v21;
    *(v43 + 9) = *(a4 + 41);
    v22 = outlined init with copy of DOCSidebarViewController.OutlineItem(v42, &v40);
    v35 = v19;
    v19(v38, v22);
    if (v39)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
      if (swift_dynamicCast())
      {
        v23 = v40;
        goto LABEL_9;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v38, &_sypSgMd);
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v23 = static DOCSidebarViewController.nullDDS;
LABEL_9:
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_249B9A480;
    v44[0] = v16;
    v44[1] = v18;
    v26 = *(a4 + 2);
    v40 = *(a4 + 1);
    v25 = v40;
    v41[0] = v26;
    *(v41 + 9) = *(a4 + 41);
    v27 = *(v41 + 9);
    *(v24 + 32) = v16;
    *(v24 + 40) = v18;
    *(v24 + 48) = v25;
    *(v24 + 64) = v26;
    *(v24 + 73) = v27;
    outlined init with copy of DOCSidebarViewController.OutlineSection(v44, v38);
    outlined init with copy of DOCGridLayout.Spec?(&v40, v38, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    NSDiffableDataSourceSnapshot.deleteItems(_:)(v24);

    v35(v38, v28);
    if (v39)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
      v29 = swift_dynamicCast();
      v30 = v36;
      v31 = &OBJC_IVAR___DOCTagRenderingRequest__selectionOutlineColor;
      if (v29)
      {
        v32 = v37;
LABEL_16:
        dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

        outlined destroy of DOCSidebarViewController.OutlineSection(v44);
        outlined destroy of CharacterSet?(&v40, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        (*(v30 + 8))(v13, v17);
        goto LABEL_17;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v38, &_sypSgMd);
      v30 = v36;
      v31 = &OBJC_IVAR___DOCTagRenderingRequest__selectionOutlineColor;
    }

    if (*(v31 + 400) != -1)
    {
      swift_once();
    }

    v32 = static DOCSidebarViewController.nullDDS;
    goto LABEL_16;
  }

LABEL_17:
  DOCSidebarViewController.updatePreferredFocusIndexPath()();
  return 0;
}

id DOCSidebarViewController.collectionViewLayout.getter()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCSidebarViewController(0);
  result = objc_msgSendSuper2(&v4, sel_collectionView);
  if (result)
  {
    v2 = result;
    v3 = [result collectionViewLayout];

    objc_opt_self();
    return swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DOCSidebarViewController.configureLayout()()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(MEMORY[0x277D752B8]);
  aBlock[4] = partial apply for closure #1 in DOCSidebarViewController.configureLayout();
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  aBlock[3] = &block_descriptor_22_0;
  v3 = _Block_copy(aBlock);

  v4 = [v2 initWithSectionProvider_];
  _Block_release(v3);

  v7.receiver = v0;
  v7.super_class = type metadata accessor for DOCSidebarViewController(0);
  v5 = objc_msgSendSuper2(&v7, sel_collectionView);
  if (v5)
  {
    v6 = v5;
    [v5 setCollectionViewLayout_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in DOCSidebarViewController.configureLayout()(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICollectionLayoutListConfiguration();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v45 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v49 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v37 - v20;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    DOCSidebarViewController.diffableSnapshot()();
    MEMORY[0x24C1F80E0](0, a1);
    v24 = IndexPath.section.getter();
    v48 = v18;
    v25 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    if ((v24 & 0x8000000000000000) != 0 || v24 >= *(v25 + 16))
    {

      (*(v14 + 8))(v17, v13);
      (*(v49 + 8))(v21, v48);
      return 0;
    }

    v39 = *(v25 + 16 * v24 + 32);
    swift_unknownObjectRetain();

    (*(v14 + 8))(v17, v13);
    v26 = [v23 traitCollection];
    v38 = [v26 sourceOutlineStyle];

    ObjectType = swift_getObjectType();
    v28 = *(&v39 + 1);
    v29 = *(*(&v39 + 1) + 64);
    swift_unknownObjectRetain();
    v30 = v29(ObjectType, v28);
    swift_unknownObjectRelease();
    v31 = MEMORY[0x277D74D50];
    if (v38 != 1)
    {
      v31 = MEMORY[0x277D74D70];
    }

    (*(v40 + 104))(v9, *v31, v6);
    v32 = v45;
    UICollectionLayoutListConfiguration.init(appearance:)();
    v33 = MEMORY[0x277D74D98];
    if ((v30 & 1) == 0)
    {
      v33 = MEMORY[0x277D74DA0];
    }

    (*(v42 + 104))(v41, *v33, v43);
    UICollectionLayoutListConfiguration.headerMode.setter();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = v23;
    UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    UICollectionLayoutListConfiguration._willBeginSwipingHandler.setter();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    UICollectionLayoutListConfiguration._didEndSwipingHandler.setter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutSection);
    v35 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    v50 = v39;
    v36 = v48;
    if (NSDiffableDataSourceSnapshot.numberOfItems(inSection:)() <= 0)
    {
      if (one-time initialization token for disableWorkaroundFor75093950 != -1)
      {
        swift_once();
      }

      if (disableWorkaroundFor75093950)
      {
        swift_unknownObjectRelease();

        (*(v46 + 8))(v32, v47);
        (*(v49 + 8))(v21, v36);
        return 0;
      }

      [v35 contentInsets];
      [v35 setContentInsets_];
      [v35 contentInsets];
      [v35 setContentInsets_];
    }

    swift_unknownObjectRelease();

    (*(v46 + 8))(v32, v47);
    (*(v49 + 8))(v21, v36);
    return v35;
  }

  return result;
}

uint64_t NSDiffableDataSourceSnapshot<>.outlineSection(at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = IndexPath.section.getter();
  NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if (v4 < 0)
  {

    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a1 + 16);
    if (v4 < MEMORY[0x24C1FB170]())
    {
      Array.subscript.getter();

      v6 = *(*(v5 - 8) + 56);
      v7 = a2;
      v8 = 0;
      goto LABEL_7;
    }
  }

  v6 = *(*(v5 - 8) + 56);
  v7 = a2;
  v8 = 1;
LABEL_7:

  return v6(v7, v8, 1, v5);
}

id DOCSidebarViewController.outlineStyle.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 sourceOutlineStyle];

  return v2;
}

id closure #1 in closure #1 in DOCSidebarViewController.configureLayout()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v13 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D75AD8]) init];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return v5;
  }

  v7 = Strong;
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(&v15);
  if (!v15)
  {
    (*(v1 + 8))(v4, v0);
LABEL_11:

    return v5;
  }

  v17[0] = v15;
  *&v17[1] = *v16;
  *&v17[3] = *&v16[16];
  *&v17[5] = *&v16[32];
  v18 = v16[48];
  *&v20[9] = *&v16[33];
  v19 = *&v16[8];
  *v20 = *&v16[24];
  if (v16[48] == 255)
  {
    (*(v1 + 8))(v4, v0);
    v21 = *v17;
    outlined destroy of DOCSidebarViewController.OutlineSection(&v21);
    goto LABEL_11;
  }

  v14 = MEMORY[0x277D84F90];
  v8 = DOCSidebarViewController.actionForSwipeToDelete(of:)(v17);
  if (v8)
  {
    v9 = v8;
    MEMORY[0x24C1FB090]();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13[1] = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextualAction);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [objc_opt_self() configurationWithActions_];

  v21 = *v17;
  outlined destroy of DOCSidebarViewController.OutlineSection(&v21);
  outlined destroy of CharacterSet?(&v19, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  (*(v1 + 8))(v4, v0);
  return v11;
}

uint64_t NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSDiffableDataSourceSnapshot<>.outlineSection(at:)(a1, v9);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v10 + 32))(v14, v9, v4);
    v15 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    v16 = IndexPath.item.getter();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = *(a1 + 24);
      if (v16 < MEMORY[0x24C1FB170](v15, v17))
      {
        Array.subscript.getter();

        (*(v10 + 8))(v14, v4);
        return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
      }
    }

    (*(v10 + 8))(v14, v4);
  }

  return (*(*(*(a1 + 24) - 8) + 56))(a2, 1, 1, *(a1 + 24));
}

void closure #2 in closure #1 in DOCSidebarViewController.configureLayout()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for DOCSidebarViewController.SwipeToDeletePresentationContext();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x478))();
    if (!(*((*v3 & *v1) + 0x440))(v4))
    {
      DOCSidebarViewController.setEditMode(_:animated:)(DocumentManagerExecutables_DOCCollectionViewEditMode_individualRow, 1);
    }
  }
}

void closure #3 in closure #1 in DOCSidebarViewController.configureLayout()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x277D85000];
    v3 = (*((*MEMORY[0x277D85000] & *Strong) + 0x470))();
    if (v3)
    {
      (*(*v3 + 112))(v3);
    }

    v4 = (*((*v2 & *v1) + 0x478))(0);
    if ((*((*v2 & *v1) + 0x440))(v4) == 1)
    {
      DOCSidebarViewController.setEditMode(_:animated:)(DocumentManagerExecutables_DOCCollectionViewEditMode_notEditing, 1);
    }
  }
}

void DOCSidebarViewController.reloadContentsOfCell(_:)(void *a1)
{
  DOCSidebarViewController.sidebarItem(for:)(a1, v4);
  if (v6 != 255)
  {
    v7[0] = v4[0];
    v7[1] = v4[1];
    v8 = v5;
    v9 = v6;
    v2 = DOCSidebarViewController.sidebarSection(for:)(a1);
    if (v2)
    {
      DOCSidebarViewController.updateContentsOfCell(_:withSidebarItem:sidebarSection:)(a1, v7, v2, v3);
      swift_unknownObjectRelease();
    }

    outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  }
}

uint64_t DOCSidebarViewController.updateIconOfCell(_:withSidebarItem:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a2;
  v7 = *(a2 + 40);
  if (*(a2 + 40))
  {
    v8 = v7 == 3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = v6;
    v10 = [objc_msgSend(*(v3 + OBJC_IVAR___DOCSidebarViewController_configuration) sourceListUI)];

    swift_unknownObjectRelease();
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = v11;
LABEL_15:
      v18 = type metadata accessor for DOCSidebarItemCell.RawImageIconProvider();
      v15 = swift_allocObject();
      *(v15 + 16) = v11;
      *(v15 + 24) = v12 & 1;
      v26 = v18;
      v27 = &protocol witness table for DOCSidebarItemCell.RawImageIconProvider;

      goto LABEL_16;
    }

LABEL_10:
    v16 = DOCSidebarItem.sidebarStaticIcon.getter();
    if (v16)
    {
      v12 = v17;
      v11 = v16;
      v13 = v11;
    }

    else
    {
      if (one-time initialization token for blank != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = byte_27EF185B0;
      v11 = static DOCSidebarIcon.blank;
      v13 = 0;
    }

    goto LABEL_15;
  }

  if (v7 != 2)
  {
    goto LABEL_10;
  }

  v14 = type metadata accessor for DOCSidebarItemCell.TagIconProvider();
  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = [v6 labelIndex] == 0;
  v26 = v14;
  v27 = &protocol witness table for DOCSidebarItemCell.TagIconProvider;
LABEL_16:
  v25[0] = v15;
  v24[3] = &unk_285C922E8;
  v24[4] = &protocol witness table for DOCSidebarViewController.CacheableIconProvider;
  v19 = swift_allocObject();
  v24[0] = v19;
  outlined init with copy of DOCSidebarItemIconProvider(v25, v19 + 72);
  swift_unknownObjectWeakInit();
  v20 = *(a2 + 16);
  *(v19 + 24) = *a2;
  *(v19 + 40) = v20;
  *(v19 + 49) = *(a2 + 25);
  v21 = direct field offset for DOCSidebarItemCell.iconProvider;
  swift_beginAccess();
  outlined init with copy of DOCSidebarItem(a2, &v23);
  outlined assign with copy of DOCSidebarItemIconProvider?(v24, a1 + v21);
  swift_endAccess();
  DOCSidebarItemCell.updateContentViewIcons()();
  outlined destroy of CharacterSet?(v24, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd);
  return __swift_destroy_boxed_opaque_existential_0(v25);
}

void DOCSidebarViewController.updateEjectController(_:withSidebarItem:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    type metadata accessor for DOCFileProviderSource();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = type metadata accessor for DOCEjectionController();
      v8 = objc_allocWithZone(v7);
      swift_unknownObjectWeakInit();
      *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation] = 0;
      swift_unknownObjectWeakInit();
      *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button] = 0;
      *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source] = v6;
      swift_unknownObjectWeakAssign();
      outlined init with copy of DOCSidebarItem(a2, v24);
      outlined init with copy of DOCSidebarItem(a2, v24);
      outlined init with copy of DOCSidebarItem(a2, v24);
      outlined init with copy of DOCSidebarItem(a2, v24);
      v23.receiver = v8;
      v23.super_class = v7;
      v9 = v2;
      v10 = objc_msgSendSuper2(&v23, sel_init);
      v24[0] = v6;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = v10;
      v12 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      outlined destroy of DOCSidebarItem(a2);
      v13 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
      swift_beginAccess();
      v14 = *&v11[v13];
      *&v11[v13] = v12;

      v15 = direct field offset for DOCSidebarItemCell.ejectionController;
      swift_beginAccess();
      v16 = *(a1 + v15);
      *(a1 + v15) = v10;
      if (v16)
      {
        v17 = v11;
        v18 = v16;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {

LABEL_11:
          outlined destroy of DOCSidebarItem(a2);
          outlined destroy of DOCSidebarItem(a2);
          return;
        }

        if (!*(a1 + v15))
        {
LABEL_10:
          DOCSidebarItemCell.ejectionStateDidChange()();

          goto LABEL_11;
        }
      }

      else
      {
        v22 = v11;
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      goto LABEL_10;
    }
  }

  v20 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v21 = *(a1 + v20);
  *(a1 + v20) = 0;
  if (v21)
  {
    DOCSidebarItemCell.ejectionStateDidChange()();
  }
}

uint64_t DOCSidebarViewController.unseenIndicatorState(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  ObjectType = swift_getObjectType();
  if ((*(a3 + 16))(ObjectType, a3) == 3)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  result = (*((*MEMORY[0x277D85000] & *v3) + 0x428))(v9);
  if (result)
  {
    if ((*(result + 16) & 1) == 0)
    {

      return 0;
    }

    if (*(a1 + 40) == 1)
    {
      v11 = *a1;
      v12 = v6;
      DOCSourceVisibilityController.visitedSourceIdentifiers.getter();
      v14 = v13;
      v15 = [v11 identifier];
      v16 = specialized Set.contains(_:)(v15, v14);

      if ((v16 & 1) == 0 && [v11 status])
      {
        v17 = [v11 status];
        outlined destroy of DOCSidebarItem(a1);

        if (v17 != 2)
        {
          return 1;
        }

        return 2;
      }

      outlined destroy of DOCSidebarItem(a1);
    }

    return 2;
  }

  return result;
}

uint64_t DOCSidebarViewController.isCellEnabledForSelection(item:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    v11 = (*((*MEMORY[0x277D85000] & *v1) + 0x200))();
    v12 = DOCConfiguration.allowsSelecting(_:pickerContext:)(v2, v11);

    return v12 & 1;
  }

  if (v3 == 5)
  {
    v10 = 0;
    return v10 & 1;
  }

  if (v3 != 1)
  {
LABEL_10:
    v10 = 1;
    return v10 & 1;
  }

  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x200))();
  type metadata accessor for DOCFileProviderSource();
  v6 = swift_dynamicCastClass();
  if (!v6 || (v7 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) == 0)
  {

    goto LABEL_10;
  }

  v8 = a1;
  outlined init with copy of DOCSidebarItem(a1, &v14);
  v9 = v7;
  v10 = DOCConfiguration.allowsSelecting(_:pickerContext:)(v9, v5);

  outlined destroy of DOCSidebarItem(v8);
  return v10 & 1;
}

id DOCSidebarViewController.CacheableIconProvider.icon(with:cell:variant:)(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (one-time initialization token for blank != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    return static DOCSidebarIcon.blank;
  }

  v15 = Strong;
  v16 = *(v6 + 24);
  v45 = *(v6 + 8);
  v46[0] = v16;
  *(v46 + 9) = *(v6 + 33);
  v17 = DOCSidebarViewController.cachedIcon(requestedSize:variant:item:)(a3, &v45, a4, a5);
  if (v17)
  {
    v18 = v17;
LABEL_15:

    return v18;
  }

  v19 = *(v6 + 80);
  v20 = *(v6 + 88);
  __swift_project_boxed_opaque_existential_1((v6 + 56), v19);
  v21 = (*(v20 + 8))(a1, a2, a3, v19, v20, a4, a5, a6);
  v23 = v22;
  v24 = *((*MEMORY[0x277D85000] & *v15) + 0x3B0);
  v18 = v21;
  v25 = v24(v44);
  v27 = v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v27;
  v29 = v43;
  *v27 = 0x8000000000000000;
  v31 = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
  v32 = v29[2];
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v30;
  if (v29[3] >= v34)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

LABEL_18:
    specialized _NativeDictionary.copy()();
    goto LABEL_12;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
  v35 = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
  if ((v7 & 1) == (v36 & 1))
  {
    v31 = v35;
LABEL_12:
    *v27 = v43;

    v37 = *v27;
    if ((v7 & 1) == 0)
    {
      v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo7UIColorC_So6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      specialized _NativeDictionary._insert(at:key:value:)(v31, &v45, v38, v37);
      outlined init with copy of DOCSidebarItem(&v45, &v43);
    }

    v39 = v37[7];
    v40 = a3;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v39 + 8 * v31);
    *(v39 + 8 * v31) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v23 & 1, v40, v41, a4, a5);

    *(v39 + 8 * v31) = v43;
    v25(v44, 0);
    goto LABEL_15;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id DOCSidebarViewController.cachedIcon(requestedSize:variant:item:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = (*((*MEMORY[0x277D85000] & *v4) + 0x3A0))();
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo7UIColorC_So6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v14 & 1) != 0))
  {
    v15 = *(v12 + 56) + 32 * v13;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);

    if (v17 == a3 && v16 == a4)
    {
      return v18;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t NSDiffableDataSourceSnapshot<>.indexPath(forItem:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v35 - v8;
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = *(v13 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(v42, v5, a2, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables19DOCUIOutlineSection_pMd);
  swift_dynamicCast();
  v20 = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v21)
  {
    goto LABEL_7;
  }

  v22 = v20;
  v23 = NSDiffableDataSourceSnapshot.indexOfItem(_:)();
  if (v24)
  {
    goto LABEL_7;
  }

  v35 = v22;
  v36 = v23;
  v42[0] = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
  v25 = v40;
  if ((*(v40 + 48))(v9, 1, v5) == 1)
  {
    (*(v37 + 8))(v9, v38);

LABEL_7:
    v30 = 1;
    v31 = v41;
LABEL_8:
    v32 = type metadata accessor for IndexPath();
    (*(*(v32 - 8) + 56))(v31, v30, 1, v32);
    return (*(v14 + 8))(v19, v13);
  }

  v26 = v39;
  (*(v25 + 32))(v39, v9, v5);
  v27 = v26;

  v28 = NSDiffableDataSourceSnapshot.indexOfItem(_:)();
  if (v29)
  {
    (*(v25 + 8))(v26, v5);
    goto LABEL_7;
  }

  v34 = __OFSUB__(v36, v28);
  result = v36 - v28;
  v31 = v41;
  if (!v34)
  {
    if (result < 0)
    {
      (*(v25 + 8))(v27, v5);
      v30 = 1;
    }

    else
    {
      MEMORY[0x24C1F80E0]();
      (*(v25 + 8))(v27, v5);
      v30 = 0;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t specialized NSDiffableDataSourceSnapshot<>.outlineSection(aboveSection:visibleOnly:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  v26 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC18TestOutlineSectionVAH0mN4ItemVGMd);
  result = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v14)
  {
    return 0;
  }

  if (__OFSUB__(result, 1))
  {
    __break(1u);
    return result;
  }

  MEMORY[0x24C1F80E0](0, result - 1);
  if (IndexPath.section.getter() < 0)
  {
LABEL_10:
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  v15 = IndexPath.section.getter();
  v16 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((v15 & 0x8000000000000000) != 0 || v15 >= *(v16 + 16))
  {

    goto LABEL_10;
  }

  v17 = v16 + 24 * v15;
  v18 = *(v17 + 32);
  v19 = *(v17 + 48);
  v20 = *(v17 + 40);

  if ((a4 & 1) != 0 && (v22[0] = v18, v22[1] = v20, v23 = v19, NSDiffableDataSourceSnapshot.numberOfItems(inSection:)() <= 0))
  {
    v21 = specialized NSDiffableDataSourceSnapshot<>.outlineSection(aboveSection:visibleOnly:)(v18, v20, v19, 1);

    (*(v9 + 8))(v12, v8);
    return v21;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    return v18;
  }
}

uint64_t specialized NSDiffableDataSourceSnapshot<>.outlineSection(aboveSection:visibleOnly:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v11 = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  result = 0;
  if (v13)
  {
    return result;
  }

  if (__OFSUB__(v11, 1))
  {
    __break(1u);
    return result;
  }

  MEMORY[0x24C1F80E0](0, v11 - 1);
  if (IndexPath.section.getter() < 0)
  {
LABEL_10:
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  v14 = IndexPath.section.getter();
  v15 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((v14 & 0x8000000000000000) != 0 || v14 >= *(v15 + 16))
  {

    goto LABEL_10;
  }

  v18[0] = *(v15 + 16 * v14 + 32);
  v16 = *&v18[0];
  swift_unknownObjectRetain();

  if ((a3 & 1) != 0 && (v18[1] = v18[0], NSDiffableDataSourceSnapshot.numberOfItems(inSection:)() <= 0))
  {
    v17 = specialized NSDiffableDataSourceSnapshot<>.outlineSection(aboveSection:visibleOnly:)(v16, *(&v18[0] + 1), 1);
    swift_unknownObjectRelease();
    (*(v7 + 8))(v10, v6);
    return v17;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return v16;
  }
}

uint64_t NSDiffableDataSourceSnapshot<>.outlineSection(aboveSection:visibleOnly:)@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v32 = a1;
  v7 = *(a2 + 16);
  v8 = type metadata accessor for Optional();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v26 - v10;
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v22)
  {
    v23 = *(v33 + 56);

    return v23(a5, 1, 1, v7);
  }

  v27 = a5;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    return result;
  }

  MEMORY[0x24C1F80E0](0, result - 1);
  if (IndexPath.section.getter() < 0)
  {
    (*(v17 + 8))(v20, v16);
    return (*(v33 + 56))(v27, 1, 1, v7);
  }

  NSDiffableDataSourceSnapshot<>.outlineSection(at:)(a2, v11);
  if ((*(v33 + 48))(v11, 1, v7) == 1)
  {
    (*(v17 + 8))(v20, v16);
    (*(v30 + 8))(v11, v31);
    return (*(v33 + 56))(v27, 1, 1, v7);
  }

  v24 = *(v33 + 32);
  v24(v15, v11, v7);
  if ((v32 & 1) != 0 && NSDiffableDataSourceSnapshot.numberOfItems(inSection:)() < 1)
  {
    NSDiffableDataSourceSnapshot<>.outlineSection(aboveSection:visibleOnly:)(v15, 1, a2, v28, v29);
    (*(v33 + 8))(v15, v7);
    return (*(v17 + 8))(v20, v16);
  }

  else
  {
    (*(v17 + 8))(v20, v16);
    v25 = v27;
    v24(v27, v15, v7);
    return (*(v33 + 56))(v25, 0, 1, v7);
  }
}

uint64_t NSDiffableDataSourceSnapshot<>.numberOfChildItems(inSection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v5)
  {
    return 0;
  }

  v7 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
  return v7 - ((*(a3 + 8))(*(a2 + 16), a3) & (v7 > 0));
}

uint64_t NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)()
{
  NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.first(where:)();
}

uint64_t closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 24);
  v43 = *(a3 + 16);
  v30 = *(a3 + 32);
  v32 = v14;
  v29 = *(a3 + 40);
  v34[3] = a5;
  v34[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  outlined init with copy of DOCSidebarItemIconProvider(v34, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16DOCUIOutlineItem_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v34);
    v20 = 0;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
LABEL_8:
    outlined init with copy of DOCSidebarItem(a3, v35);
    outlined consume of DOCSidebarItem?(v17, v16, v19, v18, v20, 0xFFu);
    outlined consume of DOCSidebarItem?(v12, v13, v43, v32, v30, v29);
    v26 = 0;
    return v26 & 1;
  }

  v28 = v13;
  v17 = v36;
  v16 = v37;
  v19 = v38;
  v18 = v39;
  v20 = v40;
  v21 = v41;
  __swift_destroy_boxed_opaque_existential_0(v34);
  swift_unknownObjectRelease();
  if (v21 == 255)
  {
    v13 = v28;
    goto LABEL_8;
  }

  v43 = v8;
  v35[0] = v17;
  v35[1] = v16;
  v36 = v19;
  v37 = v18;
  v33 = v20;
  v38 = v20;
  v31 = v21;
  LOBYTE(v39) = v21;
  outlined init with copy of DOCSidebarItem(a3, v34);
  v22 = DOCSidebarItem.hashComparableValue.getter();
  v24 = v23;
  if (v22 == DOCSidebarItem.hashComparableValue.getter() && v24 == v25)
  {
    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined destroy of DOCSidebarItem(a3);
  outlined consume of DOCSidebarItem?(v17, v16, v19, v18, v33, v31);
  return v26 & 1;
}

uint64_t NSDiffableDataSourceSnapshot<>.indexPathForAppendingItem(toSection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = v8;
    v12 = (*(a3 + 8))(*(a2 + 16), a3) & 1;
    v13 = NSDiffableDataSourceSnapshot<>.numberOfChildItems(inSection:)(a1, a2, a3);
    v14 = __OFADD__(v13, v12);
    result = v13 + v12;
    if (v14)
    {
      __break(1u);
      return result;
    }

    MEMORY[0x24C1F80E0](result, v11);
    v10 = 0;
  }

  v16 = type metadata accessor for IndexPath();
  v17 = *(*(v16 - 8) + 56);

  return v17(a4, v10, 1, v16);
}

void specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(expanded:)(int a1)
{
  specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(v12);
  v2 = v12[0];
  if (v12[0])
  {
    v4 = v12[1];
    v3 = v12[2];
    v5 = v12[3];
    v6 = v12[4];
    v7 = v12[5];
    v8 = v12[6];
    v9 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
    if ((NSDiffableDataSourceSectionSnapshot.isExpanded(_:)() ^ a1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd);
      v11 = a1;
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_249B9A480;
      *(v10 + 32) = v2;
      *(v10 + 40) = v4;
      *(v10 + 48) = v3;
      *(v10 + 56) = v5;
      *(v10 + 64) = v6;
      *(v10 + 72) = v7;
      *(v10 + 80) = v8;
      *(v10 + 88) = v9;
      swift_unknownObjectRetain();
      outlined copy of DOCSidebarItem?(v3, v5, v6, v7, v8, v9);
      if (v11)
      {
        NSDiffableDataSourceSectionSnapshot.expand(_:)(v10);
      }

      else
      {
        NSDiffableDataSourceSectionSnapshot.collapse(_:)(v10);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    outlined consume of DOCSidebarItem?(v3, v5, v6, v7, v8, v9);
  }
}

uint64_t specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(expanded:)(int a1)
{
  specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(v4);
  if (!*(&v4[0] + 1))
  {
    return outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
  }

  v6[0] = v4[0];
  v6[1] = v4[1];
  v7[0] = v5[0];
  *(v7 + 9) = *(v5 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd);
  if ((NSDiffableDataSourceSectionSnapshot.isExpanded(_:)() ^ a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_249B9A480;
    outlined init with copy of DOCSidebarViewController.XCTest.TestOutlineItem(v6, v2 + 32);
    if (a1)
    {
      NSDiffableDataSourceSectionSnapshot.expand(_:)(v2);
    }

    else
    {
      NSDiffableDataSourceSectionSnapshot.collapse(_:)(v2);
    }
  }

  return outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(v6);
}

uint64_t static DOCSidebarViewController.XCTest.TestOutlineSection.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int DOCSidebarViewController.XCTest.TestOutlineSection.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCSidebarViewController.XCTest.TestOutlineSection()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCSidebarViewController.XCTest.TestOutlineSection()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCSidebarViewController.XCTest.TestOutlineSection(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t DOCSidebarViewController.XCTest.TestOutlineItem.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DOCSidebarViewController.XCTest.TestOutlineItem.outlineSection.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 16);

  return outlined init with take of DOCGoToFolderCandidate(a1, v1 + 16);
}

uint64_t static DOCSidebarViewController.XCTest.TestOutlineItem.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int DOCSidebarViewController.XCTest.TestOutlineItem.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t DOCSidebarViewController.XCTest.TestOutlineItem.init(identifier:outlineSection:isHeader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  result = outlined init with take of DOCGoToFolderCandidate(a3, a5 + 16);
  *(a5 + 56) = a4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCSidebarViewController.XCTest.TestOutlineItem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCSidebarViewController.XCTest.TestOutlineItem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static DOCSidebarViewController.XCTest.state(for:)(_OWORD *a1)
{
  specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(v5);
  if (!*(&v5[0] + 1))
  {
    v3 = 1;
    goto LABEL_5;
  }

  result = outlined init with copy of DOCGridLayout.Spec?(v5, v4, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
  if (v4[1])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd);
    v3 = NSDiffableDataSourceSectionSnapshot.isExpanded(_:)();
    outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(v4);
LABEL_5:
    specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter();
    specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(a1);
    outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
    return v3 & 1;
  }

  __break(1u);
  return result;
}

uint64_t DOCSidebarViewController.XCTest.SectionSpec.section.getter()
{
  v1 = *v0;

  return v1;
}

__n128 DOCSidebarViewController.XCTest.SectionSpec.init(section:headerItem:childItems:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a4 + 16);
  *(a6 + 24) = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = v6;
  *(a6 + 56) = *(a4 + 32);
  result = *(a4 + 41);
  *(a6 + 65) = result;
  *(a6 + 88) = a5;
  return result;
}

void static DOCSidebarViewController.XCTest.update(_:sectionSpecs:insertEmptySections:)(uint64_t a1, uint64_t a2, int a3)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v42 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC18TestOutlineSectionVAH0mN4ItemVGMd);
  v14 = *(*(v13 - 8) + 8);
  v34 = a1;
  v14(a1, v13);
  v15 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v16 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v15 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC6XCTestC18TestOutlineSectionVAH0mN4ItemVGMd));
  v33 = v16;
  v41 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v18 = *(a2 + 16);
  if (v18)
  {
    v19 = a2 + 32;
    v39 = v6;
    v20 = (v6 + 8);
    v21 = a2 + 32;
    v22 = v18;
    v40 = v20;
    do
    {
      outlined init with copy of DOCSidebarViewController.XCTest.SectionSpec(v21, &v48);
      v23 = lazy protocol witness table accessor for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem();
      NSDiffableDataSourceSectionSnapshot.init()();
      v45 = v48;
      LOBYTE(v46) = v49;

      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();
      v24 = v40;

      v25 = *v24;
      (*v24)(v12, v5);
      outlined destroy of DOCSidebarViewController.XCTest.SectionSpec(&v48);
      v21 += 96;
      --v22;
    }

    while (v22);
    v38 = v23;
    v36 = v12;
    v35 = (v39 + 32);
    v26 = v41;
    do
    {
      outlined init with copy of DOCSidebarViewController.XCTest.SectionSpec(v19, &v48);
      v29 = v48;
      v30 = v49;
      v31 = v50[8];
      if (v49 == 1)
      {
        outlined init with copy of DOCSidebarViewController.XCTest.TestOutlineItem(v50, &v45);
      }

      else
      {
        v46 = 0u;
        memset(v47, 0, sizeof(v47));
        v45 = 0u;
      }

      v39 = v18;
      NSDiffableDataSourceSectionSnapshot.init()();
      if (*(v31 + 16) || (v37 & 1) != 0)
      {
        v43 = v29;
        v44 = v30;
        v27 = v36;
        UICollectionViewDiffableDataSource.snapshot(for:)();
        v25(v42, v5);
        v28 = v27;
        v26 = v41;
        (*v35)(v42, v28, v5);
        specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(headerItem:expanded:childItems:)(&v45, 1);
      }

      v43 = v29;
      v44 = v30;
      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();
      v25(v42, v5);
      outlined destroy of CharacterSet?(&v45, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd);
      outlined destroy of DOCSidebarViewController.XCTest.SectionSpec(&v48);
      v19 += 96;
      v18 = v39 - 1;
    }

    while (v39 != 1);
  }

  else
  {
    v26 = v41;
  }

  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
}

void one-time initialization function for disableWorkaroundFor75093950()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001CLL, 0x8000000249BD9AF0);
  v2 = [v0 BOOLForKey_];

  disableWorkaroundFor75093950 = v2;
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t specialized static DOCSidebarViewController.OutlineItem.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  ObjectType = swift_getObjectType();
  if (((*(v4 + 104))(v5, v6, ObjectType, v4) & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = a2[2];
  v15 = a2[3];
  v17 = a2[4];
  v16 = a2[5];
  v18 = a2[6];
  v19 = *(a2 + 56);
  if (v13 == 255)
  {
    if (v19 == 255)
    {
      v27 = 1;
      return v27 & 1;
    }

    goto LABEL_8;
  }

  if (v19 == 255)
  {
LABEL_8:
    v37 = a2[2];
    v38 = a2[6];
    v28 = v8;
    v29 = v18;
    v30 = v19;
    outlined copy of DOCSidebarItem?(v14, v15, v17, v16, v29, v19);
    outlined copy of DOCSidebarItem?(v9, v28, v11, v10, v12, v13);
    outlined consume of DOCSidebarItem?(v9, v28, v11, v10, v12, v13);
    outlined consume of DOCSidebarItem?(v37, v15, v17, v16, v38, v30);
LABEL_9:
    v27 = 0;
    return v27 & 1;
  }

  v36 = a2[2];
  v20 = v8;
  v32 = v16;
  v21 = v16;
  v22 = v19;
  outlined copy of DOCSidebarItem?(v14, v15, v17, v21, v18, v19);
  v33 = v20;
  v34 = v11;
  v35 = v12;
  outlined copy of DOCSidebarItem?(v9, v20, v11, v10, v12, v13);
  v23 = DOCSidebarItem.hashComparableValue.getter();
  v25 = v24;
  if (v23 == DOCSidebarItem.hashComparableValue.getter() && v25 == v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined consume of DOCSidebarItem?(v36, v15, v17, v32, v18, v22);
  outlined consume of DOCSidebarItem?(v9, v33, v34, v10, v35, v13);
  return v27 & 1;
}

uint64_t partial apply for closure #3 in DOCSidebarViewController.configureDataSource()(uint64_t a1, uint64_t a2, __int128 *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables016DOCSidebarHeaderD0CAF0iB10ControllerC11OutlineItemVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables014DOCSidebarItemD0CAF0iB10ControllerC07OutlineJ0VGMd);

  return closure #3 in DOCSidebarViewController.configureDataSource()(a1, a2, a3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UICollectionView, @in_guaranteed IndexPath, @guaranteed DOCSidebarViewController.OutlineItem) -> (@owned UICollectionViewCell)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = *(v3 + 16);
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  v8[0] = a3[2];
  *(v8 + 9) = *(a3 + 41);
  return v4(a1, a2, v7);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(_OWORD *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v9[0] = v2[2];
  *(v9 + 9) = *(v2 + 41);
  return specialized closure #1 in Sequence<>.contains(_:)(v6, v8) & 1;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem()
{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarViewController.OutlineCellType and conformance DOCSidebarViewController.OutlineCellType()
{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineCellType and conformance DOCSidebarViewController.OutlineCellType;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineCellType and conformance DOCSidebarViewController.OutlineCellType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineCellType and conformance DOCSidebarViewController.OutlineCellType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarViewController.OutlineSection and conformance DOCSidebarViewController.OutlineSection()
{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineSection and conformance DOCSidebarViewController.OutlineSection;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineSection and conformance DOCSidebarViewController.OutlineSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineSection and conformance DOCSidebarViewController.OutlineSection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem()
{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarViewController.XCTest.TestOutlineSection and conformance DOCSidebarViewController.XCTest.TestOutlineSection()
{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineSection and conformance DOCSidebarViewController.XCTest.TestOutlineSection;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineSection and conformance DOCSidebarViewController.XCTest.TestOutlineSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineSection and conformance DOCSidebarViewController.XCTest.TestOutlineSection);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26DocumentManagerExecutables14DOCSidebarItemO(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 5)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t get_enum_tag_for_layout_string_26DocumentManagerExecutables14DOCSidebarItemOSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarViewController.OutlineItem(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for DOCSidebarViewController.OutlineItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarViewController.XCTest.TestOutlineSection(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for DOCSidebarViewController.XCTest.TestOutlineSection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarViewController.XCTest.TestOutlineItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for DOCSidebarViewController.XCTest.TestOutlineItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarViewController.XCTest.SectionSpec(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for DOCSidebarViewController.XCTest.SectionSpec(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_60Tm()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    outlined consume of DOCSidebarItem(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t getEnumTagSinglePayload for DOCSidebarViewController.CacheableIconProvider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCSidebarViewController.CacheableIconProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*DOCItemCollectionView.displayDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_displayDelegate;
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

uint64_t DOCItemCollectionView.displayMode.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xA0))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

uint64_t (*DOCItemCollectionView.focusableCollectionViewDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_focusableCollectionViewDelegate;
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

uint64_t DOCItemCollectionView.focusableCollectionViewState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_focusableCollectionViewState;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t (*DOCItemCollectionView.gestureDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_gestureDelegate;
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

id DOCItemCollectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCItemCollectionView.init(configuration:collectionViewLayout:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_displayDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView__dragInteraction] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_focusableCollectionViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_focusableCollectionViewState;
  type metadata accessor for DOCFocusableCollectionViewState();
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForMostRecentlySelectedItem;
  v8 = type metadata accessor for IndexPath();
  v9 = *(*(v8 - 8) + 56);
  v9(v6 + v7, 1, 1, v8);
  v9(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForSelectionExtensionStart, 1, 1, v8);
  *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_hasFocus) = 0;
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_gestureDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_backgroundTapGestureRecognizer;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_containerIsShowingNoContentUI] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_currentEventIsTrackpad] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_configuration] = a1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for DOCItemCollectionView();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_collectionViewLayout_, a2, 0.0, 0.0, 0.0, 0.0);
  DOCItemCollectionView.setup()();

  return v12;
}

id DOCItemCollectionView.setup()()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_backgroundTapGestureRecognizer];
  [v1 addTarget:v0 action:sel__backgroundTapGestureRecognized_];
  [v1 setDelegate_];
  [v1 setCancelsTouchesInView_];
  [v0 addGestureRecognizer_];
  v2 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  return [v0 setClipsToBounds_];
}

Swift::Void __swiftcall DOCItemCollectionView.layoutSubviews()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x148))();
  if (v1)
  {
    isEscapingClosureAtFileLocation = v1;
    if ([v1 doc_isAppearing])
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      v5 = swift_allocObject();
      v6 = partial apply for closure #1 in DOCItemCollectionView.layoutSubviews();
      *(v5 + 16) = partial apply for closure #1 in DOCItemCollectionView.layoutSubviews();
      *(v5 + 24) = v4;
      v13[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      v13[5] = v5;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 1107296256;
      v13[2] = thunk for @escaping @callee_guaranteed () -> ();
      v13[3] = &block_descriptor_48;
      v7 = _Block_copy(v13);
      v8 = v0;

      [v3 performWithoutAnimation_];

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_7;
      }

      __break(1u);
    }
  }

  v9 = type metadata accessor for DOCItemCollectionView();
  v14.receiver = v0;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v6 = 0;
LABEL_7:
  if ([v0 delegate])
  {
    type metadata accessor for DOCItemCollectionViewController(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = [objc_opt_self() defaultCenter];
      if (one-time initialization token for DOCItemCollectionViewDidLayoutSubviews != -1)
      {
        swift_once();
      }

      [v12 postNotificationName:static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews object:v11];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

CGPoint __swiftcall DOCItemCollectionView.topContentOffset()()
{
  [v0 _effectiveContentInset];
  v2 = -v1;
  v3 = 0.0;
  result.y = v2;
  result.x = v3;
  return result;
}

CGPoint __swiftcall DOCItemCollectionView.bottomContentOffset()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x138))();
  v2 = v1;
  v3 = [v0 collectionViewLayout];
  [v3 collectionViewContentSize];
  v5 = v4;

  [v0 bounds];
  v6 = v5 - CGRectGetHeight(v11);
  [v0 _effectiveContentInset];
  if (v2 > v6 + v7)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6 + v7;
  }

  v9 = 0.0;
  result.y = v8;
  result.x = v9;
  return result;
}

void DOCItemCollectionView.itemCollectionViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DOCItemCollectionView.itemCollectionViewController.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_itemCollectionViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameOverlayView.itemCell.modify;
}

Swift::Void __swiftcall DOCItemCollectionView.scrollToTop()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x138))();
  v3 = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCItemCollectionView();
  objc_msgSendSuper2(&v4, sel_setContentOffset_, v1, v3);
}

uint64_t DOCItemCollectionView.containerIsShowingNoContentUI.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_containerIsShowingNoContentUI;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionView.containerIsShowingNoContentUI.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_containerIsShowingNoContentUI;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionView.currentEventIsTrackpad.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_currentEventIsTrackpad;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionView.currentEventIsTrackpad.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_currentEventIsTrackpad;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void @objc DOCItemCollectionView.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *((*MEMORY[0x277D85000] & *a1) + 0x190);
  v9 = a4;
  v10 = a1;
  v8(0);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v12.receiver = v10;
  v12.super_class = type metadata accessor for DOCItemCollectionView();
  objc_msgSendSuper2(&v12, *a5, isa, v9);
}

void DOCItemCollectionView.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = MEMORY[0x277D85000];
  if (v7 == 1)
  {
    v9 = specialized Collection.first.getter(a1);
    if (v9)
    {
      v10 = v9;
      if ([v9 type] == 3)
      {
        (*((*v8 & *v2) + 0x190))(1);
      }
    }
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for DOCItemCollectionView();
  objc_msgSendSuper2(&v19, sel_touchesEnded_withEvent_, isa, a2);

  (*((*v8 & *v3) + 0x190))(0);
  if (v6)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      return;
    }
  }

  else if (*(a1 + 16) != 1)
  {
    return;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.UI);
  v13 = v3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000249BD9BB0, &v18);
    *(v16 + 12) = 1024;
    *(v16 + 14) = (*((*v8 & *v13) + 0x188))() & 1;

    _os_log_impl(&dword_2493AC000, v14, v15, "%s currentEventIsTrackpad=%{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  else
  {
  }
}

uint64_t DOCItemCollectionView.indexPathForItem(at:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v45 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = v45 - v26;
  if (DOCDeviceIsPad())
  {
    v28 = *(v8 + 56);
    v28(v27, 1, 1, v7);
    v29 = type metadata accessor for DOCItemCollectionView();
    v48.receiver = v3;
    v48.super_class = v29;
    v30 = objc_msgSendSuper2(&v48, sel_indexPathForItemAtPoint_, a2, a3);
    if (!v30)
    {
      return outlined init with take of IndexPath?(v27, a1);
    }

    v47 = a1;
    v31 = v28;
    v32 = v30;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    outlined destroy of IndexPath?(v27);
    v45[0] = *(v8 + 32);
    v45[1] = v8 + 32;
    (v45[0])(v15, v11, v7);
    (*(v8 + 16))(v27, v15, v7);
    v46 = v31;
    v31(v27, 0, 1, v7);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v34 = [v3 cellForItemAtIndexPath_];

    if (v34)
    {
      type metadata accessor for DOCItemCollectionCell();
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        v36 = v35;
        v37 = [v3 convertPoint:v35 toCoordinateSpace:{a2, a3}];
        v38 = (*((*MEMORY[0x277D85000] & *v36) + 0x300))(v37);

        outlined destroy of IndexPath?(v27);
        if (v38)
        {
          (v45[0])(v23, v15, v7);
          v39 = 0;
        }

        else
        {
          (*(v8 + 8))(v15, v7);
          v39 = 1;
        }

        a1 = v47;
        v46(v23, v39, 1, v7);
        outlined init with take of IndexPath?(v23, v27);
        return outlined init with take of IndexPath?(v27, a1);
      }
    }

    (*(v8 + 8))(v15, v7);
    a1 = v47;
    return outlined init with take of IndexPath?(v27, a1);
  }

  v40 = type metadata accessor for DOCItemCollectionView();
  v49.receiver = v3;
  v49.super_class = v40;
  v41 = objc_msgSendSuper2(&v49, sel_indexPathForItemAtPoint_, a2, a3);
  if (v41)
  {
    v42 = v41;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  (*(v8 + 56))(v19, v43, 1, v7);
  v27 = v19;
  return outlined init with take of IndexPath?(v27, a1);
}

uint64_t DOCItemCollectionView.dragInteraction.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView__dragInteraction;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView__dragInteraction];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView__dragInteraction];
    v4 = v2;
    return v3;
  }

  v6 = [v0 interactions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIInteraction_pMd);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
LABEL_5:
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v12 = v10;

          v13 = *&v0[v1];
          *&v0[v1] = v12;
          swift_unknownObjectRetain();

          return v12;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_17:
          v8 = __CocoaSet.count.getter();
          if (!v8)
          {
            break;
          }

          goto LABEL_5;
        }

        v10 = swift_unknownObjectRetain();
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_14;
        }
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      ++v9;
    }

    while (v11 != v8);
  }

  return 0;
}

id DOCItemCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

id DOCItemCollectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCItemCollectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for DOCFocusableCollectionView.focusableCollectionViewDelegate.modify in conformance DOCItemCollectionView(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

Swift::Bool __swiftcall DOCItemCollectionView.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  if (static NSObject.== infix(_:_:)())
  {
    v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x108))();
    if (v3)
    {
      v5 = v4;
      [(UIGestureRecognizer *)a1 locationInView:v1];
      v7 = v6;
      v9 = v8;
      ObjectType = swift_getObjectType();
      if ((*(v5 + 16))(v1, ObjectType, v5, v7, v9))
      {
        v11 = (*(v5 + 24))(v1, ObjectType, v5);
        swift_unknownObjectRelease();
        LOBYTE(v3) = v11 & 1;
      }

      else
      {
        swift_unknownObjectRelease();
        LOBYTE(v3) = 0;
      }
    }
  }

  else
  {
    v13.receiver = v1;
    v13.super_class = type metadata accessor for DOCItemCollectionView();
    LOBYTE(v3) = [(UIGestureRecognizer *)&v13 gestureRecognizerShouldBegin:a1];
  }

  return v3;
}

Swift::Void __swiftcall DOCItemCollectionView._backgroundTapGestureRecognized(_:)(UITapGestureRecognizer *a1)
{
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x108))(a1))
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 32))(v1, ObjectType, v3);

    swift_unknownObjectRelease();
  }
}

void specialized DOCItemCollectionView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_displayDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView__dragInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_focusableCollectionViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_focusableCollectionViewState;
  type metadata accessor for DOCFocusableCollectionViewState();
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForMostRecentlySelectedItem;
  v4 = type metadata accessor for IndexPath();
  v5 = *(*(v4 - 8) + 56);
  v5(v2 + v3, 1, 1, v4);
  v5(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForSelectionExtensionStart, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_hasFocus) = 0;
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_gestureDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_backgroundTapGestureRecognizer;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_containerIsShowingNoContentUI) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_currentEventIsTrackpad) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id partial apply for closure #1 in DOCItemCollectionView.layoutSubviews()()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for DOCItemCollectionView();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

unint64_t lazy protocol witness table accessor for type UITouch and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UITouch and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UITouch and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for UITouch);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITouch and conformance NSObject);
  }

  return result;
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.with(priority:)(__C::UILayoutPriority priority)
{
  [v1 setPriority_];

  return v3;
}

id NSLayoutAnchor.doc_constraint(equalTo:constant:priority:)(uint64_t a1, double a2, float a3)
{
  v5 = [v3 constraintEqualToAnchor:a1 constant:?];
  *&v6 = a3;
  [v5 setPriority_];
  return v5;
}

id @objc NSLayoutAnchor.doc_constraint(equalTo:constant:priority:)(void *a1, double a2, float a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = NSLayoutAnchor.doc_constraint(equalTo:constant:priority:)(v8, a2, a3);

  return v10;
}

id NSLayoutAnchor.doc_constraint(greaterThanOrEqualTo:constant:priority:)(uint64_t a1, double a2, float a3)
{
  v5 = [v3 constraintGreaterThanOrEqualToAnchor:a1 constant:?];
  *&v6 = a3;
  [v5 setPriority_];
  return v5;
}

id @objc NSLayoutAnchor.doc_constraint(greaterThanOrEqualTo:constant:priority:)(void *a1, double a2, float a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = NSLayoutAnchor.doc_constraint(greaterThanOrEqualTo:constant:priority:)(v8, a2, a3);

  return v10;
}

id NSLayoutAnchor.doc_constraint(lessThanOrEqualTo:constant:priority:)(uint64_t a1, double a2, float a3)
{
  v5 = [v3 constraintLessThanOrEqualToAnchor:a1 constant:?];
  *&v6 = a3;
  [v5 setPriority_];
  return v5;
}

id @objc NSLayoutAnchor.doc_constraint(lessThanOrEqualTo:constant:priority:)(void *a1, double a2, float a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = NSLayoutAnchor.doc_constraint(lessThanOrEqualTo:constant:priority:)(v8, a2, a3);

  return v10;
}

id NSLayoutDimension.doc_constraint(equalToConstant:priority:)(double a1, float a2)
{
  v4 = [v2 constraintEqualToConstant_];
  *&v5 = a2;
  [v4 setPriority_];
  return v4;
}

id @objc NSLayoutDimension.doc_constraint(equalToConstant:priority:)(void *a1, double a2, float a3)
{
  v5 = a1;
  v6 = [v5 constraintEqualToConstant_];
  *&v7 = a3;
  [v6 setPriority_];

  return v6;
}

double NSDirectionalEdgeInsets.copyWith(top:leading:bottom:trailing:)(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return *&a1;
  }

  return result;
}

UIEdgeInsets __swiftcall UIEdgeInsets.by(adding:)(UIEdgeInsets adding)
{
  v5 = adding.top + v1;
  v6 = adding.left + v2;
  v7 = adding.bottom + v3;
  v8 = adding.right + v4;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

double CGRect.byPositioning(leadingRelativeToRect:offset:isRTL:)(char a1, double a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  if (a1)
  {
    v20 = CGRectGetMaxX(*&a2) + a6;
  }

  else
  {
    v21 = CGRectGetMinX(*&a2) - a6;
    v23.origin.x = a7;
    v23.origin.y = a8;
    v23.size.width = a9;
    v23.size.height = a10;
    v20 = v21 - CGRectGetWidth(v23);
  }

  v24.origin.x = a7;
  v24.origin.y = a8;
  v24.size.width = a9;
  v24.size.height = a10;
  CGRectGetMinY(v24);
  v25.origin.x = a7;
  v25.origin.y = a8;
  v25.size.width = a9;
  v25.size.height = a10;
  CGRectGetWidth(v25);
  v26.origin.x = a7;
  v26.origin.y = a8;
  v26.size.width = a9;
  v26.size.height = a10;
  CGRectGetHeight(v26);
  return v20;
}

double CGRect.byPositioning(trailingRelativeToRect:offset:isRTL:)(char a1, double a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  if (a1)
  {
    v20 = CGRectGetMinX(*&a2) - a6;
    v23.origin.x = a7;
    v23.origin.y = a8;
    v23.size.width = a9;
    v23.size.height = a10;
    v21 = v20 - CGRectGetWidth(v23);
  }

  else
  {
    v21 = CGRectGetMaxX(*&a2) + a6;
  }

  v24.origin.x = a7;
  v24.origin.y = a8;
  v24.size.width = a9;
  v24.size.height = a10;
  CGRectGetMinY(v24);
  v25.origin.x = a7;
  v25.origin.y = a8;
  v25.size.width = a9;
  v25.size.height = a10;
  CGRectGetWidth(v25);
  v26.origin.x = a7;
  v26.origin.y = a8;
  v26.size.width = a9;
  v26.size.height = a10;
  CGRectGetHeight(v26);
  return v21;
}

__C::CGRect __swiftcall CGRect.byCenteringVertically(relativeToRect:isRTL:)(__C::CGRect relativeToRect, Swift::Bool isRTL)
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  height = relativeToRect.size.height;
  width = relativeToRect.size.width;
  y = relativeToRect.origin.y;
  x = relativeToRect.origin.x;
  MinY = CGRectGetMinY(relativeToRect);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v14 = CGRectGetHeight(v23);
  v24.origin.x = v9;
  v24.origin.y = v8;
  v24.size.width = v7;
  v24.size.height = v6;
  v15 = MinY + (v14 - CGRectGetHeight(v24)) * 0.5;
  v25.origin.x = v9;
  v25.origin.y = v8;
  v25.size.width = v7;
  v25.size.height = v6;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = v9;
  v26.origin.y = v8;
  v26.size.width = v7;
  v26.size.height = v6;
  v17 = CGRectGetWidth(v26);
  v27.origin.x = v9;
  v27.origin.y = v8;
  v27.size.width = v7;
  v27.size.height = v6;
  v18 = CGRectGetHeight(v27);
  v19 = MinX;
  v20 = v15;
  v21 = v17;
  result.size.height = v18;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

void *DOCItemCollectionContainerDataSourceConfiguration.overrideAppearance.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

double DOCItemCollectionContainerDataSourceConfiguration.init(configuration:collectionViewPool:documentManager:location:source:actionManager:overrideAppearance:activateImmediately:itemHierarchyEventListener:isBrowsingTrash:shouldDisplayLoadingView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13)
{
  ObjectType = swift_getObjectType();
  specialized DOCItemCollectionContainerDataSourceConfiguration.init(configuration:collectionViewPool:documentManager:location:source:actionManager:overrideAppearance:activateImmediately:itemHierarchyEventListener:isBrowsingTrash:shouldDisplayLoadingView:)(a1, a2, a3, a4, a5, a6, a7, a8, v26, a10, a12, a13, ObjectType, a11);
  v20 = v26[3];
  *(a9 + 32) = v26[2];
  *(a9 + 48) = v20;
  *(a9 + 64) = v26[4];
  *(a9 + 80) = v27;
  result = *v26;
  v22 = v26[1];
  *a9 = v26[0];
  *(a9 + 16) = v22;
  return result;
}

uint64_t DOCItemCollectionContainerDataSource.selectedChildNode.setter(uint64_t a1)
{
  swift_beginAccess();
  v1[13] = a1;
  swift_unknownObjectRetain();
  v3 = swift_unknownObjectRelease();
  v4 = (*(*v1 + 128))(v3);
  if (v4)
  {
    v5 = *((*MEMORY[0x277D85000] & *v4) + 0x1270);
    v6 = v4;
    v7 = swift_unknownObjectRetain();
    v5(v7);
  }

  return swift_unknownObjectRelease();
}

void (*DOCItemCollectionContainerDataSource.selectedChildNode.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemCollectionContainerDataSource.selectedChildNode.modify;
}

void DOCItemCollectionContainerDataSource.selectedChildNode.modify(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*(**(a1 + 24) + 128))(v4);
    if (v5)
    {
      v6 = *((*MEMORY[0x277D85000] & *v5) + 0x1270);
      v8 = v5;
      v7 = swift_unknownObjectRetain();
      v6(v7);
    }
  }
}

void *DOCItemCollectionContainerDataSource._containedViewController.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void DOCItemCollectionContainerDataSource._containedViewController.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t DOCItemCollectionContainerDataSource.containedViewController.getter()
{
  v1 = v0;
  result = (*(*v0 + 128))();
  if (!result)
  {
    v3 = *(v0 + 40);
    v4 = [v3 sourceIdentifier];
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
        goto LABEL_10;
      }
    }

    v11 = *(v0 + 16);
    if (![v11 browserViewContext])
    {
      v119 = [v11 forPickingDocuments];
      goto LABEL_17;
    }

LABEL_10:
    v11 = *(v0 + 16);
    v12 = [v11 browserViewContext];
    if (v12 > 0)
    {
      if (v12 != 1)
      {
LABEL_81:
        if (v12 == 2 || v12 == 3)
        {
          v12 = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

LABEL_84:
        v111 = v12;
        type metadata accessor for DOCBrowserViewContext(0);
        *(&v124 + 1) = v112;
        *&v123 = v111;
        doc_fatalErrorUnrecognizedEnumValueEncountered(_:)(&v123);
      }

      v13 = 3;
    }

    else
    {
      if (v12)
      {
        goto LABEL_84;
      }

      v13 = 2;
    }

    v119 = v13;
LABEL_17:
    v14 = *(v0 + 48);
    v15 = &selRef__setLocationsInBrowseTab_;
    v16 = [v14 identifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = MEMORY[0x277D85000];
    if (v17 == v20 && v19 == v21)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        v25 = v22;
        v26 = 10;
LABEL_23:
        v118 = v26;
        v117 = *(v0 + 96);
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v115 = v28;
        v116 = v27;
        v29 = v14;
        v30 = v11;
        v31 = v29;
        v32 = v30;
        v120 = v3;
        v33 = [v3 node];
        v34 = v31;
        v35 = [v34 identifier];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
        if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
        {

LABEL_28:

          v41 = [objc_opt_self() defaultManager];
          v42 = [v41 newTrashCollection];

          v43 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
          v44 = DOCNodeCollection.init(itemCollection:observedNode:)(v42, 0);
          swift_unknownObjectRelease();
          v33 = 0;
          v45 = v25;
LABEL_29:
          *&v123 = v34;
          *(&v123 + 1) = v32;
          LOBYTE(v124) = v119;
          *(&v124 + 1) = v130[0];
          DWORD1(v124) = *(v130 + 3);
          *(&v124 + 1) = v120;
          LOBYTE(v125) = v118;
          BYTE1(v125) = v117;
          *(&v125 + 2) = v128;
          WORD3(v125) = v129;
          *(&v125 + 1) = v116;
          v126 = v115;
          *&v127 = v33;
          *(&v127 + 1) = v44;
          v47 = v1[3];
          v46 = v1[4];
          v48 = v1[7];
          v122[2] = v125;
          v122[3] = v115;
          v122[4] = v127;
          v122[0] = v123;
          v122[1] = v124;
          v49 = objc_allocWithZone(type metadata accessor for DOCItemCollectionViewController(0));
          outlined init with copy of DOCItemCollectionConfiguration(&v123, v121);
          v50 = v47;
          v51 = v46;
          v52 = v48;
          v53 = DOCItemCollectionViewController.init(configuration:collectionViewPool:documentManager:actionManager:)(v122, v50, v46, v48);
          v54 = *(*v1 + 104);
          v55 = v53;
          v56 = v54();
          (*((*v45 & *v55) + 0x1270))(v56);
          v57 = v1[11];
          v58 = *((*v45 & *v55) + 0x940);
          v59 = swift_unknownObjectRetain();
          v58(v59, v57);
          (*(*v1 + 136))(v55);
          outlined destroy of DOCItemCollectionConfiguration(&v123);
          return v55;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v40)
        {

          goto LABEL_28;
        }

        v60 = [v34 identifier];

        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v62;
        if (v61 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v45 != v63)
        {
          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v64)
          {
            __break(1u);
          }

          else
          {
            v45 = v25;
            if (*(v34 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8) == 1)
            {
              v65 = [objc_allocWithZone(MEMORY[0x277D061F8]) init];
              v66 = [v32 hostIdentifier];
              if (!v66)
              {
                v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v66 = MEMORY[0x24C1FAD20](v67);
              }

              [v65 setHostIdentifier_];

              v68 = [v32 maximumNumberOfItemsToFetch];
              v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
              v70 = v45;
              v113 = *((*v45 & *v34) + 0x278);
              v114 = v69;
              v71 = v113();
              v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v74 = v73;
              if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v74 == v75)
              {

                v45 = v70;
LABEL_52:
                v82 = v114;
                [v65 setMaximumNumberOfItems_];
                isa = [v32 recentDocumentsContentTypes];
                if (!isa)
                {
                  type metadata accessor for UTType();
                  static Array._unconditionallyBridgeFromObjectiveC(_:)();
                  isa = Array._bridgeToObjectiveC()().super.isa;
                }

                [v65 setAllowedContentTypes_];
                goto LABEL_55;
              }

              v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v76 & 1) == 0)
              {
                v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v80 = v79;
                if (v78 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v80 == v81)
                {

                  goto LABEL_51;
                }

                v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v90 & 1) == 0)
                {
                  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v93 = v92;
                  v45 = v70;
                  if (v91 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v93 == v94)
                  {

                    v82 = v114;
                  }

                  else
                  {
                    v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    v82 = v114;
                    if ((v108 & 1) == 0)
                    {
                      [v65 setMaximumNumberOfItems_];
                      v110 = [v32 documentContentTypes];
                      if (!v110)
                      {
                        type metadata accessor for UTType();
                        static Array._unconditionallyBridgeFromObjectiveC(_:)();
                        v110 = Array._bridgeToObjectiveC()().super.isa;
                      }

                      [v65 setAllowedContentTypes_];

                      goto LABEL_56;
                    }
                  }

                  v109 = [v32 recentDocumentsContentTypes];
                  if (!v109)
                  {
                    type metadata accessor for UTType();
                    static Array._unconditionallyBridgeFromObjectiveC(_:)();
                    v109 = Array._bridgeToObjectiveC()().super.isa;
                  }

                  [v65 setAllowedContentTypes_];

                  if ([v32 maximumNumberOfItemsToFetch] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    [v65 setMaximumNumberOfItems_];
                    goto LABEL_56;
                  }

                  isa = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
                  [v65 setMaximumNumberOfItems_];
LABEL_55:

LABEL_56:
                  v84 = [objc_opt_self() defaultManager];
                  v85 = v113();

                  v86 = [v32 supportsRemovableFileProviders];
                  v87 = specialized FPItemManager.queryCollection(forIdentifier:properties:supportRemovableFileProviders:)(v85, v65, v86);

                  v88 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
                  v89 = v87;
                  v44 = DOCNodeCollection.init(itemCollection:observedNode:)(v89, 0);

                  swift_unknownObjectRelease();
                  v33 = 0;
                  goto LABEL_29;
                }
              }

LABEL_51:
              v45 = v70;
              goto LABEL_52;
            }

            if (v33)
            {

              v44 = 0;
              goto LABEL_29;
            }

            v15 = *(v34 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
            if (!v15)
            {

LABEL_58:
              v44 = 0;
              v33 = 0;
              goto LABEL_29;
            }

            v33 = v15;
            if ((FPProviderDomain.shouldUseDSEnumeration.getter() & 1) == 0)
            {

              v95 = [objc_opt_self() defaultManager];
              v96 = [v95 rootCollectionForProviderDomain_];

              v97 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
              v98 = v96;
              v44 = DOCNodeCollection.init(itemCollection:observedNode:)(v98, 0);

              goto LABEL_64;
            }

            v77 = specialized static DOCRootNode.rootNode(for:)(v33);
            if (v77)
            {
              LOBYTE(v123) = 1;
              v44 = _s26DocumentManagerExecutables17DOCNodeCollectionC3for13configuration6source12extraOptionsACSo0D0_p_So16DOCConfigurationCSgAA21DOCFileProviderSourceCSgSo016NodeNotificationJ0VSgtcfCTf4ennnn_nSo6FINodeC_Tt3g5(v77, 0, v34, 0x100000000uLL);
LABEL_64:

              v33 = 0;
              goto LABEL_29;
            }

            if (one-time initialization token for UI == -1)
            {
LABEL_66:
              v99 = type metadata accessor for Logger();
              __swift_project_value_buffer(v99, static Logger.UI);
              v100 = v33;
              v101 = Logger.logObject.getter();
              v102 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v101, v102))
              {
                v103 = swift_slowAlloc();
                v104 = v45;
                v105 = swift_slowAlloc();
                *v103 = 138412290;
                *(v103 + 4) = v100;
                *v105 = v15;
                v106 = v100;
                _os_log_impl(&dword_2493AC000, v101, v102, "Getting nil rootNode for %@", v103, 0xCu);
                outlined destroy of NSObject?(v105);
                v107 = v105;
                v45 = v104;
                MEMORY[0x24C1FE850](v107, -1, -1);
                MEMORY[0x24C1FE850](v103, -1, -1);
              }

              else
              {
              }

              goto LABEL_58;
            }
          }

          swift_once();
          goto LABEL_66;
        }

        __break(1u);
        goto LABEL_81;
      }
    }

    v25 = v22;
    (*((*v22 & *v14) + 0x1B8))(&v123, v23);
    v26 = v123;
    goto LABEL_23;
  }

  return result;
}

void *DOCItemCollectionContainerDataSource.overrideAppearance.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

__n128 DOCItemCollectionContainerDataSource.__allocating_init(dataSourceConfiguration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = *(a1 + 80);
  result = *a1;
  v5 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  return result;
}

uint64_t DOCItemCollectionContainerDataSource.init(dataSourceConfiguration:)(uint64_t a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  v2 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  return v1;
}

id DOCItemCollectionContainerDataSource.containedViewController(for:)(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return (*(*v1 + 152))(a1);
      }

      goto LABEL_14;
    }

    if (*(v1 + 97) == 1)
    {
      v19 = *(v1 + 16);
      v20 = *(v1 + 32);
      v21 = *(v1 + 56);
      *(objc_allocWithZone(type metadata accessor for DOCLoadingViewController()) + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCLoadingViewController____lazy_storage___task) = 0;
      v22 = v19;
      v23 = v20;
      v24 = v21;
      return DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v22, v20, v21);
    }

    return 0;
  }

  switch(a1)
  {
    case 2:
      return 0;
    case 3:
      return (*(*v1 + 152))(a1);
    case 4:
      a1 = [*(v1 + 40) node];
      if (a1)
      {
        type metadata accessor for DOCRootNode();
        v2 = swift_dynamicCastClass();
        if (!v2 || (v3 = v2, (v4 = [v2 enumeratorError]) == 0) || (*&v29[0] = v4, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd), type metadata accessor for NSError(), (swift_dynamicCast() & 1) == 0))
        {
LABEL_23:
          a1 = swift_unknownObjectRelease();
          return (*(*v1 + 152))(a1);
        }

        v5 = [v28[0] domain];
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
        {
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v25 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        if ([v28[0] code] == -1000)
        {
          v26 = [v3 subjectNode];
          type metadata accessor for DOCEncryptedVolumeNode();
          v27 = swift_dynamicCastClass();
          if (!v27)
          {

            swift_unknownObjectRelease();
            return (*(*v1 + 152))(a1);
          }

          (*((*MEMORY[0x277D85000] & *v27) + 0x98))();

          goto LABEL_23;
        }

LABEL_26:
        swift_unknownObjectRelease();
      }

      return (*(*v1 + 152))(a1);
  }

LABEL_14:
  v10 = *((*MEMORY[0x277D85000] & **(v1 + 48)) + 0x250);
  v11 = a1;
  v12 = a1;
  result = v10(v29);
  if (*v14 == -1)
  {
    __break(1u);
  }

  else
  {
    ++*v14;
    (result)(v29, 0);
    v15 = *(v1 + 48);
    v16 = *(v1 + 80);
    v29[3] = *(v1 + 64);
    v29[4] = v16;
    v30 = *(v1 + 96);
    v17 = *(v1 + 32);
    v29[0] = *(v1 + 16);
    v29[1] = v17;
    v29[2] = v15;
    outlined init with copy of DOCItemCollectionContainerDataSourceConfiguration(v29, v28);
    v18 = specialized DOCErrorViewController.__allocating_init(dataSourceConfiguration:error:)(v29, v11);
    outlined consume of DOCBrowserContainerState(v11);
    return v18;
  }

  return result;
}

void DOCItemCollectionContainerDataSource.activateContainedViewController(for:)(uint64_t a1)
{
  if (a1 == 4)
  {
    v4 = (*(*v1 + 152))();
    v5 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
    v6 = v5;

    if (v5)
    {
      (*((*MEMORY[0x277D85000] & *v6) + 0x1D8))();
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (a1 != 1)
  {
    return;
  }

  v2 = (*(*v1 + 152))();
  v3 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
  v6 = v3;

  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  (*((*MEMORY[0x277D85000] & *v6) + 0x1D0))();
LABEL_7:
}

id DOCItemCollectionContainerDataSource.accessibilityBrowsingRootIdentifierComponents.getter()
{
  v1 = *(v0 + 40);
  v2 = [v1 sourceIdentifier];
  v3 = [v1 displayName];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v2;
}

uint64_t DOCItemCollectionContainerDataSource.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t DOCItemCollectionContainerDataSource.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t specialized DOCItemCollectionContainerDataSourceConfiguration.init(configuration:collectionViewPool:documentManager:location:source:actionManager:overrideAppearance:activateImmediately:itemHierarchyEventListener:isBrowsingTrash:shouldDisplayLoadingView:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, uint64_t a14)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a14;
  *(a9 + 80) = a11;
  *(a9 + 81) = a12;
  return result;
}

id specialized DOCErrorViewController.__allocating_init(dataSourceConfiguration:error:)(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *((*MEMORY[0x277D85000] & *v5) + 0x240);
  v29 = *a1;
  v9 = v6;
  v10 = v4;
  v11 = v5;
  v12 = v7;
  LOBYTE(v8) = v8() < 2;
  v13 = objc_allocWithZone(type metadata accessor for DOCErrorViewController());
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] = v11;
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_location] = v7;
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error] = a2;
  v13[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI] = v8;
  v14 = v11;
  v15 = v12;
  v16 = a2;
  v17 = _convertErrorToNSError(_:)();
  v18 = [v17 domain];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {

LABEL_9:
      v26 = 0;
      goto LABEL_10;
    }
  }

  v24 = [v17 code];

  if (v24 != -1000)
  {
    goto LABEL_9;
  }

  v25 = *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (!v25)
  {
    goto LABEL_9;
  }

  v26 = [objc_opt_self() authenticationActionForProviderDomain_];
LABEL_10:
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction] = v26;
  v27 = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v29, v9, v10);
  outlined destroy of DOCItemCollectionContainerDataSourceConfiguration(a1);

  return v27;
}

void outlined consume of DOCBrowserContainerState(id a1)
{
  if (a1 >= 5)
  {
  }
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionContainerDataSourceConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t storeEnumTagSinglePayload for DOCItemCollectionContainerDataSourceConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of DOCItemCollectionContainerDataSource.__allocating_init(dataSourceConfiguration:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 80);
  v5 = *(a1 + 81);
  v6 = *(v1 + 176);
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = *(a1 + 32);
  v10 = v2;
  v11 = v3;
  v12 = *(a1 + 64);
  v13 = v4;
  v14 = v5;
  return v6(v9);
}

uint64_t DOCFileOperation.init(identifier:progress:dateStarted:iconType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnyHashable(a1, a5);
  *(a5 + 40) = a2;
  outlined init with copy of Date?(a3, v13);
  v19 = *(v15 + 48);
  if (v19(v13, 1, v14) == 1)
  {
    Date.init(timeIntervalSinceNow:)();
    outlined destroy of Date?(a3);
    outlined destroy of AnyHashable(a1);
    if (v19(v13, 1, v14) != 1)
    {
      outlined destroy of Date?(v13);
    }
  }

  else
  {
    outlined destroy of Date?(a3);
    outlined destroy of AnyHashable(a1);
    (*(v15 + 32))(v18, v13, v14);
  }

  v20 = type metadata accessor for DOCFileOperation();
  (*(v15 + 32))(a5 + *(v20 + 24), v18, v14);
  return outlined init with take of DOCProgressProvidingOperationIconType(a4, a5 + *(v20 + 28));
}

uint64_t type metadata accessor for DOCFileOperation()
{
  result = type metadata singleton initialization cache for DOCFileOperation;
  if (!type metadata singleton initialization cache for DOCFileOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of DOCProgressProvidingOperationIconType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCProgressProvidingOperationIconType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DOCFileOperation.dateStarted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DOCFileOperation() + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DOCFileOperation.dateStarted.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DOCFileOperation() + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DOCFileOperation.iconType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DOCFileOperation() + 28);

  return outlined init with copy of DOCProgressProvidingOperationIconType(v3, a1);
}

uint64_t DOCFileOperation.iconType.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DOCFileOperation() + 28);

  return outlined assign with take of DOCProgressProvidingOperationIconType(a1, v3);
}

unint64_t DOCFileOperation.description.getter()
{
  _StringGuts.grow(_:)(24);

  v0 = AnyHashable.description.getter();
  MEMORY[0x24C1FAEA0](v0);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0xD000000000000015;
}

Swift::Int DOCFileOperation.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for DOCProgressProvidingOperation.dateStarted.getter in conformance DOCFileOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCFileOperation()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCFileOperation()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DOCFileOperation and conformance DOCFileOperation()
{
  result = lazy protocol witness table cache variable for type DOCFileOperation and conformance DOCFileOperation;
  if (!lazy protocol witness table cache variable for type DOCFileOperation and conformance DOCFileOperation)
  {
    type metadata accessor for DOCFileOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCFileOperation and conformance DOCFileOperation);
  }

  return result;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCFileOperation()
{
  _StringGuts.grow(_:)(24);

  v0 = AnyHashable.description.getter();
  MEMORY[0x24C1FAEA0](v0);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0xD000000000000015;
}

unint64_t type metadata completion function for DOCFileOperation()
{
  result = type metadata accessor for NSProgress();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DOCProgressProvidingOperationIconType();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  outlined init with copy of DOCGridLayout.Spec?(a3, v23 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of CharacterSet?(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of CharacterSet?(a3, &_sScPSgMd);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of CharacterSet?(a3, &_sScPSgMd);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo24_SWCollaborationMetadataCSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  outlined init with copy of DOCGridLayout.Spec?(a3, v23 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of CharacterSet?(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_SWCollaborationMetadataCSgMd);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of CharacterSet?(a3, &_sScPSgMd);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of CharacterSet?(a3, &_sScPSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_SWCollaborationMetadataCSgMd);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t FamilyFolderDetails.isCreated.setter(char a1)
{
  result = type metadata accessor for FamilyFolderDetails(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t FamilyFolderDetails.init(url:isCreated:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  outlined init with take of URL?(a1, a3);
  result = type metadata accessor for FamilyFolderDetails(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t DOCTipsManager.familyFetcher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familyFetcher;
  swift_beginAccess();
  return outlined init with copy of DOCSidebarItemIconProvider(v1 + v3, a1);
}

uint64_t DOCTipsManager.familyFetcher.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familyFetcher;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v1 + v3);
  outlined init with take of DOCGoToFolderCandidate(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for DOCTipsManager.familyFolderFilePath : DOCTipsManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v9 - v6, &_s10Foundation3URLVSgMd);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD0))(v7);
}

uint64_t DOCTipsManager.familyFolderFilePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familyFolderFilePath;
  swift_beginAccess();
  return outlined init with copy of DOCGridLayout.Spec?(v1 + v3, a1, &_s10Foundation3URLVSgMd);
}

uint64_t DOCTipsManager.familyFolderFilePath.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familyFolderFilePath;
  swift_beginAccess();
  outlined assign with take of URL?(a1, v1 + v3);
  return swift_endAccess();
}

void *DOCTipsManager.familySharedFolderTipView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familySharedFolderTipView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCTipsManager.familySharedFolderTipView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familySharedFolderTipView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *DOCTipsManager.init(_:_:_:_:)(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_fileManager;
  *&v3[v7] = [objc_opt_self() defaultManager];
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_fpItemManager;
  *&v3[v8] = [objc_opt_self() defaultManager];
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familyFolderFilePath;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familySharedFolderTipView] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sharingFlowTask] = 0;
  swift_unknownObjectWeakAssign();
  outlined init with copy of DOCSidebarItemIconProvider(a2, &v3[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familyFetcher]);
  if (a3)
  {
    v11 = objc_opt_self();
    v12 = a3;
    v13 = [v11 defaultPermission];
    v14 = [v13 userActionForConfiguration_];

    v15 = [v12 hostIdentifier];
    if (!v15)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = MEMORY[0x24C1FAD20](v16);
    }

    v17 = [objc_allocWithZone(DOCSourceObserver) initWithUserAction:v14 hostIdentifier:v15];

    *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sourceObserver] = v17;
    v18 = v17;
    [v18 startObservingSources];
  }

  else
  {
    *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sourceObserver] = 0;
  }

  v28.receiver = v3;
  v28.super_class = type metadata accessor for DOCTipsManager(0);
  v19 = objc_msgSendSuper2(&v28, sel_init);
  if (DOCIsInternalBuild())
  {
    if (one-time initialization token for docUserDefaults != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (static NSUserDefaults.docUserDefaults)
    {
      v20 = static NSUserDefaults.docUserDefaults;
      v21 = MEMORY[0x24C1FAD20](0xD000000000000015, 0x8000000249BD9EF0);
      v22 = [v20 BOOLForKey_];

      if (v22)
      {
        static Tips.showAllTipsForTesting()();
      }
    }
  }

  lazy protocol witness table accessor for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = objc_allocWithZone(type metadata accessor for TipUIView());

  v24 = TipUIView.init(_:arrowEdge:actionHandler:)();

  __swift_destroy_boxed_opaque_existential_0(a2);

  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familySharedFolderTipView;
  swift_beginAccess();
  v26 = *&v19[v25];
  *&v19[v25] = v24;

  return v19;
}

unint64_t lazy protocol witness table accessor for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip()
{
  result = lazy protocol witness table cache variable for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip;
  if (!lazy protocol witness table cache variable for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip;
  if (!lazy protocol witness table cache variable for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip);
  }

  return result;
}

void closure #1 in DOCTipsManager.init(_:_:_:_:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x190))(a1);
  }
}

id DOCTipsManager.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sourceObserver] stopObservingSources];
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sharingFlowTask];
  if (v1)
  {

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    MEMORY[0x24C1FB330](v1, MEMORY[0x277D84F78] + 8, v2, MEMORY[0x277D84950]);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCTipsManager(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall DOCTipsManager.setFamilySharedFolderTipViewEnabled(_:)(Swift::Bool a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xF8))();
  if (v3)
  {
    v4 = v3;
    [v3 setUserInteractionEnabled_];
  }
}

Swift::Void __swiftcall DOCTipsManager.messageComposeViewController(_:didFinishWith:)(MFMessageComposeViewController *_, MessageComposeResult didFinishWith)
{
  v3 = v2;
  v89[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v86 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v88 = &v86 - v17;
  v18 = type metadata accessor for Tips.InvalidationReason();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x277D85700];
  if (didFinishWith == MessageComposeResultCancelled)
  {
    v86 = _;
    v87 = v11;
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.DocumentManager);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v24;
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2493AC000, v38, v39, "Files Family Tip, user cancelled invite", v41, 2u);
      v42 = v41;
      v24 = v40;
      MEMORY[0x24C1FE850](v42, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *v3) + 0xC8))();
    v43 = v87;
    if ((*(v87 + 48))(v9, 1, v10) == 1)
    {
      outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd);
      _ = v86;
      v26 = v88;
      goto LABEL_29;
    }

    (*(v43 + 32))(v14, v9, v10);
    v44 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_fileManager);
    URL._bridgeToObjectiveC()(OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_fileManager);
    v46 = v45;
    type metadata accessor for NSURLResourceKey(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v89[0] = 0;
    v48 = [v44 contentsOfDirectoryAtURL:v46 includingPropertiesForKeys:isa options:0 error:v89];

    v49 = v89[0];
    if (!v48)
    {
      v56 = v89[0];
      v57 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v58 = v57;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      v61 = os_log_type_enabled(v59, v60);
      v26 = v88;
      if (v61)
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138412290;
        v64 = v57;
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v62 + 4) = v65;
        *v63 = v65;
        _os_log_impl(&dword_2493AC000, v59, v60, "Files Family Tip, Failed to get folder contents with error: %@", v62, 0xCu);
        outlined destroy of CharacterSet?(v63, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v63, -1, -1);
        MEMORY[0x24C1FE850](v62, -1, -1);
      }

      else
      {
      }

      (*(v87 + 8))(v14, v10);
      _ = v86;
      v24 = MEMORY[0x277D85700];
      goto LABEL_29;
    }

    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v49;

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    v54 = os_log_type_enabled(v52, v53);
    v26 = v88;
    if (v54)
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = *(v50 + 16);

      _os_log_impl(&dword_2493AC000, v52, v53, "Files Family Tip, items in Family folder  %ld", v55, 0xCu);
      MEMORY[0x24C1FE850](v55, -1, -1);
    }

    else
    {
    }

    v24 = MEMORY[0x277D85700];
    v66 = *(v50 + 16);

    if (!v66)
    {
      URL._bridgeToObjectiveC()(v67);
      v69 = v68;
      v89[0] = 0;
      v70 = [v44 removeItemAtURL:v68 error:v89];

      if (v70)
      {
        v71 = *(v87 + 8);
        v72 = v89[0];
        v71(v14, v10);
        goto LABEL_24;
      }

      v77 = v89[0];
      v78 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v79 = v78;
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = 138412290;
        v84 = v78;
        v85 = _swift_stdlib_bridgeErrorToNSError();
        *(v82 + 4) = v85;
        *v83 = v85;
        _os_log_impl(&dword_2493AC000, v80, v81, "Files Family Tip, Failed to remove family folder with error: %@", v82, 0xCu);
        outlined destroy of CharacterSet?(v83, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v83, -1, -1);
        MEMORY[0x24C1FE850](v82, -1, -1);
      }

      else
      {
      }
    }

    (*(v87 + 8))(v14, v10);
LABEL_24:
    _ = v86;
    goto LABEL_29;
  }

  v25 = v3;
  v26 = v88;
  if (didFinishWith == MessageComposeResultSent)
  {
    v27 = v21;
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.DocumentManager);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2493AC000, v29, v30, "Files Family Tip, user sent folder invite", v31, 2u);
      MEMORY[0x24C1FE850](v31, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *v25) + 0xE0))();
    (*(v19 + 104))(v23, *MEMORY[0x277CE1A08], v27);
    lazy protocol witness table accessor for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip();
    Tip.invalidate(reason:)();
    (*(v19 + 8))(v23, v27);
    v32 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
    if (v32)
    {
      v33 = v32;
      [v32 setBool:1 forKey:*MEMORY[0x277D05E40]];
    }

    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v26, 1, 1, v34);
    type metadata accessor for MainActor();
    v35 = static MainActor.shared.getter();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v24;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v26, &async function pointer to partial apply for closure #1 in DOCTipsManager.messageComposeViewController(_:didFinishWith:), v36);
  }

LABEL_29:
  v73 = type metadata accessor for TaskPriority();
  (*(*(v73 - 8) + 56))(v26, 1, 1, v73);
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v75 = static MainActor.shared.getter();
  v76 = swift_allocObject();
  v76[2] = v75;
  v76[3] = v24;
  v76[4] = v74;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v26, &async function pointer to partial apply for closure #2 in DOCTipsManager.messageComposeViewController(_:didFinishWith:), v76);

  [(MFMessageComposeViewController *)_ dismissViewControllerAnimated:1 completion:0];
}

uint64_t closure #1 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DOCTipsManager.messageComposeViewController(_:didFinishWith:), v2, v1);
}

{

  if (one-time initialization token for $hasSharedFolderWithAdultFamilyMember != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  __swift_project_value_buffer(v1, static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember);
  *(v0 + 48) = 1;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #2 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in DOCTipsManager.messageComposeViewController(_:didFinishWith:), v6, v5);
}

uint64_t closure #2 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    (*((*MEMORY[0x277D85000] & *Strong) + 0x130))(1);
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

Swift::Void __swiftcall DOCTipsManager.configureTipsCenter()()
{
  v0 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v9[0] = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Tips.ConfigurationOption.AnalyticsEngine();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO19ConfigurationOptionVGMd);
  type metadata accessor for Tips.ConfigurationOption();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static Tips.ConfigurationOption.AnalyticsEngine.coreAnalytics.getter();
  static Tips.ConfigurationOption.analyticsEngine(_:)();
  (*(v5 + 8))(v8, v4);
  static Tips.ConfigurationOption.DatastoreLocation.tipsGroupContainer.getter();
  static Tips.ConfigurationOption.datastoreLocation(_:)();
  (*(v9[0] + 8))(v3, v0);
  static Tips.configure(_:)();
}

uint64_t DOCTipsManager.getICloudDriveDomain()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](DOCTipsManager.getICloudDriveDomain(), 0, 0);
}

{
  v1 = *(v0[19] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sourceObserver);
  v0[20] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = DOCTipsManager.getICloudDriveDomain();
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo17DOCDocumentSourceCGs5Error_pGMd);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray, @unowned NSError?) -> () with result type [DOCDocumentSource];
    v0[13] = &block_descriptor_49;
    v0[14] = v2;
    [v1 retrieveAllSourcesCompletionBlock_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v3 = v0[1];

    return v3(0);
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = DOCTipsManager.getICloudDriveDomain();
  }

  else
  {
    v2 = DOCTipsManager.getICloudDriveDomain();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[18];
  if (v1 >> 62)
  {
LABEL_28:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_21:
    v5 = v0[20];

    v7 = 0;
    goto LABEL_22;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_21;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C1FC540](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v0 = (v3 + 1);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    type metadata accessor for DOCFileProviderSource();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v7)
      {
        break;
      }
    }

LABEL_5:

    ++v3;
    if (v0 == v2)
    {
      v0 = v18;
      goto LABEL_21;
    }
  }

  v8 = v6;
  v9 = v7;
  if ([v8 status] | 2) != 2 || !objc_msgSend(v9, sel_isiCloudDriveProvider) || (objc_msgSend(v9, sel_isEnterpriseDomain))
  {

    goto LABEL_5;
  }

  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.DocumentManager);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v0 = v18;
  v14 = v18[20];
  if (v13)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2493AC000, v11, v12, "Files Family Tip, found main iCloud Drive Provider", v15, 2u);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  else
  {

    v5 = v14;
  }

LABEL_22:

  v16 = v0[1];

  return v16(v7);
}

{
  v1 = v0[21];
  swift_willThrow();

  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.DocumentManager);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[20];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2493AC000, v3, v4, "Files Family Tip, failed to get sources", v7, 2u);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  else
  {

    v3 = v6;
  }

  v8 = v0[1];

  return v8(0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray, @unowned NSError?) -> () with result type [DOCDocumentSource](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t DOCTipsManager.createICloudDriveFolder(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[24] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](DOCTipsManager.createICloudDriveFolder(_:), 0, 0);
}

uint64_t DOCTipsManager.createICloudDriveFolder(_:)()
{
  v1 = v0[22];
  v0[28] = [objc_opt_self() defaultManager];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x148);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = DOCTipsManager.createICloudDriveFolder(_:);

  return v5();
}

{
  v31 = v0;
  v1 = *(v0 + 240);
  if (!v1)
  {
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.DocumentManager);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2493AC000, v19, v20, "Files Family Tip, No iCloud Drive Domain found", v21, 2u);
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    v22 = *(v0 + 200);
    v23 = *(v0 + 208);
    v24 = *(v0 + 152);

    (*(v23 + 56))(v24, 1, 1, v22);
    goto LABEL_27;
  }

  if (![*(v0 + 240) isEnabled] || (objc_msgSend(v1, sel_isHidden) & 1) != 0)
  {
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.DocumentManager);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v29 = *(v0 + 224);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v30 = v7;
      *v6 = 136315394;
      v8 = [v3 isEnabled];
      v9 = v8 == 0;
      if (v8)
      {
        v10 = 1702195828;
      }

      else
      {
        v10 = 0x65736C6166;
      }

      if (v9)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v30);

      *(v6 + 4) = v12;
      *(v6 + 12) = 2080;
      v13 = [v3 isHidden];
      v14 = v13 == 0;
      if (v13)
      {
        v15 = 1702195828;
      }

      else
      {
        v15 = 0x65736C6166;
      }

      if (v14)
      {
        v16 = 0xE500000000000000;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v30);

      *(v6 + 14) = v17;
      _os_log_impl(&dword_2493AC000, v4, v5, "Files Family Tip, Did not attempt to create folder, iCloud Domain isEnabled: %s , isHidden: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v7, -1, -1);
      MEMORY[0x24C1FE850](v6, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 208) + 56))(*(v0 + 152), 1, 1, *(v0 + 200));
LABEL_27:
    *(*(v0 + 152) + *(type metadata accessor for FamilyFolderDetails(0) + 20)) = 0;

    v25 = *(v0 + 8);

    return v25();
  }

  v27 = *(v0 + 224);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = DOCTipsManager.createICloudDriveFolder(_:);
  v28 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7DOCNode_ps5Error_pGMd);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned DOCNode?, @unowned NSError?) -> () with result type DOCNode;
  *(v0 + 104) = &block_descriptor_55_2;
  *(v0 + 112) = v28;
  [v27 doc:v1 fetchRootNodeForProviderDomain:v0 + 80 completionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = DOCTipsManager.createICloudDriveFolder(_:);
  }

  else
  {
    v2 = DOCTipsManager.createICloudDriveFolder(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(v0 + 256) = *(v0 + 144);
  swift_getObjectType();
  v1 = DOCNode.fpfs_syncFetchFPItem()();
  *(v0 + 264) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 168);
    v4 = *(v0 + 160);
    v5 = swift_allocObject();
    *(v0 + 272) = v5;
    swift_unknownObjectWeakInit();
    v6 = swift_task_alloc();
    *(v0 + 280) = v6;
    v6[2] = v5;
    v6[3] = v4;
    v6[4] = v3;
    v6[5] = v2;
    v7 = swift_task_alloc();
    *(v0 + 288) = v7;
    *v7 = v0;
    v7[1] = DOCTipsManager.createICloudDriveFolder(_:);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000021, 0x8000000249BDA080, partial apply for closure #1 in DOCTipsManager.createFamilyFolder(for:rootItem:), v6, v9);
  }

  else
  {
    v10 = *(v0 + 240);

    swift_unknownObjectRelease();
    (*(*(v0 + 208) + 56))(*(v0 + 152), 1, 1, *(v0 + 200));
    *(*(v0 + 152) + *(type metadata accessor for FamilyFolderDetails(0) + 20)) = 0;

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = DOCTipsManager.createICloudDriveFolder(_:);
  }

  else
  {

    v2 = DOCTipsManager.createICloudDriveFolder(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);

  swift_unknownObjectRelease();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    outlined destroy of CharacterSet?(*(v0 + 192), &_s10Foundation3URLVSgMd);
    (*(*(v0 + 208) + 56))(*(v0 + 152), 1, 1, *(v0 + 200));
    v6 = 0;
  }

  else
  {
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 152);
    v11 = *(v8 + 32);
    v11(v7, *(v0 + 192), v9);
    v11(v10, v7, v9);
    v6 = 1;
    (*(v8 + 56))(v10, 0, 1, v9);
  }

  *(*(v0 + 152) + *(type metadata accessor for FamilyFolderDetails(0) + 20)) = v6;

  v12 = *(v0 + 8);

  return v12();
}

{
  v21 = v0;
  v1 = v0[33];

  swift_unknownObjectRelease();
  v2 = v0[37];
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.DocumentManager);

  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30];
  v9 = v0[28];
  if (v7)
  {
    v11 = v0[20];
    v10 = v0[21];
    v19 = v0[30];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v20);
    *(v12 + 12) = 2112;
    v15 = v2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_2493AC000, v5, v6, "Files Family Tip, Failed to create folder %s with error: %@", v12, 0x16u);
    outlined destroy of CharacterSet?(v13, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[26] + 56))(v0[19], 1, 1, v0[25]);
  *(v0[19] + *(type metadata accessor for FamilyFolderDetails(0) + 20)) = 0;

  v17 = v0[1];

  return v17();
}

{
  v20 = v0;
  swift_willThrow();
  v1 = v0[31];
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.DocumentManager);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[30];
  v8 = v0[28];
  if (v6)
  {
    v10 = v0[20];
    v9 = v0[21];
    v18 = v0[30];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v19);
    *(v11 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_2493AC000, v4, v5, "Files Family Tip, Failed to create folder %s with error: %@", v11, 0x16u);
    outlined destroy of CharacterSet?(v12, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[26] + 56))(v0[19], 1, 1, v0[25]);
  *(v0[19] + *(type metadata accessor for FamilyFolderDetails(0) + 20)) = 0;

  v16 = v0[1];

  return v16();
}