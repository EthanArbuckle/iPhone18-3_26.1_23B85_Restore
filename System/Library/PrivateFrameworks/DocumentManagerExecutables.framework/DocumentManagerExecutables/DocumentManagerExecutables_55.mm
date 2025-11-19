uint64_t closure #1 in DOCFileSystemCollection.refreshNodesAndNotifyDelegate(_:)(void *a1, int a2)
{
  LODWORD(v44) = a2;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    swift_once();
  }

  v8 = updatePointsOfInterestHandler;
  static OSSignpostID.exclusive.getter();
  v42[1] = v8;
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  v10 = *(v4 + 8);
  v9 = v4 + 8;
  v42[0] = v10;
  v10(v7, v3);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.Enumeration);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  v15 = os_log_type_enabled(v13, v14);
  v42[2] = v9;
  v43 = v3;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v45 = v17;
    *v16 = 136446466;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v45);
    *(v16 + 12) = 2080;
    v18 = [*(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode) displayName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v45);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_2493AC000, v13, v14, "[DSEnumeration] %{public}s: DOCNode %s : data(forFileSystemCollectionShouldBeReloaded:)", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  v23 = *((*MEMORY[0x277D85000] & *v12) + 0x160);
  result = v23();
  if (result)
  {
    v26 = v25;
    ObjectType = swift_getObjectType();
    (*(v26 + 24))(v12, ObjectType, v26);
    result = swift_unknownObjectRelease();
  }

  if ((v44 & 1) == 0 && *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isFullyPopulated) == 1)
  {
    v28 = v12;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v31 = 136446466;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v45);
      *(v31 + 12) = 2080;
      v32 = [*(v28 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode) displayName];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v45);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_2493AC000, v29, v30, "[DSEnumeration] %{public}s: DOCNode %s : calling fileSystemCollectionDidFinishGathering", v31, 0x16u);
      v37 = v44;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v37, -1, -1);
      MEMORY[0x24C1FE850](v31, -1, -1);
    }

    static os_signpost_type_t.event.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v38 = (v42[0])(v7, v43);
    result = (v23)(v38);
    if (result)
    {
      v40 = v39;
      v41 = swift_getObjectType();
      (*(v40 + 16))(v28, v41, v40);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void $defer #1 () in DOCFileSystemCollection.iterator(for:)(char a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v17 - v11;
  if (a1)
  {
    v13 = [a2 fileURL];
    if (v13)
    {
      v14 = v13;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    }

    else
    {
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    }

    outlined init with take of URL?(v7, v12);
    type metadata accessor for URL();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v12, 1, v15) == 1)
    {
      outlined destroy of CharacterSet?(v12, &_s10Foundation3URLVSgMd);
    }

    else
    {
      URL.stopAccessingSecurityScopedResource()();
      (*(v16 + 8))(v12, v15);
    }
  }
}

uint64_t DOCFileSystemCollection.filter(nodes:)(unint64_t a1)
{
  v17 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = a1 & 0xC000000000000001;
    v5 = &selRef_numberOfPreviewItems;
    while (1)
    {
      if (v4)
      {
        v6 = MEMORY[0x24C1FC540](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(a1 + 8 * v3 + 32);
      }

      v7 = v6;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v6 v5[353]])
      {
        v9 = i;
        v10 = v4;
        v11 = v5;
        v12 = (*((*MEMORY[0x277D85000] & *v16) + 0x290))();
        if (v12 && (v13 = v12, v14 = [v12 evaluateWithObject_], v13, (v14 & 1) == 0))
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        v5 = v11;
        v4 = v10;
        i = v9;
      }

      else
      {
      }

      ++v3;
      if (v8 == i)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t DOCFileSystemCollection.sort(nodes:)()
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*((*MEMORY[0x277D85000] & *v0) + 0x2A8))();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSSortDescriptor);
  v2 = Array._bridgeToObjectiveC()().super.isa;

  v3 = [(objc_class *)isa sortedArrayUsingDescriptors:v2];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = MEMORY[0x277D84F90];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of Any(v6, v11);
      outlined init with take of Any(v11, &v9);
      if ((swift_dynamicCast() & 1) != 0 && v10)
      {
        MEMORY[0x24C1FB090]();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v12;
      }

      v6 += 32;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

id DOCFileSystemCollection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCFileSystemCollection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCFileSystemCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCFileSystemCollection.validate(observedNode:functionName:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      swift_unknownObjectRetain();
      v8 = a1;
      v9 = static NSObject.== infix(_:_:)();
      swift_unknownObjectRelease();

      if (v9)
      {
        return 1;
      }
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
      swift_unknownObjectRetain();
      v10 = a1;
      v11 = static NSObject.== infix(_:_:)();
      swift_unknownObjectRelease();

      if (v11)
      {
        return 1;
      }
    }
  }

  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.Enumeration);
  v14 = a1;

  v15 = v4;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v18 = 136446722;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v24);
    *(v18 + 12) = 2114;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      swift_unknownObjectRetain();
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    *(v18 + 14) = v21;
    *(v18 + 22) = 2114;
    *(v18 + 24) = v14;
    *v19 = v22;
    v19[1] = v14;
    v23 = v14;
    _os_log_impl(&dword_2493AC000, v16, v17, "[DSEnumeration] %{public}s: Received notification for node not being observed.\n\tExpected: %{public}@\n\tReceived: %{public}@", v18, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C1FE850](v20, -1, -1);
    MEMORY[0x24C1FE850](v18, -1, -1);
  }

  return 0;
}

uint64_t DOCFileSystemCollection.changed(child:in:for:)(void *a1, void *a2, int a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = DOCFileSystemCollection.validate(observedNode:functionName:)(a2, 0xD000000000000016, 0x8000000249BF1950);
  if (result)
  {
    v22[2] = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v22[1] = v18;
    *(v19 + 24) = a3;
    *(v19 + 32) = a1;
    aBlock[4] = partial apply for closure #1 in DOCFileSystemCollection.changed(child:in:for:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_63_3;
    v20 = _Block_copy(aBlock);

    v21 = a1;
    static DispatchQoS.unspecified.getter();
    v22[3] = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v22[0] = v12;
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v16, v11, v20);
    _Block_release(v20);
    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v16, v22[0]);
  }

  return result;
}

void closure #1 in DOCFileSystemCollection.changed(child:in:for:)(uint64_t a1, char *a2, void *a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = MEMORY[0x277D85000];
    if (((*((*MEMORY[0x277D85000] & *Strong) + 0x1D8))() & 1) == 0 || (v13 = (*((*v12 & *v11) + 0x1C0))(), v14 = specialized _arrayConditionalCast<A, B>(_:)(v13), , !v14))
    {

      return;
    }

    v59[1] = v14;
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v56 = v14;
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.Enumeration);
    v16 = a3;
    v17 = v11;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v57 = v16;
      v21 = v20;
      v54 = swift_slowAlloc();
      v58[0] = v54;
      *v21 = 136446978;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BF1950, v58);
      *(v21 + 12) = 2082;
      v22 = [objc_opt_self() propertyName_];
      v55 = a2;
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v18;
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v58);

      *(v21 + 14) = v27;
      HIDWORD(v52) = v19;
      *(v21 + 22) = 2080;
      v28 = [v57 displayName];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v58);

      *(v21 + 24) = v32;
      *(v21 + 32) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA0290;
      *(inited + 32) = v57;
      v34 = v57;
      a2 = specialized DOCFileSystemCollection.logStr(nodes:)(inited);
      v36 = v35;
      swift_setDeallocating();
      v12 = MEMORY[0x277D85000];
      swift_arrayDestroy();
      v37 = a2;
      LODWORD(a2) = v55;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, v58);

      *(v21 + 34) = v38;
      v39 = v53;
      _os_log_impl(&dword_2493AC000, v53, BYTE4(v52), "[DSEnumeration] %{public}s: Property %{public}s changed on %s%s", v21, 0x2Au);
      v40 = v54;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v40, -1, -1);
      v41 = v21;
      v16 = v57;
      MEMORY[0x24C1FE850](v41, -1, -1);
    }

    else
    {
    }

    LOBYTE(v58[0]) = 0;
    specialized DOCNode.markCachedLocalizedChildItemCountDescriptionAsStale(forProperty:)(a2);
    if (![v16 propertyAsBool_] || (v42 = (*((*v12 & *v17) + 0x290))()) != 0 && (v43 = v42, v44 = objc_msgSend(v42, sel_evaluateWithObject_, v16), v43, (v44 & 1) == 0))
    {
      v45 = specialized Collection<>.firstIndex(of:)(v16, v56);
      if ((v46 & 1) == 0)
      {
      }
    }

    v47 = *(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
    *v9 = v47;
    (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
    v48 = v47;
    LOBYTE(v47) = _dispatchPreconditionTest(_:)();
    (*(v6 + 8))(v9, v5);
    if (v47)
    {
      if (!specialized Set.contains(_:)(a2, *(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_propertiesImpactingSort)))
      {

        goto LABEL_21;
      }

      v49 = DOCFileSystemCollection.sort(nodes:)();

      if (!(v49 >> 62))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        v50 = v49;
LABEL_19:

        (*((*v12 & *v17) + 0x1C8))(v50);
LABEL_21:
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v59, v16);
        v51 = v59[0];
        swift_endAccess();

        DOCFileSystemCollection.flushPendingNodesUpdates()();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v50 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_19;
  }
}

uint64_t DOCFileSystemCollection.changed(_:for:)(void *a1, int a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = DOCFileSystemCollection.validate(observedNode:functionName:)(a1, 0x286465676E616863, 0xEF293A726F663A5FLL);
  if (result)
  {
    v21[1] = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
    v16 = swift_allocObject();
    v21[0] = v6;
    v22 = v10;
    v17 = v16;
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a1;
    *(v18 + 32) = a2;
    aBlock[4] = partial apply for closure #1 in DOCFileSystemCollection.changed(_:for:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_70_5;
    v19 = _Block_copy(aBlock);

    v20 = a1;
    static DispatchQoS.unspecified.getter();
    v23 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v14, v9, v19);
    _Block_release(v19);
    (*(v21[0] + 8))(v9, v5);
    (*(v11 + 8))(v14, v22);
  }

  return result;
}

void closure #1 in DOCFileSystemCollection.changed(_:for:)(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((*((*MEMORY[0x277D85000] & *Strong) + 0x1D8))())
    {
      LOBYTE(v33) = 0;
      specialized DOCNode.markCachedLocalizedChildItemCountDescriptionAsStale(forProperty:)(a3);
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.Enumeration);
      v8 = a2;
      v9 = v6;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = v32;
        *v12 = 136446978;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x286465676E616863, 0xEF293A726F663A5FLL, &v33);
        *(v12 + 12) = 2082;
        v13 = [objc_opt_self() propertyName_];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v33);

        *(v12 + 14) = v17;
        *(v12 + 22) = 2080;
        v18 = [v8 displayName];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v33);

        *(v12 + 24) = v22;
        *(v12 + 32) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_249BA0290;
        *(inited + 32) = v8;
        v24 = v8;
        v25 = specialized DOCFileSystemCollection.logStr(nodes:)(inited);
        v27 = v26;
        swift_setDeallocating();
        swift_arrayDestroy();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v33);

        *(v12 + 34) = v28;
        _os_log_impl(&dword_2493AC000, v10, v11, "[DSEnumeration] %{public}s: Property %{public}s change on %s%s", v12, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v32, -1, -1);
        MEMORY[0x24C1FE850](v12, -1, -1);
      }

      v29 = swift_allocObject();
      *(v29 + 16) = a3;
      *(v29 + 24) = v8;
      *(v29 + 32) = v9;
      v30 = v8;
      v31 = v9;
      DOCRunInMainThread(_:)();
    }

    else
    {
    }
  }
}

void closure #1 in closure #1 in DOCFileSystemCollection.changed(_:for:)(int a1, id a2, _BYTE *a3)
{
  if (a1 == 1969385844 && (v5 = [a2 enumeratorError]) != 0)
  {
    v6 = MEMORY[0x277D85000];
    v15 = v5;
    v7 = (*((*MEMORY[0x277D85000] & *a3) + 0x160))();
    if (v7)
    {
      v9 = v8;
      ObjectType = swift_getObjectType();
      (*(v9 + 32))(a3, v15, ObjectType, v9);
      v7 = swift_unknownObjectRelease();
    }

    (*((*v6 & *a3) + 0x280))(v7);
  }

  else if (a3[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState] != 2 && ([a3 isGathering] & 1) == 0)
  {
    v11 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *a3) + 0x1D8))())
    {
      if ((*((*v11 & *a3) + 0x160))())
      {
        v13 = v12;
        v14 = swift_getObjectType();
        (*(v13 + 40))(a3, a2, v14, v13);

        swift_unknownObjectRelease();
      }
    }
  }
}

Swift::Void __swiftcall DOCFileSystemCollection.added(children:to:)(Swift::OpaquePointer children, FINode to)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (DOCFileSystemCollection.validate(observedNode:functionName:)(to.super.isa, 0xD000000000000013, 0x8000000249BF1970))
  {
    v20 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2]._rawValue = v15;
    v16[3]._rawValue = children._rawValue;
    aBlock[4] = partial apply for closure #1 in DOCFileSystemCollection.added(children:to:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_77_2;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v21 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v18 = v10;
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v19;
    MEMORY[0x24C1FB9A0](0, v14, v9, v19);
    _Block_release(v17);
    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v18);
  }
}

void closure #1 in DOCFileSystemCollection.added(children:to:)(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *Strong) + 0x1D8))() & 1) == 0 || (v6 = (*((*v5 & *v4) + 0x1C0))(), v7 = specialized _arrayConditionalCast<A, B>(_:)(v6), , !v7))
  {

    return;
  }

  v47 = v4;
  v56 = v7;
  if (one-time initialization token for Enumeration != -1)
  {
    goto LABEL_45;
  }

LABEL_5:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.Enumeration);

  v9 = v47;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  v48 = v9;

  if (os_log_type_enabled(v10, v11))
  {
    v9 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v55[0] = v12;
    *v9 = 136446722;
    *(v9 + 1) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BF1970, v55);
    *(v9 + 6) = 2048;
    v13 = (a2 >> 62);
    if (!(a2 >> 62))
    {
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_8;
    }

    goto LABEL_59;
  }

  while (1)
  {
    v13 = v48;
    v20 = DOCFileSystemCollection.filter(nodes:)(a2);
    v12 = v20;
    if (v20 >> 62)
    {
      break;
    }

    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_47;
    }

LABEL_16:
    if (v21 >= 1)
    {
      a2 = 0;
      v51 = v12;
      v52 = v12 & 0xC000000000000001;
      v49 = v12 + 32;
      v50 = v21;
      while (1)
      {
        v24 = v52 ? MEMORY[0x24C1FC540](a2, v12) : *(v49 + 8 * a2);
        v53 = a2;
        if (v7 >> 62)
        {
          v38 = v24;
          v25 = __CocoaSet.count.getter();
          v24 = v38;
        }

        else
        {
          v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v26 = v24;
        if (v25)
        {
          break;
        }

LABEL_39:

        v37 = v26;
        MEMORY[0x24C1FB090]();
        v22 = v50;
        v12 = v51;
        v23 = v53;
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v7 = v56;
LABEL_19:
        a2 = v23 + 1;
        if (a2 == v22)
        {
          goto LABEL_47;
        }
      }

      v27 = 0;
      v54 = v25;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x24C1FC540](v27, v7);
        }

        else
        {
          if (v27 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v31 = *(v7 + 8 * v27 + 32);
        }

        v32 = v31;
        a2 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
            v33 = v26;
            v34 = v26;
            v35 = v32;
            v36 = static NSObject.== infix(_:_:)();

            v25 = v54;
            v26 = v33;
            if (v36)
            {
LABEL_18:

              v22 = v50;
              v12 = v51;
              v23 = v53;
              goto LABEL_19;
            }
          }

          else
          {

            v25 = v54;
          }
        }

        else
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
          v28 = v26;
          v29 = v32;
          v30 = static NSObject.== infix(_:_:)();

          if (v30)
          {
            goto LABEL_18;
          }
        }

        ++v27;
        if (a2 == v25)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      swift_once();
      goto LABEL_5;
    }

    __break(1u);
LABEL_59:
    v14 = __CocoaSet.count.getter();
LABEL_8:
    *(v9 + 14) = v14;

    *(v9 + 11) = 2080;

    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v15 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v15 = a2;
    }

    v16 = specialized DOCFileSystemCollection.logStr(nodes:)(v15);
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v55);

    *(v9 + 3) = v19;
    _os_log_impl(&dword_2493AC000, v10, v11, "[DSEnumeration] %{public}s: added %ld nodes%s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  v21 = __CocoaSet.count.getter();
  if (v21)
  {
    goto LABEL_16;
  }

LABEL_47:
  v39 = DOCFileSystemCollection.sort(nodes:)();

  if (v39 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v46 = _bridgeCocoaArray<A>(_:)();

    v40 = v46;
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v40 = v39;
  }

  (*((*MEMORY[0x277D85000] & *v48) + 0x1C8))(v40);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v55[0] = v44;
    *v43 = 136446466;
    *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BF1970, v55);
    *(v43 + 12) = 2048;
    if (v39 >> 62)
    {
      v45 = __CocoaSet.count.getter();
    }

    else
    {
      v45 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v43 + 14) = v45;

    _os_log_impl(&dword_2493AC000, v41, v42, "[DSEnumeration] %{public}s: nodes = %ld", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x24C1FE850](v44, -1, -1);
    MEMORY[0x24C1FE850](v43, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  swift_beginAccess();
  specialized Set.formUnion<A>(_:)(v12);
  swift_endAccess();

  DOCFileSystemCollection.flushPendingNodesUpdates()();
}

Swift::Void __swiftcall DOCFileSystemCollection.deleted(children:from:)(Swift::OpaquePointer children, FINode from)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (DOCFileSystemCollection.validate(observedNode:functionName:)(from.super.isa, 0xD000000000000017, 0x8000000249BF1990))
  {
    v20 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2]._rawValue = v15;
    v16[3]._rawValue = children._rawValue;
    aBlock[4] = partial apply for closure #1 in DOCFileSystemCollection.deleted(children:from:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_84;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v21 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v18 = v10;
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v19;
    MEMORY[0x24C1FB9A0](0, v14, v9, v19);
    _Block_release(v17);
    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v18);
  }
}

void closure #1 in DOCFileSystemCollection.deleted(children:from:)(uint64_t a1, unint64_t a2)
{
  v93 = type metadata accessor for DispatchQoS();
  v4 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v5);
  v92 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v8);
  v90 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *Strong) + 0x1D8);
  v14 = (*MEMORY[0x277D85000] & *Strong) + 472;
  if (((v13)() & 1) == 0 || (v15 = (*((*v12 & *v11) + 0x1C0))(), v16 = specialized _arrayConditionalCast<A, B>(_:)(v15), , !v16))
  {

    return;
  }

  v83 = v14;
  v81 = v16;
  v105 = v16;
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Logger.Enumeration);

  v82 = v11;
  v19 = v11;
  v85 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  v96 = v19;

  v22 = os_log_type_enabled(v20, v21);
  v23 = a2 >> 62;
  v97 = a2;
  if (!v22)
  {

    v80 = a2 & 0x8000000000000000;
    goto LABEL_15;
  }

  v19 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  *&aBlock = v2;
  *v19 = 136446722;
  *(v19 + 1) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000249BF1990, &aBlock);
  *(v19 + 6) = 2048;
  v80 = a2 & 0x8000000000000000;
  if (v23)
  {
    goto LABEL_73;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    *(v19 + 14) = i;

    *(v19 + 11) = 2080;
    v88 = v4;

    if (v23)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v25 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v25 = a2;
    }

    v26 = specialized DOCFileSystemCollection.logStr(nodes:)(v25);
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &aBlock);

    *(v19 + 3) = v29;
    _os_log_impl(&dword_2493AC000, v20, v21, "[DSEnumeration] %{public}s: deleted %ld nodes%s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v2, -1, -1);
    MEMORY[0x24C1FE850](v19, -1, -1);

    a2 = v97;
    v4 = v88;
LABEL_15:
    v20 = MEMORY[0x277D85000];
    v84 = v13;
    v86 = v23;
    if (v23)
    {
      break;
    }

    v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_37;
    }

LABEL_17:
    if (v13 >= 1)
    {
      v30 = 0;
      v94 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodesWithPendingUpdates;
      v95 = a2 & 0xC000000000000001;
      v89 = &v100;
      v88 = v4 + 1;
      v87 = (v7 + 8);
      v31 = &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo6FINodeCGMR;
      while (1)
      {
        if (v95)
        {
          v40 = MEMORY[0x24C1FC540](v30, a2);
        }

        else
        {
          v40 = *(a2 + 8 * v30 + 32);
        }

        v41 = v40;
        swift_beginAccess();
        v42 = specialized Set._Variant.remove(_:)(v41);
        swift_endAccess();

        objc_sync_enter(v41);
        if (one-time initialization token for associatedObjectStorageKey != -1)
        {
          swift_once();
        }

        v43 = static FINode.associatedObjectStorageKey;
        if (objc_getAssociatedObject(v41, static FINode.associatedObjectStorageKey))
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v103 = 0u;
          v104 = 0u;
        }

        aBlock = v103;
        v100 = v104;
        if (!*(&v104 + 1))
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo6FINodeCGMd);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_33;
        }

        v44 = v98;
LABEL_34:
        swift_getKeyPath();
        (*((v20->isa & *v44) + 0x60))(&aBlock);

        objc_sync_exit(v41);
        v45 = aBlock;
        if (aBlock)
        {
          v32 = swift_allocObject();
          *(v32 + 16) = v45;
          *(v32 + 24) = 1;

          v33 = v90;
          static DispatchWorkItemFlags.barrier.getter();
          v34 = swift_allocObject();
          *(v34 + 16) = closure #1 in FINodeItemCountFetcher.isStale.setterpartial apply;
          *(v34 + 24) = v32;
          v101 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
          v102 = v34;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v100 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v100 + 1) = &block_descriptor_235;
          v35 = _Block_copy(&aBlock);

          v36 = v31;
          v37 = v13;
          v38 = v92;
          static DispatchQoS.unspecified.getter();
          MEMORY[0x24C1FB9A0](0, v38, v33, v35);
          _Block_release(v35);

          v39 = v38;
          v13 = v37;
          v31 = v36;
          (*v88)(v39, v93);
          (*v87)(v33, v91);

          v20 = MEMORY[0x277D85000];
        }

        else
        {
        }

        a2 = v97;
        if (v13 == ++v30)
        {
          goto LABEL_37;
        }
      }

      outlined destroy of CharacterSet?(&aBlock, &_sypSgMd);
LABEL_33:
      v44 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo6FINodeCGMd)) init];
      objc_setAssociatedObject(v41, v43, v44, 1);
      goto LABEL_34;
    }

    __break(1u);
LABEL_73:
    ;
  }

  v13 = __CocoaSet.count.getter();
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_37:
  v46 = v96;
  DOCFileSystemCollection.flushPendingNodesUpdates()();
  v47 = v46;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&aBlock = v51;
    *v50 = 136446722;
    *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000249BF1990, &aBlock);
    *(v50 + 12) = 2048;
    v52 = v81;
    if (v81 >> 62)
    {
      *(v50 + 14) = __CocoaSet.count.getter();
      *(v50 + 22) = 2080;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v53 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      *(v50 + 14) = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v50 + 22) = 2080;
      swift_bridgeObjectRetain_n();
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v53 = v52;
    }

    v13 = specialized DOCFileSystemCollection.logStr(nodes:)(v53);
    v55 = v54;

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v55, &aBlock);

    *(v50 + 24) = v56;
    _os_log_impl(&dword_2493AC000, v48, v49, "[DSEnumeration] %{public}s: current %ld nodes%s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v51, -1, -1);
    MEMORY[0x24C1FE850](v50, -1, -1);

    a2 = v97;
  }

  else
  {
  }

  swift_beginAccess();

  v57 = 0;
  v58 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v105, a2);

  v59 = v86;
  if (!(v105 >> 62))
  {
    v60 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60 >= v58)
    {
      goto LABEL_44;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v60 = __CocoaSet.count.getter();
  if (v60 < v58)
  {
    goto LABEL_70;
  }

LABEL_44:
  specialized Array.replaceSubrange<A>(_:with:)(v58, v60);
  swift_endAccess();
  v57 = v105;
  v13 = v105 >> 62;
  if (v105 >> 62)
  {
LABEL_71:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v76 = _bridgeCocoaArray<A>(_:)();

    v61 = v76;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v61 = v57;
  }

  (*((*MEMORY[0x277D85000] & *v47) + 0x1C8))(v61);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&aBlock = v65;
    *v64 = 136446466;
    *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000249BF1990, &aBlock);
    *(v64 + 12) = 2048;
    if (v13)
    {
      v66 = __CocoaSet.count.getter();
    }

    else
    {
      v66 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67 = v84;
    *(v64 + 14) = v66;
    _os_log_impl(&dword_2493AC000, v62, v63, "[DSEnumeration] %{public}s: nodes = %ld", v64, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x24C1FE850](v65, -1, -1);
    MEMORY[0x24C1FE850](v64, -1, -1);
  }

  else
  {

    v67 = v84;
  }

  if (*(v47 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState) == 2 || ([v47 isGathering] & 1) != 0 || (v67() & 1) == 0)
  {
  }

  else
  {

    if (v59)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v68 = _bridgeCocoaArray<A>(_:)();

      a2 = v68;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    if (a2 >> 62)
    {
      v69 = __CocoaSet.count.getter();
      if (!v69)
      {
        goto LABEL_76;
      }

LABEL_62:
      *&aBlock = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v69 & 0x8000000000000000) == 0)
      {
        v70 = 0;
        v71 = a2;
        v72 = a2 & 0xC000000000000001;
        do
        {
          if (v72)
          {
            v73 = MEMORY[0x24C1FC540](v70, v71);
          }

          else
          {
            v73 = *(v71 + 8 * v70 + 32);
            swift_unknownObjectRetain();
          }

          ++v70;
          v74 = [v73 identifier];
          swift_unknownObjectRelease();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v69 != v70);

        v75 = aBlock;
        goto LABEL_77;
      }

      __break(1u);
      swift_endAccess();
      __break(1u);
    }

    else
    {
      v69 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v69)
      {
        goto LABEL_62;
      }

LABEL_76:

      v75 = MEMORY[0x277D84F90];
LABEL_77:
      v77 = swift_allocObject();
      *(v77 + 16) = v47;
      *(v77 + 24) = v75;
      v78 = v47;
      DOCRunInMainThread(_:)();
    }
  }
}

uint64_t closure #3 in closure #1 in DOCFileSystemCollection.deleted(children:from:)(void *a1, uint64_t a2)
{
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x160))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 48))(a1, MEMORY[0x277D84F90], a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc DOCFileSystemCollection.added(children:to:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

Swift::Void __swiftcall DOCFileSystemCollection.deleted(_:)(FINode a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (DOCFileSystemCollection.validate(observedNode:functionName:)(a1.super.isa, 0x28646574656C6564, 0xEB00000000293A5FLL))
  {
    v18[1] = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
    v13 = swift_allocObject();
    v18[0] = v4;
    v19 = v8;
    v14 = v13;
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2].super.isa = v14;
    v15[3].super.isa = a1.super.isa;
    aBlock[4] = partial apply for closure #1 in DOCFileSystemCollection.deleted(_:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_91_3;
    v16 = _Block_copy(aBlock);

    v17 = a1.super.isa;
    static DispatchQoS.unspecified.getter();
    v20 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v12, v7, v16);
    _Block_release(v16);
    (*(v18[0] + 8))(v7, v3);
    (*(v9 + 8))(v12, v19);
  }
}

void closure #1 in DOCFileSystemCollection.deleted(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.Enumeration);
    v6 = a2;
    v7 = v4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v11;
      *v10 = 136446722;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x28646574656C6564, 0xEB00000000293A5FLL, &v30);
      *(v10 + 12) = 2080;
      v12 = [v6 displayName];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v30);

      *(v10 + 14) = v16;
      *(v10 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA0290;
      *(inited + 32) = v6;
      v18 = v6;
      v19 = specialized DOCFileSystemCollection.logStr(nodes:)(inited);
      v21 = v20;
      swift_setDeallocating();
      swift_arrayDestroy();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v30);

      *(v10 + 24) = v22;
      _os_log_impl(&dword_2493AC000, v8, v9, "[DSEnumeration] %{public}s: on %s%s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    objc_sync_enter(v6);
    if (one-time initialization token for associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    v23 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo6FINodeC_Tt1B5(v6, static FINode.associatedObjectStorageKey);
    swift_getKeyPath();
    v24 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v23) + 0x60))(&v30);

    objc_sync_exit(v6);
    v25 = v30;
    if (v30)
    {
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      *(v26 + 24) = 1;

      ReadWriteLock.withWriteLock(_:)(_s26DocumentManagerExecutables22FINodeItemCountFetcherC7isStaleSbvsyycfU_TA_0, v26);
    }

    if (*(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState) == 2 || ([v7 isGathering] & 1) != 0 || ((*((*v24 & *v7) + 0x1D8))() & 1) == 0)
    {
    }

    else
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v7;
      *(v27 + 24) = v6;
      v28 = v6;
      v29 = v7;
      DOCRunInMainThread(_:)();
    }
  }
}

uint64_t closure #1 in closure #1 in DOCFileSystemCollection.deleted(_:)(void *a1, void *a2)
{
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x160))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249BA0290;
    v9 = [a2 identifier];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    *(v8 + 32) = _bridgeAnythingToObjectiveC<A>(_:)();
    __swift_destroy_boxed_opaque_existential_0(v10);
    (*(v6 + 48))(a1, MEMORY[0x277D84F90], v8, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall DOCFileSystemCollection.openSyncStarted(_:)(FINode a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (DOCFileSystemCollection.validate(observedNode:functionName:)(a1.super.isa, 0xD000000000000013, 0x8000000249BF19B0))
  {
    v18[1] = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
    v13 = swift_allocObject();
    v18[0] = v4;
    v19 = v8;
    v14 = v13;
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2].super.isa = v14;
    v15[3].super.isa = a1.super.isa;
    aBlock[4] = partial apply for closure #1 in DOCFileSystemCollection.openSyncStarted(_:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_98_0;
    v16 = _Block_copy(aBlock);

    v17 = a1.super.isa;
    static DispatchQoS.unspecified.getter();
    v20 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v12, v7, v16);
    _Block_release(v16);
    (*(v18[0] + 8))(v7, v3);
    (*(v9 + 8))(v12, v19);
  }
}

void closure #1 in DOCFileSystemCollection.openSyncStarted(_:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    static os_signpost_type_t.begin.getter();
    if (one-time initialization token for fsCollectionLogHandle != -1)
    {
      swift_once();
    }

    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    (*(v4 + 8))(v7, v3);
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.Enumeration);
    v11 = a2;
    v12 = v9;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136446722;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BF19B0, &v29);
      *(v15 + 12) = 2080;
      v17 = [v11 displayName];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v29);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA0290;
      *(inited + 32) = v11;
      v23 = v11;
      v24 = specialized DOCFileSystemCollection.logStr(nodes:)(inited);
      v26 = v25;
      swift_setDeallocating();
      swift_arrayDestroy();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v29);

      *(v15 + 24) = v27;
      _os_log_impl(&dword_2493AC000, v13, v14, "[DSEnumeration] %{public}s: Open sync started on %s%s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v16, -1, -1);
      MEMORY[0x24C1FE850](v15, -1, -1);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall DOCFileSystemCollection.openSyncCompleted(_:)(FINode a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (DOCFileSystemCollection.validate(observedNode:functionName:)(a1.super.isa, 0xD000000000000015, 0x8000000249BF19D0))
  {
    v18[1] = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
    v13 = swift_allocObject();
    v18[0] = v4;
    v19 = v8;
    v14 = v13;
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2].super.isa = v14;
    v15[3].super.isa = a1.super.isa;
    aBlock[4] = partial apply for closure #1 in DOCFileSystemCollection.openSyncCompleted(_:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_105_1;
    v16 = _Block_copy(aBlock);

    v17 = a1.super.isa;
    static DispatchQoS.unspecified.getter();
    v20 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v12, v7, v16);
    _Block_release(v16);
    (*(v18[0] + 8))(v7, v3);
    (*(v9 + 8))(v12, v19);
  }
}

void closure #1 in DOCFileSystemCollection.openSyncCompleted(_:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    static os_signpost_type_t.end.getter();
    if (one-time initialization token for fsCollectionLogHandle != -1)
    {
      swift_once();
    }

    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    (*(v4 + 8))(v7, v3);
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    v11 = __swift_project_value_buffer(v10, static Logger.Enumeration);
    v12 = a2;
    v13 = v9;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = v11;
      v18 = v17;
      v37 = v17;
      *v16 = 136446722;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000249BF19D0, &v37);
      *(v16 + 12) = 2080;
      v19 = [v12 displayName];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v37);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA0290;
      *(inited + 32) = v12;
      v25 = v12;
      v26 = specialized DOCFileSystemCollection.logStr(nodes:)(inited);
      v28 = v27;
      swift_setDeallocating();
      swift_arrayDestroy();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v37);

      *(v16 + 24) = v29;
      _os_log_impl(&dword_2493AC000, v14, v15, "[DSEnumeration] %{public}s: Open sync completed on %s%s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v18, -1, -1);
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
        v30 = v12;
        swift_unknownObjectRetain();
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
        v30 = v12;
        swift_unknownObjectRetain();
LABEL_13:
        v31 = static NSObject.== infix(_:_:)();
        swift_unknownObjectRelease();

        if (v31)
        {
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v37 = v35;
            *v34 = 136446210;
            *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000249BF19D0, &v37);
            _os_log_impl(&dword_2493AC000, v32, v33, "[DSEnumeration] %{public}s: Open sync completed on the collection's observed node, start refreshing items", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v35);
            MEMORY[0x24C1FE850](v35, -1, -1);
            MEMORY[0x24C1FE850](v34, -1, -1);
          }

          DOCFileSystemCollection.refreshNodesAndNotifyDelegate(_:)(0);
        }
      }
    }
  }
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, unint64_t a2)
{
  v13 = a2;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1FC540](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v8 = v6;
    v14 = v6;
    MEMORY[0x28223BE20](v6, v7);
    v12[2] = &v14;
    v9 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v12, v13);

    if (v9)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id specialized DOCFileSystemCollection.init(for:configuration:source:extraOptions:)(void *a1, void *a2, void *a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v91[0] = a6;
  v96 = a4;
  v101 = a1;
  v102 = a3;
  v100 = a2;
  v7 = type metadata accessor for OSSignpostID();
  v98 = *(v7 - 8);
  v99 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v97 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v94 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v14);
  v16 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v17, v18);
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isGathering] = 1;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isFullyPopulated] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = MEMORY[0x277D84F90];
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection__nodes] = MEMORY[0x277D84F90];
  v20 = v19;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection__isObserving] = 0;
  v21 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *&a5[v21] = v22;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_shouldStopAccessing] = 0;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState] = 0;
  v95 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_source;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_source] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserverToken] = 0;
  v92 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue;
  v91[1] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v104 = v20;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  v23 = v102;
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v13 + 104))(v16, *MEMORY[0x277D85268], v93);
  v24 = v101;
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  *&a5[v92] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_iCloudRootNodeObservation] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_itemFilteringPredicate] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sortDescriptors] = v25;
  v26 = MEMORY[0x277D84FA0];
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_propertiesImpactingSort] = MEMORY[0x277D84FA0];
  if (v25 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo6FINodeC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v26 = MEMORY[0x277D84FA0];
    }
  }

  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodesWithPendingUpdates] = v26;
  v27 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodesUpdatesFlushInterval;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodesUpdatesFlushInterval] = 100;
  v28 = *MEMORY[0x277D85178];
  v29 = type metadata accessor for DispatchTimeInterval();
  (*(*(v29 - 8) + 104))(&a5[v27], v28, v29);
  v30 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_lastFlushTime;
  v31 = type metadata accessor for DispatchTime();
  (*(*(v31 - 8) + 56))(&a5[v30], 1, 1, v31);
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_hasScheduledUpdate] = 0;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_dispatchedUpdateIsPending] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observer] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observedNode] = v24;
  v32 = *&a5[v95];
  *&a5[v95] = v23;
  swift_unknownObjectRetain();
  v33 = v23;

  if ((v96 & 0x100000000) != 0)
  {
    v34 = 19;
  }

  else
  {
    v34 = v96 | 0x13;
  }

  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodeObservationOptions] = v34;
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    swift_once();
  }

  v35 = v97;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v98 + 8))(v35, v99);
  type metadata accessor for DOCRootNode();
  v36 = swift_dynamicCastClass();
  if (v36)
  {
    v37 = v36;
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.Enumeration);
    swift_unknownObjectRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v104 = v99;
      *v41 = 136446466;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BDC710, &v104);
      *(v41 + 12) = 2080;
      v42 = [v37 source];
      v43 = v23;
      v44 = [v42 displayName];

      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v23 = v43;
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v104);

      *(v41 + 14) = v48;
      _os_log_impl(&dword_2493AC000, v39, v40, "[DSEnumeration] %{public}s: node is RootNode so using underlyingNode: %s", v41, 0x16u);
      v49 = v99;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v41, -1, -1);
    }

    v50 = [v37 source];
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for DOCICloudRootNode();
    v61 = swift_dynamicCastClass();
    if (v61)
    {
      v50 = v61;
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, static Logger.Enumeration);
      swift_unknownObjectRetain();
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.info.getter();
      swift_unknownObjectRelease();
      v65 = os_log_type_enabled(v63, v64);
      v66 = MEMORY[0x277D85000];
      if (v65)
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v104 = v68;
        *v67 = 136446466;
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BDC710, &v104);
        *(v67 + 4) = v69;
        *(v67 + 12) = 2080;
        v70 = (*((*v66 & *v50) + 0x78))(v69);
        if (v70)
        {

          v71 = "Cloud container not ready)";
          v72 = 0xD000000000000032;
        }

        else
        {
          v71 = "Init DOCFileSystemCollection";
          v72 = 0xD00000000000002ALL;
        }

        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v71 | 0x8000000000000000, &v104);

        *(v67 + 14) = v88;
        _os_log_impl(&dword_2493AC000, v63, v64, "[DSEnumeration] %{public}s: node is DOCICloudRootNode, using: %s", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v68, -1, -1);
        MEMORY[0x24C1FE850](v67, -1, -1);

        v23 = v102;
      }

      else
      {
      }

      v89 = (*((*v66 & *v50) + 0x78))(v79);
      if (v89)
      {
        v90 = v89;
        swift_unknownObjectRelease();
        v50 = v90;
      }
    }

    else
    {
      objc_opt_self();
      v73 = swift_dynamicCastObjCClass();
      if (v73)
      {
        v50 = v73;
        if (one-time initialization token for Enumeration != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        __swift_project_value_buffer(v74, static Logger.Enumeration);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v104 = v78;
          *v77 = 136446210;
          *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BDC710, &v104);
          _os_log_impl(&dword_2493AC000, v75, v76, "[DSEnumeration] %{public}s: node is a regular node", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v78);
          MEMORY[0x24C1FE850](v78, -1, -1);
          MEMORY[0x24C1FE850](v77, -1, -1);
        }
      }

      else
      {
        if (one-time initialization token for Enumeration != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        __swift_project_value_buffer(v80, static Logger.Enumeration);
        swift_unknownObjectRetain();
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.info.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v104 = v84;
          *v83 = 136446466;
          *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BDC710, &v104);
          *(v83 + 12) = 2080;
          v85 = DOCNode.nodeDescription.getter();
          v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v104);

          *(v83 + 14) = v87;
          _os_log_impl(&dword_2493AC000, v81, v82, "[DSEnumeration] %{public}s: DOCFileSystemCollection initiated with a non-FINode DOCNode %s", v83, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v84, -1, -1);
          MEMORY[0x24C1FE850](v83, -1, -1);
        }

        v50 = v24;
      }
    }
  }

  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode] = v50;
  v51 = v100;
  if (v100 && v23)
  {
    v52 = objc_opt_self();
    v53 = v51;
    v54 = [v52 defaultPermission];
    v55 = [v54 userActionForConfiguration_];

    v56 = [v53 hostIdentifier];
    if (!v56)
    {
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = MEMORY[0x24C1FAD20](v57);
    }

    v58 = [objc_allocWithZone(DOCSourceObserver) initWithUserAction:v55 hostIdentifier:v56];
  }

  else
  {
    v58 = 0;
  }

  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserver] = v58;
  v59 = type metadata accessor for DOCFileSystemCollection();
  v103.receiver = a5;
  v103.super_class = v59;
  return objc_msgSendSuper2(&v103, sel_init);
}

id specialized DOCFileSystemCollection.__allocating_init(for:configuration:source:extraOptions:)(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(type metadata accessor for DOCFileSystemCollection());

  return specialized DOCFileSystemCollection.init(for:configuration:source:extraOptions:)(a1, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32), v11, a6);
}

void specialized DOCFileSystemCollectionManager.applicationDidEnterBackground(sender:)()
{
  v1 = v0;
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
    *v5 = 134217984;
    v6 = (*(*v0 + 120))();
    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v7;

    _os_log_impl(&dword_2493AC000, v3, v4, "DOCFileSystemCollectionManager: Application did enter Background, Stopping %ld active collections", v5, 0xCu);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  else
  {
  }

  v8 = [objc_opt_self() processInfo];
  v9 = MEMORY[0x24C1FAD20](0xD00000000000002BLL, 0x8000000249BF1FA0);
  aBlock[4] = partial apply for closure #1 in DOCFileSystemCollectionManager.applicationDidEnterBackground(sender:);
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_266_1;
  v10 = _Block_copy(aBlock);

  [v8 performExpiringActivityWithReason:v9 usingBlock:v10];
  _Block_release(v10);
}

uint64_t specialized DOCFileSystemCollectionManager.applicationWillEnterForeground(sender:)()
{
  v1 = v0;
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Enumeration);

  isEscapingClosureAtFileLocation = Logger.logObject.getter();
  LOBYTE(v4) = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(isEscapingClosureAtFileLocation, v4))
  {

    goto LABEL_8;
  }

  v5 = swift_slowAlloc();
  *v5 = 134217984;
  v6 = (*(*v0 + 120))();
  if (v6 >> 62)
  {
    goto LABEL_10;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    *(v5 + 4) = i;

    _os_log_impl(&dword_2493AC000, isEscapingClosureAtFileLocation, v4, "DOCFileSystemCollectionManager: Application will enter Foreground, Restarting active %ld collections", v5, 0xCu);
    MEMORY[0x24C1FE850](v5, -1, -1);

LABEL_8:
    v8 = (*(*v1 + 120))();
    v9 = v1[3];
    v1 = swift_allocObject();
    v1[2] = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for closure #1 in DOCFileSystemCollectionManager.applicationWillEnterForeground(sender:);
    *(v10 + 24) = v1;
    aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v13 = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_263_0;
    v4 = _Block_copy(aBlock);
    v5 = v13;

    dispatch_sync(v9, v4);
    _Block_release(v4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_10:
    ;
  }

  return result;
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *a1@<X8>)
{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1);
}

{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t partial apply for closure #1 in DOCFileSystemCollection.nodes.setter()
{
  return partial apply for closure #1 in DOCFileSystemCollection.nodes.setter();
}

{
  *(*(v0 + 16) + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection__nodes) = *(v0 + 24);
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(_BYTE *a1@<X8>)
{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1);
}

{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t type metadata accessor for DOCFileSystemCollection()
{
  result = type metadata singleton initialization cache for DOCFileSystemCollection;
  if (!type metadata singleton initialization cache for DOCFileSystemCollection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_73Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_26DocumentManagerExecutables25FileSystemCollectionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void type metadata completion function for DOCFileSystemCollection()
{
  type metadata accessor for DispatchTimeInterval();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DispatchTime?();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for DispatchTime?()
{
  if (!lazy cache variable for type metadata for DispatchTime?)
  {
    type metadata accessor for DispatchTime();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DispatchTime?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FileSystemCollectionDomainState and conformance FileSystemCollectionDomainState()
{
  result = lazy protocol witness table cache variable for type FileSystemCollectionDomainState and conformance FileSystemCollectionDomainState;
  if (!lazy protocol witness table cache variable for type FileSystemCollectionDomainState and conformance FileSystemCollectionDomainState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileSystemCollectionDomainState and conformance FileSystemCollectionDomainState);
  }

  return result;
}

id specialized DOCFileSystemCollection.iterator(for:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v18 - v9;
  if (![a1 isContainer])
  {
    return 0;
  }

  v11 = [a1 fileURL];
  if (v11)
  {
    v12 = v11;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  }

  outlined init with take of URL?(v5, v10);
  type metadata accessor for URL();
  v15 = *(v13 - 8);
  if ((*(v15 + 48))(v10, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v10, &_s10Foundation3URLVSgMd);
    v16 = 0;
  }

  else
  {
    v16 = URL.startAccessingSecurityScopedResource()();
    (*(v15 + 8))(v10, v13);
  }

  v17 = [a1 iteratorWithOptions_];
  $defer #1 () in DOCFileSystemCollection.iterator(for:)(v16, a1);
  return v17;
}

uint64_t specialized DOCFileSystemCollection.iterateChildren(of:iterator:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - v10;
  v12 = MEMORY[0x277D84F90];
  if (a2)
  {
    swift_unknownObjectRetain();
    v13 = [a1 fileURL];
    if (v13)
    {
      v14 = v13;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    }

    else
    {
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    }

    outlined init with take of URL?(v7, v11);
    type metadata accessor for URL();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v11, 1, v15) == 1)
    {
      outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
      v17 = 0;
    }

    else
    {
      v17 = URL.startAccessingSecurityScopedResource()();
      (*(v16 + 8))(v11, v15);
    }

    v23 = v12;
    v18 = [a2 first];
    if (v18)
    {
      v19 = v18;
      do
      {
        v20 = v19;
        MEMORY[0x24C1FB090]();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = v23;
        v19 = [a2 next];
      }

      while (v19);
    }

    $defer #1 () in DOCFileSystemCollection.iterator(for:)(v17, a1);
    swift_unknownObjectRelease();
  }

  return v12;
}

uint64_t outlined init with copy of DispatchTime?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of DispatchTime?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type FileSystemCollectionError and conformance FileSystemCollectionError()
{
  result = lazy protocol witness table cache variable for type FileSystemCollectionError and conformance FileSystemCollectionError;
  if (!lazy protocol witness table cache variable for type FileSystemCollectionError and conformance FileSystemCollectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileSystemCollectionError and conformance FileSystemCollectionError);
  }

  return result;
}

char *specialized DOCFileSystemCollection.logStr(nodes:)(unint64_t a1)
{
  if (one-time initialization token for Enumeration != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.Enumeration);
    v3 = static os_log_type_t.debug.getter();
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
    v4 = static OS_os_log.default.getter();
    v5 = os_log_type_enabled(v4, v3);

    if (!v5)
    {
      return 0;
    }

    if (a1 >> 62)
    {
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 <= 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 45;
    }

    if (v6 <= 1)
    {
      v8 = 0xE000000000000000;
    }

    else
    {
      v8 = 0xE100000000000000;
    }

    MEMORY[0x24C1FAEA0](v7, v8);

    MEMORY[0x24C1FAEA0](9, 0xE100000000000000);

    if (!v6)
    {
LABEL_30:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
      v28 = BidirectionalCollection<>.joined(separator:)();
      v30 = v29;

      MEMORY[0x24C1FAEA0](v28, v30);

      return 10;
    }

    v34 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      break;
    }

    v10 = 0;
    v32 = v6;
    v33 = a1 & 0xC000000000000001;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v33)
      {
        v12 = MEMORY[0x24C1FC540](v10, a1);
      }

      else
      {
        if (v10 >= *(v31 + 16))
        {
          goto LABEL_32;
        }

        v12 = *(a1 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v13 = DOCNode.nodeDescription.getter();
      MEMORY[0x24C1FAEA0](v13);

      v14 = [v12 fpfs_fpItem];
      if (v14)
      {
        v15 = v14;
        v16 = a1;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
          v19 = v15;
          v20 = [v18 description];
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;
        }

        else
        {
          v20 = [v15 displayName];
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v24;
        }

        MEMORY[0x24C1FAEA0](v21, v23);

        MEMORY[0x24C1FAEA0](0x203A4D455449090ALL, 0xE800000000000000);
        swift_unknownObjectRelease();

        a1 = v16;
        v6 = v32;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v26 = *(v34 + 16);
      v25 = *(v34 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      }

      *(v34 + 16) = v26 + 1;
      v27 = v34 + 16 * v26;
      *(v27 + 32) = 0x203A45444F4ELL;
      *(v27 + 40) = 0xE600000000000000;
      ++v10;
      if (v11 == v6)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v7 = specialized Collection.firstIndex(where:)(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v27 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C1FC540](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v14 = v12;
    v28 = v12;
    MEMORY[0x28223BE20](v12, v13);
    v26[2] = &v28;
    v15 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v26, a2);

    if ((v15 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x24C1FC540](v2, v6);
    v17 = MEMORY[0x24C1FC540](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v18)
    {
      goto LABEL_46;
    }

    if (v10 >= v18)
    {
      goto LABEL_47;
    }

    v19 = *(v6 + 32 + 8 * v10);
    v16 = *(v6 + 32 + 8 * v2);
    v17 = v19;
  }

  v20 = v17;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v21 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v21) = 0;
  }

  v22 = v6 & 0xFFFFFFFFFFFFFF8;
  v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v20;

  if ((v6 & 0x8000000000000000) == 0 && !v21)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v22 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v22 + 16))
    {
      goto LABEL_44;
    }

    v24 = v22 + 8 * v10;
    v25 = *(v24 + 32);
    *(v24 + 32) = v16;

    *v27 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
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
LABEL_47:
  __break(1u);
  return __CocoaSet.count.getter();
}

uint64_t objectdestroy_5Tm_1(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t objectdestroy_66Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

void *DOCItemCollectionCell.init(frame:containerView:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  swift_getObjectType();
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemStatusBadgeConstraintX] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemStatusBadgeConstraintY] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemAccessStatusBadgeConstraintX] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemAccessStatusBadgeConstraintY] = 0;
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isItemStatusBadgeLoaded] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemStatusBadge] = 0;
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isItemAccessStatusBadgeLoaded] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemAccessStatusBadge] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___renameGestureRecognizer] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_actions] = MEMORY[0x277D84F90];
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_canShowBackgroundView] = 1;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_horizontalStopButton] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameController] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView] = 0;
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView] = [objc_allocWithZone(type metadata accessor for DOCBadgedFittingImageView()) initWithFrame_];
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isDummyCell] = a1 != 0;
  v22.receiver = v6;
  v22.super_class = type metadata accessor for DOCItemCollectionCell();
  v12 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a2, a3, a4, a5);
  v13 = v12;
  if (a1)
  {
    v14 = v12;
    v15 = a1;
  }

  else
  {
    v15 = [v12 contentView];
  }

  v16 = *((*MEMORY[0x277D85000] & *v13) + 0x278);
  v17 = a1;
  v16(v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_249B9A480;
  v19 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v20 = MEMORY[0x277D74DB8];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v13;
}

uint64_t DOCItemCollectionCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCItemCollectionCell.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_delegate;
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

id DOCItemCollectionCell.thumbnailFrameInCell.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
  [v1 bounds];

  return [v1 convertRect:v0 toCoordinateSpace:?];
}

void *DOCItemCollectionCell.itemStatusBadgeConstraintX.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemStatusBadgeConstraintX;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionCell.itemStatusBadgeConstraintX.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemStatusBadgeConstraintX;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionCell.itemStatusBadgeConstraintY.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemStatusBadgeConstraintY;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionCell.itemStatusBadgeConstraintY.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemStatusBadgeConstraintY;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionCell.itemAccessStatusBadgeConstraintX.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemAccessStatusBadgeConstraintX;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionCell.itemAccessStatusBadgeConstraintX.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemAccessStatusBadgeConstraintX;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionCell.itemAccessStatusBadgeConstraintY.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemAccessStatusBadgeConstraintY;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionCell.itemAccessStatusBadgeConstraintY.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemAccessStatusBadgeConstraintY;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall DOCItemCollectionCell.makeRenameViewFirstResponder()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x390))();
  if (v1)
  {
    v2 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder;
    v3 = v1;
    swift_beginAccess();
    v3[v2] = 1;
    v4.receiver = v3;
    v4.super_class = type metadata accessor for DOCItemRenameTextView();
    objc_msgSendSuper2(&v4, sel_becomeFirstResponder);
    v3[v2] = 0;
  }
}

uint64_t DOCItemCollectionCell.isItemStatusBadgeLoaded.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isItemStatusBadgeLoaded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCell.isItemStatusBadgeLoaded.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isItemStatusBadgeLoaded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DOCItemCollectionCell.itemStatusBadge.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemStatusBadge;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemStatusBadge);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemStatusBadge);
  }

  else
  {
    type metadata accessor for DOCItemStatusBadgeView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setContentMode_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    (*((*MEMORY[0x277D85000] & *v0) + 0x188))(1);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void DOCItemCollectionCell.itemStatusBadge.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemStatusBadge);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemStatusBadge) = a1;
}

void (*DOCItemCollectionCell.itemStatusBadge.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCItemCollectionCell.itemStatusBadge.getter();
  return DOCItemCollectionCell.itemStatusBadge.modify;
}

void DOCItemCollectionCell.itemStatusBadge.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemStatusBadge);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemStatusBadge) = v2;
}

uint64_t DOCItemCollectionCell.isItemAccessStatusBadgeLoaded.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isItemAccessStatusBadgeLoaded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCell.isItemAccessStatusBadgeLoaded.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isItemAccessStatusBadgeLoaded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DOCItemCollectionCell.itemAccessStatusBadge.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemAccessStatusBadge;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemAccessStatusBadge);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemAccessStatusBadge);
  }

  else
  {
    type metadata accessor for DOCItemStatusBadgeView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setContentMode_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    (*((*MEMORY[0x277D85000] & *v0) + 0x1B8))(1);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void DOCItemCollectionCell.itemAccessStatusBadge.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemAccessStatusBadge);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemAccessStatusBadge) = a1;
}

void (*DOCItemCollectionCell.itemAccessStatusBadge.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCItemCollectionCell.itemAccessStatusBadge.getter();
  return DOCItemCollectionCell.itemAccessStatusBadge.modify;
}

void DOCItemCollectionCell.itemAccessStatusBadge.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemAccessStatusBadge);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemAccessStatusBadge) = v2;
}

id DOCItemCollectionCell.renameGestureRecognizer.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___renameGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___renameGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___renameGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for DOCButtonGestureRecognizer()) initWithTarget:v0 action:sel_renameGesture_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void DOCItemCollectionCell.renameGestureRecognizer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___renameGestureRecognizer);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___renameGestureRecognizer) = a1;
}

void (*DOCItemCollectionCell.renameGestureRecognizer.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCItemCollectionCell.renameGestureRecognizer.getter();
  return DOCItemCollectionCell.renameGestureRecognizer.modify;
}

void DOCItemCollectionCell.renameGestureRecognizer.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___renameGestureRecognizer);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___renameGestureRecognizer) = v2;
}

void *DOCItemCollectionCell.cellContent.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionCell.cellContent.setter(void *a1)
{
  specialized DOCItemCollectionCell.cellContent.setter(a1);
}

void (*DOCItemCollectionCell.cellContent.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionCell.cellContent.modify;
}

void DOCItemCollectionCell.cellContent.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    specialized DOCItemCollectionCell.cellContent.setter(v3);

    v3 = *v4;
  }

  else
  {
    specialized DOCItemCollectionCell.cellContent.setter(*(*a1 + 24));
  }

  free(v2);
}

Swift::Void __swiftcall DOCItemCollectionCell.didEndDisplaying()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (v3)
  {
    v4 = v3;
    (*((*v2 & *v3) + 0x550))();
  }

  v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);

  [v5 setThumbnail_];
}

Swift::Void __swiftcall DOCItemCollectionCell.willDisplay()()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) thumbnail];
  v3 = MEMORY[0x277D85000];
  if (v2)
  {
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    v5 = *((*MEMORY[0x277D85000] & *v0) + 0x208);
    v6 = v5();
    if (v6)
    {
      v7 = v6;
      v9 = (*((*v3 & *v6) + 0x2D0))(&v20);
      if ((*v8 & 0x100) == 0)
      {
        *v8 |= 0x100uLL;
      }

      v9(&v20, 0);
    }

    v4 = v5();
    if (v4)
    {
      v10 = v4;
      (*((*v3 & *v4) + 0xBB0))();
    }
  }

  v11 = (*((*v3 & *v1) + 0x208))(v4);
  if (v11)
  {
    v12 = *((*v3 & *v11) + 0x368);
    v13 = v11;
    v14 = v12();

    if (v14)
    {
      lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
      UITraitCollection.subscript.getter();

      v15 = 0xE700000000000000;
      v16 = 0x72616C75676572;
      if (v21 != 1)
      {
        v16 = 0x6D6F74737563;
        v15 = 0xE600000000000000;
      }

      if (v21)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0x746361706D6F63;
      }

      if (v21)
      {
        v18 = v15;
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      v19 = MEMORY[0x24C1FAD20](v17, v18);

      [v1 setAccessibilityValue_];
    }
  }
}

uint64_t DOCItemCollectionCell.actions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_actions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void DOCItemCollectionCell.renameAction.getter()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xE8))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(v2 + 8))(v0, *MEMORY[0x277CC6040], ObjectType, v2);
    swift_unknownObjectRelease();
    if (v2)
    {
      specialized static UIDocumentBrowserAction.renameAction()();
    }
  }
}

uint64_t DOCItemCollectionCell.canShowBackgroundView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_canShowBackgroundView;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCItemCollectionCell.canShowBackgroundView.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_canShowBackgroundView;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

void (*DOCItemCollectionCell.canShowBackgroundView.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_canShowBackgroundView;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionCell.canShowBackgroundView.modify;
}

void DOCItemCollectionCell.canShowBackgroundView.modify(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsUpdateConfiguration];
  }

  free(v1);
}

Swift::Void __swiftcall DOCItemCollectionCell.configure(in:)(UIView *in)
{
  [(UIView *)in _setHostsLayoutEngine:1];
  v2 = type metadata accessor for DOCItemCollectionCellSpringLoadedInteractionBehavior();
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11.receiver = v3;
  v11.super_class = v2;
  v4 = [(UIView *)&v11 init];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x2A0))();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = objc_allocWithZone(MEMORY[0x277D75A58]);
  v10[4] = partial apply for closure #1 in DOCItemCollectionCell.configure(in:);
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UISpringLoadedInteraction, @guaranteed UISpringLoadedInteractionContext) -> ();
  v10[3] = &block_descriptor_122;
  v8 = _Block_copy(v10);

  v9 = [v7 initWithInteractionBehavior:v4 interactionEffect:v5 activationHandler:v8];
  _Block_release(v8);

  [v9 _setPossibleStateDuration_];
  [v1 addInteraction_];

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCItemCollectionCell.configureItemStatusBadgeIfNeeded()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (v3)
  {
    v4 = v3;
    v5 = (*((*v2 & *v3) + 0x870))();

    if (v5)
    {
      v6 = (*((*v2 & *v1) + 0x118))();
      if (!v6)
      {
        v6 = (*((*v2 & *v1) + 0x130))();
        if (!v6)
        {
          v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
          v8 = [v7 superview];
          if (v8)
          {
          }

          else
          {
            v9 = [v1 addSubview_];
          }

          v10 = *((*v2 & *v1) + 0x198);
          v11 = (v10)(v9);
          [v1 addSubview_];

          v12 = v10();
          v13 = [v12 trailingAnchor];

          v14 = [v7 trailingAnchor];
          v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];

          v16 = v10();
          v17 = [v16 bottomAnchor];

          v18 = [v7 bottomAnchor];
          v19 = [v17 constraintEqualToAnchor:v18 constant:0.0];

          v20 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_249BA1010;
          *(v21 + 32) = v15;
          *(v21 + 40) = v19;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
          v22 = v15;
          v23 = v19;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v20 activateConstraints_];

          v25 = *((*v2 & *v1) + 0x120);
          v26 = v22;
          v25(v22);
          v27 = *((*v2 & *v1) + 0x138);
          v28 = v23;
          v27(v23);

          v6 = v28;
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionCell.configureItemAccessStatusBadgeIfNeeded()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (v3)
  {
    v4 = v3;
    v5 = (*((*v2 & *v3) + 0x890))();

    if (v5)
    {
      v6 = (*((*v2 & *v1) + 0x148))();
      if (!v6)
      {
        v6 = (*((*v2 & *v1) + 0x160))();
        if (!v6)
        {
          v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
          v8 = [v7 superview];
          if (v8)
          {
          }

          else
          {
            v9 = [v1 addSubview_];
          }

          v10 = *((*v2 & *v1) + 0x1C8);
          v11 = (v10)(v9);
          [v1 addSubview_];

          v12 = v10();
          v13 = [v12 leadingAnchor];

          v14 = [v7 leadingAnchor];
          v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];

          v16 = v10();
          v17 = [v16 bottomAnchor];

          v18 = [v7 bottomAnchor];
          v19 = [v17 constraintEqualToAnchor:v18 constant:0.0];

          v20 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_249BA1010;
          *(v21 + 32) = v15;
          *(v21 + 40) = v19;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
          v22 = v15;
          v23 = v19;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v20 activateConstraints_];

          v25 = *((*v2 & *v1) + 0x150);
          v26 = v22;
          v25(v22);
          v27 = *((*v2 & *v1) + 0x168);
          v28 = v23;
          v27(v23);

          v6 = v28;
        }
      }
    }
  }
}

void *DOCItemCollectionCell.horizontalStopButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_horizontalStopButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionCell.horizontalStopButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_horizontalStopButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall DOCItemCollectionCell.cancelDownloadProgress()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (v2)
  {
    v3 = v2;
    v4 = (*((*v1 & *v2) + 0x568))();

    [v4 cancel];
  }
}

Swift::Void __swiftcall DOCItemCollectionCell.renameGesture(_:)(UIGestureRecognizer *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x208))();
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = (*((*v4 & *v5) + 0x3D0))();

  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = (*((*v4 & *v2) + 0x248))();
  if (!v8)
  {
    swift_unknownObjectRelease();
LABEL_18:
    v31 = objc_opt_self();
    v32 = swift_allocObject();
    *(v32 + 16) = v2;
    *(v32 + 24) = 0x3FF0000000000000;
    v33 = swift_allocObject();
    *(v33 + 16) = partial apply for closure #1 in updateTitleAlphaImmediately #1 (to:) in DOCItemCollectionCell.renameGesture(_:);
    *(v33 + 24) = v32;
    v41 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v42 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = thunk for @escaping @callee_guaranteed () -> ();
    v40 = &block_descriptor_15_3;
    v34 = _Block_copy(&aBlock);
    v35 = v2;

    [v31 performWithoutAnimation_];
    _Block_release(v34);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if ((v31 & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v36 = v8;
  v9 = [(UIGestureRecognizer *)a1 state];
  if (unk_285C81110 == v9 || qword_285C81108 == v9)
  {
    v11 = 0.35;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = closure #1 in updateTitleAlphaImmediately #1 (to:) in DOCItemCollectionCell.renameGesture(_:)partial apply;
  *(v14 + 24) = v13;
  v41 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v42 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = thunk for @escaping @callee_guaranteed () -> ();
  v40 = &block_descriptor_26_2;
  v15 = _Block_copy(&aBlock);
  v16 = v2;

  [v12 performWithoutAnimation_];
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    goto LABEL_22;
  }

  if ([(UIGestureRecognizer *)a1 state]== 3 && (v17 = *((*v4 & *v16) + 0xE8), v17()))
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    LOBYTE(v19) = (*(v19 + 56))(v16, ObjectType, v19);
    v21 = swift_unknownObjectRelease();
    if ((v19 & 1) != 0 && (v17)(v21))
    {
      v23 = v22;
      v24 = swift_getObjectType();
      v40 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIGestureRecognizer);
      aBlock = a1;
      v25 = *(v23 + 24);
      v26 = a1;
      v27 = v25(v16, &aBlock, v24, v23);
      swift_unknownObjectRelease();
      outlined destroy of CharacterSet?(&aBlock, &_sypSgMd);
      swift_getObjectType();
      v28 = swift_allocObject();
      *(v28 + 16) = v36;
      *(v28 + 24) = v27;
      v29 = v36;
      v30 = v27;
      DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCItemCollectionCell.renameGesture(_:), v28);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void DOCItemCollectionCell.inlineRenameGestureRect.getter(uint64_t a1@<X8>)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x108))();
  v4 = v3;
  if (v3)
  {
    [v3 bounds];
    [v4 convertRect:v1 toCoordinateSpace:?];
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
    v20 = CGRectInset(v19, 0.0, -5.0);
    v21 = CGRectOffset(v20, 0.0, 10.0);
    v9 = v21.origin.y;
    v16 = v21.size.width;
    v17 = v21.origin.x;
    rect = v21.size.height;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v10 = CGRectGetMidY(v21) + -2.0;
    v22.size.width = v16;
    v22.origin.x = v17;
    v22.origin.y = v9;
    v22.size.height = rect;
    MinY = CGRectGetMinY(v22);

    *&v12 = v16;
    *&v13 = v17;
    if (MinY >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = MinY;
    }

    *(&v13 + 1) = v14;
    v15 = v13;
    *(&v12 + 1) = rect;
  }

  else
  {
    v15 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v15;
  *(a1 + 16) = v12;
  *(a1 + 32) = v4 == 0;
}

Swift::Bool __swiftcall DOCItemCollectionCell.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer *_, UITouch shouldReceive)
{
  v3 = v2;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x1E0))();
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = [(objc_class *)shouldReceive.super.isa locationInView:v3];
  v10 = v9;
  v12 = v11;
  (*((*v5 & *v3) + 0x2D0))(&v14, v8);
  if (v15)
  {
    return 0;
  }

  v16.x = v10;
  v16.y = v12;
  return CGRectContainsPoint(v14, v16);
}

Swift::Bool __swiftcall DOCItemCollectionCell.gestureRecognizer(_:shouldRequireFailureOf:)(UIGestureRecognizer *_, UIGestureRecognizer *shouldRequireFailureOf)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x1E0))();
  v5 = static NSObject.== infix(_:_:)();

  result = 0;
  if (v5)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPanGestureRecognizer);
    if (([(UIGestureRecognizer *)shouldRequireFailureOf isKindOfClass:swift_getObjCClassFromMetadata()]& 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

Swift::Bool __swiftcall DOCItemCollectionCell.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer *_, UIGestureRecognizer *shouldRecognizeSimultaneouslyWith)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x1E0))();
  v4 = static NSObject.== infix(_:_:)();

  return v4 & 1;
}

Swift::Void __swiftcall DOCItemCollectionCell.drawBorderForSubviews(in:)(UIView *in)
{
  v2 = [(UIView *)in subviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  v15 = objc_opt_self();
  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  v14 = v3 & 0xC000000000000001;
  v13 = *((*MEMORY[0x277D85000] & *v1) + 0x2F0);
  v6 = v3;
  do
  {
    if (v14)
    {
      v7 = MEMORY[0x24C1FC540](v5, v3);
    }

    else
    {
      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    ++v5;
    v9 = [v7 layer];
    v10 = [v15 blueColor];
    v11 = [v10 CGColor];

    [v9 setBorderColor_];
    v12 = [v8 layer];
    [v12 setBorderWidth_];

    v13(v8);
    v3 = v6;
  }

  while (v4 != v5);
LABEL_10:
}

Swift::Bool __swiftcall DOCItemCollectionCell.shouldOverrideCellBackgroundColor()()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v9 = 0;
  }

  else
  {
    v9 = UICellConfigurationState.isSelected.getter() ^ 1;
  }

  (*(v3 + 8))(v7, v2);
  return v9 & 1;
}

Swift::Bool __swiftcall DOCItemCollectionCell.pointHitSignificantView(_:)(CGPoint a1)
{
  y = a1.y;
  x = a1.x;
  [v1 bounds];
  v5.x = x;
  v5.y = y;
  return CGRectContainsPoint(v6, v5);
}

Swift::Void __swiftcall DOCItemCollectionCell.didUpdateItemStatusBadge()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (v3)
  {
    v4 = *((*v2 & *v3) + 0x870);
    v14 = v3;
    if (v4() & 1) != 0 || ((*((*v2 & *v0) + 0x180))())
    {
      v5 = (*((*v2 & *v0) + 0x280))();
      v6 = *((*v2 & *v0) + 0x198);
      v7 = (v6)(v5);
      [v7 setHidden_];

      v8 = v6();
      v9 = (*((*v2 & *v14) + 0x980))();
      [v8 setImage_];

      v10 = (*((*v2 & *v1) + 0x118))();
      if (v10)
      {
        v11 = v10;
        [v10 setActive_];
      }

      v12 = (*((*v2 & *v1) + 0x130))();
      if (v12)
      {
        v13 = v12;
        [v12 setActive_];
      }

      (*((*v2 & *v1) + 0x288))();
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionCell.didUpdateItemAccessStatusBadge()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (v3)
  {
    v4 = *((*v2 & *v3) + 0x890);
    v14 = v3;
    if (v4() & 1) != 0 || ((*((*v2 & *v0) + 0x1B0))())
    {
      v5 = (*((*v2 & *v0) + 0x298))();
      v6 = *((*v2 & *v0) + 0x1C8);
      v7 = (v6)(v5);
      [v7 setHidden_];

      v8 = v6();
      v9 = (*((*v2 & *v14) + 0xA70))();
      [v8 setImage_];

      v10 = (*((*v2 & *v1) + 0x148))();
      if (v10)
      {
        v11 = v10;
        [v10 setActive_];
      }

      v12 = (*((*v2 & *v1) + 0x160))();
      if (v12)
      {
        v13 = v12;
        [v12 setActive_];
      }

      (*((*v2 & *v1) + 0x290))();
    }
  }
}

uint64_t DOCItemCollectionCell.renameController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameController;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *DOCItemCollectionCell.renameTextView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionCell.renameTextView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionCell.isRenaming.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming;
  swift_beginAccess();
  return *(v0 + v1);
}

BOOL DOCItemCollectionCell.backgroundConfigurationShownWhileRenaming.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  return v2 == 6;
}

Swift::Void __swiftcall DOCItemCollectionCell.setNeedsUpdateRenameEditingBackground()()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x3C0))())
  {

    [v0 setNeedsUpdateConfiguration];
  }
}

uint64_t DOCItemCollectionCell.beginRename(context:)()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x3A8))();
  if ((result & 1) == 0)
  {
    v3 = *((*v1 & *v0) + 0x380);

    v3(v4);
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming;
    swift_beginAccess();
    *(v0 + v5) = 1;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v8 = swift_allocObject();
    *(v8 + 16) = partial apply for closure #1 in DOCItemCollectionCell.beginRename(context:);
    *(v8 + 24) = v7;
    aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_39_3;
    v9 = _Block_copy(aBlock);
    v10 = v0;

    [v6 performWithoutAnimation_];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionCell.endRename(_:force:)(Swift::Bool _, Swift::Bool force)
{
  isEscapingClosureAtFileLocation = v2;
  if (force)
  {
    if (one-time initialization token for Rename != -1)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.Rename);
      v6 = isEscapingClosureAtFileLocation;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        *(v9 + 4) = v6;
        *v10 = v6;
        v11 = v6;
        _os_log_impl(&dword_2493AC000, v7, v8, "Forcing teardown of: %@", v9, 0xCu);
        outlined destroy of CharacterSet?(v10, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v10, -1, -1);
        MEMORY[0x24C1FE850](v9, -1, -1);
      }

LABEL_7:
      v12 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming;
      swift_beginAccess();
      *(isEscapingClosureAtFileLocation + v12) = 0;
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = isEscapingClosureAtFileLocation;
      *(v14 + 24) = _;
      v15 = swift_allocObject();
      _ = v15;
      *(v15 + 16) = partial apply for closure #1 in DOCItemCollectionCell.endRename(_:force:);
      *(v15 + 24) = v14;
      aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_49_4;
      v16 = _Block_copy(aBlock);
      v17 = isEscapingClosureAtFileLocation;

      [v13 performWithoutAnimation_];
      _Block_release(v16);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_10:
      swift_once();
    }
  }

  else if ((*((*MEMORY[0x277D85000] & *v2) + 0x3A8))())
  {
    goto LABEL_7;
  }
}

Swift::Void __swiftcall DOCItemCollectionCell.teardownRename(_:)(Swift::Bool a1)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.Rename);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000249BF2080, v19);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = v4;
    v10 = v4;
    _os_log_impl(&dword_2493AC000, v5, v6, "%s %@", v7, 0x16u);
    outlined destroy of CharacterSet?(v8, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v4) + 0x378))();
  if (v12)
  {
    (*(*v12 + 480))(a1);
  }

  v13 = *((*v11 & *v4) + 0x390);
  v14 = (v13)(v12);
  if (v14)
  {
    v15 = v14 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_itemRenameDelegate;
    v16 = v14;
    swift_beginAccess();
    *(v15 + 8) = 0;
    swift_unknownObjectWeakAssign();
  }

  v17 = v13();
  if (v17)
  {
    v18 = v17;
    [v17 removeFromSuperview];
  }

  (*((*v11 & *v4) + 0x398))(0);
  (*((*v11 & *v4) + 0x380))(0);
}

Swift::Void __swiftcall DOCItemCollectionCell.setupRename()()
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Rename);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26[0] = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E65527075746573, 0xED00002928656D61, v26);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%s %@", v5, 0x16u);
    outlined destroy of CharacterSet?(v6, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v2) + 0x390);
  v11 = v10();
  if (!v11)
  {
    v12 = (*((*v9 & *v2) + 0x208))();
    if (v12)
    {
      v13 = v12;
      v14 = (*((*v9 & *v12) + 0x640))();
      v16 = v15;
      v17 = (*((*v9 & *v13) + 0xB88))();
      v18 = (*((*v9 & *v13) + 0xB90))();
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
      v18 = 1;
      v17 = 1;
    }

    v19 = objc_allocWithZone(type metadata accessor for DOCItemRenameTextView());
    v20 = DOCItemRenameTextView.init(initialText:canDisplayExtension:isDisplayingExtension:)(v14, v16, v17 & 1, v18 & 1);
    [v20 setTranslatesAutoresizingMaskIntoConstraints_];
    v21 = *((*v9 & *v2) + 0x398);
    v22 = v20;
    v21(v20);
    v11 = v22;
  }

  v23 = v10();
  if (v23)
  {
    v24 = v23 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_itemRenameDelegate;
    v25 = v23;
    swift_beginAccess();
    *(v24 + 8) = &protocol witness table for DOCItemCollectionCell;
    swift_unknownObjectWeakAssign();
  }
}

void DOCItemCollectionCell.installRenameTextView(_:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x398);
  v5 = a1;
  v6 = v4(a1);
  v7 = (*((*v3 & *v1) + 0x390))(v6);
  if (v7)
  {
    v8 = v7 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_itemRenameDelegate;
    v9 = v7;
    swift_beginAccess();
    *(v8 + 8) = &protocol witness table for DOCItemCollectionCell;
    swift_unknownObjectWeakAssign();
  }
}

void DOCItemCollectionCell.selectContent(for:)(char *a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x390))();
  if (v3)
  {
    v4 = v3;
    DOCItemRenameTextView.selectDisplayName(for:)(a1);
  }
}

void DOCItemCollectionCell.moveCursorAfterContent(for:)(char *a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x390))();
  if (v3)
  {
    v4 = v3;
    if (*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isDisplayingExtension) == 1)
    {
      v15.receiver = v3;
      v15.super_class = type metadata accessor for DOCItemRenameTextView();
      v5 = objc_msgSendSuper2(&v15, sel_text);
      if (v5)
      {
        v6 = v5;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0xE000000000000000;
      }

      v11 = specialized DOCItemRenameTextView.filenameSuffixOffset(for:node:)(v7, v9, a1);

      v12 = [v4 endOfDocument];
      if (__OFSUB__(0, v11))
      {
        __break(1u);
        return;
      }

      v13 = v12;
      v10 = [v4 positionFromPosition:v12 offset:-v11];

      if (!v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = [v3 endOfDocument];
    }

    v14 = [v4 textRangeFromPosition:v10 toPosition:v10];
    [v4 setSelectedTextRange_];

LABEL_10:
  }
}

uint64_t DOCItemCollectionCell.itemRenameTextViewDidFinish(_:nameToCommit:includingExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = (*((*MEMORY[0x277D85000] & *v4) + 0x378))();
  if (a3)
  {
    if (!result)
    {
      return result;
    }

    (*(*result + 464))(a2, a3, a4 & 1);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    (*(*result + 472))(result);
  }
}

void *DOCItemCollectionCell.editExtension(_:)()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (result)
  {
    v3 = result;
    v4 = (*((*v1 & *result) + 0x3D0))();

    if (v4)
    {
      result = [v4 filename];
      if (result)
      {
        v5 = result;
        v6 = [result pathExtension];

        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        return v7;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionCell.commitRename()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x390))();
  if (v2)
  {
    v16 = v2;
    DOCItemRenameTextView.sendEndEditingToCell(saveChanges:)(1);
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.Rename);
    v4 = v0;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x655274696D6D6F63, 0xEE002928656D616ELL, &v17);
      *(v7 + 12) = 2080;
      v9 = v4;
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v17);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_2493AC000, v5, v6, "%s inline rename overlay view tapped but the rename text view was missing. Cancelling rename. Self: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v8, -1, -1);
      v15 = v7;
      v1 = MEMORY[0x277D85000];
      MEMORY[0x24C1FE850](v15, -1, -1);
    }

    (*((*v1 & *v4) + 0x420))(1);
  }
}

NSAttributedString_optional __swiftcall DOCItemCollectionCell.accessibilityTitleString()()
{
  v1 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D85000];
  v11 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))(v7);
  if (v11)
  {
    v12 = v11;
    (*((*v10 & *v11) + 0x6E8))();

    outlined init with copy of DOCFastLabel.TextDrawInformation(&v9[*(v5 + 20)], v4);
    outlined destroy of DOCFastLabel.LabelInformation(v9, type metadata accessor for DOCFastLabel.LabelInformation);
    v13 = v4[8];
    outlined destroy of DOCFastLabel.LabelInformation(v4, type metadata accessor for DOCFastLabel.TextDrawInformation);
  }

  else
  {
    v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v16 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
    v13 = [v15 initWithString_];
  }

  v17 = v13;
  result.value.super.isa = v17;
  result.is_nil = v14;
  return result;
}

uint64_t DOCItemCollectionCell.DebugSettings.alwaysShowCircularCancelButton.getter()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = MEMORY[0x24C1FAD20](0xD000000000000034, 0x8000000249BE22E0);
    v3 = [v1 BOOLForKey_];

    return v3;
  }

  return result;
}

id AnimationImage.image.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t AnimationImage.init(image:type:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id DOCBadgedFittingImageView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v12.receiver = v4;
  v12.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  [v10 setMagnificationFilter_];

  return v9;
}

id DOCBadgedFittingImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DOCImageViewContainerView.containedView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCImageViewContainerView_containedView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCImageViewContainerView.containedView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCImageViewContainerView_containedView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCImageViewContainerView.animationView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCImageViewContainerView_animationView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCImageViewContainerView.animationView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCImageViewContainerView_animationView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DOCImageViewContainerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCImageViewContainerView_containedView] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCImageViewContainerView_animationView] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCImageViewContainerView_isInCreateMode] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for DOCImageViewContainerView();
  v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249B9A480;
  v11 = type metadata accessor for UITraitUserInterfaceStyle();
  v12 = MEMORY[0x277D74BF0];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v13 = v9;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v13;
}

void closure #1 in DOCImageViewContainerView.layoutSubviews()(void *a1)
{
  v16.receiver = a1;
  v16.super_class = type metadata accessor for DOCImageViewContainerView();
  v2 = objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *a1) + 0x68))(v2);
  if (v4)
  {
    v5 = v4;
    [a1 frame];
    v7 = v6;
    v9 = v8;
    v10 = v5;
    [v10 fittingSize];
    if (v7 != v12 || v9 != v11)
    {
      [a1 frame];
      [v10 setFittingSize_];
    }

    (*((*v3 & *a1) + 0xD0))(0);
  }
}

Swift::Void __swiftcall DOCImageViewContainerView.hideContainedView()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
  if (v1)
  {
    v2 = v1;
    [v1 setHidden_];
  }
}

uint64_t DOCImageViewContainerView.runAnimation(_:imageFetcher:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v5) + 0x68);
  v10 = v9();
  if (v10)
  {
    v11 = v10;
    [v10 setHidden_];
  }

  v12 = v9();
  if (v12)
  {
    v13 = v12;
    [v12 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = v21;
    v23 = v19;
    v24 = v17;
    v25 = v15;
  }

  else
  {
    [v5 bounds];
  }

  v35 = CGRectInset(*&v25, -10.0, 0.0);
  v26 = [objc_allocWithZone(type metadata accessor for DOCUIFolderAnimationView()) initWithFrame_];
  v27 = (*((*v8 & *v5) + 0x88))(v26);
  v28 = *((*v8 & *v5) + 0x80);
  result = (v28)(v27);
  if (result)
  {
    v30 = result;
    [v5 addSubview_];

    result = v28();
    if (result)
    {
      v31 = result;
      v32 = swift_allocObject();
      v32[2] = v5;
      v32[3] = a4;
      v32[4] = a5;
      v33 = v5;
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);
      dispatch thunk of DOCUIFolderAnimationView.runAnimation(_:imageFetcher:completion:)();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in DOCImageViewContainerView.runAnimation(_:imageFetcher:completion:)(void *a1, void (*a2)(uint64_t))
{
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *a1) + 0x80))();
  if (v5)
  {
    v6 = v5;
    [v5 removeFromSuperview];
  }

  v7 = (*((*v4 & *a1) + 0x88))(0);
  v8 = (*((*v4 & *a1) + 0x68))(v7);
  if (v8)
  {
    v9 = v8;
    [v8 setHidden_];
  }

  if (a2)
  {

    a2(v10);

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  }
}

uint64_t DOCImageViewContainerView.fetchAnimationAssets(node:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for ImageOptions();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v5;
  v2[12] = v4;

  return MEMORY[0x2822009F8](DOCImageViewContainerView.fetchAnimationAssets(node:), v5, v4);
}

uint64_t DOCImageViewContainerView.fetchAnimationAssets(node:)()
{
  v1 = v0[4];
  [v1 bounds];
  v2 = [v1 window];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 screen];
  }

  else
  {
    v4 = [objc_opt_self() mainScreen];
  }

  v5 = v0[8];
  v6 = v0[4];
  v7 = v0[3];
  [v4 scale];

  v8 = [v6 traitCollection];
  UITraitCollection._ifColorForIconFolderTintComponents.getter();

  ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables14AnimationImageVGMd);
  v10 = static MainActor.shared.getter();
  v0[13] = v10;
  v11 = swift_task_alloc();
  v0[14] = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v5;
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = DOCImageViewContainerView.fetchAnimationAssets(node:);
  v13 = MEMORY[0x277D85700];

  return MEMORY[0x282200600](v0 + 2, &type metadata for AnimationImage, v9, v10, v13, &async function pointer to partial apply for closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:), v11, &type metadata for AnimationImage);
}

{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](DOCImageViewContainerView.fetchAnimationAssets(node:), v3, v2);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[2];
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy26DocumentManagerExecutables14AnimationImageV_GMd);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for ImageOptions();
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v4[20] = *(v7 + 64);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MainActor();
  v4[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[26] = v9;
  v4[27] = v8;

  return MEMORY[0x2822009F8](closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:), v9, v8);
}

uint64_t closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:)()
{
  v29 = *(v0 + 152);
  v30 = **(v0 + 96);
  v1 = type metadata accessor for TaskPriority();
  v2 = 0;
  v3 = *(v1 - 8);
  v28 = *(v3 + 56);
  v27 = (v3 + 48);
  v26 = (v3 + 8);
  do
  {
    v6 = *(v0 + 184);
    v32 = *(v0 + 176);
    v7 = *(v0 + 168);
    v8 = *(v0 + 144);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v33 = v2;
    v31 = *(&outlined read-only object #0 of closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:) + v2 + 32);
    v28(v6, 1, 1, v1);
    (*(v29 + 16))(v7, v10, v8);
    v11 = v1;
    v12 = (*(v29 + 80) + 48) & ~*(v29 + 80);
    v13 = swift_allocObject();
    v13[2] = 0;
    v14 = v13 + 2;
    v13[3] = 0;
    v13[4] = v9;
    v13[5] = v31;
    v15 = v13 + v12;
    v1 = v11;
    (*(v29 + 32))(v15, v7, v8);
    outlined init with copy of TaskPriority?(v6, v32);
    LODWORD(v6) = (*v27)(v32, 1, v11);
    swift_unknownObjectRetain();
    v16 = *(v0 + 176);
    if (v6 == 1)
    {
      outlined destroy of CharacterSet?(*(v0 + 176), &_sScPSgMd);
      if (*v14)
      {
        goto LABEL_6;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*v26)(v16, v11);
      if (*v14)
      {
LABEL_6:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v18;
        swift_unknownObjectRelease();
        goto LABEL_9;
      }
    }

    v17 = 0;
    v19 = 0;
LABEL_9:
    v20 = swift_allocObject();
    *(v20 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:);
    *(v20 + 24) = v13;

    if (v19 | v17)
    {
      v4 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v17;
      *(v0 + 40) = v19;
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v0 + 184);
    *(v0 + 48) = 1;
    *(v0 + 56) = v4;
    *(v0 + 64) = v30;
    swift_task_create();

    outlined destroy of CharacterSet?(v5, &_sScPSgMd);
    v2 = v33 + 8;
  }

  while (v33 != 16);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 224) = MEMORY[0x277D84F90];
  v21 = static MainActor.shared.getter();
  *(v0 + 232) = v21;
  v22 = swift_task_alloc();
  *(v0 + 240) = v22;
  *v22 = v0;
  v22[1] = closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:);
  v23 = *(v0 + 120);
  v24 = MEMORY[0x277D85700];

  return MEMORY[0x2822002E8](v0 + 72, v21, v24, v23);
}

{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:), v3, v2);
}

{
  v1 = *(v0 + 224);
  if (*(v0 + 72) == 1)
  {
    v2 = *(v0 + 88);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    *v2 = v1;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v15 = *(v0 + 72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 224);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    v9 = v15;
    if (v8 >= v7 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
      v9 = v15;
      v6 = v14;
    }

    *(v6 + 2) = v8 + 1;
    *&v6[16 * v8 + 32] = v9;
    *(v0 + 224) = v6;
    v10 = static MainActor.shared.getter();
    *(v0 + 232) = v10;
    v11 = swift_task_alloc();
    *(v0 + 240) = v11;
    *v11 = v0;
    v11[1] = closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:);
    v12 = *(v0 + 120);
    v13 = MEMORY[0x277D85700];

    return MEMORY[0x2822002E8](v0 + 72, v10, v13, v12);
  }
}

uint64_t closure #1 in closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for ImageOptions();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for FolderAssetType();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = type metadata accessor for FolderIconFetcher();
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:), 0, 0);
}

uint64_t closure #1 in closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:)()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  *v2 = v0[4];
  (*(v1 + 104))(v2, *MEMORY[0x277D06320], v3);
  (*(v6 + 16))(v4, v7, v5);
  swift_unknownObjectRetain();
  FolderIconFetcher.init(node:assetType:imageOptions:)();
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = closure #1 in closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:);

  return MEMORY[0x28215B6A8]();
}

{
  v1 = v0[16];
  v2 = v0[4];
  v3 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[12]);
  *v3 = v1;
  v3[1] = v2;

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[4];
  v2 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[12]);
  *v2 = 0;
  v2[1] = v1;

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:)(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = closure #1 in closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:);
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = closure #1 in closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t DOCImageViewContainerView.isInCreateMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCImageViewContainerView_isInCreateMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCImageViewContainerView.isInCreateMode.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCImageViewContainerView_isInCreateMode;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0xD0))(0);
  }

  return result;
}

void (*DOCImageViewContainerView.isInCreateMode.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCImageViewContainerView_isInCreateMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCImageViewContainerView.isInCreateMode.modify;
}

void DOCImageViewContainerView.isInCreateMode.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    (*((*MEMORY[0x277D85000] & *v1[3]) + 0xD0))(0);
  }

  free(v1);
}

Swift::Void __swiftcall DOCImageViewContainerView.updateCreateImage(forceUpdate:)(Swift::Bool forceUpdate)
{
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0xB0))() & 1) == 0)
  {
    return;
  }

  [v1 frame];
  if (v5 == 0.0 && v4 == 0.0)
  {
    return;
  }

  v33 = [v1 effectiveAppearance];
  if (!v33)
  {
    return;
  }

  v6 = (*((*v3 & *v1) + 0x68))();
  if (v6)
  {
    v7 = v6;
    [v1 frame];
    v9 = v8;
    v11 = v10;
    [v33 defaultDocumentAspectRatio];
    v13 = v12;
    [v33 defaultDocumentAspectRatio];
    if (v13 >= 1.0)
    {
      v11 = CGRound(v11 / v14);
      if (forceUpdate)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = CGRound(v9 * v14);
      if (forceUpdate)
      {
        goto LABEL_15;
      }
    }

    v15 = [v7 image];
    if (!v15 || ((v16 = v15, [v15 size], v18 = v17, v20 = v19, v16, v18 == v9) ? (v21 = v20 == v11) : (v21 = 0), !v21))
    {
LABEL_15:
      v36.origin.x = 0.0;
      v36.origin.y = 0.0;
      v36.size.width = v9;
      v36.size.height = v11;
      MidX = CGRectGetMidX(v36);
      v23 = CGRound(MidX);
      v37.origin.x = 0.0;
      v37.origin.y = 0.0;
      v37.size.width = v9;
      v37.size.height = v11;
      MidY = CGRectGetMidY(v37);
      v25 = CGRound(MidY);
      if (v25 < v23)
      {
        v23 = v25;
      }

      v26 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
      v27 = swift_allocObject();
      *(v27 + 24) = 0;
      *(v27 + 32) = 0;
      *(v27 + 16) = v1;
      *(v27 + 40) = v9;
      *(v27 + 48) = v11;
      *(v27 + 56) = v23;
      v28 = swift_allocObject();
      *(v28 + 16) = partial apply for closure #1 in DOCImageViewContainerView.updateCreateImage(forceUpdate:);
      *(v28 + 24) = v27;
      aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
      aBlock[3] = &block_descriptor_73;
      v29 = _Block_copy(aBlock);
      v30 = v1;

      v31 = [v26 imageWithActions_];
      _Block_release(v29);
      LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

      if (v29)
      {
        __break(1u);
      }

      else
      {
        v32 = v31;
        [v7 setImage_];
      }

      return;
    }
  }
}

void closure #1 in DOCImageViewContainerView.updateCreateImage(forceUpdate:)(void *a1, id a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v14 = [a2 traitCollection];
  v15 = [v14 userInterfaceStyle];

  if (v15 == 1)
  {
    v16 = [objc_opt_self() whiteColor];
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.85 alpha:1.0];
  }

  v17 = v16;
  v18 = [a1 CGContext];
  v19 = [v17 CGColor];
  CGContextSetFillColorWithColor(v18, v19);

  v20 = [a1 CGContext];
  v48.origin.x = a3;
  v48.origin.y = a4;
  v48.size.width = a5;
  v48.size.height = a6;
  CGContextFillRect(v20, v48);

  v21 = [a2 tintColor];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() _doc_safeTintColor_];

    v45 = [objc_opt_self() configurationWithPointSize:2 weight:a7];
    v24 = MEMORY[0x24C1FAD20](1937075312, 0xE400000000000000);
    v25 = [objc_opt_self() systemImageNamed_];

    v26 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    [v26 setPreferredSymbolConfiguration_];
    [v26 setTintColor_];
    v27 = v26;
    [v27 setContentMode_];
    [v27 intrinsicContentSize];
    DOCCenterSizeInRect();
    [v27 setFrame_];
    [v27 bounds];
    v47.width = v28;
    v47.height = v29;
    UIGraphicsBeginImageContextWithOptions(v47, 0, 0.0);
    v30 = UIGraphicsGetCurrentContext();
    if (v30)
    {
      v31 = v30;
      v32 = [v27 layer];
      [v32 renderInContext_];
    }

    v33 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (v33 && (v34 = [(UIImage *)v33 CGImage], v33, v34))
    {
      v35 = [a1 CGContext];
      [v27 frame];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v49.origin.x = v37;
      v49.origin.y = v39;
      v49.size.width = v41;
      v49.size.height = v43;
      CGContextRef.draw(_:in:byTiling:)(v34, v49, 0);

      v44 = v27;
    }

    else
    {
      v35 = v45;
      v44 = v23;
      v23 = v27;
      v45 = v27;
    }
  }

  else
  {
    __break(1u);
  }
}

void DOCImageViewContainerView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCImageViewContainerView_animationView);
}

Swift::Void __swiftcall DOCItemStatusBadgeView.setLayoutTraits(_:)(DocumentManagerExecutables::DOCItemCollectionLayoutTraits::ItemStatusBadgeTraits a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits];
  if ((v2[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits + 32] & 1) != 0 || (*v7 == v3 ? (v8 = v7[1] == v4) : (v8 = 0), v8 ? (v9 = v7[2] == v5) : (v9 = 0), v9 ? (v10 = v7[3] == v6) : (v10 = 0), !v10))
  {
    *v7 = v3;
    v7[1] = v4;
    v7[2] = v5;
    v7[3] = v6;
    *(v7 + 32) = 0;
    [v2 invalidateIntrinsicContentSize];
  }
}

double DOCItemStatusBadgeView.intrinsicContentSize.getter()
{
  if ((v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits + 32] & 1) == 0)
  {
    return *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCItemStatusBadgeView();
  objc_msgSendSuper2(&v2, sel_intrinsicContentSize);
  return result;
}

id DOCItemStatusBadgeView.__allocating_init(image:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage_];

  return v3;
}

id DOCItemStatusBadgeView.init(image:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCItemStatusBadgeView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithImage_, a1);

  return v4;
}

id DOCBadgedFittingImageView.__allocating_init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

id DOCItemStatusBadgeView.init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for DOCItemStatusBadgeView();
  v6 = objc_msgSendSuper2(&v8, sel_initWithImage_highlightedImage_, a1, a2);

  return v6;
}

id DOCItemStatusBadgeView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DOCItemStatusBadgeView();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id DOCItemStatusBadgeView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCItemStatusBadgeView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id DOCItemCollectionCellSpringLoadedInteractionBehavior.__allocating_init(with:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

id DOCItemCollectionCellSpringLoadedInteractionBehavior.init(with:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCItemCollectionCellSpringLoadedInteractionBehavior();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

Swift::Void __swiftcall DOCItemCollectionCellSpringLoadedInteractionBehavior.interactionDidFinish(_:)(UISpringLoadedInteraction a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setHighlighted_];
  }
}

id DOCItemCollectionCellSpringLoadedInteractionBehavior.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DOCItemCollectionCell.description.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (v3)
  {
    v4 = v3;
    v5 = (*((*v2 & *v3) + 0x3D0))();
    if (v5)
    {
      v6 = [v5 displayName];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      swift_unknownObjectRelease();

      v10 = v7;
    }

    else
    {

      v9 = 0xEA00000000002A65;
      v10 = 0x646F6E2D6C696E2ALL;
    }
  }

  else
  {
    v9 = 0xED00002A746E6574;
    v10 = 0x6E6F632D6C696E2ALL;
  }

  v17 = 0x5B6C6C6563;
  v18 = 0xE500000000000000;
  MEMORY[0x24C1FAEA0](v10, v9);

  MEMORY[0x24C1FAEA0](540876893, 0xE400000000000000);
  v16.receiver = v1;
  v16.super_class = type metadata accessor for DOCItemCollectionCell();
  v11 = objc_msgSendSuper2(&v16, sel_description);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  MEMORY[0x24C1FAEA0](v12, v14);

  return v17;
}

Swift::Void __swiftcall DOCItemCollectionCell.prepareForReuse()()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for DOCItemCollectionCell();
  v2 = objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v3 = MEMORY[0x24C1FDA70](v2);
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (v5)
  {
    v6 = v5;
    (*((*v4 & *v5) + 0x560))();
  }

  (*((*v4 & *v1) + 0x210))(0);
  objc_autoreleasePoolPop(v3);
  v7 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) superview];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for DOCImageViewContainerView();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = (*((*v4 & *v9) + 0x80))();
      if (v10)
      {
        v11 = v10;
        [v10 removeFromSuperview];
      }
    }
  }
}

uint64_t DOCItemCollectionCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = (*(ObjectType + 616))(0, a1, a2, a3, a4);
  swift_deallocPartialClassInstance();
  return v9;
}

id DOCItemCollectionCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void closure #1 in DOCItemCollectionCell.configure(in:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((*((*MEMORY[0x277D85000] & *Strong) + 0xE8))())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      (*(v6 + 40))(v4, a2, ObjectType, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionCell.dragStateDidChange(_:)(UICollectionViewCellDragState a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for DOCItemCollectionCell();
  v3 = objc_msgSendSuper2(&v15, sel_dragStateDidChange_, a1);
  v4 = MEMORY[0x277D85000];
  if (a1)
  {
    if (a1 == UICollectionViewCellDragStateDragging)
    {
      if ((*((*MEMORY[0x277D85000] & *v1) + 0x180))(v3))
      {
        v7 = (*((*v4 & *v1) + 0x198))();
        [v7 setAlpha_];
      }

      if (((*((*v4 & *v1) + 0x1B0))() & 1) == 0)
      {
        goto LABEL_18;
      }

      v6 = (*((*v4 & *v1) + 0x1C8))();
      [v6 setAlpha_];
    }

    else
    {
      if (a1 != UICollectionViewCellDragStateLifting)
      {
        type metadata accessor for UICollectionViewCellDragState(0);
        v14[3] = v11;
        v14[0] = a1;
        doc_warnUnrecognizedEnumValueEncountered(_:)(v14);
        __swift_destroy_boxed_opaque_existential_0(v14);
        goto LABEL_18;
      }

      if ((*((*MEMORY[0x277D85000] & *v1) + 0x180))(v3))
      {
        v5 = (*((*v4 & *v1) + 0x198))();
        [v5 setAlpha_];
      }

      if (((*((*v4 & *v1) + 0x1B0))() & 1) == 0)
      {
        goto LABEL_18;
      }

      v6 = (*((*v4 & *v1) + 0x1C8))();
      [v6 setAlpha_];
    }

LABEL_18:
    v12 = *((*v4 & *v1) + 0x1E0);
    v13 = v12();
    [v13 setEnabled_];

    v9 = v12();
    [v9 setEnabled_];
    v10 = 0;
    goto LABEL_19;
  }

  if ((*((*MEMORY[0x277D85000] & *v1) + 0x180))(v3))
  {
    v8 = (*((*v4 & *v1) + 0x198))();
    [v8 setAlpha_];
  }

  if (((*((*v4 & *v1) + 0x1B0))() & 1) == 0)
  {
    v10 = 1;
    goto LABEL_20;
  }

  v9 = (*((*v4 & *v1) + 0x1C8))();
  [v9 setAlpha_];
  v10 = 1;
LABEL_19:

LABEL_20:
  [v1 setUserInteractionEnabled_];
}

void closure #1 in updateTitleAlphaImmediately #1 (to:) in DOCItemCollectionCell.renameGesture(_:)(void *a1, double a2)
{
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x108))();
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha_];
  }
}

void closure #1 in DOCItemCollectionCell.renameGesture(_:)(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v10 = a1;
    v5 = [a2 unresolvedHandler];
    if (v5)
    {
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_249BA0290;
      *(v7 + 32) = v10;
      v8 = v10;
      v10 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      isa = Array._bridgeToObjectiveC()().super.isa;
      (v6)[2](v6, isa, v10);

      _Block_release(v6);
    }
  }
}

Swift::Bool __swiftcall DOCItemCollectionCell.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x208))();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  v7 = (*((*v4 & *v1) + 0x1E0))();
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    v14.receiver = v2;
    v14.super_class = type metadata accessor for DOCItemCollectionCell();
    v12 = [(UIGestureRecognizer *)&v14 gestureRecognizerShouldBegin:a1];

    return v12 & 1;
  }

  v9 = (*((*v4 & *v6) + 0x4F0))();
  if (v9 == 2 || (v9 & 1) == 0 || (v10 = (*((*v4 & *v2) + 0x248))()) == 0)
  {

    goto LABEL_10;
  }

  v11 = (*((*v4 & *v6) + 0x490))();
  if (v11 == 2)
  {
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  v12 = v11 ^ 1;
  return v12 & 1;
}

void DOCItemCollectionCell.updateConfiguration(using:)()
{
  v1 = v0;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DOCItemCollectionCell();
  objc_msgSendSuper2(&v7, sel__bridgedUpdateConfigurationUsingState_, isa);

  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x208))();
  if (v4)
  {
    v5 = v4;
    if (UICellConfigurationState.isFocused.getter())
    {
      LOBYTE(v6) = 1;
    }

    else if (UICellConfigurationState.isSelected.getter())
    {
      v6 = UICellConfigurationState.isEditing.getter() ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    (*((*v3 & *v5) + 0x4C8))(v6 & 1);
  }
}

void closure #1 in DOCItemCollectionCell.beginRename(context:)(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x3C8))();
  v4 = (*((*v2 & *a1) + 0x3E8))(v3);
  v5 = (*((*v2 & *a1) + 0x1E0))(v4);
  [v5 setEnabled_];
}

void closure #1 in DOCItemCollectionCell.endRename(_:force:)(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a1) + 0x3C8))();
  v5 = (*((*v4 & *a1) + 0x3E0))(a2);
  v6 = (*((*v4 & *a1) + 0x1E0))(v5);
  [v6 setEnabled_];
}

id DOCImageViewContainerView.__deallocating_deinit(uint64_t (*a1)(void), SEL *a2)
{
  v5.receiver = v2;
  v5.super_class = a1();
  return objc_msgSendSuper2(&v5, *a2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed UISpringLoadedInteraction, @guaranteed UISpringLoadedInteractionContext) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR26DocumentManagerExecutables14AnimationImageV_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR26DocumentManagerExecutables14AnimationImageV_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR26DocumentManagerExecutables14AnimationImageV_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized DOCItemCollectionCell.cellContent.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = MEMORY[0x277D85000];
  if (v5)
  {
    v7 = *((*MEMORY[0x277D85000] & *v5) + 0xBA0);
    v8 = v5;
    v7(0, 0);

    v9 = *(v2 + v4);
  }

  else
  {
    v9 = 0;
  }

  *(v2 + v4) = a1;
  v10 = a1;

  v11 = *(v2 + v4);
  if (v11)
  {
    v12 = *((*v6 & *v11) + 0xBA0);
    v13 = v11;
    v14 = v2;
    v12(v2, &protocol witness table for DOCItemCollectionCell);
  }

  return (*((*v6 & *v2) + 0x200))();
}

uint64_t outlined init with copy of DOCFastLabel.TextDrawInformation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCFastLabel.LabelInformation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:)(a1, a2, v7, v6);
}

uint64_t specialized DOCItemCollectionCellSpringLoadedInteractionBehavior.shouldAllow(_:with:)(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.UI);
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2493AC000, v3, v9, "No target cell in DOCItemCollectionCellSpringLoadedInteractionBehavior, disallowing spring loaded interaction", v10, 2u);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    goto LABEL_14;
  }

  v3 = Strong;
  if (![Strong isUserInteractionEnabled])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.UI);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2493AC000, v12, v13, "Target cell has isUserInteractionEnabled = NO in DOCItemCollectionCellSpringLoadedInteractionBehavior, disallowing spring loaded interaction", v14, 2u);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    goto LABEL_14;
  }

  if (!(*((*MEMORY[0x277D85000] & v3->isa) + 0xE8))())
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 32))(v3, a1, ObjectType, v5);
  swift_unknownObjectRelease();
LABEL_15:

  return v7 & 1;
}

void specialized DOCItemCollectionCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemStatusBadgeConstraintX) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemStatusBadgeConstraintY) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemAccessStatusBadgeConstraintX) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_itemAccessStatusBadgeConstraintY) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isItemStatusBadgeLoaded) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemStatusBadge) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isItemAccessStatusBadgeLoaded) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___itemAccessStatusBadge) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell____lazy_storage___renameGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_actions) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_canShowBackgroundView) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_horizontalStopButton) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameController) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t dispatch thunk of DOCImageViewContainerView.fetchAnimationAssets(node:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static FolderNodeObserver.getChildrenNodes(in:);

  return v7(a1);
}

uint64_t partial apply for closure #1 in closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:)(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageOptions() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #1 in DOCImageViewContainerView.fetchAnimationAssets(node:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR26DocumentManagerExecutables14AnimationImageV_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR26DocumentManagerExecutables14AnimationImageV_Tg5(a1, v4);
}

uint64_t UICollectionView.doc_validatedIndexPath(_:indexPathDebugName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for IndexPath();
  v56 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v52 - v16;
  if (String.count.getter() < 1)
  {
    a3 = 0xE900000000000068;
    a2 = 0x7461507865646E69;
  }

  else
  {
  }

  v18 = IndexPath.section.getter();
  v19 = [v5 numberOfSections];
  v54 = a2;
  if (v18 >= v19)
  {
    v24 = v19;
    v55 = a4;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.UI);
    (*(v56 + 16))(v17, a1, v10);

    v26 = v5;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v57 = v53;
      *v29 = 136315906;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, a3, &v57);

      *(v29 + 4) = v31;
      *(v29 + 12) = 2080;
      lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v56 + 8))(v17, v10);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v57);

      *(v29 + 14) = v35;
      *(v29 + 22) = 2048;
      *(v29 + 24) = v24;
      *(v29 + 32) = 2112;
      *(v29 + 34) = v26;
      *v30 = v26;
      v36 = v26;
      _os_log_impl(&dword_2493AC000, v27, v28, "Encountered invalid %s (%s) - numberOfSections is %ld for %@", v29, 0x2Au);
      outlined destroy of NSObject?(v30);
      MEMORY[0x24C1FE850](v30, -1, -1);
      v37 = v53;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v37, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    else
    {

      (*(v56 + 8))(v17, v10);
    }

    return (*(v56 + 56))(v55, 1, 1, v10);
  }

  v20 = IndexPath.row.getter();
  v21 = [v5 numberOfItemsInSection_];
  if (v20 >= v21)
  {
    v38 = v21;
    v55 = a4;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.UI);
    (*(v56 + 16))(v13, a1, v10);

    v40 = v5;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v57 = v53;
      *v43 = 136316162;
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, a3, &v57);

      *(v43 + 4) = v44;
      *(v43 + 12) = 2080;
      lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v56 + 8))(v13, v10);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v57);

      *(v43 + 14) = v48;
      *(v43 + 22) = 2048;
      *(v43 + 24) = v18;
      *(v43 + 32) = 2048;
      *(v43 + 34) = v38;
      *(v43 + 42) = 2112;
      *(v43 + 44) = v40;
      v49 = v52;
      *v52 = v40;
      v50 = v40;
      _os_log_impl(&dword_2493AC000, v41, v42, "Encountered invalid %s (%s) - numberOfItems(inSection:%ld) is %ld for %@", v43, 0x34u);
      outlined destroy of NSObject?(v49);
      MEMORY[0x24C1FE850](v49, -1, -1);
      v51 = v53;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v51, -1, -1);
      MEMORY[0x24C1FE850](v43, -1, -1);
    }

    else
    {

      (*(v56 + 8))(v13, v10);
    }

    return (*(v56 + 56))(v55, 1, 1, v10);
  }

  (*(v56 + 16))(a4, a1, v10);
  v22 = *(v56 + 56);

  return v22(a4, 0, 1, v10);
}

uint64_t UICollectionView.doc_performBatchUpdates<A>(with:in:updateDataSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a1;
  v16[7] = a2;
  v16[8] = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in UICollectionView.doc_performBatchUpdates<A>(with:in:updateDataSource:completion:);
  *(v17 + 24) = v16;
  v27 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v28 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = thunk for @escaping @callee_guaranteed () -> ();
  v26 = &block_descriptor_123;
  v18 = _Block_copy(&aBlock);

  v19 = v8;

  if (a5)
  {
    v27 = a5;
    v28 = a6;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v26 = &block_descriptor_6_6;
    a5 = _Block_copy(&aBlock);
  }

  [v19 performBatchUpdates:v18 completion:a5];
  _Block_release(a5);
  _Block_release(v18);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in UICollectionView.doc_performBatchUpdates<A>(with:in:updateDataSource:completion:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a1();
  type metadata accessor for DOCCollectionEdit();
  type metadata accessor for Array();
  swift_getWitnessTable();
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    type metadata accessor for UICollectionView();
    v8 = static UICollectionView.batchIndexPaths<A>(from:in:)(a3, a4);
    v10 = v9;
    if (*(v11 + 16))
    {
      type metadata accessor for IndexPath();

      isa = Array._bridgeToObjectiveC()().super.isa;

      [a5 deleteItemsAtIndexPaths_];
    }

    if (v8[2])
    {
      type metadata accessor for IndexPath();

      v13 = Array._bridgeToObjectiveC()().super.isa;

      [a5 insertItemsAtIndexPaths_];
    }

    if (*(v10 + 16))
    {

      type metadata accessor for IndexPath();
      v14 = Array._bridgeToObjectiveC()().super.isa;

      [a5 reloadItemsAtIndexPaths_];
    }

    else
    {
    }
  }
}

void *static UICollectionView.batchIndexPaths<A>(from:in:)(uint64_t a1, uint64_t a2)
{
  v95 = type metadata accessor for IndexPath();
  v4 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v5);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v89 = &v72 - v9;
  MEMORY[0x28223BE20](v10, v11);
  v88 = &v72 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v87 = &v72 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v74 = &v72 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v73 = &v72 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v72 - v24;
  v26 = type metadata accessor for DOCCollectionEdit();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v72 - v31;
  if (!MEMORY[0x24C1FB1B0](a1, v26, v30))
  {
    v91 = MEMORY[0x277D84F90];
    v81 = MEMORY[0x277D84F90];
    return MEMORY[0x277D84F90];
  }

  v72 = v28;
  v33 = 0;
  v34 = *(v26 + 40);
  v82 = (v27 + 8);
  v83 = v34;
  v93 = (v4 + 16);
  v90 = v4 + 32;
  v85 = (v4 + 8);
  v86 = (v27 + 16);
  v91 = MEMORY[0x277D84F90];
  v80 = a2;
  v81 = MEMORY[0x277D84F90];
  v94 = MEMORY[0x277D84F90];
  v78 = v4;
  v79 = a1;
  v84 = v27;
  v76 = v32;
  v77 = v26;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    result = (*(v27 + 16))(v32, a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v33, v26);
    v40 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_39;
    }

LABEL_7:
    MEMORY[0x24C1F80E0](*&v32[v83], a2);
    v41 = *v32;
    v42 = v32[8];
    (*v82)(v32, v26);
    v92 = v40;
    if (v42 == 1)
    {
      v43 = *v93;
      if (v41)
      {
        if (v41 == 1)
        {
          v43(v73, v25, v95);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91[2] + 1, 1, v91);
          }

          v45 = v91[2];
          v44 = v91[3];
          if (v45 >= v44 >> 1)
          {
            v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v91);
          }

          v35 = v95;
          (*(v4 + 8))(v25, v95);
          v36 = v91;
          v91[2] = v45 + 1;
          (*(v4 + 32))(v36 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v45, v73, v35);
        }

        else
        {
          v43(v75, v25, v95);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81[2] + 1, 1, v81);
          }

          v69 = v81[2];
          v68 = v81[3];
          if (v69 >= v68 >> 1)
          {
            v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1, v81);
          }

          v70 = v95;
          (*(v4 + 8))(v25, v95);
          v71 = v81;
          v81[2] = v69 + 1;
          (*(v4 + 32))(v71 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v69, v75, v70);
        }
      }

      else
      {
        v43(v74, v25, v95);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94[2] + 1, 1, v94);
        }

        v65 = v94[2];
        v64 = v94[3];
        if (v65 >= v64 >> 1)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v65 + 1, 1, v94);
        }

        v66 = v95;
        (*(v4 + 8))(v25, v95);
        v67 = v94;
        v94[2] = v65 + 1;
        (*(v4 + 32))(v67 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v65, v74, v66);
      }
    }

    else
    {
      v46 = v25;
      v47 = v87;
      MEMORY[0x24C1F80E0](v41, a2);
      v48 = *v93;
      (*v93)(v88, v47, v95);
      v49 = v91;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
      }

      v51 = v49[2];
      v50 = v49[3];
      if (v51 >= v50 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v50 > 1, v51 + 1, 1, v49);
      }

      v49[2] = v51 + 1;
      v52 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v91 = v49;
      v53 = v49 + v52;
      v54 = *(v4 + 72);
      v55 = &v53[v54 * v51];
      v56 = *(v4 + 32);
      v57 = v95;
      v56(v55, v88, v95);
      v48(v89, v46, v57);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94[2] + 1, 1, v94);
      }

      v59 = v94[2];
      v58 = v94[3];
      if (v59 >= v58 >> 1)
      {
        v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1, v94);
      }

      v60 = *v85;
      v61 = v95;
      (*v85)(v87, v95);
      v60(v46, v61);
      v62 = v94;
      v94[2] = v59 + 1;
      v63 = v62 + v52 + v59 * v54;
      v25 = v46;
      v56(v63, v89, v61);
      a1 = v79;
      a2 = v80;
      v26 = v77;
      v4 = v78;
      v32 = v76;
    }

    v37 = MEMORY[0x24C1FB1B0](a1, v26);
    ++v33;
    v27 = v84;
    if (v92 == v37)
    {
      return v94;
    }
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  if (v72 != 8)
  {
    goto LABEL_40;
  }

  v96 = result;
  (*v86)(v32, &v96, v26);
  result = swift_unknownObjectRelease();
  v40 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    goto LABEL_7;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for UICollectionView()
{
  result = lazy cache variable for type metadata for UICollectionView;
  if (!lazy cache variable for type metadata for UICollectionView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UICollectionView);
  }

  return result;
}

void __swiftcall DOCAnalyticsItemTaggedEvent.init(bundleID:taggingFlow:)(DocumentManagerExecutables::DOCAnalyticsItemTaggedEvent *__return_ptr retstr, Swift::String_optional bundleID, DocumentManagerExecutables::DOCAnalyticsItemTaggedEvent::TaggingFlow taggingFlow)
{
  v3 = *taggingFlow;
  retstr->name._countAndFlagsBits = 0xD00000000000002ELL;
  retstr->name._object = 0x8000000249BCBFF0;
  retstr->bundleID = bundleID;
  retstr->taggingFlow = v3;
}

uint64_t DOCAnalyticsItemTaggedEvent.name.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t (*DOCAnalyticsItemTaggedEvent.propertiesBuilder.getter())()
{
  v1 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v1;
  v7 = *(v0 + 32);
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  outlined init with copy of DOCAnalyticsItemTaggedEvent(v6, v5);
  return partial apply for implicit closure #2 in implicit closure #1 in DOCAnalyticsItemTaggedEvent.propertiesBuilder.getter;
}

unint64_t implicit closure #2 in implicit closure #1 in DOCAnalyticsItemTaggedEvent.propertiesBuilder.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  strcpy((inited + 32), "tagging_flow");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, NSObject)(inited + 32);
  return v1;
}

uint64_t DOCAnalyticsItemTaggedEvent.bundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DOCAnalyticsItemTaggedEvent.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*protocol witness for DOCAnalyticsEventProtocol.propertiesBuilder.getter in conformance DOCAnalyticsItemTaggedEvent())()
{
  v1 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v1;
  v7 = *(v0 + 32);
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  outlined init with copy of DOCAnalyticsItemTaggedEvent(v6, v5);
  return implicit closure #2 in implicit closure #1 in DOCAnalyticsItemTaggedEvent.propertiesBuilder.getterpartial apply;
}

DocumentManagerExecutables::DOCAnalyticsItemTaggedEvent::TaggingFlow_optional __swiftcall DOCAnalyticsItemTaggedEvent.TaggingFlow.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type DOCAnalyticsItemTaggedEvent.TaggingFlow and conformance DOCAnalyticsItemTaggedEvent.TaggingFlow()
{
  result = lazy protocol witness table cache variable for type DOCAnalyticsItemTaggedEvent.TaggingFlow and conformance DOCAnalyticsItemTaggedEvent.TaggingFlow;
  if (!lazy protocol witness table cache variable for type DOCAnalyticsItemTaggedEvent.TaggingFlow and conformance DOCAnalyticsItemTaggedEvent.TaggingFlow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAnalyticsItemTaggedEvent.TaggingFlow and conformance DOCAnalyticsItemTaggedEvent.TaggingFlow);
  }

  return result;
}

id DOCStackedThumbnailView.__allocating_init(topThumbnailSize:)(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *&v5[v6] = ImageCache.init()();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_nodes] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_urls] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_thumbnailImageViews] = MEMORY[0x277D84F90];
  v7 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_topThumbnailSize];
  *v7 = a1;
  v7[1] = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v8 setClipsToBounds_];
  return v8;
}

uint64_t AtomicGenerationCounter.__allocating_init(_:)(int a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AtomicGenerationCounter.load.getter()
{
  swift_beginAccess();
  add_explicit = atomic_fetch_add_explicit((v0 + 16), 0, memory_order_relaxed);
  swift_endAccess();
  return add_explicit;
}

Swift::Int32 __swiftcall AtomicGenerationCounter.increment(_:)(Swift::Int32 a1)
{
  swift_beginAccess();
  add_explicit = atomic_fetch_add_explicit((v1 + 16), a1, memory_order_relaxed);
  swift_endAccess();
  return add_explicit + a1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AtomicGenerationCounter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*(**a1 + 120))();
  return v3 == (*(*v2 + 120))();
}

void DOCThumbnailFittingImageView.addDecoration.didset()
{
  v1 = v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_addDecoration];
  v2 = [v0 layer];
  v3 = v2;
  if (v1 == 1)
  {
    [v2 setCornerCurve_];

    v4 = [v0 layer];
    v5 = objc_opt_self();
    v6 = [v0 traitCollection];
    [v5 separatorThicknessForTraitCollection_];
    v8 = v7;

    [v4 setBorderWidth_];
    v10 = [v0 layer];
    [v0 fittingSize];
    DOCScaledThumbnailCornerRadius();
    [v10 setCornerRadius_];
  }

  else
  {
    [v2 setCornerRadius_];

    v10 = [v0 layer];
    [v10 setBorderWidth_];
  }
}

id DOCThumbnailFittingImageView.init(size:node:imageCache:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_currentGeneration;
  type metadata accessor for AtomicGenerationCounter();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_addDecoration] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_nodeThumbnail] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_node] = a1;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_url;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_imageCache] = a2;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for DOCThumbnailFittingImageView();
  swift_unknownObjectRetain();

  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  DOCThumbnailFittingImageView.doc_commonInit(with:)();

  swift_unknownObjectRelease();

  return v9;
}

id DOCThumbnailFittingImageView.init(size:url:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_currentGeneration;
  type metadata accessor for AtomicGenerationCounter();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v1[v3] = v4;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_addDecoration] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_nodeThumbnail] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_node] = 0;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_url;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v1[v5], a1, v6);
  (*(v7 + 56))(&v1[v5], 0, 1, v6);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_imageCache] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for DOCThumbnailFittingImageView();
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  DOCThumbnailFittingImageView.doc_commonInit(with:)();

  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t DOCThumbnailFittingImageView.doc_commonInit(with:)()
{
  [v0 setFittingSize_];
  [v0 setAccessibilityIgnoresInvertColors_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249B9FA70;
  v2 = type metadata accessor for UITraitDisplayScale();
  v3 = MEMORY[0x277D74B68];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = type metadata accessor for UITraitUserInterfaceStyle();
  v5 = MEMORY[0x277D74BF0];
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  UIView.registerForHomeScreenTraitChanges(handler:)();
}

void closure #1 in DOCThumbnailFittingImageView.doc_commonInit(with:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0xE8))();
  }
}

void DOCThumbnailFittingImageView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_currentGeneration;
  type metadata accessor for AtomicGenerationCounter();
  v2 = swift_allocObject();
  *(v0 + v1) = v2;
  *(v2 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_addDecoration) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_nodeThumbnail) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t DOCThumbnailFittingImageView.thumbnailLoaded(_:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  swift_unknownObjectRetain();
  v4 = v1;
  DOCRunInMainThread(_:)();
}

void closure #1 in DOCThumbnailFittingImageView.thumbnailLoaded(_:)(void *a1, char *a2)
{
  v2 = *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_nodeThumbnail];
  if (v2)
  {
    v3 = v2 == a1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v6 = [a1 isRepresentativeIcon];
    v7 = [a1 thumbnail];
    [a2 setImage_];

    a2[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_addDecoration] = v6;
    DOCThumbnailFittingImageView.addDecoration.didset();
  }
}

Swift::Void __swiftcall DOCThumbnailFittingImageView.updateThumbnail()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 traitCollection];
  [v11 displayScale];
  v13 = v12;

  if (v13 > 0.0)
  {
    v14 = [v0 traitCollection];
    v15 = [v14 userInterfaceStyle];

    if (v15)
    {
      if (*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_node])
      {
        swift_unknownObjectRetain();
        DOCThumbnailFittingImageView.updateThumbnail(for:)();

        swift_unknownObjectRelease();
      }

      else
      {
        outlined init with copy of DOCGridLayout.Spec?(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_url], v4, &_s10Foundation3URLVSgMd);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          outlined destroy of CharacterSet?(v4, &_s10Foundation3URLVSgMd);
        }

        else
        {
          (*(v6 + 32))(v10, v4, v5);
          DOCThumbnailFittingImageView.updateThumbnail(for:)(v10);
          (*(v6 + 8))(v10, v5);
        }
      }
    }
  }
}

void DOCThumbnailFittingImageView.updateThumbnail(for:)()
{
  v1 = v0;
  v2 = type metadata accessor for ImageOptions();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24 - v10;
  if (*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_imageCache])
  {

    v12 = [v0 traitCollection];
    UITraitCollection._ifColorForIconFolderTintComponents.getter();

    [v1 fittingSize];
    v13 = [v1 traitCollection];
    [v13 displayScale];

    outlined init with copy of DOCGridLayout.Spec?(v11, v7, &_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd);
    ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
    v14 = objc_allocWithZone(type metadata accessor for NodeThumbnail());

    swift_unknownObjectRetain();
    v15 = NodeThumbnail.init(node:imageOptions:imageCache:)();
    v16 = v15;
    v17 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_nodeThumbnail;
    v18 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_nodeThumbnail];
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_nodeThumbnail] = v15;
    if (v18)
    {
      if (v15 == v18)
      {
LABEL_7:

        outlined destroy of CharacterSet?(v11, &_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd);
        return;
      }

      v19 = v15;
      v20 = v18;
      NodeThumbnail.removeListener(_:)();

      v21 = *&v1[v17];
      v22 = v16;
      if (!v21)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    else
    {
      v23 = v15;
      v21 = v16;
      v22 = v16;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    v22 = v21;
    NodeThumbnail.addListener(_:)();

    goto LABEL_6;
  }
}

uint64_t DOCThumbnailFittingImageView.updateThumbnail(for:)(uint64_t a1)
{
  v72 = a1;
  v2 = type metadata accessor for DispatchQoS();
  v93 = *(v2 - 8);
  v94 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v92 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for DispatchTimeInterval();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v5);
  v85 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = type metadata accessor for DispatchTime();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v7);
  v83 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v84 = &v70 - v11;
  v95 = type metadata accessor for URL();
  v12 = *(v95 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v95, v14);
  v75 = v13;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v15 - 8);
  v90 = v15;
  v91 = v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v1;
  v20 = *(**&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_currentGeneration] + 128);

  v21 = v20(1);
  LODWORD(v81) = v21;

  v82 = v19;
  static DispatchWorkItemFlags.inheritQoS.getter();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = *(v12 + 16);
  v77 = v12 + 16;
  v78 = v23;
  v24 = v72;
  v25 = v95;
  v23(&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v72, v95);
  v74 = *(v12 + 80);
  v26 = (v74 + 28) & ~v74;
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  *(v27 + 24) = v21;
  v28 = *(v12 + 32);
  v79 = v12 + 32;
  v80 = v28;
  v29 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28(v27 + v26, v29, v25);
  v101 = partial apply for closure #1 in DOCThumbnailFittingImageView.updateThumbnail(for:);
  v102 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v76 = &v99;
  v99 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v100 = &block_descriptor_124;
  _Block_copy(&aBlock);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();

  v30 = DispatchWorkItem.init(flags:block:)();

  v73 = URL.startAccessingSecurityScopedResource()();
  v31 = objc_opt_self();
  v32 = [v31 disableIconThumbnails];
  LODWORD(v25) = [v32 isEnabled];

  if (v25)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

  v96 = [objc_opt_self() sharedGenerator];
  v34 = v71;
  [v71 fittingSize];
  v36 = v35;
  v38 = v37;
  v39 = [v34 traitCollection];
  [v39 displayScale];
  v41 = v40;

  v42 = objc_allocWithZone(MEMORY[0x277CDAAD8]);
  v43 = v24;
  URL._bridgeToObjectiveC()(v44);
  v46 = v45;
  v47 = [v42 initWithFileAtURL:v45 size:v33 scale:v36 representationTypes:{v38, v41}];

  [v47 setBadgeType_];
  v48 = [v31 useBlastDoorThumbnails];
  v49 = [v48 isEnabled];

  v50 = v47;
  v70 = v47;
  [v47 setShouldUseRestrictedExtension_];
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = v95;
  v78(v29, v43, v95);
  v53 = (v74 + 25) & ~v74;
  v54 = (v75 + v53 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v55 = swift_allocObject();
  *(v55 + 16) = v51;
  *(v55 + 24) = v73;
  v80(v55 + v53, v29, v52);
  *(v55 + v54) = v81;
  *(v55 + ((v54 + 11) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v101 = partial apply for closure #2 in DOCThumbnailFittingImageView.updateThumbnail(for:);
  v102 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v99 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v100 = &block_descriptor_50_4;
  v56 = _Block_copy(&aBlock);
  v57 = v30;

  [v96 generateBestRepresentationForRequest:v50 completionHandler:v56];
  _Block_release(v56);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v81 = static OS_dispatch_queue.main.getter();
  v58 = v83;
  static DispatchTime.now()();
  v59 = v85;
  *v85 = 100;
  v60 = v87;
  v61 = v89;
  (*(v87 + 104))(v59, *MEMORY[0x277D85178], v89);
  v62 = v84;
  MEMORY[0x24C1FAA90](v58, v59);
  (*(v60 + 8))(v59, v61);
  v95 = *(v86 + 8);
  v63 = v88;
  (v95)(v58, v88);
  v101 = partial apply for closure #3 in DOCThumbnailFittingImageView.updateThumbnail(for:);
  v102 = v57;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v99 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v100 = &block_descriptor_53_2;
  v64 = _Block_copy(&aBlock);

  v65 = v92;
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v66 = v82;
  v67 = v90;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v68 = v81;
  MEMORY[0x24C1FB940](v62, v65, v66, v64);
  _Block_release(v64);

  (*(v91 + 8))(v66, v67);
  (*(v93 + 8))(v65, v94);
  return (v95)(v62, v63);
}

void closure #1 in DOCThumbnailFittingImageView.updateThumbnail(for:)(uint64_t a1, int a2, uint64_t a3)
{
  v5 = type metadata accessor for URLResourceValues();
  v57 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v51 - v11;
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v58 = &v51 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v55 = v14;
    v56 = v13;
    v23 = *(**(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_currentGeneration) + 120);
    v24 = a3;

    LODWORD(v23) = v23(v25);

    if (v23 == a2)
    {
      v26 = v22;
      v27 = [v26 traitCollection];
      v28 = [v27 userInterfaceStyle];

      v52 = v28 != 2;
      v54 = URL.startAccessingSecurityScopedResource()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9A480;
      v30 = *MEMORY[0x277CBE7B8];
      *(inited + 32) = *MEMORY[0x277CBE7B8];
      v31 = v30;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of NSURLResourceKey(inited + 32);
      v53 = v24;
      URL.promisedItemResourceValues(forKeys:)();

      URLResourceValues.contentType.getter();
      (*(v57 + 8))(v8, v5);
      v33 = v55;
      v32 = v56;
      if ((*(v55 + 48))(v12, 1, v56) != 1)
      {
        (*(v33 + 32))(v58, v12, v32);
        v35 = v26;
        [v35 fittingSize];
        v37 = v36;
        v39 = v38;
        v40 = [v35 traitCollection];

        [v40 displayScale];
        v42 = v41;

        static UTType.folder.getter();
        LOBYTE(v40) = static UTType.== infix(_:_:)();
        v43 = *(v33 + 8);
        v43(v17, v32);
        v44 = objc_allocWithZone(MEMORY[0x277D063C0]);
        v45 = [v44 initWithSize:v52 scale:1 style:0 isFolded:v40 & 1 isInteractive:v37 isFolder:{v39, v42}];
        v46 = [objc_opt_self() sharedGenerator];
        URL._bridgeToObjectiveC()(v47);
        v49 = v48;
        v50 = [v46 iconForURL:v48 descriptor:v45];

        [v35 setThumbnail_];
        swift_unknownObjectRelease();
        v43(v58, v32);
        if (!v54)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v34 = v54;
      outlined destroy of CharacterSet?(v12, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
      if (v34)
      {
LABEL_5:
        URL.stopAccessingSecurityScopedResource()();
      }
    }

LABEL_6:
  }
}

void closure #2 in DOCThumbnailFittingImageView.updateThumbnail(for:)(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7)
{
  v36 = a6;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = *(v13 + 16);
    v34 = v12;
    v18(&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v12);
    v19 = *(v13 + 80);
    v35 = a7;
    v20 = (v19 + 17) & ~v19;
    v32 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = a2;
    v21 = (v32 + 11) & 0xFFFFFFFFFFFFFFF8;
    v31 = a1;
    v22 = (v21 + 11) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = a4 & 1;
    (*(v13 + 32))(v24 + v20, &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
    v25 = v31;
    *(v24 + v32) = v17;
    *(v24 + v21) = v36;
    *(v24 + v22) = v25;
    *(v24 + v23) = v35;
    v26 = v33;
    *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
    v27 = v17;
    v28 = v25;

    v29 = v26;
    DOCRunInMainThread(_:)();
  }

  else if (a4)
  {
    URL.stopAccessingSecurityScopedResource()();
  }
}

void closure #1 in closure #2 in DOCThumbnailFittingImageView.updateThumbnail(for:)(char a1, uint64_t a2, char *a3, int a4, void *a5, uint64_t a6, void *a7)
{
  v12 = *(**&a3[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_currentGeneration] + 120);

  LODWORD(v12) = v12(v13);

  if (v12 != a4)
  {
LABEL_4:
    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  if (a5)
  {
    v14 = a5;
    dispatch thunk of DispatchWorkItem.cancel()();
    v15 = [v14 UIImage];
    [a3 setThumbnail_];
    [a3 setImage_];
    v16 = [v14 type] != 0;
    a3[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_addDecoration] = v16;
    DOCThumbnailFittingImageView.addDecoration.didset();

    goto LABEL_4;
  }

  static os_log_type_t.error.getter();
  v17 = DOCUILogHandle();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_249BA08C0;
  v19 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  v20 = lazy protocol witness table accessor for type String and conformance String();
  *(v18 + 64) = v20;
  *(v18 + 32) = 0xD000000000000015;
  *(v18 + 40) = 0x8000000249BF28F0;
  type metadata accessor for URL();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  *(v18 + 72) = v21;
  *(v18 + 80) = v22;
  v23 = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
  v24 = String.init<A>(describing:)();
  *(v18 + 136) = v19;
  *(v18 + 144) = v20;
  *(v18 + 112) = v24;
  *(v18 + 120) = v25;
  os_log(_:dso:log:_:_:)();

  if ((a1 & 1) == 0)
  {
    return;
  }

LABEL_5:
  URL.stopAccessingSecurityScopedResource()();
}

Swift::Void __swiftcall DOCThumbnailFittingImageView.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCThumbnailFittingImageView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_addDecoration) == 1)
  {
    v1 = [v0 layer];
    [v0 fittingSize];
    DOCScaledThumbnailCornerRadius();
    [v1 setCornerRadius_];

    v2 = [v0 layer];
    v3 = [objc_opt_self() separatorColor];
    v4 = [v3 CGColor];

    [v2 setBorderColor_];
  }
}

id DOCThumbnailFittingImageView.__allocating_init(image:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage_];

  return v3;
}

id DOCThumbnailFittingImageView.__allocating_init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

uint64_t DOCStackedThumbnailView.nodes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_nodes;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v5 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x78))(v4);
  if (result)
  {
    v7 = result;
    v10.width = (*((*v5 & *v1) + 0xA8))();
    v11.width = 0.0;
    v11.height = 0.0;
    if (!CGSizeEqualToSize(v10, v11))
    {
      if (v7 >> 62)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v1;

      specialized DOCStackedThumbnailView.createThumbnailViews(count:createBlock:)(v8, v9, v9, v7);
    }
  }

  return result;
}

uint64_t (*DOCStackedThumbnailView.nodes.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCStackedThumbnailView.nodes.modify;
}

uint64_t DOCStackedThumbnailView.nodes.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = MEMORY[0x277D85000];
    result = (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x78))(result);
    if (result)
    {
      v6 = result;
      v10.width = (*((*v5 & **(a1 + 24)) + 0xA8))();
      v11.width = 0.0;
      v11.height = 0.0;
      if (!CGSizeEqualToSize(v10, v11))
      {
        if (v6 >> 62)
        {
          v7 = __CocoaSet.count.getter();
        }

        else
        {
          v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v8 = *(a1 + 24);

        specialized DOCStackedThumbnailView.createThumbnailViews(count:createBlock:)(v7, v8, v8, v6);
      }
    }
  }

  return result;
}

uint64_t DOCStackedThumbnailView.urls.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_urls;
  swift_beginAccess();
  *&v1[v3] = a1;

  v5 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x90))(v4);
  if (result)
  {
    v7 = result;
    if (*(result + 16))
    {
      v8 = *((*v5 & *v1) + 0xA8);
      v13.width = v8();
      v14.width = 0.0;
      v14.height = 0.0;
      if (!CGSizeEqualToSize(v13, v14))
      {
        v9 = v8();
        v11 = v10;
        v12 = *(v7 + 16);

        specialized DOCStackedThumbnailView.createThumbnailViews(count:createBlock:)(v12, v1, v7, v9, v11);
      }
    }
  }

  return result;
}

uint64_t (*DOCStackedThumbnailView.urls.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCStackedThumbnailView.urls.modify;
}

uint64_t DOCStackedThumbnailView.urls.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = MEMORY[0x277D85000];
    result = (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x90))(result);
    if (result)
    {
      v6 = result;
      if (*(result + 16))
      {
        v7 = *((*v5 & **(a1 + 24)) + 0xA8);
        v14.width = v7();
        v15.width = 0.0;
        v15.height = 0.0;
        if (!CGSizeEqualToSize(v14, v15))
        {
          v8 = *(a1 + 24);
          v9 = v7();
          v11 = v10;
          v12 = *(v6 + 16);

          specialized DOCStackedThumbnailView.createThumbnailViews(count:createBlock:)(v12, v8, v6, v9, v11);
        }
      }
    }
  }

  return result;
}

double DOCStackedThumbnailView.topThumbnailSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_topThumbnailSize;
  swift_beginAccess();
  return *v1;
}

uint64_t DOCStackedThumbnailView.topThumbnailSize.setter(CGFloat a1, CGFloat a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_topThumbnailSize);
  swift_beginAccess();
  v14 = *v5;
  v5->width = a1;
  v5->height = a2;
  v12.width = a1;
  v12.height = a2;
  result = CGSizeEqualToSize(v12, v14);
  if ((result & 1) == 0)
  {
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x78))();
    if (v8)
    {
      v9 = v8;
      v13.width = (*((*v7 & *v2) + 0xA8))();
      v15.width = 0.0;
      v15.height = 0.0;
      if (!CGSizeEqualToSize(v13, v15))
      {
        if (v9 >> 62)
        {
          v10 = __CocoaSet.count.getter();
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v11 = v2;

        specialized DOCStackedThumbnailView.createThumbnailViews(count:createBlock:)(v10, v11, v11, v9);
      }
    }

    return DOCStackedThumbnailView.updateURLs()();
  }

  return result;
}

void (*DOCStackedThumbnailView.topThumbnailSize.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_topThumbnailSize;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCStackedThumbnailView.topThumbnailSize.modify;
}

void DOCStackedThumbnailView.topThumbnailSize.modify(id **a1)
{
  v1 = *a1;
  v9 = *(*a1 + 3);
  v2 = ((*a1)[6] + (*a1)[5]);
  v11 = *v2;
  *v2 = v9;
  if (!CGSizeEqualToSize(v9, v11))
  {
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *v1[5]) + 0x78))();
    if (v4)
    {
      v5 = v4;
      v10.width = (*((*v3 & *v1[5]) + 0xA8))();
      v12.width = 0.0;
      v12.height = 0.0;
      if (!CGSizeEqualToSize(v10, v12))
      {
        if (v5 >> 62)
        {
          v6 = __CocoaSet.count.getter();
        }

        else
        {
          v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v7 = v1[5];

        specialized DOCStackedThumbnailView.createThumbnailViews(count:createBlock:)(v6, v7, v7, v5);
      }
    }

    DOCStackedThumbnailView.updateURLs()();
  }

  free(v1);
}

id DOCStackedThumbnailView.init(topThumbnailSize:)(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *&v2[v5] = ImageCache.init()();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_nodes] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_urls] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_thumbnailImageViews] = MEMORY[0x277D84F90];
  v6 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_topThumbnailSize];
  *v6 = a1;
  v6[1] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for DOCStackedThumbnailView();
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 setClipsToBounds_];
  return v7;
}

uint64_t type metadata accessor for DOCThumbnailFittingImageView()
{
  result = type metadata singleton initialization cache for DOCThumbnailFittingImageView;
  if (!type metadata singleton initialization cache for DOCThumbnailFittingImageView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DOCStackedThumbnailView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCStackedThumbnailView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *(v0 + v1) = ImageCache.init()();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_nodes) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_urls) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_thumbnailImageViews) = MEMORY[0x277D84F90];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t DOCStackedThumbnailView.updateURLs()()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
  if (result)
  {
    v3 = result;
    if (*(result + 16))
    {
      v4 = *((*v1 & *v0) + 0xA8);
      v10.width = v4();
      v11.width = 0.0;
      v11.height = 0.0;
      if (!CGSizeEqualToSize(v10, v11))
      {
        v5 = v4();
        v7 = v6;
        v8 = *(v3 + 16);

        specialized DOCStackedThumbnailView.createThumbnailViews(count:createBlock:)(v8, v0, v3, v5, v7);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall DOCStackedThumbnailView.layoutSubviews()()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for DOCStackedThumbnailView();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_thumbnailImageViews;
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_thumbnailImageViews);
  if (v1 >> 62)
  {
    goto LABEL_23;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v3, v1);
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v1 + 8 * v3 + 32);
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v2 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      v8 = v6;
      [v8 intrinsicContentSize];
      v10 = v9;
      v12 = v11;
      [v0 frame];
      Width = CGRectGetWidth(v28);
      v29.origin.x = 0.0;
      v29.origin.y = 0.0;
      v29.size.width = v10;
      v29.size.height = v12;
      v14 = (Width - CGRectGetWidth(v29)) * 0.5;
      if (v3)
      {
        v15 = *(v0 + v24);
        if ((v15 & 0xC000000000000001) != 0)
        {

          v16 = MEMORY[0x24C1FC540](v3 - 1, v15);
        }

        else
        {
          if (v3 - 1 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v16 = *(v15 + 8 * v3 + 24);
        }

        v17 = v8;
        v18 = v16;
        v19 = [v18 frame];
        v21 = v20 + -4.0;
        (*((*MEMORY[0x277D85000] & *v0) + 0xA8))(v19);
        [v17 setFittingSize_];

        [v18 frame];
        v23 = v22;

        v5 = v23 + -2.0;
      }

      else
      {
        [v0 frame];
        Height = CGRectGetHeight(v26);
        v27.origin.y = 0.0;
        v27.origin.x = v14;
        v27.size.width = v10;
        v27.size.height = v12;
        v5 = Height - CGRectGetHeight(v27);
      }

      [v8 setFrame_];

      ++v3;
    }

    while (v7 != v2);
  }
}

double DOCStackedThumbnailView.intrinsicContentSize.getter()
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_thumbnailImageViews);
  if (v2 >> 62)
  {
    v3 = 0.0;
    if (!__CocoaSet.count.getter())
    {
      return v3;
    }

LABEL_3:
    if ((v2 & 0xC000000000000001) != 0)
    {

      v0 = MEMORY[0x24C1FC540](0, v2);
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }

      v0 = *(v2 + 32);
    }

    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x78))();
    if (!v5)
    {
      v7 = (*((*v4 & *v1) + 0x90))();
      if (!v7)
      {
        goto LABEL_13;
      }

      v6 = *(v7 + 16);
LABEL_11:

      if (v6 > 0)
      {
        [v0 intrinsicContentSize];
        v3 = v8;

        return v3;
      }

LABEL_13:

      return v3;
    }

    if (!(v5 >> 62))
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

LABEL_19:
    v6 = __CocoaSet.count.getter();
    goto LABEL_11;
  }

  v3 = 0.0;
  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  return v3;
}

id DOCThumbnailFittingImageView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void specialized DOCStackedThumbnailView.createThumbnailViews(count:createBlock:)(uint64_t a1, char *a2, unint64_t a3, double a4, double a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 2;
  if (a1 < 2)
  {
    v16 = a1;
  }

  v44 = v16;
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_thumbnailImageViews;
  v17 = *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_thumbnailImageViews];
  if (v17 >> 62)
  {
    goto LABEL_31;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = a2;
  if (!v18)
  {
LABEL_12:
    while ((a1 & 0x8000000000000000) == 0)
    {
      v17 = MEMORY[0x277D84F90];
      if (!a1)
      {
LABEL_18:
        if (!(v17 >> 62))
        {
          a1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!a1)
          {
            goto LABEL_35;
          }

LABEL_20:
          v10 = 0;
          a3 = v17 & 0xC000000000000001;
          v15 = (v17 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if (a3)
            {
              v33 = MEMORY[0x24C1FC540](v10, v17, v13);
            }

            else
            {
              if (v10 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v33 = *(v17 + 8 * v10 + 32);
            }

            v11 = v33;
            v34 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_29;
            }

            [a2 insertSubview:v33 atIndex:0];

            ++v10;
            if (v34 == a1)
            {
              goto LABEL_35;
            }
          }
        }

LABEL_34:
        a1 = __CocoaSet.count.getter();
        if (!a1)
        {
LABEL_35:
          *&a2[v35] = v17;

          [a2 setNeedsLayout];
          [a2 invalidateIntrinsicContentSize];
          return;
        }

        goto LABEL_20;
      }

      v46 = MEMORY[0x277D84F90];
      a1 = &v46;
      specialized ContiguousArray.reserveCapacity(_:)();
      v42 = a3 + ((v11[80] + 32) & ~v11[80]);
      v41 = type metadata accessor for UITraitDisplayScale();
      v22 = type metadata accessor for UITraitUserInterfaceStyle();
      v23 = 0;
      v43 = *(a3 + 16);
      v39 = v11 + 56;
      v40 = v22;
      v38 = v11 + 8;
      a2 = &unk_285CA8908;
      v37 = xmmword_249B9FA70;
      while (v43 != v23)
      {
        v17 = v23 + 1;
        v24 = *(v11 + 2);
        v24(v15, v42 + *(v11 + 9) * v23, v10);
        v25 = type metadata accessor for DOCThumbnailFittingImageView();
        v26 = objc_allocWithZone(v25);
        v27 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_currentGeneration;
        type metadata accessor for AtomicGenerationCounter();
        v28 = swift_allocObject();
        *(v28 + 16) = 0;
        *&v26[v27] = v28;
        v26[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_addDecoration] = 0;
        *&v26[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_nodeThumbnail] = 0;
        *&v26[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_node] = 0;
        v29 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_url;
        v24(&v26[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_url], v15, v10);
        (*(v11 + 7))(&v26[v29], 0, 1, v10);
        *&v26[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_imageCache] = 0;
        v45.receiver = v26;
        v45.super_class = v25;
        v30 = objc_msgSendSuper2(&v45, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        [v30 setFittingSize_];
        [v30 setAccessibilityIgnoresInvertColors_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
        v31 = swift_allocObject();
        *(v31 + 16) = v37;
        *(v31 + 32) = v41;
        v32 = v40;
        *(v31 + 40) = MEMORY[0x277D74B68];
        *(v31 + 48) = v32;
        *(v31 + 56) = MEMORY[0x277D74BF0];
        swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
        UIView.registerForTraitChanges<A>(_:handler:)();
        swift_unknownObjectRelease();

        swift_allocObject();
        swift_unknownObjectWeakInit();

        UIView.registerForHomeScreenTraitChanges(handler:)();

        (*(v11 + 1))(v15, v10);
        [v30 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];
        a1 = &v46;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a3 = *(v46 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v23 = v17;
        if (v44 == v17)
        {
          v17 = v46;
          a2 = v36;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v18 = __CocoaSet.count.getter();
      v36 = a2;
      if (v18)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_5:
  if (v18 >= 1)
  {
    v43 = a3;

    for (i = 0; i != v18; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C1FC540](i, v17);
      }

      else
      {
        v20 = *(v17 + 8 * i + 32);
      }

      v21 = v20;
      [v20 removeFromSuperview];
    }

    a2 = v36;
    a3 = v43;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t specialized DOCStackedThumbnailView.createThumbnailViews(count:createBlock:)(uint64_t result, char *a2, void *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = 2;
  if (result < 2)
  {
    v7 = result;
  }

  v38 = v7;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_thumbnailImageViews;
  v9 = *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_thumbnailImageViews];
  if (v9 >> 62)
  {
    goto LABEL_34;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    do
    {
LABEL_12:
      if (v6 < 0)
      {
        __break(1u);
      }

      else
      {
        v9 = MEMORY[0x277D84F90];
        if (v6)
        {
          v34 = v8;
          v35 = v5;
          v41 = MEMORY[0x277D84F90];
          specialized ContiguousArray.reserveCapacity(_:)();
          v14 = *((*MEMORY[0x277D85000] & *a3) + 0xA8);
          v9 = a4;
          v37 = type metadata accessor for UITraitDisplayScale();
          v36 = type metadata accessor for UITraitUserInterfaceStyle();
          v15 = 0;
          v5 = *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_imageCache);
          v8 = &unk_285CA8908;
          do
          {
            v6 = a3;
            v28 = v14();
            v14();
            v30 = v29;
            if ((a4 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x24C1FC540](v15, a4);
            }

            else
            {
              if (v15 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v16 = *(a4 + 8 * v15 + 32);
              swift_unknownObjectRetain();
            }

            v17 = v15 * 4.0;
            v18 = v28 - v17;
            v19 = v30 - v17;
            ++v15;
            v20 = type metadata accessor for DOCThumbnailFittingImageView();
            v21 = objc_allocWithZone(v20);
            v22 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_currentGeneration;
            type metadata accessor for AtomicGenerationCounter();
            v23 = swift_allocObject();
            *(v23 + 16) = 0;
            *&v21[v22] = v23;
            v21[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_addDecoration] = 0;
            *&v21[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_nodeThumbnail] = 0;
            *&v21[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_node] = v16;
            v24 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_url;
            v25 = type metadata accessor for URL();
            (*(*(v25 - 8) + 56))(&v21[v24], 1, 1, v25);
            *&v21[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_imageCache] = v5;
            v40.receiver = v21;
            v40.super_class = v20;
            swift_retain_n();
            swift_unknownObjectRetain();
            v26 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
            [v26 setFittingSize_];
            [v26 setAccessibilityIgnoresInvertColors_];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_249B9FA70;
            *(v27 + 32) = v37;
            *(v27 + 40) = MEMORY[0x277D74B68];
            *(v27 + 48) = v36;
            *(v27 + 56) = MEMORY[0x277D74BF0];
            swift_allocObject();
            swift_unknownObjectWeakInit();
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
            UIView.registerForTraitChanges<A>(_:handler:)();
            swift_unknownObjectRelease();

            swift_allocObject();
            swift_unknownObjectWeakInit();

            UIView.registerForHomeScreenTraitChanges(handler:)();
            swift_unknownObjectRelease();

            v9 = v26;
            [v9 _setContinuousCornerRadius_];
            [v9 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v38 != v15);
          v9 = v41;
          v8 = v34;
          v5 = v35;
        }

        if (!(v9 >> 62))
        {
          v6 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v6)
          {
            goto LABEL_38;
          }

          goto LABEL_23;
        }
      }

      v6 = __CocoaSet.count.getter();
      if (!v6)
      {
LABEL_38:
        *&v8[v5] = v9;

        [v5 setNeedsLayout];
        return [v5 invalidateIntrinsicContentSize];
      }

LABEL_23:
      v31 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x24C1FC540](v31, v9);
        }

        else
        {
          if (v31 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v32 = *(v9 + 8 * v31 + 32);
        }

        a3 = v32;
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        [v5 insertSubview:v32 atIndex:0];

        ++v31;
        if (v33 == v6)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      result = __CocoaSet.count.getter();
      v10 = result;
    }

    while (!result);
  }

  if (v10 >= 1)
  {

    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](i, v9);
      }

      else
      {
        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      [v12 removeFromSuperview];
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void type metadata completion function for DOCThumbnailFittingImageView()
{
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t objectdestroyTm_13()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void partial apply for closure #1 in DOCThumbnailFittingImageView.updateThumbnail(for:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 28) & ~*(v1 + 80));

  closure #1 in DOCThumbnailFittingImageView.updateThumbnail(for:)(v2, v3, v4);
}

void partial apply for closure #2 in DOCThumbnailFittingImageView.updateThumbnail(for:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 25) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v7 + 11) & 0xFFFFFFFFFFFFFFF8));

  closure #2 in DOCThumbnailFittingImageView.updateThumbnail(for:)(a1, a2, v8, v9, v2 + v6, v10, v11);
}

void partial apply for closure #1 in closure #2 in DOCThumbnailFittingImageView.updateThumbnail(for:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + 16);
  v11 = *(v0 + v6);
  v12 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #2 in DOCThumbnailFittingImageView.updateThumbnail(for:)(v10, v0 + v2, v7, v8, v9, v11, v12);
}

uint64_t outlined destroy of NSURLResourceKey(uint64_t a1)
{
  type metadata accessor for NSURLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static FilesOnlyAssistantIntentsProvider.intents.getter(uint64_t a1)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015NavigateHistoryD0VGMd);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v5 = v25 - v4;
  v30 = type metadata accessor for _AssistantIntent.PhraseToken();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015NavigateHistoryD0V_GMd);
  MEMORY[0x28223BE20](v10, v11);
  lazy protocol witness table accessor for type NavigateHistoryIntent and conformance NavigateHistoryIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x20756F79206E6143;
  v12._object = 0xEB00000000206F67;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x20656874206E6920;
  v13._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v28 = *MEMORY[0x277CB9F50];
  v27 = *(v6 + 104);
  v14 = v30;
  v27(v9);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v15 = *(v6 + 8);
  v25[1] = v6 + 8;
  v26 = v15;
  v15(v9, v14);
  v16._countAndFlagsBits = 1886413088;
  v16._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = *(v33 + 8);
  v33 += 8;
  v25[0] = v17;
  v17(v5, v32);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x657461676976614ELL;
  v18._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 544106784;
  v19._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  (v27)(v9, v28, v14);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v26(v9, v14);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (v25[0])(v5, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015NavigateHistoryG0VGGGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249B9FA70;
  *(v22 + 32) = v31;
  *(v22 + 40) = v21;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t closure #3 in static FilesOnlyAssistantIntentsProvider.intents.getter(uint64_t a1)
{
  v29 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015NavigateHistoryD0VGMd);
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v1);
  v3 = v25 - v2;
  v32 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015NavigateHistoryD0V_GMd);
  MEMORY[0x28223BE20](v8, v9);
  lazy protocol witness table accessor for type NavigateHistoryIntent and conformance NavigateHistoryIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000249BF2A80;
  v10._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 544106784;
  v11._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v28 = *MEMORY[0x277CB9F50];
  v27 = *(v4 + 104);
  v12 = v32;
  v27(v7);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v13 = *(v4 + 8);
  v25[1] = v4 + 8;
  v26 = v13;
  v13(v7, v12);
  v14._countAndFlagsBits = 63;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = *(v33 + 8);
  v33 += 8;
  v25[0] = v15;
  v16 = v31;
  v15(v3, v31);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0xD00000000000001CLL;
  v17._object = 0x8000000249BF2AA0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x6E6F207369687420;
  v18._object = 0xED0000206E692065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v32;
  (v27)(v7, v28, v32);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v26(v7, v19);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (v25[0])(v3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015NavigateHistoryG0VGGGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249B9FA70;
  *(v22 + 32) = v30;
  *(v22 + 40) = v21;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t closure #2 in static FilesOnlyAssistantIntentsProvider.intents.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = type metadata accessor for _AssistantIntent.Value();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();

  a3(v9);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v10 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v5 + 8))(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249B9A480;
  *(v11 + 32) = v10;
  v12 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v12;
}

uint64_t closure #1 in closure #4 in static FilesOnlyAssistantIntentsProvider.intents.getter()
{
  return closure #1 in closure #4 in static FilesOnlyAssistantIntentsProvider.intents.getter();
}

{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_249B9FA70;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t closure #5 in static FilesOnlyAssistantIntentsProvider.intents.getter(uint64_t a1)
{
  v29 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015NavigateHistoryD0VGMd);
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v1);
  v3 = v25 - v2;
  v32 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015NavigateHistoryD0V_GMd);
  MEMORY[0x28223BE20](v8, v9);
  lazy protocol witness table accessor for type NavigateHistoryIntent and conformance NavigateHistoryIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000249BF2A40;
  v10._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x207265646C6F6620;
  v11._object = 0xEB00000000206E69;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v28 = *MEMORY[0x277CB9F50];
  v27 = *(v4 + 104);
  v12 = v32;
  v27(v7);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v13 = *(v4 + 8);
  v25[1] = v4 + 8;
  v26 = v13;
  v13(v7, v12);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = *(v33 + 8);
  v33 += 8;
  v25[0] = v15;
  v16 = v31;
  v15(v3, v31);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x6874206F74206F47;
  v17._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x207265646C6F6620;
  v18._object = 0xEB00000000206E69;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v32;
  (v27)(v7, v28, v32);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v26(v7, v19);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (v25[0])(v3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015NavigateHistoryG0VGGGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249B9FA70;
  *(v22 + 32) = v30;
  *(v22 + 40) = v21;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t closure #7 in static FilesOnlyAssistantIntentsProvider.intents.getter(uint64_t a1)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables017NavigateQuickLookD0VGMd);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v5 = v25 - v4;
  v30 = type metadata accessor for _AssistantIntent.PhraseToken();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables017NavigateQuickLookD0V_GMd);
  MEMORY[0x28223BE20](v10, v11);
  lazy protocol witness table accessor for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x657461676976614ELL;
  v12._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._object = 0x8000000249BF2A60;
  v13._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v28 = *MEMORY[0x277CB9F50];
  v27 = *(v6 + 104);
  v14 = v30;
  v27(v9);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v15 = *(v6 + 8);
  v25[1] = v6 + 8;
  v26 = v15;
  v15(v9, v14);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = *(v33 + 8);
  v33 += 8;
  v25[0] = v17;
  v17(v5, v32);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x657461676976614ELL;
  v18._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 544106784;
  v19._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  (v27)(v9, v28, v14);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v26(v9, v14);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (v25[0])(v5, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables017NavigateQuickLookG0VGGGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249B9FA70;
  *(v22 + 32) = v31;
  *(v22 + 40) = v21;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t closure #1 in closure #2 in static FilesOnlyAssistantIntentsProvider.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA08C0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t closure #9 in static FilesOnlyAssistantIntentsProvider.intents.getter(uint64_t a1)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables017NavigateQuickLookD0VGMd);
  v2 = *(v1 - 8);
  v41 = v1;
  v42 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v31 - v4;
  v6 = type metadata accessor for _AssistantIntent.PhraseToken();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables017NavigateQuickLookD0V_GMd);
  MEMORY[0x28223BE20](v11, v12);
  lazy protocol witness table accessor for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x8000000249BF2A40;
  v13._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v40 = lazy protocol witness table accessor for type NavigationDirection and conformance NavigationDirection();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x7765697665727020;
  v14._object = 0xEC000000206E6920;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v39 = *MEMORY[0x277CB9F50];
  v38 = *(v7 + 104);
  v34 = v6;
  v38(v10);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v15 = *(v7 + 8);
  v36 = v7 + 8;
  v37 = v15;
  v15(v10, v6);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = *(v42 + 8);
  v42 += 8;
  v35 = v17;
  v17(v5, v41);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x206F74206F47;
  v18._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x7765697665727020;
  v19._object = 0xEC000000206E6920;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v34;
  (v38)(v10, v39, v34);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v37(v10, v20);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35(v5, v41);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x20656D20776F6853;
  v22._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0x6E69206D65746920;
  v23._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  v24 = v34;
  (v38)(v10, v39, v34);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v37(v10, v24);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35(v5, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables017NavigateQuickLookG0VGGGMd);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_249BA08C0;
  v28 = v32;
  *(v27 + 32) = v33;
  *(v27 + 40) = v28;
  *(v27 + 48) = v26;
  v29 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v29;
}

uint64_t closure #11 in static FilesOnlyAssistantIntentsProvider.intents.getter(uint64_t a1)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables08OpenItemD0VGMd);
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v37 - v3;
  v40 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables08OpenItemD0V_GMd);
  MEMORY[0x28223BE20](v9, v10);
  lazy protocol witness table accessor for type OpenItemIntent and conformance OpenItemIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20796D206E65704FLL;
  v11._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v48 = lazy protocol witness table accessor for type StringSearchCriteria and conformance StringSearchCriteria(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x6E6920656C696620;
  v12._object = 0xED00002065687420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  LODWORD(v45) = *MEMORY[0x277CB9F50];
  v13 = *(v5 + 104);
  v43 = v5 + 104;
  v44 = v13;
  v14 = v40;
  v13(v8);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v15 = *(v5 + 8);
  v41 = v5 + 8;
  v42 = v15;
  v15(v8, v14);
  v16._countAndFlagsBits = 1886413088;
  v16._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = *(v49 + 8);
  v49 += 8;
  v47 = v17;
  v17(v4, v50);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0xD000000000000011;
  v18._object = 0x8000000249BF29E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0xD000000000000014;
  v19._object = 0x8000000249BF2A00;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v40;
  v44(v8, v45, v40);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v42(v8, v20);
  v21._countAndFlagsBits = 1886413088;
  v21._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v47(v4, v50);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x206E65704FLL;
  v22._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 544106784;
  v23._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  v44(v8, v45, v20);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v42(v8, v20);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25 = v50;
  v47(v4, v50);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0x206E65704FLL;
  v26._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._object = 0x8000000249BF2A20;
  v27._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28 = v47;
  v47(v4, v25);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x206E65704FLL;
  v29._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0x6D65746920;
  v30._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28(v4, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables08OpenItemG0VGGGMd);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_249BA54A0;
  v33 = v38;
  *(v32 + 32) = v39;
  *(v32 + 40) = v33;
  v34 = v44;
  *(v32 + 48) = v45;
  *(v32 + 56) = v34;
  *(v32 + 64) = v31;
  v35 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v35;
}

uint64_t closure #12 in static FilesOnlyAssistantIntentsProvider.intents.getter()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type StringSearchCriteria and conformance StringSearchCriteria(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);

  lazy protocol witness table accessor for type OpenItemIntent and conformance OpenItemIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249B9A480;
  *(v6 + 32) = v5;
  v7 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #1 in closure #12 in static FilesOnlyAssistantIntentsProvider.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249BB28B0;
  *(v8 + 32) = v0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = v6;
  *(v8 + 88) = v7;
  v9 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t closure #13 in static FilesOnlyAssistantIntentsProvider.intents.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015SearchInBrowserD0VGMd);
  v3 = *(v2 - 8);
  v64 = v2;
  v65 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v63 = &v50 - v5;
  v55 = type metadata accessor for _AssistantIntent.PhraseToken();
  v6 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015SearchInBrowserD0V_GMd);
  MEMORY[0x28223BE20](v10, v11);
  v12 = lazy protocol witness table accessor for type SearchInBrowserIntent and conformance SearchInBrowserIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x6620686372616553;
  v13._object = 0xEB0000000020726FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v56 = lazy protocol witness table accessor for type StringSearchCriteria and conformance StringSearchCriteria(&lazy protocol witness table cache variable for type StringSearchCriteria and conformance StringSearchCriteria, MEMORY[0x277CBA230]);
  v54 = a1;

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 544106784;
  v14._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v60 = *MEMORY[0x277CB9F50];
  v15 = v6;
  v57 = *(v6 + 104);
  v62 = v6 + 104;
  v16 = v55;
  v57(v9);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v59 = *(v15 + 8);
  v61 = v15 + 8;
  v59(v9, v16);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v63;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v53 = v12;
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19 = v64;
  v58 = *(v65 + 8);
  v65 += 8;
  v58(v18, v64);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x6620686372616553;
  v20._object = 0xEB0000000020726FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x20656874206E6920;
  v21._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v60;
  v23 = v16;
  v24 = v16;
  v25 = v57;
  (v57)(v9, v60, v24);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v26 = v59;
  v59(v9, v23);
  v27._countAndFlagsBits = 1886413088;
  v27._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  v28 = v63;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29 = v19;
  v30 = v58;
  v58(v28, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0x726F66206B6F6F4CLL;
  v31._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 544106784;
  v32._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  v33 = v22;
  v34 = v55;
  v25(v9, v33, v55);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v26(v9, v34);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  v36 = v63;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30(v36, v64);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._countAndFlagsBits = 0x207972657551;
  v37._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 0x20796D206E6920;
  v38._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  (v57)(v9, v60, v34);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v59(v9, v34);
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  v40 = v63;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v56 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v41 = v40;
  v58(v40, v64);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v42._countAndFlagsBits = 0x6920686372616553;
  v42._object = 0xEA0000000000206ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v42);
  (v57)(v9, v60, v34);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v59(v9, v34);
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v58(v41, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015SearchInBrowserG0VGGGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_249BA54A0;
  v46 = v51;
  *(v45 + 32) = v52;
  *(v45 + 40) = v46;
  v47 = v56;
  *(v45 + 48) = v50;
  *(v45 + 56) = v47;
  *(v45 + 64) = v44;
  v48 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v48;
}

uint64_t closure #14 in static FilesOnlyAssistantIntentsProvider.intents.getter()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type StringSearchCriteria and conformance StringSearchCriteria(&lazy protocol witness table cache variable for type StringSearchCriteria and conformance StringSearchCriteria, MEMORY[0x277CBA230]);

  lazy protocol witness table accessor for type SearchInBrowserIntent and conformance SearchInBrowserIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249B9A480;
  *(v6 + 32) = v5;
  v7 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #1 in closure #14 in static FilesOnlyAssistantIntentsProvider.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA08C0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t static FilesOnlyAssistantIntentsProvider.negativePhrases.getter()
{
  v0 = type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SearchInBrowserIntent and conformance SearchInBrowserIntent();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v5 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV08NegativefG7PhrasesVGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249B9A480;
  *(v6 + 32) = v5;
  v7 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v7;
}