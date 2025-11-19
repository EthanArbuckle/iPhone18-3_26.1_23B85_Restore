uint64_t _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = 0;
  v5 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_state];
  v20 = 0;
  v21 = 0;
  v15[16] = a1;
  v16 = a2;
  v17 = a3;
  v18 = &v22;
  v19 = &v20;
  result = (*(*v5 + 168))(closure #1 in _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)partial apply, v15, MEMORY[0x277D84F78] + 8);
  v7 = v20;
  v8 = v21;
  if (!v20)
  {
LABEL_7:
    if (v22 == 1)
    {
      *(swift_allocObject() + 16) = v4;
      v14 = v4;
      DOCRunInMainThread(_:)();
    }

    return outlined consume of _DOCBrowserHistoryDataSourceBase.RefreshContext?(v7);
  }

  v9 = *(v20 + 16);
  if (!v9)
  {
LABEL_6:
    _DOCBrowserHistoryDataSourceBase.performPendingMutations(_:)(v8);
    goto LABEL_7;
  }

  v10 = 0;
  v11 = v20 + 40;
  while (v10 < *(v7 + 16))
  {
    ++v10;
    v12 = *(v11 - 8);

    v12(v13);

    v11 += 16;
    if (v9 == v10)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, _BYTE *a5, uint64_t *a6)
{
  v12 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v30 - v18;
  if ((a2 & 1) != 0 || (v20 = (a1 + *(type metadata accessor for _DOCBrowserHistoryDataSourceBase.ThreadSafeState(0) + 20)), !*v20))
  {
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, v19, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet);
    a3(a1);
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, v15, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet);
    v27 = specialized static _DOCBrowserHistoryDataSourceBase.ItemSet.== infix(_:_:)(v15, v19);
    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v15, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet);
    result = outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v19, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet);
    if ((v27 & 1) == 0)
    {
      *a5 = 1;
    }

    if (a2)
    {
      v28 = a1 + *(type metadata accessor for _DOCBrowserHistoryDataSourceBase.ThreadSafeState(0) + 20);
      v29 = *a6;
      *a6 = *v28;
      result = outlined consume of _DOCBrowserHistoryDataSourceBase.RefreshContext?(v29);
      *v28 = 0;
      *(v28 + 8) = 0;
    }
  }

  else
  {
    v21 = v20[1];
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
    }

    v21[2] = v24 + 1;
    v25 = &v21[2 * v24];
    v25[4] = partial apply for closure #1 in closure #1 in closure #1 in _DOCBrowserHistoryDataSourceBase.performPendingMutations(_:);
    v25[5] = v22;
  }

  return result;
}

void closure #3 in _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (one-time initialization token for didChange != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:static DOCBrowserHistoryDataSource.didChange object:a1];
}

void _DOCBrowserHistoryDataSourceBase.performPendingMutations(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = v11;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);

    v18 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v1;
    aBlock[4] = partial apply for closure #1 in _DOCBrowserHistoryDataSourceBase.performPendingMutations(_:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_152_1;
    v15 = _Block_copy(aBlock);
    v16 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v18;
    MEMORY[0x24C1FB9A0](0, v13, v7, v15);
    _Block_release(v15);

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v13, v19);
  }
}

uint64_t closure #1 in _DOCBrowserHistoryDataSourceBase.performPendingMutations(_:)(uint64_t result, char *a2)
{
  v26 = *(result + 16);
  if (!v26)
  {
    return result;
  }

  v2 = a2;
  v3 = 0;
  v24 = result + 32;
  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_state;
  v23 = a2;
  while (1)
  {
    v4 = swift_allocObject();
    v27 = *(v24 + 16 * v3);
    *(v4 + 16) = v27;
    v5 = swift_allocObject();
    *(v5 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@inout _DOCBrowserHistoryDataSourceBase.ThreadSafeState) -> (@out ());
    *(v5 + 24) = v4;
    v30 = 0;
    v28 = 0;
    v29 = 0;
    v6 = *&v2[v25];
    MEMORY[0x28223BE20](v5, v7);
    v18[16] = 0;
    v19 = partial apply for closure #1 in closure #1 in closure #1 in _DOCBrowserHistoryDataSourceBase.performPendingMutations(_:);
    v20 = v8;
    v21 = &v30;
    v22 = &v28;
    v9 = *(*v6 + 168);
    swift_retain_n();
    result = v9(partial apply for closure #1 in _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:), v18, MEMORY[0x277D84F78] + 8);
    v10 = v28;
    v11 = v29;
    if (v28)
    {
      break;
    }

LABEL_10:
    if (v30 == 1)
    {
      *(swift_allocObject() + 16) = v2;
      v17 = v2;
      DOCRunInMainThread(_:)();
    }

    ++v3;

    result = outlined consume of _DOCBrowserHistoryDataSourceBase.RefreshContext?(v10);
    if (v3 == v26)
    {
      return result;
    }
  }

  v12 = *(v28 + 16);
  if (!v12)
  {
LABEL_9:
    v2 = v23;
    _DOCBrowserHistoryDataSourceBase.performPendingMutations(_:)(v11);
    goto LABEL_10;
  }

  v13 = 0;
  v14 = v28 + 40;
  while (v13 < *(v10 + 16))
  {
    ++v13;
    v15 = *(v14 - 8);

    v15(v16);

    v14 += 16;
    if (v12 == v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id _DOCBrowserHistoryDataSourceBase.init()()
{
  v1 = v0;
  v2 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ThreadSafeState(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_shortDebugID];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v8 + 8))(v11, v7);
  v13 = specialized Collection.prefix(_:)(6);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = MEMORY[0x24C1FAE00](v13, v15, v17, v19);
  v22 = v21;

  *v12 = v20;
  v12[1] = v22;
  v23 = OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_state;
  v24 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  v25 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  v26 = MEMORY[0x277D84F90];
  *&v6[*(v25 + 20)] = MEMORY[0x277D84F90];
  *&v6[*(v25 + 24)] = v26;
  v27 = &v6[*(v3 + 28)];
  *v27 = 0;
  *(v27 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCThreadSafeStateCyAA32_DOCBrowserHistoryDataSourceBaseC06ThreadeF033_C73757633E7D839A94E1E3578A8DC4C3LLVGMd);
  swift_allocObject();
  *&v1[v23] = specialized DOCThreadSafeState.init(_:)(v6);
  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_itemManager;
  *&v1[v28] = [objc_opt_self() defaultManager];
  v29 = type metadata accessor for _DOCBrowserHistoryDataSourceBase();
  v31.receiver = v1;
  v31.super_class = v29;
  return objc_msgSendSuper2(&v31, sel_init);
}

id _DOCBrowserHistoryDataSourceBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _DOCBrowserHistoryDataSourceBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t one-time initialization function for didChange()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000036, 0x8000000249BE6CE0);
  static DOCBrowserHistoryDataSource.didChange = result;
  return result;
}

uint64_t one-time initialization function for clearHistoryNotification()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000034, 0x8000000249BE6CA0);
  static DOCBrowserHistoryDataSource.clearHistoryNotification = result;
  return result;
}

uint64_t *DOCBrowserHistoryDataSource.clearHistoryNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for clearHistoryNotification != -1)
  {
    swift_once();
  }

  return &static DOCBrowserHistoryDataSource.clearHistoryNotification;
}

id DOCBrowserHistoryDataSource.init(sourceObserver:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_observableTrashCollection] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_sourcesObserverToken] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_scheduleRefreshUnderlyingNodesPending] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_clearHistoryObserverToken] = 0;
  v3 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_allowedItemsFilter];
  *v3 = protocol witness for static AppIntent.openAppWhenRun.getter in conformance NavigateHistoryIntent;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_ignoreExternalUpdates] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_sourceObserver] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DOCBrowserHistoryDataSource();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  DOCBrowserHistoryDataSource.startObservingForChanges()();

  return v5;
}

uint64_t DOCBrowserHistoryDataSource.startObservingForChanges()()
{
  v1 = v0;
  v2 = [objc_opt_self() shared];
  [v2 addChangeObserver_];

  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_observableTrashCollection;
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_observableTrashCollection);
  v5 = MEMORY[0x277D85000];
  if (v4 || (v6 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_itemManager) newTrashCollection], v7 = objc_allocWithZone(type metadata accessor for DOCNodeCollection()), v8 = v6, v9 = DOCNodeCollection.init(itemCollection:observedNode:)(v8, 0), v10 = *(v1 + v3), *(v1 + v3) = v9, v11 = v9, v10, v12 = *((*v5 & *v11) + 0x198), v13 = swift_unknownObjectRetain(), v12(v13, &protocol witness table for DOCBrowserHistoryDataSource), v11, v8, (v4 = *(v1 + v3)) != 0))
  {
    v14 = *((*v5 & *v4) + 0x1C0);
    v15 = v4;
    v14();
  }

  v16 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_sourceObserver);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = partial apply for closure #1 in DOCBrowserHistoryDataSource.startObservingForChanges();
  v33 = v17;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
  v31 = &block_descriptor_267;
  v18 = _Block_copy(&v28);
  v19 = v16;

  v20 = [v19 addSubscriber_];
  _Block_release(v18);

  v21 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_sourcesObserverToken);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_sourcesObserverToken) = v20;

  v22 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for clearHistoryNotification != -1)
  {
    swift_once();
  }

  v23 = static DOCBrowserHistoryDataSource.clearHistoryNotification;
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = partial apply for closure #2 in DOCBrowserHistoryDataSource.startObservingForChanges();
  v33 = v24;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v31 = &block_descriptor_271;
  v25 = _Block_copy(&v28);

  v26 = [v22 addObserverForName:v23 object:0 queue:0 usingBlock:v25];
  _Block_release(v25);

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_clearHistoryObserverToken) = v26;
  return swift_unknownObjectRelease();
}

uint64_t DOCBrowserHistoryDataSource.__ivar_destroyer()
{
  swift_unknownObjectRelease();
}

id DOCBrowserHistoryDataSource.__deallocating_deinit()
{
  DOCBrowserHistoryDataSource.stopObservingForChanges()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCBrowserHistoryDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DOCBrowserHistoryDataSource.stopObservingForChanges()()
{
  v1 = v0;
  v2 = [objc_opt_self() shared];
  [v2 removeChangeObserver_];

  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_observableTrashCollection);
  if (v3)
  {
    v4 = *((*MEMORY[0x277D85000] & *v3) + 0x1C8);
    v5 = v3;
    v4();
  }

  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_sourcesObserverToken;
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_sourcesObserverToken))
  {
    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_sourceObserver) removeSubscriberForToken_];
    v7 = *(v1 + v6);
    *(v1 + v6) = 0;
  }

  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_clearHistoryObserverToken;
  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_clearHistoryObserverToken);
  if (v9)
  {
    v10 = objc_opt_self();
    swift_unknownObjectRetain();
    v11 = [v10 defaultCenter];
    [v11 removeObserver_];

    swift_unknownObjectRelease();
    *(v1 + v8) = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t key path setter for DOCBrowserHistoryDataSource.allowedItemsFilter : DOCBrowserHistoryDataSource(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x277D85000] & **a2) + 0x160);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCProgressProvidingOperation) -> (@out Bool), v5);
}

uint64_t DOCBrowserHistoryDataSource.allowedItemsFilter.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_allowedItemsFilter);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t DOCBrowserHistoryDataSource.allowedItemsFilter.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_allowedItemsFilter];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  DOCBrowserHistoryDataSource.log(_:)(0x676E69796C707061, 0xEF7265746C696620);
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v7 = v2;
  _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, partial apply for closure #1 in DOCBrowserHistoryDataSource.applyFilter(), v6);
}

uint64_t (*DOCBrowserHistoryDataSource.allowedItemsFilter.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCBrowserHistoryDataSource.allowedItemsFilter.modify;
}

uint64_t DOCBrowserHistoryDataSource.allowedItemsFilter.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    DOCBrowserHistoryDataSource.log(_:)(0x676E69796C707061, 0xEF7265746C696620);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = v5;
    _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, closure #1 in DOCBrowserHistoryDataSource.applyFilter()partial apply, v6);
  }

  return result;
}

uint64_t DOCBrowserHistoryDataSource.currentItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ThreadSafeState(0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_state) + 160))(closure #1 in _DOCBrowserHistoryDataSourceBase.currentState.getter, 0, v9);
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v11, v6, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet);
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v11, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ThreadSafeState);
  outlined init with copy of DOCGridLayout.Spec?(v6, a1, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  return outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v6, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet);
}

void DOCBrowserHistoryDataSource.backwardHistoryOrderedItems.getter()
{
  v1 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ThreadSafeState(0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_state) + 160))(closure #1 in _DOCBrowserHistoryDataSourceBase.currentState.getter, 0, v8);
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v10, v5, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet);
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v10, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ThreadSafeState);
  v11 = *&v5[*(v2 + 28)];

  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v5, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet);
  specialized Sequence.reversed()(v11);
}

unint64_t specialized Sequence.reversed()(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = __CocoaSet.count.getter();
    if (v19)
    {
      v20 = v19;
      v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15UIBarButtonItemC_Tt1g5(v19, 0);
      specialized Array._copyContents(initializing:)(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = __CocoaSet.count.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C1FC540]();
          v11 = MEMORY[0x24C1FC540](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void specialized Sequence.reversed()(void *a1)
{
  v2 = type metadata accessor for DOCBrowserHistoryItem(0);
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v17 = &v16 - v8;
  v9 = a1[2];
  if (v9 < 2)
  {
    return;
  }

  v10 = 0;
  v11 = v9 >> 1;
  for (i = v9 - 1; ; --i)
  {
    if (v10 == i)
    {
      goto LABEL_5;
    }

    v13 = a1[2];
    if (v10 >= v13)
    {
      break;
    }

    v14 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v15 = *(v16 + 72);
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1 + v14 + v15 * v10, v17, type metadata accessor for DOCBrowserHistoryItem);
    if (i >= v13)
    {
      goto LABEL_14;
    }

    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1 + v14 + v15 * i, v5, type metadata accessor for DOCBrowserHistoryItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
    }

    outlined assign with take of DOCBrowserHistoryItem(v5, a1 + v14 + v15 * v10);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    outlined assign with take of DOCBrowserHistoryItem(v17, a1 + v14 + v15 * i);
LABEL_5:
    if (v11 == ++v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t DOCBrowserHistoryDataSource.forwardHistoryOrderedItems.getter()
{
  v1 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ThreadSafeState(0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_state) + 160))(closure #1 in _DOCBrowserHistoryDataSourceBase.currentState.getter, 0, v8);
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v10, v5, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet);
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v10, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ThreadSafeState);
  v11 = *&v5[*(v2 + 32)];

  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v5, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet);
  return v11;
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.clearHistory()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v8 - v4;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v8 - v4, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(a1, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet);
  outlined init with take of DOCBrowserHistoryItem?(v5, a1);
  result = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  v7 = MEMORY[0x277D84F90];
  *(a1 + *(result + 20)) = MEMORY[0x277D84F90];
  *(a1 + *(result + 24)) = v7;
  return result;
}

uint64_t DOCBrowserHistoryDataSource.canShift(direction:amount:)(_BYTE *a1, uint64_t a2)
{
  v5 = type metadata accessor for DOCBrowserHistoryItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for DOCBrowserHistoryShiftAmount(0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v19 = (*((*MEMORY[0x277D85000] & *v2) + 0x180))(v16);
  }

  else
  {
    v19 = (*((*MEMORY[0x277D85000] & *v2) + 0x178))(v16);
  }

  v20 = v19;
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a2, v18, type metadata accessor for DOCBrowserHistoryShiftAmount);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemV07historyF0_tMd);
  if ((*(*(v21 - 8) + 48))(v18, 1, v21) == 1)
  {
    v22 = *(v20 + 16);

    return v22 != 0;
  }

  else
  {
    result = outlined init with take of DOCBrowserHistoryItem(v18, v13);
    v25 = 0;
    v26 = *(v20 + 16);
    while (1)
    {
      v23 = v26 != v25;
      if (v26 == v25)
      {
LABEL_10:

        outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v13, type metadata accessor for DOCBrowserHistoryItem);
        return v23;
      }

      if (v25 >= *(v20 + 16))
      {
        break;
      }

      outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25++, v9, type metadata accessor for DOCBrowserHistoryItem);
      v27 = static UUID.== infix(_:_:)();
      result = outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v9, type metadata accessor for DOCBrowserHistoryItem);
      if (v27)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DOCBrowserHistoryDataSource.historyItem(inDirection:amount:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = type metadata accessor for DOCBrowserHistoryShiftAmount(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v31 - v12;
  v32 = type metadata accessor for DOCBrowserHistoryItem(0);
  v14 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x28223BE20](v18, v19);
  v22 = &v31 - v21;
  if (*a1)
  {
    v23 = (*((*MEMORY[0x277D85000] & *v3) + 0x180))(v20);
  }

  else
  {
    v23 = (*((*MEMORY[0x277D85000] & *v3) + 0x178))(v20);
  }

  v24 = v23;
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a2, v13, type metadata accessor for DOCBrowserHistoryShiftAmount);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemV07historyF0_tMd);
  v26 = *(*(v25 - 8) + 48);
  if (v26(v13, 1, v25) == 1)
  {
    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v13, type metadata accessor for DOCBrowserHistoryShiftAmount);
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a2, v9, type metadata accessor for DOCBrowserHistoryShiftAmount);
    if (v26(v9, 1, v25) == 1)
    {
      outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v9, type metadata accessor for DOCBrowserHistoryShiftAmount);
      if (*(v24 + 16))
      {
        v27 = v33;
        outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v24 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v33, type metadata accessor for DOCBrowserHistoryItem);

        return (*(v14 + 56))(v27, 0, 1, v32);
      }
    }

    else
    {

      outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v9, type metadata accessor for DOCBrowserHistoryShiftAmount);
    }

    return (*(v14 + 56))(v33, 1, 1, v32);
  }

  else
  {
    outlined init with take of DOCBrowserHistoryItem(v13, v17);
    v29 = outlined init with take of DOCBrowserHistoryItem(v17, v22);
    MEMORY[0x28223BE20](v29, v30);
    *(&v31 - 2) = v22;
    specialized Sequence.first(where:)(partial apply for closure #1 in DOCBrowserHistoryDataSource.historyItem(inDirection:amount:), v24, v33);

    return outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v22, type metadata accessor for DOCBrowserHistoryItem);
  }
}

uint64_t DOCBrowserHistoryDataSource.shift(direction:amount:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v75 - v8;
  v10 = type metadata accessor for DOCBrowserHistoryShiftAmount(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v75 - v16;
  v18 = type metadata accessor for DOCBrowserHistoryItem(0);
  v19 = *(v18 - 8);
  v79 = v18;
  v80 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v75 - v25;
  v29.n128_f64[0] = MEMORY[0x28223BE20](v27, v28);
  v85 = &v75 - v30;
  v31 = *a1;
  LOBYTE(v88) = *a1;
  v32 = *MEMORY[0x277D85000] & *v3;
  v86 = *(v32 + 0x190);
  v87 = v32 + 400;
  result = v86(&v88, a2, v29);
  if ((result & 1) == 0)
  {
    return result;
  }

  LOBYTE(v88) = v31;
  DOCBrowserHistoryDataSource.shiftByOne(direction:)(&v88);
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a2, v17, type metadata accessor for DOCBrowserHistoryShiftAmount);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemV07historyF0_tMd);
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v84 = v34;
  if (v36(v17, 1) == 1)
  {
    v37 = type metadata accessor for DOCBrowserHistoryShiftAmount;
    v38 = v17;
    return outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v38, v37);
  }

  outlined init with take of DOCBrowserHistoryItem(v17, v26);
  v39 = outlined init with take of DOCBrowserHistoryItem(v26, v85);
  v40 = *MEMORY[0x277D85000] & *v3;
  v82 = *(v40 + 0x170);
  v83 = v40 + 368;
  v82(v39);
  v41 = v79;
  v42 = v80 + 48;
  v81 = *(v80 + 48);
  if (v81(v9, 1, v79) == 1)
  {
LABEL_5:
    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v85, type metadata accessor for DOCBrowserHistoryItem);
    return outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  }

  v44 = (v35 + 56);
  v78 = "xecutables.CancelAccessoryView";
  *&v43 = 136315394;
  v77 = v43;
  v80 = v42;
  while (1)
  {
    outlined init with take of DOCBrowserHistoryItem(v9, v22);
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    LOBYTE(v88) = v31;
    v47 = *v44;
    (*v44)(v13, 1, 1, v84);
    v48 = (v86)(&v88, v13);
    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v13, type metadata accessor for DOCBrowserHistoryShiftAmount);
    if (v48)
    {
      if (v31)
      {
        LOBYTE(v88) = v31;
        v47(v13, 1, 1, v84);
        v49 = (v86)(&v88, v13);
        v50 = outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v13, type metadata accessor for DOCBrowserHistoryShiftAmount);
        if ((v49 & 1) == 0)
        {
          goto LABEL_10;
        }

        v51 = (*((*MEMORY[0x277D85000] & *v3) + 0x68))(v50);
        v53 = v52;
        if (one-time initialization token for BrowserHistory != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        __swift_project_value_buffer(v54, static Logger.BrowserHistory);

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v75 = v51;
          v58 = v57;
          v76 = swift_slowAlloc();
          v88 = v76;
          *v58 = v77;
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v53, &v88);
          v75 = v55;
          v60 = v59;

          *(v58 + 4) = v60;
          *(v58 + 12) = 2080;
          *(v58 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, v78 | 0x8000000000000000, &v88);
          v55 = v75;
          _os_log_impl(&dword_2493AC000, v75, v56, "[History:%s] %s", v58, 0x16u);
          v61 = v76;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v61, -1, -1);
          MEMORY[0x24C1FE850](v58, -1, -1);
        }

        else
        {
        }

        v45 = closure #1 in DOCBrowserHistoryDataSource.shiftForward();
      }

      else
      {
        LOBYTE(v88) = v31;
        v47(v13, 1, 1, v84);
        v62 = (v86)(&v88, v13);
        v63 = outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v13, type metadata accessor for DOCBrowserHistoryShiftAmount);
        if ((v62 & 1) == 0)
        {
          goto LABEL_10;
        }

        v64 = (*((*MEMORY[0x277D85000] & *v3) + 0x68))(v63);
        v66 = v65;
        if (one-time initialization token for BrowserHistory != -1)
        {
          swift_once();
        }

        v67 = type metadata accessor for Logger();
        __swift_project_value_buffer(v67, static Logger.BrowserHistory);

        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v75 = v64;
          v71 = v70;
          v76 = swift_slowAlloc();
          v88 = v76;
          *v71 = v77;
          v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v66, &v88);
          v75 = v68;
          v73 = v72;

          *(v71 + 4) = v73;
          *(v71 + 12) = 2080;
          *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, v78 | 0x8000000000000000, &v88);
          v68 = v75;
          _os_log_impl(&dword_2493AC000, v75, v69, "[History:%s] %s", v71, 0x16u);
          v74 = v76;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v74, -1, -1);
          MEMORY[0x24C1FE850](v71, -1, -1);
        }

        else
        {
        }

        v45 = closure #1 in DOCBrowserHistoryDataSource.shiftBackward();
      }

      v41 = v79;
      _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, v45, 0);
    }

LABEL_10:
    v46 = outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v22, type metadata accessor for DOCBrowserHistoryItem);
    v82(v46);
    if (v81(v9, 1, v41) == 1)
    {
      goto LABEL_5;
    }
  }

  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v22, type metadata accessor for DOCBrowserHistoryItem);
  v38 = v85;
  v37 = type metadata accessor for DOCBrowserHistoryItem;
  return outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v38, v37);
}

uint64_t DOCBrowserHistoryDataSource.shiftByOne(direction:)(char *a1)
{
  v3 = type metadata accessor for DOCBrowserHistoryShiftAmount(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v20 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemV07historyF0_tMd);
  v9 = *(*(v8 - 8) + 56);
  v9(v6, 1, 1, v8);
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x190);
  v11 = v10(&v20, v6);
  result = outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v6, type metadata accessor for DOCBrowserHistoryShiftAmount);
  if (v11)
  {
    if (v7)
    {
      v19 = v7;
      v9(v6, 1, 1, v8);
      v13 = v10(&v19, v6);
      result = outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v6, type metadata accessor for DOCBrowserHistoryShiftAmount);
      v14 = closure #1 in DOCBrowserHistoryDataSource.shiftForward();
      if ((v13 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v18 = v7;
      v9(v6, 1, 1, v8);
      v16 = v10(&v18, v6);
      result = outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v6, type metadata accessor for DOCBrowserHistoryShiftAmount);
      v14 = closure #1 in DOCBrowserHistoryDataSource.shiftBackward();
      if ((v16 & 1) == 0)
      {
        return result;
      }
    }

    v15 = v14;
    DOCBrowserHistoryDataSource.log(_:)(0xD000000000000018, 0x8000000249BE68D0);
    return _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, v15, 0);
  }

  return result;
}

Swift::Void __swiftcall DOCBrowserHistoryDataSource.didStartSearching(whileBrowsing:inSource:)(DOCConcreteLocation_optional *whileBrowsing, DOCDocumentSource *inSource)
{
  v5 = type metadata accessor for DOCBrowserHistoryItem(0);
  MEMORY[0x28223BE20](v5, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (whileBrowsing)
  {
    v10 = v7;
    v11 = swift_allocBox();
    v13 = v12;
    v14 = whileBrowsing;
    UUID.init()();
    *(v13 + v10[5]) = v14;
    *(v13 + v10[6]) = MEMORY[0x277D84F90];
    *(v13 + v10[7]) = whileBrowsing;
    *(v13 + v10[8]) = inSource;
    v15 = (v13 + v10[9]);
    *v15 = 0u;
    v15[1] = 0u;
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v13, v9, type metadata accessor for DOCBrowserHistoryItem);
    v16 = v14;
    v17 = inSource;
    v18 = DOCBrowserHistoryDataSource.canStore(_:)(v9);
    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v9, type metadata accessor for DOCBrowserHistoryItem);
    if (v18)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v11;
      *(v19 + 24) = v2;

      v20 = v2;
      _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, partial apply for closure #1 in DOCBrowserHistoryDataSource.didStartSearching(whileBrowsing:inSource:), v19);
    }

    else
    {
    }
  }
}

uint64_t DOCBrowserHistoryDataSource.canStore(_:)(uint64_t a1)
{
  v3 = *(a1 + *(type metadata accessor for DOCBrowserHistoryItem(0) + 20));
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
      if (![v3 isContainer])
      {
        return 0;
      }

      v11 = [v3 canBeRestored];
      if (!v11)
      {
        return 0;
      }
    }
  }

  v13 = (*((*MEMORY[0x277D85000] & *v1) + 0x158))(v11);
  v14 = v13(a1);

  return v14 & 1;
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.didStartSearching(whileBrowsing:inSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v47 - v6;
  v8 = type metadata accessor for DOCBrowserHistoryItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v48 = &v47 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v47 - v17;
  v19 = swift_projectBox();
  v20 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  v21 = *(v20 + 24);
  v22 = *(a1 + v21);
  v55[3] = &type metadata for DOCBrowserHistoryItem.SearchContext;
  v55[0] = v22;
  swift_beginAccess();
  v23 = *(v8 + 36);

  v50 = v19;
  outlined assign with take of IndexPath?(v55, v19 + v23, &_sypSgMd);

  *(a1 + v21) = MEMORY[0x277D84F90];
  v24 = v8;
  outlined init with copy of DOCGridLayout.Spec?(a1, v7, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  v52 = v9;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of CharacterSet?(v7, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
    v25 = v50;
  }

  else
  {
    outlined init with take of DOCBrowserHistoryItem(v7, v18);
    v26 = v48;
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v18, v48, type metadata accessor for DOCBrowserHistoryItem);
    v27 = *(v20 + 20);
    v28 = *(a1 + v27);
    v29 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
    }

    v25 = v50;
    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1, v28);
    }

    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v18, type metadata accessor for DOCBrowserHistoryItem);
    v28[2] = v31 + 1;
    outlined init with take of DOCBrowserHistoryItem(v26, v28 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v31);
    *(a1 + v27) = v28;
    v24 = v29;
  }

  v53 = 0x203A676E69646461;
  v54 = 0xE800000000000000;
  swift_beginAccess();
  v32 = v49;
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v25, v49, type metadata accessor for DOCBrowserHistoryItem);
  v33 = *(v32 + *(v24 + 32));
  v34 = *(v32 + *(v24 + 20));
  v35 = v33;
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v32, type metadata accessor for DOCBrowserHistoryItem);
  v36 = DOCConcreteLocation.displayCategory.getter();
  if (v37 != 255)
  {
    if (v37 == 2)
    {
      v38 = v36;
      v39 = [v35 displayName];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      outlined consume of DOCConcreteLocation.DisplayCategory?(v38, 2u);
      goto LABEL_15;
    }

    outlined consume of DOCConcreteLocation.DisplayCategory?(v36, v37);
  }

  v43 = [v34 displayName];
  if (v43)
  {
    v44 = v43;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v45;
  }

  else
  {

    v40 = 0;
    v42 = 0xE000000000000000;
  }

LABEL_15:
  MEMORY[0x24C1FAEA0](v40, v42);

  DOCBrowserHistoryDataSource.log(_:)(v53, v54);

  outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  swift_beginAccess();
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v25, a1, type metadata accessor for DOCBrowserHistoryItem);
  return (*(v52 + 56))(a1, 0, 1, v24);
}

void DOCBrowserHistoryDataSource.log(_:)(uint64_t a1, unint64_t a2)
{
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x68))();
  v7 = v6;
  if (one-time initialization token for BrowserHistory != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.BrowserHistory);

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315394;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v14);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v14);
    _os_log_impl(&dword_2493AC000, oslog, v9, "[History:%s] %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall DOCBrowserHistoryDataSource.didStopSearching()()
{
  v1 = type metadata accessor for DOCBrowserHistoryShiftAmount(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v19[-v7];
  v9 = type metadata accessor for DOCBrowserHistoryItem(0);
  v10 = *(v9 - 8);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v9, v11);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x170))(v12);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  }

  else
  {
    outlined init with take of DOCBrowserHistoryItem(v8, v14);
    outlined init with copy of DOCGridLayout.Spec?(&v14[*(v9 + 36)], v19, &_sypSgMd);
    if (v20)
    {
      if (swift_dynamicCast())
      {

        v19[0] = 0;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemV07historyF0_tMd);
        (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
        v17 = (*((*v15 & *v0) + 0x190))(v19, v4);
        outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v4, type metadata accessor for DOCBrowserHistoryShiftAmount);
        if (v17)
        {
          DOCBrowserHistoryDataSource.log(_:)(0xD000000000000018, 0x8000000249BE68D0);
          _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, closure #1 in DOCBrowserHistoryDataSource.shiftBackward(), 0);
        }
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v19, &_sypSgMd);
    }

    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v14, type metadata accessor for DOCBrowserHistoryItem);
  }
}

uint64_t DOCBrowserHistoryDataSource.ignoreExternalUpdates.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_ignoreExternalUpdates;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCBrowserHistoryDataSource.ignoreExternalUpdates.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_ignoreExternalUpdates;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Void __swiftcall DOCBrowserHistoryDataSource.didBrowse(toLocationWithPath:withBrowsingAnchor:inSource:)(Swift::OpaquePointer toLocationWithPath, DOCConcreteLocation_optional *withBrowsingAnchor, DOCDocumentSource *inSource)
{
  v7 = type metadata accessor for DOCBrowserHistoryItem(0);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v7, v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v3) + 0x1B8))(v9))
  {
    return;
  }

  v13 = toLocationWithPath._rawValue >> 62;
  v14 = withBrowsingAnchor;
  if (withBrowsingAnchor)
  {
    goto LABEL_31;
  }

  if (v13)
  {
    goto LABEL_25;
  }

  v14 = *((toLocationWithPath._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_31:
    while (1)
    {
LABEL_8:
      v28 = v14;
      if (v13)
      {
        v15 = __CocoaSet.count.getter();
        if (!v15)
        {
LABEL_18:
          v24 = withBrowsingAnchor;
          v25 = v28;

          return;
        }
      }

      else
      {
        v15 = *((toLocationWithPath._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_18;
        }
      }

      v13 = v15 - 1;
      if (__OFSUB__(v15, 1))
      {
        break;
      }

      if ((toLocationWithPath._rawValue & 0xC000000000000001) != 0)
      {
        goto LABEL_22;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v13 < *((toLocationWithPath._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(toLocationWithPath._rawValue + v13 + 4);
        v17 = withBrowsingAnchor;
        v18 = v16;
        goto LABEL_15;
      }

      __break(1u);
LABEL_25:
      v14 = __CocoaSet.count.getter();
      if (v14)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_22:
    v26 = withBrowsingAnchor;
    v18 = MEMORY[0x24C1FC540](v13, toLocationWithPath._rawValue);
LABEL_15:
    v19 = v18;
    v20 = specialized Array.arrayByRemovingLastItem.getter(toLocationWithPath._rawValue);
    v21 = &v11[v7[9]];
    *v21 = 0u;
    *(v21 + 1) = 0u;
    UUID.init()();
    *&v11[v7[5]] = v19;
    *&v11[v7[6]] = v20;
    *&v11[v7[7]] = v28;
    *&v11[v7[8]] = inSource;
    v22 = *((*v12 & *v3) + 0x1D8);
    v23 = inSource;
    v22(v11);
    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v11, type metadata accessor for DOCBrowserHistoryItem);
    return;
  }

LABEL_5:
  if ((toLocationWithPath._rawValue & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x24C1FC540](0, toLocationWithPath._rawValue);
    goto LABEL_8;
  }

  if (*((toLocationWithPath._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(toLocationWithPath._rawValue + 4);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t specialized Array.arrayByRemovingLastItem.getter(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v2 || (result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;

    return v1;
  }

LABEL_10:
  __break(1u);
  return result;
}

void DOCBrowserHistoryDataSource.didBrowse(updatingHistoryTo:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v23 - v11;
  v13 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x1B8))(v10) & 1) == 0)
  {
    v14 = *(v4 + 20);
    v24 = a1;
    v15 = *((*v13 & *v1) + 0x170);
    v16 = *(a1 + v14);
    v15();
    if ((*(v5 + 48))(v12, 1, v4) == 1)
    {
      outlined destroy of CharacterSet?(v12, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);

      v17 = v24;
    }

    else
    {
      v18 = *&v12[*(v4 + 20)];
      outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v12, type metadata accessor for DOCBrowserHistoryItem);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
      v19 = static NSObject.== infix(_:_:)();

      v17 = v24;
      if (v19)
      {
        return;
      }
    }

    if (DOCBrowserHistoryDataSource.canStore(_:)(v17))
    {
      outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v17, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DOCBrowserHistoryItem);
      v20 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      outlined init with take of DOCBrowserHistoryItem(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
      v22 = v2;
      _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, partial apply for closure #1 in DOCBrowserHistoryDataSource.didBrowse(updatingHistoryTo:), v21);
    }
  }
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.didBrowse(updatingHistoryTo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v38 - v6;
  v8 = type metadata accessor for DOCBrowserHistoryItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  v18 = *(v17 + 24);

  *(a1 + v18) = MEMORY[0x277D84F90];
  outlined init with copy of DOCGridLayout.Spec?(a1, v7, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of CharacterSet?(v7, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  }

  else
  {
    outlined init with take of DOCBrowserHistoryItem(v7, v16);
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v16, v12, type metadata accessor for DOCBrowserHistoryItem);
    v19 = *(v17 + 20);
    v20 = *(a1 + v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    }

    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v20);
    }

    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v16, type metadata accessor for DOCBrowserHistoryItem);
    v20[2] = v22 + 1;
    outlined init with take of DOCBrowserHistoryItem(v12, v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22);
    *(a1 + v19) = v20;
  }

  v40 = 0x203A676E69646461;
  v41 = 0xE800000000000000;
  v23 = v39;
  v24 = *(v39 + *(v8 + 32));
  v25 = *(v39 + *(v8 + 20));
  v26 = v24;
  v27 = DOCConcreteLocation.displayCategory.getter();
  if (v28 != 255)
  {
    if (v28 == 2)
    {
      v29 = v27;
      v30 = [v26 displayName];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v23 = v39;
      outlined consume of DOCConcreteLocation.DisplayCategory?(v29, 2u);

      goto LABEL_15;
    }

    outlined consume of DOCConcreteLocation.DisplayCategory?(v27, v28);
  }

  v34 = [v25 displayName];
  if (v34)
  {
    v35 = v34;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v36;
  }

  else
  {

    v31 = 0;
    v33 = 0xE000000000000000;
  }

LABEL_15:
  MEMORY[0x24C1FAEA0](v31, v33);

  DOCBrowserHistoryDataSource.log(_:)(v40, v41);

  outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v23, a1, type metadata accessor for DOCBrowserHistoryItem);
  return (*(v9 + 56))(a1, 0, 1, v8);
}

uint64_t DOCBrowserHistoryDataSource.refreshUnderlyingNodesIfNecessary(locationMap:_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(v9, a1, v11, partial apply for closure #1 in DOCBrowserHistoryDataSource.refreshUnderlyingNodesIfNecessary(locationMap:_:), v12);

  return outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
}

char *DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, __int128 *a5)
{
  v159 = a1;
  v155 = a4;
  v156 = a5;
  v154 = a3;
  v149 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v141 = *(v5 - 8);
  v142 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v140 = v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v136 = *(v8 - 8);
  v137 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v135 = v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v146 = *(v11 - 1);
  v147 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v145 = v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v143, v14);
  v144 = v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v138 = *(v16 - 8);
  v139 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v148 = v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  v151 = *(v19 - 8);
  isa = v151[8].isa;
  MEMORY[0x28223BE20](v19 - 8, v21);
  v150 = v133 - v22;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_allocObject();
  v152 = v28;
  *(v28 + 16) = 0;
  v153 = (v28 + 16);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v24 + 8))(v27, v23);
  v29 = specialized Collection.prefix(_:)(6);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v157 = v34;

  p_aBlock = swift_allocObject();
  v37 = v154;
  v38 = v155;
  *(p_aBlock + 2) = v154;
  *(p_aBlock + 3) = v38;
  *(p_aBlock + 4) = v156;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  v39 = v37;

  _StringGuts.grow(_:)(29);

  *&aBlock = 91;
  *(&aBlock + 1) = 0xE100000000000000;
  v40 = MEMORY[0x24C1FAE00](v29, v31, v33, v35);
  MEMORY[0x24C1FAEA0](v40);

  MEMORY[0x24C1FAEA0](0xD00000000000001ALL, 0x8000000249BE6AB0);
  v41 = v158;
  DOCBrowserHistoryDataSource.log(_:)(aBlock, *(&aBlock + 1));

  v42 = v150;
  outlined init with copy of DOCGridLayout.Spec?(v159, v150, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  v43 = (LOBYTE(v151[10].isa) + 72) & ~LOBYTE(v151[10].isa);
  v44 = swift_allocObject();
  v44[2] = v41;
  v44[3] = v29;
  v154 = v29;
  v155 = v31;
  v44[4] = v31;
  v44[5] = v33;
  v156 = v33;
  v45 = v157;
  v44[6] = v157;
  v44[7] = partial apply for closure #1 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:);
  v44[8] = p_aBlock;
  v46 = v152;
  v47 = v42;
  v48 = v45;
  outlined init with take of DOCBrowserHistoryItem?(v47, v44 + v43);
  *(v44 + ((isa + v43 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;
  v49 = v41;

  _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, partial apply for closure #2 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:), v44);

  v50 = v153;
  swift_beginAccess();
  v51 = *v50;
  if (!*v50)
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x24C1FAEA0](91, 0xE100000000000000);
    v71 = MEMORY[0x24C1FAE00](v154, v155, v156, v48);
    v73 = v72;

    MEMORY[0x24C1FAEA0](v71, v73);

    MEMORY[0x24C1FAEA0](0xD000000000000030, 0x8000000249BE6AD0);
    DOCBrowserHistoryDataSource.log(_:)(aBlock, *(&aBlock + 1));
  }

  v153 = v49;
  if (*(v51 + 16))
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(27);

    *&aBlock = 91;
    *(&aBlock + 1) = 0xE100000000000000;
    v52 = MEMORY[0x24C1FAE00](v154, v155, v156, v48);
    MEMORY[0x24C1FAEA0](v52);

    MEMORY[0x24C1FAEA0](0xD000000000000018, 0x8000000249BE6B40);
    DOCBrowserHistoryDataSource.log(_:)(aBlock, *(&aBlock + 1));

    v53 = specialized Sequence.flatMap<A>(_:)(v51);

    if (v53 >> 62)
    {
      goto LABEL_50;
    }

    for (i = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v133[2] = p_aBlock;
      if (i)
      {
        *&aBlock = MEMORY[0x277D84F90];
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v56 = 0;
        v57 = v53;
        v158 = v53 & 0xC000000000000001;
        v159 = v53;
        v53 = aBlock;
        v58 = i;
        do
        {
          if (v158)
          {
            v59 = MEMORY[0x24C1FC540](v56, v57);
          }

          else
          {
            v59 = *(v57 + 8 * v56 + 32);
          }

          v60 = v59;
          v61 = [v60 fileProviderItem];
          if (v61)
          {
            v62 = v61;
            v63 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
            v64 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
            v65 = &unk_285C9E320;
            v46 = v62;
          }

          else
          {
            v66 = [v60 representedTag];
            if (v66)
            {
              v67 = v66;
              v46 = FPTagFromDOCTag();

              v63 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
              v64 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
              v65 = &unk_285C9E3A0;
            }

            else
            {
              v63 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
              v64 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
              v65 = &unk_285C9E3C8;
            }
          }

          *&aBlock = v53;
          v69 = *(v53 + 16);
          v68 = *(v53 + 24);
          if (v69 >= v68 >> 1)
          {
            v151 = v64;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
            v64 = v151;
            v53 = aBlock;
          }

          ++v56;
          *(v53 + 16) = v69 + 1;
          v70 = (v53 + 56 * v69);
          v70[4] = v60;
          v70[5] = v60;
          v70[6] = v46;
          v70[8] = v65;
          v70[9] = v63;
          v70[10] = v64;
          v57 = v159;
        }

        while (v58 != v56);
      }

      else
      {

        v53 = MEMORY[0x277D84F90];
      }

      v77 = swift_allocObject();
      v78 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables27DOCIdentityHashableLocationV_SayAFGTt0g5Tf4g_n(v53);

      v134 = v77;
      *(v77 + 16) = v78;
      v79 = (v77 + 16);
      v80 = specialized static DOCIdentityHashableLocation.locationMap(from:)(v149);
      v81 = v80 + 64;
      v82 = 1 << *(v80 + 32);
      v83 = -1;
      if (v82 < 64)
      {
        v83 = ~(-1 << v82);
      }

      v84 = v83 & *(v80 + 64);
      v85 = (v82 + 63) >> 6;
      p_aBlock = &aBlock;
      v159 = v80;

      v86 = 0;
      while (v84)
      {
LABEL_32:
        v46 = v159;
        v88 = 56 * (__clz(__rbit64(v84)) | (v86 << 6));
        outlined init with copy of DOCIdentityHashableLocation(*(v159 + 6) + v88, &aBlock);
        outlined init with copy of DOCIdentityHashableLocation(*(v46 + 7) + v88, v171);
        specialized Set._Variant.remove(_:)(&aBlock, v165);
        v53 = *&v165[0];
        outlined destroy of CharacterSet?(v165, &_s26DocumentManagerExecutables27DOCIdentityHashableLocationVSgMd);
        if (v53)
        {
          outlined init with copy of DOCIdentityHashableLocation(v171, v163);
          v53 = v79;
          specialized Set._Variant.insert(_:)(v165, v163);
          outlined destroy of DOCIdentityHashableLocation(v165);
        }

        v84 &= v84 - 1;
        outlined destroy of CharacterSet?(&aBlock, &_s26DocumentManagerExecutables27DOCIdentityHashableLocationV3key_AC5valuetMd);
      }

      while (1)
      {
        v87 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v87 >= v85)
        {
          break;
        }

        v84 = *(v81 + 8 * v87);
        ++v86;
        if (v84)
        {
          v86 = v87;
          goto LABEL_32;
        }
      }

      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v89 = v156;
      v90 = MEMORY[0x24C1FAE00](v154, v155, v156, v157);
      MEMORY[0x24C1FAEA0](v90);

      MEMORY[0x24C1FAEA0](0xD000000000000017, 0x8000000249BE6B60);
      DOCBrowserHistoryDataSource.log(_:)(aBlock, *(&aBlock + 1));

      p_aBlock = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      static DispatchQoS.unspecified.getter();
      v91 = MEMORY[0x277D84F90];
      *&aBlock = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
      v46 = v89;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (v146)[13](v145, *MEMORY[0x277D85260], v147);
      v133[1] = p_aBlock;
      v147 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v92 = swift_allocObject();
      v93 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables27DOCIdentityHashableLocationV_AETt0g5Tf4g_n(v91);
      v150 = v92;
      *(v92 + 16) = v93;
      v149 = swift_allocObject();
      *(v149 + 16) = v91;
      v151 = dispatch_group_create();
      v94 = *v79;
      v95 = v157;
      v96 = v94 + 56;
      v97 = 1 << *(v94 + 32);
      v98 = -1;
      if (v97 < 64)
      {
        v98 = ~(-1 << v97);
      }

      v99 = v98 & *(v94 + 56);
      v100 = (v97 + 63) >> 6;
      v143 = v161;
      v144 = OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_itemManager;
      v158 = v94;

      v101 = 0;
      v53 = 56;
      v102 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      while (v99)
      {
LABEL_43:
        v104 = __clz(__rbit64(v99));
        v99 &= v99 - 1;
        outlined init with copy of DOCIdentityHashableLocation(*(v158 + 48) + 56 * (v104 | (v101 << 6)), &aBlock);
        v165[0] = aBlock;
        v165[1] = v168;
        v165[2] = v169;
        v166 = v170;
        v105 = [aBlock fileProviderItem];
        if (v105)
        {
          p_aBlock = v105;
          v106 = [v105 v102[145]];

          if (v106)
          {
            v107 = v151;
            dispatch_group_enter(v151);
            v146 = *&v144[v153];
            outlined init with copy of DOCIdentityHashableLocation(v165, v163);
            v108 = swift_allocObject();
            v109 = v147;
            v111 = v149;
            v110 = v150;
            *(v108 + 16) = v147;
            *(v108 + 24) = v110;
            v112 = v163[1];
            *(v108 + 32) = v163[0];
            *(v108 + 48) = v112;
            *(v108 + 64) = v163[2];
            *(v108 + 80) = v164;
            *(v108 + 88) = v111;
            *(v108 + 96) = v107;
            v161[2] = partial apply for closure #7 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:);
            v162 = v108;
            v160[0] = MEMORY[0x277D85DD0];
            v160[1] = 1107296256;
            v161[0] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
            v161[1] = &block_descriptor_220_0;
            v113 = v106;
            v114 = _Block_copy(v160);
            v145 = v162;
            v115 = v109;
            v102 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
            v53 = 56;

            v116 = v151;
            p_aBlock = v156;

            [v146 fetchItemForItemID:v113 completionHandler:v114];
            _Block_release(v114);

            v46 = p_aBlock;
          }
        }

        outlined destroy of DOCIdentityHashableLocation(v165);
        v95 = v157;
      }

      while (1)
      {
        v103 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          break;
        }

        if (v103 >= v100)
        {

          v118 = v135;
          v117 = v136;
          v119 = v137;
          (*(v136 + 104))(v135, *MEMORY[0x277D851B8], v137);
          v158 = static OS_dispatch_queue.global(qos:)();
          (*(v117 + 8))(v118, v119);
          v120 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v121 = swift_allocObject();
          v123 = v154;
          v122 = v155;
          v121[2] = v120;
          v121[3] = v123;
          v121[4] = v122;
          v121[5] = v46;
          v124 = v134;
          v121[6] = v95;
          v121[7] = v124;
          v125 = v149;
          v126 = v150;
          v121[8] = v159;
          v121[9] = v126;
          v121[10] = v125;
          *&v169 = partial apply for closure #8 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:);
          *(&v169 + 1) = v121;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v168 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v168 + 1) = &block_descriptor_229;
          v127 = _Block_copy(&aBlock);

          v128 = v148;
          static DispatchQoS.unspecified.getter();
          *&v165[0] = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
          v129 = v140;
          v130 = v142;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v131 = v158;
          v132 = v151;
          OS_dispatch_group.notify(qos:flags:queue:execute:)();
          _Block_release(v127);

          (*(v141 + 8))(v129, v130);
          (*(v138 + 8))(v128, v139);
        }

        v99 = *(v96 + 8 * v103);
        ++v101;
        if (v99)
        {
          v101 = v103;
          goto LABEL_43;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      ;
    }
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  *&aBlock = 91;
  *(&aBlock + 1) = 0xE100000000000000;
  v74 = MEMORY[0x24C1FAE00](v154, v155, v156, v48);
  v76 = v75;

  MEMORY[0x24C1FAEA0](v74, v76);

  MEMORY[0x24C1FAEA0](0xD000000000000025, 0x8000000249BE6B10);
  DOCBrowserHistoryDataSource.log(_:)(aBlock, *(&aBlock + 1));

  _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(1, DOCGridLayout.specIconWidth.modify, 0);
}

Swift::Bool __swiftcall DOCBrowserHistoryDataSource.refreshUnderlyingNodesIfNecessarySynchronously(timeout:)(Swift::Double timeout)
{
  v28 = type metadata accessor for DispatchTime();
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v27 - v16;
  v18 = dispatch_semaphore_create(0);
  v19 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v10 + 104))(v13, *MEMORY[0x277D851B8], v9);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v13, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  v22 = v18;
  DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(v17, 0, v20, partial apply for closure #1 in DOCBrowserHistoryDataSource.refreshUnderlyingNodesIfNecessarySynchronously(timeout:), v21);

  outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v1 + 8);
  v24 = v4;
  v25 = v28;
  v23(v24, v28);
  MEMORY[0x24C1FBB60](v8);
  v23(v8, v25);
  LOBYTE(v10) = static DispatchTimeoutResult.== infix(_:_:)();

  return (v10 & 1) == 0;
}

BOOL DOCBrowserHistoryDataSource.refreshNodesInHistoryItemIfNecessarySynchronously(timeout:historyItemToRefresh:)(uint64_t a1)
{
  v29 = type metadata accessor for DispatchTime();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v28 - v17;
  v19 = dispatch_semaphore_create(0);
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, v18, type metadata accessor for DOCBrowserHistoryItem);
  v20 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v11 + 104))(v14, *MEMORY[0x277D851B8], v10);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v14, v10);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  v23 = v19;
  DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(v18, 0, v21, partial apply for closure #2 in closure #1 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:), v22);

  outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v2 + 8);
  v25 = v5;
  v26 = v29;
  v24(v25, v29);
  MEMORY[0x24C1FBB60](v9);
  v24(v9, v26);
  LOBYTE(v11) = static DispatchTimeoutResult.== infix(_:_:)();

  return (v11 & 1) == 0;
}

void DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DOCBrowserHistoryItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + *(v13 + 28));
  v15 = [v14 fileProviderItem];
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = v15;
  if ([v14 isRoot])
  {

LABEL_4:
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DOCBrowserHistoryItem);
    v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    outlined init with take of DOCBrowserHistoryItem(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);

    DOCRunInMainThread(_:)();

    return;
  }

  v27 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_itemManager];
  v19 = [v16 itemID];
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DOCBrowserHistoryItem);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  outlined init with take of DOCBrowserHistoryItem(v12, v22 + v20);
  *(v22 + v21) = v3;
  v23 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a2;
  v23[1] = a3;
  aBlock[4] = partial apply for closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_80;
  v24 = _Block_copy(aBlock);
  v25 = v3;

  [v27 fetchParentsForItemID:v19 recursively:1 completionHandler:v24];
  _Block_release(v24);
}

uint64_t closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v36 = a1;
  v37 = a4;
  v35 = a3;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DOCBrowserHistoryItem(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8, v16);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v18 + 104))(v21, *MEMORY[0x277D851B8], v17);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v21, v17);
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v35, &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DOCBrowserHistoryItem);
  v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  outlined init with take of DOCBrowserHistoryItem(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v23);
  *(v26 + v24) = v36;
  v28 = v37;
  v27 = v38;
  *(v26 + v25) = v37;
  v29 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v30 = v39;
  *v29 = v27;
  v29[1] = v30;
  aBlock[4] = partial apply for closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_186_0;
  v31 = _Block_copy(aBlock);

  v32 = v28;

  static DispatchQoS.unspecified.getter();
  v44 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v33 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v8, v31);
  _Block_release(v31);

  (*(v43 + 8))(v8, v33);
  (*(v41 + 8))(v12, v42);
}

uint64_t closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DOCBrowserHistoryItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocBox();
  v17 = v16;
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, v16, type metadata accessor for DOCBrowserHistoryItem);
  if (a2)
  {
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DOCBrowserHistoryItem);
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = a3;
    v20 = swift_allocObject();
    outlined init with take of DOCBrowserHistoryItem(v14, v20 + v18);
    *(v20 + v19) = a2;
    *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
    a3 = v24;
    v21 = swift_allocObject();
    *(v21 + 16) = partial apply for closure #1 in closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:);
    *(v21 + 24) = v20;

    _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, closure #1 in _DOCBrowserHistoryDataSourceBase.updateHistoryItems(endBackgroundRefresh:refreshedItemBlock:)partial apply, v21);
  }

  swift_beginAccess();
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v17, v14, type metadata accessor for DOCBrowserHistoryItem);
  (*((*MEMORY[0x277D85000] & *a3) + 0x1F0))(v14, 5.0);
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v14, type metadata accessor for DOCBrowserHistoryItem);
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = v15;

  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)@<X0>(__objc2_prot **a1@<X0>, unint64_t a2@<X2>, id a3@<X8>)
{
  v6 = type metadata accessor for DOCBrowserHistoryItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  if (static UUID.== infix(_:_:)())
  {
    v28 = v10;
    if (a2 >> 62)
    {
      goto LABEL_19;
    }

    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v23 = v11;
      v24 = a1;
      v25 = v7;
      v26 = v6;
      v27 = a3;
      v30 = MEMORY[0x277D84F90];
      a3 = (a2 & 0xFFFFFFFFFFFFFF8);
      specialized ContiguousArray.reserveCapacity(_:)();
      v29 = a2 & 0xFFFFFFFFFFFFFF8;
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (1)
      {
        v11 = 0;
        v6 = a2 & 0xC000000000000001;
        v7 = v14 + 3;
        a1 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        while ((v14 ^ v11) != 0x8000000000000000)
        {
          v18 = v7 - 4;
          if (v6)
          {
            v15 = MEMORY[0x24C1FC540](v18, a2);
          }

          else
          {
            if ((v18 & 0x8000000000000000) != 0)
            {
              goto LABEL_17;
            }

            if (v18 >= *(v29 + 16))
            {
              goto LABEL_18;
            }

            v15 = *(a2 + 8 * v7);
          }

          v16 = v15;
          ++v11;
          v17 = [v15 providerDomainID];
          a3 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v17 node:v16];

          [a3 setIsFPV2_];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v7;
          if (v12 == v11)
          {
            v13 = v30;
            v6 = v26;
            a3 = v27;
            v7 = v25;
            v11 = v23;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v29 = a2 & 0xFFFFFFFFFFFFFF8;
        v21 = __CocoaSet.count.getter();
        v13 = MEMORY[0x277D84F90];
        if (!v21)
        {
          break;
        }

        v12 = v21;
        v30 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        result = __CocoaSet.count.getter();
        if (v12 < 0)
        {
          __break(1u);
          return result;
        }

        v14 = result;
        v23 = v11;
        v24 = a1;
        v25 = v7;
        v26 = v6;
        v27 = a3;
      }
    }

LABEL_14:
    v19 = v28;
    DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)(0, 0, v13, v28);

    swift_beginAccess();
    outlined assign with take of DOCBrowserHistoryItem(v19, v11);
    swift_beginAccess();
    a1 = v11;
  }

  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, a3, type metadata accessor for DOCBrowserHistoryItem);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a4;
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v4, a4, type metadata accessor for DOCBrowserHistoryItem);
  v9 = type metadata accessor for DOCBrowserHistoryItem(0);
  v10 = v9[5];
  v11 = *(v8 + v10);
  result = refreshed #1 (optional:) in DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)(v11, a1, a2);
  if (!result)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    return result;
  }

  v13 = result;

  *(v8 + v10) = v13;
  v14 = v9[7];
  v15 = *(v8 + v14);
  v16 = refreshed #1 (optional:) in DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)(v15, a1, a2);

  *(v8 + v14) = v16;
  v17 = v9[6];
  v18 = *(v8 + v17);
  if (!a3)
  {

    v16 = v18;
    goto LABEL_43;
  }

  if (v16)
  {
    if (v18 >> 62)
    {
      if (__CocoaSet.count.getter() < 2)
      {
        goto LABEL_6;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_6;
    }

    v69 = v16;
    v64 = v17;
    if ((v18 & 0xC000000000000001) != 0)
    {

      v61 = v16;
      v16 = a3;

      v62 = v61;
      v9 = MEMORY[0x24C1FC540](1, v18);
    }

    else
    {
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_87;
      }

      v19 = *(v18 + 40);
      v16 = a3;

      v20 = v69;
      v9 = v19;
    }

    v18 = specialized Collection<>.firstIndex(of:)(v9, v16);
    v15 = v21;

    if (v15)
    {

      goto LABEL_43;
    }

    v68 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_249BA0290;
    v66 = v22;
    *(v22 + 32) = v69;
    v17 = v16 >> 62;
    if (!(v16 >> 62))
    {
      v23 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v23;
      if (v23 < v18)
      {
        __break(1u);
        goto LABEL_93;
      }

LABEL_16:
      if (v23 >= v18)
      {
        if ((v18 & 0x8000000000000000) == 0)
        {
          if (v17)
          {
            result = __CocoaSet.count.getter();
          }

          else
          {
            result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (result >= v24)
          {
            if ((v24 & 0x8000000000000000) == 0)
            {
              if ((a3 & 0xC000000000000001) == 0)
              {
                v15 = a3;

                v26 = v69;
                goto LABEL_31;
              }

              if (v18 == v24)
              {
                v15 = a3;

                v25 = v69;
                goto LABEL_30;
              }

              if (v18 < v24)
              {
                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
                v15 = a3;

                v27 = v69;
                v28 = v18;
                do
                {
                  v29 = v28 + 1;
                  _ArrayBuffer._typeCheckSlowPath(_:)(v28);
                  v28 = v29;
                }

                while (v24 != v29);
LABEL_30:
                if (v17)
                {

                  a3 = _CocoaArrayWrapper.subscript.getter();
                  v9 = v30;
                  v18 = v31;
                  v24 = v32;

                  if (v24)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_34;
                }

LABEL_31:

                a3 = v15 & 0xFFFFFFFFFFFFFF8;
                v9 = ((v15 & 0xFFFFFFFFFFFFFF8) + 32);
                v24 = (2 * v24) | 1;
                if (v24)
                {
LABEL_35:
                  type metadata accessor for __ContiguousArrayStorageBase();
                  swift_unknownObjectRetain_n();
                  v35 = swift_dynamicCastClass();
                  if (!v35)
                  {
                    swift_unknownObjectRelease();
                    v35 = MEMORY[0x277D84F90];
                  }

                  v36 = *(v35 + 16);

                  if (!__OFSUB__(v24 >> 1, v18))
                  {
                    if (v36 == (v24 >> 1) - v18)
                    {
                      v34 = swift_dynamicCastClass();
                      swift_unknownObjectRelease_n();
                      a2 = v68;
                      v17 = v64;
                      if (v34)
                      {
LABEL_42:
                        v71[0] = v66;
                        specialized Array.append<A>(contentsOf:)(v34);

                        v16 = v66;
                        goto LABEL_43;
                      }

                      v34 = MEMORY[0x277D84F90];
LABEL_41:
                      swift_unknownObjectRelease();
                      goto LABEL_42;
                    }

                    goto LABEL_98;
                  }

LABEL_97:
                  __break(1u);
LABEL_98:
                  swift_unknownObjectRelease_n();
                }

LABEL_34:
                specialized _copyCollectionToContiguousArray<A>(_:)(a3, v9, v18, v24);
                v34 = v33;
                a2 = v68;
                v17 = v64;
                goto LABEL_41;
              }

              __break(1u);
              goto LABEL_100;
            }

LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_87:
    if ((v16 & 0x8000000000000000) != 0)
    {
      v15 = v16;
    }

    else
    {
      v15 = v16 & 0xFFFFFFFFFFFFFF8;
    }

    result = __CocoaSet.count.getter();
    if (result < v18)
    {
      goto LABEL_101;
    }

    v24 = result;
    v23 = __CocoaSet.count.getter();
    goto LABEL_16;
  }

LABEL_6:
  v16 = a3;

LABEL_43:
  v72 = MEMORY[0x277D84F90];
  v67 = v16;
  if (v16 >> 62)
  {
    goto LABEL_82;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v65 = v17;
    v63 = v8;
    v38 = 0;
    v8 = v67;
    v39 = &selRef__setLocationsInBrowseTab_;
    while (1)
    {
      if ((v67 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x24C1FC540](v38, v8);
      }

      else
      {
        if (v38 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v40 = *(v8 + 8 * v38 + 32);
      }

      v41 = v40;
      v17 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (a1)
      {
        v42 = a2;
        v43 = v40;
        v44 = [v43 v39[408]];
        if (v44)
        {
          v45 = v44;
          v46 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
          v47 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
          v48 = &unk_285C9E320;
          v15 = v45;
        }

        else
        {
          v51 = [v43 representedTag];
          if (v51)
          {
            v52 = v51;
            v15 = FPTagFromDOCTag();

            v46 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
            v47 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
            v48 = &unk_285C9E3A0;
          }

          else
          {
            v46 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
            v47 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
            v48 = &unk_285C9E3C8;
          }
        }

        a2 = v42;
        v70[0] = v43;
        v70[1] = v43;
        v70[2] = v15;
        v70[4] = v48;
        v70[5] = v46;
        v70[6] = v47;
        v8 = v67;
        if (a1[2] && (v53 = specialized __RawDictionaryStorage.find<A>(_:)(v70), (v54 & 1) != 0))
        {
          outlined init with copy of DOCIdentityHashableLocation(a1[7] + 56 * v53, v71);
          outlined destroy of DOCIdentityHashableLocation(v70);
          v50 = v71[0];
          outlined destroy of DOCIdentityHashableLocation(v71);
          v39 = &selRef__setLocationsInBrowseTab_;
          if (!a2)
          {
            goto LABEL_61;
          }
        }

        else
        {
          outlined destroy of DOCIdentityHashableLocation(v70);
          v50 = 0;
          v39 = &selRef__setLocationsInBrowseTab_;
          if (!a2)
          {
LABEL_61:
            if (v50)
            {
              goto LABEL_66;
            }

            goto LABEL_73;
          }
        }
      }

      else
      {
        v49 = v40;
        v50 = 0;
        if (!a2)
        {
          goto LABEL_61;
        }
      }

      if (v50 || (v50 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithTaggedItemsSourceRepresentedTag_]) != 0)
      {
LABEL_66:
        v55 = [v50 representedTag];
        if (v55)
        {

          v56 = [v41 isTaggedItemsSource];
          if (v56)
          {
            v57 = v41;
          }

          else
          {
            v57 = v50;
          }
        }

        else
        {
          v58 = [v41 v39[408]];
          if (v58 && (v58, (v59 = [v50 v39[408]]) != 0))
          {

            v57 = v41;
          }

          else
          {

            v57 = v50;
          }
        }

        goto LABEL_75;
      }

LABEL_73:
      v57 = v41;
LABEL_75:

      MEMORY[0x24C1FB090]();
      if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v38;
      v39 = &selRef__setLocationsInBrowseTab_;
      if (v17 == i)
      {
        v60 = v72;
        v8 = v63;
        v17 = v65;
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    ;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_84:

  *(v8 + v17) = v60;
  return result;
}

uint64_t closure #2 in closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(void (*a1)(char *))
{
  v2 = type metadata accessor for DOCBrowserHistoryItem(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_projectBox();
  swift_beginAccess();
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v6, v5, type metadata accessor for DOCBrowserHistoryItem);
  a1(v5);
  return outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v5, type metadata accessor for DOCBrowserHistoryItem);
}

id DOCBrowserHistoryDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.shiftBackward()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for DOCBrowserHistoryItem(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v37 - v21;
  outlined init with copy of DOCGridLayout.Spec?(a1, v13, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v23 = &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd;
    v24 = v13;
    return outlined destroy of CharacterSet?(v24, v23);
  }

  outlined init with take of DOCBrowserHistoryItem(v13, v22);
  v25 = *(v14 + 36);
  outlined init with copy of DOCGridLayout.Spec?(&v22[v25], v39, &_sypSgMd);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables32DOCBrowserHistoryStateRestorable33_C73757633E7D839A94E1E3578A8DC4C3LL_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v39, &_sypSgMd);
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
  }

  outlined init with copy of DOCGridLayout.Spec?(&v41, v39, &_s26DocumentManagerExecutables32DOCBrowserHistoryStateRestorable33_C73757633E7D839A94E1E3578A8DC4C3LL_pSgMd);
  if (v40)
  {
    v38 = v25;
    v26 = v9;
    v27 = v18;
    v28 = v5;
    v29 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v30 = *(type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0) + 24);
    if (!*(*(a1 + v30) + 16))
    {
      v31 = *v29;

      *(a1 + v30) = v31;
    }

    __swift_destroy_boxed_opaque_existential_0(v39);
    v5 = v28;
    v18 = v27;
    v9 = v26;
    v25 = v38;
  }

  else
  {
    outlined destroy of CharacterSet?(v39, &_s26DocumentManagerExecutables32DOCBrowserHistoryStateRestorable33_C73757633E7D839A94E1E3578A8DC4C3LL_pSgMd);
  }

  outlined init with copy of DOCGridLayout.Spec?(&v22[v25], v39, &_sypSgMd);
  if (v40)
  {
    if (swift_dynamicCast())
    {

      goto LABEL_17;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v39, &_sypSgMd);
  }

  type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v22, v5, type metadata accessor for DOCBrowserHistoryItem);
  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v5);
LABEL_17:
  v32 = *(type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0) + 20);
  v33 = *(a1 + v32);
  if (!v33[2])
  {
    __break(1u);
LABEL_23:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
    v33 = result;
    v35 = *(result + 16);
    if (v35)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  v35 = v33[2];
  if (v35)
  {
LABEL_20:
    v36 = v35 - 1;
    outlined init with take of DOCBrowserHistoryItem(v33 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * (v35 - 1), v18);
    v33[2] = v36;
    *(a1 + v32) = v33;
    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v22, type metadata accessor for DOCBrowserHistoryItem);
    outlined init with take of DOCBrowserHistoryItem(v18, v9);
    (*(v15 + 56))(v9, 0, 1, v14);
    outlined assign with take of IndexPath?(v9, a1, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
    v23 = &_s26DocumentManagerExecutables32DOCBrowserHistoryStateRestorable33_C73757633E7D839A94E1E3578A8DC4C3LL_pSgMd;
    v24 = &v41;
    return outlined destroy of CharacterSet?(v24, v23);
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.shiftForward()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for DOCBrowserHistoryItem(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v29 - v17;
  outlined init with copy of DOCGridLayout.Spec?(a1, v9, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  }

  outlined init with take of DOCBrowserHistoryItem(v9, v18);
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v18, v14, type metadata accessor for DOCBrowserHistoryItem);
  v20 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  v21 = *(v20 + 20);
  v22 = *(a1 + v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1, v22);
  }

  v22[2] = v25 + 1;
  v26 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  result = outlined init with take of DOCBrowserHistoryItem(v14, v22 + v26 + *(v11 + 72) * v25);
  *(a1 + v21) = v22;
  v27 = *(a1 + *(v20 + 24));
  if (*(v27 + 16))
  {
    v28 = v30;
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v27 + v26, v30, type metadata accessor for DOCBrowserHistoryItem);
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v18, type metadata accessor for DOCBrowserHistoryItem);
    (*(v11 + 56))(v28, 0, 1, v10);
    return outlined assign with take of IndexPath?(v28, a1, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.applyFilter()(size_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v107 = v101 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v111 = v101 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v106 = v101 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v108 = v101 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v112 = v101 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v114 = v101 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v29 = v101 - v28;
  v30 = type metadata accessor for DOCBrowserHistoryItem(0);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v105 = v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v119 = v101 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = v101 - v39;
  MEMORY[0x28223BE20](v41, v42);
  v120 = v101 - v43;
  MEMORY[0x28223BE20](v44, v45);
  v47 = v101 - v46;
  MEMORY[0x28223BE20](v48, v49);
  v51 = (v101 - v50);
  outlined init with copy of DOCGridLayout.Spec?(a1, v29, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  v52 = *(v31 + 48);
  v113 = v30;
  v115 = v31 + 48;
  v116 = v52;
  if (v52(v29, 1, v30) == 1)
  {
    return outlined destroy of CharacterSet?(v29, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  }

  v102 = v7;
  v109 = v51;
  outlined init with take of DOCBrowserHistoryItem(v29, v51);
  v54 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  v55 = *(v54 + 20);
  v110 = a1;
  v103 = v55;
  v104 = v54;
  v56 = *(a1 + v55);
  v57 = *(v56 + 16);
  v117 = v56;
  v118 = v57;
  if (v57)
  {
    v58 = 0;
    v121 = MEMORY[0x277D84F90];
    while (v58 < *(v56 + 16))
    {
      v59 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      a1 = *(v31 + 72);
      v60 = outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v56 + v59 + a1 * v58, v47, type metadata accessor for DOCBrowserHistoryItem);
      v61 = (*((*MEMORY[0x277D85000] & *a2) + 0x158))(v60);
      v51 = v62;
      v63 = v61(v47);

      if (v63)
      {
        outlined init with take of DOCBrowserHistoryItem(v47, v120);
        v51 = v121;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122[0] = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1);
          v51 = v122[0];
        }

        v66 = v51[2];
        v65 = v51[3];
        if (v66 >= v65 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v65 > 1, v66 + 1, 1);
          v51 = v122[0];
        }

        v51[2] = v66 + 1;
        v121 = v51;
        v54 = outlined init with take of DOCBrowserHistoryItem(v120, v51 + v59 + v66 * a1);
        v56 = v117;
      }

      else
      {
        v54 = outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v47, type metadata accessor for DOCBrowserHistoryItem);
      }

      if (v118 == ++v58)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  v121 = MEMORY[0x277D84F90];
LABEL_15:
  v104 = *(v104 + 24);
  v56 = *(v110 + v104);
  v67 = *(v56 + 16);
  v118 = v56;
  v120 = v67;
  if (v67)
  {
    v101[1] = a2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v58 = 0;
    a1 = MEMORY[0x277D84F90];
    while (v58 < *(v56 + 16))
    {
      v68 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v47 = *(v31 + 72);
      v69 = outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v56 + v68 + v47 * v58, v40, type metadata accessor for DOCBrowserHistoryItem);
      v70 = (*((*MEMORY[0x277D85000] & *a2) + 0x158))(v69);
      v51 = v71;
      v72 = v70(v40);

      if (v72)
      {
        outlined init with take of DOCBrowserHistoryItem(v40, v119);
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v122[0] = a1;
        if ((v73 & 1) == 0)
        {
          v51 = v122;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16) + 1, 1);
          a1 = v122[0];
        }

        v75 = *(a1 + 16);
        v74 = *(a1 + 24);
        if (v75 >= v74 >> 1)
        {
          v51 = v122;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v74 > 1, v75 + 1, 1);
          a1 = v122[0];
        }

        *(a1 + 16) = v75 + 1;
        v54 = outlined init with take of DOCBrowserHistoryItem(v119, a1 + v68 + v75 * v47);
        v56 = v118;
      }

      else
      {
        v54 = outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v40, type metadata accessor for DOCBrowserHistoryItem);
      }

      if (v120 == ++v58)
      {
        goto LABEL_28;
      }
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  a1 = MEMORY[0x277D84F90];
LABEL_28:
  v76 = (*((*MEMORY[0x277D85000] & *a2) + 0x158))(v54);
  v77 = v109;
  v78 = v76(v109);

  v79 = v113;
  v47 = v114;
  if (v78)
  {
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v77, v114, type metadata accessor for DOCBrowserHistoryItem);
    v80 = 0;
  }

  else
  {
    v80 = 1;
  }

  v81 = *(v31 + 56);
  v120 = v31 + 56;
  v81(v47, v80, 1, v79);
  v82 = v112;
  outlined init with copy of DOCGridLayout.Spec?(v47, v112, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  v56 = v79;
  v83 = v116(v82, 1, v79);
  outlined destroy of CharacterSet?(v82, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  if (v83 != 1)
  {
    a2 = v81;
    goto LABEL_39;
  }

  v84 = v121;
  v85 = v121[2];
  if (!v85)
  {
    v94 = v108;
    a2 = v81;
    v81(v108, 1, 1, v56);
    outlined destroy of CharacterSet?(v94, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
    goto LABEL_39;
  }

  v51 = ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v58 = *(v31 + 72);
  v86 = v108;
  outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v51 + v121 + v58 * (v85 - 1), v108, type metadata accessor for DOCBrowserHistoryItem);
  a2 = v81;
  v81(v86, 0, 1, v56);
  outlined destroy of CharacterSet?(v86, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  if (!v84[2])
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_55;
  }

  v87 = v121;
  v88 = v121[2];
  if (!v88)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  while (1)
  {
    v89 = v88 - 1;
    v90 = v51 + v87 + (v88 - 1) * v58;
    v91 = v105;
    outlined init with take of DOCBrowserHistoryItem(v90, v105);
    v121 = v87;
    v87[2] = v89;
    outlined destroy of CharacterSet?(v47, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
    v92 = v91;
    v93 = v106;
    outlined init with take of DOCBrowserHistoryItem(v92, v106);
    (a2)(v93, 0, 1, v56);
    outlined init with take of DOCBrowserHistoryItem?(v93, v47);
LABEL_39:
    v95 = v111;
    outlined init with copy of DOCGridLayout.Spec?(v47, v111, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
    v96 = v116(v95, 1, v56);
    v58 = v110;
    if (v96 != 1)
    {
      outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v109, type metadata accessor for DOCBrowserHistoryItem);
LABEL_49:
      outlined destroy of CharacterSet?(v95, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
      v99 = v103;
      goto LABEL_50;
    }

    outlined destroy of CharacterSet?(v95, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
    if (!*(a1 + 16))
    {
      outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v109, type metadata accessor for DOCBrowserHistoryItem);
      v95 = v107;
      (a2)(v107, 1, 1, v56);
      goto LABEL_49;
    }

    v51 = ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v31 = v107;
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v51 + a1, v107, type metadata accessor for DOCBrowserHistoryItem);
    (a2)(v31, 0, 1, v56);
    outlined destroy of CharacterSet?(v31, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
    if (*(a1 + 16))
    {
      break;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v121);
    v87 = result;
    v88 = *(result + 16);
    if (!v88)
    {
      goto LABEL_56;
    }
  }

  result = outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v51 + a1, v102, type metadata accessor for DOCBrowserHistoryItem);
  v97 = *(a1 + 16);
  if (!v97)
  {
    goto LABEL_57;
  }

  v98 = swift_isUniquelyReferenced_nonNull_native();
  v122[0] = a1;
  v99 = v103;
  if (!v98 || (v97 - 1) > *(a1 + 24) >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v98, v97, 1, a1);
    v122[0] = a1;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
  outlined destroy of CharacterSet?(v47, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v109, type metadata accessor for DOCBrowserHistoryItem);
  v100 = v102;
  (a2)(v102, 0, 1, v56);
  outlined init with take of DOCBrowserHistoryItem?(v100, v47);
LABEL_50:
  outlined assign with take of IndexPath?(v47, v58, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);

  *(v58 + v99) = v121;
  *(v58 + v104) = a1;
  return result;
}

void *refreshed #1 (optional:) in DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (!a1)
  {
    return v3;
  }

  v5 = a2;
  if (!a2)
  {
    v9 = a1;
    if (a3)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v21 = a1;
  v6 = a1;
  v7 = [v6 fileProviderItem];
  if (v7)
  {
    v8 = v7;
    v24 = &unk_285C9E320;
    v25 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
    v26 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
    v22 = v6;
    v23 = v8;
    if (!v5[2])
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v10 = [v6 representedTag];
  if (!v10)
  {
    v24 = &unk_285C9E3C8;
    v25 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
    v26 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
    v22 = v6;
    if (!v5[2])
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v11 = v10;
  v12 = FPTagFromDOCTag();
  v24 = &unk_285C9E3A0;
  v25 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
  v26 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();

  v22 = v6;
  v23 = v12;
  if (v5[2])
  {
LABEL_12:
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(&v21);
    if ((v14 & 1) == 0)
    {
      goto LABEL_15;
    }

    outlined init with copy of DOCIdentityHashableLocation(v5[7] + 56 * v13, v27);
    outlined destroy of DOCIdentityHashableLocation(&v21);
    v5 = v27[0];
    outlined destroy of DOCIdentityHashableLocation(v27);
    if (a3)
    {
      goto LABEL_16;
    }

LABEL_18:
    if (!v5)
    {
      return v3;
    }

    goto LABEL_19;
  }

LABEL_15:
  outlined destroy of DOCIdentityHashableLocation(&v21);
  v5 = 0;
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithTaggedItemsSourceRepresentedTag_];
    goto LABEL_18;
  }

LABEL_19:
  v15 = [v5 representedTag];
  if (v15)
  {

    v16 = [v3 isTaggedItemsSource];
    if (v16)
    {
      v17 = v3;
    }

    else
    {
      v17 = v5;
    }

    if (v16)
    {
      v3 = v5;
    }
  }

  else
  {
    v18 = [v3 fileProviderItem];
    if (v18 && (v18, (v19 = [v5 fileProviderItem]) != 0))
    {

      v17 = v3;
      v3 = v5;
    }

    else
    {
      v17 = v5;
    }
  }

  return v3;
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.startObservingForChanges()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    *(swift_allocObject() + 16) = result;
    v2 = v1;
    DOCRunInMainThread(_:)();
  }

  return result;
}

void closure #2 in DOCBrowserHistoryDataSource.startObservingForChanges()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x188))();
  }
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.scheduleRefreshUnderlyingNodes()(void *a1)
{
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15, v16);
  v19 = &v27 - v18;
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x1B8))(v17);
  if ((result & 1) == 0 && (*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_scheduleRefreshUnderlyingNodesPending) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_scheduleRefreshUnderlyingNodesPending) = 1;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v30 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v21 = *(v11 + 8);
    v31 = v11 + 8;
    v32 = v21;
    v21(v14, v10);
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    aBlock[4] = partial apply for closure #1 in closure #1 in DOCBrowserHistoryDataSource.scheduleRefreshUnderlyingNodes();
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_180_0;
    v29 = _Block_copy(aBlock);
    v23 = a1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v28 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v24 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v29;
    v25 = v30;
    MEMORY[0x24C1FB940](v19, v9, v5, v29);
    _Block_release(v26);

    (*(v2 + 8))(v5, v24);
    (*(v34 + 8))(v9, v28);
    return v32(v19, v10);
  }

  return result;
}

uint64_t closure #1 in closure #1 in DOCBrowserHistoryDataSource.scheduleRefreshUnderlyingNodes()(void *a1)
{
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource_scheduleRefreshUnderlyingNodesPending) = 0;
  v2 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x1B8))();
  if ((result & 1) == 0)
  {
    return (*((*v2 & *a1) + 0x1E0))(0, DOCGridLayout.specIconWidth.modify, 0);
  }

  return result;
}

uint64_t DOCBrowserHistoryDataSource.nodeCollection(_:didUpdate:replaceNodesByFormerID:deleteNodesWith:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result < 1)
    {
      return result;
    }
  }

  else
  {
    result = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 1)
    {
      return result;
    }
  }

  *(swift_allocObject() + 16) = v4;
  v6 = v4;
  DOCRunInMainThread(_:)();
}

uint64_t DOCBrowserHistoryDataSource.tagRegistry(_:didRemove:)(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in DOCBrowserHistoryDataSource.tagRegistry(_:didRemove:);
  *(v4 + 24) = v3;
  v5 = a2;

  _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, partial apply for closure #1 in _DOCBrowserHistoryDataSourceBase.updateHistoryItems(endBackgroundRefresh:refreshedItemBlock:), v4);
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.tagRegistry(_:didRemove:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DOCBrowserHistoryItem(0);
  v7 = [*(a1 + *(v6 + 20)) representedTag];
  if (v7 && (v8 = v7, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag), v9 = a2, v10 = static NSObject.== infix(_:_:)(), v9, v8, (v10 & 1) != 0))
  {
    v11 = 1;
  }

  else
  {
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, a3, type metadata accessor for DOCBrowserHistoryItem);
    v11 = 0;
  }

  v12 = *(*(v6 - 8) + 56);

  return v12(a3, v11, 1, v6);
}

uint64_t DOCBrowserHistoryDataSource.tagRegistry(_:didReplace:with:)(uint64_t a1, void *a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in DOCBrowserHistoryDataSource.tagRegistry(_:didReplace:with:);
  *(v6 + 24) = v5;
  v7 = a2;
  v8 = a3;

  _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, closure #1 in _DOCBrowserHistoryDataSourceBase.updateHistoryItems(endBackgroundRefresh:refreshedItemBlock:)partial apply, v6);
}

uint64_t closure #1 in DOCBrowserHistoryDataSource.tagRegistry(_:didReplace:with:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DOCBrowserHistoryItem(0);
  v9 = [*(a1 + *(v8 + 20)) representedTag];
  if (v9 && (v10 = v9, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag), v11 = a2, v12 = static NSObject.== infix(_:_:)(), v11, v10, (v12 & 1) != 0))
  {
    DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)(0, a3, 0, a4);
  }

  else
  {
    outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(a1, a4, type metadata accessor for DOCBrowserHistoryItem);
  }

  v13 = *(*(v8 - 8) + 56);

  return v13(a4, 0, 1, v8);
}

uint64_t closure #1 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_258_0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

uint64_t closure #2 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v73 = a8;
  v74 = a7;
  v70 = a5;
  v71 = a6;
  v68 = a3;
  v69 = a4;
  v72 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v65 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v65 - v22;
  v24 = type metadata accessor for DOCBrowserHistoryItem(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v65 - v31;
  v33 = a1 + *(type metadata accessor for _DOCBrowserHistoryDataSourceBase.ThreadSafeState(0) + 20);
  if (*v33)
  {
    v75 = 0;
    v76 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x24C1FAEA0](91, 0xE100000000000000);
    v34 = MEMORY[0x24C1FAE00](v68, v69, v70, v71);
    MEMORY[0x24C1FAEA0](v34);

    MEMORY[0x24C1FAEA0](0xD000000000000048, 0x8000000249BE6C50);
    DOCBrowserHistoryDataSource.log(_:)(v75, v76);

    v35 = swift_allocObject();
    *(v35 + 16) = v74;
    *(v35 + 24) = v73;
    v36 = *v33;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
      v36 = result;
    }

    v39 = v36[2];
    v38 = v36[3];
    if (v39 >= v38 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
      v36 = result;
    }

    v36[2] = v39 + 1;
    v40 = &v36[2 * v39];
    v40[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v40[5] = v35;
    *v33 = v36;
  }

  else
  {
    v67 = v12;
    v68 = v32;
    v70 = v15;
    v71 = v24;
    v66 = v28;
    v72 = v25;
    v69 = a1;
    v41 = MEMORY[0x277D84F90];
    *v33 = MEMORY[0x277D84F90];
    *(v33 + 8) = v41;
    v42 = swift_allocObject();
    *(v42 + 16) = v74;
    *(v42 + 24) = v73;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
    }

    v44 = v41[2];
    v43 = v41[3];
    v45 = v19;
    if (v44 >= v43 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v41);
    }

    v41[2] = v44 + 1;
    v46 = &v41[2 * v44];
    v46[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v46[5] = v42;
    *v33 = v41;
    outlined init with copy of DOCGridLayout.Spec?(a9, v23, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
    v48 = v71;
    v47 = v72;
    v49 = *(v72 + 48);
    if (v49(v23, 1, v71) == 1)
    {
      v74 = a10;
      outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCBrowserHistoryItemVSgGMd);
      v50 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v51 = swift_allocObject();
      v52 = v69;
      outlined init with copy of DOCGridLayout.Spec?(v69, v51 + v50, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
      outlined init with copy of DOCGridLayout.Spec?(v51 + v50, v45, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
      v53 = v45;
      v54 = v70;
      outlined init with take of DOCBrowserHistoryItem?(v53, v70);
      if (v49(v54, 1, v48) == 1)
      {
        outlined destroy of CharacterSet?(v54, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
        v55 = MEMORY[0x277D84F90];
      }

      else
      {
        v59 = v66;
        outlined init with take of DOCBrowserHistoryItem(v54, v66);
        v55 = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
        }

        v61 = v55[2];
        v60 = v55[3];
        if (v61 >= v60 >> 1)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60 > 1, v61 + 1, 1, v55);
        }

        v55[2] = v61 + 1;
        outlined init with take of DOCBrowserHistoryItem(v59, v55 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v61);
      }

      v62 = v74;
      swift_setDeallocating();
      outlined destroy of CharacterSet?(v51 + v50, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
      swift_deallocClassInstance();
      v77 = *(v52 + *(type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0) + 20));

      specialized Array.append<A>(contentsOf:)(v55);

      specialized Array.append<A>(contentsOf:)(v63);
      v64 = v77;
      swift_beginAccess();
      *(v62 + 16) = v64;
    }

    else
    {
      v56 = v68;
      outlined init with take of DOCBrowserHistoryItem(v23, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMd);
      v57 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_249B9A480;
      outlined init with take of DOCBrowserHistoryItem(v56, v58 + v57);
      swift_beginAccess();
      *(a10 + 16) = v58;
    }
  }

  return result;
}

uint64_t closure #7 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(void *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v10 = a4 + 16;
  v11 = a6 + 16;
  outlined init with copy of DOCIdentityHashableLocation(a5, v19);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v10;
  v13 = v19[1];
  *(v12 + 32) = v19[0];
  *(v12 + 48) = v13;
  *(v12 + 64) = v19[2];
  *(v12 + 80) = v20;
  *(v12 + 88) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in closure #7 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:);
  *(v14 + 24) = v12;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_245;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  dispatch_sync(a3, v15);
  _Block_release(v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else
  {
    dispatch_group_leave(a7);
  }

  return result;
}

void closure #1 in closure #7 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(void *a1, uint64_t a2, uint64_t a3, char **a4)
{
  if (a1)
  {
    outlined init with copy of DOCIdentityHashableLocation(a3, v29);
    v5 = a1;
    v6 = [v5 providerDomainID];
    v7 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v6 node:v5];

    [v7 setIsFPV2_];
    v23 = v7;
    v8 = v7;
    v9 = [v8 fileProviderItem];
    if (v9)
    {
      v10 = v9;
      v26 = &unk_285C9E320;
      v27 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
      v28 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
      v24 = v8;
      v25 = v10;
    }

    else
    {
      v20 = [v8 representedTag];
      if (v20)
      {
        v21 = v20;
        v22 = FPTagFromDOCTag();
        v26 = &unk_285C9E3A0;
        v27 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
        v28 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();

        v24 = v8;
        v25 = v22;
      }

      else
      {
        v26 = &unk_285C9E3C8;
        v27 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
        v28 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
        v24 = v8;
      }
    }

    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v23, v29);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of DOCIdentityHashableLocation(a3, v29);
    swift_beginAccess();
    v12 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      *a4 = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
      *a4 = v12;
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[56 * v15];
    v17 = v29[0];
    v18 = v29[1];
    v19 = v29[2];
    *(v16 + 10) = v30;
    *(v16 + 3) = v18;
    *(v16 + 4) = v19;
    *(v16 + 2) = v17;
    swift_endAccess();
  }
}

uint64_t closure #8 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    _StringGuts.grow(_:)(45);

    v54 = 91;
    v55 = 0xE100000000000000;
    v46 = a2;
    v47 = a3;
    v48 = a4;
    v49 = a5;
    v18 = MEMORY[0x24C1FAE00](a2, a3, a4, a5);
    MEMORY[0x24C1FAEA0](v18);

    MEMORY[0x24C1FAEA0](0xD000000000000017, 0x8000000249BE6B80);
    swift_beginAccess();
    *&v52[0] = *(*(a6 + 16) + 16);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v19);

    MEMORY[0x24C1FAEA0](0xD000000000000011, 0x8000000249BE6BA0);
    v45 = v17;
    DOCBrowserHistoryDataSource.log(_:)(91, 0xE100000000000000);

    v20 = 1 << *(a7 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(a7 + 64);

    result = swift_beginAccess();
    v23 = 0;
    v24 = (v20 + 63) >> 6;
    while (v22)
    {
LABEL_12:
      v30 = 56 * (__clz(__rbit64(v22)) | (v23 << 6));
      outlined init with copy of DOCIdentityHashableLocation(*(a7 + 48) + v30, &v54);
      outlined init with copy of DOCIdentityHashableLocation(*(a7 + 56) + v30, v56);
      outlined init with copy of DOCIdentityHashableLocation(&v54, v52);
      swift_beginAccess();
      v31 = *(a8 + 16);
      if (*(v31 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v56), (v33 & 1) != 0))
      {
        outlined init with copy of DOCIdentityHashableLocation(*(v31 + 56) + 56 * v32, v50);
      }

      else
      {
        v51 = 0;
        memset(v50, 0, sizeof(v50));
      }

      swift_endAccess();
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v50, v52);
      swift_endAccess();
      v34 = *(a9 + 16);

      v35 = specialized Sequence<>.contains(_:)(&v54, v34);

      if (v35)
      {
        outlined init with copy of DOCIdentityHashableLocation(v56, v52);
        swift_beginAccess();
        v36 = *(a9 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a9 + 16) = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
          *(a9 + 16) = v36;
        }

        v39 = *(v36 + 2);
        v38 = *(v36 + 3);
        if (v39 >= v38 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
        }

        *(v36 + 2) = v39 + 1;
        v25 = &v36[56 * v39];
        v26 = v52[0];
        v27 = v52[1];
        v28 = v52[2];
        *(v25 + 10) = v53;
        *(v25 + 3) = v27;
        *(v25 + 4) = v28;
        *(v25 + 2) = v26;
        *(a9 + 16) = v36;
        swift_endAccess();
      }

      v22 &= v22 - 1;
      result = outlined destroy of CharacterSet?(&v54, &_s26DocumentManagerExecutables27DOCIdentityHashableLocationV3key_AC5valuetMd);
    }

    while (1)
    {
      v29 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v29 >= v24)
      {

        v54 = 0;
        v55 = 0xE000000000000000;
        _StringGuts.grow(_:)(37);

        v54 = 91;
        v55 = 0xE100000000000000;
        v40 = MEMORY[0x24C1FAE00](a2, v47, v48, v49);
        MEMORY[0x24C1FAEA0](v40);

        MEMORY[0x24C1FAEA0](0xD000000000000022, 0x8000000249BE6BC0);
        DOCBrowserHistoryDataSource.log(_:)(v54, v55);

        v41 = swift_allocObject();
        v41[2] = a9;
        v41[3] = v45;
        v41[4] = a2;
        v41[5] = v47;
        v41[6] = v48;
        v41[7] = v49;
        v41[8] = a8;
        v42 = swift_allocObject();
        *(v42 + 16) = partial apply for closure #2 in closure #8 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:);
        *(v42 + 24) = v41;

        v43 = v45;

        _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(1, closure #1 in _DOCBrowserHistoryDataSourceBase.updateHistoryItems(endBackgroundRefresh:refreshedItemBlock:)partial apply, v42);

        v54 = 0;
        v55 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v54 = 91;
        v55 = 0xE100000000000000;
        v44 = MEMORY[0x24C1FAE00](v46, v47, v48, v49);
        MEMORY[0x24C1FAEA0](v44);

        MEMORY[0x24C1FAEA0](0xD000000000000014, 0x8000000249BE6BF0);
        DOCBrowserHistoryDataSource.log(_:)(v54, v55);
      }

      v22 = *(a7 + 64 + 8 * v29);
      ++v23;
      if (v22)
      {
        v23 = v29;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #8 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  swift_beginAccess();
  v12 = *(a2 + 16);
  v13 = type metadata accessor for DOCBrowserHistoryItem(0);
  v31 = *(a1 + *(v13 + 20));
  v14 = v31;

  v15 = [v14 fileProviderItem];
  if (v15)
  {
    v16 = v15;
    v34 = &unk_285C9E320;
    v35 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
    v36 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
    v32 = v14;
    v33 = v16;
  }

  else
  {
    v17 = [v14 representedTag];
    if (v17)
    {
      v18 = v17;
      v19 = FPTagFromDOCTag();
      v34 = &unk_285C9E3A0;
      v35 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
      v36 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();

      v32 = v14;
      v33 = v19;
    }

    else
    {
      v34 = &unk_285C9E3C8;
      v35 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
      v36 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
      v32 = v14;
    }
  }

  v20 = specialized Sequence<>.contains(_:)(&v31, v12);

  outlined destroy of DOCIdentityHashableLocation(&v31);
  if (v20)
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    MEMORY[0x24C1FAEA0](91, 0xE100000000000000);
    v21 = MEMORY[0x24C1FAE00](a3, a4, a5, a6);
    MEMORY[0x24C1FAEA0](v21);

    MEMORY[0x24C1FAEA0](0xD000000000000034, 0x8000000249BE6C10);
    v22 = [v14 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    MEMORY[0x24C1FAEA0](v23, v25);

    DOCBrowserHistoryDataSource.log(_:)(v31, v32);
    v26 = 1;
  }

  else
  {
    swift_beginAccess();

    DOCBrowserHistoryItem.itemByRefreshing(locationMap:tag:updatedContainerLocationsToRoot:)(v27, 0, 0, a7);
    v26 = 0;
  }

  return (*(*(v13 - 8) + 56))(a7, v26, 1, v13);
}

uint64_t protocol witness for DOCNodeCollectionDelegate.nodeCollection(_:didUpdate:replaceNodesByFormerID:deleteNodesWith:) in conformance DOCBrowserHistoryDataSource(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result < 1)
    {
      return result;
    }
  }

  else
  {
    result = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 1)
    {
      return result;
    }
  }

  *(swift_allocObject() + 16) = v4;
  v6 = v4;
  DOCRunInMainThread(_:)();
}

void DOCIdentityHashableLocation.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = a1;
  v4 = [v3 fileProviderItem];
  if (v4)
  {
    v5 = v4;
    a2[4] = &unk_285C9E320;
    a2[5] = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
    a2[6] = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
    a2[1] = v3;
    a2[2] = v5;
  }

  else
  {
    v6 = [v3 representedTag];
    if (v6)
    {
      v7 = v6;
      v8 = FPTagFromDOCTag();
      a2[4] = &unk_285C9E3A0;
      a2[5] = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
      a2[6] = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();

      a2[1] = v3;
      a2[2] = v8;
    }

    else
    {
      a2[4] = &unk_285C9E3C8;
      a2[5] = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
      a2[6] = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
      a2[1] = v3;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCIdentityHashableLocation.FPItemImpl()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCIdentityHashableLocation.FPItemImpl()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCIdentityHashableLocation.FPTagImpl()
{
  v1 = [*(v0 + 8) label];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x24C1FAEA0](v2, v4);

  return 979853652;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCIdentityHashableLocation.FPItemImpl()
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  if (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t DOCIdentityHashableLocation.OtherImpl.description.getter(void *a1)
{
  _StringGuts.grow(_:)(30);

  v2 = [a1 displayName];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xE200000000000000;
    v4 = 16191;
  }

  MEMORY[0x24C1FAEA0](v4, v6);

  return 0xD00000000000001CLL;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCIdentityHashableLocation.OtherImpl()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = [v1 sourceIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  v3 = [v1 displayName];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DOCIdentityHashableLocation.OtherImpl()
{
  v1 = *v0;
  v2 = [v1 sourceIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  v3 = [v1 displayName];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCIdentityHashableLocation.OtherImpl()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = [v1 sourceIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  v3 = [v1 displayName];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

BOOL static DOCIdentityHashableLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((a1 + 8), *(a1 + 32));
  dispatch thunk of Hashable.hash(into:)();
  v4 = Hasher._finalize()();
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((a2 + 8), *(a2 + 32));
  dispatch thunk of Hashable.hash(into:)();
  return v4 == Hasher._finalize()();
}

Swift::Int DOCIdentityHashableLocation.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCIdentityHashableLocation()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCIdentityHashableLocation()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCIdentityHashableLocation(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((a1 + 8), *(a1 + 32));
  dispatch thunk of Hashable.hash(into:)();
  v4 = Hasher._finalize()();
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((a2 + 8), *(a2 + 32));
  dispatch thunk of Hashable.hash(into:)();
  return v4 == Hasher._finalize()();
}

uint64_t outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of DOCBrowserHistoryItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in DOCBrowserHistoryDataSource.didBrowse(updatingHistoryTo:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #1 in DOCBrowserHistoryDataSource.didBrowse(updatingHistoryTo:)(a1, v4, v5);
}

uint64_t partial apply for closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(a1, a2, v2 + v6, v8, v10, v11);
}

unint64_t lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl()
{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl()
{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl()
{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl);
  }

  return result;
}

uint64_t outlined init with copy of CustomStringConvertible & Hashable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DOCBrowserHistoryShiftDirection and conformance DOCBrowserHistoryShiftDirection()
{
  result = lazy protocol witness table cache variable for type DOCBrowserHistoryShiftDirection and conformance DOCBrowserHistoryShiftDirection;
  if (!lazy protocol witness table cache variable for type DOCBrowserHistoryShiftDirection and conformance DOCBrowserHistoryShiftDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCBrowserHistoryShiftDirection and conformance DOCBrowserHistoryShiftDirection);
  }

  return result;
}

void type metadata completion function for DOCBrowserHistoryItem()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NSMutableAttributedString(319, &lazy cache variable for type metadata for DOCConcreteLocation);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [DOCConcreteLocation](319, &lazy cache variable for type metadata for [DOCConcreteLocation], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [DOCConcreteLocation](319, &lazy cache variable for type metadata for DOCConcreteLocation?, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for NSMutableAttributedString(319, &lazy cache variable for type metadata for DOCDocumentSource);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Any?(319, &lazy cache variable for type metadata for Any?);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [DOCConcreteLocation](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for DOCConcreteLocation);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata completion function for DOCBrowserHistoryShiftAmount()
{
  type metadata accessor for (historyItem: DOCBrowserHistoryItem)();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void type metadata accessor for (historyItem: DOCBrowserHistoryItem)()
{
  if (!lazy cache variable for type metadata for (historyItem: DOCBrowserHistoryItem))
  {
    v0 = type metadata accessor for DOCBrowserHistoryItem(0);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (historyItem: DOCBrowserHistoryItem));
    }
  }
}

void type metadata completion function for _DOCBrowserHistoryDataSourceBase.ItemSet()
{
  type metadata accessor for [DOCBrowserHistoryItem](319, &lazy cache variable for type metadata for DOCBrowserHistoryItem?, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [DOCBrowserHistoryItem](319, &lazy cache variable for type metadata for [DOCBrowserHistoryItem], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [DOCBrowserHistoryItem](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DOCBrowserHistoryItem(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata completion function for _DOCBrowserHistoryDataSourceBase.ThreadSafeState()
{
  type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Any?(319, &lazy cache variable for type metadata for _DOCBrowserHistoryDataSourceBase.RefreshContext?);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Any?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t specialized DOCIdentityHashableLocation.FPItemImpl.description.getter(void *a1)
{
  _StringGuts.grow(_:)(16);

  v2 = [a1 itemID];
  v3 = [v2 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x24C1FAEA0](v4, v6);

  MEMORY[0x24C1FAEA0](0x3A656D616E202CLL, 0xE700000000000000);
  v7 = [a1 displayName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x24C1FAEA0](v8, v10);

  return 0x3A44497066;
}

uint64_t specialized static _DOCBrowserHistoryDataSourceBase.ItemSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSg_ADtMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of DOCGridLayout.Spec?(a1, &v24 - v15, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(a2, &v16[v18], &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of DOCGridLayout.Spec?(v16, v12, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v12, type metadata accessor for DOCBrowserHistoryItem);
LABEL_6:
    outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSg_ADtMd);
LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  outlined init with take of DOCBrowserHistoryItem(&v16[v18], v8);
  v20 = static UUID.== infix(_:_:)();
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v8, type metadata accessor for DOCBrowserHistoryItem);
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v12, type metadata accessor for DOCBrowserHistoryItem);
  outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  if ((v20 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v21 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables21DOCBrowserHistoryItemV_Tt1g5(*(a1 + *(v21 + 20)), *(a2 + *(v21 + 20))) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables21DOCBrowserHistoryItemV_Tt1g5(*(a1 + *(v21 + 24)), *(a2 + *(v21 + 24)));
  return v22 & 1;
}

uint64_t objectdestroy_6Tm_3(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t outlined consume of _DOCBrowserHistoryDataSourceBase.RefreshContext?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined init with take of DOCBrowserHistoryItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)()
{
  v1 = *(type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(v0 + v2, v5, v6, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)@<X0>(__objc2_prot **a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #2 in DOCBrowserHistoryDataSource.refresh(historyItem:completion:)(a1, v6, a2);
}

uint64_t outlined assign with take of DOCBrowserHistoryItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd) - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  return closure #2 in DOCBrowserHistoryDataSource._refreshUnderlyingNodesIfNecessary(soleItemToRefresh:locationMap:completionQueue:_:)(a1, v1[2], v1[3], v1[4], v1[5], v1[6], v1[7], v1[8], v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t specialized static DOCIdentityHashableLocation.locationMap(from:)(unint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F98];
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = ~v6;
    v1 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v3 = v8 & *(a1 + 64);
    v4 = a1;
  }

  v9 = 0;
  v10 = (v2 + 64) >> 6;
  v5 = MEMORY[0x277D84F98];
  v58 = v4;
  while ((v4 & 0x8000000000000000) != 0)
  {
    v19 = __CocoaDictionary.Iterator.next()();
    if (!v19 || (v21 = v20, *&v60 = v19, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation), swift_dynamicCast(), v17 = v64[0], *&v60 = v21, swift_dynamicCast(), v18 = v64[0], v13 = v9, v14 = v3, !v17))
    {
LABEL_40:
      outlined consume of Set<UITouch>.Iterator._Variant();
      return v5;
    }

LABEL_21:
    v59 = v14;
    v22 = v17;
    v23 = [v22 fileProviderItem];
    if (v23)
    {
      v24 = v23;
      v25 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
      v26 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
      v27 = &unk_285C9E320;
    }

    else
    {
      v28 = [v22 representedTag];
      if (v28)
      {
        v29 = v28;
        v24 = FPTagFromDOCTag();

        v25 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
        v26 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
        v27 = &unk_285C9E3A0;
      }

      else
      {
        v25 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
        v26 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
        v27 = &unk_285C9E3C8;
        v24 = v57;
      }
    }

    v64[0] = v22;
    v64[1] = v22;
    v64[2] = v24;
    v64[4] = v27;
    v64[5] = v25;
    v64[6] = v26;
    v30 = v18;
    v31 = [v30 fileProviderItem];
    v57 = v24;
    if (v31)
    {
      v32 = v31;
      v33 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
      v34 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPItemImpl and conformance DOCIdentityHashableLocation.FPItemImpl();
      v35 = &unk_285C9E320;
    }

    else
    {
      v36 = [v30 representedTag];
      if (v36)
      {
        v37 = v36;
        v32 = FPTagFromDOCTag();

        v33 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
        v34 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.FPTagImpl and conformance DOCIdentityHashableLocation.FPTagImpl();
        v35 = &unk_285C9E3A0;
      }

      else
      {
        v33 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
        v34 = lazy protocol witness table accessor for type DOCIdentityHashableLocation.OtherImpl and conformance DOCIdentityHashableLocation.OtherImpl();
        v35 = &unk_285C9E3C8;
        v32 = v56;
      }
    }

    *&v60 = v30;
    *(&v60 + 1) = v30;
    v56 = v32;
    *&v61 = v32;
    *&v62 = v35;
    *(&v62 + 1) = v33;
    v63 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
    v41 = v5[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_43;
    }

    v44 = v39;
    if (v5[3] >= v43)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_45;
      }

      v40 = v45;
    }

    v4 = v58;
    if (v44)
    {
      outlined assign with take of DOCIdentityHashableLocation(&v60, v5[7] + 56 * v40);
    }

    else
    {
      v5[(v40 >> 6) + 8] |= 1 << v40;
      v47 = 56 * v40;
      outlined init with copy of DOCIdentityHashableLocation(v64, v5[6] + v47);
      v48 = v5[7] + v47;
      v49 = v60;
      v50 = v61;
      v51 = v62;
      *(v48 + 48) = v63;
      *(v48 + 16) = v50;
      *(v48 + 32) = v51;
      *v48 = v49;
      v52 = v5[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_44;
      }

      v5[2] = v54;
    }

    outlined destroy of DOCIdentityHashableLocation(v64);

    v9 = v13;
    v3 = v59;
  }

  v11 = v9;
  v12 = v3;
  v13 = v9;
  if (v3)
  {
LABEL_17:
    v14 = (v12 - 1) & v12;
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v12)));
    v16 = *(*(v4 + 56) + v15);
    v17 = *(*(v4 + 48) + v15);
    v18 = v16;
    if (!v17)
    {
      goto LABEL_40;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_40;
    }

    v12 = *(v1 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

void thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionCell?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t DOCTransitionableProxy.__allocating_init(viewControllers:)(unint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  if (a1 >> 62)
  {
    v9 = result;
    v10 = __CocoaSet.count.getter();
    result = v9;
    if (v10)
    {
      return result;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  v3 = result;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BE6D20, &v11);
    _os_log_impl(&dword_2493AC000, v5, v6, "[Presentation Error] %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  return v3;
}

uint64_t DOCTransitionableProxy.init(viewControllers:)(unint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      return v2;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v2;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.UI);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BE6D20, &v9);
    _os_log_impl(&dword_2493AC000, v4, v5, "[Presentation Error] %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  return v2;
}

uint64_t DOCTransitionableProxy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)(uint64_t a1, uint64_t (*a2)(void, __n128), uint64_t a3)
{
  v52 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 16);
  v17 = v16 >> 62;
  v18 = v16;
  if (v16 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

    return v52(0, v13);
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return v52(0, v13);
  }

LABEL_3:
  v45 = a3;
  v46 = v15;
  v47 = v11;
  v48 = v9;
  v49 = v10;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v57 = (v19 + 16);
  v58 = v19;
  result = dispatch_group_create();
  v21 = result;
  v51 = v5;
  v50 = v6;
  if (v17)
  {
    result = __CocoaSet.count.getter();
    v22 = v18;
    v23 = result;
    if (!result)
    {
LABEL_19:
      type metadata accessor for OS_dispatch_queue();
      v38 = static OS_dispatch_queue.main.getter();
      v39 = swift_allocObject();
      v40 = v52;
      v39[2] = v58;
      v39[3] = v40;
      v39[4] = v45;
      v62 = partial apply for closure #1 in DOCTransitionableProxy.getTransitionController(forURL:completionBlock:);
      v63 = v39;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v61 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v61 + 1) = &block_descriptor_9_5;
      v41 = _Block_copy(&aBlock);

      v42 = v46;
      static DispatchQoS.unspecified.getter();
      v59 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v43 = v48;
      v44 = v51;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v41);

      (*(v50 + 8))(v43, v44);
      (*(v47 + 8))(v42, v49);
    }
  }

  else
  {
    v22 = v18;
    v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_19;
    }
  }

  if (v23 >= 1)
  {
    v55 = v22 & 0xC000000000000001;
    swift_beginAccess();
    v24 = v18;
    v25 = 0;
    v54 = &v61;
    v53 = xmmword_249B9A480;
    v56 = v18;
    do
    {
      if (v55)
      {
        v36 = MEMORY[0x24C1FC540](v25, v24);
      }

      else
      {
        v36 = *(v24 + 8 * v25 + 32);
        swift_unknownObjectRetain();
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v37 = swift_allocObject();
      *(v37 + 16) = v53;
      if (!*v57 || (v59 = *v57, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28DOCServiceTransitionProtocol_pMd), __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd), (swift_dynamicCast() & 1) == 0))
      {
        v62 = 0;
        aBlock = 0u;
        v61 = 0u;
      }

      ++v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pSgMd);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      *(v37 + 56) = MEMORY[0x277D837D0];
      *(v37 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v37 + 32) = v26;
      *(v37 + 40) = v28;
      os_log(_:dso:log:type:_:)();

      dispatch_group_enter(v21);
      URL._bridgeToObjectiveC()(v29);
      v31 = v30;
      v32 = swift_allocObject();
      v33 = v58;
      *(v32 + 16) = v21;
      *(v32 + 24) = v33;
      v62 = partial apply for closure #1 in getTransitionController #1 (for:) in DOCTransitionableProxy.getTransitionController(forURL:completionBlock:);
      v63 = v32;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v61 = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
      *(&v61 + 1) = &block_descriptor_81;
      v34 = _Block_copy(&aBlock);
      v35 = v21;

      [v36 getTransitionControllerForURL:v31 completionBlock:v34];
      _Block_release(v34);
      swift_unknownObjectRelease();

      v24 = v56;
    }

    while (v23 != v25);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void closure #1 in getTransitionController #1 (for:) in DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)(uint64_t a1, NSObject *a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    *(a3 + 16) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    dispatch_group_leave(a2);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.UI);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2493AC000, v7, v8, "_transitionController is nil. Bailing early.", v9, 2u);
      MEMORY[0x24C1FE850](v9, -1, -1);
    }

    dispatch_group_leave(a2);
  }
}

uint64_t closure #1 in DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)(uint64_t a1, void (*a2)(uint64_t))
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249B9A480;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28DOCServiceTransitionProtocol_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd);
    swift_dynamicCast();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pSgMd);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:type:_:)();

  swift_beginAccess();
  v8 = swift_unknownObjectRetain();
  a2(v8);
  return swift_unknownObjectRelease();
}

uint64_t DOCTransitionableProxy.getTransitionController(forItem:completionBlock:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = a2;
  v5 = *(v2 + 16);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v13 = __CocoaSet.count.getter();
      if (!v13)
      {
LABEL_10:
        swift_beginAccess();
        v11 = swift_unknownObjectRetain();
        v3(v11);

        return swift_unknownObjectRelease();
      }

      v6 = v13;
      if (v13 >= 1)
      {
        v14 = v3;
LABEL_4:
        v8 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x24C1FC540](v8, v5);
          }

          else
          {
            v9 = *(v5 + 8 * v8 + 32);
            swift_unknownObjectRetain();
          }

          ++v8;
          aBlock[4] = partial apply for closure #1 in getTransitionController #1 (for:) in DOCTransitionableProxy.getTransitionController(forItem:completionBlock:);
          aBlock[5] = v7;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
          aBlock[3] = &block_descriptor_13_1;
          v10 = _Block_copy(aBlock);

          [v9 getTransitionControllerForItem:a1 completionBlock:v10];
          _Block_release(v10);
          swift_unknownObjectRelease();
        }

        while (v6 != v8);
        v3 = v14;
        goto LABEL_10;
      }

      __break(1u);
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      v14 = a2;
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      goto LABEL_4;
    }
  }

  return (v3)(0);
}

void closure #1 in getTransitionController #1 (for:) in DOCTransitionableProxy.getTransitionController(forItem:completionBlock:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    *(a2 + 16) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.UI);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v5, "_transitionController is nil. Bailing early.", v6, 2u);
      MEMORY[0x24C1FE850](v6, -1, -1);
    }
  }
}

uint64_t DOCTransitionableProxy.getPopoverTracker(for:completionBlock:)(uint64_t a1, uint64_t (*a2)(void, __n128), uint64_t a3)
{
  v40 = a2;
  v41 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 16);
  if (v16 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

    return v40(0, v13);
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return v40(0, v13);
  }

LABEL_3:
  v33 = a3;
  v34 = v15;
  v35 = v11;
  v36 = v9;
  v37 = v10;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  result = dispatch_group_create();
  v19 = result;
  v38 = v6;
  v39 = v5;
  if (v16 >> 62)
  {
    result = __CocoaSet.count.getter();
    v20 = result;
    if (!result)
    {
LABEL_13:
      type metadata accessor for OS_dispatch_queue();
      v26 = static OS_dispatch_queue.main.getter();
      v27 = swift_allocObject();
      v28 = v33;
      v27[2] = v40;
      v27[3] = v28;
      v27[4] = v17;
      v47 = partial apply for closure #1 in DOCTransitionableProxy.getPopoverTracker(for:completionBlock:);
      v48 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v46 = &block_descriptor_28_3;
      v29 = _Block_copy(&aBlock);

      v30 = v34;
      static DispatchQoS.unspecified.getter();
      v42 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v31 = v36;
      v32 = v39;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v29);

      (*(v38 + 8))(v31, v32);
      (*(v35 + 8))(v30, v37);
    }
  }

  else
  {
    v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_13;
    }
  }

  if (v20 >= 1)
  {
    v21 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C1FC540](v21, v16);
      }

      else
      {
        v22 = *(v16 + 8 * v21 + 32);
        swift_unknownObjectRetain();
      }

      ++v21;
      dispatch_group_enter(v19);
      v23 = swift_allocObject();
      *(v23 + 16) = v19;
      *(v23 + 24) = v17;
      v47 = partial apply for closure #1 in getPopoverTracker #1 (for:) in DOCTransitionableProxy.getPopoverTracker(for:completionBlock:);
      v48 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
      v46 = &block_descriptor_22_1;
      v24 = _Block_copy(&aBlock);
      v25 = v19;

      [v22 getPopoverTrackerForItem:v41 completionBlock:v24];
      _Block_release(v24);
      swift_unknownObjectRelease();
    }

    while (v20 != v21);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void closure #1 in getPopoverTracker #1 (for:) in DOCTransitionableProxy.getPopoverTracker(for:completionBlock:)(uint64_t a1, dispatch_group_t group, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    *(a3 + 16) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    dispatch_group_leave(group);
  }

  else
  {

    dispatch_group_leave(group);
  }
}

uint64_t closure #1 in DOCTransitionableProxy.getPopoverTracker(for:completionBlock:)(void (*a1)(uint64_t))
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();
  a1(v2);
  return swift_unknownObjectRelease();
}

uint64_t @objc DOCTransitionableProxy.getTransitionController(forItem:completionBlock:)(uint64_t a1, int a2, void *a3, void *aBlock, void (*a5)(id, uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;

  a5(v9, a1, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void DOCTransitionableProxy.getView(for:waitForNewThumbnail:_:)(uint64_t a1, char a2, void (*a3)(void *, void *))
{
  v5 = *(v3 + 16);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

LABEL_15:
    a3(0, 0);
    return;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_15;
  }

LABEL_3:
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v17 = a3;
  if (v5 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
LABEL_13:
      swift_beginAccess();
      v13 = *(v6 + 16);
      swift_beginAccess();
      v14 = *(v7 + 16);
      v15 = v14;
      v16 = v13;
      v17(v13, v14);

      return;
    }
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      ++v9;
      v11 = swift_allocObject();
      *(v11 + 16) = v6;
      *(v11 + 24) = v7;
      aBlock[4] = partial apply for closure #1 in getDisplayInformation #1 (for:) in DOCTransitionableProxy.getView(for:waitForNewThumbnail:_:);
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
      aBlock[3] = &block_descriptor_40_1;
      v12 = _Block_copy(aBlock);

      [v10 getViewFor_waitForNewThumbnail:a1 :{a2 & 1, v12}];
      _Block_release(v12);
      swift_unknownObjectRelease();
    }

    while (v8 != v9);
    goto LABEL_13;
  }

  __break(1u);
}

void closure #1 in getDisplayInformation #1 (for:) in DOCTransitionableProxy.getView(for:waitForNewThumbnail:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    v8 = *(a3 + 16);
    *(a3 + 16) = a1;
    v9 = a1;

    swift_beginAccess();
    v10 = *(a4 + 16);
    *(a4 + 16) = a2;
    v11 = a2;
  }
}

void DOCTransitionableProxy.getCell(for:_:)(uint64_t a1, void (*a2)(void *))
{
  v3 = a2;
  v5 = *(v2 + 16);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v11 = (v7 + 16);
      v14 = __CocoaSet.count.getter();
      if (!v14)
      {
LABEL_10:
        swift_beginAccess();
        v12 = *v11;
        v13 = v12;
        v3(v12);

        return;
      }

      v6 = v14;
      if (v14 >= 1)
      {
        v15 = (v7 + 16);
        v16 = v3;
LABEL_4:
        v8 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x24C1FC540](v8, v5);
          }

          else
          {
            v9 = *(v5 + 8 * v8 + 32);
            swift_unknownObjectRetain();
          }

          ++v8;
          aBlock[4] = partial apply for closure #1 in getDisplayInformation #1 (for:) in DOCTransitionableProxy.getCell(for:_:);
          aBlock[5] = v7;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionCell?) -> ();
          aBlock[3] = &block_descriptor_46_1;
          v10 = _Block_copy(aBlock);

          [v9 getCellFor:a1 :v10];
          _Block_release(v10);
          swift_unknownObjectRelease();
        }

        while (v6 != v8);
        v3 = v16;
        v11 = v15;
        goto LABEL_10;
      }

      __break(1u);
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      v16 = a2;
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v15 = (v7 + 16);
      goto LABEL_4;
    }
  }

  v3(0);
}

void closure #1 in getDisplayInformation #1 (for:) in DOCTransitionableProxy.getCell(for:_:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = a1;
    v5 = a1;
  }
}

void DOCTransitionableProxy.reveal(nodes:selectEvenIfVisible:completionBlock:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, v6);
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      ++v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      isa = Array._bridgeToObjectiveC()().super.isa;
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      aBlock[3] = &block_descriptor_49_1;
      v11 = _Block_copy(aBlock);

      [v9 revealWithNodes:isa selectEvenIfVisible:a2 & 1 completionBlock:v11];
      _Block_release(v11);
      swift_unknownObjectRelease();
    }

    while (v7 != v8);
  }
}

uint64_t specialized DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = swift_allocObject();
  *(v49 + 16) = a3;
  v14 = *(a2 + 16);
  v15 = v14 >> 62;
  v16 = v14;
  if (v14 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

LABEL_21:
    _Block_copy(a3);
    a3[2](a3, 0);
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_21;
  }

LABEL_3:
  v43 = v11;
  v44 = v9;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v54 = (v17 + 16);
  v55 = v17;
  _Block_copy(a3);
  result = dispatch_group_create();
  v19 = result;
  v47 = v5;
  v46 = v6;
  v45 = v10;
  if (v15)
  {
    result = __CocoaSet.count.getter();
    v20 = v16;
    v21 = result;
    if (!result)
    {
LABEL_19:
      type metadata accessor for OS_dispatch_queue();
      v36 = static OS_dispatch_queue.main.getter();
      v37 = swift_allocObject();
      v37[2] = v55;
      v37[3] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemCollectionCell?) -> ();
      v37[4] = v49;
      v59 = closure #1 in DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)partial apply;
      v60 = v37;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v58 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v58 + 1) = &block_descriptor_109;
      v38 = _Block_copy(&aBlock);

      v39 = v48;
      static DispatchQoS.unspecified.getter();
      v56 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v40 = v44;
      v41 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v38);

      (*(v46 + 8))(v40, v41);
      (*(v43 + 8))(v39, v45);
    }
  }

  else
  {
    v20 = v16;
    v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_19;
    }
  }

  if (v21 >= 1)
  {
    v52 = v20 & 0xC000000000000001;
    swift_beginAccess();
    v22 = v16;
    v23 = 0;
    v51 = &v58;
    v50 = xmmword_249B9A480;
    v53 = v16;
    do
    {
      if (v52)
      {
        v34 = MEMORY[0x24C1FC540](v23, v22);
      }

      else
      {
        v34 = *(v22 + 8 * v23 + 32);
        swift_unknownObjectRetain();
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v35 = swift_allocObject();
      *(v35 + 16) = v50;
      if (!*v54 || (v56 = *v54, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28DOCServiceTransitionProtocol_pMd), __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd), (swift_dynamicCast() & 1) == 0))
      {
        v59 = 0;
        aBlock = 0u;
        v58 = 0u;
      }

      ++v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pSgMd);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      *(v35 + 56) = MEMORY[0x277D837D0];
      *(v35 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v35 + 32) = v24;
      *(v35 + 40) = v26;
      os_log(_:dso:log:type:_:)();

      dispatch_group_enter(v19);
      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      v30 = swift_allocObject();
      v31 = v55;
      *(v30 + 16) = v19;
      *(v30 + 24) = v31;
      v59 = closure #1 in getTransitionController #1 (for:) in DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)partial apply;
      v60 = v30;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v58 = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
      *(&v58 + 1) = &block_descriptor_102;
      v32 = _Block_copy(&aBlock);

      v33 = v19;

      [v34 getTransitionControllerForURL:v29 completionBlock:v32];
      _Block_release(v32);
      swift_unknownObjectRelease();

      v22 = v53;
    }

    while (v21 != v23);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t specialized DOCTransitionableProxy.getTransitionController(forItem:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a2 + 16);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v11 = (v7 + 16);
      v13 = __CocoaSet.count.getter();
      if (!v13)
      {
LABEL_10:
        swift_beginAccess();
        (*(v3 + 16))(v3, *v11);
      }

      v6 = v13;
      if (v13 >= 1)
      {
        v15 = (v7 + 16);
        v16 = v3;
LABEL_4:
        v8 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x24C1FC540](v8, v5);
          }

          else
          {
            v9 = *(v5 + 8 * v8 + 32);
            swift_unknownObjectRetain();
          }

          ++v8;
          aBlock[4] = closure #1 in getTransitionController #1 (for:) in DOCTransitionableProxy.getTransitionController(forItem:completionBlock:)partial apply;
          aBlock[5] = v7;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
          aBlock[3] = &block_descriptor_91_2;
          v10 = _Block_copy(aBlock);

          [v9 getTransitionControllerForItem:a1 completionBlock:v10];
          _Block_release(v10);
          swift_unknownObjectRelease();
        }

        while (v6 != v8);
        v11 = v15;
        v3 = v16;
        goto LABEL_10;
      }

      __break(1u);
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      v16 = a3;
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v15 = (v7 + 16);
      goto LABEL_4;
    }
  }

  v14 = *(v3 + 16);

  return v14(v3, 0);
}

uint64_t specialized DOCTransitionableProxy.getPopoverTracker(for:completionBlock:)(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v41 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v16 = *(a2 + 16);
  if (v16 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

LABEL_15:
    _Block_copy(a3);
    a3[2](a3, 0);
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_15;
  }

LABEL_3:
  v34 = v14;
  v35 = v15;
  v36 = v11;
  v37 = v9;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  _Block_copy(a3);
  result = dispatch_group_create();
  v19 = result;
  v39 = v6;
  v40 = v5;
  v38 = v10;
  if (v16 >> 62)
  {
    result = __CocoaSet.count.getter();
    v20 = result;
    if (!result)
    {
LABEL_13:
      type metadata accessor for OS_dispatch_queue();
      v26 = static OS_dispatch_queue.main.getter();
      v27 = swift_allocObject();
      v28 = v35;
      v27[2] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemCollectionCell?) -> ();
      v27[3] = v28;
      v27[4] = v17;
      v47 = closure #1 in DOCTransitionableProxy.getPopoverTracker(for:completionBlock:)partial apply;
      v48 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v46 = &block_descriptor_86_1;
      v29 = _Block_copy(&aBlock);

      v30 = v34;
      static DispatchQoS.unspecified.getter();
      v42 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v31 = v37;
      v32 = v40;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v29);

      (*(v39 + 8))(v31, v32);
      (*(v36 + 8))(v30, v38);
    }
  }

  else
  {
    v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_13;
    }
  }

  if (v20 >= 1)
  {
    v21 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C1FC540](v21, v16);
      }

      else
      {
        v22 = *(v16 + 8 * v21 + 32);
        swift_unknownObjectRetain();
      }

      ++v21;
      dispatch_group_enter(v19);
      v23 = swift_allocObject();
      *(v23 + 16) = v19;
      *(v23 + 24) = v17;
      v47 = closure #1 in getPopoverTracker #1 (for:) in DOCTransitionableProxy.getPopoverTracker(for:completionBlock:)partial apply;
      v48 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
      v46 = &block_descriptor_79_0;
      v24 = _Block_copy(&aBlock);

      v25 = v19;

      [v22 getPopoverTrackerForItem:v41 completionBlock:v24];
      _Block_release(v24);
      swift_unknownObjectRelease();
    }

    while (v20 != v21);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t specialized DOCTransitionableProxy.getView(for:waitForNewThumbnail:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

LABEL_15:
    v15 = *(a4 + 16);

    return v15(a4, 0, 0);
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_15;
  }

LABEL_3:
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  result = swift_allocObject();
  v8 = result;
  *(result + 16) = 0;
  if (v5 >> 62)
  {
    result = __CocoaSet.count.getter();
    v9 = result;
    if (!result)
    {
LABEL_13:
      swift_beginAccess();
      v14 = *(v6 + 16);
      swift_beginAccess();
      (*(a4 + 16))(a4, v14, *(v8 + 16));
    }
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](v10, v5);
      }

      else
      {
        v11 = *(v5 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      ++v10;
      v12 = swift_allocObject();
      *(v12 + 16) = v6;
      *(v12 + 24) = v8;
      aBlock[4] = closure #1 in getDisplayInformation #1 (for:) in DOCTransitionableProxy.getView(for:waitForNewThumbnail:_:)partial apply;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
      aBlock[3] = &block_descriptor_68_1;
      v13 = _Block_copy(aBlock);

      [v11 getViewFor_waitForNewThumbnail:a1 :{a2 & 1, v13}];
      _Block_release(v13);
      swift_unknownObjectRelease();
    }

    while (v9 != v10);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t specialized DOCTransitionableProxy.getCell(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a2 + 16);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v11 = (v7 + 16);
      v13 = __CocoaSet.count.getter();
      if (!v13)
      {
LABEL_10:
        swift_beginAccess();
        (*(v3 + 16))(v3, *v11);
      }

      v6 = v13;
      if (v13 >= 1)
      {
        v15 = (v7 + 16);
        v16 = v3;
LABEL_4:
        v8 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x24C1FC540](v8, v5);
          }

          else
          {
            v9 = *(v5 + 8 * v8 + 32);
            swift_unknownObjectRetain();
          }

          ++v8;
          aBlock[4] = closure #1 in getDisplayInformation #1 (for:) in DOCTransitionableProxy.getCell(for:_:)partial apply;
          aBlock[5] = v7;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionCell?) -> ();
          aBlock[3] = &block_descriptor_59_2;
          v10 = _Block_copy(aBlock);

          [v9 getCellFor:a1 :v10];
          _Block_release(v10);
          swift_unknownObjectRelease();
        }

        while (v6 != v8);
        v11 = v15;
        v3 = v16;
        goto LABEL_10;
      }

      __break(1u);
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      v16 = a3;
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v15 = (v7 + 16);
      goto LABEL_4;
    }
  }

  v14 = *(v3 + 16);

  return v14(v3, 0);
}

id DOCDocumentSourceIdentifierICloud_CurrentManaged_0()
{
  v0 = FPIsCloudDocsWithFPFSEnabled();
  v1 = MEMORY[0x277D060D0];
  if (!v0)
  {
    v1 = MEMORY[0x277D060E0];
  }

  v2 = *v1;

  return v2;
}

id static DOCDocumentSourceIdentifier.iCloudCurrentManaged.getter(uint64_t (*a1)(void))
{
  result = a1();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id DOCDocumentSourceIdentifierICloud_Current_0()
{
  v0 = FPIsCloudDocsWithFPFSEnabled();
  v1 = MEMORY[0x277D060C8];
  if (!v0)
  {
    v1 = MEMORY[0x277D060D8];
  }

  v2 = *v1;

  return v2;
}

uint64_t UIView.registerForUIPDocumentLandingTraitChanges<A>(options:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  v9 = *a1;
  v10 = v7;
  return a7(a5, a6, &v9, a2, a3, a4);
}

uint64_t UIViewController.registerForTabSwitcherTraitChanges(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, uint64_t *, uint64_t, void *, uint64_t))
{
  ObjectType = swift_getObjectType();
  v12 = 0;
  v13 = 1;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = ObjectType;

  a5(1, 0, &v12, a4, v10, ObjectType);

  return swift_unknownObjectRelease();
}

uint64_t UIViewController.registerForUIPDocumentLandingTraitChanges(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t, uint64_t *, uint64_t, void *, uint64_t))
{
  ObjectType = swift_getObjectType();
  v12 = 0;
  v13 = 1;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = ObjectType;

  a5(0, 1, &v12, a4, v10, ObjectType);

  return swift_unknownObjectRelease();
}

uint64_t DOCMutableSidebarSection.__allocating_init(kind:title:sourceVisibilityController:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  DOCMutableSidebarSection.init(kind:title:sourceVisibilityController:)(a1, a2, a3, a4);
  return v8;
}

uint64_t DOCSidebarSectionKind.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7368564;
  v2 = 0x6E6F697461636F6CLL;
  v3 = 0x73726576726573;
  if (a1 != 4)
  {
    v3 = 1936154996;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x796C746E65636572;
  if (a1 != 1)
  {
    v4 = 0x657469726F766166;
  }

  if (a1)
  {
    v1 = v4;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCSidebarSectionKind(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = *a2;
  v5 = 0x6E6F697461636F6CLL;
  v6 = 0xE900000000000073;
  v7 = 0xE700000000000000;
  v8 = 0x73726576726573;
  if (v2 != 4)
  {
    v8 = 1936154996;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x796C746E65636572;
  v10 = 0xEC00000064657355;
  if (v2 != 1)
  {
    v9 = 0x657469726F766166;
    v10 = 0xE900000000000073;
  }

  if (*a1)
  {
    v3 = v10;
  }

  else
  {
    v9 = 7368564;
  }

  if (*a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (*a2 <= 2u)
  {
    if (!*a2)
    {
      v13 = 0xE300000000000000;
      if (v11 != 7368564)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (v4 == 1)
    {
      v13 = 0xEC00000064657355;
      if (v11 != 0x796C746E65636572)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v14 = 0x657469726F766166;
LABEL_29:
    v13 = 0xE900000000000073;
    if (v11 != v14)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v4 == 3)
  {
    v14 = 0x6E6F697461636F6CLL;
    goto LABEL_29;
  }

  if (v4 == 4)
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x73726576726573)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v11 != 1936154996)
    {
LABEL_34:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

LABEL_32:
  if (v12 != v13)
  {
    goto LABEL_34;
  }

  v15 = 1;
LABEL_35:

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCSidebarSectionKind()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCSidebarSectionKind()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCSidebarSectionKind()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCSidebarSectionKind@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DOCSidebarSectionKind.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCSidebarSectionKind(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368564;
  v5 = 0x6E6F697461636F6CLL;
  v6 = 0xE900000000000073;
  v7 = 0xE700000000000000;
  v8 = 0x73726576726573;
  if (v2 != 4)
  {
    v8 = 1936154996;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEC00000064657355;
  v10 = 0x796C746E65636572;
  if (v2 != 1)
  {
    v10 = 0x657469726F766166;
    v9 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t DOCMutableSidebarSection.title.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DOCMutableSidebarSection.title.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t DOCMutableSidebarSection.expanded.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t DOCMutableSidebarSection.deletable.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 49) = a1;
  return result;
}

uint64_t DOCMutableSidebarSection.deleteConfirmationTitle.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t DOCMutableSidebarSection.deleteConfirmationTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t DOCMutableSidebarSection.movable.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t DOCMutableSidebarSection.showsHeader.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 73) = a1;
  return result;
}

id DOCMutableSidebarSection.init(kind:title:sourceVisibilityController:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  *(v4 + 48) = 1;
  result = _DocumentManagerBundle();
  if (result)
  {
    v10 = result;
    v16._object = 0x8000000249BC9970;
    v11._countAndFlagsBits = 0x6574656C6544;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v11._object = 0xE600000000000000;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0xD00000000000001BLL;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v16);

    *(v4 + 56) = v14;
    *(v4 + 72) = 256;
    v15 = MEMORY[0x277D84F90];
    *(v4 + 16) = a1;
    *(v4 + 32) = a2;
    *(v4 + 40) = a3;
    *(v4 + 80) = a4;
    *(v4 + 88) = v15;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCMutableSidebarSection.getItems(forEditingMode:)(char a1)
{
  if (a1 == 2)
  {
    swift_beginAccess();

    return;
  }

  v1 = (*(*v42 + 312))();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v38 = *MEMORY[0x277D060F0];
    v37 = *MEMORY[0x277D05DD0];
    v34 = v3 - 1;
    v35 = v1 + 72;
    v5 = MEMORY[0x277D84F90];
    v40 = *(v1 + 16);
    v39 = v1;
    do
    {
      v36 = v5;
      v6 = (v35 + 48 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }

        v9 = *(v6 - 5);
        v10 = *(v6 - 4);
        v11 = *(v6 - 3);
        v44 = *(v6 - 1);
        v45 = *(v6 - 2);
        v12 = *v6;
        v43 = *v6;
        if (v12 != 1)
        {
          break;
        }

        v13 = v9;
        v14 = [v13 status];
        if (v14 == 1)
        {
          v41 = v13;
          v15 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(1);
          v16 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v15);

          v17 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(0);
          v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v17);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_249BA08C0;
          v20 = DOCDocumentSourceIdentifierICloud_Current();
          if (!v20)
          {
            goto LABEL_37;
          }

          *(inited + 32) = v20;
          *(inited + 40) = v38;
          *(inited + 48) = v37;
          v21 = v38;
          v22 = v37;
          v23 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo27DOCDocumentSourceIdentifiera_Tt0g5Tf4g_n(inited);
          swift_setDeallocating();
          type metadata accessor for DOCDocumentSourceIdentifier(0);
          swift_arrayDestroy();
          specialized Set.union<A>(_:)(v18, v16);
          specialized Set.union<A>(_:)(v23, v24);
          v26 = v25;
          v27 = [v41 identifier];
          v28 = specialized Set.contains(_:)(v27, v26);

          v2 = v39;
          v3 = v40;
          if ((v28 & 1) == 0 && [v41 status] && objc_msgSend(v41, sel_status) != 2)
          {
LABEL_18:
            v5 = v36;
            goto LABEL_30;
          }
        }

        else
        {
          if (v14)
          {
            v8 = v14 == 2;
          }

          else
          {
            v8 = 1;
          }

          if (v8)
          {
            goto LABEL_18;
          }
        }

        ++v7;
        outlined consume of DOCSidebarItem(v9, v10, v11, v45, v44, 1u);
        v6 += 48;
        if (v3 == v7)
        {
          goto LABEL_35;
        }
      }

      if (*v6 > 3u)
      {
        v5 = v36;
        if (v12 == 4)
        {
          goto LABEL_27;
        }

        if (v12 != 5)
        {
          if (v11 | v10 | v9 | v45 | v44)
          {
            v9 = 1;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v5 = v36;
        if (!*v6 || v12 == 2)
        {
LABEL_27:
          v30 = v9;
          goto LABEL_30;
        }

        v29 = v9;
      }

LABEL_30:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
      }

      v32 = *(v5 + 16);
      v31 = *(v5 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
      }

      v4 = v7 + 1;
      *(v5 + 16) = v32 + 1;
      v33 = v5 + 48 * v32;
      *(v33 + 32) = v9;
      *(v33 + 40) = v10;
      *(v33 + 48) = v11;
      *(v33 + 56) = v45;
      *(v33 + 64) = v44;
      *(v33 + 72) = v43;
      v3 = v40;
    }

    while (v34 != v7);
  }

LABEL_35:
}

uint64_t DOCMutableSidebarSection.PersistableState.init(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  LOBYTE(a2) = (*(a2 + 32))(ObjectType, a2);
  swift_unknownObjectRelease();
  return a2 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DOCMutableSidebarSection.PersistableState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465646E61707865 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCMutableSidebarSection.PersistableState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DOCMutableSidebarSection.PersistableState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DOCMutableSidebarSection.PersistableState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26DocumentManagerExecutables24DOCMutableSidebarSectionC16PersistableStateV10CodingKeys33_F2BAF13BB210DFB722544048B22BAAD7LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t DOCMutableSidebarSection.PersistableState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables24DOCMutableSidebarSectionC16PersistableStateV10CodingKeys33_F2BAF13BB210DFB722544048B22BAAD7LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8 & 1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance DOCMutableSidebarSection.PersistableState@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables24DOCMutableSidebarSectionC16PersistableStateV10CodingKeys33_F2BAF13BB210DFB722544048B22BAAD7LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10 & 1;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance DOCMutableSidebarSection.PersistableState(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26DocumentManagerExecutables24DOCMutableSidebarSectionC16PersistableStateV10CodingKeys33_F2BAF13BB210DFB722544048B22BAAD7LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t DOCMutableSidebarSection.persistentState.getter()
{
  (*(*v0 + 184))();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v1;
}

uint64_t DOCMutableSidebarSection.isEqual(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  ObjectType = swift_getObjectType();
  v4 = (*(a2 + 8))(ObjectType, a2);
  v5 = static NSObject.== infix(_:_:)();

  return v5 & 1;
}

uint64_t DOCMutableSidebarSection.asHashable()()
{
  v1 = *(v0 + 24);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSUUID);
  lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type NSUUID and conformance NSObject, &lazy cache variable for type metadata for NSUUID);
  v2 = v1;
  return AnyHashable.init<A>(_:)();
}

uint64_t DOCMutableSidebarSection.restorePersistentState(_:)()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  return (*(*v0 + 192))(v2);
}

void DOCMutableSidebarSection.absoluteIndex(fromIndex:editingMode:)(uint64_t a1, char a2)
{
  if (a2 != 2)
  {
    swift_beginAccess();
    if (*(*(v2 + 88) + 16))
    {
      v4 = 0;
      v5 = *MEMORY[0x277D060F0];
      v35 = *MEMORY[0x277D05DD0];
      v6 = a1 + 1;
      v7 = 0;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (v8)
        {
          return;
        }

        v9 = *(v2 + 88);
        if (v7 >= *(v9 + 16))
        {
          return;
        }

        v10 = v9 + 48 * v7;
        if (*(v10 + 72) <= 1u && *(v10 + 72))
        {
          v37 = *(v10 + 40);
          v38 = *(v10 + 48);
          v12 = *(v10 + 64);
          v39 = *(v10 + 56);
          v36 = *(v10 + 32);
          v13 = v36;
          v14 = [v13 status];
          if (v14 == 2)
          {
            goto LABEL_15;
          }

          if (v14 != 1)
          {
            if (v14)
            {
              goto LABEL_21;
            }

LABEL_15:
            outlined consume of DOCSidebarItem(v36, v37, v38, v39, v12, 1u);
            goto LABEL_8;
          }

          v33 = v12;
          v34 = v2;
          v15 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(1);
          v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v15);

          v16 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(0);
          v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v16);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_249BA08C0;
          v19 = DOCDocumentSourceIdentifierICloud_Current();
          if (!v19)
          {
            goto LABEL_25;
          }

          *(inited + 32) = v19;
          *(inited + 40) = v5;
          *(inited + 48) = v35;
          v20 = v5;
          v21 = v35;
          v22 = v5;
          v23 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo27DOCDocumentSourceIdentifiera_Tt0g5Tf4g_n(inited);
          swift_setDeallocating();
          type metadata accessor for DOCDocumentSourceIdentifier(0);
          swift_arrayDestroy();
          specialized Set.union<A>(_:)(v17, v32);
          v25 = v24;
          v26 = v23;
          v5 = v22;
          specialized Set.union<A>(_:)(v26, v25);
          v28 = v27;
          v29 = [v13 identifier];
          v30 = specialized Set.contains(_:)(v29, v28);

          v12 = v33;
          v2 = v34;
          if ((v30 & 1) != 0 || ![v13 status])
          {
LABEL_21:
            outlined consume of DOCSidebarItem(v36, v37, v38, v39, v12, 1u);
LABEL_22:
            ++v7;
            goto LABEL_4;
          }

          v31 = [v13 status];
          outlined consume of DOCSidebarItem(v36, v37, v38, v39, v33, 1u);
          if (v31 == 2)
          {
            goto LABEL_22;
          }
        }

LABEL_8:
        v11 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return;
        }

        ++v4;
        v8 = 1;
        if (v6 != v4)
        {
          v4 = v11;
          ++v7;
          goto LABEL_4;
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCMutableSidebarSection.setItems(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  v1[11]._rawValue = a1._rawValue;
}

uint64_t DOCMutableSidebarSection.removeItem(_:editingMode:)(uint64_t a1)
{
  swift_beginAccess();
  outlined init with copy of DOCSidebarItem(a1, v7);
  specialized MutableCollection._halfStablePartition(isSuffixElement:)((v1 + 88), a1);
  v4 = v3;
  result = outlined destroy of DOCSidebarItem(a1);
  v6 = *(*(v1 + 88) + 16);
  if (v6 < v4)
  {
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v4, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t DOCMutableSidebarSection.insertItem(_:at:editingMode:)(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *a1;
  v11 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  DOCMutableSidebarSection.absoluteIndex(fromIndex:editingMode:)(a2, a3);
  v8 = v7;
  result = swift_beginAccess();
  if (*(*(v3 + 88) + 16) < v8)
  {
    __break(1u);
  }

  else if ((v8 & 0x8000000000000000) == 0)
  {
    v13[0] = v10;
    v13[1] = v11;
    v14 = v5;
    v15 = v6;
    outlined init with copy of DOCSidebarItem(a1, v12);
    specialized Array.replaceSubrange<A>(_:with:)(v8, v8, v13);
    swift_endAccess();
    return outlined destroy of DOCSidebarItem(a1);
  }

  __break(1u);
  return result;
}

void DOCMutableSidebarSection.commit(newOrdering:editingMode:sourceReorderHandler:completion:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v9 = *(a1 + 16);
  swift_beginAccess();
  if (v9)
  {
    v10 = 0;
    v11 = a1 + 32;
    v100 = *MEMORY[0x277D060F0];
    v99 = *MEMORY[0x277D05DD0];
    v103 = a2;
    v101 = a1 + 32;
    v102 = v9;
    do
    {
      v13 = (v11 + 48 * v10);
      v14 = v13[1];
      v127 = *v13;
      v128[0] = v14;
      *(v128 + 9) = *(v13 + 25);
      v15 = *(*v6 + 320);
      outlined init with copy of DOCSidebarItem(&v127, aBlock);
      v16 = v15(a2);
      v17 = specialized Collection<>.firstIndex(of:)(&v127, v16);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        if (a2 == 2)
        {
          v20 = v10;
          goto LABEL_58;
        }

        v20 = v10;
        if (*(v6[11] + 16))
        {
          v21 = 0;
          v22 = v17 + 1;
          v17 = 0;
          v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
LABEL_11:
          v24 = 48 * v17;
          v25 = 1;
          while (1)
          {
            v26 = v6[11];
            v27 = *(v26 + 16);
            if ((v25 & 1) == 0 || v17 >= v27)
            {
              if (v27)
              {
                v20 = 0;
                v53 = 0;
                v54 = v10 + 1;
                v108 = v10;
LABEL_35:
                v55 = 0;
                v56 = 48 * v20;
                while (1)
                {
                  if (v55)
                  {
                    goto LABEL_57;
                  }

                  v57 = v6[11];
                  if (v20 >= *(v57 + 16))
                  {
                    goto LABEL_57;
                  }

                  v58 = v57 + v56;
                  if (*(v58 + 72) <= 1u && *(v58 + 72))
                  {
                    v115 = *(v58 + 40);
                    v117 = *(v58 + 48);
                    v60 = *(v58 + 64);
                    v119 = *(v58 + 56);
                    v113 = *(v58 + 32);
                    v107 = v113;
                    v61 = [v107 v23[305]];
                    if (v61)
                    {
                      v111 = v20;
                      if (v61 == 1)
                      {
                        v62 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(1);
                        v105 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v62);

                        v63 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(0);
                        v64 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v63);

                        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd);
                        inited = swift_initStackObject();
                        *(inited + 16) = xmmword_249BA08C0;
                        v66 = DOCDocumentSourceIdentifierICloud_Current();
                        if (!v66)
                        {
                          goto LABEL_85;
                        }

                        *(inited + 32) = v66;
                        *(inited + 40) = v100;
                        *(inited + 48) = v99;
                        v67 = v100;
                        v68 = v99;
                        v69 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo27DOCDocumentSourceIdentifiera_Tt0g5Tf4g_n(inited);
                        swift_setDeallocating();
                        type metadata accessor for DOCDocumentSourceIdentifier(0);
                        swift_arrayDestroy();
                        specialized Set.union<A>(_:)(v64, v105);
                        specialized Set.union<A>(_:)(v69, v70);
                        v72 = v71;
                        v73 = [v107 identifier];
                        LOBYTE(v69) = specialized Set.contains(_:)(v73, v72);

                        v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
                        if ((v69 & 1) != 0 || ![v107 status])
                        {
LABEL_55:
                          outlined consume of DOCSidebarItem(v113, v115, v117, v119, v60, 1u);
                          v10 = v108;
                          v20 = v111;
                          goto LABEL_54;
                        }

                        v74 = [v107 status];
                        outlined consume of DOCSidebarItem(v113, v115, v117, v119, v60, 1u);
                        v52 = v74 == 2;
                        v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
                        v10 = v108;
                        v20 = v111;
                        if (v52)
                        {
                          goto LABEL_54;
                        }
                      }

                      else
                      {
                        if (v61 != 2)
                        {
                          goto LABEL_55;
                        }

                        outlined consume of DOCSidebarItem(v113, v115, v117, v119, v60, 1u);
                        v10 = v108;
                      }
                    }

                    else
                    {
                      outlined consume of DOCSidebarItem(v113, v115, v117, v119, v60, 1u);
                    }
                  }

                  v59 = v53 + 1;
                  if (__OFADD__(v53, 1))
                  {
                    goto LABEL_78;
                  }

                  ++v53;
                  v55 = 1;
                  if (v54 != v53)
                  {
                    v53 = v59;
LABEL_54:
                    ++v20;
                    goto LABEL_35;
                  }
                }
              }

              v20 = v10;
LABEL_57:
              a2 = v103;
              v11 = v101;
              v9 = v102;
              break;
            }

            v28 = (v26 + v24);
            v29 = *(v26 + v24 + 72);
            if (v29 <= 1 && v29)
            {
              v114 = v28[5];
              v116 = v28[6];
              v31 = v28[8];
              v118 = v28[7];
              v112 = v28[4];
              v32 = v112;
              v33 = [v32 v23[305]];
              if (!v33)
              {
                v34 = v112;
                v35 = v114;
                v36 = v116;
                v37 = v118;
                v38 = v31;
LABEL_30:
                outlined consume of DOCSidebarItem(v34, v35, v36, v37, v38, 1u);
                goto LABEL_15;
              }

              v110 = v31;
              if (v33 != 1)
              {
                if (v33 != 2)
                {
                  goto LABEL_31;
                }

                v34 = v112;
                v35 = v114;
                v36 = v116;
                v37 = v118;
                v38 = v31;
                goto LABEL_30;
              }

              v39 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(1);
              v106 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v39);

              v40 = DOCSourceVisibilityController.loadStoredIdentifiers(scope:)(0);
              v104 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(v40);

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd);
              v41 = swift_initStackObject();
              *(v41 + 16) = xmmword_249BA08C0;
              v42 = DOCDocumentSourceIdentifierICloud_Current();
              if (!v42)
              {
                __break(1u);
LABEL_85:
                __break(1u);
                return;
              }

              *(v41 + 32) = v42;
              *(v41 + 40) = v100;
              *(v41 + 48) = v99;
              v43 = v100;
              v44 = v99;
              v45 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo27DOCDocumentSourceIdentifiera_Tt0g5Tf4g_n(v41);
              swift_setDeallocating();
              type metadata accessor for DOCDocumentSourceIdentifier(0);
              swift_arrayDestroy();
              specialized Set.union<A>(_:)(v104, v106);
              specialized Set.union<A>(_:)(v45, v46);
              v48 = v47;
              v49 = [v32 identifier];
              v50 = specialized Set.contains(_:)(v49, v48);

              v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
              if ((v50 & 1) != 0 || ![v32 status])
              {
LABEL_31:
                outlined consume of DOCSidebarItem(v112, v114, v116, v118, v110, 1u);
LABEL_32:
                ++v17;
                goto LABEL_11;
              }

              v51 = [v32 status];
              outlined consume of DOCSidebarItem(v112, v114, v116, v118, v110, 1u);
              v52 = v51 == 2;
              v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
              if (v52)
              {
                goto LABEL_32;
              }
            }

LABEL_15:
            v30 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
              goto LABEL_79;
            }

            v25 = 0;
            if (v22 != ++v21)
            {
              v21 = v30;
              ++v17;
              goto LABEL_11;
            }
          }
        }

LABEL_58:
        if (v17 != v20)
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            if (__CocoaSet.count.getter() <= 0)
            {
              goto LABEL_83;
            }

LABEL_75:
            v91 = [objc_opt_self() sharedManager];
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v93 = swift_allocObject();
            *(v93 + 16) = a4;
            *(v93 + 24) = a5;
            aBlock[4] = partial apply for closure #1 in DOCBrowserHistoryDataSource.refreshUnderlyingNodesIfNecessary(locationMap:_:);
            aBlock[5] = v93;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
            aBlock[3] = &block_descriptor_82;
            v94 = _Block_copy(aBlock);

            [v91 updateFavoritesRanksToMatchOrderedFavorites:isa completion:v94];
            _Block_release(v94);

            return;
          }

          v75 = v6[11];
          if (v17 >= *(v75 + 16))
          {
            goto LABEL_80;
          }

          v109 = v10;
          v76 = v75 + 48 * v17;
          v77 = *(v76 + 32);
          v78 = *(v76 + 40);
          v79 = *(v76 + 48);
          v80 = *(v76 + 56);
          v81 = *(v76 + 64);
          v82 = *(v76 + 72);
          swift_beginAccess();
          outlined copy of DOCSidebarItem(v77, v78, v79, v80, v81, v82);
          specialized Array.remove(at:)(v17, v121);
          outlined destroy of DOCSidebarItem(v121);
          if (*(v6[11] + 16) < v20)
          {
            goto LABEL_81;
          }

          *&v122 = v77;
          *(&v122 + 1) = v78;
          v123 = v79;
          v124 = v80;
          v125 = v81;
          v126 = v82;
          outlined copy of DOCSidebarItem(v77, v78, v79, v80, v81, v82);
          specialized Array.replaceSubrange<A>(_:with:)(v20, v20, &v122);
          swift_endAccess();
          outlined consume of DOCSidebarItem(v77, v78, v79, v80, v81, v82);
          if (v82 == 2)
          {
            v12 = [objc_opt_self() sharedInstance];
            [v12 moveTag:v77 toIndex:v20];
          }

          else if (v82 == 1)
          {
            [a3 moveSource:v77 toIndex:v20];
          }

          outlined consume of DOCSidebarItem(v77, v78, v79, v80, v81, v82);
          a2 = v103;
          v11 = v101;
          v9 = v102;
          v10 = v109;
        }
      }

      ++v10;
      outlined destroy of DOCSidebarItem(&v127);
    }

    while (v10 != v9);
  }

  swift_beginAccess();
  v83 = v6[11];
  v84 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v85 = *(v83 + 16);

  v86 = 0;
LABEL_66:
  v87 = v83 - 16 + 48 * v86;
  while (v85 != v86)
  {
    if (v86 >= *(v83 + 16))
    {
      goto LABEL_77;
    }

    ++v86;
    v88 = (v87 + 48);
    v89 = *(v87 + 88);
    v87 += 48;
    if (!v89)
    {
      v90 = *v88;
      MEMORY[0x24C1FB090]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v84 = aBlock[0];
      goto LABEL_66;
    }
  }

  if (v84 >> 62)
  {
    goto LABEL_82;
  }

  if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
    goto LABEL_75;
  }

LABEL_83:

  a4(v95);
}

uint64_t DOCMutableSidebarSection.deinit()
{

  return v0;
}

uint64_t DOCMutableSidebarSection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized Set.union<A>(_:)(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    specialized Set._Variant.insert(_:)(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void specialized Set.union<A>(_:)(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
    lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type UITouch and conformance NSObject, &lazy cache variable for type metadata for UITouch);
    Set.Iterator.init(_cocoa:)();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      outlined consume of Set<UITouch>.Iterator._Variant();
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  for (i = (a1 + 32); ; i += 3)
  {
    v4 = i[1];
    v12 = *i;
    v13[0] = v4;
    *(v13 + 9) = *(i + 25);
    outlined init with copy of DOCSidebarItem(&v12, &v11);
    v5 = DOCSidebarItem.hashComparableValue.getter();
    v7 = v6;
    if (v5 == DOCSidebarItem.hashComparableValue.getter() && v7 == v8)
    {
      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined destroy of DOCSidebarItem(&v12);
    if (v9)
    {
      return v2;
    }

    if (v1 == ++v2)
    {
      return 0;
    }
  }

  outlined destroy of DOCSidebarItem(&v12);
  return v2;
}

void specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = specialized Collection.firstIndex(where:)(*a1);
  if (!v2 && (v7 & 1) == 0)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      v11 = (v5 + 16);
      v10 = *(v5 + 16);
      if (v9 == v10)
      {
        return;
      }

      v41 = a1;
      v53 = a2;
      v12 = 48 * v6 + 120;
      while (v9 < v10)
      {
        v13 = *(v5 + v12 - 40);
        v14 = *(v5 + v12 - 24);
        *&v52[9] = *(v5 + v12 - 15);
        v51 = v13;
        *v52 = v14;
        outlined init with copy of DOCSidebarItem(&v51, v50);
        v15 = DOCSidebarItem.hashComparableValue.getter();
        v17 = v16;
        if (v15 == DOCSidebarItem.hashComparableValue.getter() && v17 == v18)
        {

          outlined destroy of DOCSidebarItem(&v51);
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          outlined destroy of DOCSidebarItem(&v51);
          if ((v19 & 1) == 0)
          {
            if (v9 != v8)
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_23;
              }

              if (v8 >= *v11)
              {
                goto LABEL_24;
              }

              if (v9 >= *v11)
              {
                goto LABEL_25;
              }

              v48 = v8;
              v49 = 48 * v8;
              v20 = v5 + 32 + 48 * v8;
              v21 = *(v5 + v12 - 40);
              v23 = *(v5 + v12 - 32);
              v22 = *(v5 + v12 - 24);
              v24 = *(v5 + v12 - 16);
              v25 = *(v5 + v12 - 8);
              v26 = *(v5 + v12);
              v42 = *v20;
              v43 = *(v20 + 32);
              v47 = *(v20 + 8);
              v44 = *(v20 + 24);
              v45 = *(v20 + 16);
              v46 = *(v20 + 40);
              outlined copy of DOCSidebarItem(*v20, v47, v45, v44, v43, v46);
              outlined copy of DOCSidebarItem(v21, v23, v22, v24, v25, v26);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
              }

              v27 = v5 + v49;
              v28 = *(v5 + v49 + 32);
              v29 = *(v5 + v49 + 40);
              v30 = *(v5 + v49 + 48);
              v31 = *(v5 + v49 + 56);
              v32 = *(v5 + v49 + 64);
              *(v27 + 32) = v21;
              *(v27 + 40) = v23;
              *(v27 + 48) = v22;
              *(v27 + 56) = v24;
              *(v27 + 64) = v25;
              v33 = *(v5 + v49 + 72);
              *(v27 + 72) = v26;
              outlined consume of DOCSidebarItem(v28, v29, v30, v31, v32, v33);
              v8 = v48;
              if (v9 >= *(v5 + 16))
              {
                goto LABEL_26;
              }

              v34 = (v5 + v12);
              v35 = *(v5 + v12 - 40);
              v36 = *(v5 + v12 - 32);
              v37 = *(v5 + v12 - 24);
              v38 = *(v5 + v12 - 16);
              v39 = *(v5 + v12 - 8);
              *(v34 - 5) = v42;
              *(v34 - 4) = v47;
              *(v34 - 3) = v45;
              *(v34 - 2) = v44;
              *(v34 - 1) = v43;
              v40 = *(v5 + v12);
              *v34 = v46;
              outlined consume of DOCSidebarItem(v35, v36, v37, v38, v39, v40);
              *v41 = v5;
            }

            ++v8;
          }
        }

        ++v9;
        v11 = (v5 + 16);
        v10 = *(v5 + 16);
        v12 += 48;
        if (v9 == v10)
        {
          return;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);
  }
}

unint64_t specialized DOCSidebarSectionKind.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCSidebarSectionKind.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState.CodingKeys and conformance DOCMutableSidebarSection.PersistableState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState()
{
  result = lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState;
  if (!lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState;
  if (!lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCMutableSidebarSection.PersistableState and conformance DOCMutableSidebarSection.PersistableState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DOCSidebarSectionKind] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DOCSidebarSectionKind] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DOCSidebarSectionKind] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables21DOCSidebarSectionKindOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DOCSidebarSectionKind] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarSectionKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCSidebarSectionKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of DOCMutableSidebarSection.removeItem(_:editingMode:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*v1 + 400);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  return v4(v7);
}

uint64_t dispatch thunk of DOCMutableSidebarSection.insertItem(_:at:editingMode:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*v1 + 408);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  return v4(v7);
}

uint64_t static DOCFileOperation.mockTestable(withProgress:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v40 = type metadata accessor for Date();
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v2);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DOCProgressProvidingOperationIconType();
  MEMORY[0x28223BE20](v45, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for UTType();
  v48 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  (*(v20 + 8))(v23, v19);
  v28 = v40;
  v27 = v41;
  NSProgress.iconUTType.getter(v18);
  v49 = v24;
  v50 = v26;
  v29 = v42;
  AnyHashable.init<A>(_:)();
  Date.init(timeIntervalSinceNow:)();
  v30 = v43;
  (*(v43 + 56))(v14, 0, 1, v28);
  v31 = *(v48 + 16);
  v44 = v15;
  v31(v6, v18, v15);
  v47 = v6;
  v32 = v30;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of AnyHashable(v51, v29);
  *(v29 + 40) = v27;
  outlined init with copy of DOCGridLayout.Spec?(v14, v11, &_s10Foundation4DateVSgMd);
  v33 = *(v30 + 48);
  v45 = v11;
  LODWORD(v30) = v33(v11, 1, v28);
  v34 = v27;
  if (v30 == 1)
  {
    v35 = v46;
    Date.init(timeIntervalSinceNow:)();
    outlined destroy of CharacterSet?(v14, &_s10Foundation4DateVSgMd);
    outlined destroy of AnyHashable(v51);
    (*(v48 + 8))(v18, v44);
    v36 = v45;
    v37 = v35;
    if (v33(v45, 1, v28) != 1)
    {
      outlined destroy of CharacterSet?(v36, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v14, &_s10Foundation4DateVSgMd);
    outlined destroy of AnyHashable(v51);
    (*(v48 + 8))(v18, v44);
    v37 = v46;
    (*(v32 + 32))(v46, v45, v28);
  }

  v38 = type metadata accessor for DOCFileOperation();
  (*(v32 + 32))(v29 + *(v38 + 24), v37, v28);
  return outlined init with take of DOCProgressProvidingOperationIconType(v47, v29 + *(v38 + 28));
}

uint64_t one-time initialization function for prepareForTesting()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000028, 0x8000000249BE6FC0);
  static DOCProgressTestability.prepareForTesting = result;
  return result;
}

uint64_t one-time initialization function for readyForTesting()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000026, 0x8000000249BE6F90);
  static DOCProgressTestability.readyForTesting = result;
  return result;
}

uint64_t static DOCProgressTestability.resetProgressTestabilityState()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;

  specialized static DOCProgressTestability.resetProgressTestabilityState(then:)(partial apply for closure #1 in static DOCProgressTestability.resetProgressTestabilityState(), v5);

  v6 = [objc_opt_self() currentRunLoop];
  Current = CFAbsoluteTimeGetCurrent();
  swift_beginAccess();
  if ((*(v5 + 16) & 1) == 0)
  {
    v8 = (v1 + 8);
    do
    {
      if (CFAbsoluteTimeGetCurrent() - Current > 30.0)
      {
        break;
      }

      Date.init(timeIntervalSinceNow:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*v8)(v4, v0);
      [v6 runUntilDate_];
    }

    while ((*(v5 + 16) & 1) == 0);
  }

  v10 = *(v5 + 16);

  return v10;
}

uint64_t partial apply for closure #1 in static DOCProgressTestability.resetProgressTestabilityState()()
{
  result = swift_beginAccess();
  *(v0 + 16) = 1;
  return result;
}

uint64_t closure #1 in static DOCProgressTestability.resetProgressTestabilityState(then:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(a2 + 16, &v8, &_sypSgMd);
  v5 = *(&v9 + 1);
  result = outlined destroy of CharacterSet?(&v8, &_sypSgMd);
  if (v5)
  {
    v8 = 0u;
    v9 = 0u;
    swift_beginAccess();
    outlined assign with take of Any?(&v8, a2 + 16);
    v7 = specialized static DOCProgressTestability.resetTestableURLs()();
    return a3(v7);
  }

  return result;
}

uint64_t closure #2 in static DOCProgressTestability._testableURLs.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v8, a1, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  URL.init(string:relativeTo:)();
  outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd);
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    return (*(v13 + 32))(a2, v11, v12);
  }

  __break(1u);
  return result;
}

uint64_t specialized static DOCProgressTestability._testableURLs.getter()
{
  v50 = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v41 - v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = MEMORY[0x24C1FAD20](0xD00000000000001FLL, 0x8000000249BE6F50);
  v12 = [v10 containerURLForSecurityApplicationGroupIdentifier_];

  if (!v12)
  {
    __break(1u);
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = URL.path.getter();
  v15 = v14;
  v16 = *(v1 + 8);
  v44 = v1 + 8;
  v42 = v16;
  v16(v8, v0);
  v48 = v13;
  v49 = v15;

  MEMORY[0x24C1FAEA0](0xD000000000000019, 0x8000000249BE6F70);

  v18 = v48;
  v17 = v49;
  v19 = [v9 defaultManager];
  v20 = MEMORY[0x24C1FAD20](v18, v17);
  v21 = [v19 fileExistsAtPath_];

  v45 = v0;
  v43 = v5;
  v41[2] = v18;
  v41[3] = v17;
  if ((v21 & 1) == 0)
  {
    v22 = [v9 defaultManager];
    v23 = MEMORY[0x24C1FAD20](v18, v17);
    v48 = 0;
    v24 = [v22 createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:0 error:&v48];

    if (v24)
    {
      v25 = v48;
    }

    else
    {
      v26 = v48;
      v27 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v41[1] = 0;
  v47 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 10, 0);
  v28 = 0;
  v29 = v47;
  do
  {
    v48 = 0x656C694674736554;
    v49 = 0xE90000000000002DLL;
    v46 = v28;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v30);

    MEMORY[0x24C1FAEA0](1717858350, 0xE400000000000000);
    v32 = v48;
    v31 = v49;
    v47 = v29;
    v34 = *(v29 + 16);
    v33 = *(v29 + 24);
    if (v34 >= v33 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
      v29 = v47;
    }

    ++v28;
    *(v29 + 16) = v34 + 1;
    v35 = v29 + 16 * v34;
    *(v35 + 32) = v32;
    *(v35 + 40) = v31;
  }

  while (v28 != 10);
  v36 = v43;
  URL.init(fileURLWithPath:)();

  MEMORY[0x28223BE20](v37, v38);
  v41[-2] = v36;
  v39 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_10Foundation3URLVs5NeverOTg5(partial apply for closure #2 in static DOCProgressTestability._testableURLs.getter, &v41[-4], v29);

  v42(v36, v45);
  return v39;
}

uint64_t specialized static DOCProgressTestability.resetProgressTestabilityState(then:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  if (one-time initialization token for readyForTesting != -1)
  {
    swift_once();
  }

  v6 = static DOCProgressTestability.readyForTesting;
  v7 = [objc_opt_self() mainQueue];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = a1;
  v8[4] = a2;
  v14 = partial apply for closure #1 in static DOCProgressTestability.resetProgressTestabilityState(then:);
  v15 = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  ObjectType = &block_descriptor_83;
  v9 = _Block_copy(aBlock);

  v10 = [v4 addObserverForName:v6 object:0 queue:v7 usingBlock:v9];
  _Block_release(v9);

  ObjectType = swift_getObjectType();
  aBlock[0] = v10;
  swift_beginAccess();
  outlined assign with take of Any?(aBlock, v5 + 16);
  if (one-time initialization token for prepareForTesting != -1)
  {
    swift_once();
  }

  [v4 postNotificationName:static DOCProgressTestability.prepareForTesting object:0];
}

uint64_t specialized static DOCProgressTestability.resetTestableURLs()()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = specialized static DOCProgressTestability._testableURLs.getter();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = objc_opt_self();
    v9 = *(v1 + 16);
    v8 = v1 + 16;
    v24 = v9;
    v25 = v7;
    v10 = *(v8 + 64);
    v23 = v5;
    v11 = v5 + ((v10 + 32) & ~v10);
    v12 = *(v8 + 56);
    v13 = (v8 - 8);
    do
    {
      v15 = v8;
      v24(v4, v11, v0);
      v16 = [v25 defaultManager];
      v17 = URL.path.getter();
      v18 = MEMORY[0x24C1FAD20](v17);

      v26[0] = 0;
      v19 = [v16 removeItemAtPath:v18 error:v26];

      if (v19)
      {
        v14 = v26[0];
      }

      else
      {
        v20 = v26[0];
        v21 = _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      (*v13)(v4, v0);
      v11 += v12;
      --v6;
      v8 = v15;
    }

    while (v6);
  }
}

Swift::Int DOCAPIRateLimiterAPI.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t DOCAPIRateLimiter.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0x3FF0000000000000;
  return result;
}

uint64_t static DOCAPIRateLimiter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static DOCAPIRateLimiter.shared.setter(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCAPIRateLimiter.shared = a1;
}

uint64_t (*static DOCAPIRateLimiter.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static DOCAPIRateLimiter.shared : DOCAPIRateLimiter.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DOCAPIRateLimiter.shared;
}

uint64_t key path setter for static DOCAPIRateLimiter.shared : DOCAPIRateLimiter.Type(void **a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCAPIRateLimiter.shared = v1;
}

BOOL DOCAPIRateLimiter.performRateLimitedCall(apiIdentifier:hostIdentifier:roleIdentifier:blockToRun:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v11 = *a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = v11;

  v12 = COERCE_DOUBLE(DOCAPIRateLimiter._timeIntervalSinceLastCall(madeBy:)(&v26)) <= 1.0;
  v14 = v13 | v12;
  if ((v13 | v12))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.UI);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315650;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004FLL, 0x8000000249BE6FF0, &v26);
      *(v18 + 12) = 2080;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v26);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2080;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v26);

      *(v18 + 24) = v23;
      _os_log_impl(&dword_2493AC000, v16, v17, "%s call to %s by: %s was rate-limited", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v19, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = v11;
    DOCAPIRateLimiter._updateLastCallTime(madeBy:)(&v26);

    a6(v24);
  }

  return (v14 & 1) == 0;
}

void DOCAPIRateLimiter._updateLastCallTime(madeBy:)(uint64_t *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v53 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v59 = *(a1 + 32);
  v17 = (*(*v1 + 120))(v10);
  if (v17)
  {
    v18 = v17;
    v19 = [objc_allocWithZone(MEMORY[0x277D061E8]) init];
    v20 = v14;
    v21 = v19;
    v22 = MEMORY[0x24C1FAD20](v13, v20);
    [v21 setHostIdentifier_];

    if (v16)
    {
      v23 = MEMORY[0x24C1FAD20](v15, v16);
    }

    else
    {
      v23 = 0;
    }

    [v21 setRoleIdentifier_];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = MEMORY[0x24C1FAD20](v28);

    v30 = [v18 doc:v29 roleSpecificKeyForKey:v21 configuration:?];

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    static Date.now.getter();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v57 = v18;
    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.UI);
    v34 = *(v4 + 16);
    v58 = v12;
    v34(v7, v12, v3);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v55 = v21;
      v38 = v37;
      v54 = swift_slowAlloc();
      v60 = v54;
      *v38 = 136315650;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE70A0, &v60);
      *(v38 + 12) = 2080;
      lazy protocol witness table accessor for type Date and conformance Date();
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v42 = *(v4 + 8);
      v42(v7, v3);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v60);

      *(v38 + 14) = v43;
      *(v38 + 22) = 2080;
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v32, &v60);

      *(v38 + 24) = v44;
      _os_log_impl(&dword_2493AC000, v35, v36, "%s updating last call to renameDocumentAtURL: timetstamp to: %s for key: %s", v38, 0x20u);
      v45 = v54;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v45, -1, -1);
      v46 = v38;
      v21 = v55;
      MEMORY[0x24C1FE850](v46, -1, -1);
    }

    else
    {

      v42 = *(v4 + 8);
      v42(v7, v3);
    }

    v47 = v58;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = MEMORY[0x24C1FAD20](v49);

    v51 = v57;
    [v57 doc:isa setObject:v50 forRoleKey:v21 configuation:?];

    v42(v47, v3);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.UI);
    v59 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v60 = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE70A0, &v60);
      _os_log_impl(&dword_2493AC000, v59, v25, "%s unable to load docUserDefaults", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x24C1FE850](v27, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    else
    {
      v52 = v59;
    }
  }
}