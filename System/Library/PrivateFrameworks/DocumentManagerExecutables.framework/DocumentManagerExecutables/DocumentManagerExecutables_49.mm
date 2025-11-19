uint64_t DOCBrowserNavigationDataSource.createColumnViewController(containerControllers:)()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x158))();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for DOCBrowserContainerController();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v4 = [v2 provideColumnViewControllerWithContains_];
    swift_unknownObjectRelease();

    return v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t DOCBrowserNavigationDataSource.viewStyle.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCBrowserNavigationDataSource.viewStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyle;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 != a1)
  {
    v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x140))(v4);
    if (v6)
    {
      [v6 dataSource:v1 willSwitchFrom:*(v1 + v3) to:a1];
      swift_unknownObjectRelease();
    }
  }

  *(v1 + v3) = a1;
  return DOCBrowserNavigationDataSource.viewStyle.didset(v5);
}

void (*DOCBrowserNavigationDataSource.viewStyle.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyle;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCBrowserNavigationDataSource.viewStyle.modify;
}

void DOCBrowserNavigationDataSource.viewStyle.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  if (v5 != v2)
  {
    v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x140))();
    v4 = v1[4];
    v3 = v1[5];
    if (v6)
    {
      [v6 dataSource:v1[4] willSwitchFrom:*(v4 + v3) to:v2];
      swift_unknownObjectRelease();
      v4 = v1[4];
      v3 = v1[5];
    }
  }

  *(v4 + v3) = v2;
  DOCBrowserNavigationDataSource.viewStyle.didset(v5);

  free(v1);
}

id DOCBrowserNavigationDataSource.__allocating_init(configuration:sourceObserver:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized DOCBrowserNavigationDataSource.init(configuration:sourceObserver:)(a1, a2);

  return v6;
}

id DOCBrowserNavigationDataSource.init(configuration:sourceObserver:)(void *a1, void *a2)
{
  v4 = specialized DOCBrowserNavigationDataSource.init(configuration:sourceObserver:)(a1, a2);

  return v4;
}

uint64_t DOCBrowserNavigationDataSource.description.getter()
{
  _StringGuts.grow(_:)(19);

  v9 = 0x72756F5361746144;
  v10 = 0xEB00000000286563;
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x128))(v1);
  MEMORY[0x24C1FAEA0](v2);

  MEMORY[0x24C1FAEA0](539828265, 0xE400000000000000);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for DOCBrowserNavigationDataSource();
  v3 = objc_msgSendSuper2(&v8, sel_description);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x24C1FAEA0](v4, v6);

  return v9;
}

id DOCBrowserNavigationDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCBrowserNavigationDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCBrowserNavigationDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCBrowserNavigationDataSource.hierarchyController(_:prepareByDismissingSearchWithCompletion:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = (*((*MEMORY[0x277D85000] & *v3) + 0x108))();
  v5 = v4;
  v33 = MEMORY[0x277D84F90];
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_24:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_25:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v30 = v9;
    v10 = v8;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v10, v5);
      }

      else
      {
        if (v10 >= *(v6 + 16))
        {
          goto LABEL_23;
        }

        v12 = *(v5 + 8 * v10 + 32);
      }

      v11 = v12;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v13 = (*((*MEMORY[0x277D85000] & *v12) + 0xE8))();
      if (!v13)
      {
        goto LABEL_6;
      }

      v14 = v13;
      type metadata accessor for DOCItemCollectionViewController(0);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        break;
      }

      v11 = v14;
LABEL_6:

LABEL_7:
      ++v10;
      if (v8 == v7)
      {
        v9 = v30;
        goto LABEL_26;
      }
    }

    v16 = (*((*MEMORY[0x277D85000] & *v15) + 0xBB8))();

    if (!v16)
    {
      goto LABEL_7;
    }

    MEMORY[0x24C1FB090]();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v33;
  }

  while (v8 != v7);
LABEL_26:

  if (v9 >> 62)
  {
LABEL_43:
    v17 = __CocoaSet.count.getter();
    if (v17)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

  v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_44:

    return a2(v29);
  }

LABEL_28:
  v18 = 0;
  v19 = v9 & 0xC000000000000001;
  v20 = v9 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v19)
    {
      v21 = v9;
      v22 = MEMORY[0x24C1FC540](v18, v9);
    }

    else
    {
      if (v18 >= *(v20 + 16))
      {
        goto LABEL_42;
      }

      v21 = v9;
      v22 = *(v9 + 8 * v18 + 32);
    }

    v23 = v22;
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if ([v22 isActive])
    {
      break;
    }

    ++v18;
    v24 = v9 == v17;
    v9 = v21;
    if (v24)
    {
      goto LABEL_44;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  v26 = *((*MEMORY[0x277D85000] & *v23) + 0x360);
  v27 = v23;

  v26(partial apply for thunk for @callee_guaranteed () -> (), v25, 0);
}

id DOCBrowserNavigationDataSource.hierarchyChangeTransitionCoordinator.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x140))();
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 hierarchyChangeTransitionCoordinator];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t DOCBrowserNavigationDataSource.createContainerController(location:source:isUserInteraction:isBrowsingTrash:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = (*((*MEMORY[0x277D85000] & *v4) + 0x158))();
  if (v9)
  {
    v10 = [v9 provideContainerControllerAt:a1 from:a2 isUserInteraction:a3 & 1 isBrowsingTrash:a4 & 1];
    swift_unknownObjectRelease();
    return v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in DOCBrowserNavigationDataSource.hierarchyController(_:prepareControllersFor:_:isUserInteraction:isBrowsingTrash:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

    v15 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_9;
  }

  *(a1 + 16) = v9;
  if (v9)
  {
    return result;
  }

  v10 = *(a2 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = (a2 + 40);
    do
    {
      v13 = *v12;
      v12 += 2;
      v14 = v13;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v10;
    }

    while (v10);
    v11 = v16;
  }

  if (v11 >> 62)
  {
    goto LABEL_12;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v15 = v11;
LABEL_9:

  a3(v15);
}

uint64_t DOCBrowserNavigationDataSource.prepareController(_:for:completion:)(void *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v12);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchTime();
  v51 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v14);
  v50 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16, v17);
  v58 = &v49 - v19;
  v20 = (*((*MEMORY[0x277D85000] & *v4) + 0x158))(v18);
  if (!v20)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = (v22 + 16);
  *(v22 + 24) = 0;
  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = a1;
  v24[5] = v22;
  swift_beginAccess();
  v25 = *(v22 + 16);
  *(v22 + 16) = partial apply for closure #1 in DOCBrowserNavigationDataSource.prepareController(_:for:completion:);
  *(v22 + 24) = v24;

  v26 = a1;

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v25);
  v27 = [v21 presentationContextShowsProvidersAsBrowserRoot];
  v57 = v9;
  if (v27)
  {
    v28 = 0;
    v29 = v60;
  }

  else
  {
    v30 = (*((*MEMORY[0x277D85000] & *v5) + 0xF0))();
    if (v30 >> 62)
    {
      v31 = __CocoaSet.count.getter();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v60;

    v28 = v31 == 0;
  }

  v32 = [v29 sourceIdentifier];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
  {
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (((v28 | v37) & 1) == 0)
    {
      v41 = *((*MEMORY[0x277D85000] & *v26) + 0x178);

      v41(partial apply for closure #2 in DOCBrowserNavigationDataSource.prepareController(_:for:completion:), v22);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v49 = static OS_dispatch_queue.main.getter();
      v42 = v50;
      static DispatchTime.now()();
      [*(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_configuration) thumbnailFetchingTimeOut];
      + infix(_:_:)();
      v60 = *(v51 + 8);
      v60(v42, v59);
      aBlock[4] = partial apply for closure #3 in DOCBrowserNavigationDataSource.prepareController(_:for:completion:);
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_128;
      v43 = _Block_copy(aBlock);

      v44 = v52;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v45 = v54;
      v46 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v47 = v58;
      v48 = v49;
      MEMORY[0x24C1FB940](v58, v44, v45, v43);
      _Block_release(v43);
      swift_unknownObjectRelease();

      (*(v56 + 8))(v45, v46);
      (*(v53 + 8))(v44, v55);
      v60(v47, v59);
    }
  }

  v38 = *v23;
  if (*v23)
  {

    v38(v39);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v38);
  }

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in DOCBrowserNavigationDataSource.prepareController(_:for:completion:)(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  (*((*MEMORY[0x277D85000] & *a3) + 0x178))(0, 0);
  swift_beginAccess();
  v6 = *(a4 + 16);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

uint64_t closure #2 in DOCBrowserNavigationDataSource.prepareController(_:for:completion:)(uint64_t a1, uint64_t a2)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3 || a1 == 4)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v3 = 0xE700000000000000;
  if (a1)
  {
    if (a1 == 1)
    {
      goto LABEL_15;
    }

LABEL_12:
    v4 = _convertErrorToNSError(_:)();
    v5 = [v4 domain];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    [v4 code];
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;

    MEMORY[0x24C1FAEA0](v9, v11);

    v3 = v8;
    if (v6 != 0x676E6964616F6CLL)
    {
      goto LABEL_15;
    }
  }

  if (v3 == 0xE700000000000000)
  {
  }

LABEL_15:
  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v13 & 1) == 0)
  {
    result = swift_beginAccess();
    v14 = *(a2 + 16);
    if (v14)
    {

      v14(v15);
      return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v14);
    }
  }

  return result;
}

uint64_t closure #3 in DOCBrowserNavigationDataSource.prepareController(_:for:completion:)(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 16);
  if (v3)
  {

    v3(v4);
    return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  }

  return result;
}

void DOCBrowserNavigationDataSource.didSetViewControllers(_:effectiveViewControllers:animated:)(unint64_t a1, unint64_t a2, char a3)
{
  v4 = a1;
  v60 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_36:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    v5 = MEMORY[0x277D84F90];
    if (a2)
    {
      goto LABEL_18;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_40;
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v5; ++i)
    {
      MEMORY[0x24C1FC540](i, v4);
      type metadata accessor for DOCBrowserContainerController();
      swift_dynamicCastClassUnconditional();
      v8 = swift_unknownObjectRetain();
      MEMORY[0x24C1FB090](v8);
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v10 = (v4 + 32);
    type metadata accessor for DOCBrowserContainerController();
    do
    {
      v11 = *v10;
      swift_dynamicCastClassUnconditional();
      v12 = v11;
      MEMORY[0x24C1FB090]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      ++v10;
      --v5;
    }

    while (v5);
  }

  v5 = v60;
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_18:
  v59 = v6;
  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (!(a2 >> 62))
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_20;
    }

LABEL_39:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

LABEL_38:
  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_39;
  }

LABEL_20:
  v13 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v14 = v13;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C1FC540](v14, a2);
      }

      else
      {
        if (v14 >= *(v6 + 16))
        {
          goto LABEL_35;
        }

        v15 = *(a2 + 8 * v14 + 32);
      }

      v16 = v15;
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      type metadata accessor for DOCBrowserContainerController();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v14;
      if (v13 == v4)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x24C1FB090]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v59;
  }

  while (v13 != v4);
LABEL_40:
  v17 = swift_allocObject();
  *(v17 + 16) = v57;
  *(v17 + 24) = v5;
  *(v17 + 32) = a3 & 1;
  v18 = MEMORY[0x277D85000];
  v19 = *((*MEMORY[0x277D85000] & *v57) + 0x188);
  swift_bridgeObjectRetain_n();
  v20 = v57;
  if (v19() != 3)
  {

    if (v5 >> 62)
    {
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

      v26 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
      v26 = v5;
    }

    (*((*v18 & *v20) + 0xF8))(v26);
    specialized closure #2 in DOCBrowserNavigationDataSource.didSetViewControllers(_:effectiveViewControllers:animated:)(v20, v5, a3 & 1);

    return;
  }

  v56 = v17;
  v55 = v19;
  if (v5 >> 62)
  {
    goto LABEL_58;
  }

  v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
    do
    {
      v23 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x24C1FC540](v23, v5);
        }

        else
        {
          if (v23 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v24 = *(v5 + 8 * v23 + 32);
        }

        v25 = v24;
        v17 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        (*((*v18 & *v24) + 0x1C0))(1);

        ++v23;
        if (v17 == v22)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      v21 = __CocoaSet.count.getter();
      v22 = v21;
    }

    while (v21);
  }

LABEL_59:
  if (v9)
  {

    v5 = v9;
  }

  v27 = (*((*v18 & *v20) + 0xD8))(v21);
  v28 = v5 >> 62;
  if (!v27)
  {
LABEL_73:
    v38 = (*((*v18 & *v20) + 0x158))(v27);
    if (!v38)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v39 = v38;
    type metadata accessor for DOCBrowserContainerController();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v9 = [v39 provideColumnViewControllerWithContains_];
    swift_unknownObjectRelease();

    v41 = (*((*v18 & *v20) + 0x140))();
    if (!v41)
    {
      goto LABEL_78;
    }

    v17 = v41;
    if (!v28)
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
LABEL_77:
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
      v42 = Array._bridgeToObjectiveC()().super.isa;

      [v17 dataSource:v20 willSet:v42 on:v9 animated:a3 & 1];

      swift_unknownObjectRelease();
      goto LABEL_78;
    }

LABEL_95:
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

    _bridgeCocoaArray<A>(_:)();

    goto LABEL_77;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFF8;
  if (!(v27 >> 62))
  {
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

    goto LABEL_72;
  }

  v36 = v27;
  v37 = __CocoaSet.count.getter();
  v27 = v36;
  if (!v37)
  {
LABEL_72:

    goto LABEL_73;
  }

LABEL_64:
  if ((v27 & 0xC000000000000001) != 0)
  {
    goto LABEL_93;
  }

  if (!*(v29 + 16))
  {
    __break(1u);
    goto LABEL_95;
  }

  for (j = *(v27 + 32); ; j = MEMORY[0x24C1FC540](0))
  {
    v31 = j;

    v32 = *((*v18 & *v31) + 0xB8);
    v9 = v31;

    v34 = v32(v33);
    v35 = (*((*v18 & *v20) + 0x158))(v34);
    if (v35)
    {
      [v35 configureColumnViewController_];
      swift_unknownObjectRelease();
    }

LABEL_78:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_249BA0290;
    *(v43 + 32) = v9;
    v44 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_columnViewControllers;
    swift_beginAccess();
    *(v20 + v44) = v43;
    v45 = v9;

    (v55)(v46);
    if (v28)
    {
      break;
    }

    v47 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v48 = v56;
    if (!v47)
    {
      goto LABEL_87;
    }

LABEL_80:
    v49 = __OFSUB__(v47, 1);
    v50 = v47 - 1;
    if (v49)
    {
      __break(1u);
LABEL_90:
      v51 = MEMORY[0x24C1FC540](v50, v5);
LABEL_85:
      v52 = v51;

      goto LABEL_88;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      goto LABEL_90;
    }

    if ((v50 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v50 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v51 = *(v5 + 8 * v50 + 32);
      goto LABEL_85;
    }

    __break(1u);
LABEL_93:
    ;
  }

  v47 = __CocoaSet.count.getter();
  v48 = v56;
  if (v47)
  {
    goto LABEL_80;
  }

LABEL_87:

  v52 = 0;
LABEL_88:
  v53 = swift_allocObject();
  *(v53 + 16) = partial apply for specialized closure #2 in DOCBrowserNavigationDataSource.didSetViewControllers(_:effectiveViewControllers:animated:);
  *(v53 + 24) = v48;
  v54 = *((*v18 & *v45) + 0x1F0);

  v54(v52, a3 & 1, partial apply for thunk for @callee_guaranteed () -> (), v53);
}

uint64_t DOCBrowserNavigationDataSource.hierarchyController(_:willAppend:animated:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  type metadata accessor for DOCBrowserContainerController();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x108);
  v10 = a2;
  v15 = v9();
  v11 = v10;
  MEMORY[0x24C1FB090]();
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v12 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (*((*v8 & *v4) + 0x188))(v12) == 3 && (DOCHierarchyController.effectiveRootLocationIsHidingParentLocations.getter())
  {
    v14 = DOCBrowserNavigationDataSource.currentBrowserContainers()();
    MEMORY[0x24C1FB090](v11);
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v13 = v14;
    if (v15 >> 62)
    {
      goto LABEL_9;
    }

LABEL_11:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    goto LABEL_12;
  }

  v13 = 0;
  if (!(v15 >> 62))
  {
    goto LABEL_11;
  }

LABEL_9:
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

  _bridgeCocoaArray<A>(_:)();

LABEL_12:

  if (v13)
  {
    if (v13 >> 62)
    {
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    }
  }

  specialized DOCBrowserNavigationDataSource.willSetViewControllers(_:effectiveViewControllers:animated:)(a3 & 1);
}

uint64_t DOCBrowserNavigationDataSource.hierarchyController(_:didAppend:animated:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  type metadata accessor for DOCBrowserContainerController();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x108);
  v10 = a2;
  v17 = v9();
  v11 = v10;
  MEMORY[0x24C1FB090]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v12 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (*((*v8 & *v4) + 0x188))(v12) == 3 && (DOCHierarchyController.effectiveRootLocationIsHidingParentLocations.getter())
  {
    v16 = DOCBrowserNavigationDataSource.currentBrowserContainers()();
    MEMORY[0x24C1FB090](v11);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v13 = v16;
    if (v17 >> 62)
    {
      goto LABEL_9;
    }

LABEL_11:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    v14 = v17;
    goto LABEL_12;
  }

  v13 = 0;
  if (!(v17 >> 62))
  {
    goto LABEL_11;
  }

LABEL_9:
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

  v14 = _bridgeCocoaArray<A>(_:)();

LABEL_12:

  if (v13)
  {
    if (v13 >> 62)
    {
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

      v15 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
      v13 = v15;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    }
  }

  DOCBrowserNavigationDataSource.didSetViewControllers(_:effectiveViewControllers:animated:)(v14, v13, a3 & 1);
}

unint64_t DOCBrowserNavigationDataSource.hierarchyController(_:willReplaceTrailingLocations:with:animated:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = specialized _arrayConditionalCast<A, B>(_:)(a3, type metadata accessor for DOCBrowserContainerController);
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = MEMORY[0x277D85000];
  v23 = (*((*MEMORY[0x277D85000] & *v6) + 0x108))();
  specialized RangeReplaceableCollection<>.removeLast(_:)(a2, specialized Array.replaceSubrange<A>(_:with:), v15);

  v17 = specialized Array.append<A>(contentsOf:)(v16);
  if (*((*v14 & *v6) + 0x188))(v17) == 3 && (DOCHierarchyController.effectiveRootLocationIsHidingParentLocations.getter())
  {
    v22 = DOCBrowserNavigationDataSource.currentBrowserContainers()();
    specialized RangeReplaceableCollection<>.removeLast(_:)(a2, specialized Array.replaceSubrange<A>(_:with:), v18);
    specialized Array.append<A>(contentsOf:)(v13);
    v19 = v22;
  }

  else
  {

    v19 = 0;
  }

  if (v23 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  }

  if (v19)
  {
    if (v19 >> 62)
    {
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    }
  }

  specialized DOCBrowserNavigationDataSource.willSetViewControllers(_:effectiveViewControllers:animated:)(a4 & 1);

  if (!(a3 >> 62))
  {
    v20 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 < a2)
    {
      goto LABEL_14;
    }

    return a5();
  }

  v20 = __CocoaSet.count.getter();
  if (v20 >= a2)
  {
    return a5();
  }

LABEL_14:
  v21 = __OFSUB__(a2, v20);
  result = a2 - v20;
  if (v21)
  {
    __break(1u);
  }

  else
  {

    return DOCBrowserNavigationDataSource.scrollColumnModeToLastColumn(afterDroppingColumns:animated:completion:)(result, 1, a5, a6);
  }

  return result;
}

unint64_t DOCBrowserNavigationDataSource.scrollColumnModeToLastColumn(afterDroppingColumns:animated:completion:)(uint64_t a1, char a2, uint64_t (*a3)(unint64_t), uint64_t a4)
{
  v9 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v4) + 0x188))();
  if (result != 3)
  {
    return a3(result);
  }

  result = (*((*v9 & *v4) + 0xD8))();
  if (!result)
  {
    return a3(result);
  }

  v11 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_17:

    return a3(result);
  }

  v30 = result;
  v12 = __CocoaSet.count.getter();
  result = v30;
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_5:
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else if ((result & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *(v11 + 16))
    {
      v15 = *(result + 8 * v14 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v15 = MEMORY[0x24C1FC540](v14);
LABEL_10:
  v16 = v15;

  v18 = (*((*v9 & *v16) + 0xB0))(v17);
  specialized BidirectionalCollection.dropLast(_:)(a1, v18);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v24 >> 1;
  if (v22 == v24 >> 1)
  {

    result = swift_unknownObjectRelease();
    return a3(result);
  }

  if (v25 <= v22)
  {
    goto LABEL_23;
  }

  v26 = *(v20 + 8 * v25 - 8);
  swift_unknownObjectRelease();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a3;
  v27[4] = a4;
  v28 = *((*v9 & *v16) + 0x1F0);
  v29 = v26;

  v28(v26, a2 & 1, closure #1 in DOCBrowserNavigationDataSource.scrollColumnModeToLastColumn(afterDroppingColumns:animated:completion:)partial apply, v27);
}

uint64_t DOCBrowserNavigationDataSource.hierarchyController(_:didReplaceTrailingLocations:with:animated:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  result = specialized _arrayConditionalCast<A, B>(_:)(a3, type metadata accessor for DOCBrowserContainerController);
  if (result)
  {
    v8 = result;
    v9 = MEMORY[0x277D85000];
    v18 = (*((*MEMORY[0x277D85000] & *v4) + 0x108))();
    specialized RangeReplaceableCollection<>.removeLast(_:)(a2, specialized Array.replaceSubrange<A>(_:with:), v10);

    v12 = specialized Array.append<A>(contentsOf:)(v11);
    if (*((*v9 & *v4) + 0x188))(v12) == 3 && (DOCHierarchyController.effectiveRootLocationIsHidingParentLocations.getter())
    {
      v17 = DOCBrowserNavigationDataSource.currentBrowserContainers()();
      specialized RangeReplaceableCollection<>.removeLast(_:)(a2, specialized Array.replaceSubrange<A>(_:with:), v13);
      specialized Array.append<A>(contentsOf:)(v8);
      v14 = v17;
    }

    else
    {

      v14 = 0;
    }

    if (v18 >> 62)
    {
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

      v15 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
      v15 = v18;
    }

    if (v14)
    {
      if (v14 >> 62)
      {
        type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

        v16 = _bridgeCocoaArray<A>(_:)();
        swift_bridgeObjectRelease_n();
        v14 = v16;
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
      }
    }

    DOCBrowserNavigationDataSource.didSetViewControllers(_:effectiveViewControllers:animated:)(v15, v14, a4 & 1);
  }

  return result;
}

unint64_t DOCBrowserNavigationDataSource.currentBrowserContainers()()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x188))() != 3)
  {
    result = (*((*v1 & *v0) + 0xC0))();
    if (!result)
    {
      return MEMORY[0x277D84F90];
    }

    return result;
  }

  result = (*((*v1 & *v0) + 0xD8))();
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  v11 = result;
  v4 = __CocoaSet.count.getter();
  result = v11;
  if (!v4)
  {
LABEL_15:

    return MEMORY[0x277D84F90];
  }

LABEL_5:
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_18:
    v7 = MEMORY[0x24C1FC540](v6);
    goto LABEL_10;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(v3 + 16))
  {
    v7 = *(result + 8 * v6 + 32);
LABEL_10:
    v8 = v7;

    v10 = (*((*v1 & *v8) + 0xB0))(v9);

    return v10;
  }

  __break(1u);
  return result;
}

void specialized closure #2 in DOCBrowserNavigationDataSource.didSetViewControllers(_:effectiveViewControllers:animated:)(void *a1, uint64_t a2, char a3)
{
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0x110);

  v8 = v7(a2);
  v9 = *((*v6 & *a1) + 0x140);
  v10 = v9(v8);
  if (v10)
  {
    v7 = v10;
    (*((*v6 & *a1) + 0xF0))();
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 dataSource:a1 didUpdate:isa animated:a3 & 1];

    v10 = swift_unknownObjectRelease();
  }

  v12 = (*((*v6 & *a1) + 0xD8))(v10);
  if (!v12)
  {
    return;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
    v7 = v12;
    v18 = __CocoaSet.count.getter();
    v12 = v7;
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_20:

    return;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x24C1FC540](0);
  }

  else
  {
    if (!*(v13 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    v14 = *(v12 + 32);
  }

  v19 = v14;

  v16 = v9(v15);
  if (v16)
  {
    v7 = v16;
    if (!((*((*v6 & *a1) + 0x108))() >> 62))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
LABEL_12:

      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
      v17 = Array._bridgeToObjectiveC()().super.isa;

      [v7 dataSource:a1 didSet:v17 on:v19 animated:a3 & 1];

      swift_unknownObjectRelease();
      return;
    }

LABEL_25:
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    _bridgeCocoaArray<A>(_:)();
    goto LABEL_12;
  }
}

void DOCBrowserNavigationDataSource.hierarchyController(_:didPrepend:source:)(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v3) + 0x158))();
  if (!v9)
  {
    goto LABEL_71;
  }

  v10 = [v9 provideContainerControllerAt:a2 from:a3 isUserInteraction:0 isBrowsingTrash:0];
  v11 = swift_unknownObjectRelease();
  v12 = *((*v8 & *v10) + 0xE8);
  v13 = (v12)(v11);
  if (v13)
  {
    v14 = v13;
    type metadata accessor for DOCItemCollectionViewController(0);
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0x277D85000];
      v18 = (*((*MEMORY[0x277D85000] & *v3) + 0x188))();
      (*((*v17 & *v16) + 0xBE0))(v18);
    }
  }

  if ([objc_opt_self() protectedAppsEnabled])
  {
    v19 = v12();
    if (v19)
    {
      v20 = v19;
      type metadata accessor for DOCItemCollectionViewController(0);
      if (swift_dynamicCastClass())
      {
        v21 = [objc_opt_self() sharedManager];
        v22 = [v21 nodeRequiresAuthentication:objc_msgSend(a2 Sync:sel_node)];

        swift_unknownObjectRelease();
        v83 = v22;
        DOCItemCollectionViewController.resetProtectedAppAuthenticationState(locationProtected:)(v22);
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        __swift_project_value_buffer(v23, static Logger.UI);
        v24 = a2;
        v25 = v10;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          log = v26;
          v29 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v85[0] = v81;
          *v28 = 136315906;
          *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x8000000249BEDA60, v85);
          *(v28 + 12) = 1024;
          *(v28 + 14) = v83;
          *(v28 + 18) = 2112;
          *(v28 + 20) = v24;
          *(v28 + 28) = 2112;
          *(v28 + 30) = v25;
          *v29 = v24;
          v29[1] = v10;
          v30 = v24;
          v31 = v25;
          _os_log_impl(&dword_2493AC000, log, v27, "[PROTECTED APPS] %s requiresAuthentication: %{BOOL}d location: %@ viewController: %@", v28, 0x26u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v29, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v81);
          MEMORY[0x24C1FE850](v81, -1, -1);
          MEMORY[0x24C1FE850](v28, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_249BA0290;
  *(v32 + 32) = v10;
  v33 = MEMORY[0x277D85000];
  v34 = *((*MEMORY[0x277D85000] & *v4) + 0x108);
  v84 = v10;
  v35 = v34();
  v85[0] = v32;
  specialized Array.append<A>(contentsOf:)(v35);
  v36 = (*((*v33 & *v4) + 0x110))(v85[0]);
  if ((v34)(v36) >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  }

  specialized DOCBrowserNavigationDataSource.willSetViewControllers(_:effectiveViewControllers:animated:)(0);

  v38 = MEMORY[0x277D85000];
  v39 = *((*MEMORY[0x277D85000] & *v4) + 0x188);
  if (v39(v37) != 3)
  {
    v62 = (*((*v38 & *v4) + 0xC0))();
    if (v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
    }

    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_249BA0290;
    v55 = v84;
    *(v64 + 32) = v84;
    if (v63 >> 62)
    {
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
      v79 = v84;

      v66 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      v65 = v84;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
      v66 = v63;
    }

    v85[0] = v64;
    specialized Array.append<A>(contentsOf:)(v66);
    v54 = (*((*v38 & *v4) + 0xF8))(v85[0]);
    goto LABEL_37;
  }

  v40 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  v41 = swift_beginAccess();
  v42 = *&a1[v40];
  if (v42)
  {
    v43 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v44 = *&a1[v43];

    v45 = v42;
    v46 = a1;
    a1 = v45;
    v82 = specialized Collection<>.firstIndex(of:)(a2, v44);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      v49 = *&v46[v43];

      v50 = specialized Collection<>.firstIndex(of:)(a1, v49);
      v52 = v51;

      if ((v52 & 1) == 0)
      {
        if (v82 >= v50)
        {

          v38 = MEMORY[0x277D85000];
          v55 = v84;
          goto LABEL_37;
        }

        v73 = v39(v53);
        v38 = MEMORY[0x277D85000];
        if (v73 != 3)
        {

          v55 = v84;
          goto LABEL_37;
        }

        v74 = (*((*MEMORY[0x277D85000] & *v4) + 0xD8))();
        v39 = v84;
        if (!v74)
        {

          return;
        }

        v4 = v74;
        v56 = v74 & 0xFFFFFFFFFFFFFF8;
        if (!(v74 >> 62))
        {
          v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v75)
          {
LABEL_66:

            return;
          }

LABEL_47:
          v58 = __OFSUB__(v75, 1);
          v76 = v75 - 1;
          if (v58)
          {
            __break(1u);
          }

          else if ((v4 & 0xC000000000000001) == 0)
          {
            if ((v76 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v76 < *(v56 + 16))
            {
              v77 = *(v4 + 8 * v76 + 32);
LABEL_52:
              v78 = v77;

              (*((*v38 & *v78) + 0x270))(1);

              return;
            }

            __break(1u);
LABEL_71:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }

          v77 = MEMORY[0x24C1FC540](v76, v4);
          goto LABEL_52;
        }

LABEL_65:
        v75 = __CocoaSet.count.getter();
        if (!v75)
        {
          goto LABEL_66;
        }

        goto LABEL_47;
      }
    }

    v38 = MEMORY[0x277D85000];
  }

  v54 = (*((*v38 & *v4) + 0xD8))(v41);
  v55 = v84;
  if (v54)
  {
    v56 = v54 & 0xFFFFFFFFFFFFFF8;
    if (v54 >> 62)
    {
      v39 = v54;
      v57 = __CocoaSet.count.getter();
      v54 = v39;
      if (v57)
      {
LABEL_25:
        v58 = __OFSUB__(v57, 1);
        v59 = v57 - 1;
        if (v58)
        {
          __break(1u);
        }

        else if ((v54 & 0xC000000000000001) == 0)
        {
          if ((v59 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v59 < *(v56 + 16))
          {
            v60 = *(v54 + 8 * v59 + 32);
LABEL_30:
            v61 = v60;

            (*((*v38 & *v61) + 0x270))(0);

            goto LABEL_37;
          }

          __break(1u);
          goto LABEL_65;
        }

        v60 = MEMORY[0x24C1FC540](v59);
        goto LABEL_30;
      }
    }

    else
    {
      v57 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_37:
  v67 = (v34)(v54);
  if (v67 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    v68 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    v68 = v67;
  }

  DOCBrowserNavigationDataSource.didSetViewControllers(_:effectiveViewControllers:animated:)(v68, 0, 0);

  v70 = (*((*v38 & *v4) + 0x140))(v69);
  if (v70)
  {
    v71 = v70;
    (*((*v38 & *v4) + 0xF0))();
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v71 dataSource:v4 didUpdate:isa animated:0];

    swift_unknownObjectRelease();
  }
}

void $defer #1 () in DOCBrowserNavigationDataSource.hierarchyController(_:didPopLocations:animated:)(uint64_t a1)
{
  swift_beginAccess();
  if (*(*a1 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    v2 = BidirectionalCollection<>.joined(separator:)();
    v4 = v3;

    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    MEMORY[0x24C1FAEA0](0xD00000000000002ALL, 0x8000000249BEDED0);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v5);

    MEMORY[0x24C1FAEA0](0xD000000000000012, 0x8000000249BEDF00);
    MEMORY[0x24C1FAEA0](v2, v4);

    MEMORY[0x24C1FAEA0](33, 0xE100000000000000);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.UI);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12[0] = v10;
      *v9 = 136315138;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v12);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_2493AC000, v7, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1FE850](v10, -1, -1);
      MEMORY[0x24C1FE850](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t safePopLocations #1 (_:_:) in DOCBrowserNavigationDataSource.hierarchyController(_:didPopLocations:animated:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v10 = *a3 >> 62;
  if (v10)
  {
    if (v9 < 0)
    {
      v5 = *a3;
    }

    else
    {
      v5 = *a3 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = result;
    v6 = a4;
    v11 = a2;
    result = __CocoaSet.count.getter();
    a4 = v6;
    if (result >= v6)
    {
      goto LABEL_9;
    }

    v21 = __CocoaSet.count.getter();
    a2 = v11;
    v11 = v21;
    result = v20;
  }

  else
  {
    v11 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= a4)
    {
      goto LABEL_9;
    }
  }

  v22 = result;
  v23 = a2;

  MEMORY[0x24C1FAEA0](40, 0xE100000000000000);
  if (v10)
  {
    __CocoaSet.count.getter();
  }

  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v12);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v6 = v22;
  v7 = v23;
  swift_beginAccess();
  v5 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v15 = *(v5 + 16);
    v14 = *(v5 + 24);
    if (v15 >= v14 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v5);
    }

    *(v5 + 16) = v15 + 1;
    v16 = v5 + 16 * v15;
    *(v16 + 32) = v6;
    *(v16 + 40) = v7;
    *(a5 + 16) = v5;
    result = swift_endAccess();
    a4 = v11;
LABEL_9:
    if (!a4)
    {
      return result;
    }

    if (a4 < 0)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v10)
    {
      v5 = a4;
      result = __CocoaSet.count.getter();
      a4 = v5;
      v17 = result;
    }

    else
    {
      v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(0, v17))
    {
      goto LABEL_27;
    }

    v18 = -a4;
    if (v17 >= 0 && -v17 > v18)
    {
      __break(1u);
      return result;
    }

    v19 = v17 - a4;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_28;
    }

    if (v17 >= v19)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(v19, v17);
    }

LABEL_29:
    __break(1u);
LABEL_30:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
    *(a5 + 16) = v5;
  }
}

uint64_t closure #1 in DOCBrowserNavigationDataSource.scrollColumnModeToLastColumn(afterDroppingColumns:animated:completion:)(char a1, void *a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *a2) + 0xE8))();
    if (v5)
    {
      v6 = v5;
      type metadata accessor for DOCItemCollectionViewController(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        (*((*v4 & *v7) + 0x1308))();
      }
    }
  }

  return a3();
}

void DOCBrowserNavigationDataSource.hierarchyController(_:didUpdateLastDisplayedLocationPath:anchorLocation:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v4) + 0xA8))();
  (*((*v8 & *v9) + 0x1D0))(a2, a3, a4);
}

id DOCFullDocumentManagerViewController.hierarchyChangeTransitionCoordinator.getter()
{
  v1 = [v0 internalNavigationController];
  v2 = [v1 transitionCoordinator];

  return v2;
}

void DOCFullDocumentManagerViewController.restoreDroppedLocationsAfterSwitchingViewStyle()()
{
  v1 = v0;
  v115 = *MEMORY[0x277D85DE8];
  v98 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v2);
  v95 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DispatchQoS();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v4);
  v93 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchQoS.QoSClass();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v6);
  v89 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v105 = &v89 - v11;
  v12 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BEDE80, v10);
  v13 = MEMORY[0x24C1FAD20](0x61546873696E6946, 0xED0000776F4E6B73);
  v14 = [objc_opt_self() attributeWithDomain:v12 name:v13];

  v107 = v1;
  v15 = [v1 processAssertion];
  v16 = &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatOGMR;
  v92 = v14;
  if (v15)
  {
    v17 = v15;
    if ([v15 isValid])
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.UI);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_2493AC000, v19, v20, "There is an existing, active background assertion to save last visited location. Skipping creating a new one", v21, 2u);
        MEMORY[0x24C1FE850](v21, -1, -1);
      }

      goto LABEL_16;
    }
  }

  v22 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_249BA0290;
  *(v23 + 32) = v14;
  v24 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v25 = v14;
  v26 = MEMORY[0x24C1FAD20](0xD000000000000023, 0x8000000249BEDEA0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for RBSAttribute);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v28 = [v24 initWithExplanation:v26 target:v22 attributes:isa];

  v29 = v107;
  [v107 setProcessAssertion_];

  v30 = [v29 processAssertion];
  if (!v30)
  {
    goto LABEL_20;
  }

  v17 = v30;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.UI);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2493AC000, v32, v33, "Acquiring background assertion to save last visited location.", v34, 2u);
    MEMORY[0x24C1FE850](v34, -1, -1);
  }

  aBlock = 0;
  if ([v17 acquireWithError_])
  {
    v35 = aBlock;
LABEL_16:

    goto LABEL_20;
  }

  v36 = aBlock;
  v37 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v38 = v37;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    v43 = v37;
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 4) = v44;
    *v42 = v44;
    _os_log_impl(&dword_2493AC000, v39, v40, "Failed to aquired background assertion Error %@.", v41, 0xCu);
    outlined destroy of NSObject?(v42);
    MEMORY[0x24C1FE850](v42, -1, -1);
    MEMORY[0x24C1FE850](v41, -1, -1);
  }

  [v107 setProcessAssertion_];
LABEL_20:
  v106 = dispatch_group_create();
  v45 = [v107 droppedLocationsAfterSwitchingDisplayMode];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v46 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v48 = 0;
    v103 = v46 & 0xFFFFFFFFFFFFFF8;
    v104 = v46 & 0xC000000000000001;
    v102 = 0x8000000249BCC8C0;
    v101 = v16[41];
    v100 = v46;
    v99 = i;
    while (1)
    {
      if (v104)
      {
        v51 = MEMORY[0x24C1FC540](v48, v46);
      }

      else
      {
        if (v48 >= *(v103 + 16))
        {
          goto LABEL_44;
        }

        v51 = *(v46 + 8 * v48 + 32);
      }

      v52 = v51;
      v53 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v54 = v106;
      dispatch_group_enter(v106);
      v55 = [v107 hierarchyController];
      v56 = swift_allocObject();
      *(v56 + 16) = v54;
      aBlock = 0;
      v110 = 0xE000000000000000;
      v57 = v54;
      _StringGuts.grow(_:)(20);

      aBlock = 0xD000000000000011;
      v110 = v102;
      v58 = [v52 shortDescription];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      MEMORY[0x24C1FAEA0](v59, v61);

      MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
      v62 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(aBlock, v110);

      v63 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
      v16 = swift_allocBox();
      v65 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v66 = swift_allocObject();
      *(v66 + 16) = v101;
      *(v66 + 32) = v52;
      v67 = v52;
      UUID.init()();
      v68 = v63[5];
      v69 = v63[6];
      *(v65 + v63[7]) = v66;
      *(v65 + v68) = 1;
      *(v65 + v69) = 0;
      v70 = v105;
      outlined init with copy of DOCHierarchyController.FetchingOperationToken(v65, v105);
      (*(*(v63 - 1) + 56))(v70, 0, 1, v63);
      DOCHierarchyController.localOperation.setter(v70);
      v71 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
      swift_beginAccess();
      v72 = *&v55[v71];
      if (v72 >> 62)
      {
        if (__CocoaSet.count.getter() < 2)
        {
          goto LABEL_24;
        }
      }

      else if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
      {
        goto LABEL_24;
      }

      v73 = *&v55[v71];
      if (v73 >> 62)
      {
        v76 = __CocoaSet.count.getter();
        v46 = v76 - 2;
        if (__OFSUB__(v76, 2))
        {
LABEL_42:
          __break(1u);
          break;
        }
      }

      else
      {
        v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v46 = v74 - 2;
        if (__OFSUB__(v74, 2))
        {
          goto LABEL_42;
        }
      }

      swift_beginAccess();
      v75 = *&v55[v71];
      if ((v75 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v46);
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {
        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v46 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        swift_endAccess();
      }

LABEL_24:
      v49 = swift_allocObject();
      *(v49 + 16) = v55;
      *(v49 + 24) = v16;
      *(v49 + 32) = v62;
      *(v49 + 40) = partial apply for closure #4 in DOCItemCollectionViewController.notifyContentDidLoad();
      *(v49 + 48) = v56;
      *(v49 + 56) = 0;
      *(v49 + 58) = 0;
      *(v49 + 64) = 0;
      v50 = v55;

      specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v67, 1, v50, partial apply for closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:), v49);

      ++v48;
      v46 = v100;
      if (v53 == v99)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_48:

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v77 = v90;
  v78 = v89;
  v79 = v91;
  (*(v90 + 104))(v89, *MEMORY[0x277D851C8], v91);
  v80 = static OS_dispatch_queue.global(qos:)();
  (*(v77 + 8))(v78, v79);
  v81 = swift_allocObject();
  v82 = v107;
  *(v81 + 16) = v107;
  v113 = partial apply for closure #2 in DOCFullDocumentManagerViewController.restoreDroppedLocationsAfterSwitchingViewStyle();
  v114 = v81;
  aBlock = MEMORY[0x277D85DD0];
  v110 = 1107296256;
  v111 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v112 = &block_descriptor_100_0;
  v83 = _Block_copy(&aBlock);
  v84 = v82;
  v85 = v93;
  static DispatchQoS.unspecified.getter();
  v108 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v86 = v95;
  v87 = v98;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v88 = v106;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v83);

  (*(v97 + 8))(v86, v87);
  (*(v94 + 8))(v85, v96);

  [v84 clearDroppedLocationsAfterSwitchingViewStyle];
}

void DOCFullDocumentManagerViewController.beginUpdatingDataSourceViewStyle(to:maintainingActiveSearch:applyStyleBlock:)(uint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = [v4 dataSource];
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v10) + 0x170))();
  v14 = v13;

  if ((v14 & 1) != 0 || v12 != a1)
  {
    if (a2)
    {
      v15 = [v5 dataSource];
      v16 = (*((*v11 & *v15) + 0x188))();

      v17 = v16 != a1;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v5 dataSource];
    v19 = *((*v11 & *v18) + 0x178);
    v19(a1, 0);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v26 = v18;
    if (v17 && (v21 = [v5 internalNavigationController], v22 = UINavigationController.activeSearchControllerIfNotShowingResults.getter(), v21, v22))
    {

      v23 = [v5 internalNavigationController];
      MEMORY[0x28223BE20](v23, v24);
      v25[2] = a3;
      v25[3] = a4;
      UINavigationController.whileMaintainingActiveSearchController(_:completion:)(thunk for @callee_guaranteed () -> ()partial apply, v25, partial apply for closure #1 in DOCFullDocumentManagerViewController.beginUpdatingDataSourceViewStyle(to:maintainingActiveSearch:applyStyleBlock:), v20);
    }

    else
    {
      a3();
      v19(0, 1);
    }
  }
}

char *UINavigationController.activeSearchControllerIfNotShowingResults.getter()
{
  v1 = [v0 navigationBar];
  v2 = [v1 topItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 searchController];

  if (!v3)
  {
    return 0;
  }

  type metadata accessor for DOCSearchController();
  v4 = swift_dynamicCastClass();
  if (!v4 || (v5 = v4, ![v4 isActive]) || objc_msgSend(v5, sel_isActive) && (v6 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController, (v7 = objc_msgSend(*&v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController], sel_viewIfLoaded)) != 0) && (v8 = v7, v9 = objc_msgSend(v7, sel_isHidden), v8, (v9 & 1) == 0) && ((v10 = (*((*MEMORY[0x277D85000] & **&v5[v6]) + 0xCB8))(), v10 >> 62) ? (v11 = __CocoaSet.count.getter()) : (v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v11 > 0))
  {

    return 0;
  }

  return v5;
}

void UINavigationController.whileMaintainingActiveSearchController(_:completion:)(void *a1, void *a2, void (*a3)(id), uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = [objc_opt_self() sharedManager];
  v15 = UINavigationController.activeSearchControllerIfNotShowingResults.getter();
  if (v15)
  {
    v16 = v15;
    v54 = a4;
    v17 = [v4 view];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 superview];
      if (v19)
      {
        v20 = v19;
        v53 = v11;
        v21 = [v18 snapshotViewAfterScreenUpdates_];
        if (v21)
        {
          v22 = v21;
          v50 = a3;
          v23 = [v55 setExternalFirstResponderInFlight_];
          v51 = &v48;
          MEMORY[0x28223BE20](v23, v24);
          v48 = v20;
          *(&v48 - 6) = v20;
          *(&v48 - 5) = v22;
          v52 = v22;
          *(&v48 - 4) = v18;
          *(&v48 - 3) = v16;
          *(&v48 - 2) = a1;
          *(&v48 - 1) = a2;
          v25 = objc_opt_self();
          v26 = swift_allocObject();
          *(v26 + 16) = 0;
          *(v26 + 24) = partial apply for closure #1 in UINavigationController.whileMaintainingActiveSearchController(_:completion:);
          *(v26 + 32) = &v48 - 8;
          v27 = swift_allocObject();
          *(v27 + 16) = closure #1 in DOCPerformWithDeferredTransitionsDisabled(allowAnimation:_:)partial apply;
          *(v27 + 24) = v26;
          v60 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
          v61 = v27;
          aBlock = MEMORY[0x277D85DD0];
          v57 = 1107296256;
          v58 = thunk for @escaping @callee_guaranteed () -> ();
          v59 = &block_descriptor_77_1;
          v28 = _Block_copy(&aBlock);

          [v25 _performWithoutDeferringTransitions_];
          _Block_release(v28);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
          }

          else
          {
            v49 = v25;
            v30 = [objc_opt_self() mainRunLoop];
            Current = CFAbsoluteTimeGetCurrent();
            if (([v16 isActive] & 1) == 0)
            {
              v32 = (v53 + 8);
              do
              {
                if (CFAbsoluteTimeGetCurrent() - Current > 0.2)
                {
                  break;
                }

                Date.init(timeIntervalSinceNow:)();
                isa = Date._bridgeToObjectiveC()().super.isa;
                (*v32)(v14, v10);
                [v30 runUntilDate_];
              }

              while (([v16 isActive] & 1) == 0);
            }

            MEMORY[0x28223BE20](v34, v35);
            *(&v48 - 4) = v16;
            *(&v48 - 3) = v5;
            v36 = v52;
            *(&v48 - 2) = v18;
            *(&v48 - 1) = v36;
            v37 = swift_allocObject();
            *(v37 + 16) = 0;
            *(v37 + 24) = partial apply for closure #3 in UINavigationController.whileMaintainingActiveSearchController(_:completion:);
            *(v37 + 32) = &v48 - 6;
            v38 = swift_allocObject();
            *(v38 + 16) = closure #1 in DOCPerformWithDeferredTransitionsDisabled(allowAnimation:_:)partial apply;
            *(v38 + 24) = v37;
            v60 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
            v61 = v38;
            aBlock = MEMORY[0x277D85DD0];
            v57 = 1107296256;
            v58 = thunk for @escaping @callee_guaranteed () -> ();
            v59 = &block_descriptor_88_0;
            v39 = _Block_copy(&aBlock);

            [v49 _performWithoutDeferringTransitions_];
            _Block_release(v39);
            LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

            if ((v39 & 1) == 0)
            {
              v40 = [v5 navigationBar];
              v41 = [v40 topItem];

              v42 = v50;
              if (!v41)
              {
                goto LABEL_17;
              }

              v43 = [v41 searchController];

              if (!v43)
              {
                goto LABEL_17;
              }

              type metadata accessor for DOCSearchController();
              v44 = swift_dynamicCastClass();
              if (!v44)
              {
LABEL_16:

LABEL_17:
                v42([v55 setExternalFirstResponderInFlight_]);

                return;
              }

              v45 = [v44 searchBar];

              v43 = [v45 searchField];
              if (v43)
              {
                [v43 becomeFirstResponder];
                goto LABEL_16;
              }

              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
          return;
        }

        v16 = v18;
        v18 = v20;
      }
    }

    else
    {
      v18 = v16;
    }
  }

  v46 = (a1)();
  a3(v46);
  v47 = v55;
}

uint64_t DOCFullDocumentManagerViewController.dataSource(_:didUpdate:animated:)(void *a1, uint64_t a2, int a3)
{
  v5 = v3;
  v179 = a3;
  v177 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v186 = *(v7 - 8);
  v187 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v184 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for DispatchQoS();
  v183 = *(v185 - 8);
  MEMORY[0x28223BE20](v185, v10);
  v182 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTimeInterval();
  v176 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v175 = (&v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v189 = type metadata accessor for DispatchTime();
  v181 = *(v189 - 8);
  MEMORY[0x28223BE20](v189, v15);
  v188 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v180 = &v172 - v20;
  v21 = [v3 locationChangePacer];
  v22 = (*((*MEMORY[0x277D85000] & *v21) + 0xA0))();

  if (v22)
  {
    if (one-time initialization token for UI == -1)
    {
LABEL_3:
      static os_log_type_t.default.getter();

      return os_log(_:dso:log:type:_:)();
    }

LABEL_130:
    swift_once();
    goto LABEL_3;
  }

  [v5 updateCustomActions];
  v24 = swift_allocObject();
  v174 = v24;
  *(v24 + 16) = a2;
  v25 = (v24 + 16);

  v26 = [v5 rootViewController];
  if (v26)
  {
    v27 = v26;
    if (*v25 >> 62 && __CocoaSet.count.getter() < 0)
    {
      __break(1u);
      goto LABEL_137;
    }

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v27);
  }

  v28 = *v25;
  aBlock = MEMORY[0x277D84F90];
  v173 = v12;
  if (v28 >> 62)
  {
    v29 = __CocoaSet.count.getter();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  v196 = v5;
  v178 = v25;
  if (!v29)
  {
    goto LABEL_25;
  }

  v30 = 0;
  v31 = v28 & 0xC000000000000001;
  v4 = v28 & 0xFFFFFFFFFFFFFF8;
  v195 = v28;
  do
  {
    if (v31)
    {
      v33 = MEMORY[0x24C1FC540](v30, v28);
    }

    else
    {
      if (v30 >= *(v4 + 16))
      {
        goto LABEL_127;
      }

      v33 = *(v28 + 8 * v30 + 32);
    }

    v34 = v33;
    v35 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    type metadata accessor for DOCColumnViewController(0);
    if (swift_dynamicCastClass())
    {
      goto LABEL_14;
    }

    v36 = v4;
    v37 = v31;
    v38 = v29;
    v39 = [v196 internalNavigationController];
    v40 = [v39 viewControllers];

    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v203 = v34;
    MEMORY[0x28223BE20](v42, v43);
    *(&v172 - 2) = &v203;
    v44 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v172 - 4), v41);

    if ((v44 & 1) == 0)
    {
      v29 = v38;
      v31 = v37;
      v4 = v36;
      v28 = v195;
LABEL_14:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_15;
    }

    v29 = v38;
    v31 = v37;
    v4 = v36;
    v28 = v195;
LABEL_15:
    ++v30;
    v32 = v35 == v29;
    v5 = v196;
  }

  while (!v32);
  v12 = aBlock;
LABEL_25:

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    v27 = __CocoaSet.count.getter();
  }

  else
  {
    v27 = *(v12 + 16);
  }

  v172 = 0;
  if (v27)
  {
    if (v27 >= 1)
    {
      v45 = 0;
      v195 = (v12 & 0xC000000000000001);
      do
      {
        if (v195)
        {
          v50 = MEMORY[0x24C1FC540](v45, v12);
        }

        else
        {
          v50 = *(v12 + 8 * v45 + 32);
        }

        v51 = v50;
        type metadata accessor for DOCBrowserContainerController();
        v52 = swift_dynamicCastClass();
        if (v52)
        {
          v53 = v52;
          v54 = [v5 additionalLeadingNavigationBarButtonItems];
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
          v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v56 = specialized _arrayConditionalCast<A, B>(_:)(v55);
          if (v56)
          {
            v57 = v56;

            specialized _arrayForceCast<A, B>(_:)(v57);

            v58 = objc_allocWithZone(MEMORY[0x277CBEA60]);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v60 = [v58 initWithArray:isa copyItems:1];

            aBlock = 0;
            static Array._conditionallyBridgeFromObjectiveC(_:result:)();

            if (aBlock)
            {
              v55 = aBlock;
            }

            else
            {
              v55 = MEMORY[0x277D84F90];
            }
          }

          (*((*MEMORY[0x277D85000] & *v53) + 0x1E0))(v55);
          v61 = [v5 additionalTrailingNavigationBarButtonItems];
          v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v63 = specialized _arrayConditionalCast<A, B>(_:)(v62);
          if (v63)
          {
            v64 = v63;

            specialized _arrayForceCast<A, B>(_:)(v64);

            v65 = objc_allocWithZone(MEMORY[0x277CBEA60]);
            v66 = Array._bridgeToObjectiveC()().super.isa;

            v67 = [v65 initWithArray:v66 copyItems:1];

            aBlock = 0;
            static Array._conditionallyBridgeFromObjectiveC(_:result:)();

            if (aBlock)
            {
              v62 = aBlock;
            }

            else
            {
              v62 = MEMORY[0x277D84F90];
            }
          }

          v68 = MEMORY[0x277D85000];
          v69 = (*((*MEMORY[0x277D85000] & *v53) + 0x1F8))(v62);
          v70 = (*((*v68 & *v53) + 0xE8))(v69);
          if (v70)
          {
            v71 = v70;
            type metadata accessor for DOCItemCollectionViewController(0);
            v72 = swift_dynamicCastClass();
            if (v72)
            {
              v46 = v72;
              v47 = [v5 dataSource];
              v48 = MEMORY[0x277D85000];
              v49 = (*((*MEMORY[0x277D85000] & *v47) + 0x188))();

              (*((*v48 & *v46) + 0xBE0))(v49);
            }

            else
            {

              v51 = v71;
            }
          }
        }

        else
        {
          type metadata accessor for DOCColumnViewController(0);
          v73 = swift_dynamicCastClass();
          if (v73)
          {
            v74 = v73;
            v75 = [v5 additionalLeadingNavigationBarButtonItems];
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
            v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v77 = specialized _arrayConditionalCast<A, B>(_:)(v76);
            if (v77)
            {
              v78 = v77;

              specialized _arrayForceCast<A, B>(_:)(v78);

              v79 = objc_allocWithZone(MEMORY[0x277CBEA60]);
              v80 = Array._bridgeToObjectiveC()().super.isa;

              v81 = [v79 initWithArray:v80 copyItems:1];

              aBlock = 0;
              static Array._conditionallyBridgeFromObjectiveC(_:result:)();

              if (aBlock)
              {
                v76 = aBlock;
              }

              else
              {
                v76 = MEMORY[0x277D84F90];
              }
            }

            (*((*MEMORY[0x277D85000] & *v74) + 0xD0))(v76);
            v82 = [v5 additionalTrailingNavigationBarButtonItems];
            v83 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v84 = specialized _arrayConditionalCast<A, B>(_:)(v83);
            if (v84)
            {
              v85 = v84;

              specialized _arrayForceCast<A, B>(_:)(v85);

              v86 = objc_allocWithZone(MEMORY[0x277CBEA60]);
              v87 = Array._bridgeToObjectiveC()().super.isa;

              v88 = [v86 initWithArray:v87 copyItems:1];

              aBlock = 0;
              static Array._conditionallyBridgeFromObjectiveC(_:result:)();

              if (aBlock)
              {
                v83 = aBlock;
              }

              else
              {
                v83 = MEMORY[0x277D84F90];
              }
            }

            (*((*MEMORY[0x277D85000] & *v74) + 0xE8))(v83);
          }
        }

        ++v45;
      }

      while (v27 != v45);
      goto LABEL_58;
    }

LABEL_137:
    __break(1u);
    while (2)
    {
      swift_once();
LABEL_107:
      v117 = static DOCLog.UI;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_249B9FA70;
      v125 = [v5 shortDebugID];
      v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = v127;

      *(v124 + 56) = MEMORY[0x277D837D0];
      *(v124 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v124 + 32) = v126;
      *(v124 + 40) = v128;
      [v12 transitionDuration];
      v130 = v129 * 1000.0;
      if ((*&v130 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v130 > -9.22337204e18)
      {
        if (v130 < 9.22337204e18)
        {
          v131 = MEMORY[0x277D83C10];
          *(v124 + 96) = MEMORY[0x277D83B88];
          *(v124 + 104) = v131;
          *(v124 + 72) = v130;
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v117 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          [v12 transitionDuration];
          v133 = v132 * 1000.0;
          if ((*&v133 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v133 > -9.22337204e18)
            {
              v195 = v117;
              if (v133 < 9.22337204e18)
              {
                v134 = v4;
                v135 = v175;
                *v175 = v133;
                v136 = v176;
                v137 = v173;
                (*(v176 + 104))(v135, *MEMORY[0x277D85178], v173);
                v138 = v180;
                v139 = v188;
                MEMORY[0x24C1FAA90](v188, v135);
                (*(v136 + 8))(v135, v137);
                v194 = *(v181 + 8);
                (v194)(v139, v189);
                v140 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v141 = swift_allocObject();
                v142 = v174;
                *(v141 + 16) = v140;
                *(v141 + 24) = v142;
                *(v141 + 32) = v27;
                v201 = partial apply for closure #4 in DOCFullDocumentManagerViewController.dataSource(_:didUpdate:animated:);
                v202 = v141;
                aBlock = MEMORY[0x277D85DD0];
                v198 = *(v134 + 3736);
                v199 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
                v200 = &block_descriptor_16_2;
                v143 = _Block_copy(&aBlock);

                v144 = v182;
                static DispatchQoS.unspecified.getter();
                aBlock = MEMORY[0x277D84F90];
                lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
                lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
                v145 = v184;
                v146 = v187;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                v147 = v195;
                MEMORY[0x24C1FB940](v138, v144, v145, v143);
                _Block_release(v143);
                swift_unknownObjectRelease();

                v148 = v145;
                v5 = v196;
                (*(v186 + 8))(v148, v146);
                (*(v183 + 8))(v144, v185);
                v149 = v138;
                v4 = 0x249B9F000;
                (v194)(v149, v189);
                goto LABEL_119;
              }

LABEL_144:
              __break(1u);
LABEL_145:
              result = __CocoaSet.count.getter();
              if (!result)
              {
LABEL_101:
                v27 = 1;
LABEL_103:

                v121 = [v5 internalNavigationController];
                v12 = [v121 transitionCoordinator];

                if (!v12)
                {
                  goto LABEL_116;
                }

                v122 = [v12 viewControllerForKey_];
                if (!v122)
                {
                  swift_unknownObjectRelease();
                  goto LABEL_116;
                }

                v123 = v122;
                objc_opt_self();
                if (!swift_dynamicCastObjCClass())
                {
                  swift_unknownObjectRelease();

LABEL_116:
                  if (one-time initialization token for UI != -1)
                  {
                    swift_once();
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
                  v150 = swift_allocObject();
                  *(v150 + 16) = xmmword_249B9A480;
                  v151 = [v5 shortDebugID];
                  v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v154 = v153;

                  *(v150 + 56) = MEMORY[0x277D837D0];
                  *(v150 + 64) = lazy protocol witness table accessor for type String and conformance String();
                  *(v150 + 32) = v152;
                  *(v150 + 40) = v154;
                  static os_log_type_t.default.getter();
                  os_log(_:dso:log:type:_:)();

                  v155 = [v5 internalNavigationController];

                  v156 = Array._bridgeToObjectiveC()().super.isa;

                  [v155 setViewControllers:v156 animated:v27];

LABEL_119:
                  [v5 setEditing:0 animated:{0, v172}];
                  DOCFullDocumentManagerViewController.deselectOtherColumnsIfNeeded(_:)(0);
                  v157 = [v5 dataSource];
                  v158 = (*((*MEMORY[0x277D85000] & *v157) + 0x188))();

                  if (v158 == 3)
                  {
                    [v5 establishFirstResponder];
                  }

                  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
                  v159 = static OS_dispatch_queue.main.getter();
                  v160 = v188;
                  static DispatchTime.now()();
                  v161 = v180;
                  + infix(_:_:)();
                  v196 = *(v181 + 8);
                  (v196)(v160, v189);
                  v162 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v201 = partial apply for closure #5 in DOCFullDocumentManagerViewController.dataSource(_:didUpdate:animated:);
                  v202 = v162;
                  aBlock = MEMORY[0x277D85DD0];
                  v198 = *(v4 + 3736);
                  v199 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
                  v200 = &block_descriptor_114;
                  v163 = _Block_copy(&aBlock);

                  v164 = v182;
                  static DispatchQoS.unspecified.getter();
                  aBlock = MEMORY[0x277D84F90];
                  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
                  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
                  v165 = v184;
                  v166 = v187;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  MEMORY[0x24C1FB940](v161, v164, v165, v163);
                  _Block_release(v163);

                  (*(v186 + 8))(v165, v166);
                  (*(v183 + 8))(v164, v185);
                  (v196)(v161, v189);
                }

                if (one-time initialization token for UI != -1)
                {
                  continue;
                }

                goto LABEL_107;
              }

LABEL_93:
              v118 = result - 1;
              if (__OFSUB__(result, 1))
              {
                __break(1u);
              }

              else if ((v117 & 0xC000000000000001) == 0)
              {
                if ((v118 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_152:
                  __break(1u);
                  goto LABEL_153;
                }

                if (v118 >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_152;
                }

                v106 = *(v117 + 8 * v118 + 32);
                if (!(v12 >> 62))
                {
LABEL_98:
                  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
LABEL_99:

                    v120 = specialized Array<A>.hasAny(_:)(v119, v12);

                    if (!v120)
                    {
                      goto LABEL_124;
                    }
                  }

LABEL_100:

                  goto LABEL_101;
                }

LABEL_149:
                if (__CocoaSet.count.getter())
                {
                  goto LABEL_99;
                }

                goto LABEL_100;
              }

              v106 = MEMORY[0x24C1FC540](v118, v117);

              if (!(v12 >> 62))
              {
                goto LABEL_98;
              }

              goto LABEL_149;
            }

LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      break;
    }

    __break(1u);
    goto LABEL_141;
  }

LABEL_58:

  v89 = *v178;
  if (!(*v178 >> 62))
  {
    v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v90)
    {
      goto LABEL_60;
    }

LABEL_88:
    v110 = [v5 internalNavigationController];
    v111 = [v110 viewControllers];

    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v112 = [v5 hierarchyController];
    v113 = &v112[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
    swift_beginAccess();
    v114 = *v113;
    v115 = v113[8];

    v4 = &unk_249B9F000;
    if ((v179 & 1) == 0)
    {
      v27 = 0;
      goto LABEL_103;
    }

    v116 = (*((*MEMORY[0x277D85000] & *v177) + 0x188))();
    v27 = v116 != 3;
    if ((v116 == 3) | v115 & 1)
    {
      goto LABEL_103;
    }

    if (v114 != 2)
    {
      goto LABEL_101;
    }

    v117 = *v178;
    if (*v178 >> 62)
    {
      goto LABEL_145;
    }

    result = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_101;
    }

    goto LABEL_93;
  }

  v90 = __CocoaSet.count.getter();
  if (!v90)
  {
    goto LABEL_88;
  }

LABEL_60:
  v91 = v89 & 0xC000000000000001;
  v193 = v89 + 32;
  v194 = v89 & 0xFFFFFFFFFFFFFF8;

  v92 = 0;
  v191 = v90;
  v192 = v89;
  v190 = v89 & 0xC000000000000001;
  while (2)
  {
    if (v91)
    {
      v95 = MEMORY[0x24C1FC540](v92, v89);
    }

    else
    {
      if (v92 >= *(v194 + 16))
      {
        goto LABEL_129;
      }

      v95 = *(v193 + 8 * v92);
    }

    v94 = v95;
    if (__OFADD__(v92++, 1))
    {
      goto LABEL_128;
    }

    type metadata accessor for DOCBrowserContainerController();
    v97 = swift_dynamicCastClass();
    if (v97)
    {
      v98 = (*((*MEMORY[0x277D85000] & *v97) + 0xE8))();
      if (v98)
      {
        v99 = v98;
        type metadata accessor for DOCItemCollectionViewController(0);
        v100 = swift_dynamicCastClass();
        if (v100)
        {
          v101 = *((*MEMORY[0x277D85000] & *v100) + 0xAA0);
          v12 = (*MEMORY[0x277D85000] & *v100) + 2720;
          v102 = swift_unknownObjectRetain();
          v101(v102, &protocol witness table for DOCFullDocumentManagerViewController);
          v93 = v99;
        }

        else
        {
          v93 = v94;
          v94 = v99;
        }

LABEL_62:
      }

LABEL_63:

      if (v92 == v90)
      {

        goto LABEL_88;
      }

      continue;
    }

    break;
  }

  type metadata accessor for DOCColumnViewController(0);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_63;
  }

  v195 = v94;
  v103 = DOCColumnViewController.containedItemCollectionViewControllers.getter();
  v4 = v103;
  if (!(v103 >> 62))
  {
    v105 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v105)
    {
      goto LABEL_76;
    }

    goto LABEL_61;
  }

  v103 = __CocoaSet.count.getter();
  v105 = v103;
  if (!v103)
  {
LABEL_61:

    v93 = v195;
    v5 = v196;
    v94 = v195;
    v90 = v191;
    v89 = v192;
    v91 = v190;
    goto LABEL_62;
  }

LABEL_76:
  v106 = 0;
  v5 = (v4 & 0xC000000000000001);
  while (1)
  {
    if (v5)
    {
      v103 = MEMORY[0x24C1FC540](v106, v4);
    }

    else
    {
      if (v106 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_123;
      }

      v103 = *(v4 + 8 * v106 + 32);
    }

    v107 = v103;
    v12 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      break;
    }

    v108 = *((*MEMORY[0x277D85000] & *v103) + 0xAA0);
    v109 = swift_unknownObjectRetain();
    v108(v109, &protocol witness table for DOCFullDocumentManagerViewController);

    ++v106;
    if (v12 == v105)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  MEMORY[0x28223BE20](v103, v104);
  *(&v172 - 4) = v12;
  *(&v172 - 3) = v5;
  *(&v172 - 2) = v178;
  v167 = objc_opt_self();
  v168 = swift_allocObject();
  *(v168 + 16) = 0;
  *(v168 + 24) = partial apply for closure #3 in DOCFullDocumentManagerViewController.dataSource(_:didUpdate:animated:);
  *(v168 + 32) = &v172 - 6;
  v169 = swift_allocObject();
  *(v169 + 16) = partial apply for closure #1 in DOCPerformWithDeferredTransitionsDisabled(allowAnimation:_:);
  *(v169 + 24) = v168;
  v201 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v202 = v169;
  aBlock = MEMORY[0x277D85DD0];
  v198 = *(v4 + 3736);
  v199 = thunk for @escaping @callee_guaranteed () -> ();
  v200 = &block_descriptor_25_1;
  v170 = _Block_copy(&aBlock);

  [v167 _performWithoutDeferringTransitions_];
  _Block_release(v170);
  LOBYTE(v167) = swift_isEscapingClosureAtFileLocation();

  if ((v167 & 1) == 0)
  {
    v171 = [v5 internalNavigationController];

    goto LABEL_119;
  }

LABEL_153:
  __break(1u);
  return result;
}

BOOL specialized Array<A>.hasAny(_:)(unint64_t a1, unint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_14;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v10 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v14 = v8;
    MEMORY[0x28223BE20](v8, v9);
    v13[2] = &v14;
    v11 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v13, a2);

    v6 = v7 + 1;
  }

  while ((v11 & 1) == 0);
  return v5 != v7;
}

void closure #3 in DOCFullDocumentManagerViewController.dataSource(_:didUpdate:animated:)(unint64_t a1, void *a2)
{
  v4 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = -v5;
    if (!__OFSUB__(0, v5))
    {
      goto LABEL_3;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v5 = __CocoaSet.count.getter();
  v6 = -v5;
  if (__OFSUB__(0, v5))
  {
    goto LABEL_32;
  }

LABEL_3:
  if ((v6 + 1) >= 2)
  {
    v7 = v5 - 2;
    if (__OFSUB__(v5, 2))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v5 < v7)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v4)
    {
LABEL_6:
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }
  }

  else
  {
    if (v5 < 0)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v7 = 0;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v8 = __CocoaSet.count.getter();
LABEL_11:
  if (v8 < v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v4)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < v5)
  {
    goto LABEL_35;
  }

  if (v5 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((a1 & 0xC000000000000001) != 0 && v7 != v5)
  {
    if (v7 < v5)
    {
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

      v10 = v7;
      do
      {
        v11 = v10 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v10);
        v10 = v11;
      }

      while (v5 != v11);
      if (!v4)
      {
        goto LABEL_24;
      }

LABEL_26:

      _CocoaArrayWrapper.subscript.getter();
      v12 = v14;
      v7 = v15;
      v13 = v16;
      goto LABEL_27;
    }

LABEL_40:
    __break(1u);
    return;
  }

  if (v4)
  {
    goto LABEL_26;
  }

LABEL_24:
  v12 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v13 = (2 * v5) | 1;
LABEL_27:
  v17 = [a2 internalNavigationController];

  v18 = swift_unknownObjectRetain();
  specialized Array.append<A>(contentsOf:)(v18, v12, v7, v13);
  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setViewControllers:isa animated:0];
  swift_unknownObjectRelease();
}

void closure #4 in DOCFullDocumentManagerViewController.dataSource(_:didUpdate:animated:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_249B9A480;
    v7 = [v5 shortDebugID];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v11 = [v5 internalNavigationController];
    swift_beginAccess();
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setViewControllers:isa animated:a3 & 1];
  }
}

void closure #5 in DOCFullDocumentManagerViewController.dataSource(_:didUpdate:animated:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong effectiveSearchController];

    if (v2)
    {
      type metadata accessor for DOCPlaceholderSearchController();
      if (([v2 isKindOfClass_] & 1) == 0)
      {
        swift_beginAccess();
        v3 = swift_unknownObjectWeakLoadStrong();
        if (v3)
        {
          v4 = v3;
          v5 = DOCFullDocumentManagerViewController.postSearchInitializationBuffer.getter();

          [v5 signal];
        }
      }
    }
  }
}

void DOCFullDocumentManagerViewController.dataSource(_:willSet:on:animated:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  specialized _arrayForceCast<A, B>(_:)(a2);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 *a5];
}

void @objc DOCFullDocumentManagerViewController.dataSource(_:willSet:on:animated:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, SEL *a7)
{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a5;
  v13 = a1;
  specialized _arrayForceCast<A, B>(_:)(v10);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 *a7];
}

id closure #2 in DOCFullDocumentManagerViewController.restoreDroppedLocationsAfterSwitchingViewStyle()(void *a1)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2493AC000, v3, v4, "Invalidating background assertion, our work is done here.", v5, 2u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v6 = [a1 processAssertion];
  [v6 invalidate];

  return [a1 setProcessAssertion_];
}

BOOL DOCFullDocumentManagerViewController.presentationContextShowsProvidersAsBrowserRoot.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 sourceOutlineStyle];

  return v2 == 1;
}

void *DOCFullDocumentManagerViewController.provideContainerController(at:from:isUserInteraction:isBrowsingTrash:)(void *a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v9 = a1;
  v10 = [a1 sourceIdentifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v15 = v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14;
  v16 = MEMORY[0x277D85000];
  if (v15)
  {

    goto LABEL_8;
  }

  v186 = a3;
  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
    if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
    {

      goto LABEL_26;
    }

    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v49)
    {

LABEL_26:
      v50 = [v5 configuration];
      v51 = [v5 documentManager];
      v18 = &selRef__setLocationsInBrowseTab_;
      v52 = [v5 actionManager];
      type metadata accessor for DOCPlaceholderDataSource();
      v53 = swift_allocObject();
      *(objc_allocWithZone(type metadata accessor for DOCPlaceHolderViewController()) + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_B872FCAF23077CF9DADFE348B0B820D828DOCPlaceHolderViewController_location) = v9;
      v54 = v9;
      *(v53 + 16) = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v50, v51, v52);
      v23 = &protocol witness table for DOCPlaceholderDataSource;
      goto LABEL_11;
    }

    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;
    v180 = v9;
    if (v93 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v95 == v96)
    {

LABEL_39:
      if (!a2)
      {
        goto LABEL_115;
      }

      type metadata accessor for DOCFileProviderSource();
      v98 = swift_dynamicCastClass();
      if (!v98)
      {
        goto LABEL_115;
      }

      v99 = v98;
      v100 = a2;

      v101 = [v5 configuration];
      [v101 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConfiguration);
      v102 = swift_dynamicCast();
      v182 = v99;
      v103 = (*((*MEMORY[0x277D85000] & *v99) + 0x1D0))(v102);
      v104 = *(v103 + 16);
      v105 = (v103 + 32);
      do
      {
        v107 = v104;
        v108 = v104-- != 0;
        if (!v108)
        {
          break;
        }

        v109 = *v105;
        if (v109 <= 4 && *v105 <= 2u && *v105 && v109 != 2)
        {

          break;
        }

        v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v105;
      }

      while ((v106 & 1) == 0);

      v110 = v191[0];
      [v191[0] setPreferLastUsedDate_];
      v111 = [v5 itemCollectionViewPool];
      v112 = [v5 documentManager];
      v113 = [v5 actionManager];
      v114 = [v5 effectiveAppearance];
      v9 = v180;
      if (v186)
      {
        v115 = 1;
LABEL_55:
        v116 = [v5 hierarchyController];
        type metadata accessor for DOCItemCollectionContainerDataSource();
        v117 = swift_allocObject();
        *(v117 + 104) = 0;
        *(v117 + 112) = 0;
        *(v117 + 16) = v110;
        *(v117 + 24) = v111;
        *(v117 + 32) = v112;
        *(v117 + 40) = v9;
        *(v117 + 48) = v182;
        *(v117 + 56) = v113;
        *(v117 + 64) = v114;
        *(v117 + 72) = v115;
        *(v117 + 80) = v116;
        *(v117 + 88) = &protocol witness table for DOCHierarchyController;
        *(v117 + 96) = 0;
LABEL_56:
        v118 = v9;
        v23 = &protocol witness table for DOCItemCollectionContainerDataSource;
        v16 = MEMORY[0x277D85000];
LABEL_57:
        v18 = &selRef__setLocationsInBrowseTab_;
        goto LABEL_11;
      }

LABEL_54:
      v115 = [v5 isActivated];
      goto LABEL_55;
    }

    v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v97)
    {
      goto LABEL_39;
    }

    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;
    if (v119 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v121 == v122)
    {

LABEL_62:
      if (!a2)
      {
        goto LABEL_115;
      }

      type metadata accessor for DOCFileProviderSource();
      v124 = swift_dynamicCastClass();
      if (!v124)
      {
        goto LABEL_115;
      }

      v125 = v124;
      v126 = a2;

      v127 = [v5 configuration];
      [v127 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConfiguration);
      v128 = swift_dynamicCast();
      v182 = v125;
      v129 = (*((*MEMORY[0x277D85000] & *v125) + 0x1D0))(v128);
      v130 = *(v129 + 16);
      v131 = (v129 + 32);
      do
      {
        v133 = v130;
        v108 = v130-- != 0;
        if (!v108)
        {
          break;
        }

        v134 = *v131;
        if (v134 <= 4 && *v131 <= 2u && *v131 && v134 != 2)
        {

          break;
        }

        v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v131;
      }

      while ((v132 & 1) == 0);

      v110 = v191[0];
      [v191[0] setPreferLastUsedDate_];
      v111 = [v5 itemCollectionViewPool];
      v112 = [v5 documentManager];
      v113 = [v5 actionManager];
      v114 = [v5 effectiveAppearance];
      v9 = v180;
      if (v186)
      {
        v115 = 1;
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v123)
    {
      goto LABEL_62;
    }

    if (!a2)
    {
      goto LABEL_115;
    }

    type metadata accessor for DOCFileProviderSource();
    v135 = swift_dynamicCastClass();
    if (!v135)
    {
      goto LABEL_115;
    }

    v136 = v135;
    v137 = a2;

    if (![v9 node] || (swift_unknownObjectRelease(), (v138 = objc_msgSend(v9, sel_node)) != 0) && (v139 = objc_msgSend(v138, sel_isFolder), swift_unknownObjectRelease(), v139) && ((v140 = objc_msgSend(v9, sel_node)) == 0 || (v141 = objc_msgSend(v140, sel_doc_isCollaborationInvitation), swift_unknownObjectRelease(), (v141 & 1) == 0)))
    {
      v178 = [v5 configuration];
      v179 = v136;
      v154 = (*((*MEMORY[0x277D85000] & *v136) + 0x1D0))();
      v155 = *(v154 + 16);
      v156 = (v154 + 32);
      while (1)
      {
        v158 = v155;
        v108 = v155-- != 0;
        if (!v108)
        {
LABEL_99:
          v160 = &selRef__setLocationsInBrowseTab_;
          goto LABEL_100;
        }

        v159 = *v156;
        if (v159 <= 4 && *v156 <= 2u && *v156 && v159 != 2)
        {
          break;
        }

        v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v156;
        if (v157)
        {
          goto LABEL_99;
        }
      }

      v160 = &selRef__setLocationsInBrowseTab_;
LABEL_100:

      [v178 setPreferLastUsedDate_];

      v161 = [v5 configuration];
      v184 = [v5 itemCollectionViewPool];
      v162 = [v5 documentManager];
      v163 = [v5 v160[47]];
      v164 = [v5 effectiveAppearance];
      v9 = v180;
      if (v186)
      {
        v165 = 1;
      }

      else
      {
        v165 = [v5 isActivated];
      }

      v166 = [v5 hierarchyController];
      v167 = a4 & 1;
      type metadata accessor for DOCItemCollectionContainerDataSource();
      v168 = swift_allocObject();
      *(v168 + 104) = 0;
      *(v168 + 112) = 0;
      *(v168 + 16) = v161;
      *(v168 + 24) = v184;
      *(v168 + 32) = v162;
      *(v168 + 40) = v180;
      *(v168 + 48) = v179;
      *(v168 + 56) = v163;
      *(v168 + 64) = v164;
      *(v168 + 72) = v165;
      *(v168 + 80) = v166;
      *(v168 + 88) = &protocol witness table for DOCHierarchyController;
      *(v168 + 96) = v167;
      *(v168 + 97) = 0;
      goto LABEL_56;
    }

    v142 = [v5 configuration];
    v143 = [v5 documentManager];
    v144 = [v5 actionManager];
    type metadata accessor for DOCItemInfoContainerDataSource();
    v187 = swift_allocObject();
    v187[7] = 0;
    type metadata accessor for DOCConcreteSelectionLocation();
    v145 = swift_dynamicCastClass();
    if (v145)
    {
      v146 = v144;
      v147 = v143;
      v148 = v137;
      v149 = v142;
      v150 = *((*MEMORY[0x277D85000] & *v145) + 0x58);
      v151 = v9;
      v152 = v150();
      v142 = v149;
      v137 = v148;
      v143 = v147;
      v144 = v146;
      v153 = v152;
    }

    else
    {
      v169 = [v9 node];
      if (!v169)
      {
        v153 = MEMORY[0x277D84F90];
        goto LABEL_107;
      }

      v170 = v169;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v153 = swift_allocObject();
      *(v153 + 16) = xmmword_249BA0290;
      *(v153 + 32) = v170;
    }

LABEL_107:
    v16 = MEMORY[0x277D85000];
    if (v153 >> 62)
    {
      v171 = __CocoaSet.count.getter();
    }

    else
    {
      v171 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v171 < 1)
    {
      goto LABEL_116;
    }

    v187[2] = v142;
    v187[3] = v9;
    v187[4] = v143;
    v187[5] = v144;
    v187[6] = v153;
    v172 = v9;
    v23 = &protocol witness table for DOCItemInfoContainerDataSource;
    goto LABEL_57;
  }

LABEL_8:
  v18 = &selRef__setLocationsInBrowseTab_;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v19 = [v5 configuration];
  v20 = [v5 documentManager];
  v21 = [v5 actionManager];
  type metadata accessor for DOCEmptyDataSource();
  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v21;
  v23 = &protocol witness table for DOCEmptyDataSource;
LABEL_11:
  v24 = objc_allocWithZone(type metadata accessor for DOCBrowserContainerController());
  v25 = swift_unknownObjectRetain();
  v26 = DOCBrowserContainerController.init(dataSource:)(v25, v23);
  v27 = *((*v16 & *v26) + 0x190);
  v28 = swift_unknownObjectRetain();
  v27(v28);
  v29 = *((*v16 & *v26) + 0x1A8);
  v30 = swift_unknownObjectRetain();
  v29(v30, &protocol witness table for DOCFullDocumentManagerViewController);
  (*((*v16 & *v26) + 0x108))([v5 allowsPickingMultipleItems]);
  v31 = [v9 sourceIdentifier];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;
  if (v32 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v34 != v35)
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
LABEL_33:
      swift_unknownObjectRelease();
      return v26;
    }

    v37 = [v5 configuration];
    v181 = [v5 itemCollectionViewPool];
    v38 = [v5 documentManager];
    v39 = [v5 v18[47]];
    [v37 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConfiguration);
    swift_dynamicCast();
    v40 = v191[0];
    [v191[0] setPresentingMakesCollectionFirstResponder_];
    v41 = [v191[0] browserViewContext];
    v42 = 2;
    v43 = v9;
    if (v41 <= 1)
    {
      if (!v41)
      {
LABEL_30:
        v57 = v38;
        v183 = v5;
        v185 = v37;
        v58 = [objc_opt_self() searchLocation];
        if (one-time initialization token for searchSource != -1)
        {
          swift_once();
        }

        v59 = static DOCFileProviderSource.searchSource;
        LOBYTE(v191[0]) = v42;
        v190 = 10;
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;
        v63 = v43;
        v64 = v43;
        v65 = v59;
        v66 = v40;
        v67 = v58;
        DOCItemCollectionConfiguration.init(source:configuration:context:initialLocation:defaultSorting:searchStartLocation:viewAccessibilityIdentifier:isBrowsingTrash:)(v65, v66, v191, v58, &v190, v63, v60, v62, &v188, 0);
        v68 = objc_allocWithZone(type metadata accessor for DOCItemCollectionViewController(0));
        v69 = v39;
        v70 = v57;
        v71 = v181;
        v72 = DOCItemCollectionViewController.init(configuration:collectionViewPool:documentManager:actionManager:)(&v188, v71, v57, v39);

        v73 = objc_allocWithZone(type metadata accessor for DOCSearchController());
        v74 = DOCSearchController.init(configuration:resultCollectionViewController:)(v66, v72);

        v75 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController;
        v76 = *&v74[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController];
        v77 = MEMORY[0x277D85000];
        v78 = *((*MEMORY[0x277D85000] & *v76) + 0xF0);
        v79 = v183;
        v80 = v74;
        v81 = v76;
        v78(v183);

        v82 = *&v74[v75];
        v83 = *((*v77 & *v82) + 0x108);
        v84 = v79;
        v85 = v82;
        v83(v183, &protocol witness table for DOCFullDocumentManagerViewController);

        v86 = *((*v77 & *v80) + 0x280);
        swift_unknownObjectRetain();
        v86(v183);
        v87 = *((*v77 & *v80) + 0x268);
        swift_unknownObjectRetain();
        v87(v183, &protocol witness table for DOCFullDocumentManagerViewController);
        v88 = v26;
        v89 = [v88 navigationItem];
        [v89 setSearchController_];

        v90 = [v88 navigationItem];
        [v90 setHidesSearchBarWhenScrolling_];

        v91 = [v88 navigationItem];
        [v91 _setPreserveSearchBarAcrossTransitions_];

        [v88 setDefinesPresentationContext_];
        goto LABEL_33;
      }

      if (v41 == 1)
      {
        v42 = 3;
        goto LABEL_30;
      }

LABEL_29:
      v55 = [v191[0] browserViewContext];
      type metadata accessor for DOCBrowserViewContext(0);
      v189 = v56;
      *&v188 = v55;
      doc_warnUnrecognizedEnumValueEncountered(_:)(&v188);
      __swift_destroy_boxed_opaque_existential_0(&v188);
      goto LABEL_30;
    }

    if (v41 == 3)
    {
      goto LABEL_30;
    }

    if (v41 != 2)
    {
      goto LABEL_29;
    }

    while (1)
    {
LABEL_115:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_116:
      *&v188 = 0;
      *(&v188 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(82);
      v173 = v9;
      v9 = 0xD00000000000003ALL;
      MEMORY[0x24C1FAEA0](0xD00000000000003ELL, 0x8000000249BD31E0);
      v174 = [v173 description];
      v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v177 = v176;

      MEMORY[0x24C1FAEA0](v175, v177);

      MEMORY[0x24C1FAEA0](0xD000000000000012, 0x8000000249BD3220);
    }
  }

  swift_unknownObjectRelease();

  return v26;
}

char *DOCFullDocumentManagerViewController.provideColumnViewController(contains:)()
{
  v1 = v0;
  v2 = [v0 configuration];
  v3 = objc_allocWithZone(type metadata accessor for DOCColumnViewController(0));
  v4 = specialized DOCColumnViewController.init(configuration:)(v2);

  v5 = *((*MEMORY[0x277D85000] & *v4) + 0xB8);

  v5(v6);
  [v1 configureColumnViewController_];
  return v4;
}

uint64_t closure #1 in UINavigationController.whileMaintainingActiveSearchController(_:completion:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(id))
{
  [a1 addSubview_];
  [a3 setAlpha_];
  (*((*MEMORY[0x277D85000] & *a4) + 0x298))(1);
  return a5([a4 setActive_]);
}

id closure #3 in UINavigationController.whileMaintainingActiveSearchController(_:completion:)(void *a1, void *a2, void *a3, void *a4)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x298))(0);
  v7 = [a2 navigationBar];
  v8 = [v7 topItem];

  if (v8)
  {
    v9 = [v8 searchController];

    if (v9)
    {
      type metadata accessor for DOCSearchController();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        [v10 setActive_];
      }
    }
  }

  [a3 setAlpha_];

  return [a4 removeFromSuperview];
}

uint64_t static UINavigationItem.associatedObjectStorageKey.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = static UINavigationItem.associatedObjectStorageKey;
  return result;
}

uint64_t static UINavigationItem.associatedObjectStorageKey.setter(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static UINavigationItem.associatedObjectStorageKey = v1;
  return result;
}

uint64_t (*static UINavigationItem.associatedObjectStorageKey.modify())()
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

id UINavigationItem.associatedObjectStorage.getter()
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UINavigationItemC_Tt1B5(v0, static UINavigationItem.associatedObjectStorageKey);
}

uint64_t specialized Array._customRemoveLast()(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized DOCBrowserNavigationDataSource.init(configuration:sourceObserver:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_containerControllers] = 0;
  v11 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_columnViewControllers] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_currentContainers] = v11;
  v12 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_shortDebugID];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v7 + 8))(v10, v6);
  v13 = specialized Collection.prefix(_:)(6);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = MEMORY[0x24C1FAE00](v13, v15, v17, v19);
  v22 = v21;

  *v12 = v20;
  v12[1] = v22;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v23 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyleInFlight];
  *v23 = 0;
  v23[8] = 1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyle] = 3;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_configuration] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_sourceObserver] = a2;
  v24 = objc_allocWithZone(type metadata accessor for DOCBrowserHistoryDataSource());
  v25 = a2;
  v26 = a1;
  v27 = DOCBrowserHistoryDataSource.init(sourceObserver:)(v25);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_historyDataSource] = v27;
  swift_beginAccess();
  v28 = *v12;
  v29 = v12[1];
  v30 = *((*MEMORY[0x277D85000] & *v27) + 0x70);
  v31 = v27;

  v30(v28, v29);

  v32 = type metadata accessor for DOCBrowserNavigationDataSource();
  v35.receiver = v3;
  v35.super_class = v32;
  return objc_msgSendSuper2(&v35, sel_init);
}

uint64_t specialized DOCBrowserNavigationDataSource.hierarchyController(_:prepareByDismissingSearchWithCompletion:)(void *a1, void (**a2)(void))
{
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x108);
  v32 = a2;
  v5 = _Block_copy(a2);
  v6 = v4(v5);
  v7 = v6;
  v34 = MEMORY[0x277D84F90];
  v8 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_24:
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_25:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_3:
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    v31 = v11;
    v12 = v10;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1FC540](v12, v7);
      }

      else
      {
        if (v12 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v14 = *(v7 + 8 * v12 + 32);
      }

      v13 = v14;
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v15 = (*((*MEMORY[0x277D85000] & *v14) + 0xE8))();
      if (!v15)
      {
        goto LABEL_6;
      }

      v16 = v15;
      type metadata accessor for DOCItemCollectionViewController(0);
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        break;
      }

      v13 = v16;
LABEL_6:

LABEL_7:
      ++v12;
      if (v10 == v9)
      {
        v11 = v31;
        goto LABEL_26;
      }
    }

    v18 = (*((*MEMORY[0x277D85000] & *v17) + 0xBB8))();

    if (!v18)
    {
      goto LABEL_7;
    }

    MEMORY[0x24C1FB090]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v11 = v34;
  }

  while (v10 != v9);
LABEL_26:

  if (v11 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v20 = 0;
    v21 = v11 & 0xC000000000000001;
    v22 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v21)
      {
        v23 = v11;
        v24 = MEMORY[0x24C1FC540](v20, v11);
      }

      else
      {
        if (v20 >= *(v22 + 16))
        {
          goto LABEL_40;
        }

        v23 = v11;
        v24 = *(v11 + 8 * v20 + 32);
      }

      v25 = v24;
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if ([v24 isActive])
      {

        v27 = swift_allocObject();
        *(v27 + 16) = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
        *(v27 + 24) = v33;
        v28 = *((*MEMORY[0x277D85000] & *v25) + 0x360);
        v29 = v25;

        v28(thunk for @callee_guaranteed () -> ()partial apply, v27, 0);

        goto LABEL_43;
      }

      ++v20;
      v26 = v11 == i;
      v11 = v23;
      if (v26)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_42:

  v32[2]();
LABEL_43:
}

uint64_t specialized DOCBrowserNavigationDataSource.hierarchyController(_:prepareControllersFor:_:isUserInteraction:isBrowsingTrash:completion:)(unint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v6 = a1;
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= 1)
    {
      goto LABEL_3;
    }

LABEL_22:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  while (2)
  {
    v7 = __CocoaSet.count.getter();
    if (v7 < 1)
    {
      goto LABEL_22;
    }

LABEL_3:
    v35 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = 0;
    v30 = *((*MEMORY[0x277D85000] & *v34) + 0x158);
    v9 = v6;
    v10 = v6 & 0xC000000000000001;
    v29 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = v6;
    do
    {
      if (v10)
      {
        v12 = MEMORY[0x24C1FC540](v8, v9);
      }

      else
      {
        if (v8 >= *(v29 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(v9 + 8 * v8 + 32);
      }

      v6 = v12;
      v13 = v30();
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = [v13 provideContainerControllerAt:v6 from:a2 isUserInteraction:a3 & 1 isBrowsingTrash:a4 & 1];
      swift_unknownObjectRelease();
      v16 = *(v35 + 16);
      v15 = *(v35 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      ++v8;
      *(v35 + 16) = v17;
      v18 = v35 + 16 * v16;
      *(v18 + 32) = v6;
      *(v18 + 40) = v14;
      v9 = v11;
    }

    while (v7 != v8);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v35;
    v20[4] = a5;
    v20[5] = a6;
    v21 = *(v35 + 16);

    if (v21)
    {
      v22 = 0;
      v23 = (v35 + 40);
      while (v22 < *(v35 + 16))
      {
        ++v22;
        v24 = *v23;
        v6 = *(v23 - 1);
        v25 = v24;
        DOCBrowserNavigationDataSource.prepareController(_:for:completion:)(v25, v6, partial apply for closure #2 in DOCBrowserNavigationDataSource.hierarchyController(_:prepareControllersFor:_:isUserInteraction:isBrowsingTrash:completion:), v20);

        v23 += 2;
        if (v21 == v22)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
      continue;
    }

    break;
  }

LABEL_16:
}

void specialized DOCBrowserNavigationDataSource.willSetViewControllers(_:effectiveViewControllers:animated:)(char a1)
{
  v3 = v1;
  v5 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x188))() != 3)
  {
    v11 = (*((*v5 & *v1) + 0xF0))();
    if (v11 >> 62)
    {
      v3 = v11;
      v12 = __CocoaSet.count.getter();
      v11 = v3;
      if (!v12)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_30;
      }
    }

    v13 = __OFSUB__(v12, 1);
    v14 = v12 - 1;
    if (v13)
    {
      __break(1u);
    }

    else if ((v11 & 0xC000000000000001) == 0)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v11 + 8 * v14 + 32);
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_37;
    }

    v15 = MEMORY[0x24C1FC540](v14);
LABEL_21:
    v18 = v15;

    type metadata accessor for DOCBrowserContainerController();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      [v16 setEditing:0 animated:0];
    }

LABEL_23:

    return;
  }

  v6 = (*((*v5 & *v1) + 0xD8))();
  if (!v6)
  {
    return;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    v2 = v6;
    v17 = __CocoaSet.count.getter();
    v6 = v2;
    if (v17)
    {
LABEL_5:
      if ((v6 & 0xC000000000000001) == 0)
      {
        if (!*(v7 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v8 = *(v6 + 32);
        goto LABEL_8;
      }

LABEL_37:
      v8 = MEMORY[0x24C1FC540](0);
LABEL_8:
      v18 = v8;

      v9 = (*((*v5 & *v3) + 0x140))([v18 setEditing:0 animated:0]);
      if (v9)
      {
        v2 = v9;
        if (!((*((*v5 & *v3) + 0x108))() >> 62))
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
LABEL_11:

          type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v2 dataSource:v3 willSet:isa on:v18 animated:a1 & 1];

          swift_unknownObjectRelease();
          return;
        }

LABEL_39:
        type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
        _bridgeCocoaArray<A>(_:)();
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_30:
}

unint64_t specialized DOCBrowserNavigationDataSource.scrollColumnModeToLastColumn(afterDroppingColumns:animated:completion:)(uint64_t a1, char a2, void *a3, void (**a4)(void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *a3) + 0x188);
  v11 = _Block_copy(a4);
  if (v10(v11) != 3)
  {
    goto LABEL_16;
  }

  result = (*((*v9 & *a3) + 0xD8))();
  if (!result)
  {
    goto LABEL_16;
  }

  v13 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_15:

    goto LABEL_16;
  }

  v32 = result;
  v14 = __CocoaSet.count.getter();
  result = v32;
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_5:
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else if ((result & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *(v13 + 16))
    {
      v17 = *(result + 8 * v16 + 32);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_24;
  }

  v17 = MEMORY[0x24C1FC540](v16);
LABEL_10:
  v18 = v17;

  v20 = (*((*v9 & *v18) + 0xB0))(v19);
  specialized BidirectionalCollection.dropLast(_:)(a1, v20);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v26 >> 1;
  if (v24 == v26 >> 1)
  {

    swift_unknownObjectRelease();
LABEL_16:
    a4[2](a4);
    goto LABEL_17;
  }

  if (v27 <= v24)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v28 = *(v22 + 8 * v27 - 8);
  swift_unknownObjectRelease();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  v29[4] = v8;
  v30 = *((*v9 & *v18) + 0x1F0);
  v31 = v28;

  v30(v28, a2 & 1, partial apply for closure #1 in DOCBrowserNavigationDataSource.scrollColumnModeToLastColumn(afterDroppingColumns:animated:completion:), v29);

LABEL_17:
}

void specialized DOCBrowserNavigationDataSource.hierarchyController(_:willReplaceTrailingLocations:with:animated:completion:)(int a1, uint64_t a2, unint64_t a3, char a4, void *a5, void *aBlock)
{
  _Block_copy(aBlock);
  v11 = specialized _arrayConditionalCast<A, B>(_:)(a3, type metadata accessor for DOCBrowserContainerController);
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  v13 = MEMORY[0x277D85000];
  v22 = (*((*MEMORY[0x277D85000] & *a5) + 0x108))();
  specialized RangeReplaceableCollection<>.removeLast(_:)(a2, specialized Array.replaceSubrange<A>(_:with:), v14);

  v16 = specialized Array.append<A>(contentsOf:)(v15);
  if (*((*v13 & *a5) + 0x188))(v16) == 3 && (DOCHierarchyController.effectiveRootLocationIsHidingParentLocations.getter())
  {
    v21 = DOCBrowserNavigationDataSource.currentBrowserContainers()();
    specialized RangeReplaceableCollection<>.removeLast(_:)(a2, specialized Array.replaceSubrange<A>(_:with:), v17);
    specialized Array.append<A>(contentsOf:)(v12);
    v18 = v21;
  }

  else
  {

    v18 = 0;
  }

  if (v22 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  }

  if (v18)
  {
    if (v18 >> 62)
    {
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    }
  }

  specialized DOCBrowserNavigationDataSource.willSetViewControllers(_:effectiveViewControllers:animated:)(a4 & 1);

  if (a3 >> 62)
  {
    v19 = __CocoaSet.count.getter();
    if (v19 < a2)
    {
      goto LABEL_14;
    }

LABEL_18:
    (*(aBlock + 2))(aBlock);
    goto LABEL_19;
  }

  v19 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19 >= a2)
  {
    goto LABEL_18;
  }

LABEL_14:
  v20 = a2 - v19;
  if (__OFSUB__(a2, v19))
  {
    __break(1u);
    return;
  }

  _Block_copy(aBlock);
  specialized DOCBrowserNavigationDataSource.scrollColumnModeToLastColumn(afterDroppingColumns:animated:completion:)(v20, 1, a5, aBlock);
  _Block_release(aBlock);
LABEL_19:

  _Block_release(aBlock);
}

void specialized DOCBrowserNavigationDataSource.hierarchyController(_:didReveal:source:)()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x188))() != 3)
  {
    return;
  }

  v3 = *((*v2 & *v0) + 0xD8);
  v4 = v3();
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      v11 = v4;
      v6 = __CocoaSet.count.getter();
      v4 = v11;
      if (v6)
      {
LABEL_5:
        v7 = __OFSUB__(v6, 1);
        v8 = v6 - 1;
        if (v7)
        {
          __break(1u);
        }

        else if ((v4 & 0xC000000000000001) == 0)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v8 < *(v5 + 16))
          {
            v9 = *(v4 + 8 * v8 + 32);
LABEL_10:
            v10 = v9;

            (*((*v2 & *v10) + 0x270))(0);

            goto LABEL_13;
          }

          __break(1u);
          goto LABEL_51;
        }

        v9 = MEMORY[0x24C1FC540](v8);
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_13:
  v40 = v3;
  v38 = *((*v2 & *v1) + 0x108);
  v12 = (v38)(v4);
  v13 = v12;
  if (v12 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C1FC540](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      (*((*v2 & *v16) + 0x1C0))(1);

      ++v15;
      if (v18 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:

  v3 = v38;
  (v38)(v19);

  v21 = (v40)(v20);
  if (v21)
  {
    v22 = v21 & 0xFFFFFFFFFFFFFF8;
    if (v21 >> 62)
    {
      v35 = v21;
      v36 = __CocoaSet.count.getter();
      v21 = v35;
      if (v36)
      {
LABEL_29:
        if ((v21 & 0xC000000000000001) == 0)
        {
          v23 = *(v22 + 16);
          if (!v23)
          {
            __break(1u);
            goto LABEL_58;
          }

          v24 = *(v21 + 32);
LABEL_32:
          v40 = v24;

          v25 = (*((*v2 & *v40) + 0xB0))();
          if (v25 >> 62)
          {
            v37 = v25;
            v26 = __CocoaSet.count.getter();
            v25 = v37;
            if (v26)
            {
LABEL_34:
              v7 = __OFSUB__(v26, 1);
              v23 = v26 - 1;
              if (!v7)
              {
                if ((v25 & 0xC000000000000001) == 0)
                {
                  if ((v23 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
                  }

                  else if (v23 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v27 = *(v25 + 8 * v23 + 32);
LABEL_39:
                    v28 = v27;

                    v30 = (v3)(v29);
                    v31 = (*((*v2 & *v40) + 0xB8))(v30);
                    v32 = (*((*v2 & *v1) + 0x158))(v31);
                    if (v32)
                    {
                      [v32 configureColumnViewController_];
                      swift_unknownObjectRelease();
                    }

                    v33 = *((*v2 & *v40) + 0x1F0);
                    v39 = v28;
                    v33(v28, 1, DOCGridLayout.specIconWidth.modify, 0);

                    v34 = v39;
                    goto LABEL_54;
                  }

                  __break(1u);
                  return;
                }

LABEL_59:
                v27 = MEMORY[0x24C1FC540](v23);
                goto LABEL_39;
              }

LABEL_58:
              __break(1u);
              goto LABEL_59;
            }
          }

          else
          {
            v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v26)
            {
              goto LABEL_34;
            }
          }

          v34 = v40;
LABEL_54:

          return;
        }

LABEL_51:
        v24 = MEMORY[0x24C1FC540](0);
        goto LABEL_32;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }
  }
}

void specialized DOCBrowserNavigationDataSource.authenticateTopViewControllerIfNeeded(in:)()
{
  if (![objc_opt_self() protectedAppsEnabled])
  {
    return;
  }

  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xC0))();
  if (!v3)
  {
    return;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_26:

    return;
  }

  v24 = v3;
  v5 = __CocoaSet.count.getter();
  v3 = v24;
  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_5:
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_30;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v8 = MEMORY[0x24C1FC540](v7);
    goto LABEL_10;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v7 >= *(v4 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = *(v3 + 8 * v7 + 32);
LABEL_10:
  v27 = v8;

  v9 = (*((*v2 & *v27) + 0xE8))();
  if (v9)
  {
    v25 = v9;
    type metadata accessor for DOCItemCollectionViewController(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v1 = v10;
      v11 = (*((*v2 & *v10) + 0xC70))();
      if (v11)
      {
        v4 = v11;
        v12 = [objc_opt_self() sharedManager];
        swift_unknownObjectRetain();
        LODWORD(v2) = [v12 nodeRequiresAuthentication:v4 Sync:?];

        DOCItemCollectionViewController.resetProtectedAppAuthenticationState(locationProtected:)(v2);
        if (one-time initialization token for UI == -1)
        {
LABEL_14:
          v13 = type metadata accessor for Logger();
          __swift_project_value_buffer(v13, static Logger.UI);
          swift_unknownObjectRetain();
          v14 = v25;
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.debug.getter();

          swift_unknownObjectRelease();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v28 = v26;
            *v17 = 136315906;
            *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x8000000249BEDF20, &v28);
            *(v17 + 12) = 1024;
            *(v17 + 14) = v2;
            *(v17 + 18) = 2080;
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
            v19 = String.init<A>(describing:)();
            v21 = v2;
            v2 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v28);

            *(v17 + 20) = v2;
            LODWORD(v2) = v21;
            *(v17 + 28) = 2112;
            *(v17 + 30) = v1;
            *v18 = v1;
            v22 = v14;
            _os_log_impl(&dword_2493AC000, v15, v16, "[PROTECTED APPS] %s requiresAuthentication: %{BOOL}d location: %s viewController: %@", v17, 0x26u);
            outlined destroy of NSObject?(v18);
            MEMORY[0x24C1FE850](v18, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v26, -1, -1);
            MEMORY[0x24C1FE850](v17, -1, -1);
          }

          if (v2)
          {
            specialized DOCHierarchyController.authenticateViewController(node:viewController:)(v4, v27);

            swift_unknownObjectRelease_n();
          }

          else
          {

            swift_unknownObjectRelease_n();
          }

          return;
        }

LABEL_33:
        swift_once();
        goto LABEL_14;
      }
    }

    v23 = v25;
  }

  else
  {
    v23 = v27;
  }
}

unint64_t specialized DOCBrowserNavigationDataSource.hierarchyController(_:didPopLocations:animated:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v2) + 0x188);
  if (v8() != 3)
  {
    goto LABEL_13;
  }

  result = (*((*v7 & *v2) + 0xD8))();
  if (!result)
  {
    goto LABEL_13;
  }

  v10 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_12:

    goto LABEL_13;
  }

  v17 = result;
  v11 = __CocoaSet.count.getter();
  result = v17;
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_5:
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_19:
    v14 = MEMORY[0x24C1FC540](v13);
    goto LABEL_10;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 >= *(v10 + 16))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v14 = *(result + 8 * v13 + 32);
LABEL_10:
  v15 = v14;

  v27[0] = (*((*v7 & *v15) + 0xB0))(v16);
  safePopLocations #1 (_:_:) in DOCBrowserNavigationDataSource.hierarchyController(_:didPopLocations:animated:)(0x736E6D756C6F63, 0xE700000000000000, v27, a1, v6);
  (*((*v7 & *v15) + 0xB8))(v27[0]);

LABEL_13:
  v26 = a2;
  v18 = (*((*v7 & *v3) + 0x118))(v27);
  safePopLocations #1 (_:_:) in DOCBrowserNavigationDataSource.hierarchyController(_:didPopLocations:animated:)(0xD000000000000011, 0x8000000249BEDCC0, v19, a1, v6);
  v18(v27, 0);
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_containerControllers;
  swift_beginAccess();
  if (*(v3 + v20))
  {
    safePopLocations #1 (_:_:) in DOCBrowserNavigationDataSource.hierarchyController(_:didPopLocations:animated:)(0xD000000000000014, 0x8000000249BEDC80, (v3 + v20), a1, v6);
  }

  v21 = swift_endAccess();
  (v8)(v21);
  specialized DOCBrowserNavigationDataSource.authenticateTopViewControllerIfNeeded(in:)();
  v22 = MEMORY[0x277D85000];
  v23 = (*((*MEMORY[0x277D85000] & *v3) + 0x140))();
  if (v23)
  {
    v24 = v23;
    (*((*v22 & *v3) + 0xF0))();
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v24 dataSource:v3 didUpdate:isa animated:v26 & 1];

    swift_unknownObjectRelease();
  }

  $defer #1 () in DOCBrowserNavigationDataSource.hierarchyController(_:didPopLocations:animated:)(v6 + 16);
}

void specialized DOCFullDocumentManagerViewController.dataSource(_:willSwitchFrom:to:)(unint64_t a1)
{
  v2 = v1;
  v4 = &selRef__setLocationsInBrowseTab_;
  v5 = [v1 hierarchyController];
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v7 = *&v5[v6];

  if (v7 >> 62)
  {
    goto LABEL_62;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
LABEL_3:
    v38 = v2;
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 fileProviderItem];
      if (v12)
      {
        v4 = v12;
        v2 = [(SEL *)v12 isFolder];

        v13 = a1 == 3;
        if (a1 >= 3)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v2 = 2;
        v13 = a1 == 3;
        if (a1 >= 3)
        {
LABEL_16:
          if (!v13)
          {
            _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
            __break(1u);
            return;
          }

          v14 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            v8 = __CocoaSet.count.getter();
            if (!v8)
            {
              break;
            }

            goto LABEL_3;
          }

          goto LABEL_19;
        }
      }

      if (v2 != 2 && (v2 & 1) == 0)
      {

        v4 = &selRef__setLocationsInBrowseTab_;
        v2 = v38;
        v16 = [v38 hierarchyController];
        v17 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
        swift_beginAccess();
        v18 = *&v16[v17];

        v19 = v18 >> 62;
        if (v18 >> 62)
        {
          v20 = __CocoaSet.count.getter();
        }

        else
        {
          v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v20 >= v9)
        {
          v21 = v9;
        }

        else
        {
          v21 = v20;
        }

        if (v20 < 0)
        {
          v21 = v9;
        }

        if (v9)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        if (v20 < v22)
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v19)
        {
          if (v18 < 0)
          {
            v8 = v18;
          }

          else
          {
            v8 = v18 & 0xFFFFFFFFFFFFFF8;
          }

          if (__CocoaSet.count.getter() >= v22)
          {
            v23 = __CocoaSet.count.getter();
            goto LABEL_40;
          }

LABEL_78:
          __break(1u);
        }

        else
        {
          v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v23 < v22)
          {
            goto LABEL_78;
          }

LABEL_40:
          if (v23 >= v20)
          {
            if ((v20 & 0x8000000000000000) == 0)
            {
              if ((v18 & 0xC000000000000001) == 0 || v22 == v20)
              {

                goto LABEL_49;
              }

              if (v22 < v20)
              {
                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);

                v24 = v22;
                do
                {
                  v25 = v24 + 1;
                  _ArrayBuffer._typeCheckSlowPath(_:)(v24);
                  v24 = v25;
                }

                while (v20 != v25);
LABEL_49:

                if (v19)
                {
                  v8 = _CocoaArrayWrapper.subscript.getter();
                  v19 = v26;
                  v22 = v27;
                  v20 = v28;

                  if (v20)
                  {
                    goto LABEL_54;
                  }

                  goto LABEL_53;
                }

                v8 = v18 & 0xFFFFFFFFFFFFFF8;
                v19 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
                v20 = (2 * v20) | 1;
                if ((v20 & 1) == 0)
                {
                  goto LABEL_53;
                }

LABEL_54:
                type metadata accessor for __ContiguousArrayStorageBase();
                swift_unknownObjectRetain_n();
                v30 = swift_dynamicCastClass();
                if (!v30)
                {
                  swift_unknownObjectRelease();
                  v30 = MEMORY[0x277D84F90];
                }

                v31 = *(v30 + 16);

                if (!__OFSUB__(v20 >> 1, v22))
                {
                  if (v31 == (v20 >> 1) - v22)
                  {
                    v15 = swift_dynamicCastClass();
                    swift_unknownObjectRelease_n();
                    if (!v15)
                    {
                      swift_unknownObjectRelease();
                      goto LABEL_64;
                    }

                    goto LABEL_65;
                  }

LABEL_83:
                  swift_unknownObjectRelease_n();
LABEL_53:
                  specialized _copyCollectionToContiguousArray<A>(_:)(v8, v19, v22, v20);
                  v15 = v29;
                  swift_unknownObjectRelease();
                  goto LABEL_65;
                }

LABEL_82:
                __break(1u);
                goto LABEL_83;
              }

LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

LABEL_80:
            __break(1u);
            goto LABEL_81;
          }
        }

        __break(1u);
        goto LABEL_80;
      }

      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_60;
      }

LABEL_19:
      ++v9;
      if (v14 == v8)
      {

        v15 = MEMORY[0x277D84F90];
        v2 = v38;
        v4 = &selRef__setLocationsInBrowseTab_;
        goto LABEL_65;
      }
    }
  }

LABEL_64:
  v15 = MEMORY[0x277D84F90];
LABEL_65:
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_67;
    }

LABEL_75:

    DOCFullDocumentManagerViewController.restoreDroppedLocationsAfterSwitchingViewStyle()();
    return;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_75;
  }

LABEL_67:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setDroppedLocationsAfterSwitchingDisplayMode_];

  v33 = [v2 viewIfLoaded];
  v34 = [v33 window];

  v35 = [v34 windowScene];
  if (!v35 || ([v35 _isPerformingSystemSnapshot] & 1) == 0)
  {
    [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v2 selector:sel_clearDroppedLocationsAfterSwitchingViewStyle object:0];
    [v2 performSelector:sel_clearDroppedLocationsAfterSwitchingViewStyle withObject:0 afterDelay:1.0];
  }

  v36 = [v2 v4[459]];
  if (v15 >> 62)
  {
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v37 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  specialized DOCHierarchyController.removeTrailingLocationCount(_:animated:)(v37);
}

unint64_t specialized DOCFullDocumentManagerViewController.configureColumnViewController(_:)(void *a1)
{
  v2 = [a1 navigationItem];
  result = (*((*MEMORY[0x277D85000] & *a1) + 0xB0))();
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    v10 = 0;
    goto LABEL_11;
  }

  v11 = result;
  v4 = __CocoaSet.count.getter();
  result = v11;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_15:
    v7 = MEMORY[0x24C1FC540](v6);
    goto LABEL_8;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v7 = *(result + 8 * v6 + 32);
LABEL_8:
  v8 = v7;

  v9 = [v8 navigationItem];

  v10 = [v9 searchController];
LABEL_11:
  [v2 doc:v10 safeSetSearchController:?];

  v12 = [a1 navigationItem];
  [v12 _setPreserveSearchBarAcrossTransitions_];

  v13 = [a1 navigationItem];
  [v13 setHidesSearchBarWhenScrolling_];

  return [a1 setDefinesPresentationContext_];
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t DeepLinkComponents.Scheme.rawValue.getter()
{
  v1 = 0x6F64646572616873;
  if (*v0 != 1)
  {
    v1 = 6450547;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t DeepLinkComponents.QueryName.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6F697461636F6CLL;
  v3 = 0x6C6165766572;
  v4 = 1852141679;
  if (v1 != 4)
  {
    v4 = 0x746E6F63776F6873;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1851876211;
  if (v1 != 1)
  {
    v5 = 0x656D616E656C6966;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

DocumentManagerExecutables::DeepLinkComponents::Scheme_optional __swiftcall DeepLinkComponents.Scheme.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DeepLinkComponents.Scheme.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DeepLinkComponents.Scheme(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F64646572616873;
  v4 = 0xEF73746E656D7563;
  if (v2 != 1)
  {
    v3 = 6450547;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701603686;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6F64646572616873;
  v8 = 0xEF73746E656D7563;
  if (*a2 != 1)
  {
    v7 = 6450547;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701603686;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DeepLinkComponents.Scheme()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DeepLinkComponents.Scheme()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DeepLinkComponents.Scheme()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DeepLinkComponents.Scheme(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF73746E656D7563;
  v5 = 0x6F64646572616873;
  if (v2 != 1)
  {
    v5 = 6450547;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701603686;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

DocumentManagerExecutables::DeepLinkComponents::QueryName_optional __swiftcall DeepLinkComponents.QueryName.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DeepLinkComponents.QueryName.init(rawValue:), v3);

  v7 = 6;
  if (v5 < 6)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DeepLinkComponents.QueryName()
{
  String.hash(into:)();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DeepLinkComponents.QueryName(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F697461636F6CLL;
  v5 = 0xE600000000000000;
  v6 = 0x6C6165766572;
  v7 = 0xE400000000000000;
  v8 = 1852141679;
  if (v2 != 4)
  {
    v8 = 0x746E6F63776F6873;
    v7 = 0xEC00000073746E65;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1851876211;
  if (v2 != 1)
  {
    v10 = 0x656D616E656C6966;
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
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t DeepLinkComponents.DeepLinkError.localizedStringResource.getter()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

Swift::Int DeepLinkComponents.DeepLinkError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DeepLinkComponents.Scheme and conformance DeepLinkComponents.Scheme()
{
  result = lazy protocol witness table cache variable for type DeepLinkComponents.Scheme and conformance DeepLinkComponents.Scheme;
  if (!lazy protocol witness table cache variable for type DeepLinkComponents.Scheme and conformance DeepLinkComponents.Scheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeepLinkComponents.Scheme and conformance DeepLinkComponents.Scheme);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeepLinkComponents.QueryName and conformance DeepLinkComponents.QueryName()
{
  result = lazy protocol witness table cache variable for type DeepLinkComponents.QueryName and conformance DeepLinkComponents.QueryName;
  if (!lazy protocol witness table cache variable for type DeepLinkComponents.QueryName and conformance DeepLinkComponents.QueryName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeepLinkComponents.QueryName and conformance DeepLinkComponents.QueryName);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeepLinkComponents.DeepLinkError and conformance DeepLinkComponents.DeepLinkError()
{
  result = lazy protocol witness table cache variable for type DeepLinkComponents.DeepLinkError and conformance DeepLinkComponents.DeepLinkError;
  if (!lazy protocol witness table cache variable for type DeepLinkComponents.DeepLinkError and conformance DeepLinkComponents.DeepLinkError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeepLinkComponents.DeepLinkError and conformance DeepLinkComponents.DeepLinkError);
  }

  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(1, v6, a2);

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t DOCTabbedBrowserViewController.newViewControllersSharing(_:tabBarItems:)(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v20 = a2;
    v21 = __CocoaSet.count.getter();
    a2 = v20;
    v2 = v21;
  }

  else
  {
    v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a2;
  v28 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v4;
    v22 = v4 & 0xC000000000000001;
    v23 = v2;
    v24 = v4;
    do
    {
      if (v22)
      {
        v8 = MEMORY[0x24C1FC540](v6, v7);
      }

      else
      {
        v8 = *(v7 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = type metadata accessor for DOCSharedSplitBrowserViewController();
      v11 = objc_allocWithZone(v10);
      *&v11[OBJC_IVAR___DOCSharedSplitBrowserViewController_keyValueObservations] = v3;
      v12 = OBJC_IVAR___DOCSharedSplitBrowserViewController_lastEnsureAppearedRequestID;
      v13 = type metadata accessor for UUID();
      (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
      swift_unknownObjectWeakInit();
      v11[OBJC_IVAR___DOCSharedSplitBrowserViewController_isBecomingOwner] = 0;
      *&v11[OBJC_IVAR___DOCSharedSplitBrowserViewController_tabItem] = v9;
      *&v11[OBJC_IVAR___DOCSharedSplitBrowserViewController_sharedSplitBrowser] = a1;
      swift_unknownObjectWeakAssign();
      v27.receiver = v11;
      v27.super_class = v10;
      v14 = a1;
      v15 = v26;
      v16 = v9;
      v17 = objc_msgSendSuper2(&v27, sel_init);
      [v17 setTabBarItem_];
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      v18 = OBJC_IVAR___DOCSharedSplitBrowserViewController_keyValueObservations;
      v19 = swift_beginAccess();
      MEMORY[0x24C1FB090](v19);
      if (*((*(v17 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v6;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 = v24;
      v3 = MEMORY[0x277D84F90];
    }

    while (v23 != v6);
    return v28;
  }

  __break(1u);
  return result;
}

void closure #1 in DOCSharedSplitBrowserViewController.init(tabBarItem:sharedSplitBrowser:tabbedBrowser:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR___DOCSharedSplitBrowserViewController_sharedSplitBrowser) preferredContentSize];
    [v1 setPreferredContentSize_];
  }
}

uint64_t type metadata accessor for DOCSharedSplitBrowserViewController()
{
  result = type metadata singleton initialization cache for DOCSharedSplitBrowserViewController;
  if (!type metadata singleton initialization cache for DOCSharedSplitBrowserViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void DOCSharedSplitBrowserViewController.startOwning()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v3 = OBJC_IVAR___DOCSharedSplitBrowserViewController_sharedSplitBrowser;
    v4 = [*&v0[OBJC_IVAR___DOCSharedSplitBrowserViewController_sharedSplitBrowser] parentViewController];
    if (v4 && (v6 = v4, type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController), v7 = v0, v8 = static NSObject.== infix(_:_:)(), v7, v6, (v8 & 1) != 0) || v1[OBJC_IVAR___DOCSharedSplitBrowserViewController_isBecomingOwner] == 1)
    {
    }

    else
    {
      v9 = *&v1[v3];
      MEMORY[0x28223BE20](v4, v5);
      v15[2] = v1;
      v15[3] = v9;
      v15[4] = v16;
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      *(v11 + 24) = partial apply for closure #1 in DOCSharedSplitBrowserViewController.startOwning();
      *(v11 + 32) = v15;
      v12 = swift_allocObject();
      *(v12 + 16) = partial apply for closure #1 in DOCPerformWithDeferredTransitionsDisabled(allowAnimation:_:);
      *(v12 + 24) = v11;
      aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_44_4;
      v13 = _Block_copy(aBlock);
      v14 = v9;

      [v10 _performWithoutDeferringTransitions_];
      _Block_release(v13);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
      }
    }
  }
}

uint64_t closure #1 in DOCSharedSplitBrowserViewController.startOwning()(_BYTE *a1, void *a2, void *a3)
{
  v41 = OBJC_IVAR___DOCSharedSplitBrowserViewController_isBecomingOwner;
  a1[OBJC_IVAR___DOCSharedSplitBrowserViewController_isBecomingOwner] = 1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFocusSystem);
  v42 = static UIFocusSystem.focusSystem(for:)();
  v6 = [v42 focusedItem];
  if (v6)
  {
    type metadata accessor for DOCSidebarItemCell(0);
    if (swift_dynamicCastClass())
    {
      [a2 setItemToFocusDuringAppearance_];
    }
  }

  v7 = [a2 parentViewController];
  if (v7)
  {

    v8 = [a2 parentViewController];
    if (!v8 || (v9 = v8, type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController), v10 = a1, v11 = static NSObject.== infix(_:_:)(), v9, v10, (v11 & 1) == 0))
    {
      [a2 beginAppearanceTransition:0 animated:0];
      [a2 doc:0 removeFromParentWithRemoveSubviewBlock:?];
      [a2 endAppearanceTransition];
    }
  }

  v12 = [a3 tabSwitcherStyleForCompactPresentation] == 0;
  v13 = OBJC_IVAR___DOCSharedSplitBrowserViewController_tabItem;
  v14 = *&a1[OBJC_IVAR___DOCSharedSplitBrowserViewController_tabItem];
  v15 = MEMORY[0x277D85000];
  v16 = *((*MEMORY[0x277D85000] & *v14) + 0x58);
  v17 = v14;
  v18 = v16();
  if (v18 >= 2)
  {
    if (v18 != 2)
    {
      type metadata accessor for DOCTab(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    v12 = 1;
  }

  [a2 setIncludeSidebarInCollapsedNavStack_];
  v19 = [a2 fullDocumentManagerViewController];
  v20 = [v19 hierarchyController];

  v21 = *&a1[v13];
  v22 = *((*v15 & *v21) + 0x58);
  v23 = v21;
  v24 = v22();

  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
  swift_beginAccess();
  *&v20[v25] = v24;

  v26 = [a2 configuration];
  v27 = *&a1[v13];
  v28 = *((*v15 & *v27) + 0x58);
  v29 = v27;
  v30 = v28();

  [v26 configureContextForDisplayingTab_];
  v31 = *&a1[v13];
  v32 = *((*v15 & *v31) + 0x58);
  v33 = v31;
  v34 = v32();

  [a3 switchToTab_];
  [a1 doc:a2 addChildWithEqualAutoresizingFrame:?];
  a1[v41] = 0;
  v35 = [*&a1[OBJC_IVAR___DOCSharedSplitBrowserViewController_sharedSplitBrowser] parentViewController];
  if (v35)
  {
    v36 = v35;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    v37 = a1;
    v38 = static NSObject.== infix(_:_:)();

    if (v38)
    {
      v39 = (*((*v15 & *v37) + 0x168))();
      (*((*v15 & *v37) + 0x170))(v39);
    }
  }

  return swift_unknownObjectRelease();
}

void closure #1 in DOCSharedSplitBrowserViewController.viewWillTransition(to:with:)(uint64_t a1, char *a2)
{
  v3 = [*&a2[OBJC_IVAR___DOCSharedSplitBrowserViewController_sharedSplitBrowser] parentViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    v5 = a2;
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      v7 = MEMORY[0x277D85000];
      v8 = (*((*MEMORY[0x277D85000] & *v5) + 0x168))();
      (*((*v7 & *v5) + 0x170))(v8);
    }
  }
}

Swift::Void __swiftcall DOCSharedSplitBrowserViewController._workaround_122589472_fixupDescendantSafeAreas()()
{
  if (one-time initialization token for disableWorkaroundFor122589472 != -1)
  {
    swift_once();
  }

  if (!disableWorkaroundFor122589472)
  {

    [v0 _doc_ipi_updateContentOverlayInsetsForSelfAndChildren];
  }
}

Swift::Void __swiftcall DOCSharedSplitBrowserViewController._workaround_122589743_fixupDescendantSearchMargins()()
{
  if (one-time initialization token for disableWorkaroundFor122589743 != -1)
  {
    goto LABEL_17;
  }

  while (!disableWorkaroundFor122589743)
  {
    v1 = [v0 viewIfLoaded];
    v2 = MEMORY[0x277D84F90];
    if (v1)
    {
      v10 = MEMORY[0x277D84F90];
      v3 = v1;
      v4 = [v1 subviews];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      specialized Sequence.forEach(_:)(v5, &v10);

      v2 = v10;
    }

    if (v2 >> 62)
    {
      v0 = __CocoaSet.count.getter();
      if (!v0)
      {
LABEL_19:

        return;
      }
    }

    else
    {
      v0 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v0)
      {
        goto LABEL_19;
      }
    }

    v6 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      specialized UIView.doc_performDepthFirstTraversal(includingSelf:_:)(0, v7);

      ++v6;
      if (v9 == v0)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }
}

uint64_t DOCSharedSplitBrowserViewController.description.getter()
{
  v1 = v0;
  v2 = [v0 tabBarItem];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 description];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v13.receiver = v1;
  v13.super_class = type metadata accessor for DOCSharedSplitBrowserViewController();
  v8 = objc_msgSendSuper2(&v13, sel_description);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v14 = v9;
  v15 = v11;
  MEMORY[0x24C1FAEA0](0x7449626174202D20, 0xEC000000203A6D65);
  MEMORY[0x24C1FAEA0](v5, v7);

  return v14;
}

id DOCSharedSplitBrowserViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void DOCSharedSplitBrowserViewController.__ivar_destroyer()
{

  outlined destroy of UUID?(v0 + OBJC_IVAR___DOCSharedSplitBrowserViewController_lastEnsureAppearedRequestID);

  JUMPOUT(0x24C1FE970);
}

id DOCSharedSplitBrowserViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSharedSplitBrowserViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void one-time initialization function for disableWorkaroundFor122589472()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001DLL, 0x8000000249BEE390);
  v2 = [v0 BOOLForKey_];

  disableWorkaroundFor122589472 = v2;
}

void one-time initialization function for disableWorkaroundFor122589743()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001DLL, 0x8000000249BEE370);
  v2 = [v0 BOOLForKey_];

  disableWorkaroundFor122589743 = v2;
}

void type metadata completion function for DOCSharedSplitBrowserViewController()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t DOCDisplayModeChangeHandler.userSelectedDisplayMode.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCDisplayModeChangeHandler_userSelectedDisplayMode;
  swift_beginAccess();
  return *v1;
}

uint64_t DOCDisplayModeChangeHandler.userSelectedDisplayMode.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCDisplayModeChangeHandler_userSelectedDisplayMode;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id DOCDisplayModeChangeHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCDisplayModeChangeHandler.init()()
{
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCDisplayModeChangeHandler_userSelectedDisplayMode];
  *v1 = 0;
  v1[8] = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DOCDisplayModeChangeHandler();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DOCDisplayModeChangeHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCDisplayModeChangeHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path setter for DOCAssociatedObjectStorage.subscript<A>(_:) : <A><A1>DOCAssociatedObjectStorage<A>AA1(uint64_t a1, void **a2, uint64_t *a3)
{
  v6 = type metadata accessor for Optional();
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v15 - v9;
  v11 = *a3;
  (*(v12 + 16))(&v15 - v9, a1, v8);
  v13 = *((*MEMORY[0x277D85000] & **a2) + 0x68);

  return v13(v10, v11);
}

{
  v6 = type metadata accessor for Optional();
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v15 - v9;
  v11 = *a3;
  (*(v12 + 16))(&v15 - v9, a1, v8);
  v13 = *((*MEMORY[0x277D85000] & **a2) + 0x80);

  return v13(v10, v11);
}

uint64_t DOCAssociatedObjectStorage.subscript.setter(uint64_t a1, void *a2)
{
  specialized DOCAssociatedObjectStorage.subscript.setter(a1, a2);

  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void (*DOCAssociatedObjectStorage.subscript.modify(void *a1, void *a2))(void ***a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = MEMORY[0x277D84DE8];
  v9 = *MEMORY[0x277D84DE8];
  v10 = type metadata accessor for Optional();
  v7[2] = v10;
  v11 = *(v10 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
    v9 = *v8;
  }

  else
  {
    v7[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v7[5] = v13;
  DOCAssociatedObjectStorage._value<A>(for:)(a2, *(*a2 + v9 + 8), v13);
  return DOCAssociatedObjectStorage.subscript.modify;
}

{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = MEMORY[0x277D84DE8];
  v9 = *MEMORY[0x277D84DE8];
  v10 = *(*a2 + *MEMORY[0x277D84DE8] + 8);
  v6[2] = v10;
  v11 = *(v10 - 8);
  v6[3] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
    v9 = *v8;
  }

  else
  {
    v6[4] = malloc(v12);
    v13 = malloc(v12);
  }

  v7[5] = v13;
  DOCAssociatedObjectStorage._value<A>(for:)(a2, *(*(*a2 + v9 + 8) + 16), v13);
  return DOCAssociatedObjectStorage.subscript.modify;
}

void DOCAssociatedObjectStorage.subscript.modify(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (v6[2])((*a1)[4], v4, v5);
    v8 = *(*v7 + *MEMORY[0x277D84DE8] + 8);

    DOCAssociatedObjectStorage._set<A>(value:for:)(v3, v7, v8);

    v9 = v6[1];
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    v10 = *(*v7 + *MEMORY[0x277D84DE8] + 8);

    DOCAssociatedObjectStorage._set<A>(value:for:)(v4, v7, v10);

    (v6[1])(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (v6[2])((*a1)[4], v4, v5);
    v8 = *(*(*v7 + *MEMORY[0x277D84DE8] + 8) + 16);

    DOCAssociatedObjectStorage._set<A>(value:for:)(v3, v7, v8);

    v9 = v6[1];
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    v10 = *(*(*v7 + *MEMORY[0x277D84DE8] + 8) + 16);

    DOCAssociatedObjectStorage._set<A>(value:for:)(v4, v7, v10);

    (v6[1])(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DOCAssociatedObjectStorage.nonNullValue<A>(forPropertyStorageKey:defaultValue:)@<X0>(const void **a1@<X0>, void (*a2)(id)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v21 - v12;
  v14 = *a1;
  v15 = objc_getAssociatedObject(v4, v14);
  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v21, v22);
    outlined init with take of Any(v22, v21);
    v16 = swift_dynamicCast();
    v17 = *(*(a3 - 8) + 56);
    if (v16)
    {
      v18 = *(a3 - 8);
      v17(v13, 0, 1, a3);
      return (*(v18 + 32))(a4, v13, a3);
    }

    v17(v13, 1, 1, a3);
    v15 = (*(v10 + 8))(v13, v9);
  }

  a2(v15);
  v20 = _bridgeAnythingToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v4, v14, v20, 1);
  return swift_unknownObjectRelease();
}

id DOCAssociatedObjectStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCAssociatedObjectStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for DOCAssociatedObjectStorageKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCAssociatedObjectStorageKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of DOCAssociatedObjectStorage.subscript.modify()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
}

uint64_t DOCPlaceholderDataSource.__allocating_init(configuration:documentManager:actionManager:location:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = objc_allocWithZone(type metadata accessor for DOCPlaceHolderViewController());
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_B872FCAF23077CF9DADFE348B0B820D828DOCPlaceHolderViewController_location] = a4;
  *(v8 + 16) = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(a1, a2, a3);
  return v8;
}

uint64_t DOCPlaceHolderViewController.eventReporting.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting];
  swift_beginAccess();
  *(v5 + 1) = a2;
  swift_unknownObjectWeakAssign();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return swift_unknownObjectRelease();
  }

  v6 = *(v5 + 1);
  v7 = swift_getObjectType();
  v11[3] = ObjectType;
  v11[0] = v2;
  v8 = *(v6 + 8);
  v9 = v2;
  v8(v11, 1, 1, 0, v7, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

void (*DOCPlaceHolderViewController.eventReporting.modify(uint64_t *a1))(void *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = swift_getObjectType();
  v4[9] = DOCBrowserContainedViewController.eventReporting.modify(v4);
  return DOCPlaceHolderViewController.eventReporting.modify;
}

void DOCPlaceHolderViewController.eventReporting.modify(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 72))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = v3[7] + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = v3[7];
      v5 = v3[8];
      v7 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v3[3] = v5;
      *v3 = v6;
      v9 = *(v7 + 8);
      v10 = v6;
      v9(v3, 1, 1, 0, ObjectType, v7);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v3);
    }
  }

  free(v3);
}

void specialized DOCOverlayUpdatable<>.applyTitleToNavigationItem(_:for:)(void *a1, DOCConcreteLocation_optional *a2)
{
  if (DOCBrowserContainedViewController._uip_neverShowNavigationTitle(for:)(a2))
  {
    v5 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_3:
      v6 = *(v5 + 4);
      v7 = *(v5 + 5);

      [a1 setLargeTitleDisplayMode_];

      v8.value._countAndFlagsBits = v6;
      v8.value._object = v7;
      UINavigationItem.doc_setAlternateLargeTitles(_:forTitle:)(v5, v8);

      v9 = MEMORY[0x24C1FAD20](v6, v7);

      goto LABEL_6;
    }
  }

  else
  {
    v5 = UIViewController.doc_largeNavigationTitleOptions(for:configuration:)(a2, *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration));

    if (*(v5 + 2))
    {
      goto LABEL_3;
    }
  }

  swift_bridgeObjectRelease_n();
  v9 = [(DOCConcreteLocation_optional *)a2 displayName];
  [a1 setLargeTitleDisplayMode_];
  [a1 set:0 alternateLargeTitles:?];
LABEL_6:
  [a1 setTitle_];
}

Swift::Void __swiftcall UINavigationItem.doc_setAlternateLargeTitles(_:forTitle:)(Swift::OpaquePointer _, Swift::String_optional forTitle)
{
  v3 = *(_._rawValue + 2);
  if (!v3 || v3 == 1 && forTitle.value._object && (*(_._rawValue + 4) == forTitle.value._countAndFlagsBits ? (v5 = *(_._rawValue + 5) == forTitle.value._object) : (v5 = 0), v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    [v2 set:0 alternateLargeTitles:?];
  }

  else
  {
    v6 = [v2 _alternateLargeTitles];
    if (v6)
    {
      v7 = v6;
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(_._rawValue, v8);

    if ((v9 & 1) == 0)
    {
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v2 set:isa alternateLargeTitles:?];
    }
  }
}

uint64_t DOCPlaceholderDataSource.init(configuration:documentManager:actionManager:location:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(type metadata accessor for DOCPlaceHolderViewController());
  *&v10[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_B872FCAF23077CF9DADFE348B0B820D828DOCPlaceHolderViewController_location] = a4;
  *(v5 + 16) = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(a1, a2, a3);
  return v5;
}

void *DOCPlaceholderDataSource.containedViewController(for:)()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t DOCPlaceholderDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized DOCPlaceHolderViewController.updateOverlay(animated:)()
{
  v1 = v0;
  if (([v0 doc:sel__doc_performLiveResizeSkipped_updateOverlay scheduleHandlerIfInLiveResize:?] & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_containerNavigationItem;
    swift_beginAccess();
    v3 = *&v1[v2];
    if (v3)
    {
      v4 = v3;
      [v4 setHidesSearchBarWhenScrolling_];
      [v4 setHidesBackButton_];
      v5 = *&v1[v2];
      if (!v5)
      {
LABEL_47:
        specialized DOCOverlayUpdatable<>.applyTitleToNavigationItem(_:for:)(v4, *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_B872FCAF23077CF9DADFE348B0B820D828DOCPlaceHolderViewController_location]);

        return;
      }

      v36 = v4;
      v6 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_overlayDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 1);
        ObjectType = swift_getObjectType();
        v9 = *(v7 + 56);
        v10 = v5;
        v11 = v9(ObjectType, v7);
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = v5;
        v11 = MEMORY[0x277D84F90];
      }

      v37 = v5;
      v13 = v11 & 0xFFFFFFFFFFFFFF8;
      if (v11 >> 62)
      {
LABEL_53:
        v14 = __CocoaSet.count.getter();
      }

      else
      {
        v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = 0;
      do
      {
        v16 = v15;
        if (v14 == v15)
        {
          break;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x24C1FC540](v15, v11);
        }

        else
        {
          if (v15 >= *(v13 + 16))
          {
            goto LABEL_52;
          }

          v17 = *(v11 + 8 * v15 + 32);
        }

        v18 = v17;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_51;
        }

        v19 = (*((*MEMORY[0x277D85000] & *v17) + 0x98))();

        v15 = v16 + 1;
      }

      while ((v19 & 1) == 0);
      if ([v1 enclosedInUIPDocumentLanding])
      {
        v20 = [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration] defaultEffectiveTabIdentifierForLocationRestore];
        v21 = DOCTabIdentifier.tab.getter();
        v23 = v22;

        if (v14 != v16)
        {
          v24 = v37;
          if (v11 >> 62)
          {
            goto LABEL_39;
          }

          goto LABEL_26;
        }

        v24 = v37;
        if ((v23 & 1) == 0 && v21 != 2)
        {

          v11 = MEMORY[0x277D84F90];
          if (MEMORY[0x277D84F90] >> 62)
          {
LABEL_39:
            v25 = __CocoaSet.count.getter();
            if (v25)
            {
              goto LABEL_27;
            }

LABEL_40:

            v11 = MEMORY[0x277D84F90];
LABEL_41:
            if (v11 >> 62)
            {
              v32 = __CocoaSet.count.getter();
            }

            else
            {
              v32 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            [v24 setLeftItemsSupplementBackButton_];
            [v24 setHidesBackButton_];
            if (v11 >> 62)
            {
              type metadata accessor for UIBarButtonItem();

              v34 = _bridgeCocoaArray<A>(_:)();
              swift_bridgeObjectRelease_n();
              v33 = v34;
            }

            else
            {

              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
              type metadata accessor for UIBarButtonItem();

              v33 = v11;
            }

            v35 = MEMORY[0x277D84F90];
            specialized UINavigationItem.doc_applyLeadingBarButtonItems(_:fixedItems:animated:)(MEMORY[0x277D84F90], v33);

            specialized UINavigationItem.doc_applyTrailingBarButtonItems(_:fixedItems:animated:)(v35, 0);

            v4 = v36;
            goto LABEL_47;
          }

LABEL_26:
          v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
LABEL_27:
            v26 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
            swift_beginAccess();
            v27 = 0;
            v13 = v11 & 0xC000000000000001;
            while (1)
            {
              if (v13)
              {
                v29 = MEMORY[0x24C1FC540](v27, v11);
              }

              else
              {
                if (v27 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_50;
                }

                v29 = *(v11 + 8 * v27 + 32);
              }

              v30 = v29;
              v31 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                break;
              }

              if ([v1 isEditing])
              {
                v28 = v1[v26];
              }

              else
              {
                v28 = 1;
              }

              (*((*MEMORY[0x277D85000] & *v30) + 0x88))(v28);

              ++v27;
              if (v31 == v25)
              {
                v24 = v37;
                goto LABEL_41;
              }
            }

            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v24 = v37;
      }

      if (v11 >> 62)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }
  }
}

uint64_t DOCThreadSafeState.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DOCThreadSafeState.init(_:)(a1);
  return v2;
}

id *DOCThreadSafeState.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t DOCThreadSafeState.__deallocating_deinit()
{
  DOCThreadSafeState.deinit();

  return swift_deallocClassInstance();
}

id UIView.doc_tintColorIgnoringVibrancyContainer.getter()
{
  result = [v0 tintColor];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall UIView.doc_sendTintColorIgnoringVibrancyContainerDidChange(toSelf:toSubviews:)(Swift::Bool toSelf, Swift::Bool toSubviews)
{
  if (toSelf)
  {
    [v2 tintColorDidChange];
  }

  if (toSubviews)
  {
    v4 = [v2 subviews];
    type metadata accessor for UIView();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x24C1FC540](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        UIView.doc_sendTintColorIgnoringVibrancyContainerDidChange(toSelf:toSubviews:)(1, 1);

        ++v7;
        if (v10 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }
}

Swift::Void __swiftcall DOCSidebarViewController.selectNewlyAddedSource(with:)(Swift::String_optional with)
{
  v2 = v1;
  if (with.value._object)
  {
    v3 = *((*MEMORY[0x277D85000] & *v1) + 0x248);
    v4 = v3();
    v5 = (*(*v4 + 136))(4);
    v7 = v6;

    v8 = sidebarItems #1 (section:) in DOCSidebarViewController.selectNewlyAddedSource(with:)(v5, v7);
    v9 = swift_unknownObjectRelease();
    v10 = (v3)(v9);
    v11 = (*(*v10 + 136))(3);
    v13 = v12;

    v14 = sidebarItems #1 (section:) in DOCSidebarViewController.selectNewlyAddedSource(with:)(v11, v13);
    swift_unknownObjectRelease();
    *v40 = v8;
    specialized Array.append<A>(contentsOf:)(v14, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
    v15 = v8;
    if (v8 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x24C1FC540](v17, v15);
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v21 = *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
        if (v21)
        {
          v22 = [v21 identifier];
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          v26._countAndFlagsBits = v23;
          v26._object = v25;
          LOBYTE(v22) = String.hasPrefix(_:)(v26);

          if (v22)
          {

            *v40 = v19;
            memset(&v40[8], 0, 32);
            v40[40] = 1;
            DOCSidebarViewController.selectSidebarItem(_:scrollToVisible:animated:)(v40, 1, 1);
            v27 = *(v2 + OBJC_IVAR___DOCSidebarViewController_locationSelection);

            v34 = DOCSidebarItem.representedLocation.getter(v28, v29, v30, v31, v32, v33);
            v35 = *(v27 + 24);
            *(v27 + 24) = v34;

            v36 = (*((*MEMORY[0x277D85000] & *v2) + 0x488))();
            v38 = *v40;
            v39[0] = *&v40[16];
            *(v39 + 9) = *&v40[25];
            (*(*v36 + 312))(&v38, 0);

            return;
          }
        }

        ++v17;
        if (v20 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  *(v2 + OBJC_IVAR___DOCSidebarViewController_pendingSelectionProviderDomainIdentifier) = with;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  if (a1 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v7 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v6);
    result = v7 + v6;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = __CocoaSet.count.getter();
  v8 = __OFADD__(v13, v6);
  result = v13 + v6;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v3 = *v1;
  v4 = *v1 & 0xFFFFFFFFFFFFFF8;
  v10 = *(v4 + 0x10);
  v2 = (*(v4 + 0x18) >> 1) - v10;
  result = specialized Sequence._copyContents(initializing:)(&v22, (v4 + 8 * v10 + 32), v2, a1);
  if (result < v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v11 = *(v4 + 16);
    v8 = __OFADD__(v11, result);
    v12 = v11 + result;
    if (v8)
    {
      __break(1u);
LABEL_37:
      *(v20 + 16) = v4;
      goto LABEL_10;
    }

    *(v4 + 16) = v12;
  }

  if (result != v2)
  {
LABEL_10:

    *v1 = v3;
    return result;
  }

LABEL_16:
  if (!v23)
  {
    goto LABEL_10;
  }

  v14 = v23 - 1;
  if (__OFSUB__(v23, 1))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v4 = *(v4 + 16);
  v6 = v22;
  v2 = v22 & 0xC000000000000001;
  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_42:
    v15 = MEMORY[0x24C1FC540](v14, v6);
    v21 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
LABEL_23:
      if (v4 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = v15;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v15 = v19;
      }

      v3 = *v1;
      v16 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      v17 = v16 - v4;
      if (v16 > v4)
      {
        break;
      }

      *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    }

    v20 = *v1 & 0xFFFFFFFFFFFFFF8;
    v18 = (v20 + 8 * v4++ + 32);
    while (1)
    {
      *v18 = v15;
      if (!v14)
      {
        goto LABEL_37;
      }

      v8 = __OFSUB__(v14--, 1);
      if (v8)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v2)
      {
        v15 = MEMORY[0x24C1FC540](v14, v6);
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v14 >= *(v21 + 16))
        {
          goto LABEL_40;
        }

        v15 = *(v6 + 32 + 8 * v14);
      }

      ++v18;
      ++v4;
      if (!--v17)
      {
        v4 = v16;
        *(v20 + 16) = v16;
        goto LABEL_23;
      }
    }
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v21 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v14 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v22 + 8 * v14 + 32);
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for DOCFileOperation);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277CC9AF8]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_s26DocumentManagerExecutables12DOCOperationCSgMd);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_sSo19DOCConcreteLocationCSgMd);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for DOCBrowserHistoryItem);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v8 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v8 = *(v4 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v4 + 16) = v10;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = __CocoaSet.count.getter();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = __CocoaSet.count.getter();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pMd);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void static DOCSidebarViewController.fetchTrashItems(from:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  specialized static DOCSidebarViewController.fetchTrashItems(from:completionHandler:)(a1, a2, a3);
}

Swift::Void __swiftcall DOCSidebarViewController.prepareForTeardown()()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_recentlyUsedFavoritesSubscriber;
  v2 = *(v0 + OBJC_IVAR___DOCSidebarViewController_recentlyUsedFavoritesSubscriber);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedManager];
    [v5 removeSubscriber_];

    v6 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v7 = (v0 + OBJC_IVAR___DOCSidebarViewController_recentlyUsedNotificationRegistration);
  v8 = *(v0 + OBJC_IVAR___DOCSidebarViewController_recentlyUsedNotificationRegistration + 8);
  if (v8)
  {
    v9 = *v7;

    v10 = DOCSidebarViewController.notificationsController.getter();
    (*(*v10 + 168))(v9, v8);

    *v7 = 0;
    v7[1] = 0;
  }
}

uint64_t DOCSidebarViewController.shouldChangeExpandedState(of:to:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    v7 = 0x646E61707865;
  }

  else
  {
    v7 = 0x657370616C6C6F63;
  }

  if (a3)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  v16.receiver = v4;
  v16.super_class = type metadata accessor for DOCSidebarViewController(0);
  result = objc_msgSendSuper2(&v16, sel_collectionView);
  if (result)
  {
    v10 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v11 = [swift_dynamicCastClassUnconditional() hasUncommittedUpdates];

    if (v11)
    {
      logIgnoredRequest #1 (withReason:) in DOCSidebarViewController.shouldChangeExpandedState(of:to:)(0xD000000000000027, 0x8000000249BEE5A0, v7, v8);

      return 0;
    }

    v12._object = 0x8000000249BD9B90;
    v12._countAndFlagsBits = 0xD000000000000016;
    DOCSidebarViewController.beginDeferReloadsForUIChange(logID:)(v12);
    ObjectType = swift_getObjectType();
    if ((*(a2 + 16))(ObjectType, a2) > 4u)
    {

      if (a3)
      {
LABEL_18:

        return 1;
      }
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((a3 & 1) != 0 || (v14 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (!DOCSidebarViewController.finishEditing(force:)(0))
    {
      logIgnoredRequest #1 (withReason:) in DOCSidebarViewController.shouldChangeExpandedState(of:to:)(0xD00000000000004CLL, 0x8000000249BEE550, 0x657370616C6C6F63, 0xE800000000000000);

      v15._object = 0x8000000249BD9B90;
      v15._countAndFlagsBits = 0xD000000000000016;
      DOCSidebarViewController.endDeferReloadsForUIChange(logID:reloadImmediately:)(v15, 0);
      return 0;
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void DOCSidebarViewController.commitChangeExpandedState(of:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 16))(ObjectType, a2);
  v9 = *(**(v4 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

  v10 = v9(v8);

  v11 = (*(*v10 + 192))(a3);
  if (a3)
  {
    DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(0, 0);
  }

  v12 = (*((*MEMORY[0x277D85000] & *v4) + 0x248))(v11);
  (*(*v12 + 152))(v12);

  v13 = 0x8000000249BD9B90;
  v14 = 0xD000000000000016;

  DOCSidebarViewController.endDeferReloadsForUIChange(logID:reloadImmediately:)(*&v14, 0);
}

Swift::Void __swiftcall DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(Swift::Bool scrollToVisible, Swift::Bool forAppearance)
{
  if ([v2 doc_hasAppearedOrIsAppearing])
  {
    v5 = *(v2 + OBJC_IVAR___DOCSidebarViewController_locationSelection);
    v6 = *(v5 + 24);
    if (v6)
    {
      v24 = *(v5 + 24);
    }

    else
    {
      v7 = *(v5 + 16);
      if (!v7)
      {
        return;
      }

      v24 = v7;
      v6 = 0;
    }

    v8 = v6;
    v9 = DOCSidebarViewController.currentPresentationContext.getter();
    v11 = v9;
    if (v9 != 2 || forAppearance)
    {
      MEMORY[0x28223BE20](v9, v10);
      v22[2] = v24;
      v12 = v24;
      specialized DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:)(_s26DocumentManagerExecutables24DOCSidebarViewControllerC11sidebarItem3forAA0dH0OSgSo19DOCConcreteLocationCSg_tFSbAGXEfU_TA_0, v22, &v25);
      v23 = *(&v25 + 1);
      v13 = v25;
      v24 = v12;
      v14 = v26;
      v15 = v27;
      v16 = v28;

      v17 = MEMORY[0x277D85000];
      if ((*((*MEMORY[0x277D85000] & *v2) + 0x440))() == 2 || v16 == 255)
      {
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
        v32 = -1;
        (*((*v17 & *v2) + 0x4C0))(&v29);
        DOCSidebarViewController.deselectAllSidebarItems()();
      }

      else
      {
        v29 = v25;
        v30 = v26;
        v31 = v27;
        v32 = v16;
        v18 = *((*v17 & *v2) + 0x4C0);
        outlined copy of DOCSidebarItem(v13, v23, v14, *(&v14 + 1), v15, v16);
        v18(&v25);
        v19 = DOCSidebarViewController.selectSidebarItem(_:scrollToVisible:animated:)(&v29, scrollToVisible, 0);
        if (v11 == 2 && v19 != 2 && (v19 & 1) == 0)
        {
          v20 = [v2 view];
          if (v20)
          {
            v21 = v20;
            [v20 layoutIfNeeded];

            outlined destroy of CharacterSet?(&v25, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
          }

          else
          {
            __break(1u);
          }

          return;
        }
      }

      outlined destroy of CharacterSet?(&v25, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      return;
    }
  }
}

uint64_t DOCSidebarViewController.mutateSectionData(changingContentsIn:mutationBlock:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  v6 = *(**(v2 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

  v7 = v6(a1);

  if (a2(v7))
  {
    v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x550))();
    v9 = specialized Set.contains(_:)(a1, v8);

    if (*(v3 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) <= 0)
    {
      DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)((v9 & 1) == 0, 1);
    }

    else
    {
      DOCSidebarViewController.markModelDidUpdateDuringUIChange()();
    }
  }
}

uint64_t specialized Sequence._copyContents(initializing:)(uint64_t result, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (!(a4 >> 62))
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = v8;
    v8 = 0;
    goto LABEL_25;
  }

LABEL_23:
  result = __CocoaSet.count.getter();
  v8 = result;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v10 = v8;
    v8 = 0;
LABEL_25:
    *v7 = a4;
    v7[1] = v10;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 1;
    v10 = v8;
    while (v10)
    {
      v11 = __OFSUB__(v10--, 1);
      if (v11)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v10, a4);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v12 = *(a4 + 32 + 8 * v10);
      }

      *v6 = v12;
      if (a3 == v9)
      {
        v8 = a3;
        goto LABEL_25;
      }

      ++v6;
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCSidebarViewController.deferSelectingNewlyAddedSource(with:)(Swift::String_optional with)
{
  v2 = v1;
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.Rename);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x8000000249BEE5D0, &v14);
    *(v8 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_2493AC000, v6, v7, "[Erase] %s found matching source to select: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  v13 = (v2 + OBJC_IVAR___DOCSidebarViewController_pendingSelectionProviderDomainIdentifier);
  *v13 = countAndFlagsBits;
  v13[1] = object;
}

id DOCSidebarViewController.fullDocumentManagerViewController.getter()
{
  result = [v0 splitViewController];
  if (result)
  {
    v2 = result;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 fullDocumentManagerViewController];

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void DOCSidebarViewController.sidebarItem(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    MEMORY[0x28223BE20](a1, a2);
    v10[2] = v4;
    v5 = v4;
    specialized DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:)(closure #1 in DOCSidebarViewController.sidebarItem(for:)partial apply, v10, v13);
    v11 = v13[1];
    v12 = v13[0];
    v6 = v14;
    v7 = v15;

    v9 = v11;
    v8 = v12;
  }

  else
  {
    v6 = 0;
    v8 = 0uLL;
    v7 = -1;
    v9 = 0uLL;
  }

  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
}

uint64_t DOCSidebarViewController.currentPresentationContext.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 sourceListPresentationContext];

  if (v2)
  {
    return 2;
  }

  result = [v0 splitViewController];
  if (result)
  {
    v4 = result;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 displayMode];

      return v6 == 3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id DOCSidebarPaneNavigationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCSidebarPaneNavigationController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSidebarPaneNavigationController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCSidebarPaneNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id DOCSidebarPaneNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSidebarPaneNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCSidebarViewController.sidebarHasActiveFocus.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_sidebarHasActiveFocus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarViewController.sidebarHasActiveFocus.setter(char a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_sidebarHasActiveFocus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCSidebarViewController.sidebarDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCSidebarViewController.sidebarDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___DOCSidebarViewController_sidebarDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

void *DOCSidebarViewController.pickerContext.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_pickerContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

Swift::Void __swiftcall DOCSidebarViewController.updateRecentlyUsedSection()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR___DOCSidebarViewController_configuration);
  if ([v16 isPickerUI])
  {
    v42 = v9;
    v43 = v5;
    v44 = v6;
    v45 = v2;
    v46 = v1;
    if (one-time initialization token for sharedManager != -1)
    {
      swift_once();
    }

    v17 = static DOCSmartFolderManager.sharedManager;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v19;
    v41 = v18;
    v20 = (*((*MEMORY[0x277D85000] & *v0) + 0x200))();
    v39 = swift_allocObject();
    *(v39 + 16) = v0;
    v21 = objc_opt_self();
    v22 = v0;
    v23 = [v21 defaultPermission];
    v24 = [objc_opt_self() sharedManager];
    v25 = [v24 favoritedLocations];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = swift_allocObject();
    v28 = v40;
    v29 = v41;
    *(v27 + 16) = v17;
    *(v27 + 24) = v29;
    *(v27 + 32) = v28;
    *(v27 + 40) = v16;
    *(v27 + 48) = v23;
    *(v27 + 56) = 3;
    *(v27 + 64) = v20;
    *(v27 + 72) = v26;
    *(v27 + 80) = 1;
    v30 = v39;
    *(v27 + 88) = partial apply for closure #1 in DOCSidebarViewController.updateRecentlyUsedSection();
    *(v27 + 96) = v30;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    (*(v11 + 104))(v15, *MEMORY[0x277D851C8], v10);
    v41 = v20;
    v40 = v23;
    v31 = v16;
    v32 = v17;

    v33 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v15, v10);
    v34 = swift_allocObject();
    *(v34 + 16) = partial apply for closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:);
    *(v34 + 24) = v27;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_115;
    v35 = _Block_copy(aBlock);

    v36 = v42;
    static DispatchQoS.unspecified.getter();
    v48 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v37 = v43;
    v38 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v36, v37, v35);
    _Block_release(v35);

    (*(v45 + 8))(v37, v38);
    (*(v47 + 8))(v36, v44);
  }
}

uint64_t (*DOCSidebarViewController.pickerContext.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSidebarViewController.pickerContext.modify;
}

uint64_t DOCSidebarViewController.hasSomeUnseenSources.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_hasSomeUnseenSources;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarViewController.hasSomeUnseenSources.setter(char a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_hasSomeUnseenSources;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCSidebarViewController.notificationsController.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController____lazy_storage___notificationsController;
  if (*(v0 + OBJC_IVAR___DOCSidebarViewController____lazy_storage___notificationsController))
  {
    v2 = *(v0 + OBJC_IVAR___DOCSidebarViewController____lazy_storage___notificationsController);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC014DOCSidebarViewF0CGMd);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObject_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

void *DOCSidebarViewController.trashObserver.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_trashObserver;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarViewController.trashObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_trashObserver;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCSidebarViewController.trashSubscriber.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_trashSubscriber;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarViewController.trashSubscriber.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_trashSubscriber;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCSidebarViewController._diffableDataSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___DOCSidebarViewController__diffableDataSource;
  swift_beginAccess();
  return outlined init with copy of DOCGridLayout.Spec?(v1 + v3, a1, &_sypSgMd);
}

uint64_t DOCSidebarViewController._diffableDataSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController__diffableDataSource;
  swift_beginAccess();
  outlined assign with take of IndexPath?(a1, v1 + v3, &_sypSgMd);
  return swift_endAccess();
}

uint64_t DOCSidebarViewController.diffableReloadIsInProgressCount.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_diffableReloadIsInProgressCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarViewController.diffableReloadIsInProgressCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_diffableReloadIsInProgressCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCSidebarViewController.diffableNeedsReload.getter()
{
  v1 = OBJC_IVAR___DOCSidebarViewController_diffableNeedsReload;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarViewController.diffableNeedsReload.setter(char a1)
{
  v3 = OBJC_IVAR___DOCSidebarViewController_diffableNeedsReload;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}