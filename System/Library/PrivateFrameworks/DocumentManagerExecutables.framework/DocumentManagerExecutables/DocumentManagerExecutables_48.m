uint64_t fetchParentSync #1 () in DOCItemCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(void *a1)
{
  v1 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  v6 = UIDragItem.localObjectAsNode.getter();

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 fpfs_fpItem];
  swift_unknownObjectRelease();
  result = 0;
  if (v7)
  {
    v8 = dispatch_semaphore_create(0);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v14[4] = partial apply for closure #1 in closure #1 in static DOCFileProviderSource.createSource(from:with:);
    v14[5] = v10;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
    v14[3] = &block_descriptor_111;
    v11 = _Block_copy(v14);

    v12 = v8;

    [v7 fetchParent_];
    _Block_release(v11);
    OS_dispatch_semaphore.wait()();

    swift_beginAccess();
    v13 = *(v9 + 16);
    swift_unknownObjectRetain();

    return v13;
  }

  return result;
}

uint64_t DOCItemCollectionViewController.collectionView(_:dropSessionDidEnter:)(int a1, id a2)
{
  v3 = [a2 localDragSession];
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x8B0))(v3);
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    swift_unknownObjectRetain();
    v5 = v6;
  }

  return (*((*v4 & *v2) + 0x8C8))(v5);
}

uint64_t DOCItemCollectionViewController._collectionView(_:dataOwnerFor:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a3, &v13 - v6, &_s10Foundation9IndexPathVSgMd);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = specialized DOCItemCollectionViewController.nodeForDrag(session:at:)(v7);
    (*(v9 + 8))(v7, v8);
    if (!v11)
    {
      return 0;
    }

    swift_getObjectType();
    v12 = DOCNode.dataOwner.getter();
    swift_unknownObjectRelease();
    return v12;
  }

  return result;
}

void *DOCItemCollectionViewController._collectionView(_:dataOwnerFor:withDestinationIndexPath:)(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
    if (DOCItemCollectionViewController.dropTargetNode(at:collectionView:dropSession:)(a3, result, a2))
    {
      swift_getObjectType();
      v3 = DOCNode.dataOwner.getter();
      swift_unknownObjectRelease();
      return v3;
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_249B9A480;
      *(v4 + 56) = MEMORY[0x277D837D0];
      *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v4 + 32) = 0xD000000000000039;
      *(v4 + 40) = 0x8000000249BECB30;
      os_log(_:dso:log:type:_:)();

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    specialized closure #1 in _NativeSet.intersection(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v9);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    specialized closure #1 in _NativeSet.intersection(_:)((v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v11 = v10;
  }

  else
  {
    v13 = swift_slowAlloc();

    v11 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v13, v6, a2, a1);

    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  return v11;
}

void specialized closure #1 in _NativeSet.intersection(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_28:
    v59 = 0;
    v29 = 0;
    v30 = v5 + 56;
    v31 = 1 << *(v5 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(v5 + 56);
    v34 = (v31 + 63) >> 6;
    v35 = v4 + 56;
    v53 = v34;
    while (v33)
    {
      v36 = __clz(__rbit64(v33));
      v61 = (v33 - 1) & v33;
LABEL_40:
      v56 = v36 | (v29 << 6);
      v39 = *(*(v5 + 48) + 8 * v56);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v58 = v39;
      String.hash(into:)();
      v40 = Hasher._finalize()();

      v41 = -1 << *(a4 + 32);
      v42 = v40 & ~v41;
      if ((*(v35 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        v43 = ~v41;
        while (1)
        {
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;
          if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
          {

            goto LABEL_51;
          }

          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v49)
          {
            break;
          }

          v42 = (v42 + 1) & v43;
          if (((*(v35 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

LABEL_51:
        *(a1 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        v33 = v61;
        v28 = __OFADD__(v59++, 1);
        v5 = a3;
        v34 = v53;
        if (v28)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_32:

        v33 = v61;
        v5 = a3;
        v34 = v53;
      }
    }

    v37 = v29;
    while (1)
    {
      v29 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v29 >= v34)
      {
        goto LABEL_54;
      }

      v38 = *(v30 + 8 * v29);
      ++v37;
      if (v38)
      {
        v36 = __clz(__rbit64(v38));
        v61 = (v38 - 1) & v38;
        goto LABEL_40;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v59 = 0;
    v60 = a3 + 56;
    v51 = v11;
    v52 = a4 + 56;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v57 = (v10 - 1) & v10;
LABEL_14:
      v15 = *(*(v4 + 48) + 8 * (v12 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v55 = v15;
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v5 = a3;

      v17 = -1 << *(a3 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v60 + 8 * (v18 >> 6))) != 0)
      {
        v21 = ~v17;
        while (1)
        {
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;
          if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
          {

            goto LABEL_25;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            break;
          }

          v18 = (v18 + 1) & v21;
          v19 = v18 >> 6;
          v5 = a3;
          v20 = 1 << v18;
          if (((1 << v18) & *(v60 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

        v5 = a3;
LABEL_25:
        v7 = v52;
        a1[v19] |= v20;
        v10 = v57;
        v28 = __OFADD__(v59++, 1);
        v4 = a4;
        v11 = v51;
        if (v28)
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:

        v4 = a4;
        v11 = v51;
        v7 = v52;
        v10 = v57;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
LABEL_54:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v59, v5);
        return;
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v57 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void _sSo6FPItemC26DocumentManagerExecutablesE19performExternalDrop_9underItem15alertPresenting10completionySaySo06UIDragI0CG_So7DOCNode_pSo16UIViewControllerCySaySoAK_pGSgcSgtFZTf4nennn_nAB_Tt3g5(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v68 = a4;
  v77 = a3;
  v89 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = [a2 fpfs_fpItem];
  if (!v80)
  {
    aBlock = 0;
    v80 = [a2 syncFetchFPItem_];
    if (!v80)
    {
      v50 = aBlock;
      v51 = _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v18 = aBlock;
  }

  v62 = v17;
  v79 = swift_allocObject();
  *(v79 + 16) = MEMORY[0x277D84F90];
  v78 = dispatch_group_create();
  v67 = v7;
  v66 = v8;
  v65 = v12;
  v64 = v11;
  v63 = v13;
  if (!(a1 >> 62))
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_25:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v52 = static OS_dispatch_queue.main.getter();
    v53 = swift_allocObject();
    v54 = v68;
    v55 = v69;
    v53[2] = v68;
    v53[3] = v55;
    v53[4] = v79;
    v87 = partial apply for closure #2 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:);
    v88 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v84 = 1107296256;
    v85 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v86 = &block_descriptor_46_3;
    v56 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v54);

    v57 = v62;
    static DispatchQoS.unspecified.getter();
    v82 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v58 = v64;
    v59 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v60 = v78;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v56);

    (*(v66 + 8))(v58, v59);
    (*(v63 + 8))(v57, v65);

    return;
  }

LABEL_24:
  v19 = __CocoaSet.count.getter();
  if (!v19)
  {
    goto LABEL_25;
  }

LABEL_6:
  v20 = 0;
  v75 = a1 & 0xFFFFFFFFFFFFFF8;
  v76 = a1 & 0xC000000000000001;
  v74 = 0x8000000249BCBD70;
  v70 = &v85;
  v73 = xmmword_249B9FA70;
  v72 = a1;
  v71 = v19;
  while (1)
  {
    if (v76)
    {
      v22 = MEMORY[0x24C1FC540](v20, a1);
      v21 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v21 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      if (v20 >= *(v75 + 16))
      {
        goto LABEL_23;
      }

      v22 = *(a1 + 8 * v20 + 32);
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v24 = [v22 v21[370]];
    v25 = NSItemProvider.typeToRequest.getter();
    v27 = v26;

    if (!v27)
    {
      break;
    }

    v81 = v23;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v28 = swift_allocObject();
    *(v28 + 16) = v73;
    v29 = MEMORY[0x277D837D0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    v30 = lazy protocol witness table accessor for type String and conformance String();
    *(v28 + 32) = 0xD00000000000003CLL;
    *(v28 + 40) = v74;
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    *(v28 + 64) = v30;
    *(v28 + 72) = v25;
    *(v28 + 80) = v27;

    os_log(_:dso:log:type:_:)();

    v31 = v78;
    dispatch_group_enter(v78);
    v32 = [v22 v21[370]];
    v33 = MEMORY[0x24C1FAD20](v25, v27);
    v34 = swift_allocObject();
    v35 = v22;
    v36 = v77;
    v34[2] = v31;
    v34[3] = v36;
    v34[4] = v35;
    v34[5] = v25;
    v34[6] = v27;
    v38 = v79;
    v37 = v80;
    v34[7] = v80;
    v34[8] = v38;
    v87 = partial apply for closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:);
    v88 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v84 = 1107296256;
    v85 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ();
    v86 = &block_descriptor_40_2;
    v39 = _Block_copy(&aBlock);

    v40 = v31;
    v41 = v36;
    v42 = v35;
    v43 = v37;

    v44 = [v32 loadInPlaceFileRepresentationForTypeIdentifier:v33 completionHandler:v39];
    _Block_release(v39);

    ++v20;
    a1 = v72;
    if (v81 == v71)
    {
      goto LABEL_25;
    }
  }

  v45 = [v22 v21[370]];
  v46 = [v45 registeredTypeIdentifiers];

  v47 = MEMORY[0x277D837D0];
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v49 = swift_allocObject();
  *(v49 + 16) = v73;
  *(v49 + 56) = v47;
  *(v49 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v49 + 32) = 0xD00000000000003CLL;
  *(v49 + 40) = v74;
  *(v49 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  *(v49 + 104) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  *(v49 + 72) = v48;
  os_log(_:dso:log:type:_:)();
}

uint64_t specialized DOCItemCollectionViewController.nodeForDrag(session:at:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v62 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v62 - v18;
  v22.n128_f64[0] = MEMORY[0x28223BE20](v20, v21);
  v24 = &v62 - v23;
  v25 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x1898))(a1, v22))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.UI);
    (*(v8 + 16))(v11, a1, v7);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v27, v28))
    {

      (*(v8 + 8))(v11, v7);
      return 0;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v63 = v30;
    *v29 = 136315394;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000249BECC30, &v63);
    *(v29 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v8 + 8))(v11, v7);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v63);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_2493AC000, v27, v28, "%s Can't drag the create button. indexPath: %s", v29, 0x16u);
    swift_arrayDestroy();
    v35 = v30;
    goto LABEL_11;
  }

  (*((*v25 & *v1) + 0x18A0))(a1);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.UI);
    (*(v8 + 16))(v15, a1, v7);
    v27 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v27, v37))
    {

      (*(v8 + 8))(v15, v7);
      return 0;
    }

    v29 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v63 = v38;
    *v29 = 136315394;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000249BECC30, &v63);
    *(v29 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    (*(v8 + 8))(v15, v7);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v63);

    *(v29 + 14) = v42;
    _os_log_impl(&dword_2493AC000, v27, v37, "%s No item to drag at. indexPath: %s", v29, 0x16u);
    swift_arrayDestroy();
    v35 = v38;
LABEL_11:
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v29, -1, -1);

    return 0;
  }

  (*(v8 + 32))(v24, v6, v7);
  v43 = (*((*v25 & *v1) + 0xD88))(v24, 0);
  if (v43)
  {
    v44 = v43;
    swift_getObjectType();
    if (DOCNode.supportsDrag.getter())
    {
      (*(v8 + 8))(v24, v7);
      return v44;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.UI);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63 = v60;
      *v59 = 136315138;
      *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000249BECC30, &v63);
      _os_log_impl(&dword_2493AC000, v57, v58, "%s: Item cannot be dragged because it does not support drag", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x24C1FE850](v60, -1, -1);
      MEMORY[0x24C1FE850](v59, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v8 + 8))(v24, v7);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.UI);
    (*(v8 + 16))(v19, a1, v7);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = v62;
      *v49 = 136315394;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000249BECC30, &v63);
      *(v49 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v53 = *(v8 + 8);
      v53(v19, v7);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v63);

      *(v49 + 14) = v54;
      _os_log_impl(&dword_2493AC000, v47, v48, "%s Item cannot be resolved from indexPath: %s", v49, 0x16u);
      v55 = v62;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v55, -1, -1);
      MEMORY[0x24C1FE850](v49, -1, -1);

      v53(v24, v7);
    }

    else
    {

      v61 = *(v8 + 8);
      v61(v19, v7);
      v61(v24, v7);
    }
  }

  return 0;
}

unint64_t specialized DOCItemCollectionViewController.collectionView(_:itemsForBeginning:at:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.UI);
  (*(v7 + 16))(v10, a2, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = v2;
    v17 = v16;
    v32 = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BECD70, &v32);
    *(v15 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v32);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_2493AC000, v12, v13, "%s indexPath: %s", v15, 0x16u);
    swift_arrayDestroy();
    v22 = v17;
    v3 = v30;
    MEMORY[0x24C1FE850](v22, -1, -1);
    v23 = v15;
    a1 = v31;
    MEMORY[0x24C1FE850](v23, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  result = DOCItemCollectionViewController.itemsForDrag(session:at:)(a1, a2);
  if (result >> 62)
  {
    v27 = result;
    v28 = __CocoaSet.count.getter();
    result = v27;
    if (!v28)
    {
      return result;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  v25 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v25)
  {
    v26 = result;
    [a1 setLocalContext_];
    swift_unknownObjectRelease();
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized DOCItemCollectionViewController.collectionView(_:itemsForAddingTo:at:point:)(unint64_t a1, void *a2)
{
  v3 = v2;
  v42 = type metadata accessor for UTType();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v7);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);
    (*(v10 + 16))(v13, a2, v9);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v17 = os_log_type_enabled(v15, v16);
    v44 = a2;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v43 = v6;
      v19 = v18;
      v20 = swift_slowAlloc();
      v40 = v3;
      v21 = v20;
      *&v48 = v20;
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BECD20, &v48);
      *(v19 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v10 + 8))(v13, v9);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v48);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_2493AC000, v15, v16, "%s indexPath: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v21, -1, -1);
      v26 = v19;
      v6 = v43;
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    v27 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    swift_getObjectType();
    v40 = v27;
    v28 = specialized static FPItem.sessionContainsDOCNode(_:)(a1, v27);
    a2 = MEMORY[0x277D84F90];
    if ((v28 & 1) == 0)
    {
      return a2;
    }

    v29 = DOCItemCollectionViewController.itemsForDrag(session:at:)(a1, v44);
    v30 = v29;
    v50 = a2;
    if (v29 >> 62)
    {
      v3 = __CocoaSet.count.getter();
      if (!v3)
      {
LABEL_31:

        return a2;
      }
    }

    else
    {
      v3 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_31;
      }
    }

    a1 = 0;
    v43 = v30 & 0xFFFFFFFFFFFFFF8;
    v44 = v30 & 0xC000000000000001;
    v10 = v6 + 8;
    v9 = &_sypSgMR;
    v6 = MEMORY[0x277D84F70];
    while (1)
    {
      if (v44)
      {
        v31 = MEMORY[0x24C1FC540](a1, v30);
      }

      else
      {
        if (a1 >= *(v43 + 16))
        {
          goto LABEL_34;
        }

        v31 = *(v30 + 8 * a1 + 32);
      }

      v13 = v31;
      v32 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v33 = [v31 localObject];
      if (v33)
      {
        a2 = v33;
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0u;
        v47 = 0u;
      }

      v48 = v46;
      v49 = v47;
      outlined init with copy of DOCGridLayout.Spec?(&v48, &v46, &_sypSgMd);
      if (*(&v47 + 1))
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
        if (swift_dynamicCast())
        {
          outlined destroy of CharacterSet?(&v48, &_sypSgMd);
LABEL_25:
          a2 = v45;
          v34 = [v45 contentType];
          v35 = v41;
          static UTType._unconditionallyBridgeFromObjectiveC(_:)();

          v36 = UTType.identifier.getter();
          v38 = String.isFolderUTI.getter(v36, v37);
          swift_unknownObjectRelease();

          (*v10)(v35, v42);
          if (v38)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            a2 = v50[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          v9 = &_sypSgMR;
          v6 = MEMORY[0x277D84F70];
          goto LABEL_11;
        }
      }

      else
      {
        outlined destroy of CharacterSet?(&v46, &_sypSgMd);
      }

      v46 = v48;
      v47 = v49;
      if (*(&v49 + 1))
      {
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {

        outlined destroy of CharacterSet?(&v46, &_sypSgMd);
      }

LABEL_11:
      ++a1;
      if (v32 == v3)
      {
        a2 = v50;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }
}

id specialized DOCItemCollectionViewController.collectionView(_:dragPreviewParametersForItemAt:)(uint64_t a1)
{
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xBD8))())
  {
    return 0;
  }

  v4 = DOCItemCollectionViewController.previewParametersForItem(at:)(a1);
  v5 = [objc_allocWithZone(MEMORY[0x277D75480]) init];
  v6 = [v4 visiblePath];
  [v5 setVisiblePath_];

  v7 = [v4 backgroundColor];
  [v5 setBackgroundColor_];

  return v5;
}

uint64_t partial apply for closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(a1, v4, v5, v6, v7, v8);
}

uint64_t specialized DOCItemCollectionViewController.collectionView(_:canHandle:)(void *a1)
{
  v58 = type metadata accessor for UTType();
  v2 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DOCDragPasteboardType();
  v62 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v44 - v12;
  v14 = &selRef_initWithFrame_;
  v15 = [a1 items];
  v16 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
LABEL_44:
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v18)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_249B9A480;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v38 + 32) = 0xD00000000000001CLL;
    *(v38 + 40) = 0x8000000249BECCA0;
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  v19 = [a1 v14[98]];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    goto LABEL_47;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
LABEL_48:

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_249B9A480;
    *(v43 + 56) = MEMORY[0x277D837D0];
    *(v43 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v43 + 32) = 0xD00000000000001CLL;
    *(v43 + 40) = 0x8000000249BECCA0;
    os_log(_:dso:log:type:_:)();

    return 1;
  }

  while (1)
  {
    v22 = 0;
    a1 = (v20 & 0xC000000000000001);
    v23 = v20 & 0xFFFFFFFFFFFFFF8;
    v24 = v20 + 32;
    v56 = (v2 + 8);
    v57 = (v2 + 32);
    v52 = 0x8000000249BC5FD0;
    v53 = 0x8000000249BC6000;
    v50 = v20;
    v51 = 0x8000000249BC5FA0;
    v54 = "com.apple.icloud.applecorporate";
    v55 = "ntManager.FINode.File";
    v47 = v21;
    v48 = v16;
    v45 = v20 & 0xFFFFFFFFFFFFFF8;
    v46 = v20 & 0xC000000000000001;
    v44 = v20 + 32;
LABEL_7:
    if (a1)
    {
      break;
    }

    if (v22 < *(v23 + 16))
    {
      v25 = *(v24 + 8 * v22);
      goto LABEL_10;
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v21 = __CocoaSet.count.getter();
    if (!v21)
    {
      goto LABEL_48;
    }
  }

  v25 = MEMORY[0x24C1FC540](v22, v20);
LABEL_10:
  v61 = v25;
  v2 = v59;
  v26 = __OFADD__(v22, 1);
  v27 = v22 + 1;
  if (v26)
  {
    goto LABEL_46;
  }

  v49 = v27;
  if (one-time initialization token for DOCAcceptableDragPasteboardTypes != -1)
  {
    swift_once();
  }

  rawValue = DOCAcceptableDragPasteboardTypes._rawValue;
  v16 = *(DOCAcceptableDragPasteboardTypes._rawValue + 2);
  if (v16)
  {
    v14 = 0;
    v60 = DOCAcceptableDragPasteboardTypes._rawValue + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    while (1)
    {
      if (v14 >= rawValue[2])
      {
        __break(1u);
        goto LABEL_44;
      }

      outlined init with copy of DOCDragPasteboardType(&v60[*(v62 + 72) * v14], v13);
      v29 = [v61 itemProvider];
      outlined init with copy of DOCDragPasteboardType(v13, v8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          if (*v8)
          {
            v31 = 0xD000000000000029;
            v32 = *v8 == 1 ? v52 : v53;
          }

          else
          {
            v31 = 0xD000000000000025;
            v32 = v51;
          }
        }

        else
        {
          v34 = v58;
          (*v57)(v5, v8, v58);
          v31 = UTType.identifier.getter();
          v32 = v35;
          v36 = v34;
          v2 = v59;
          (*v56)(v5, v36);
        }
      }

      else
      {
        if (*v8)
        {
          v31 = 0xD000000000000029;
        }

        else
        {
          v31 = 0xD000000000000025;
        }

        v33 = v55;
        if (!*v8)
        {
          v33 = v54;
        }

        v32 = v33 | 0x8000000000000000;
      }

      a1 = MEMORY[0x24C1FAD20](v31, v32);

      v37 = [v29 hasRepresentationConformingToTypeIdentifier:a1 fileOptions:0];

      outlined destroy of FPAction(v13, type metadata accessor for DOCDragPasteboardType);
      if (v37)
      {
        break;
      }

      v14 = (v14 + 1);
      if (v16 == v14)
      {
        goto LABEL_39;
      }
    }

    a1 = v46;
    v22 = v49;
    v20 = v50;
    v24 = v44;
    v23 = v45;
    if (v49 != v47)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_39:

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_249B9FA70;
  *(v39 + 56) = MEMORY[0x277D837D0];
  *(v39 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v39 + 32) = 0xD00000000000001CLL;
  *(v39 + 40) = 0x8000000249BECCA0;
  *(v39 + 96) = v48;
  *(v39 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type UIDragItem and conformance NSObject, &lazy cache variable for type metadata for UIDragItem);
  v40 = v61;
  *(v39 + 72) = v61;
  v41 = v40;
  os_log(_:dso:log:type:_:)();

  return 0;
}

uint64_t specialized DOCItemCollectionViewController.collectionView(_:dropSessionDidExit:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  DOCItemCollectionViewController.updateDropTargetHighlightedCell(toIndexPath:)(v4);
  outlined destroy of CharacterSet?(v4, &_s10Foundation9IndexPathVSgMd);
  v7 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for DOCItemCollectionViewDropSessionDidExit != -1)
  {
    swift_once();
  }

  [v7 postNotificationName:static NSNotificationName.DOCItemCollectionViewDropSessionDidExit object:v0];

  v6(v4, 1, 1, v5);
  return (*((*MEMORY[0x277D85000] & *v0) + 0x988))(v4);
}

uint64_t outlined destroy of FPAction(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void specialized Sequence.first(where:)(uint64_t (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v20 = a3;
    v4 = a2 + 48;
    while (1)
    {
      v23 = v3;
      v5 = *(v4 - 8);
      v6 = *v4;
      v7 = *(v4 + 8);
      v8 = *(v4 + 16);
      v9 = *(v4 + 24);
      v10 = *(v4 + 32);
      v11 = *(v4 + 40);
      v25[0] = *(v4 - 16);
      v25[1] = v5;
      v21 = v5;
      v25[2] = v6;
      v25[3] = v7;
      v25[4] = v8;
      v25[5] = v9;
      v25[6] = v10;
      v26 = v11;
      v12 = v25[0];
      swift_unknownObjectRetain();
      v13 = v6;
      v24 = v7;
      v14 = v7;
      v15 = v8;
      outlined copy of DOCSidebarItem?(v6, v14, v8, v9, v10, v11);
      v16 = v27;
      v17 = a1(v25);
      if (v16)
      {
        swift_unknownObjectRelease();
        outlined consume of DOCSidebarItem?(v13, v24, v8, v9, v10, v11);
        return;
      }

      if (v17)
      {
        break;
      }

      v27 = 0;
      v4 += 64;
      swift_unknownObjectRelease();
      outlined consume of DOCSidebarItem?(v13, v24, v8, v9, v10, v11);
      v3 = v23 - 1;
      if (v23 == 1)
      {
        v12 = 0;
        v18 = 0;
        v13 = 0;
        v19 = 0;
        v15 = 0;
        v9 = 0;
        v10 = 0;
        a3 = v20;
        goto LABEL_10;
      }
    }

    a3 = v20;
    v18 = v21;
    LOBYTE(v3) = v11;
    v19 = v24;
  }

  else
  {
    v12 = 0;
    v18 = 0;
    v13 = 0;
    v19 = 0;
    v15 = 0;
    v9 = 0;
    v10 = 0;
  }

LABEL_10:
  *a3 = v12;
  *(a3 + 8) = v18;
  *(a3 + 16) = v13;
  *(a3 + 24) = v19;
  *(a3 + 32) = v15;
  *(a3 + 40) = v9;
  *(a3 + 48) = v10;
  *(a3 + 56) = v3;
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C1FC540](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            swift_unknownObjectRelease();
            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        swift_unknownObjectRelease();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DOCBrowserHistoryItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of DOCBrowserHistoryItem(v13, v11);
      v15 = a1(v11);
      if (v3)
      {
        return outlined destroy of DOCBrowserHistoryItem(v11);
      }

      if (v15)
      {
        break;
      }

      outlined destroy of DOCBrowserHistoryItem(v11);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    outlined init with take of DOCBrowserHistoryItem(v11, v19);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

void *specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      if (__OFSUB__(v6--, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v6 < *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(a3 + 32 + 8 * v6);
        goto LABEL_8;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      v6 = __CocoaSet.count.getter();
      if (!v6)
      {
        return 0;
      }
    }

    v8 = MEMORY[0x24C1FC540](v6, a3);
LABEL_8:
    v9 = v8;
    v12 = v8;
    v10 = a1(&v12);
    if (v3)
    {
      break;
    }

    if (v10)
    {
      return v9;
    }

    if (!v6)
    {
      return 0;
    }
  }

  return v9;
}

{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

{
  return sub_2493EE408(a1, a2, a3);
}

Swift::Void __swiftcall DOCSidebarViewController.updatePreferredFocusIndexPath()()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v64 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v6);
  v63 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v74 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v73 = &v58 - v13;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v58 - v17;
  v75 = v2;
  v60 = *(v2 + 56);
  v61 = v2 + 56;
  v60(&v58 - v17, 1, 1, v1, v16);
  v19 = MEMORY[0x277D85000];
  v20 = *MEMORY[0x277D85000] & *v0;
  v21 = *(v20 + 0x4A8);
  v59 = v18;
  v71 = v21;
  v72 = v20 + 1192;
  v22 = v21(v18);
  (*((*v19 & *v0) + 0x4B8))(v81, v22);
  v23 = v82;
  v76 = v1;
  v70 = v5;
  v78 = v0;
  if (v82 == 255)
  {
    DOCSidebarViewController.hierarchyControllerFirstReachableSidebarItem.getter(v83);
    v28 = v83[0];
    v26 = v83[1];
    v27 = v83[2];
    v24 = v83[3];
    v25 = v83[4];
    v23 = v84;
    outlined init with copy of DOCGridLayout.Spec?(v83, v96, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    if (v23 == 255)
    {
      v65 = v28;
      v66 = v26;
      v67 = v27;
      v68 = v24;
      v69 = v25;
      v32 = v73;
      (v60)(v73, 1, 1, v1);
      outlined init with copy of DOCGridLayout.Spec?(v81, v96, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      v35 = -1;
      goto LABEL_8;
    }
  }

  else
  {
    v24 = v81[3];
    v25 = v81[4];
    v26 = v81[1];
    v27 = v81[2];
    v28 = v81[0];
  }

  v62 = v23;
  v100[0] = v28;
  v100[1] = v26;
  v100[2] = v27;
  v100[3] = v24;
  v100[4] = v25;
  v101 = v23;
  outlined init with copy of DOCGridLayout.Spec?(v81, v96, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  outlined copy of DOCSidebarItem?(v28, v26, v27, v24, v25, v23);
  v29 = v63;
  DOCSidebarViewController.diffableSnapshot()();
  v30 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  MEMORY[0x28223BE20](v30, v31);
  *(&v58 - 2) = v29;
  *(&v58 - 1) = v100;
  specialized Sequence.first(where:)(partial apply for specialized closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:), v30, &v85);

  v68 = v24;
  v69 = v25;
  v66 = v26;
  v67 = v27;
  v65 = v28;
  if (v85)
  {
    *v96 = v85;
    *&v96[8] = v86;
    *&v96[24] = v87;
    *&v96[40] = v88;
    v96[56] = v89;
    v32 = v73;
    specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v96, v73);
    v97 = *v96;
    outlined destroy of DOCSidebarViewController.OutlineSection(&v97);
    v98 = *&v96[16];
    *v99 = *&v96[32];
    *&v99[9] = *&v96[41];
    outlined destroy of CharacterSet?(&v98, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    v33 = v62;
    outlined consume of DOCSidebarItem?(v28, v26, v27, v24, v25, v62);
    (*(v64 + 8))(v29, v77);
    v34 = v27;
    v35 = v33;
    outlined consume of DOCSidebarItem?(v28, v26, v34, v24, v25, v33);
    v1 = v76;
  }

  else
  {
    (*(v64 + 8))(v29, v77);
    v36 = v62;
    outlined consume of DOCSidebarItem?(v28, v26, v27, v24, v25, v62);
    v32 = v73;
    v1 = v76;
    (v60)(v73, 1, 1, v76);
    v37 = v27;
    v35 = v36;
    outlined consume of DOCSidebarItem?(v28, v26, v37, v24, v25, v36);
  }

LABEL_8:
  v38 = v78;
  v39 = v71(v32);
  v40 = *((*MEMORY[0x277D85000] & *v38) + 0x4A0);
  v41 = v74;
  (v40)(v39);
  v42 = v75;
  if ((*(v75 + 48))(v41, 1, v1) == 1)
  {
    outlined consume of DOCSidebarItem?(v65, v66, v67, v68, v69, v35);
    outlined destroy of CharacterSet?(v41, &_s10Foundation9IndexPathVSgMd);
    return;
  }

  (*(v42 + 32))(v70, v41, v1);
  v43 = type metadata accessor for DOCSidebarViewController(0);
  v80.receiver = v38;
  v80.super_class = v43;
  v44 = objc_msgSendSuper2(&v80, sel_collectionView);
  if (!v44)
  {
    __break(1u);
    goto LABEL_28;
  }

  v45 = v44;
  v77 = type metadata accessor for DOCSidebarCollectionView();
  v46 = [swift_dynamicCastClassUnconditional() indexPathsForSelectedItems];

  if (!v46)
  {
    (*(v42 + 8))(v70, v76);
LABEL_21:
    outlined consume of DOCSidebarItem?(v65, v66, v67, v68, v69, v35);
    return;
  }

  v47 = v76;
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = v70;
  v50 = specialized Sequence<>.contains(_:)(v70, v48);

  if (!v50)
  {
    (*(v75 + 8))(v49, v47);
    goto LABEL_21;
  }

  v79.receiver = v38;
  v79.super_class = v43;
  v51 = objc_msgSendSuper2(&v79, sel_collectionView);
  if (!v51)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v52 = v51;
  [swift_dynamicCastClassUnconditional() setSelectionFollowsFocus_];

  v53 = v59;
  v40();
  v54 = DOCSidebarViewController.sidebarItemCell(at:)(v53);
  outlined destroy of CharacterSet?(v53, &_s10Foundation9IndexPathVSgMd);
  v55 = v75;
  if (!v54)
  {
    (*(v75 + 8))(v49, v76);
    goto LABEL_21;
  }

  DOCSidebarViewController.sidebarItem(for:)(v54, v90);
  if (v92 == 255)
  {
    outlined consume of DOCSidebarItem?(v65, v66, v67, v68, v69, v35);
  }

  else
  {
    v93[0] = v90[0];
    v93[1] = v90[1];
    v94 = v91;
    v95 = v92;
    v56 = DOCSidebarViewController.sidebarSection(for:)(v54);
    if (v56)
    {
      DOCSidebarViewController.updateContentsOfCell(_:withSidebarItem:sidebarSection:)(v54, v93, v56, v57);
      outlined consume of DOCSidebarItem?(v65, v66, v67, v68, v69, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      outlined consume of DOCSidebarItem?(v65, v66, v67, v68, v69, v35);
    }

    outlined destroy of CharacterSet?(v90, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  }

  (*(v55 + 8))(v49, v76);
}

uint64_t specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = IndexPath.section.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v3 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((v2 & 0x8000000000000000) != 0 || v2 >= *(v3 + 16))
  {

LABEL_8:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0uLL;
    goto LABEL_9;
  }

  swift_unknownObjectRetain();

  v4 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  v5 = IndexPath.item.getter();
  if ((v5 & 0x8000000000000000) != 0 || v5 >= *(v4 + 16))
  {

    result = swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v6 = v4 + (v5 << 6);
  v15 = *(v6 + 32);
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  v9 = *(v6 + 64);
  v10 = *(v6 + 72);
  v11 = *(v6 + 80);
  v12 = *(v6 + 88);
  swift_unknownObjectRetain();
  outlined copy of DOCSidebarItem?(v7, v8, v9, v10, v11, v12);
  swift_unknownObjectRelease();

  v14 = v15;
LABEL_9:
  *a1 = v14;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  return result;
}

void DOCSidebarViewController.sidebarItem(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  MEMORY[0x28223BE20](v6, v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0uLL;
  if (!a1)
  {
    v19 = 0;
    v20 = -1;
    v25 = 0uLL;
    goto LABEL_18;
  }

  v39 = v8;
  v12 = *((*MEMORY[0x277D85000] & *v3) + 0x428);
  v13 = a1;
  v14 = v12();
  if (v14)
  {
    v15 = (*(*v14 + 112))(v14);

    if (v15)
    {
      type metadata accessor for DOCSidebarItemCell(0);
      v16 = v13;
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        v18 = v12();
        if (v18)
        {
          (*(*v18 + 136))(&v41);
          v37 = v42;
          v38 = v41;
          v19 = v43;
          v20 = v44;

LABEL_10:
          v25 = v37;
          v11 = v38;
LABEL_18:
          *a2 = v11;
          *(a2 + 16) = v25;
          *(a2 + 32) = v19;
          *(a2 + 40) = v20;
          return;
        }

        goto LABEL_17;
      }
    }
  }

  v21 = type metadata accessor for DOCSidebarViewController(0);
  v40.receiver = v3;
  v40.super_class = v21;
  v22 = objc_msgSendSuper2(&v40, sel_collectionView);
  if (v22)
  {
    v23 = v22;
    type metadata accessor for DOCSidebarCollectionView();
    v24 = [swift_dynamicCastClassUnconditional() indexPathForCell_];

    if (v24)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v10, 1, &v41);
      v37 = v42;
      v38 = v41;
      v19 = v43;
      v20 = v44;

      (*(v39 + 8))(v10, v6);
      goto LABEL_10;
    }

    if (one-time initialization token for Sidebar != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.Sidebar);
    v27 = v13;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v41 = v31;
      *v30 = 136315394;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BECDA0, &v41);
      *(v30 + 12) = 2080;
      v32 = [v27 description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v41);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_2493AC000, v28, v29, "%s: Could not find sidebar item (can determine index path) for cell: %s.", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v31, -1, -1);
      MEMORY[0x24C1FE850](v30, -1, -1);
    }

LABEL_17:
    v19 = 0;
    v20 = -1;
    v25 = 0uLL;
    v11 = 0uLL;
    goto LABEL_18;
  }

  __break(1u);
}

id DOCSidebarViewController.sidebarSection(for:)(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v8 = type metadata accessor for DOCSidebarViewController(0);
  v21.receiver = v1;
  v21.super_class = v8;
  v9 = a1;
  result = objc_msgSendSuper2(&v21, sel_collectionView);
  if (result)
  {
    v11 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v12 = [swift_dynamicCastClassUnconditional() indexPathForCell_];

    if (v12)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v7, 0);
      (*(v4 + 8))(v7, v3);
      return v13;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);
    v15 = v9;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = a1;
      v20 = v15;
      _os_log_impl(&dword_2493AC000, v16, v17, "Couldn't find section: unable to determine indexPath for %@", v18, 0xCu);
      outlined destroy of CharacterSet?(v19, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v19, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

void DOCSidebarViewController.forEachVisibleSidebarItemCell(handler:)(uint64_t a1, uint64_t a2)
{
  v56[1] = a2;
  v56[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v70 = v56 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v10 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v11);
  v13 = v56 - v12;
  v14 = type metadata accessor for IndexPath();
  v77 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v69 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v56 - v19;
  v21 = type metadata accessor for DOCSidebarViewController(0);
  v80 = v2;
  v87.receiver = v2;
  v87.super_class = v21;
  v65 = v21;
  v22 = objc_msgSendSuper2(&v87, sel_collectionView);
  if (!v22)
  {
    goto LABEL_39;
  }

  v23 = v22;
  v64 = type metadata accessor for DOCSidebarCollectionView();
  v24 = [swift_dynamicCastClassUnconditional() indexPathsForVisibleItems];

  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v25;
  v76 = *(v25 + 16);
  if (!v76)
  {
LABEL_36:

    return;
  }

  v26 = 0;
  v27 = (*MEMORY[0x277D85000] & *v80) + 808;
  v75 = *((*MEMORY[0x277D85000] & *v80) + 0x328);
  v74 = v27;
  v73 = v79 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v81 = v77 + 16;
  v72 = (v10 + 8);
  v68 = (v77 + 56);
  v67 = (v77 + 48);
  v63 = (v77 + 32);
  v66 = v6;
  v78 = (v77 + 8);
  v58 = v14;
  v57 = v13;
  while (v26 < *(v79 + 16))
  {
    v28 = *(v77 + 16);
    v29 = v28(v20, v73 + *(v77 + 72) * v26, v14);
    v75(&v85, v29);
    if (v86)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
      if (swift_dynamicCast())
      {
        v30 = v83;
        goto LABEL_14;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&v85, &_sypSgMd);
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v30 = static DOCSidebarViewController.nullDDS;
LABEL_14:
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v31 = IndexPath.section.getter();
    v32 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    if ((v31 & 0x8000000000000000) != 0 || v31 >= *(v32 + 16))
    {

      (*v72)(v13, v82);
    }

    else
    {
      v71 = *(v32 + 16 * v31 + 32);
      swift_unknownObjectRetain();

      v85 = v71;
      v33 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
      v34 = IndexPath.item.getter();
      if ((v34 & 0x8000000000000000) != 0 || v34 >= *(v33 + 16))
      {

        (*v72)(v13, v82);
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = v33 + (v34 << 6);
        *&v71 = *(v35 + 32);
        v36 = *(v35 + 48);
        v62 = *(v35 + 56);
        v38 = *(v35 + 64);
        v37 = *(v35 + 72);
        v39 = *(v35 + 80);
        v40 = *(v35 + 88);
        swift_unknownObjectRetain();
        v61 = v36;
        v41 = v36;
        v13 = v57;
        v42 = v37;
        v43 = v62;
        v59 = v42;
        v60 = v39;
        outlined copy of DOCSidebarItem?(v41, v62, v38, v42, v39, v40);

        (*v72)(v13, v82);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v40 == 255)
        {
          v14 = v58;
          (*v78)(v20, v58);
LABEL_35:
          v6 = v66;
          goto LABEL_5;
        }

        outlined consume of DOCSidebarItem?(v61, v43, v38, v59, v60, v40);
        v6 = v66;
        v14 = v58;
      }
    }

    v44 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v20, 0);
    if (v44)
    {
      v46 = v44;
      v47 = v45;
      DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v20, 1, v88);
      if (v90 == 255)
      {
        (*v78)(v20, v14);
        swift_unknownObjectRelease();
      }

      else
      {
        v91[0] = v88[0];
        v91[1] = v88[1];
        v92 = v89;
        v93 = v90;
        v48 = v70;
        v28(v70, v20, v14);
        (*v68)(v48, 0, 1, v14);
        outlined init with copy of DOCGridLayout.Spec?(v48, v6, &_s10Foundation9IndexPathVSgMd);
        if ((*v67)(v6, 1, v14) != 1)
        {
          (*v63)(v69, v6, v14);
          v84.receiver = v80;
          v84.super_class = v65;
          v49 = objc_msgSendSuper2(&v84, sel_collectionView);
          if (!v49)
          {
            goto LABEL_38;
          }

          v50 = v49;
          v51 = swift_dynamicCastClassUnconditional();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v53 = [v51 cellForItemAtIndexPath_];

          v54 = *v78;
          (*v78)(v69, v14);
          outlined destroy of CharacterSet?(v70, &_s10Foundation9IndexPathVSgMd);
          if (v53)
          {
            type metadata accessor for DOCSidebarItemCell(0);
            v55 = swift_dynamicCastClass();
            if (v55)
            {
              (v56[0])(v55, v91, v46, v47);
              swift_unknownObjectRelease();
              outlined destroy of CharacterSet?(v88, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
            }

            else
            {
              swift_unknownObjectRelease();

              outlined destroy of CharacterSet?(v88, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
            }

            v54(v20, v14);
          }

          else
          {
            v54(v20, v14);
            swift_unknownObjectRelease();
            outlined destroy of CharacterSet?(v88, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
          }

          goto LABEL_35;
        }

        swift_unknownObjectRelease();
        outlined destroy of CharacterSet?(v88, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd);
        (*v78)(v20, v14);
        outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd);
      }
    }

    else
    {
      (*v78)(v20, v14);
    }

LABEL_5:
    if (v76 == ++v26)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v3)
  {
    goto LABEL_10;
  }

  v4 = NSDiffableDataSourceSnapshot.indexOfItem(_:)();
  if (v5)
  {
    goto LABEL_10;
  }

  v6 = v4;
  v7 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  if (!*(v7 + 16))
  {

LABEL_10:
    v19 = type metadata accessor for IndexPath();
    v20 = *(*(v19 - 8) + 56);
    v21 = a2;
    goto LABEL_11;
  }

  v22 = v6;
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  v11 = *(v7 + 64);
  v10 = *(v7 + 72);
  v12 = *(v7 + 80);
  v13 = *(v7 + 88);
  swift_unknownObjectRetain();
  outlined copy of DOCSidebarItem?(v8, v9, v11, v10, v12, v13);

  v14 = NSDiffableDataSourceSnapshot.indexOfItem(_:)();
  if (v15)
  {
LABEL_8:
    swift_unknownObjectRelease();
    outlined consume of DOCSidebarItem?(v8, v9, v11, v10, v12, v13);
    v19 = type metadata accessor for IndexPath();
    v20 = *(*(v19 - 8) + 56);
    v21 = a2;
LABEL_11:
    v20(v21, 1, 1, v19);
    return outlined destroy of DOCSidebarViewController.OutlineSection(&v23);
  }

  v16 = __OFSUB__(v22, v14);
  result = v22 - v14;
  if (!v16)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      MEMORY[0x24C1F80E0]();
      swift_unknownObjectRelease();
      outlined consume of DOCSidebarItem?(v8, v9, v11, v10, v12, v13);
      v18 = type metadata accessor for IndexPath();
      (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
      return outlined destroy of DOCSidebarViewController.OutlineSection(&v23);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  v25 = *(a3 + 8);
  v7 = *(a3 + 16);
  v43 = *(a3 + 24);
  v28 = *(a3 + 32);
  v26 = *(a3 + 40);
  v39[3] = &type metadata for DOCSidebarViewController.OutlineItem;
  v39[4] = &protocol witness table for DOCSidebarViewController.OutlineItem;
  v8 = swift_allocObject();
  v39[0] = v8;
  v9 = a1[1];
  v42 = *a1;
  v10 = a1[2];
  v40 = v9;
  v41[0] = v10;
  *(v41 + 9) = *(a1 + 41);
  v11 = *(v41 + 9);
  v8[1] = v42;
  v8[2] = v9;
  v8[3] = v10;
  *(v8 + 57) = v11;
  outlined init with copy of DOCSidebarItemIconProvider(v39, v38);
  outlined init with copy of DOCSidebarViewController.OutlineSection(&v42, v30);
  outlined init with copy of DOCGridLayout.Spec?(&v40, v30, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16DOCUIOutlineItem_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v39);
    v16 = 0;
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v13 = 0;
LABEL_8:
    outlined init with copy of DOCSidebarItem(a3, v31);
    outlined consume of DOCSidebarItem?(v13, v12, v15, v14, v16, 0xFFu);
    outlined consume of DOCSidebarItem?(v6, v25, v7, v43, v28, v26);
    v22 = 0;
    return v22 & 1;
  }

  v24 = v7;
  v13 = v32;
  v12 = v33;
  v15 = v34;
  v14 = v35;
  v16 = v36;
  v17 = v37;
  __swift_destroy_boxed_opaque_existential_0(v39);
  swift_unknownObjectRelease();
  if (v17 == 255)
  {
    v7 = v24;
    goto LABEL_8;
  }

  v43 = v3;
  v31[0] = v13;
  v31[1] = v12;
  v32 = v15;
  v33 = v14;
  v29 = v16;
  v34 = v16;
  v27 = v17;
  LOBYTE(v35) = v17;
  outlined init with copy of DOCSidebarItem(a3, v30);
  v18 = DOCSidebarItem.hashComparableValue.getter();
  v20 = v19;
  if (v18 == DOCSidebarItem.hashComparableValue.getter() && v20 == v21)
  {
    v22 = 1;
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined destroy of DOCSidebarItem(a3);
  outlined consume of DOCSidebarItem?(v13, v12, v15, v14, v29, v27);
  return v22 & 1;
}

void DOCSidebarViewController.sidebarItem(at:logIfMissing:)(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v37 = a2;
  v38 = a3;
  v4 = type metadata accessor for IndexPath();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v32 - v10;
  DOCSidebarViewController.diffableSnapshot()();
  v33 = a1;
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v40);
  v12 = v40[0];
  v13 = v40[2];
  v14 = v40[3];
  v15 = v40[4];
  v16 = v40[5];
  v17 = v40[6];
  v18 = v41;
  (*(v8 + 8))(v11, v7);
  if (!v12 || (v42[0] = v12, v42[1] = v40[1], swift_unknownObjectRetain(), outlined copy of DOCSidebarItem?(v13, v14, v15, v16, v17, v18), outlined destroy of DOCSidebarViewController.OutlineSection(v42), v18 == 255))
  {
    if (v37)
    {
      if (one-time initialization token for Sidebar != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.Sidebar);
      v21 = v34;
      v20 = v35;
      v22 = v36;
      (*(v35 + 16))(v34, v33, v36);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v39 = v26;
        *v25 = 136315394;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BECDC0, &v39);
        *(v25 + 12) = 2080;
        v27 = MEMORY[0x24C1F8080]();
        v29 = v28;
        (*(v20 + 8))(v21, v22);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v39);

        *(v25 + 14) = v30;
        _os_log_impl(&dword_2493AC000, v23, v24, "%s: Could not find sidebar item at index path: %s.", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v26, -1, -1);
        MEMORY[0x24C1FE850](v25, -1, -1);
        outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);
      }

      else
      {
        outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);

        (*(v20 + 8))(v21, v22);
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = -1;
  }

  else
  {
    outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);
  }

  v31 = v38;
  *v38 = v13;
  v31[1] = v14;
  v31[2] = v15;
  v31[3] = v16;
  v31[4] = v17;
  *(v31 + 40) = v18;
}

id DOCSidebarViewController.sidebarItemCell(at:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v6, &_s10Foundation9IndexPathVSgMd);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v12 = type metadata accessor for DOCSidebarViewController(0);
    v18.receiver = v1;
    v18.super_class = v12;
    result = objc_msgSendSuper2(&v18, sel_collectionView);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v15 = swift_dynamicCastClassUnconditional();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v17 = [v15 cellForItemAtIndexPath_];

    (*(v8 + 8))(v11, v7);
    if (v17)
    {
      type metadata accessor for DOCSidebarItemCell(0);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

Swift::Void __swiftcall DOCSidebarViewController.updateObservableScrollView()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DOCSidebarViewController(0);
  v1 = objc_msgSendSuper2(&v3, sel_collectionView);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for DOCSidebarCollectionView();
    [v0 setContentScrollView:swift_dynamicCastClassUnconditional() forEdge:15];
  }

  else
  {
    __break(1u);
  }
}

double DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  specialized DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:)(a1, a2, &v6);
  v4 = v7[0];
  *a3 = v6;
  a3[1] = v4;
  result = *(v7 + 9);
  *(a3 + 25) = *(v7 + 9);
  return result;
}

void closure #1 in DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 40) == 255)
  {
    v19 = v3;
    v20 = v4;
    v16 = *(a1 + 16);
    v17 = *a1;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (a3())
    {
      v9 = a1;
      v10 = *a2;
      v11 = *(a2 + 8);
      v12 = *(a2 + 16);
      v13 = *(a2 + 24);
      v14 = *(a2 + 32);
      *a2 = v17;
      *(a2 + 16) = v16;
      *(a2 + 32) = v6;
      v15 = *(a2 + 40);
      *(a2 + 40) = v7;
      outlined init with copy of DOCSidebarItem(v9, v18);
      outlined consume of DOCSidebarItem?(v10, v11, v12, v13, v14, v15);
    }
  }
}

BOOL DOCSidebarViewController.isOutlineHeaderItem(at:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v13 - v3;
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v13);
  (*(v1 + 8))(v4, v0);
  if (!v13[0])
  {
    return 0;
  }

  v6 = v13[5];
  v5 = v13[6];
  v8 = v13[3];
  v7 = v13[4];
  v9 = v13[2];
  v10 = v14;
  v11 = v14 == 255;
  v15[0] = v13[0];
  v15[1] = v13[1];
  outlined destroy of DOCSidebarViewController.OutlineSection(v15);
  outlined consume of DOCSidebarItem?(v9, v8, v7, v6, v5, v10);
  return v11;
}

uint64_t DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(uint64_t a1, char a2)
{
  v69 = type metadata accessor for IndexPath();
  v4 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v68 = &v65 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v65 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v70 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v65 - v21;
  DOCSidebarViewController.diffableSnapshot()();
  v23 = IndexPath.section.getter();
  v71 = v19;
  v24 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((v23 & 0x8000000000000000) != 0 || v23 >= *(v24 + 16))
  {

    if (a2)
    {
      v26 = IndexPath.section.getter();
      MEMORY[0x24C1F80E0](0, v26);
      v27 = IndexPath.section.getter();
      v28 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      if ((v27 & 0x8000000000000000) == 0 && v27 < *(v28 + 16))
      {
        v67 = *(v28 + 16 * v27 + 32);
        v25 = v67;
        swift_unknownObjectRetain();

        v29 = v69;
        v66 = *(v4 + 8);
        v66(v14, v69);
        v72 = v67;
        NSDiffableDataSourceSnapshot.indexOfSection(_:)();
        v30 = *(&v67 + 1);
        if (v31)
        {
          v32 = 0;
        }

        else
        {
          v52 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
          ObjectType = swift_getObjectType();
          v32 = v52 - ((*(v30 + 64))(ObjectType, v30) & (v52 > 0));
        }

        if (v32 < IndexPath.row.getter())
        {
          goto LABEL_4;
        }

        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        __swift_project_value_buffer(v54, static Logger.UI);
        v55 = v68;
        (*(v4 + 16))(v68, a1, v29);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = v55;
          *&v67 = swift_slowAlloc();
          *&v72 = v67;
          *v58 = 136446210;
          lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = v61;
          v66(v59, v29);
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v72);

          *(v58 + 4) = v63;
          _os_log_impl(&dword_2493AC000, v56, v57, "Couldn't find section: indexPath %{public}s) isn't valid for insertion", v58, 0xCu);
          v64 = v67;
          __swift_destroy_boxed_opaque_existential_0(v67);
          MEMORY[0x24C1FE850](v64, -1, -1);
          MEMORY[0x24C1FE850](v58, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v66(v55, v29);
        }

LABEL_22:
        (*(v70 + 8))(v22, v71);
        return 0;
      }

      v44 = *(v4 + 8);
      v45 = v14;
      v46 = v69;
      v44(v45, v69);

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.UI);
      (*(v4 + 16))(v7, a1, v46);
      v35 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v35, v48))
      {
        v44(v7, v46);
        goto LABEL_21;
      }

      v49 = swift_slowAlloc();
      *v49 = 134349056;
      v50 = IndexPath.section.getter();
      v44(v7, v46);
      *(v49 + 4) = v50;
      _os_log_impl(&dword_2493AC000, v35, v48, "Couldn't find section: section %{public}ld is not valid", v49, 0xCu);
      v43 = v49;
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.UI);
      v34 = v69;
      (*(v4 + 16))(v18, a1, v69);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v35, v36))
      {

        (*(v4 + 8))(v18, v34);
        goto LABEL_22;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v72 = v38;
      *v37 = 136446210;
      lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v4 + 8))(v18, v34);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v72);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_2493AC000, v35, v36, "Could not find section: indexPath %{public}s is not valid", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C1FE850](v38, -1, -1);
      v43 = v37;
    }

    MEMORY[0x24C1FE850](v43, -1, -1);
LABEL_21:

    goto LABEL_22;
  }

  v25 = *(v24 + 16 * v23 + 32);
  swift_unknownObjectRetain();

LABEL_4:
  (*(v70 + 8))(v22, v71);
  return v25;
}

void closure #1 in DOCSidebarViewController.forEachSidebarItem(visibleOnly:handler:)(__int128 *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *), uint64_t a6)
{
  v42 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for IndexPath();
  MEMORY[0x28223BE20](v16, v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v41 = a1[2];
  *&v41[9] = *(a1 + 41);
  v22 = a1[1];
  v39 = *a1;
  v40 = v22;
  v23 = v41[24];
  if (v41[24] != 255)
  {
    v30 = a4;
    v31 = v19;
    v33 = a5;
    v34 = v18;
    v32 = a6;
    v35 = v6;
    v24 = v40;
    v25 = *v41;
    v26 = *&v41[16];
    v36[0] = v40;
    v36[1] = *v41;
    v37 = *&v41[16];
    v38 = v41[24];
    outlined copy of DOCSidebarItem(v40, *(&v40 + 1), *v41, *&v41[8], *&v41[16], v41[24]);
    if ((a2 & 1) == 0)
    {
      goto LABEL_6;
    }

    specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(&v39, v15);
    v27 = v31;
    if ((*(v31 + 48))(v15, 1, v34) == 1)
    {
      outlined consume of DOCSidebarItem?(v24, *(&v24 + 1), v25, *(&v25 + 1), v26, v23);
      outlined destroy of CharacterSet?(v15, &_s10Foundation9IndexPathVSgMd);
      return;
    }

    v28 = v15;
    v29 = v34;
    (*(v27 + 32))(v21, v28, v34);
    LODWORD(v42) = specialized Sequence<>.contains(_:)(v21, v30);
    (*(v27 + 8))(v21, v29);
    if (v42)
    {
LABEL_6:
      v33(v36);
    }

    outlined consume of DOCSidebarItem?(v24, *(&v24 + 1), v25, *(&v25 + 1), v26, v23);
  }
}

uint64_t DOCSidebarViewController.isOutlineChildItem(at:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v13 - v3;
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v13);
  (*(v1 + 8))(v4, v0);
  if (!v13[0])
  {
    return 1;
  }

  v6 = v13[5];
  v5 = v13[6];
  v8 = v13[3];
  v7 = v13[4];
  v9 = v13[2];
  v10 = v14;
  v11 = v14 != 255;
  v15[0] = v13[0];
  v15[1] = v13[1];
  outlined destroy of DOCSidebarViewController.OutlineSection(v15);
  outlined consume of DOCSidebarItem?(v9, v8, v7, v6, v5, v10);
  return v11;
}

id DOCSidebarViewController.sidebarHeaderCell(forSection:)(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DOCSidebarViewController(0);
  v14.receiver = v1;
  v14.super_class = v8;
  result = objc_msgSendSuper2(&v14, sel_collectionView);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  type metadata accessor for DOCSidebarCollectionView();
  v11 = swift_dynamicCastClassUnconditional();
  MEMORY[0x24C1F80E0](0, a1);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);
  v13 = [v11 cellForItemAtIndexPath_];

  if (v13)
  {
    type metadata accessor for DOCSidebarHeaderCell();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t DOCSidebarViewController.indexPath(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  MEMORY[0x28223BE20](v24, v10);
  v13 = &v22 - v12;
  if (v9 == 255)
  {
    v19 = type metadata accessor for IndexPath();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }

  else
  {
    v22 = v11;
    v23 = a2;
    v14 = *(a1 + 16);
    v31[0] = *a1;
    v31[1] = v14;
    v32 = *(a1 + 32);
    v33 = v9;
    outlined copy of DOCSidebarItem(v4, v5, v6, v7, v8, v9);
    DOCSidebarViewController.diffableSnapshot()();
    v15 = v24;
    v16 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    MEMORY[0x28223BE20](v16, v17);
    *(&v22 - 2) = v13;
    *(&v22 - 1) = v31;
    specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v16, &v25);

    if (v25)
    {
      *v30 = v25;
      *&v30[8] = v26;
      *&v30[24] = v27;
      *&v30[40] = v28;
      v30[56] = v29;
      specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v30, v23);
      v34 = *v30;
      outlined destroy of DOCSidebarViewController.OutlineSection(&v34);
      v35 = *&v30[16];
      *v36 = *&v30[32];
      *&v36[9] = *&v30[41];
      outlined destroy of CharacterSet?(&v35, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      return (*(v22 + 8))(v13, v15);
    }

    else
    {
      (*(v22 + 8))(v13, v15);
      outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      v21 = type metadata accessor for IndexPath();
      return (*(*(v21 - 8) + 56))(v23, 1, 1, v21);
    }
  }
}

uint64_t DOCSidebarViewController.indexPath(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - v7;
  if (a1)
  {
    v9 = a1;
    DOCSidebarViewController.sidebarItem(for:)(a1, &v38);
    v10 = v41;
    if (v41 != 255)
    {
      v35 = v9;
      v36 = v5;
      v37 = a2;
      v11 = v38;
      v12 = v39;
      v13 = v40;
      v48[0] = v38;
      v48[1] = v39;
      v49 = v40;
      v50 = v41;
      v54[0] = v38;
      v54[1] = v39;
      v55 = v40;
      v56 = v41;
      outlined init with copy of DOCSidebarItem(v48, v47);
      v31 = v11;
      v32 = v13;
      v33 = *(&v12 + 1);
      v34 = v12;
      outlined copy of DOCSidebarItem(v11, *(&v11 + 1), v12, *(&v12 + 1), v13, v10);
      DOCSidebarViewController.diffableSnapshot()();
      v14 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      MEMORY[0x28223BE20](v14, v15);
      *(&v31 - 2) = v8;
      *(&v31 - 1) = v54;
      specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v14, &v42);

      if (v42)
      {
        *v47 = v42;
        *&v47[8] = v43;
        *&v47[24] = v44;
        *&v47[40] = v45;
        v47[56] = v46;
        specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v47, v37);
        outlined destroy of CharacterSet?(&v38, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        outlined destroy of CharacterSet?(&v38, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);

        v51 = *v47;
        outlined destroy of DOCSidebarViewController.OutlineSection(&v51);
        v52 = *&v47[16];
        v53[0] = *&v47[32];
        *(v53 + 9) = *&v47[41];
        outlined destroy of CharacterSet?(&v52, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        outlined destroy of CharacterSet?(&v38, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        return (*(v36 + 8))(v8, v4);
      }

      else
      {
        outlined destroy of CharacterSet?(&v38, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        outlined destroy of CharacterSet?(&v38, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        outlined consume of DOCSidebarItem(v31, *(&v11 + 1), v34, v33, v32, v10);

        (*(v36 + 8))(v8, v4);
        v28 = type metadata accessor for IndexPath();
        return (*(*(v28 - 8) + 56))(v37, 1, 1, v28);
      }
    }

    if (one-time initialization token for Sidebar != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.Sidebar);
    v18 = v9;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v47 = v22;
      *v21 = 136315394;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7461507865646E69, 0xEF293A726F662868, v47);
      *(v21 + 12) = 2080;
      v23 = [v18 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v47);

      *(v21 + 14) = v27;
      _os_log_impl(&dword_2493AC000, v19, v20, "%s: Could not find sidebar index path for cell: %s.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v22, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    else
    {
    }
  }

  v29 = type metadata accessor for IndexPath();
  v30 = *(*(v29 - 8) + 56);

  return v30(a2, 1, 1, v29);
}

uint64_t DOCSidebarViewController.selectSidebarItem(_:scrollToVisible:animated:)(uint64_t a1, int a2, int a3)
{
  v52 = a3;
  LODWORD(v53) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v55 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCSidebarItem(a1, v70);
  v54 = v3;
  DOCSidebarViewController.diffableSnapshot()();
  v18 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  v56 = v9;
  v57 = a1;
  specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v18, &v65);

  if (v65)
  {
    *v70 = v65;
    *&v70[8] = v66;
    *&v70[24] = v67;
    *&v70[40] = v68;
    v70[56] = v69;
    specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v70, v13);
    v71 = *v70;
    outlined destroy of DOCSidebarViewController.OutlineSection(&v71);
    v72 = *&v70[16];
    v73[0] = *&v70[32];
    *(v73 + 9) = *&v70[41];
    outlined destroy of CharacterSet?(&v72, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    outlined destroy of DOCSidebarItem(a1);
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    outlined destroy of DOCSidebarItem(a1);
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  v19 = v15;
  v20 = (*(v15 + 48))(v13, 1, v14);
  v21 = v55;
  if (v20 == 1)
  {
    outlined destroy of CharacterSet?(v13, &_s10Foundation9IndexPathVSgMd);
    return 2;
  }

  v50 = a1;
  (*(v15 + 32))(v55, v13, v14);
  v23 = type metadata accessor for DOCSidebarViewController(0);
  v24 = v54;
  v64.receiver = v54;
  v64.super_class = v23;
  v25 = v23;
  result = objc_msgSendSuper2(&v64, sel_collectionView);
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = result;
  v51 = v19;
  type metadata accessor for DOCSidebarCollectionView();
  v27 = [swift_dynamicCastClassUnconditional() indexPathsForSelectedItems];

  if (v27)
  {
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v28 = 0;
  }

  v29 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
  v30 = v51;
  v31 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_249B9A480;
  (*(v30 + 16))(v32 + v31, v21, v29);
  v33 = v29;
  if (v28)
  {
    v34 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation9IndexPathV_Tt1g5(v28, v32);
  }

  else
  {
    v34 = 0;
  }

  v63.receiver = v24;
  v63.super_class = v25;
  v35 = v25;
  result = objc_msgSendSuper2(&v63, sel_collectionView);
  if (!result)
  {
    goto LABEL_21;
  }

  v36 = result;
  v37 = [swift_dynamicCastClassUnconditional() indexPathsForVisibleItems];

  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = specialized Sequence<>.contains(_:)(v21, v38);

  v41 = v53 & ~v39;
  if (v34)
  {
    v58.receiver = v24;
    v58.super_class = v35;
    result = objc_msgSendSuper2(&v58, sel_collectionView);
    if (result)
    {
      v42 = result;
      v43 = swift_dynamicCastClassUnconditional();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v43 scrollToItemAtIndexPath:isa atScrollPosition:v41 & 1 animated:v52 & 1];

      (*(v51 + 8))(v21, v33);
      return 1;
    }

    goto LABEL_22;
  }

  v53 = v53 & ~v39;
  v45 = (*((*MEMORY[0x277D85000] & *v24) + 0x488))(v40);
  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v62 = v60;
  MEMORY[0x24C1FAEA0](0xD00000000000001BLL, 0x8000000249BECDE0);
  v46 = v50[1];
  v60 = *v50;
  v61[0] = v46;
  *(v61 + 9) = *(v50 + 25);
  _print_unlocked<A, B>(_:_:)();
  (*(*v45 + 384))(v62, *(&v62 + 1));

  v59.receiver = v24;
  v59.super_class = v35;
  result = objc_msgSendSuper2(&v59, sel_collectionView);
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v47 = result;
  v48 = swift_dynamicCastClassUnconditional();
  v49 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v48 selectItemAtIndexPath:v49 animated:v52 & 1 scrollPosition:v53 & 1];

  (*(v51 + 8))(v21, v33);
  return 0;
}

Swift::Void __swiftcall DOCSidebarViewController.deselectAllSidebarItems()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v105 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v108 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v105 - v12;
  v133 = type metadata accessor for IndexPath();
  v107 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v14);
  v122 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v124 = &v105 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v127 = &v105 - v21;
  v22 = type metadata accessor for DOCSidebarViewController(0);
  v140.receiver = v0;
  v140.super_class = v22;
  v113 = v22;
  v23 = objc_msgSendSuper2(&v140, sel_collectionView);
  if (!v23)
  {
LABEL_53:
    __break(1u);
    return;
  }

  v24 = v23;
  v112 = type metadata accessor for DOCSidebarCollectionView();
  v25 = [swift_dynamicCastClassUnconditional() indexPathsForSelectedItems];

  if (!v25)
  {
    return;
  }

  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = *(v26 + 16);
  v125 = v5;
  v126 = v6;
  v121 = v9;
  v132 = v1;
  if (!v28)
  {

    v83 = MEMORY[0x277D84F90];
    v84 = *(MEMORY[0x277D84F90] + 16);
    if (!v84)
    {
      goto LABEL_49;
    }

LABEL_39:
    v85 = 0;
    v86 = 0;
    v87 = (v83 + 32);
    v120 = (v107 + 56);
    v130 = (v107 + 48);
    v131 = (v108 + 8);
    v127 = "CollectionView - selecting ";
    v128 = (v107 + 32);
    v123 = v83;
    v124 = (v107 + 8);
    while (v85 < *(v83 + 2))
    {
      v88 = *v87;
      v89 = v87[1];
      *(v135 + 9) = *(v87 + 25);
      v134 = v88;
      v135[0] = v89;
      outlined init with copy of DOCSidebarItem(&v134, &v138);
      outlined init with copy of DOCSidebarItem(&v134, &v138);
      v90 = v121;
      DOCSidebarViewController.diffableSnapshot()();
      v91 = v126;
      v92 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      MEMORY[0x28223BE20](v92, v93);
      *(&v105 - 2) = v90;
      *(&v105 - 1) = &v134;
      specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v92, v141);

      if (*v141)
      {
        *&v142[0] = *v141;
        *(v142 + 8) = *&v141[8];
        *(&v142[1] + 8) = *&v141[24];
        *(&v142[2] + 8) = *&v141[40];
        BYTE8(v142[3]) = v141[56];
        specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v142, v5);
        v143 = v142[0];
        outlined destroy of DOCSidebarViewController.OutlineSection(&v143);
        v144 = v142[1];
        v145[0] = v142[2];
        *(v145 + 9) = *(&v142[2] + 9);
        outlined destroy of CharacterSet?(&v144, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        outlined destroy of DOCSidebarItem(&v134);
        (*v131)(v90, v91);
        v94 = v133;
      }

      else
      {
        outlined destroy of DOCSidebarItem(&v134);
        (*v131)(v90, v91);
        v94 = v133;
        (*v120)(v5, 1, 1, v133);
      }

      v95 = (*v130)(v5, 1, v94);
      v96 = v122;
      if (v95 == 1)
      {
        outlined destroy of DOCSidebarItem(&v134);
        outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd);
      }

      else
      {
        v129 = v86;
        v97 = v84;
        v98 = (*v128)(v122, v5, v94);
        v99 = v132;
        v100 = (*((*MEMORY[0x277D85000] & *v132) + 0x488))(v98);
        *&v138 = 0;
        *(&v138 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v137 = v138;
        MEMORY[0x24C1FAEA0](0xD00000000000001DLL, v127 | 0x8000000000000000);
        v138 = v134;
        v139[0] = v135[0];
        *(v139 + 9) = *(v135 + 9);
        _print_unlocked<A, B>(_:_:)();
        (*(*v100 + 384))(v137, *(&v137 + 1));

        v136.receiver = v99;
        v136.super_class = v113;
        v101 = objc_msgSendSuper2(&v136, sel_collectionView);
        if (!v101)
        {
          goto LABEL_52;
        }

        v102 = v101;
        v103 = swift_dynamicCastClassUnconditional();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v103 deselectItemAtIndexPath:isa animated:1];

        outlined destroy of DOCSidebarItem(&v134);
        (*v124)(v96, v94);
        v5 = v125;
        v84 = v97;
        v86 = v129;
      }

      ++v85;
      v87 += 3;
      v83 = v123;
      if (v84 == v85)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v128 = *(v107 + 16);
  v29 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v105 = v26;
  v30 = (v26 + v29);
  v31 = (*MEMORY[0x277D85000] & *v1);
  v120 = (v108 + 8);
  v117 = (v107 + 8);
  v111 = "sidebarItem(for:)";
  v123 = MEMORY[0x277D84F90];
  v31 += 101;
  v32 = *v31;
  v118 = v31;
  v119 = v32;
  v116 = *(v107 + 72);
  v129 = v107 + 16;
  v130 = (v28 - 1);
  *&v27 = 136315394;
  v110 = v27;
  v33 = v127;
  v115 = v13;
  while (1)
  {
    v131 = v30;
    v34 = v128(v33);
    v119(v142, v34);
    if (*(&v142[1] + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
      if (swift_dynamicCast())
      {
        v35 = *v141;
        goto LABEL_12;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v142, &_sypSgMd);
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v35 = static DOCSidebarViewController.nullDDS;
LABEL_12:
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v36 = IndexPath.section.getter();
    v37 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    if ((v36 & 0x8000000000000000) != 0 || v36 >= *(v37 + 16))
    {

LABEL_25:
      (*v120)(v13, v6);
      memset(v142, 0, 57);
      goto LABEL_26;
    }

    v114 = *(v37 + 16 * v36 + 32);
    swift_unknownObjectRetain();

    v144 = v114;
    v38 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    v39 = IndexPath.item.getter();
    if ((v39 & 0x8000000000000000) != 0 || v39 >= *(v38 + 16))
    {

      swift_unknownObjectRelease();
      goto LABEL_25;
    }

    v40 = v38 + (v39 << 6);
    v42 = *(v40 + 48);
    v41 = *(v40 + 56);
    v44 = *(v40 + 72);
    *&v114 = *(v40 + 64);
    v43 = v114;
    v45 = *(v40 + 80);
    v46 = *(v40 + 88);
    v109 = *(v40 + 32);
    swift_unknownObjectRetain();
    outlined copy of DOCSidebarItem?(v42, v41, v43, v44, v45, v46);
    v6 = v126;
    swift_unknownObjectRelease();
    v47 = v114;

    v134 = v109;
    *&v135[0] = v42;
    *(&v135[0] + 1) = v41;
    *&v135[1] = v47;
    *(&v135[1] + 1) = v44;
    *&v109 = v44;
    *&v135[2] = v45;
    BYTE8(v135[2]) = v46;
    *v141 = v134;
    *&v141[16] = v135[0];
    *&v141[32] = v135[1];
    *&v141[41] = *(&v135[1] + 9);
    (*v120)(v13, v6);
    if (v46 == 255)
    {
      break;
    }

    v48 = v46;
    v106 = v41;
    v49 = v109;
    v50 = v45;
    v51 = v48;
    outlined copy of DOCSidebarItem(v42, v41, v47, v109, v45, v48);
    outlined destroy of DOCSidebarViewController.OutlineItem(&v134);
    (*v117)(v127, v133);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v125;
    if (isUniquelyReferenced_nonNull_native)
    {
      v53 = v123;
    }

    else
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v123 + 2) + 1, 1, v123);
    }

    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v53);
      v57 = v50;
      v56 = v49;
      v53 = v82;
    }

    else
    {
      v56 = v49;
      v57 = v50;
    }

    *(v53 + 2) = v55 + 1;
    v123 = v53;
    v58 = &v53[48 * v55];
    v59 = v106;
    *(v58 + 4) = v42;
    *(v58 + 5) = v59;
    *(v58 + 6) = v114;
    *(v58 + 7) = v56;
    *(v58 + 8) = v57;
    v58[72] = v51;
    v6 = v126;
    v33 = v127;
    v61 = v130;
    v60 = v131;
    if (!v130)
    {
      goto LABEL_36;
    }

LABEL_32:
    v130 = (v61 - 1);
    v30 = v60 + v116;
  }

  v142[0] = *v141;
  v142[1] = *&v141[16];
  v142[2] = *&v141[32];
  *(&v142[2] + 9) = *&v141[41];
LABEL_26:
  v33 = v127;
  v62 = v6;
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Logger.Sidebar);
  v64 = v124;
  v65 = v133;
  (v128)(v124, v33, v133);
  v66 = v64;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.info.getter();
  v69 = os_log_type_enabled(v67, v68);
  v70 = v117;
  if (v69)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v141 = v72;
    *v71 = v110;
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, v111 | 0x8000000000000000, v141);
    *(v71 + 4) = v73;
    *(v71 + 12) = 2080;
    v74 = MEMORY[0x24C1F8080](v73);
    v76 = v75;
    v77 = *v70;
    (*v70)(v124, v133);
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v141);
    v79 = v133;

    *(v71 + 14) = v78;
    v80 = v79;
    _os_log_impl(&dword_2493AC000, v67, v68, "%s: Could not find sidebar item at index path: %s.", v71, 0x16u);
    swift_arrayDestroy();
    v62 = v126;
    MEMORY[0x24C1FE850](v72, -1, -1);
    v81 = v71;
    v33 = v127;
    MEMORY[0x24C1FE850](v81, -1, -1);
    outlined destroy of CharacterSet?(v142, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);

    v5 = v125;
  }

  else
  {
    outlined destroy of CharacterSet?(v142, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd);

    v77 = *v70;
    (*v70)(v66, v65);
    v5 = v125;
    v80 = v65;
  }

  v77(v33, v80);
  v13 = v115;
  v6 = v62;
  v61 = v130;
  v60 = v131;
  if (v130)
  {
    goto LABEL_32;
  }

LABEL_36:

  v83 = v123;
  v84 = *(v123 + 2);
  if (v84)
  {
    goto LABEL_39;
  }

LABEL_49:
}

id DOCSidebarViewController.deselectSidebarItem(_:animated:)(_OWORD *a1, int a2)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v29[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v29[-v11];
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v32 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of DOCSidebarItem(a1, v44);
  v31 = v2;
  DOCSidebarViewController.diffableSnapshot()();
  v17 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  v33 = v8;
  v34 = a1;
  specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v17, &v39);

  if (v39)
  {
    *v44 = v39;
    *&v44[8] = v40;
    *&v44[24] = v41;
    *&v44[40] = v42;
    v44[56] = v43;
    specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v44, v12);
    v45 = *v44;
    outlined destroy of DOCSidebarViewController.OutlineSection(&v45);
    v46 = *&v44[16];
    v47[0] = *&v44[32];
    *(v47 + 9) = *&v44[41];
    outlined destroy of CharacterSet?(&v46, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    outlined destroy of DOCSidebarItem(a1);
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    outlined destroy of DOCSidebarItem(a1);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  v18 = (*(v14 + 48))(v12, 1, v13);
  v19 = v32;
  if (v18 == 1)
  {
    return outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd);
  }

  v21 = (*(v14 + 32))(v32, v12, v13);
  v22 = v31;
  v23 = (*((*MEMORY[0x277D85000] & *v31) + 0x488))(v21);
  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  v38 = v36;
  MEMORY[0x24C1FAEA0](0xD00000000000001DLL, 0x8000000249BECE00);
  v24 = a1[1];
  v36 = *a1;
  v37[0] = v24;
  *(v37 + 9) = *(a1 + 25);
  _print_unlocked<A, B>(_:_:)();
  (*(*v23 + 384))(v38, *(&v38 + 1));

  v25 = type metadata accessor for DOCSidebarViewController(0);
  v35.receiver = v22;
  v35.super_class = v25;
  result = objc_msgSendSuper2(&v35, sel_collectionView);
  if (result)
  {
    v26 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v27 = swift_dynamicCastClassUnconditional();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v27 deselectItemAtIndexPath:isa animated:v30 & 1];

    return (*(v14 + 8))(v19, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCSidebarViewController.performAlongsideTransitionDeselection(animated:coordinator:)(int a1, void *a2)
{
  v3 = v2;
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DOCSidebarViewController(0);
  v45.receiver = v2;
  v45.super_class = v10;
  v36 = v10;
  v11 = objc_msgSendSuper2(&v45, sel_collectionView);
  if (!v11)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v12 = v11;
  v34 = type metadata accessor for DOCSidebarCollectionView();
  v13 = [swift_dynamicCastClassUnconditional() indexPathsForSelectedItems];

  if (v13)
  {
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(*((*MEMORY[0x277D85000] & *v3) + 0x488))();
    (*(v15 + 384))(0xD000000000000036, 0x8000000249BECE20);

    if (a2)
    {
      v43.receiver = v3;
      v43.super_class = v36;
      swift_unknownObjectRetain();
      v16 = objc_msgSendSuper2(&v43, sel_collectionView);
      if (v16)
      {
        v17 = v16;
        v18 = swift_dynamicCastClassUnconditional();
        v19 = swift_allocObject();
        *(v19 + 16) = v14;
        *(v19 + 24) = v18;
        v20 = v35 & 1;
        *(v19 + 32) = v35 & 1;
        v41 = partial apply for closure #2 in DOCSidebarViewController.performAlongsideTransitionDeselection(animated:coordinator:);
        v42 = v19;
        aBlock = MEMORY[0x277D85DD0];
        v38 = 1107296256;
        v39 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v40 = &block_descriptor_112;
        v21 = _Block_copy(&aBlock);

        v22 = v17;

        v23 = swift_allocObject();
        *(v23 + 16) = v14;
        *(v23 + 24) = v18;
        *(v23 + 32) = v20;
        v41 = partial apply for closure #3 in DOCSidebarViewController.performAlongsideTransitionDeselection(animated:coordinator:);
        v42 = v23;
        aBlock = MEMORY[0x277D85DD0];
        v38 = 1107296256;
        v39 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v40 = &block_descriptor_11;
        v24 = _Block_copy(&aBlock);
        v25 = v22;

        [a2 animateAlongsideTransition:v21 completion:v24];
        _Block_release(v24);
        _Block_release(v21);
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_16;
    }

    v33 = *(v14 + 16);
    if (v33)
    {
      v26 = 0;
      v32 = v6 + 16;
      while (v26 < *(v14 + 16))
      {
        (*(v6 + 16))(v9, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v5);
        v27 = v3;
        v44.receiver = v3;
        v44.super_class = v36;
        v28 = objc_msgSendSuper2(&v44, sel_collectionView, v32);
        if (!v28)
        {
          goto LABEL_14;
        }

        v29 = v28;
        ++v26;
        v30 = swift_dynamicCastClassUnconditional();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v30 deselectItemAtIndexPath:isa animated:v35 & 1];

        (*(v6 + 8))(v9, v5);
        v3 = v27;
        if (v33 == v26)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_11:
  }
}

void closure #2 in DOCSidebarViewController.performAlongsideTransitionDeselection(animated:coordinator:)(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v20 = a4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v15 = *(v7 + 16);
    v13 = v7 + 16;
    v14 = v15;
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v11, v16, v6, v9);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [a3 deselectItemAtIndexPath:isa animated:v20 & 1];

      (*(v13 - 8))(v11, v6);
      v16 += v17;
      --v12;
    }

    while (v12);
  }
}

id closure #3 in DOCSidebarViewController.performAlongsideTransitionDeselection(animated:coordinator:)(void *a1, uint64_t a2, void *a3, int a4)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v33[-v16];
  result = [a1 isCancelled];
  if (result)
  {
    v19 = *(a2 + 16);
    if (v19)
    {
      v20 = v9 + 16;
      v21 = *(v9 + 16);
      v22 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v23 = *(v20 + 56);
      do
      {
        v21(v17, v22, v8);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [a3 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

        result = (*(v20 - 8))(v17, v8);
        v22 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    result = [a3 indexPathsForSelectedItems];
    v34 = a4;
    if (result)
    {
      v25 = result;
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v25) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation9IndexPathV_Tt1g5(v26, a2);

      if (v25)
      {
        v27 = *(a2 + 16);
        if (v27)
        {
          v28 = *(v9 + 16);
          v29 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
          v30 = *(v9 + 72);
          v31 = (v9 + 8);
          do
          {
            v28(v12, v29, v8);
            v32 = IndexPath._bridgeToObjectiveC()().super.isa;
            [a3 deselectItemAtIndexPath:v32 animated:v34 & 1];

            result = (*v31)(v12, v8);
            v29 += v30;
            --v27;
          }

          while (v27);
        }
      }
    }
  }

  return result;
}

Swift::Void __swiftcall DOCSidebarViewController.setUnderlyingCollectionViewIsEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v19[24] = _;
  if (animated && [v2 doc_hasAppearedOrIsAppearing])
  {
    v4 = [v2 view];
    if (!v4)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v4 window];

    if (v6)
    {

      if ([v2 doc_isAppearing])
      {
        v7 = [v2 navigationController];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 topViewController];
          if (v9)
          {
            v10 = v9;
            type metadata accessor for UIViewController();
            v11 = v2;
            v12 = static NSObject.== infix(_:_:)();

            if (v12)
            {
              goto LABEL_9;
            }
          }

          else
          {
          }
        }
      }

      v20.receiver = v2;
      v20.super_class = type metadata accessor for DOCSidebarViewController(0);
      v17 = objc_msgSendSuper2(&v20, sel_collectionView);
      if (v17)
      {
        v18 = v17;
        type metadata accessor for DOCSidebarCollectionView();
        [swift_dynamicCastClassUnconditional() setEditing_];

        return;
      }

      goto LABEL_16;
    }
  }

LABEL_9:
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in DOCSidebarViewController.setUnderlyingCollectionViewIsEditing(_:animated:);
  *(v14 + 24) = v19;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  *(v15 + 24) = v14;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_20_3;
  v16 = _Block_copy(aBlock);

  [v13 performWithoutAnimation_];
  _Block_release(v16);
  LODWORD(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }
}

void closure #1 in DOCSidebarViewController.setUnderlyingCollectionViewIsEditing(_:animated:)(void *a1, char a2)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    [swift_dynamicCastClassUnconditional() setEditing_];
  }

  else
  {
    __break(1u);
  }
}

void key path getter for DOCSidebarViewController.dragInteractionEnabled : DOCSidebarViewController(id *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v6.receiver = *a1;
  v6.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v6, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    v5 = [swift_dynamicCastClassUnconditional() dragInteractionEnabled];

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

void key path setter for DOCSidebarViewController.dragInteractionEnabled : DOCSidebarViewController(unsigned __int8 *a1, id *a2)
{
  v2 = *a1;
  v5.receiver = *a2;
  v5.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    [swift_dynamicCastClassUnconditional() setDragInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void DOCSidebarViewController.dragInteractionEnabled.setter(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    [swift_dynamicCastClassUnconditional() setDragInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void (*DOCSidebarViewController.dragInteractionEnabled.modify(uint64_t *a1))(objc_super **a1, char a2)
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
  *(v3 + 48) = v1;
  v5 = type metadata accessor for DOCSidebarViewController(0);
  *(v4 + 56) = v5;
  *v4 = v1;
  *(v4 + 8) = v5;
  result = objc_msgSendSuper2(v4, sel_collectionView);
  if (result)
  {
    v7 = result;
    *(v4 + 64) = type metadata accessor for DOCSidebarCollectionView();
    v8 = [swift_dynamicCastClassUnconditional() dragInteractionEnabled];

    *(v4 + 72) = v8;
    return DOCSidebarViewController.dragInteractionEnabled.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCSidebarViewController.dragInteractionEnabled.modify(objc_super **a1, char a2)
{
  v2 = *a1;
  super_class_low = LOBYTE((*a1)[4].super_class);
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v6 = *a1;
  if (a2)
  {
    v6[1].receiver = receiver;
    v6[1].super_class = super_class;
    v6 = objc_msgSendSuper2(v6 + 1, sel_collectionView);
    if (v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6[2].receiver = receiver;
  v6[2].super_class = super_class;
  v6 = objc_msgSendSuper2(v6 + 2, sel_collectionView);
  if (!v6)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v7 = v6;
  [swift_dynamicCastClassUnconditional() setDragInteractionEnabled_];

  free(v2);
}

id DOCSidebarViewController.dragInteractionEnabled.getter(SEL *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCSidebarViewController(0);
  result = [(SEL *)&v6 collectionView];
  if (result)
  {
    v4 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v5 = [swift_dynamicCastClassUnconditional() *a1];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DOCSidebarViewController.backgroundColor.getter()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCSidebarViewController(0);
  result = objc_msgSendSuper2(&v4, sel_collectionView);
  if (result)
  {
    v2 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v3 = [swift_dynamicCastClassUnconditional() backgroundColor];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void key path getter for DOCSidebarViewController.backgroundColor : DOCSidebarViewController(id *a1@<X0>, void *a2@<X8>)
{
  v6.receiver = *a1;
  v6.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v6, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    v5 = [swift_dynamicCastClassUnconditional() backgroundColor];

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

void key path setter for DOCSidebarViewController.backgroundColor : DOCSidebarViewController(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v5.receiver = *a2;
  v5.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    [swift_dynamicCastClassUnconditional() setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void DOCSidebarViewController.backgroundColor.setter(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    [swift_dynamicCastClassUnconditional() setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void (*DOCSidebarViewController.backgroundColor.modify(uint64_t *a1))(objc_super **a1, char a2)
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
  v5 = type metadata accessor for DOCSidebarViewController(0);
  v4[4].receiver = v5;
  v4->receiver = v1;
  v4->super_class = v5;
  result = [(objc_super *)v4 collectionView];
  if (result)
  {
    v7 = result;
    v4[4].super_class = type metadata accessor for DOCSidebarCollectionView();
    v8 = [swift_dynamicCastClassUnconditional() backgroundColor];

    v4[3].receiver = v8;
    return DOCSidebarViewController.backgroundColor.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCSidebarViewController.backgroundColor.modify(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v4 = (*a1)[4].receiver;
  if ((a2 & 1) == 0)
  {
    v2[2].receiver = super_class;
    v2[2].super_class = v4;
    v9 = objc_msgSendSuper2(v2 + 2, sel_collectionView);
    if (v9)
    {
      v10 = v9;
      [swift_dynamicCastClassUnconditional() setBackgroundColor_];

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v2[1].receiver = super_class;
  v2[1].super_class = v4;
  v6 = receiver;
  v7 = objc_msgSendSuper2(v2 + 1, sel_collectionView);
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [swift_dynamicCastClassUnconditional() setBackgroundColor_];

  receiver = v2[3].receiver;
LABEL_6:

  free(v2);
}

id DOCSidebarViewController.isHandlingTouchesEnded.getter()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCSidebarViewController(0);
  result = objc_msgSendSuper2(&v5, sel_collectionView);
  if (result)
  {
    v2 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v3 = swift_dynamicCastClassUnconditional();
    v4 = (*((*MEMORY[0x277D85000] & *v3) + 0x60))();

    return (v4 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DOCSidebarViewController.configureFocusHandling()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCSidebarViewController(0);
  v1 = objc_msgSendSuper2(&v4, sel_collectionView);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for DOCSidebarCollectionView();
    v3 = swift_dynamicCastClassUnconditional();
    (*((*MEMORY[0x277D85000] & *v3) + 0x88))(1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCSidebarViewController.indexPathForPreferredFocusedView(in:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v5);
  v69 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v71 = &v59 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v64 = &v59 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v59 - v18;
  v20 = type metadata accessor for IndexPath();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v63 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v65 = &v59 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v59 - v29;
  v33.n128_f64[0] = MEMORY[0x28223BE20](v31, v32);
  v35 = &v59 - v34;
  (*((*MEMORY[0x277D85000] & *v2) + 0x4A0))(v33);
  v36 = *(v21 + 48);
  v72 = v21 + 48;
  v68 = v36;
  v37 = v36(v19, 1, v20);
  v73 = a2;
  if (v37 == 1)
  {
    outlined destroy of CharacterSet?(v19, &_s10Foundation9IndexPathVSgMd);
  }

  else
  {
    v62 = a1;
    v60 = *(v21 + 32);
    v60(v35, v19, v20);
    if (DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v35, 0))
    {
      v39 = v38;
      v61 = v21;
      ObjectType = swift_getObjectType();
      if ((*(v39 + 32))(ObjectType, v39))
      {
        v41 = v64;
        UICollectionView.doc_validatedIndexPath(_:indexPathDebugName:)(v35, 0xD000000000000017, 0x8000000249BECE80, v64);
        swift_unknownObjectRelease();
        (*(v61 + 8))(v35, v20);
        v42 = v68(v41, 1, v20);
        v43 = v73;
        if (v42 != 1)
        {
          v57 = v60;
          v60(v30, v41, v20);
          v57(v43, v30, v20);
          v49 = 0;
          v21 = v61;
          return (*(v21 + 56))(v43, v49, 1, v20);
        }

        outlined destroy of CharacterSet?(v41, &_s10Foundation9IndexPathVSgMd);
        v21 = v61;
      }

      else
      {
        v21 = v61;
        (*(v61 + 8))(v35, v20);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      (*(v21 + 8))(v35, v20);
    }
  }

  DOCSidebarViewController.hierarchyControllerFirstReachableSidebarItem.getter(&v74);
  v45 = v70;
  v44 = v71;
  v46 = v69;
  if (v79 == 255)
  {
    v49 = 1;
    v43 = v73;
  }

  else
  {
    v89[0] = v74;
    v89[1] = v75;
    v89[2] = v76;
    v89[3] = v77;
    v89[4] = v78;
    v90 = v79;
    outlined copy of DOCSidebarItem(v74, v75, v76, v77, v78, v79);
    DOCSidebarViewController.diffableSnapshot()();
    v47 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    MEMORY[0x28223BE20](v47, v48);
    *(&v59 - 2) = v46;
    *(&v59 - 1) = v89;
    specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v47, &v80);

    if (v80)
    {
      *&v85[0] = v80;
      *(v85 + 8) = v81;
      *(&v85[1] + 8) = v82;
      *(&v85[2] + 8) = v83;
      BYTE8(v85[3]) = v84;
      specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v85, v44);
      v86 = v85[0];
      outlined destroy of DOCSidebarViewController.OutlineSection(&v86);
      v87 = v85[1];
      v88[0] = v85[2];
      *(v88 + 9) = *(&v85[2] + 9);
      outlined destroy of CharacterSet?(&v87, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      outlined destroy of CharacterSet?(&v74, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      (*(v67 + 8))(v46, v45);
    }

    else
    {
      (*(v67 + 8))(v46, v45);
      outlined destroy of CharacterSet?(&v74, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      (*(v21 + 56))(v44, 1, 1, v20);
    }

    v50 = v68;
    if (v68(v44, 1, v20) == 1)
    {
      outlined destroy of CharacterSet?(&v74, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      v43 = v73;
    }

    else
    {
      v51 = *(v21 + 32);
      v52 = v50;
      v53 = v65;
      v51(v65, v44, v20);
      v54 = v66;
      UICollectionView.doc_validatedIndexPath(_:indexPathDebugName:)(v53, 0xD000000000000015, 0x8000000249BECE60, v66);
      outlined destroy of CharacterSet?(&v74, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
      (*(v21 + 8))(v53, v20);
      v55 = v52(v54, 1, v20);
      v43 = v73;
      if (v55 != 1)
      {
        v56 = v63;
        v51(v63, v54, v20);
        v51(v43, v56, v20);
        v49 = 0;
        return (*(v21 + 56))(v43, v49, 1, v20);
      }

      v44 = v54;
    }

    outlined destroy of CharacterSet?(v44, &_s10Foundation9IndexPathVSgMd);
    v49 = 1;
  }

  return (*(v21 + 56))(v43, v49, 1, v20);
}

void DOCSidebarViewController.hierarchyControllerFirstReachableSidebarItem.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v72 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v13 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v14);
  v84 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v86 = &v72 - v19;
  v20 = [v2 splitViewController];
  if (!v20)
  {
    goto LABEL_29;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {

    goto LABEL_31;
  }

  v87 = v8;
  v22 = [v21 fullDocumentManagerViewController];

  if (!v22)
  {
LABEL_31:
    v98 = 0;
    v20 = 0;
    goto LABEL_32;
  }

  v20 = [v22 hierarchyController];

  if (!v20)
  {
LABEL_29:
    v98 = 0;
LABEL_32:
    v26 = 0;
    v70 = 0;
    v54 = 0;
    LOBYTE(v13) = -1;
LABEL_33:
    *a1 = v98;
    *(a1 + 8) = v20;
    *(a1 + 16) = v26;
    *(a1 + 24) = v70;
    *(a1 + 32) = v54;
    *(a1 + 40) = v13;
    return;
  }

  v23 = v20;
  v93 = v2;
  v74 = a1;
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v73 = v23;
  v25 = *&v23[v24];
  if (!(v25 >> 62))
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  v71 = v25;
  v26 = __CocoaSet.count.getter();
  v25 = v71;
  if (!v26)
  {
LABEL_40:

LABEL_28:
    v98 = 0;
    v20 = 0;
    v70 = 0;
    v54 = 0;
    LOBYTE(v13) = -1;
LABEL_35:
    a1 = v74;
    goto LABEL_33;
  }

LABEL_7:
  v85 = v25 & 0xC000000000000001;
  v78 = v25 + 32;
  v79 = v25 & 0xFFFFFFFFFFFFFF8;
  v95 = (v13 + 8);
  v80 = (v9 + 48);
  v75 = (v9 + 56);
  v76 = (v9 + 32);
  v77 = (v9 + 8);
  v83 = v25;

  v27 = 0;
  v81 = v12;
  v82 = v7;
  while (1)
  {
    v28 = __OFSUB__(v26, 1);
    v29 = v26 - 1;
    if (v28)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v85)
    {
      v30 = MEMORY[0x24C1FC540](v29, v83);
    }

    else
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (v29 >= *(v79 + 16))
      {
        goto LABEL_38;
      }

      v30 = *(v78 + 8 * v29);
    }

    v32 = v30;
    v96 = v29;
    v98 = &v72;
    MEMORY[0x28223BE20](v30, v31);
    v97 = &v72;
    *(&v72 - 2) = v33;
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    v103 = -1;
    MEMORY[0x28223BE20](v33, v34);
    *(&v72 - 4) = &v100;
    *(&v72 - 3) = partial apply for closure #1 in DOCSidebarViewController.sidebarItem(for:);
    *(&v72 - 2) = v35;
    v36 = type metadata accessor for DOCSidebarViewController(0);
    v7 = v93;
    v99.receiver = v93;
    v99.super_class = v36;
    v12 = v32;
    v37 = objc_msgSendSuper2(&v99, sel_collectionView);
    if (!v37)
    {
      break;
    }

    v38 = v37;
    type metadata accessor for DOCSidebarCollectionView();
    v39 = [swift_dynamicCastClassUnconditional() indexPathsForVisibleItems];

    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v86;
    DOCSidebarViewController.diffableSnapshot()();
    v42 = v94;
    v43 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    MEMORY[0x28223BE20](v43, v44);
    *(&v72 - 48) = 0;
    *(&v72 - 5) = v41;
    *(&v72 - 4) = v40;
    *(&v72 - 3) = closure #1 in DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:)partial apply;
    *(&v72 - 2) = (&v72 - 6);
    specialized Sequence.forEach(_:)(closure #1 in DOCSidebarViewController.forEachSidebarItem(visibleOnly:handler:)partial apply, (&v72 - 8), v43);

    v9 = *v95;
    (*v95)(v41, v42);
    v13 = v103;
    if (v103 == 255)
    {

      v26 = v96;
      if (!v96)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v90 = v9;
      v97 = v12;
      v20 = *(&v100 + 1);
      v45 = v100;
      v46 = v101;
      v47 = v102;
      v113[0] = v100;
      v113[1] = v101;
      v114 = v102;
      v115 = v103;
      outlined copy of DOCSidebarItem(v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103);
      v98 = v45;
      v89 = v47;
      outlined copy of DOCSidebarItem(v45, v20, v46, *(&v46 + 1), v47, v13);
      v48 = v84;
      DOCSidebarViewController.diffableSnapshot()();
      v49 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      MEMORY[0x28223BE20](v49, v50);
      *(&v72 - 2) = v48;
      *(&v72 - 1) = v113;
      specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v49, &v104);
      v88 = v27;

      v92 = v13;
      v91 = *(&v46 + 1);
      if (v104)
      {
        *&v109[0] = v104;
        *(v109 + 8) = v105;
        *(&v109[1] + 8) = v106;
        *(&v109[2] + 8) = v107;
        BYTE8(v109[3]) = v108;
        v51 = v48;
        v7 = v82;
        specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v109, v82);
        v110 = v109[0];
        outlined destroy of DOCSidebarViewController.OutlineSection(&v110);
        v111 = v109[1];
        v112[0] = v109[2];
        v52 = v98;
        *(v112 + 9) = *(&v109[2] + 9);
        outlined destroy of CharacterSet?(&v111, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        v53 = v46;
        v54 = v89;
        outlined consume of DOCSidebarItem?(v52, v20, v46, *(&v46 + 1), v89, v13);
        v90(v51, v94);
        v55 = v87;
      }

      else
      {
        v53 = v46;
        v54 = v89;
        outlined consume of DOCSidebarItem?(v98, v20, v46, *(&v46 + 1), v89, v13);
        v90(v48, v42);
        v7 = v82;
        v55 = v87;
        (*v75)(v82, 1, 1, v87);
      }

      v12 = v81;
      if ((*v80)(v7, 1, v55) == 1)
      {
        v56 = v98;
        v9 = v53;
        v57 = v53;
        v12 = v54;
        v58 = v91;
        v59 = v92;
        outlined consume of DOCSidebarItem?(v98, v20, v57, v91, v12, v92);
        outlined consume of DOCSidebarItem?(v56, v20, v9, v58, v12, v59);

        v25 = outlined destroy of CharacterSet?(v7, &_s10Foundation9IndexPathVSgMd);
      }

      else
      {
        (*v76)(v12, v7, v55);
        v60 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v12, 0);
        v7 = v55;
        if (v60)
        {
          v9 = v60;
          v62 = v61;
          ObjectType = swift_getObjectType();
          LOBYTE(v62) = (*(v62 + 32))(ObjectType, v62);
          v26 = v53;
          v64 = v53;
          v65 = v91;
          v13 = v92;
          outlined consume of DOCSidebarItem?(v98, v20, v64, v91, v54, v92);

          swift_unknownObjectRelease();
          (*v77)(v12, v7);
          if (v62)
          {

            v70 = v65;
            goto LABEL_35;
          }

          outlined consume of DOCSidebarItem?(v98, v20, v26, v65, v54, v13);
        }

        else
        {

          v66 = v98;
          v9 = v53;
          v67 = v53;
          v68 = v91;
          v69 = v92;
          outlined consume of DOCSidebarItem?(v98, v20, v67, v91, v54, v92);
          outlined consume of DOCSidebarItem?(v66, v20, v9, v68, v54, v69);
          v25 = (*v77)(v12, v7);
        }
      }

      v27 = v88;
      v26 = v96;
      if (!v96)
      {
LABEL_27:

        goto LABEL_28;
      }
    }
  }

  __break(1u);
}

uint64_t partial apply for specialized closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  return specialized closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)(v6, v2, v3) & 1;
}

id specialized DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22[-v10];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v30 = -1;
  v23 = &v27;
  v24 = a1;
  v25 = a2;
  v12 = type metadata accessor for DOCSidebarViewController(0);
  v26.receiver = v3;
  v26.super_class = v12;
  result = objc_msgSendSuper2(&v26, sel_collectionView);
  if (result)
  {
    v14 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v15 = [swift_dynamicCastClassUnconditional() indexPathsForVisibleItems];

    type metadata accessor for IndexPath();
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    DOCSidebarViewController.diffableSnapshot()();
    v17 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    MEMORY[0x28223BE20](v17, v18);
    v22[-48] = 0;
    *&v22[-40] = v11;
    *&v22[-32] = v16;
    *&v22[-24] = partial apply for closure #1 in DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:);
    *&v22[-16] = v22;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in DOCSidebarViewController.forEachSidebarItem(visibleOnly:handler:), &v22[-64], v17);

    result = (*(v8 + 8))(v11, v7);
    v19 = v29;
    v20 = v30;
    v21 = v28;
    *a3 = v27;
    *(a3 + 16) = v21;
    *(a3 + 32) = v19;
    *(a3 + 40) = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized DOCSidebarViewController.forEachVisibleSidebarItemCell(handler:)(void *a1, uint64_t a2)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v77 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v79 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v64 - v12;
  v14 = type metadata accessor for IndexPath();
  v87 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v72 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v64 - v19;
  v21 = type metadata accessor for DOCSidebarViewController(0);
  v22 = a1;
  v94.receiver = a1;
  v94.super_class = v21;
  v71 = v21;
  v23 = objc_msgSendSuper2(&v94, sel_collectionView, v64);
  if (!v23)
  {
    goto LABEL_40;
  }

  v24 = v23;
  v70 = type metadata accessor for DOCSidebarCollectionView();
  v25 = [swift_dynamicCastClassUnconditional() indexPathsForVisibleItems];

  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v86 = *(v26 + 16);
  if (!v86)
  {
LABEL_37:

    return;
  }

  v28 = 0;
  v29 = (*MEMORY[0x277D85000] & *v22) + 808;
  v85 = *((*MEMORY[0x277D85000] & *v22) + 0x328);
  v84 = v29;
  v83 = v26 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
  v89 = v87 + 16;
  v82 = (v10 + 8);
  v81 = (v87 + 8);
  v76 = (v87 + 56);
  v75 = (v87 + 48);
  v69 = (v87 + 32);
  v73 = v22;
  v88 = v9;
  v78 = v26;
  v74 = v14;
  while (v28 < *(v27 + 16))
  {
    v30 = *(v87 + 16);
    v31 = v30(v20, v83 + *(v87 + 72) * v28, v14);
    v85(&v92, v31);
    if (v93)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd);
      if (swift_dynamicCast())
      {
        v32 = v90;
        goto LABEL_14;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&v92, &_sypSgMd);
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v32 = static DOCSidebarViewController.nullDDS;
LABEL_14:
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v33 = IndexPath.section.getter();
    v34 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    if ((v33 & 0x8000000000000000) != 0 || v33 >= *(v34 + 16))
    {

      (*v82)(v13, v9);
      v47 = v22;
    }

    else
    {
      v35 = v27;
      v80 = *(v34 + 16 * v33 + 32);
      swift_unknownObjectRetain();

      v92 = v80;
      v36 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
      v37 = IndexPath.item.getter();
      if ((v37 & 0x8000000000000000) != 0 || v37 >= *(v36 + 16))
      {

        (*v82)(v13, v9);
        swift_unknownObjectRelease();
        v47 = v22;
        v27 = v35;
      }

      else
      {
        v38 = v36 + (v37 << 6);
        *&v80 = *(v38 + 32);
        v39 = *(v38 + 48);
        v40 = *(v38 + 56);
        v41 = *(v38 + 72);
        v68 = *(v38 + 64);
        v42 = *(v38 + 80);
        v67 = *(v38 + 88);
        swift_unknownObjectRetain();
        v65 = v39;
        v43 = v39;
        v66 = v40;
        v44 = v40;
        v45 = v68;
        v46 = v67;
        outlined copy of DOCSidebarItem?(v43, v44, v68, v41, v42, v67);

        (*v82)(v13, v88);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v46 == 255)
        {
          v14 = v74;
          (*v81)(v20, v74);
          v22 = v73;
LABEL_36:
          v27 = v78;
          goto LABEL_5;
        }

        outlined consume of DOCSidebarItem?(v65, v66, v45, v41, v42, v46);
        v47 = v73;
        v27 = v78;
      }

      v14 = v74;
    }

    v48 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v20, 0);
    if (v48)
    {
      v50 = v48;
      v51 = v49;
      v22 = v47;
      DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v20, 1, v95);
      if (v97 != 255)
      {
        *&v80 = v51;
        v98[0] = v95[0];
        v98[1] = v95[1];
        v99 = v96;
        v100 = v97;
        v52 = v79;
        v30(v79, v20, v14);
        (*v76)(v52, 0, 1, v14);
        v53 = v77;
        outlined init with copy of DOCGridLayout.Spec?(v52, v77, &_s10Foundation9IndexPathVSgMd);
        if ((*v75)(v53, 1, v14) == 1)
        {
          swift_unknownObjectRelease();
          outlined destroy of CharacterSet?(v95, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
          outlined destroy of CharacterSet?(v52, &_s10Foundation9IndexPathVSgMd);
          (*v81)(v20, v14);
          outlined destroy of CharacterSet?(v53, &_s10Foundation9IndexPathVSgMd);
        }

        else
        {
          v54 = v13;
          v55 = v72;
          (*v69)(v72, v53, v14);
          v91.receiver = v22;
          v91.super_class = v71;
          v56 = objc_msgSendSuper2(&v91, sel_collectionView);
          if (!v56)
          {
            goto LABEL_39;
          }

          v57 = v56;
          v58 = swift_dynamicCastClassUnconditional();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v60 = [v58 cellForItemAtIndexPath_];

          v61 = *v81;
          (*v81)(v55, v14);
          outlined destroy of CharacterSet?(v79, &_s10Foundation9IndexPathVSgMd);
          v62 = v80;
          if (v60)
          {
            type metadata accessor for DOCSidebarItemCell(0);
            v63 = swift_dynamicCastClass();
            v13 = v54;
            if (v63)
            {
              DOCSidebarViewController.updateContentsOfCell(_:withSidebarItem:sidebarSection:)(v63, v98, v50, v62);
              swift_unknownObjectRelease();
              outlined destroy of CharacterSet?(v95, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
            }

            else
            {
              swift_unknownObjectRelease();

              outlined destroy of CharacterSet?(v95, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
            }

            v61(v20, v14);
            v27 = v78;
            v22 = v73;
            goto LABEL_5;
          }

          v61(v20, v14);
          swift_unknownObjectRelease();
          outlined destroy of CharacterSet?(v95, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
          v22 = v73;
          v13 = v54;
        }

        goto LABEL_36;
      }

      (*v81)(v20, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      (*v81)(v20, v14);
      v22 = v47;
    }

LABEL_5:
    ++v28;
    v9 = v88;
    if (v86 == v28)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

id specialized DOCSidebarViewController._newCollectionView(withFrame:collectionViewLayout:)(id result, double a2, double a3, double a4, double a5)
{
  if (result)
  {
    v5 = [objc_allocWithZone(type metadata accessor for DOCSidebarCollectionView()) initWithFrame:result collectionViewLayout:{a2, a3, a4, a5}];
    [v5 setAlwaysBounceVertical_];
    v6 = objc_opt_self();
    v7 = v5;
    [v6 sidebar];
    swift_getObjCClassMetadata();
    v8 = [swift_getObjCClassFromMetadata() containerView];
    if (!v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = MEMORY[0x24C1FAD20](v9);
    }

    [v7 setAccessibilityIdentifier_];

    v10 = v7;
    [v10 setAllowsFocus_];
    [v10 _setShouldPersistSelectionOnReloadDataWhenPossible_];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

void specialized DOCSidebarViewController.collectionView(_:didUpdateFocusIn:with:)(void *a1, void *a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v37 - v19;
  type metadata accessor for DOCSidebarCollectionView();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v38 = v12;
    v39 = a1;
    v23 = [a2 previouslyFocusedIndexPath];
    if (v23)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = v5;
      v25 = *(v5 + 56);
      v25(v20, 0, 1, v4);
    }

    else
    {
      v24 = v5;
      v25 = *(v5 + 56);
      v25(v20, 1, 1, v4);
    }

    outlined destroy of CharacterSet?(v20, &_s10Foundation9IndexPathVSgMd);
    v26 = [a2 nextFocusedIndexPath];
    if (v26)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = 1;
      v25(v16, 0, 1, v4);
      outlined destroy of CharacterSet?(v16, &_s10Foundation9IndexPathVSgMd);
      if (!v23)
      {
        v28 = [a2 nextFocusedIndexPath];
        if (v28)
        {
          v29 = v28;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = v24;
          v31 = *(v24 + 32);
          v32 = v38;
          v31(v38, v8, v4);
          v33 = [v22 indexPathsForSelectedItems];
          if (v33)
          {
            v34 = v33;
            v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v35 = MEMORY[0x277D84F90];
          }

          v27 = specialized Sequence<>.contains(_:)(v32, v35);

          (*(v30 + 8))(v32, v4);
        }
      }
    }

    else
    {
      v27 = 1;
      v25(v16, 1, 1, v4);
      outlined destroy of CharacterSet?(v16, &_s10Foundation9IndexPathVSgMd);
    }

    v36 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v40) + 0x1D8))(v26 != 0);
    (*((*v36 & *v22) + 0x88))(v26 == 0);
    [v22 setSelectionFollowsFocus_];
  }
}

uint64_t getEnumTagSinglePayload for DOCSidebarViewController.SelectionResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
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

uint64_t storeEnumTagSinglePayload for DOCSidebarViewController.SelectionResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

void partial apply for closure #1 in DOCSidebarViewController.forEachSidebarItem(visibleOnly:handler:)(__int128 *a1)
{
  partial apply for closure #1 in DOCSidebarViewController.forEachSidebarItem(visibleOnly:handler:)(a1);
}

{
  closure #1 in DOCSidebarViewController.forEachSidebarItem(visibleOnly:handler:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t one-time initialization function for documentCreation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.documentCreation);
  __swift_project_value_buffer(v0, static Logger.documentCreation);

  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for FileProviderSyncState()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.FileProviderSyncState);
  __swift_project_value_buffer(v0, static Logger.FileProviderSyncState);

  return Logger.init(subsystem:category:)();
}

Swift::Bool __swiftcall Logger.doc_isEnabled(for:)(os_log_type_t a1)
{
  type metadata accessor for OS_os_log();
  v2 = static OS_os_log.default.getter();
  v3 = os_log_type_enabled(v2, a1);

  return v3;
}

uint64_t specialized static DOCKeyboardNotifications.addObserver(keyboardAppearanceBlock:keyboardDisappearanceBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BA37E0;
  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  v9 = *MEMORY[0x277D76C60];
  v10 = objc_opt_self();
  v11 = [v10 mainQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v35 = partial apply for closure #1 in static DOCKeyboardNotifications.addObserver(keyboardAppearanceBlock:keyboardDisappearanceBlock:);
  v36 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v34 = &block_descriptor_113;
  v13 = _Block_copy(&aBlock);

  v14 = [v8 addObserverForName:v9 object:0 queue:v11 usingBlock:v13];
  _Block_release(v13);

  *(v6 + 32) = v14;
  v15 = [v7 defaultCenter];
  v16 = *MEMORY[0x277D76B98];
  v17 = [v10 mainQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v35 = partial apply for closure #1 in closure #1 in closure #1 in _DOCBrowserHistoryDataSourceBase.performPendingMutations(_:);
  v36 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v34 = &block_descriptor_8_0;
  v19 = _Block_copy(&aBlock);

  v20 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
  _Block_release(v19);

  *(v6 + 40) = v20;
  v21 = [v7 defaultCenter];
  v22 = *MEMORY[0x277D76C50];
  v23 = [v10 mainQueue];
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v35 = partial apply for closure #1 in static DOCKeyboardNotifications.addObserver(keyboardAppearanceBlock:keyboardDisappearanceBlock:);
  v36 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v34 = &block_descriptor_14_1;
  v25 = _Block_copy(&aBlock);

  v26 = [v21 addObserverForName:v22 object:0 queue:v23 usingBlock:v25];
  _Block_release(v25);

  *(v6 + 48) = v26;
  return v6;
}

uint64_t closure #1 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables013QuickLookFileD0VGMd);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v2);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables013QuickLookFileD0V_GMd);
  MEMORY[0x28223BE20](v5, v6);
  lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x2079616C70736944;
  v7._object = 0xEB0000000020796DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();
  v21[1] = a1;

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x656C696620;
  v8._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v9 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21[0] = *(v25 + 8);
  v24 = v9;
  v25 += 8;
  v10 = v23;
  (v21[0])(v4, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x6F4C206B63697551;
  v11._object = 0xEB00000000206B6FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v21[0];
  (v21[0])(v4, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x8000000249BED830;
  v14._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables013QuickLookFileG0VGGGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_249BA08C0;
  v18 = v22;
  *(v17 + 32) = v24;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v19;
}

uint64_t closure #1 in closure #2 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #3 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables011RevealItemsD0VGMd);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v2);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables011RevealItemsD0V_GMd);
  MEMORY[0x28223BE20](v5, v6);
  lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000249BED7D0;
  v7._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);
  v21[1] = a1;

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v9 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21[0] = *(v25 + 8);
  v24 = v9;
  v25 += 8;
  v10 = v23;
  (v21[0])(v4, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x6D20657461636F4CLL;
  v11._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x656C696620;
  v12._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v21[0];
  (v21[0])(v4, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x206C6165766552;
  v14._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables011RevealItemsG0VGGGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_249BA08C0;
  v18 = v22;
  *(v17 + 32) = v24;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v19;
}

uint64_t closure #20 in static FileAssistantIntents.intents.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = type metadata accessor for _AssistantIntent.Value();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);

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

uint64_t closure #1 in closure #4 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #5 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v56 = a1;
  v63 = type metadata accessor for _AssistantIntent.PhraseToken();
  v1 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v2);
  v4 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables012CreateFolderD0V_GMd);
  MEMORY[0x28223BE20](v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables012CreateFolderD0VGMd);
  v65 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v49 - v10;
  lazy protocol witness table accessor for type CreateFolderIntent and conformance CreateFolderIntent();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v12 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = *(v8 + 8);
  v54 = v12;
  v55 = v13;
  v13(v11, v7);
  v64 = v8 + 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD000000000000017;
  v14._object = 0x8000000249BED660;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v60 = *MEMORY[0x277CB9F50];
  v15 = *(v1 + 104);
  v61 = v1 + 104;
  v62 = v15;
  v16 = v4;
  v57 = v4;
  v17 = v4;
  v18 = v63;
  v15(v17);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v19 = *(v1 + 8);
  v58 = v1 + 8;
  v59 = v19;
  v19(v16, v18);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = v55;
  v55(v11, v65);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0xD000000000000016;
  v22._object = 0x8000000249BED680;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  v49[1] = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR, lazy protocol witness table accessor for type String and conformance String);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 544106784;
  v23._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v11, v65);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0x6120657461657243;
  v25._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0x207265646C6F6620;
  v26._object = 0xEB00000000206E69;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28 = v65;
  v21(v11, v65);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x2077656E20646441;
  v29._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0x6F74636572696420;
  v30._object = 0xEA00000000007972;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v11, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0xD000000000000028;
  v31._object = 0x8000000249BED6A0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v57;
  v33 = v63;
  v62(v57, v60, v63);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v59(v32, v33);
  v34._object = 0x8000000249BED6D0;
  v34._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35._countAndFlagsBits = 63;
  v35._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49[0] = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v36 = v55;
  v55(v11, v65);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._countAndFlagsBits = 0xD000000000000018;
  v37._object = 0x8000000249BED6F0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 544106784;
  v38._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  v39 = v57;
  v40 = v63;
  v62(v57, v60, v63);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v59(v39, v40);
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v36(v11, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables012CreateFolderG0VGGGMd);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_249BA2880;
  v44 = v53;
  *(v43 + 32) = v54;
  *(v43 + 40) = v44;
  v45 = v51;
  *(v43 + 48) = v52;
  *(v43 + 56) = v45;
  v46 = v49[0];
  *(v43 + 64) = v50;
  *(v43 + 72) = v46;
  *(v43 + 80) = v42;
  v47 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v47;
}

uint64_t closure #6 in static FileAssistantIntents.intents.getter()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR, lazy protocol witness table accessor for type String and conformance String);

  lazy protocol witness table accessor for type CreateFolderIntent and conformance CreateFolderIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249B9FA70;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t closure #1 in closure #6 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #2 in closure #6 in static FileAssistantIntents.intents.getter()
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

uint64_t closure #7 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables014DuplicateItemsD0VGMd);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v2);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables014DuplicateItemsD0V_GMd);
  MEMORY[0x28223BE20](v5, v6);
  lazy protocol witness table accessor for type DuplicateItemsIntent and conformance DuplicateItemsIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x746163696C707544;
  v7._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v25 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);
  v31 = a1;

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v9 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = *(v32 + 8);
  v28 = v9;
  v29 = v10;
  v32 += 8;
  v11 = v30;
  v10(v4, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD000000000000016;
  v12._object = 0x8000000249BED5C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v29;
  v29(v4, v11);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x8000000249BED5E0;
  v15._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v30;
  v14(v4, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0xD000000000000014;
  v18._object = 0x8000000249BED600;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x73656C696620;
  v19._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29(v4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables014DuplicateItemsG0VGGGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_249BA08D0;
  v22 = v27;
  *(v21 + 32) = v28;
  *(v21 + 40) = v22;
  *(v21 + 48) = v26;
  *(v21 + 56) = v20;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t closure #1 in closure #8 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #9 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v45 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010TrashItemsD0VGMd);
  v52 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v1);
  v3 = &v37 - v2;
  v4 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables010TrashItemsD0V_GMd);
  MEMORY[0x28223BE20](v9, v10);
  v11 = lazy protocol witness table accessor for type TrashItemsIntent and conformance TrashItemsIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x2065766F4DLL;
  v12._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  v44 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x73617274206F7420;
  v13._object = 0xED0000206E692068;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v51 = *MEMORY[0x277CB9F50];
  v46 = *(v5 + 104);
  v47 = v5 + 104;
  v43 = v4;
  v46(v8);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v14 = *(v5 + 8);
  v49 = v5 + 8;
  v50 = v14;
  v14(v8, v4);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = v11;
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v38 = *(v52 + 8);
  v52 += 8;
  v16 = v48;
  v38(v3, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x206873617254;
  v17._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 544106784;
  v18._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v43;
  (v46)(v8, v51, v43);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v50(v8, v19);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v37 = v3;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = v16;
  v22 = v38;
  v38(v3, v21);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x206574656C6544;
  v23._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 544106784;
  v24._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v43;
  v26 = v46;
  (v46)(v8, v51, v43);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v50(v8, v25);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  v28 = v37;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22(v28, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._object = 0x8000000249BED520;
  v29._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  (v26)(v8, v51, v25);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v50(v8, v25);
  v30._countAndFlagsBits = 8250;
  v30._object = 0xE200000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22(v28, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010TrashItemsG0VGGGMd);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_249BA08D0;
  v34 = v40;
  *(v33 + 32) = v41;
  *(v33 + 40) = v34;
  *(v33 + 48) = v39;
  *(v33 + 56) = v32;
  v35 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v35;
}

uint64_t closure #1 in closure #10 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #11 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v17[1] = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersD0VGMd);
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v2);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015FavoriteFoldersD0V_GMd);
  MEMORY[0x28223BE20](v5, v6);
  lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 543450177;
  v7._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x6F766166206F7420;
  v8._object = 0xED00007365746972;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = *(v1 + 8);
  v10 = v19;
  v9(v4, v19);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20656B614DLL;
  v11._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x726F766166206120;
  v12._object = 0xEB00000000657469;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersG0VGGGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249B9FA70;
  *(v14 + 32) = v18;
  *(v14 + 40) = v13;
  v15 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v15;
}

uint64_t closure #16 in static FileAssistantIntents.intents.getter()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FavoriteFolderOperation and conformance FavoriteFolderOperation();

  lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249B9FA70;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

{
  return closure #16 in static FileAssistantIntents.intents.getter();
}

uint64_t closure #1 in closure #12 in static FileAssistantIntents.intents.getter()
{
  return closure #1 in closure #12 in static FileAssistantIntents.intents.getter();
}

{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249B9A480;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t closure #13 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v17[1] = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersD0VGMd);
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v2);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015FavoriteFoldersD0V_GMd);
  MEMORY[0x28223BE20](v5, v6);
  lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x2065766F6D6552;
  v7._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x6166206D6F726620;
  v8._object = 0xEF73657469726F76;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = *(v1 + 8);
  v10 = v19;
  v9(v4, v19);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20656B6154;
  v11._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._object = 0x8000000249BED410;
  v12._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersG0VGGGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249B9FA70;
  *(v14 + 32) = v18;
  *(v14 + 40) = v13;
  v15 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v15;
}

uint64_t closure #15 in static FileAssistantIntents.intents.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersD0VGMd);
  v1 = *(v0 - 8);
  v29 = v0;
  v30 = v1;
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015FavoriteFoldersD0V_GMd);
  MEMORY[0x28223BE20](v5, v6);
  lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v27 = lazy protocol witness table accessor for type FavoriteFolderOperation and conformance FavoriteFolderOperation();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v26 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v29;
  v24 = *(v30 + 8);
  v30 += 8;
  v24(v4, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 544499027;
  v11._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 544432416;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v24;
  v24(v4, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x7420746E61772049;
  v15._object = 0xEA0000000000206FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 544828704;
  v16._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v4, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersG0VGGGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249BA08C0;
  v20 = v25;
  *(v19 + 32) = v28;
  *(v19 + 40) = v20;
  *(v19 + 48) = v18;
  v21 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v21;
}

uint64_t closure #1 in closure #16 in static FileAssistantIntents.intents.getter()
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

uint64_t closure #2 in closure #12 in static FileAssistantIntents.intents.getter()
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

uint64_t closure #17 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v25[1] = a1;
  v1 = type metadata accessor for _AssistantIntent.PhraseToken();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v28 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables018GetContentOfFolderD0VGMd);
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables018GetContentOfFolderD0V_GMd);
  MEMORY[0x28223BE20](v8, v9);
  lazy protocol witness table accessor for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x739980E274616857;
  v10._object = 0xAC000000206E6920;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v4 + 8;
  v13 = *(v4 + 8);
  v25[2] = v12;
  v14 = v26;
  v13(v7, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x8000000249BED3C0;
  v15._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0x207265646C6F6620;
  v16._object = 0xED0000206D6F7266;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v18 = v28;
  v17 = v29;
  v19 = v30;
  (*(v29 + 104))(v28, *MEMORY[0x277CB9F50], v30);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v17 + 8))(v18, v19);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v7, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables018GetContentOfFolderG0VGGGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249B9FA70;
  *(v22 + 32) = v27;
  *(v22 + 40) = v21;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t closure #2 in static FileAssistantIntents.intents.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = type metadata accessor for _AssistantIntent.Value();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

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

uint64_t closure #1 in closure #18 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA08D0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t closure #19 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables08GetFilesD0VGMd);
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v23 - v3;
  v5 = type metadata accessor for _AssistantIntent.PhraseToken();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables08GetFilesD0V_GMd);
  MEMORY[0x28223BE20](v10, v11);
  lazy protocol witness table accessor for type GetFilesIntent and conformance GetFilesIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 544499015;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  v25 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x206D6F726620;
  v13._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  (*(v6 + 104))(v9, *MEMORY[0x277CB9F50], v5);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v6 + 8))(v9, v5);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v28;
  v16 = *(v27 + 8);
  v16(v4, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x207463656C6553;
  v17._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v4, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables08GetFilesG0VGGGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_249B9FA70;
  *(v20 + 32) = v24;
  *(v20 + 40) = v19;
  v21 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v21;
}

uint64_t closure #1 in closure #20 in static FileAssistantIntents.intents.getter()
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

uint64_t closure #21 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables09MoveItemsD0VGMd);
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v3);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables09MoveItemsD0V_GMd);
  MEMORY[0x28223BE20](v6, v7);
  lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x2065766F4DLL;
  v8._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v27[2] = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);
  v31 = a1;

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 544175136;
  v9._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v33 = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v27[0] = v5;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = *(v2 + 8);
  v12 = v34;
  v11(v5, v34);
  v32 = v11;
  v27[1] = v2 + 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x2065766F4DLL;
  v13._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v15 = v27[0];
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v15, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x6C69662065766F4DLL;
  v16._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x796D206F746E6920;
  v17._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x7265646C6F6620;
  v18._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v15, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x2065766F4DLL;
  v19._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 544175136;
  v20._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._object = 0x8000000249BED340;
  v21._countAndFlagsBits = 0xD000000000000022;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v15, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables09MoveItemsG0VGGGMd);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_249BA08D0;
  v24 = v29;
  *(v23 + 32) = v30;
  *(v23 + 40) = v24;
  *(v23 + 48) = v28;
  *(v23 + 56) = v22;
  v25 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v25;
}

uint64_t closure #23 in static FileAssistantIntents.intents.getter()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables09MoveItemsD0VGMd);
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v0);
  v2 = &v21 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables09MoveItemsD0V_GMd);
  MEMORY[0x28223BE20](v3, v4);
  lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x2065766F4DLL;
  v5._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v23 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 544175136;
  v6._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v27 = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0xD000000000000020;
  v7._object = 0x8000000249BED2C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = *(v28 + 8);
  v28 += 8;
  v8 = v26;
  v22(v2, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x2065766F4DLL;
  v9._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544175136;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._object = 0x8000000249BED2F0;
  v11._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v22;
  v22(v2, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x6C69662065766F4DLL;
  v13._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x796D206F746E6920;
  v14._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0xD000000000000021;
  v15._object = 0x8000000249BED310;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v2, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables09MoveItemsG0VGGGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_249BA08C0;
  v18 = v24;
  *(v17 + 32) = v25;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v19;
}

uint64_t closure #22 in static FileAssistantIntents.intents.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v4 = type metadata accessor for _AssistantIntent.Value();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);

  lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v9 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10 = *(v5 + 8);
  v10(v8, v4);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v11 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10(v8, v4);
  swift_getKeyPath();
  lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Bool? and conformance <A> A?, &_sSbSgMd, &_sSbSgMR, lazy protocol witness table accessor for type Bool and conformance Bool);

  _AssistantIntent.Value.init<A>(for:builder:)();
  v12 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249BA08C0;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  *(v13 + 48) = v12;
  v14 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v14;
}

uint64_t closure #1 in closure #22 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #25 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v72 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables013CompressItemsD0VGMd);
  v2 = *(v1 - 8);
  v76 = v1;
  v77 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v62 - v4;
  v6 = type metadata accessor for _AssistantIntent.PhraseToken();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables013CompressItemsD0V_GMd);
  MEMORY[0x28223BE20](v11, v12);
  lazy protocol witness table accessor for type CompressItemsIntent and conformance CompressItemsIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x73736572706D6F43;
  v13._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v75 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 544106784;
  v14._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  (*(v7 + 104))(v10, *MEMORY[0x277CB9F50], v6);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v7 + 8))(v10, v6);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v69 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v76;
  v17 = *(v77 + 8);
  v77 += 8;
  v17(v5, v76);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x2065766968637241;
  v18._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 544175136;
  v19._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  v71 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type FINodeEntity? and conformance <A> A?, &_s26DocumentManagerExecutables12FINodeEntityVSgMd);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v68 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v73 = v17;
  v17(v5, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 544237914;
  v21._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._object = 0x8000000249BED190;
  v22._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  v74 = v5;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v67 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v5, v76);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x73736572706D6F43;
  v24._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._object = 0x8000000249BED1B0;
  v25._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v74;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v66 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28 = v76;
  v29 = v73;
  v73(v27, v76);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0xD00000000000001FLL;
  v30._object = 0x8000000249BED1D0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v74;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v65 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29(v32, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._countAndFlagsBits = 0x2065766968637241;
  v33._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 544432416;
  v34._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  swift_getKeyPath();
  v70 = lazy protocol witness table accessor for type CompressionFormat and conformance CompressionFormat();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  v36 = v74;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v64 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v37 = v76;
  v73(v36, v76);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38._countAndFlagsBits = 0x73736572706D6F43;
  v38._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v39._countAndFlagsBits = 544432416;
  v39._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v40);
  v41 = v74;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v63 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v42 = v37;
  v43 = v73;
  v73(v41, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v44._countAndFlagsBits = 0x2065766968637241;
  v44._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v44);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v45._countAndFlagsBits = 544432416;
  v45._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v45);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v46._countAndFlagsBits = 0x206F746E6920;
  v46._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v46);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v47);
  v48 = v74;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v62 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v49 = v48;
  v43(v48, v76);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v50._countAndFlagsBits = 0x73736572706D6F43;
  v50._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v50);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v51._countAndFlagsBits = 544432416;
  v51._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v51);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v52._countAndFlagsBits = 0xD000000000000011;
  v52._object = 0x8000000249BED1F0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v52);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v53);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v54 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v73(v49, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables013CompressItemsG0VGGGMd);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_249BB28A0;
  v56 = v68;
  *(v55 + 32) = v69;
  *(v55 + 40) = v56;
  v57 = v66;
  *(v55 + 48) = v67;
  *(v55 + 56) = v57;
  v58 = v64;
  *(v55 + 64) = v65;
  *(v55 + 72) = v58;
  v59 = v62;
  *(v55 + 80) = v63;
  *(v55 + 88) = v59;
  *(v55 + 96) = v54;
  v60 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v60;
}

uint64_t closure #26 in static FileAssistantIntents.intents.getter()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);

  lazy protocol witness table accessor for type CompressItemsIntent and conformance CompressItemsIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type FINodeEntity? and conformance <A> A?, &_s26DocumentManagerExecutables12FINodeEntityVSgMd);

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249B9FA70;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t closure #1 in closure #26 in static FileAssistantIntents.intents.getter()
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

uint64_t closure #2 in closure #26 in static FileAssistantIntents.intents.getter()
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

uint64_t closure #27 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v28[1] = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010RenameItemD0VGMd);
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v1);
  v3 = v28 - v2;
  v4 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables010RenameItemD0V_GMd);
  MEMORY[0x28223BE20](v9, v10);
  lazy protocol witness table accessor for type RenameItemIntent and conformance RenameItemIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20656D616E6552;
  v11._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v33 = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 544106784;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  (*(v5 + 104))(v8, *MEMORY[0x277CB9F50], v4);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v5 + 8))(v8, v4);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29 = *(v34 + 8);
  v34 += 8;
  v14 = v32;
  v29(v3, v32);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x20656D616E6552;
  v15._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 544175136;
  v16._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  lazy protocol witness table accessor for type String and conformance String();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v14;
  v19 = v29;
  v29(v3, v18);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._object = 0x8000000249BED0E0;
  v20._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 544175136;
  v21._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v3, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010RenameItemG0VGGGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_249BA08C0;
  v25 = v30;
  *(v24 + 32) = v31;
  *(v24 + 40) = v25;
  *(v24 + 48) = v23;
  v26 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v26;
}

uint64_t closure #30 in static FileAssistantIntents.intents.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v4 = type metadata accessor for _AssistantIntent.Value();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  lazy protocol witness table accessor for type RenameItemIntent and conformance RenameItemIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v9 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10 = *(v5 + 8);
  v10(v8, v4);
  swift_getKeyPath();
  lazy protocol witness table accessor for type String and conformance String();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v11 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10(v8, v4);
  swift_getKeyPath();
  lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Bool? and conformance <A> A?, &_sSbSgMd, &_sSbSgMR, lazy protocol witness table accessor for type Bool and conformance Bool);

  _AssistantIntent.Value.init<A>(for:builder:)();
  v12 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249BA08C0;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  *(v13 + 48) = v12;
  v14 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v14;
}

uint64_t closure #29 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v36 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010RenameItemD0VGMd);
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v1);
  v3 = &v33 - v2;
  v4 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables010RenameItemD0V_GMd);
  MEMORY[0x28223BE20](v9, v10);
  lazy protocol witness table accessor for type RenameItemIntent and conformance RenameItemIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20656D616E6552;
  v11._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v39 = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 544106784;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  (*(v5 + 104))(v8, *MEMORY[0x277CB9F50], v4);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v5 + 8))(v8, v4);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = *(v40 + 8);
  v40 += 8;
  v15 = v37;
  v14(v3, v37);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x20656D616E6552;
  v16._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 544175136;
  v17._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  v38 = lazy protocol witness table accessor for type String and conformance String();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0xD00000000000001FLL;
  v18._object = 0x8000000249BED0A0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v33 = v14;
  v34 = v19;
  v14(v3, v15);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x20656D616E6552;
  v20._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 544175136;
  v21._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._object = 0x8000000249BED0C0;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24 = v37;
  v14(v3, v37);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x8000000249BED0E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 544175136;
  v26._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._object = 0x8000000249BED100;
  v27._countAndFlagsBits = 0xD00000000000001ALL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v33(v3, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010RenameItemG0VGGGMd);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_249BA08D0;
  v30 = v34;
  *(v29 + 32) = v35;
  *(v29 + 40) = v30;
  *(v29 + 48) = v23;
  *(v29 + 56) = v28;
  v31 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v31;
}

uint64_t closure #1 in closure #28 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #2 in closure #28 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249BA2880;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t closure #31 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v2 = type metadata accessor for _AssistantIntent.PhraseToken();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables011SaveToFilesD0VGMd);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables011SaveToFilesD0V_GMd);
  MEMORY[0x28223BE20](v9, v10);
  lazy protocol witness table accessor for type SaveToFilesIntent and conformance SaveToFilesIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x2065766153;
  v11._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v35[1] = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 544175136;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  v41 = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();
  v35[0] = a1;

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v43;
  v16 = *(v42 + 8);
  v42 += 8;
  v39 = v14;
  v40 = v16;
  v16(v8, v43);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x2065766153;
  v17._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 544106784;
  v18._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v36;
  v20 = v37;
  v21 = v38;
  (*(v37 + 104))(v36, *MEMORY[0x277CB9F50], v38);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v20 + 8))(v19, v21);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v40(v8, v15);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x6C69662065766153;
  v23._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x796D206F746E6920;
  v24._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0x7265646C6F6620;
  v25._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26 = v40;
  v40(v8, v43);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 543450177;
  v27._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 0x20656874206F7420;
  v28._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0x6F74636572696420;
  v29._object = 0xEA00000000007972;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26(v8, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables011SaveToFilesG0VGGGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_249BA08D0;
  v32 = v38;
  *(v31 + 32) = v39;
  *(v31 + 40) = v32;
  *(v31 + 48) = v37;
  *(v31 + 56) = v30;
  v33 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v33;
}

uint64_t closure #32 in static FileAssistantIntents.intents.getter()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd);

  lazy protocol witness table accessor for type SaveToFilesIntent and conformance SaveToFilesIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249B9FA70;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t closure #1 in closure #32 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #2 in closure #22 in static FileAssistantIntents.intents.getter()
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

uint64_t static FileAssistantIntents.negativePhrases.getter()
{
  v0 = type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent();
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

uint64_t closure #1 in static FileAssistantIntents.negativePhrases.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249B9A480;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t protocol witness for static _AssistantIntentsProvider.negativePhrases.getter in conformance FileAssistantIntents()
{
  v0 = type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent();
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

uint64_t specialized static FileAssistantIntents.intents.getter()
{
  v0 = type metadata accessor for _AssistantIntent();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Folder = specialized QuickLookFileIntent.init()(v3);
  lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v51 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6 = *(v1 + 8);
  v6(v5, v0);
  Folder = specialized RevealItemsIntent.init()();
  lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v50 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v5, v0);
  Folder = specialized CreateFolderIntent.init()();
  v53 = v7;
  v54 = v8;
  lazy protocol witness table accessor for type CreateFolderIntent and conformance CreateFolderIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v49 = static _AssistantIntent.Builder.buildExpression(_:)();
  v9 = (v6)(v5, v0);
  Folder = specialized DuplicateItemsIntent.init()(v9);
  lazy protocol witness table accessor for type DuplicateItemsIntent and conformance DuplicateItemsIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v48 = static _AssistantIntent.Builder.buildExpression(_:)();
  v10 = (v6)(v5, v0);
  Folder = specialized TrashItemsIntent.init()(v10);
  lazy protocol witness table accessor for type TrashItemsIntent and conformance TrashItemsIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v47 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v5, v0);
  Folder = specialized FavoriteFoldersIntent.init()();
  v53 = v11;
  lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v46 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v5, v0);
  Folder = specialized FavoriteFoldersIntent.init()();
  v53 = v12;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v45 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v5, v0);
  Folder = specialized FavoriteFoldersIntent.init()();
  v53 = v13;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v44 = static _AssistantIntent.Builder.buildExpression(_:)();
  v14 = (v6)(v5, v0);
  Folder = specialized GetContentOfFolderIntent.init()(v14);
  lazy protocol witness table accessor for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v43 = static _AssistantIntent.Builder.buildExpression(_:)();
  v15 = (v6)(v5, v0);
  Folder = specialized GetFilesIntent.init()(v15);
  lazy protocol witness table accessor for type GetFilesIntent and conformance GetFilesIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v42 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v5, v0);
  Folder = specialized MoveItemsIntent.init()();
  v53 = v16;
  v54 = v17;
  lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v18 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v5, v0);
  Folder = specialized MoveItemsIntent.init()();
  v53 = v19;
  v54 = v20;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v21 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v5, v0);
  Folder = specialized CompressItemsIntent.init()();
  v53 = v22;
  v54 = v23;
  lazy protocol witness table accessor for type CompressItemsIntent and conformance CompressItemsIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v24 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v5, v0);
  Folder = specialized RenameItemIntent.init()();
  v53 = v25;
  v54 = v26;
  lazy protocol witness table accessor for type RenameItemIntent and conformance RenameItemIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v27 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v5, v0);
  Folder = specialized RenameItemIntent.init()();
  v53 = v28;
  v54 = v29;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v30 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v5, v0);
  Folder = specialized SaveToFilesIntent.init()();
  v53 = v31;
  lazy protocol witness table accessor for type SaveToFilesIntent and conformance SaveToFilesIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v32 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v5, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentVGGMd);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_249BB28C0;
  v34 = v50;
  *(v33 + 32) = v51;
  *(v33 + 40) = v34;
  v35 = v48;
  *(v33 + 48) = v49;
  *(v33 + 56) = v35;
  v36 = v46;
  *(v33 + 64) = v47;
  *(v33 + 72) = v36;
  v37 = v44;
  *(v33 + 80) = v45;
  *(v33 + 88) = v37;
  v38 = v42;
  *(v33 + 96) = v43;
  *(v33 + 104) = v38;
  *(v33 + 112) = v18;
  *(v33 + 120) = v21;
  *(v33 + 128) = v24;
  *(v33 + 136) = v27;
  *(v33 + 144) = v30;
  *(v33 + 152) = v32;
  v39 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v39;
}

unint64_t lazy protocol witness table accessor for type DuplicateItemsIntent and conformance DuplicateItemsIntent()
{
  result = lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent;
  if (!lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent;
  if (!lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent;
  if (!lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent()
{
  result = lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent;
  if (!lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent;
  if (!lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent;
  if (!lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent;
  if (!lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetFilesIntent and conformance GetFilesIntent()
{
  result = lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent;
  if (!lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent;
  if (!lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent;
  if (!lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent()
{
  result = lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent;
  if (!lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent;
  if (!lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent;
  if (!lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent;
  if (!lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent;
  if (!lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompressItemsIntent and conformance CompressItemsIntent()
{
  result = lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent;
  if (!lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent;
  if (!lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent;
  if (!lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent;
  if (!lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type Bool and conformance Bool()
{
  result = lazy protocol witness table cache variable for type Bool and conformance Bool;
  if (!lazy protocol witness table cache variable for type Bool and conformance Bool)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Bool and conformance Bool);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompressionFormat and conformance CompressionFormat()
{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FavoriteFolderOperation and conformance FavoriteFolderOperation()
{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection<>.removeLast(_:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3 = a2;
    if (!(*v3 >> 62))
    {
      v4 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = -v4;
      if (!__OFSUB__(0, v4))
      {
        goto LABEL_5;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  v8 = result;
  v10 = a3;
  v9 = __CocoaSet.count.getter();
  a3 = v10;
  v4 = v9;
  result = v8;
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_19;
  }

LABEL_5:
  v6 = -result;
  if (v5 <= 0 && v5 > v6)
  {
    goto LABEL_22;
  }

  result = v4 - result;
  if (__OFADD__(v4, v6))
  {
    goto LABEL_20;
  }

  if (v4 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return a3();
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1)
{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, type metadata accessor for DOCItemCollectionCell);
}

{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C1FC540](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (!swift_dynamicCastObjCProtocolConditional())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __CocoaSet.count.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return v8;
}

{
  v6 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    __CocoaSet.count.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v5);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1, void (*a2)(void))
{
  v10 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
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
          goto LABEL_14;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a2(0);
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v8 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __CocoaSet.count.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return v10;
}

id DOCBrowserNavigationDataSource.historyDataSource.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_historyDataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCBrowserNavigationDataSource.historyDataSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_historyDataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Class @objc DOCBrowserNavigationDataSource.containerControllers.getter(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void))
{
  v6 = *a3;
  swift_beginAccess();
  if (*(a1 + v6))
  {
    a4(0);

    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

void @objc DOCBrowserNavigationDataSource.containerControllers.setter(char *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t *a5)
{
  v6 = a3;
  if (a3)
  {
    a4(0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = *a5;
  swift_beginAccess();
  *&a1[v8] = v6;
  v9 = a1;

  (*((*MEMORY[0x277D85000] & *v9) + 0x188))(v10);
}

uint64_t key path setter for DOCBrowserNavigationDataSource.containerControllers : DOCBrowserNavigationDataSource(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return (*((*MEMORY[0x277D85000] & *v6) + 0x188))(v8);
}

uint64_t DOCBrowserNavigationDataSource.currentViewControllers.getter()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x188))() == 3)
  {
    v2 = (*((*v1 & *v0) + 0xD8))();
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = (*((*v1 & *v0) + 0xC0))();
    if (!v2)
    {
LABEL_9:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  v3 = v2;
  if (v2 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    v4 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    v4 = v3;
  }

  return v4;
}

uint64_t DOCBrowserNavigationDataSource.currentViewControllers.setter(unint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x188);
  if (v3() == 3)
  {
    v4 = specialized _arrayConditionalCast<A, B>(_:)(a1, type metadata accessor for DOCColumnViewController);

    if (v4)
    {
      v5 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_columnViewControllers;
LABEL_6:
      swift_beginAccess();
      *(v1 + v5) = v4;

      return (v3)(v6);
    }
  }

  else
  {
    v4 = specialized _arrayConditionalCast<A, B>(_:)(a1, type metadata accessor for DOCBrowserContainerController);

    if (v4)
    {
      v5 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_containerControllers;
      goto LABEL_6;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*DOCBrowserNavigationDataSource.currentViewControllers.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = DOCBrowserNavigationDataSource.currentViewControllers.getter();
  return DOCBrowserNavigationDataSource.currentViewControllers.modify;
}

uint64_t DOCBrowserNavigationDataSource.currentViewControllers.modify(unint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return DOCBrowserNavigationDataSource.currentViewControllers.setter(*a1);
  }

  DOCBrowserNavigationDataSource.currentViewControllers.setter(v2);
}

uint64_t DOCBrowserNavigationDataSource.currentContainers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_currentContainers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall DOCBrowserNavigationDataSource.popLastViewController()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x118))(v16);
  v5 = v3;
  if (!(*v3 >> 62))
  {
    if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_15;
  }

LABEL_3:
  v6 = specialized Array._customRemoveLast()(specialized _ArrayBuffer._consumeAndCreateNew());
  if (v6)
  {
    goto LABEL_7;
  }

  if (*v5 >> 62)
  {
    goto LABEL_18;
  }

  v7 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  while (1)
  {
    v6 = specialized Array.remove(at:)(v9);
LABEL_7:

    v4(v16, 0);
    v1 = (*((*v2 & *v1) + 0x100))(v16);
    v5 = v10;
    if (*v10 >> 62)
    {
      break;
    }

    if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    v14 = __CocoaSet.count.getter();
    v8 = __OFSUB__(v14, 1);
    v9 = v14 - 1;
    if (v8)
    {
      goto LABEL_20;
    }
  }

LABEL_16:
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_17;
  }

LABEL_9:
  v11 = specialized Array._customRemoveLast()(specialized _ArrayBuffer._consumeAndCreateNew());
  if (v11)
  {
LABEL_13:

    (v1)(v16, 0);
    return;
  }

  if (*v5 >> 62)
  {
LABEL_21:
    v15 = __CocoaSet.count.getter();
    v8 = __OFSUB__(v15, 1);
    v13 = v15 - 1;
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v11 = specialized Array.remove(at:)(v13);
    goto LABEL_13;
  }

  v12 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_23:
  __break(1u);
}

uint64_t DOCBrowserNavigationDataSource.shortDebugID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_shortDebugID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void DOCBrowserNavigationDataSource.shortDebugID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_shortDebugID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v2) + 0xA8))(v6);
  v9 = *v5;
  v10 = v5[1];
  v11 = *((*v7 & *v8) + 0x70);

  v11(v9, v10);
}

void (*DOCBrowserNavigationDataSource.shortDebugID.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_shortDebugID;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCBrowserNavigationDataSource.shortDebugID.modify;
}

void DOCBrowserNavigationDataSource.shortDebugID.modify(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = (v5 + v3[4]);
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v5) + 0xA8))(v4);
    v9 = *v6;
    v10 = v6[1];
    v11 = *((*v7 & *v8) + 0x70);

    v11(v9, v10);
  }

  free(v3);
}

uint64_t (*DOCBrowserNavigationDataSource.updateObserver.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_updateObserver;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCBrowserNavigationDataSource.updateObserver.modify;
}

uint64_t (*DOCBrowserNavigationDataSource.itemProvider.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_itemProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCItemInfoContentViewController.actionDelegate.modify;
}

uint64_t DOCBrowserNavigationDataSource.viewStyleInFlight.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyleInFlight;
  swift_beginAccess();
  return *v1;
}

uint64_t DOCBrowserNavigationDataSource.viewStyleInFlight.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyleInFlight;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t DOCBrowserNavigationDataSource.viewStyle.didset(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyle;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 == a1 || a1 != 3 && v5 != 3)
  {
    return result;
  }

  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v1) + 0x108))(result);
  if (v5 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249BA0290;
    v9 = (*((*v6 & *v1) + 0x158))();
    if (!v9)
    {
      goto LABEL_80;
    }

    v10 = v9;
    type metadata accessor for DOCBrowserContainerController();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = [v10 provideColumnViewControllerWithContains_];
    swift_unknownObjectRelease();

    *(v8 + 32) = v12;
    v13 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_columnViewControllers;
    swift_beginAccess();
    *(v1 + v13) = v8;

    v15 = *((*v6 & *v1) + 0x188);
    v15(v14);
    v16 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_containerControllers;
    swift_beginAccess();
    *(v1 + v16) = 0;

    v18 = (v15)(v17);
    goto LABEL_73;
  }

  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables29DOCBrowserContainerControllerC_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (v7 >> 62)
  {
LABEL_60:
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = v1;
  v70 = v20;
  v71 = v7;
  if (!v20)
  {
    goto LABEL_43;
  }

  v21 = 0;
  v22 = v7 & 0xC000000000000001;
  v66 = v7 & 0xFFFFFFFFFFFFFF8;
  v68 = v7 & 0xC000000000000001;
  do
  {
    if (v22)
    {
      v23 = MEMORY[0x24C1FC540](v21, v7);
    }

    else
    {
      if (v21 >= *(v66 + 16))
      {
        goto LABEL_59;
      }

      v23 = *(v7 + 8 * v21 + 32);
    }

    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v25 = v6;
    v26 = *((*v6 & *v23) + 0x208);
    v7 = v23;
    v6 = v26();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v19;
    v1 = v19;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    v30 = v19[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_55;
    }

    v34 = v29;
    if (v19[3] < v33)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
      v1 = v72;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_79;
      }

LABEL_23:
      v19 = v72;
      if (v34)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v1 = &v72;
    v38 = v28;
    specialized _NativeDictionary.copy()();
    v28 = v38;
    v19 = v72;
    if (v34)
    {
LABEL_11:
      *(v19[7] + v28) = v6 & 1;

      goto LABEL_12;
    }

LABEL_24:
    v19[(v28 >> 6) + 8] |= 1 << v28;
    *(v19[6] + 8 * v28) = v7;
    *(v19[7] + v28) = v6 & 1;
    v36 = v19[2];
    v32 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v32)
    {
      goto LABEL_58;
    }

    v19[2] = v37;
LABEL_12:
    v6 = v25;
    v1 = v7;
    (*((*v25 & *v7) + 0x210))(0);

    ++v21;
    v20 = v70;
    v7 = v71;
    v22 = v68;
  }

  while (v24 != v70);
  v67 = v19;
  if (v70 < 1)
  {
    goto LABEL_78;
  }

  for (i = 0; i != v70; ++i)
  {
    if (v68)
    {
      v40 = MEMORY[0x24C1FC540](i, v71);
    }

    else
    {
      v40 = *(v71 + 8 * i + 32);
    }

    v41 = v40;
    [v40 doc:0 removeFromParentWithRemoveSubviewBlock:?];
  }

  for (j = 0; j != v70; ++j)
  {
    if (v68)
    {
      v43 = MEMORY[0x24C1FC540](j, v71);
    }

    else
    {
      v43 = *(v71 + 8 * j + 32);
    }

    v44 = v43;
    if (v67[2])
    {
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
      if (v46)
      {
        (*((*v6 & *v44) + 0x210))(*(v67[7] + v45));
      }
    }
  }

  v1 = v65;
LABEL_43:
  v47 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_containerControllers;
  swift_beginAccess();
  v19 = *(v1 + v47);
  *(v1 + v47) = v7;

  v49 = *((*v6 & *v1) + 0x188);
  v50 = v49(v48);
  v51 = (*((*v6 & *v1) + 0xD8))(v50);
  if (v51)
  {
    v52 = v51;
    v53 = v51 & 0xFFFFFFFFFFFFFF8;
    v69 = v49;
    if (v51 >> 62)
    {
      v54 = __CocoaSet.count.getter();
      if (v54)
      {
LABEL_46:
        v7 = 0;
        v55 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v52 & 0xC000000000000001) != 0)
          {
            v56 = MEMORY[0x24C1FC540](v7, v52);
          }

          else
          {
            if (v7 >= *(v53 + 16))
            {
              goto LABEL_57;
            }

            v56 = *(v52 + 8 * v7 + 32);
          }

          v1 = v56;
          v19 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            break;
          }

          (*((*v6 & *v56) + 0xB8))(v55);

          ++v7;
          if (v19 == v54)
          {
            goto LABEL_62;
          }
        }

LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    else
    {
      v54 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
        goto LABEL_46;
      }
    }

LABEL_62:

    v20 = v70;
    v7 = v71;
    v49 = v69;
  }

  v57 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_columnViewControllers;
  swift_beginAccess();
  *(v65 + v57) = 0;

  v49(v58);
  if (!v20)
  {
LABEL_72:

    v1 = v65;
LABEL_73:
    result = (*((*v6 & *v1) + 0x140))(v18);
    if (result)
    {
      v63 = result;
      (*((*v6 & *v1) + 0xF0))();
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
      v64 = Array._bridgeToObjectiveC()().super.isa;

      [v63 dataSource:v1 didUpdate:v64 animated:0];

      return swift_unknownObjectRelease();
    }

    return result;
  }

  v59 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x24C1FC540](v59, v7);
    }

    else
    {
      if (v59 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v60 = *(v7 + 8 * v59 + 32);
    }

    v61 = v60;
    v62 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    (*((*v6 & *v60) + 0x240))([v60 navigationItem]);

    ++v59;
    if (v62 == v20)
    {
      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  type metadata accessor for DOCBrowserContainerController();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_80:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}