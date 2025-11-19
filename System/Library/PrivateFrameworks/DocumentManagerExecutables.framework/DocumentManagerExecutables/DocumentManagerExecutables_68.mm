void DOCSidebarViewController.collectionView(_:dropSessionDidExit:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(*static DOCSidebarViewController.dbg.shared + 144);

  v1(0xD00000000000001BLL, 0x8000000249BFB910);

  (*((*MEMORY[0x277D85000] & *v0) + 0x3E0))(0);

  DOCSidebarViewController.updateDropPointIndicatorView()();
}

void DOCSidebarViewController.collectionView(_:dropSessionDidEnd:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(*static DOCSidebarViewController.dbg.shared + 144);

  v1(0xD000000000000026, 0x8000000249BFB930);

  (*((*MEMORY[0x277D85000] & *v0) + 0x3E0))(0);

  DOCSidebarViewController.updateDropPointIndicatorView()();
}

uint64_t DOCSidebarViewController._collectionView(_:dataOwnerFor:withDestinationIndexPath:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(a3, 1, v9);
  result = 0;
  if (v12 != 1 && a2 != 0)
  {
    outlined init with copy of DOCGridLayout.Spec?(a3, v8, &_s10Foundation9IndexPathVSgMd);
    result = v11(v8, 1, v9);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v15 = specialized DOCSidebarViewController.dataOwnerForSession(_:at:)(v8);
      (*(v10 + 8))(v8, v9);
      return v15;
    }
  }

  return result;
}

uint64_t DOCSidebarViewController.indexOfLastReorderableItem(in:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x440))();
  v31 = ObjectType;
  v32 = a2;
  result = (*(a2 + 72))(v5, ObjectType, a2);
  v7 = *(result + 16);
  if (!v7)
  {
LABEL_20:

    return 0;
  }

  v8 = result + 48 * v7;
  v33 = result;
  while (v7 <= *(result + 16))
  {
    if (*(v8 + 24) <= 2u)
    {
      if (*(v8 + 24) != 1)
      {
        goto LABEL_19;
      }

      v9 = *(v8 - 16);
      v10 = *(v8 + 8);
      v34 = *(v8 - 8);
      v35 = *v8;
      v11 = *(v8 + 16);
      v12 = v9;
      v13 = [v12 identifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {

        v20 = v9;
        v21 = v34;
        v22 = v35;
        v23 = v10;
        v24 = v11;
        goto LABEL_14;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        v20 = v9;
        v21 = v34;
        v22 = v35;
        v24 = v11;
        v23 = v10;
LABEL_14:
        outlined consume of DOCSidebarItem(v20, v21, v22, v23, v24, 1u);
        result = v33;
        goto LABEL_3;
      }

      v25 = [v12 identifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
      if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
      {
        outlined consume of DOCSidebarItem(v9, v34, v35, v10, v11, 1u);

        result = v33;
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined consume of DOCSidebarItem(v9, v34, v35, v10, v11, 1u);

        result = v33;
        if ((v30 & 1) == 0)
        {
LABEL_19:

          return ((*(v32 + 64))(v31) & 1) + v7 - 1;
        }
      }
    }

LABEL_3:
    v8 -= 48;
    if (!--v7)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in closure #1 in DOCSidebarViewController.commitUpdateItemOrderingInSection(_:newItemOrdering:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v4;
    if (!v4)
    {
      v5._countAndFlagsBits = 0x655274696D6D6F63;
      v5._object = 0xED0000726564726FLL;
      DOCSidebarViewController.endDeferReloadsForUIChange(logID:reloadImmediately:)(v5, 0);
    }
  }
}

void closure #1 in DOCSidebarViewController.performDrop(in:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v48 = a3;
  v53 = a1;
  v51 = type metadata accessor for Date();
  v44 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCAtomicValue33_B786C5C7D45A7A03AF0BA2F875479699LLCySbGMd);
  swift_allocObject();
  v9 = specialized DOCAtomicValue.init(wrappedValue:)(0);
  v52 = a2;
  v10 = DOCSidebarViewController.outlineSectionContentItems(in:)(2);
  v11 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v12 = *(v10 + 16);
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
LABEL_2:
  v15 = v10 + (v13 << 6);
  while (v12 != v13)
  {
    if (v13 >= *(v10 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v16 = (v15 + 64);
    ++v13;
    v17 = *(v15 + 88);
    if (v17 == 3)
    {
      outlined copy of DOCSidebarItem(*(v15 + 48), *(v15 + 56), *v16, *(v15 + 72), *(v15 + 80), 3u);

      goto LABEL_9;
    }

    v15 += 64;
    if (!v17)
    {
      v18 = outlined copy of DOCSidebarItem(*(v16 - 2), *(v16 - 1), *v16, v16[1], v16[2], 0);
LABEL_9:
      MEMORY[0x24C1FB090](v18);
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = aBlock[0];
      goto LABEL_2;
    }
  }

  v46 = v14;
  v47 = 0;

  v19._countAndFlagsBits = 0xD000000000000029;
  v19._object = 0x8000000249BFBC40;
  DOCSidebarViewController.beginDeferReloadsForUIChange(logID:)(v19);
  v20 = 0;
  aBlock[0] = v11;
  v21 = *(v53 + 16);
  v22 = v53 + 40;
  v45 = v53 + 40;
LABEL_13:
  v23 = v22 + 16 * v20;
  while (v21 != v20)
  {
    if (v20 >= v21)
    {
      goto LABEL_27;
    }

    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_28;
    }

    v25 = *(v23 - 8);
    swift_getObjectType();
    v26 = v25;
    swift_unknownObjectRetain();
    v27 = DOCNode.fpfs_syncFetchFPItem()();
    swift_unknownObjectRelease();

    ++v20;
    v23 += 16;
    if (v27)
    {
      MEMORY[0x24C1FB090]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v11 = aBlock[0];
      v20 = v24;
      v22 = v45;
      goto LABEL_13;
    }
  }

  v28 = v48;
  v29 = v52;
  DOCSidebarViewController.updateDiffableDataSourceByInsertingFavorites(_:at:)(v11, v48);
  v30._object = 0x8000000249BFBC70;
  v30._countAndFlagsBits = 0xD00000000000001CLL;
  DOCSidebarViewController.beginDeferReloadsForUIChange(logID:)(v30);
  ObjectType = swift_getObjectType();
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  v33 = v29;
  UICollectionViewDropCoordinator.dropDOCDragInfos(_:at:existingFPItemsInSection:animationCompletion:)(v53, v28, v46, partial apply for closure #3 in closure #1 in DOCSidebarViewController.performDrop(in:with:), v32, ObjectType);

  v34 = [objc_opt_self() sharedManager];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v36 = swift_allocObject();
  *(v36 + 16) = v9;
  *(v36 + 24) = v33;
  aBlock[4] = partial apply for closure #4 in closure #1 in DOCSidebarViewController.performDrop(in:with:);
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_21_6;
  v37 = _Block_copy(aBlock);
  v38 = v33;

  [v34 insertFavorites:isa atIndex:v50 completion:v37];
  _Block_release(v37);

  v39 = [objc_opt_self() mainRunLoop];
  Current = CFAbsoluteTimeGetCurrent();
  OS_dispatch_queue.sync<A>(execute:)();
  v41 = v51;
  if ((aBlock[0] & 1) == 0)
  {
    v42 = (v44 + 8);
    do
    {
      if (CFAbsoluteTimeGetCurrent() - Current > 0.25)
      {
        break;
      }

      Date.init(timeIntervalSinceNow:)();
      v43 = Date._bridgeToObjectiveC()().super.isa;
      (*v42)(v8, v41);
      [v39 runUntilDate_];

      OS_dispatch_queue.sync<A>(execute:)();
    }

    while ((aBlock[0] & 1) == 0);
  }
}

uint64_t UICollectionViewDropCoordinator.dropDOCDragInfos(_:at:existingFPItemsInSection:animationCompletion:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v52 = a3;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for disableWorkaroundFor42669798 != -1)
  {
LABEL_37:
    swift_once();
  }

  if (disableWorkaroundFor42669798)
  {
    goto LABEL_3;
  }

  v25 = [objc_opt_self() mainBundle];
  v26 = [v25 bundleIdentifier];

  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_32:

    return (a4)(v35);
  }

  v27 = a4;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v30)
  {
    a4 = v27;
    goto LABEL_32;
  }

  if (v28 == v31 && v30 == v32)
  {

    a4 = v27;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a4 = v27;
    if ((v34 & 1) == 0)
    {
      return (a4)(v35);
    }
  }

LABEL_3:
  v46 = v11;
  v47 = a5;
  v56 = 0;
  v15 = *(v11 + 2);
  v48 = v10;
  isUniquelyReferenced_nonNull_native = v15(v14, a2, v10);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    a2 = 0;
    a5 = a1 + 32;
    v51 = MEMORY[0x277D84F90];
    v44 = a4;
    v45 = v14;
    do
    {
      a4 = v11;
      while (1)
      {
        if (a4 >= v10)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v11 = (a4 + 1);
        if (__OFADD__(a4, 1))
        {
          goto LABEL_36;
        }

        v53 = *(a5 + 16 * a4);
        a1 = *(&v53 + 1);
        swift_getObjectType();
        v18 = v53;
        swift_unknownObjectRetain();
        v19 = DOCNode.fpfs_syncFetchFPItem()();
        if (v19)
        {
          v21 = v19;
          v14 = &v43;
          v55 = v19;
          MEMORY[0x28223BE20](v19, v20);
          *(&v43 - 2) = &v55;
          v22 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySo6FPItemCG_TG5TA_0, (&v43 - 4), v52);

          if ((v22 & 1) == 0)
          {
            break;
          }
        }

        swift_unknownObjectRelease();

        ++a4;
        if (v11 == v10)
        {
          a4 = v44;
          v14 = v45;
          goto LABEL_27;
        }
      }

      a1 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16) + 1, 1);
        a1 = aBlock[0];
      }

      a4 = v44;
      v14 = v45;
      v24 = *(a1 + 16);
      v23 = *(a1 + 24);
      if (v24 >= v23 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        a1 = aBlock[0];
      }

      *(a1 + 16) = v24 + 1;
      v51 = a1;
      *(a1 + 16 * v24 + 32) = v53;
    }

    while (v11 != v10);
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

LABEL_27:
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v17);
  *(&v43 - 4) = v49;
  *(&v43 - 3) = &v56;
  v36 = v51;
  *(&v43 - 2) = v50;
  *(&v43 - 1) = v14;
  specialized Sequence.forEach(_:)(partial apply for closure #2 in UICollectionViewDropCoordinator.dropDOCDragInfos(_:at:existingFPItemsInSection:animationCompletion:), (&v43 - 6), v36);

  v38 = v56;
  if (v56)
  {
    v39 = swift_allocObject();
    v40 = v47;
    *(v39 + 16) = a4;
    *(v39 + 24) = v40;
    aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
    aBlock[3] = &block_descriptor_36_2;
    v41 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v38 addCompletion_];
    _Block_release(v41);
    swift_unknownObjectRelease();
    (*(v46 + 1))(v14, v48);
    return swift_unknownObjectRelease();
  }

  else
  {
    (a4)(v37);
    return (*(v46 + 1))(v14, v48);
  }
}

void closure #4 in closure #1 in DOCSidebarViewController.performDrop(in:with:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = swift_allocObject();
  v4[2] = closure #1 in closure #4 in closure #1 in DOCSidebarViewController.performDrop(in:with:);
  v4[3] = 0;
  v4[4] = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for specialized closure #1 in DOCAtomicValue.mutate(_:);
  *(v5 + 24) = v4;
  v8[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_30_1;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v7._object = 0x8000000249BFBC40;
    v7._countAndFlagsBits = 0xD000000000000029;
    DOCSidebarViewController.endDeferReloadsForUIChange(logID:reloadImmediately:)(v7, 0);
  }
}

uint64_t closure #2 in DOCSidebarViewController.performDrop(in:with:)(unint64_t a1, id a2, void *a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_18:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v13 = a2;
      v6 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](v6, a1);
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          swift_unknownObjectRetain();
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v11 = v15;
            a2 = v13;
            if ((v15 & 0x8000000000000000) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_26;
          }
        }

        swift_getObjectType();
        v8 = DOCNode.fpfs_syncFetchFPItem()();
        if (v8 && (v9 = v8, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem), a2 = a3, v10 = static NSObject.== infix(_:_:)(), v9, a2, (v10 & 1) != 0))
        {
          swift_unknownObjectRelease();
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          a2 = *(v15 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v6;
        if (v7 == v5)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v11 & 0x4000000000000000) == 0)
  {
    if (*(v11 + 16) <= 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_26:
  if (__CocoaSet.count.getter() > 0)
  {
LABEL_22:
    _sSo6FPItemC26DocumentManagerExecutablesE11performDrop_9underItem15alertPresenting10completionySaySo7DOCNode_pG_SoAH_pSo16UIViewControllerCyAISgcSgtFZTf4nennn_nAB_Tt3g5(v11, a3, a2, 0, 0);
  }

LABEL_23:
}

uint64_t DOCImmutableSidebarSection.fpItems(forEditingMode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 72))();
  v4 = result;
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v7 = *(result + 16);
  v8 = result - 16;
LABEL_2:
  v9 = (v8 + 48 * v5);
  while (1)
  {
    if (v7 == v5)
    {

      return v6;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    ++v5;
    v10 = v9 + 6;
    v11 = *(v9 + 88);
    if (v11)
    {
      v12 = v11 == 3;
    }

    else
    {
      v12 = 1;
    }

    v9 = v10;
    if (v12)
    {
      v13 = *v10;
      MEMORY[0x24C1FB090]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCSidebarViewController.indexPathForAppendingToSectionAboveSection(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v21 - v12;
  DOCSidebarViewController.diffableSnapshot()();
  MEMORY[0x24C1F80E0](0, a1);
  v14 = IndexPath.section.getter();
  v15 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((v14 & 0x8000000000000000) != 0 || v14 >= *(v15 + 16))
  {
    (*(v5 + 8))(v8, v4);

    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v16 = v15 + 16 * v14;
    v17 = *(v16 + 32);
    v18 = *(v16 + 40);
    swift_unknownObjectRetain();

    (*(v5 + 8))(v8, v4);
    if (specialized NSDiffableDataSourceSnapshot<>.outlineSection(aboveSection:visibleOnly:)(v17, v18, 1))
    {
      specialized NSDiffableDataSourceSnapshot<>.indexPathForAppendingItem(toSection:)(v19, a2);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return (*(v10 + 8))(v13, v9);
    }

    (*(v10 + 8))(v13, v9);
    swift_unknownObjectRelease();
  }

  return (*(v5 + 56))(a2, 1, 1, v4);
}

uint64_t destinationItem #1 (logIfMissing:) in DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v23);
  (*(v5 + 8))(v8, v4);
  if (!v23[0] || (v21 = v25, v22 = v24, v15 = v26, v16 = v27, v28[0] = v23[0], v28[1] = v23[1], outlined destroy of DOCSidebarViewController.OutlineSection(v28), v16 == 255))
  {
    result = (*(v10 + 8))(v13, v9);
    v18 = 0uLL;
    if (a1)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_249B9A480;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v20 + 32) = 0xD00000000000001ELL;
      *(v20 + 40) = 0x8000000249BFBB60;
      os_log(_:dso:log:type:_:)();

      v15 = 0;
      LOBYTE(v16) = -1;
      v19 = 0uLL;
      v18 = 0uLL;
    }

    else
    {
      v15 = 0;
      LOBYTE(v16) = -1;
      v19 = 0uLL;
    }
  }

  else
  {
    result = (*(v10 + 8))(v13, v9);
    v19 = v21;
    v18 = v22;
  }

  *a2 = v18;
  *(a2 + 16) = v19;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

uint64_t operationIfInsertingInto #1 () in DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  destinationItem #1 (logIfMissing:) in DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(1, &v57);
  if (v62 == 255)
  {
    return 0;
  }

  v11 = v57;
  if (v62 == 3)
  {
    outlined copy of DOCSidebarItem(v57, v58, v59, v60, v61, 3u);

    if ((a3 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_21:
    outlined destroy of CharacterSet?(&v57, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);

    return 0;
  }

  if (v62)
  {
LABEL_30:
    outlined destroy of CharacterSet?(&v57, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    return 0;
  }

  outlined copy of DOCSidebarItem(v57, v58, v59, v60, v61, 0);
  if (a3)
  {
    goto LABEL_21;
  }

LABEL_5:
  v12 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  ObjectType = swift_getObjectType();
  if ((specialized static FPItem.sessionContainsDOCNode(_:)(a4, v12) & 1) == 0)
  {
    specialized static DOCDocumentSource.sourcesFromDropSession(_:)(a4);
    if (v22 >> 62)
    {
      v23 = __CocoaSet.count.getter();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23 >= 1 || ((specialized static DOCTag.tagsFromDropSession(_:)(a4), v24 >> 62) ? (v25 = __CocoaSet.count.getter()) : (v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v25 >= 1))
    {

      goto LABEL_30;
    }

    v34 = UIDropSession.uniqueUTIsForDragItems.getter();
    v35 = v34;
    v36 = *(v34 + 16);
    if (v36)
    {
      v37 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v34 + 16), 0);
      v38 = specialized Sequence._copySequenceContents(initializing:)(&v56, v37 + 4, v36, v35);
      outlined consume of Set<UITouch>.Iterator._Variant();
      if (v38 == v36)
      {
LABEL_42:
        v39 = [objc_opt_self() defaultManager];
        isa = Array._bridgeToObjectiveC()().super.isa;

        v41 = [v39 eligibleActionsForDroppingUTIs:isa underItem:v11];

        type metadata accessor for FPAction(0);
        _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
        v42 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if (specialized Set.contains(_:)(*MEMORY[0x277CC6048], v42))
        {

          outlined destroy of CharacterSet?(&v57, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);

          return 2;
        }

        v31 = specialized Set.contains(_:)(*MEMORY[0x277CC5FD8], v42);

        outlined destroy of CharacterSet?(&v57, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
LABEL_37:

        v32 = (v31 & 1) == 0;
        v33 = 2;
        goto LABEL_58;
      }

      __break(1u);
    }

    goto LABEL_42;
  }

  v55 = v11;
  static UTType.item.getter();
  v54[0] = ObjectType;
  v14 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(a4, v10);
  (*(v7 + 8))(v10, v6);
  v56 = MEMORY[0x277D84F90];
  v54[1] = v12;
  if (v14 >> 62)
  {
LABEL_47:
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (v15 != v16)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v16, v14);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      swift_unknownObjectRetain();
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    swift_getObjectType();
    v19 = DOCNode.fpfs_syncFetchFPItem()();
    v20 = swift_unknownObjectRelease();
    ++v16;
    if (v19)
    {
      MEMORY[0x24C1FB090](v20);
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 = v56;
      v16 = v18;
    }
  }

  if (v17 >> 62)
  {
    v43 = __CocoaSet.count.getter();
    v26 = v55;
    if (v43)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v26 = v55;
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_34:
      v27 = [objc_opt_self() defaultManager];
      v28 = Array._bridgeToObjectiveC()().super.isa;

      v29 = [v27 eligibleActionsForDroppingItems:v28 underItem:v26];

      type metadata accessor for FPAction(0);
      _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
      v30 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Set.contains(_:)(*MEMORY[0x277CC6048], v30))
      {

        outlined destroy of CharacterSet?(&v57, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        return 3;
      }

      v31 = specialized Set.contains(_:)(*MEMORY[0x277CC5FD8], v30);
      outlined destroy of CharacterSet?(&v57, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);

      goto LABEL_37;
    }
  }

  v44 = UIDropSession.uniqueUTIsForDragItems.getter();
  v45 = v44;
  v46 = *(v44 + 16);
  if (!v46)
  {
    goto LABEL_53;
  }

  v47 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v44 + 16), 0);
  v48 = specialized Sequence._copySequenceContents(initializing:)(&v56, v47 + 4, v46, v45);
  outlined consume of Set<UITouch>.Iterator._Variant();
  if (v48 != v46)
  {
    __break(1u);
LABEL_53:
  }

  v49 = [objc_opt_self() defaultManager];
  v50 = Array._bridgeToObjectiveC()().super.isa;

  v51 = [v49 eligibleActionsForDroppingUTIs:v50 underItem:v26];

  type metadata accessor for FPAction(0);
  _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
  v52 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Set.contains(_:)(*MEMORY[0x277CC6048], v52))
  {

    outlined destroy of CharacterSet?(&v57, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);

    return 3;
  }

  v53 = specialized Set.contains(_:)(*MEMORY[0x277CC5FD8], v52);

  outlined destroy of CharacterSet?(&v57, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);

  v32 = (v53 & 1) == 0;
  v33 = 3;
LABEL_58:
  if (v32)
  {
    return 0;
  }

  else
  {
    return v33;
  }
}

uint64_t DOCSidebarViewController.autoIntent_dropTargetProposalForUpdatedSession(_:destinationIndexPath:operationIfInsertingInto:)(void *a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v76 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v77 = &v71 - v7;
  v8 = type metadata accessor for IndexPath();
  v80 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v81 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v78 = &v71 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v79 = &v71 - v16;
  v84 = 0;
  v85 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  MEMORY[0x24C1FAEA0](0xD000000000000033, 0x8000000249BFBAA0);
  _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v17);

  v18 = v84;
  v19 = v85;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = *(*static DOCSidebarViewController.dbg.shared + 152);

  v20(0x6567726154646E64, 0xEB00000000342E74, v18, v19);

  v22 = MEMORY[0x277D85000];
  v23 = (*((*MEMORY[0x277D85000] & *v3) + 0x3D8))(v21);
  if (!v23)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.UI);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2493AC000, v53, v54, "Unexpected error.  No drag and drop context available", v55, 2u);
      MEMORY[0x24C1FE850](v55, -1, -1);
    }

    return 0;
  }

  v24 = v23;
  v25 = type metadata accessor for DOCSidebarViewController(0);
  v83.receiver = v3;
  v83.super_class = v25;
  v26 = objc_msgSendSuper2(&v83, sel_collectionView);
  if (!v26)
  {

    return 0;
  }

  v27 = v26;
  if (!IndexPath.row.getter())
  {

    return 0;
  }

  v29 = v79;
  v28 = v80;
  v74 = *(v80 + 16);
  v74(v79, a2, v8);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v72 = v27;
  v31 = [v27 cellForItemAtIndexPath_];

  v73 = v24;
  if (!v31)
  {
    v56 = 1;
    v57 = 3;
    v39 = v81;
LABEL_34:
    v62 = v74;
    v74(v39, v29, v8);
    v63 = type metadata accessor for DOCSidebarDropProposal(0);
    v64 = objc_allocWithZone(v63);
    v62(&v64[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v39, v8);
    v82.receiver = v64;
    v82.super_class = v63;
    v65 = objc_msgSendSuper2(&v82, sel_initWithDropOperation_intent_, v57, v56);
    v66 = *(v28 + 8);
    v66(v39, v8);
    v84 = 0;
    v85 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    MEMORY[0x24C1FAEA0](0xD000000000000033, 0x8000000249BFBAE0);
    v67 = DOCSidebarDropProposal.debugInfo.getter();
    MEMORY[0x24C1FAEA0](v67);

    v68 = v84;
    v69 = v85;
    v70 = *(*static DOCSidebarViewController.dbg.shared + 152);

    v70(0x6567726154646E64, 0xEB00000000352E74, v68, v69);

    v66(v29, v8);
    return v65;
  }

  [v76 locationInView_];
  v33 = v32;
  v34 = [v31 frame];
  v36 = v35 * 0.25;
  v37 = v35 - v35 * 0.25;
  v38 = (*(*v24 + 112))(v34);
  v39 = v81;
  v76 = v38;
  if (!v38)
  {
    v58 = v77;
    (*(v28 + 56))(v77, 1, 1, v8);
    v47 = v78;
    MEMORY[0x24C1F80E0](-1, -1);
    if ((*(v28 + 48))(v58, 1, v8) != 1)
    {
      outlined destroy of CharacterSet?(v58, &_s10Foundation9IndexPathVSgMd);
    }

    goto LABEL_26;
  }

  v40 = v77;
  v41 = v29;
  v42 = v38;
  v74(v77, &v38[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v8);
  (*(v28 + 56))(v40, 0, 1, v8);
  v43 = *(v28 + 32);
  v44 = v78;
  v77 = (v28 + 32);
  v71 = v43;
  v45 = (v43)(v78, v40, v8);
  v46 = *v22;
  v47 = v44;
  v48 = *((v46 & *v42) + 0x60);
  v29 = v41;
  v39 = v81;
  if ((v48(v45) & 1) == 0 || v37 >= v33)
  {
LABEL_26:
    if (v36 <= v33 && v33 <= v37)
    {
      (*(v28 + 8))(v47, v8);

      v56 = 2;
      v57 = v75;
      goto LABEL_34;
    }

    if (v37 >= v33)
    {
      (*(v28 + 8))(v47, v8);

      goto LABEL_33;
    }

    result = IndexPath.row.getter();
    v59 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v60 = IndexPath.section.getter();
      MEMORY[0x24C1F80E0](v59, v60);

      v61 = *(v28 + 8);
      v61(v47, v8);
      v61(v29, v8);
      (*(v28 + 32))(v29, v39, v8);
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  v49 = IndexPath.row.getter();
  result = IndexPath.row.getter();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v49 == result - 1)
  {
LABEL_14:
    (*(v28 + 8))(v29, v8);

    v71(v29, v44, v8);
LABEL_33:
    v56 = 1;
    v57 = 3;
    goto LABEL_34;
  }

  v51 = IndexPath.row.getter();
  result = IndexPath.row.getter();
  if (!__OFADD__(result, 1))
  {
    if (v51 == result + 1)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t specialized DOCAtomicValue.init(wrappedValue:)(int a1)
{
  HIDWORD(v12) = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v7, v8);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v9 - 8, v10);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v13 = MEMORY[0x277D84F90];
  _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v2);
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 24) = BYTE4(v12);
  return v1;
}

id *DOCAtomicValue.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t DOCAtomicValue.__deallocating_deinit()
{
  DOCAtomicValue.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #2 in UICollectionViewDropCoordinator.dropDOCDragInfos(_:at:existingFPItemsInSection:animationCompletion:)(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v25 = a4;
  v26 = a3;
  v27 = a2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v24 - v14;
  v16 = *a1;
  v17 = *(v7 + 16);
  v17(&v24 - v14, a4, v6, v13);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v24 = *(v7 + 8);
  v24(v15, v6);
  v19 = [v26 dropItem:v16 toItemAtIndexPath:isa];

  *v27 = v19;
  swift_unknownObjectRelease();
  v20 = v25;
  (v17)(v10, v25, v6);
  result = IndexPath.row.getter();
  v22 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = IndexPath.section.getter();
    MEMORY[0x24C1F80E0](v22, v23);
    v24(v10, v6);
    return (*(v7 + 40))(v20, v15, v6);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void one-time initialization function for disableWorkaroundFor42669798()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001CLL, 0x8000000249BFBCB0);
  v2 = [v0 BOOLForKey_];

  disableWorkaroundFor42669798 = v2;
}

uint64_t specialized DOCSidebarViewController.collectionView(_:shouldSpringLoadItemAt:with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v4 = *(v3 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v3, v5);
  v8 = v24 - v7;
  v9 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x440))(v6))
  {
    goto LABEL_8;
  }

  if (DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(a1, 0))
  {
    v11 = v10;
    DOCSidebarViewController.diffableSnapshot()();
    specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v24);
    (*(v4 + 8))(v8, v3);
    if (v24[0])
    {
      v35 = v25;
      *v36 = v26[0];
      *&v36[9] = *(v26 + 9);
      v37[0] = v24[0];
      v37[1] = v24[1];
      outlined destroy of DOCSidebarViewController.OutlineSection(v37);
      if (v36[24] == 255)
      {
        ObjectType = swift_getObjectType();
        v21 = (*(v11 + 32))(ObjectType, v11);
        swift_unknownObjectRelease();
        v13 = v21 ^ 1;
        return v13 & 1;
      }

      outlined destroy of CharacterSet?(&v35, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    }

    swift_unknownObjectRelease();
  }

  DOCSidebarViewController.sidebarItem(at:logIfMissing:)(a1, 1, &v27);
  v12 = v30;
  if (v30 == 255)
  {
LABEL_8:
    v13 = 0;
  }

  else
  {
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v31 = v27;
    v32 = v28;
    v33 = v29;
    v34 = v30;
    if ((*((*v9 & *v1) + 0x3D8))())
    {
      swift_unknownObjectRetain();

      if (v12 == 3)
      {
        v18 = v31;
        outlined copy of DOCSidebarItem(v15, *(&v15 + 1), v16, *(&v16 + 1), v17, 3u);
      }

      else if (v12)
      {
        v18 = 0;
      }

      else
      {
        v18 = v31;
        outlined copy of DOCSidebarItem(v15, *(&v15 + 1), v16, *(&v16 + 1), v17, 0);
      }

      swift_getObjectType();
      v22 = UIDropSession.hasDOCNode(_:)(v18);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v19 = !v22;
    }

    else
    {
      v19 = 1;
    }

    v23 = DOCSidebarItem.allowsSpringLoading.getter();
    outlined destroy of CharacterSet?(&v27, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    v13 = v23 & v19;
  }

  return v13 & 1;
}

void specialized animateDropToRow #1 () in DOCSidebarViewController.performDrop(in:with:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v55 = a3;
  v56 = a4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v53 - v18;
  (*(v7 + 16))(&v53 - v18, a2, v6, v17);
  (*(v7 + 56))(v19, 0, 1, v6);
  outlined init with copy of DOCGridLayout.Spec?(v19, v14, &_s10Foundation9IndexPathVSgMd);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    outlined destroy of CharacterSet?(v19, &_s10Foundation9IndexPathVSgMd);
    outlined destroy of CharacterSet?(v14, &_s10Foundation9IndexPathVSgMd);
    return;
  }

  (*(v7 + 32))(v10, v14, v6);
  v20 = type metadata accessor for DOCSidebarViewController(0);
  v63.receiver = a1;
  v63.super_class = v20;
  v21 = objc_msgSendSuper2(&v63, sel_collectionView);
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = v21;
  type metadata accessor for DOCSidebarCollectionView();
  v23 = swift_dynamicCastClassUnconditional();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v25 = [v23 cellForItemAtIndexPath_];

  (*(v7 + 8))(v10, v6);
  outlined destroy of CharacterSet?(v19, &_s10Foundation9IndexPathVSgMd);
  if (!v25)
  {
    return;
  }

  type metadata accessor for DOCSidebarItemCell(0);
  v26 = swift_dynamicCastClass();
  if (!v26)
  {

    return;
  }

  v27 = v26;
  v28 = v25;
  [v27 bounds];
  v29 = CGRectGetWidth(v64) * 0.5;
  [v27 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v65.origin.x = v31;
  v65.origin.y = v33;
  v65.size.width = v35;
  v65.size.height = v37;
  [v55 convertPoint:v27 fromCoordinateSpace:{v29, CGRectGetHeight(v65) * 0.5}];
  v39 = v38;
  v41 = v40;
  v42 = [v56 items];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24UICollectionViewDropItem_pMd);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v43 >> 62)
  {
    v44 = __CocoaSet.count.getter();
    if (v44)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44)
    {
LABEL_8:
      v54 = v28;
      if (v44 >= 1)
      {
        v45 = 0;
        do
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v46 = MEMORY[0x24C1FC540](v45, v43);
          }

          else
          {
            v46 = *(v43 + 8 * v45 + 32);
            swift_unknownObjectRetain();
          }

          ++v45;
          [v46 previewSize];
          _UIScaleTransformForAspectFitOfSizeInTargetSize();
          v47 = v61;
          v48 = v62;
          v57 = v60;
          v58 = v59;
          v49 = objc_allocWithZone(MEMORY[0x277D75488]);
          v60 = v57;
          v59 = v58;
          v61 = v47;
          v62 = v48;
          v50 = [v49 initWithContainer:v55 center:&v59 transform:{v39, v41}];
          v51 = [v46 dragItem];
          v52 = [v56 dropItem:v51 toTarget:v50];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
        }

        while (v44 != v45);

        goto LABEL_18;
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }
  }

LABEL_18:
}

uint64_t specialized DOCSidebarViewController.canHandleDropSession(_:)(void *a1)
{
  v55 = type metadata accessor for UTType();
  v2 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DOCDragPasteboardType();
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v41 - v11;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  swift_getObjectType();
  specialized static FPItem.sessionContainsFavorites(_:)(a1);
  if (v13)
  {
    if (one-time initialization token for UI == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v14 = [a1 items];
  v45 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    v16 = __CocoaSet.count.getter();
    if (!v16)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_44;
    }
  }

  v17 = 0;
  v18 = v15 & 0xC000000000000001;
  v19 = v15 & 0xFFFFFFFFFFFFFF8;
  v20 = v15 + 32;
  v53 = (v2 + 8);
  v54 = (v2 + 32);
  v49 = 0x8000000249BC5FD0;
  v50 = 0x8000000249BC6000;
  v47 = v15;
  v48 = 0x8000000249BC5FA0;
  v51 = "com.apple.icloud.applecorporate";
  v52 = "ntManager.FINode.File";
  v42 = v15 & 0xFFFFFFFFFFFFFF8;
  v43 = v15 & 0xC000000000000001;
  v44 = v16;
  v41 = v15 + 32;
  while (2)
  {
    if (v18)
    {
      v21 = MEMORY[0x24C1FC540](v17, v15);
    }

    else
    {
      if (v17 >= *(v19 + 16))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v21 = *(v20 + 8 * v17);
    }

    v58 = v21;
    v22 = __OFADD__(v17, 1);
    v23 = v17 + 1;
    if (v22)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      swift_once();
LABEL_45:
      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_249B9A480;
      *(v40 + 56) = MEMORY[0x277D837D0];
      *(v40 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v40 + 32) = 0xD000000000000018;
      *(v40 + 40) = 0x8000000249BFBBA0;
      os_log(_:dso:log:type:_:)();

      return 1;
    }

    v46 = v23;
    if (one-time initialization token for DOCAcceptableDragPasteboardTypes != -1)
    {
      swift_once();
    }

    rawValue = DOCAcceptableDragPasteboardTypes._rawValue;
    v25 = *(DOCAcceptableDragPasteboardTypes._rawValue + 2);
    if (v25)
    {
      v26 = 0;
      v57 = DOCAcceptableDragPasteboardTypes._rawValue + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      while (1)
      {
        if (v26 >= rawValue[2])
        {
          __break(1u);
          goto LABEL_40;
        }

        outlined init with copy of DOCDragPasteboardType(&v57[*(v59 + 72) * v26], v12);
        v27 = [v58 itemProvider];
        outlined init with copy of DOCDragPasteboardType(v12, v8);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            if (*v8)
            {
              v29 = 0xD000000000000029;
              v30 = *v8 == 1 ? v49 : v50;
            }

            else
            {
              v29 = 0xD000000000000025;
              v30 = v48;
            }
          }

          else
          {
            v32 = v55;
            (*v54)(v5, v8, v55);
            v29 = UTType.identifier.getter();
            v30 = v33;
            (*v53)(v5, v32);
          }
        }

        else
        {
          if (*v8)
          {
            v29 = 0xD000000000000029;
          }

          else
          {
            v29 = 0xD000000000000025;
          }

          v31 = v52;
          if (!*v8)
          {
            v31 = v51;
          }

          v30 = v31 | 0x8000000000000000;
        }

        v34 = MEMORY[0x24C1FAD20](v29, v30);

        v35 = [v27 hasRepresentationConformingToTypeIdentifier:v34 fileOptions:0];

        outlined destroy of DOCDragPasteboardType(v12);
        if (v35)
        {
          break;
        }

        if (v25 == ++v26)
        {
          goto LABEL_36;
        }
      }

      v18 = v43;
      v17 = v46;
      v15 = v47;
      v20 = v41;
      v19 = v42;
      if (v46 != v44)
      {
        continue;
      }

LABEL_44:

      if (one-time initialization token for UI == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    break;
  }

LABEL_36:

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_249B9FA70;
  *(v36 + 56) = MEMORY[0x277D837D0];
  *(v36 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v36 + 32) = 0xD000000000000018;
  *(v36 + 40) = 0x8000000249BFBBA0;
  *(v36 + 96) = v45;
  *(v36 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type UIDragItem and conformance NSObject, &lazy cache variable for type metadata for UIDragItem);
  v37 = v58;
  *(v36 + 72) = v58;
  v38 = v37;
  os_log(_:dso:log:type:_:)();

  return 0;
}

uint64_t specialized DOCSidebarViewController.collectionView(_:canHandle:)(void *a1)
{
  v2 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {

    return specialized DOCSidebarViewController.canHandleDropSession(_:)(a1);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_249B9A480;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v6 + 32) = 0xD00000000000001CLL;
    *(v6 + 40) = 0x8000000249BECCA0;
    os_log(_:dso:log:type:_:)();

    return 0;
  }
}

void specialized DOCSidebarViewController.collectionView(_:dropSessionDidEnter:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = *(*static DOCSidebarViewController.dbg.shared + 144);

  v4(0xD00000000000001DLL, 0x8000000249BFBB80);

  type metadata accessor for DOCSidebarDropContext();
  v5 = swift_allocObject();
  v5[3] = 0;
  type metadata accessor for DOCSidebarDropContext.DebugInfo(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath;
  v8 = type metadata accessor for IndexPath();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedProposal) = 0;
  v5[4] = v6;
  v5[2] = a1;
  v9 = *((*MEMORY[0x277D85000] & *v2) + 0x3E0);
  swift_unknownObjectRetain();
  v9(v5);

  DOCSidebarViewController.updateDropPointIndicatorView()();
}

id specialized DOCSidebarViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a2, v9, &_s10Foundation9IndexPathVSgMd);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd);
LABEL_8:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_249B9A480;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v26 + 32) = 0xD000000000000040;
    *(v26 + 40) = 0x8000000249BECAE0;
    os_log(_:dso:log:type:_:)();

    return [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation_];
  }

  v15 = (*(v11 + 32))(v14, v9, v10);
  v16 = (*((*MEMORY[0x277D85000] & *v3) + 0x3D8))(v15);
  if (!v16)
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_8;
  }

  v17 = v16;
  v18 = DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(a1, v14);
  v19 = (*v17)[15];
  v20 = v18;
  v19(v18);
  DOCSidebarViewController.updateDropPointIndicatorView()();
  v21 = v20;
  if (!v18)
  {
    v21 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation_];
  }

  v22 = *(*v17[4] + 128);
  v23 = v20;
  v24 = v21;
  v22(v21);

  (*(v11 + 8))(v14, v10);

  return v24;
}

uint64_t specialized DOCSidebarViewController.dataOwnerForSession(_:at:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 defaultPermission];
  v4 = [v3 hasOpenInRestrictions];

  if (!v4)
  {
    return 1;
  }

  DOCSidebarViewController.sidebarItem(at:logIfMissing:)(a1, 1, v39);
  v5 = v40;
  if (v40 == 255)
  {
    return 0;
  }

  v6 = v39[0];
  v36 = v39[1];
  v7 = v39[2];
  v8 = v39[3];
  v9 = v39[4];
  if (!DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(a1, 0))
  {
    goto LABEL_9;
  }

  v11 = v10;
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 16))(ObjectType, v11);
  if (v13 <= 2 || v13 != 3)
  {
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    goto LABEL_21;
  }

  type metadata accessor for DOCFileProviderSource();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    outlined destroy of CharacterSet?(v39, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    return 0;
  }

  v16 = v15;
  v17 = *((*MEMORY[0x277D85000] & *v15) + 0xE0);
  v18 = outlined copy of DOCSidebarItem(v6, v36, v7, v8, v9, 1u);
  v19 = v17(v18);
  if (!v19)
  {
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v39, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    goto LABEL_9;
  }

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v19);
  v20 = [v6 identifier];
  outlined destroy of CharacterSet?(v39, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {

LABEL_19:
    outlined destroy of CharacterSet?(v39, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    swift_unknownObjectRelease();
    return 1;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_19;
  }

  if (*(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8))
  {
LABEL_21:
    outlined destroy of CharacterSet?(v39, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
    swift_unknownObjectRelease();
    return 0;
  }

  v26 = *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type);
  v27 = *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (!v27)
  {
    v31 = v26;
    v32 = [v2 defaultPermission];
    v33 = [v32 dataOwnerStateForBundleIdentifier_];

    if (v33)
    {
      if (v33 != 2)
      {
        if (v33 == 1)
        {
          goto LABEL_30;
        }

        type metadata accessor for DOCDataOwnerState(0);
        v38 = v35;
        v37[0] = v33;
        doc_warnUnrecognizedEnumValueEncountered(_:)(v37);
LABEL_37:
        outlined consume of DOCFileProviderSourceType(v26);
        outlined destroy of CharacterSet?(v39, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(v37);
        return 0;
      }

LABEL_32:
      outlined consume of DOCFileProviderSourceType(v26);
      goto LABEL_19;
    }

LABEL_34:
    outlined consume of DOCFileProviderSourceType(v26);
    goto LABEL_21;
  }

  v28 = v27;
  outlined copy of DOCFileProviderSourceType(v26);
  v29 = [v2 defaultPermission];
  v30 = [v29 dataOwnerStateForFPDomain_];

  if (!v30)
  {

    goto LABEL_34;
  }

  if (v30 == 2)
  {

    goto LABEL_32;
  }

  if (v30 != 1)
  {
    type metadata accessor for DOCDataOwnerState(0);
    v38 = v34;
    v37[0] = v30;
    doc_warnUnrecognizedEnumValueEncountered(_:)(v37);

    goto LABEL_37;
  }

LABEL_30:
  outlined consume of DOCFileProviderSourceType(v26);
  outlined destroy of CharacterSet?(v39, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  swift_unknownObjectRelease();
  return 2;
}

uint64_t _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void partial apply for closure #1 in DOCSidebarViewController.performDrop(in:with:)(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  closure #1 in DOCSidebarViewController.performDrop(in:with:)(a1, v8, v1 + v4, v6, v7);
}

void partial apply for closure #3 in closure #1 in DOCSidebarViewController.performDrop(in:with:)()
{
  v0._object = 0x8000000249BFBC70;
  v0._countAndFlagsBits = 0xD00000000000001CLL;
  DOCSidebarViewController.endDeferReloadsForUIChange(logID:reloadImmediately:)(v0, 0);
}

uint64_t partial apply for specialized closure #1 in DOCAtomicValue.wrappedValue.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

uint64_t partial apply for specialized closure #1 in DOCAtomicValue.mutate(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  v1(v2 + 24);
  return swift_endAccess();
}

uint64_t DOCOpenLocationIntentActionResolver.locationIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DOCOpenLocationIntentActionResolver.locationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t key path getter for DOCOpenLocationIntentActionResolver.semanticLocationResolutionHandler : DOCOpenLocationIntentActionResolver@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 176))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCIntentLocationType, @guaranteed String) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCOpenLocationIntentActionResolver.semanticLocationResolutionHandler : DOCOpenLocationIntentActionResolver(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCIntentLocationType, @in_guaranteed String) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 184);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCOpenLocationIntentActionResolver.semanticLocationResolutionHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t DOCOpenLocationIntentActionResolver.semanticLocationResolutionHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
}

uint64_t key path getter for DOCOpenLocationIntentActionResolver.tagLocationResolutionHandler : DOCOpenLocationIntentActionResolver@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 200))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCOpenLocationIntentActionResolver.tagLocationResolutionHandler : DOCOpenLocationIntentActionResolver(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 208);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCOpenLocationIntentActionResolver.tagLocationResolutionHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t DOCOpenLocationIntentActionResolver.tagLocationResolutionHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
}

uint64_t key path getter for DOCOpenLocationIntentActionResolver.urlLocationResolutionHandler : DOCOpenLocationIntentActionResolver@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 224))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCBackdropConfiguration) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCOpenLocationIntentActionResolver.urlLocationResolutionHandler : DOCOpenLocationIntentActionResolver(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 232);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCOpenLocationIntentActionResolver.urlLocationResolutionHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t DOCOpenLocationIntentActionResolver.urlLocationResolutionHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
}

uint64_t DOCOpenLocationIntentActionResolver.__allocating_init(with:)(void *a1)
{
  v2 = swift_allocObject();
  DOCOpenLocationIntentActionResolver.init(with:)(a1);
  return v2;
}

uint64_t DOCOpenLocationIntentActionResolver.init(with:)(void *a1)
{
  *(v1 + 24) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = a1;
  v3 = a1;
  v4 = DOCOpenLocationIntentActionResolver.identifier(from:)(a1);
  v6 = v5;

  swift_beginAccess();
  *(v1 + 32) = v4;
  *(v1 + 40) = v6;

  return v1;
}

Swift::Void __swiftcall DOCOpenLocationIntentActionResolver.startResolving()()
{
  v1 = *(v0 + 16);
  v2 = [v1 location];
  if (v2)
  {
    v12 = v2;
    v3 = [v2 locationType];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v5 && v8 == v7)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          v11 = [v1 location];
          DOCOpenLocationIntentActionResolver.handleLocation(_:)(v11);
LABEL_15:

          return;
        }
      }

      v11 = [v1 folder];
      DOCOpenLocationIntentActionResolver.handleChosenFolder(_:)(v11);
      goto LABEL_15;
    }
  }

  DOCOpenLocationIntentActionResolver.handleLocation(_:)(0);
}

uint64_t DOCOpenLocationIntentActionResolver.identifier(from:)(void *a1)
{
  v3 = [*(v1 + 16) location];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 locationType];
    if (v5)
    {
      v6 = v5;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v7 && v10 == v9)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          v13 = [a1 location];
          v14 = identifierForLocation #1 (_:) in DOCOpenLocationIntentActionResolver.identifier(from:)(v13);
LABEL_17:
          v26 = v14;

          return v26;
        }
      }

      v13 = [a1 folder];
      v14 = identifierForFolder #1 (_:) in DOCOpenLocationIntentActionResolver.identifier(from:)(v13);
      goto LABEL_17;
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.UI);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BFBE90, &v27);
    *(v19 + 12) = 2080;
    v21 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21DOCOpenLocationIntentCSgMd);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_2493AC000, v17, v18, "%s location or locationType in intent: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v20, -1, -1);
    MEMORY[0x24C1FE850](v19, -1, -1);
  }

  return 0;
}

uint64_t identifierForFolder #1 (_:) in DOCOpenLocationIntentActionResolver.identifier(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v20 - v4;
  DOCOpenLocationIntentActionResolver.url(from:)(a1, v20 - v4);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of URL?(v5);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = URL.relativeString.getter();
    v9 = v10;
    (*(v7 + 8))(v5, v6);
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.UI);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000249BFBEB0, &v21);
    *(v14 + 12) = 2080;
    v20[1] = v8;
    v20[2] = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_2493AC000, v12, v13, "%s location: %s.", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v15, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  return v8;
}

id identifierForLocation #1 (_:) in DOCOpenLocationIntentActionResolver.identifier(from:)(void *a1)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v1 = a1;
  v2 = [v1 locationType];
  if (!v2)
  {

LABEL_9:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v18 = 0xD00000000000003FLL;
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.UI);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136315394;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BFBF10, &v41);
      *(v22 + 12) = 2080;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003FLL, 0x8000000249BFBED0, &v41);
      _os_log_impl(&dword_2493AC000, v20, v21, "%s location: %s.", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v23, -1, -1);
      MEMORY[0x24C1FE850](v22, -1, -1);
    }

    return v18;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.UI);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BFBF10, &v40);
    *(v11 + 12) = 2080;
    v13 = [v8 identifier];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v41 = v15;
    v42 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v40);

    *(v11 + 14) = v26;
    _os_log_impl(&dword_2493AC000, v9, v10, "%s location: %s.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v27)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {

      v38 = [v8 identifier];
      if (v38)
      {
        v39 = v38;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {

        return 0;
      }

      return v18;
    }
  }

  v41 = 0x5F7265646C6F66;
  v42 = 0xE700000000000000;
  result = [v8 identifier];
  if (result)
  {
    v30 = result;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    MEMORY[0x24C1FAEA0](v31, v33);

    MEMORY[0x24C1FAEA0](95, 0xE100000000000000);
    result = [v8 domainIdentifier];
    if (result)
    {
      v34 = result;

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      MEMORY[0x24C1FAEA0](v35, v37);

      return v41;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void DOCOpenLocationIntentActionResolver.handleLocation(_:)(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.UI);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v74[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000249BFBE70, v74);
      _os_log_impl(&dword_2493AC000, v5, v6, "%s Location was nil. Falling back to Recents.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C1FE850](v8, -1, -1);
      MEMORY[0x24C1FE850](v7, -1, -1);
    }

    v9 = DOCCreateDefaultHomeScreenWidgetIntent();
    v10 = MEMORY[0x24C1FAD20](0x6E6F697461636F6CLL, 0xE800000000000000);
    v11 = [v9 valueForKey_];

    if (!v11)
    {
      __break(1u);
      return;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    outlined init with take of Any(v73, v74);
    type metadata accessor for DOCIntentLocation();
    swift_dynamicCast();
    v3 = v72;
    a1 = 0;
  }

  v12 = one-time initialization token for UI;
  v13 = a1;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.UI);
  v15 = v3;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = &selRef_displayModeHandler;
  v19 = &selRef_numberOfPreviewItems;
  if (os_log_type_enabled(v16, v17))
  {
    v71 = v2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v73[0] = v21;
    *v20 = 136316418;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000249BFBE70, v73);
    *(v20 + 12) = 2080;
    v22 = [v15 identifier];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    *&v74[0] = v24;
    *(&v74[0] + 1) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v73);

    *(v20 + 14) = v29;
    *(v20 + 22) = 2080;
    v30 = [v15 displayString];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v73);

    *(v20 + 24) = v34;
    *(v20 + 32) = 2080;
    v35 = [v15 locationType];
    if (v35)
    {
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    *&v74[0] = v37;
    *(&v74[0] + 1) = v39;
    v40 = String.init<A>(describing:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v73);

    *(v20 + 34) = v42;
    *(v20 + 42) = 2080;
    v43 = [v15 locationIdentifier];
    if (v43)
    {
      v44 = v43;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    *&v74[0] = v45;
    *(&v74[0] + 1) = v47;
    v48 = String.init<A>(describing:)();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v73);

    *(v20 + 44) = v50;
    *(v20 + 52) = 2080;
    v19 = &selRef_numberOfPreviewItems;
    v51 = [v15 domainIdentifier];
    if (v51)
    {
      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    *&v74[0] = v53;
    *(&v74[0] + 1) = v55;
    v56 = String.init<A>(describing:)();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v73);

    *(v20 + 54) = v58;
    _os_log_impl(&dword_2493AC000, v16, v17, "%s id: %s display name: %s type: %s locationId: %s bundleId: %s", v20, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v21, -1, -1);
    MEMORY[0x24C1FE850](v20, -1, -1);

    v18 = &selRef_displayModeHandler;
  }

  else
  {
  }

  v59 = [v15 v18[148]];
  v60 = v59;
  if (!v59)
  {
    v60 = *MEMORY[0x277D06348];
  }

  v61 = v59;
  v62 = [v15 identifier];
  if (v62)
  {
    v63 = v62;
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  v67 = [v15 v19[437]];

  if (v67)
  {
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  DOCOpenLocationIntentActionResolver.handleLocationType(_:identifier:bundleIdentifier:)(v60, v64, v66, v68, v70);
}

void DOCOpenLocationIntentActionResolver.handleLocationType(_:identifier:bundleIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

LABEL_15:
    v30 = (*(*v5 + 176))(v17);
    if (v30)
    {
      if (a3)
      {
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_53;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_15;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {

LABEL_22:
    v30 = (*(*v5 + 176))(v24);
    if (!v30)
    {
      __break(1u);
      goto LABEL_55;
    }

    if (!a3)
    {
      __break(1u);
      goto LABEL_25;
    }

LABEL_17:
    v31 = v30;
    v30(a1, a2, a3);
LABEL_18:

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v31);
    return;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_22;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {

    goto LABEL_26;
  }

LABEL_25:
  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
LABEL_26:
    v33 = (*(*v5 + 200))(v29);
    if (v33)
    {
      if (a3)
      {
        v31 = v33;
        v33(a2, a3);
        goto LABEL_18;
      }

      goto LABEL_56;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {

LABEL_33:
    v39 = *(*v5 + 320);

    v39();
    return;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_33;
  }

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;
  if (v40 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v42 != v43)
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
      goto LABEL_40;
    }

    if (one-time initialization token for UI == -1)
    {
LABEL_46:
      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Logger.UI);

      v47 = a1;

      oslog = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v62 = v50;
        *v49 = 136315906;
        *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BFBE10, &v62);
        *(v49 + 12) = 2080;
        type metadata accessor for DOCIntentLocationType(0);
        v51 = v47;
        v52 = String.init<A>(describing:)();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v62);

        *(v49 + 14) = v54;
        *(v49 + 22) = 2080;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
        v55 = String.init<A>(describing:)();
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v62);

        *(v49 + 24) = v57;
        *(v49 + 32) = 2080;

        v58 = String.init<A>(describing:)();
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v62);

        *(v49 + 34) = v60;
        _os_log_impl(&dword_2493AC000, oslog, v48, "%s type: %s identifier: %s bundle id: %s.", v49, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v50, -1, -1);
        MEMORY[0x24C1FE850](v49, -1, -1);
      }

      else
      {
      }

      return;
    }

LABEL_53:
    swift_once();
    goto LABEL_46;
  }

LABEL_40:
  if (!a3)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!a5)
  {
LABEL_58:
    __break(1u);
    return;
  }

  v45 = *(*v5 + 328);

  v45(a2, a3, a4, a5);
}

void DOCOpenLocationIntentActionResolver.handleChosenFolder(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  DOCOpenLocationIntentActionResolver.url(from:)(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of URL?(v5);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.UI);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BFBE50, &v17);
      _os_log_impl(&dword_2493AC000, v12, v13, "%s Folder was nil. Can not continue.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1FE850](v15, -1, -1);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    DOCOpenLocationIntentActionResolver.handleURL(_:)(v10);
    (*(v7 + 8))(v10, v6);
  }
}

uint64_t DOCOpenLocationIntentActionResolver.url(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.UI);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47 = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6D6F7266286C7275, 0xEA0000000000293ALL, &v47);
      _os_log_impl(&dword_2493AC000, v22, v23, "%s Folder was nil. Can not continue.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x24C1FE850](v25, -1, -1);
      MEMORY[0x24C1FE850](v24, -1, -1);
    }

    goto LABEL_15;
  }

  v13 = a1;
  v14 = [v13 fileURL];
  if (!v14)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.UI);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47 = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6D6F7266286C7275, 0xEA0000000000293ALL, &v47);
      _os_log_impl(&dword_2493AC000, v27, v28, "%s folder URL is nil. Can not proceed.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

LABEL_15:
    v31 = *(v46 + 56);

    return v31(a2, 1, 1, v9);
  }

  v45 = a2;
  v15 = v14;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [v13 typeIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  static UTType.folder.getter();
  v33 = UTType.identifier.getter();
  v35 = v34;
  (*(v5 + 8))(v8, v4);
  if (v20)
  {
    if (v18 == v33 && v20 == v35)
    {

      goto LABEL_33;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {

LABEL_33:
      v43 = v45;
      (*(v46 + 32))(v45, v12, v9);
      return (*(v46 + 56))(v43, 0, 1, v9);
    }
  }

  else
  {
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Logger.UI);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v41 = 136315138;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6D6F7266286C7275, 0xEA0000000000293ALL, &v47);
    _os_log_impl(&dword_2493AC000, v39, v40, "%s URL is not a folder. Can not proceed.", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x24C1FE850](v42, -1, -1);
    MEMORY[0x24C1FE850](v41, -1, -1);
  }

  (*(v46 + 8))(v12, v9);
  return (*(v46 + 56))(v45, 1, 1, v9);
}

void DOCOpenLocationIntentActionResolver.handleURL(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  aBlock[4] = partial apply for closure #1 in DOCOpenLocationIntentActionResolver.handleURL(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_16_6;
  v14 = _Block_copy(aBlock);

  [v8 fetchItemForURL:v11 completionHandler:v14];
  _Block_release(v14);
}

void closure #1 in DOCOpenLocationIntentActionResolver.handleURL(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = *(*a4 + 224);
    v25 = a1;
    v13 = v12();
    if (v13)
    {
      v14 = v13;
      v13(v25);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v14);
      v15 = v25;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.UI);
    (*(v8 + 16))(v11, a3, v7);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x5255656C646E6168, 0xED0000293A5F284CLL, &v26);
      *(v19 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL();
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v8 + 8))(v11, v7);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v26);

      *(v19 + 14) = v24;
      _os_log_impl(&dword_2493AC000, v17, v18, "%s unable to fetch item for URL: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v20, -1, -1);
      MEMORY[0x24C1FE850](v19, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }
}

Swift::Void __swiftcall DOCOpenLocationIntentActionResolver.loadDownloadsItem()()
{
  v1 = v0;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BFBCD0, v9);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s loading Downloads collection.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D061F0]) init];
  v9[4] = partial apply for closure #1 in DOCOpenLocationIntentActionResolver.loadDownloadsItem();
  v9[5] = v1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_157;
  v8 = _Block_copy(v9);

  [v7 fetchDefaultDownloadsLocationItem_];
  _Block_release(v8);
}

void closure #1 in DOCOpenLocationIntentActionResolver.loadDownloadsItem()(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(*a3 + 224);
    oslog = a1;
    v4 = v3();
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v4(oslog);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
    goto LABEL_9;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.UI);
  v8 = a2;
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(oslog, v9))
  {
LABEL_9:

    return;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v16 = v11;
  *v10 = 136315394;
  *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BFBCD0, &v16);
  *(v10 + 12) = 2080;
  if (a2)
  {
    swift_getErrorValue();
    Error.localizedDescription.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v12 = String.init<A>(describing:)();
  v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

  *(v10 + 14) = v14;
  _os_log_impl(&dword_2493AC000, oslog, v9, "%s failed to get downloads item: %s", v10, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x24C1FE850](v11, -1, -1);
  MEMORY[0x24C1FE850](v10, -1, -1);
}

Swift::Void __swiftcall DOCOpenLocationIntentActionResolver.loadFolder(itemID:domainID:)(Swift::String itemID, Swift::String domainID)
{
  v3 = v2;
  object = domainID._object;
  countAndFlagsBits = domainID._countAndFlagsBits;
  v6 = itemID._object;
  v7 = itemID._countAndFlagsBits;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.UI);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BFBCF0, v18);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v18);
    *(v11 + 22) = 2080;
    *(v11 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v18);
    _os_log_impl(&dword_2493AC000, v9, v10, "%s loading folder with ID: %s domain: %s.", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  v13 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);
  v14 = MEMORY[0x24C1FAD20](v7, v6);
  v15 = [objc_allocWithZone(MEMORY[0x277CC6400]) initWithProviderDomainID:v13 itemIdentifier:v14];

  v16 = [objc_opt_self() defaultManager];
  v18[4] = partial apply for closure #1 in DOCOpenLocationIntentActionResolver.loadFolder(itemID:domainID:);
  v18[5] = v3;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v18[3] = &block_descriptor_3_6;
  v17 = _Block_copy(v18);

  [v16 fetchItemForItemID:v15 completionHandler:v17];
  _Block_release(v17);
}

void closure #1 in DOCOpenLocationIntentActionResolver.loadFolder(itemID:domainID:)(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(*a3 + 224);
    oslog = a1;
    v4 = v3();
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v4(oslog);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
    goto LABEL_9;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.UI);
  v8 = a2;
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(oslog, v9))
  {
LABEL_9:

    return;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v16 = v11;
  *v10 = 136315394;
  *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BFBCF0, &v16);
  *(v10 + 12) = 2080;
  if (a2)
  {
    swift_getErrorValue();
    Error.localizedDescription.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v12 = String.init<A>(describing:)();
  v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

  *(v10 + 14) = v14;
  _os_log_impl(&dword_2493AC000, oslog, v9, "%s failed to get folder item: %s", v10, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x24C1FE850](v11, -1, -1);
  MEMORY[0x24C1FE850](v10, -1, -1);
}

uint64_t DOCOpenLocationIntentActionResolver.deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 48));
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 64));
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 80));
  return v0;
}

uint64_t DOCOpenLocationIntentActionResolver.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 48));
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 64));
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 80));

  return swift_deallocClassInstance();
}

void partial apply for closure #1 in DOCOpenLocationIntentActionResolver.handleURL(_:)(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in DOCOpenLocationIntentActionResolver.handleURL(_:)(a1, a2, v2 + v6, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCIntentLocationType, @in_guaranteed String) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[1] = a3;
  v7 = a1;
  v6[0] = a2;
  return v4(&v7, v6);
}

unint64_t type metadata accessor for DOCIntentLocation()
{
  result = lazy cache variable for type metadata for DOCIntentLocation;
  if (!lazy cache variable for type metadata for DOCIntentLocation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DOCIntentLocation);
  }

  return result;
}

uint64_t static DOCRelatedNodeMatcher.findRelatedNodes(for:currentNodeCollection:configuration:completion:)(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v33 = a2;
  v34 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a3 supportsRelatedFilesInPicker])
  {
    return a4(MEMORY[0x277D84F90]);
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v18 + 104))(v22, *MEMORY[0x277D851B8], v17);
  v31 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v22, v17);
  v23 = swift_allocObject();
  v25 = v33;
  v24 = v34;
  v23[2] = v33;
  v23[3] = v24;
  v23[4] = v32;
  v23[5] = a4;
  v23[6] = a5;
  aBlock[4] = partial apply for closure #1 in static DOCRelatedNodeMatcher.findRelatedNodes(for:currentNodeCollection:configuration:completion:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_158;
  v26 = _Block_copy(aBlock);
  v27 = v25;

  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v31;
  MEMORY[0x24C1FB9A0](0, v16, v12, v26);
  _Block_release(v26);

  (*(v9 + 8))(v12, v8);
  (*(v35 + 8))(v16, v36);
}

uint64_t one-time initialization function for relatedExtensions()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #2 of one-time initialization function for relatedExtensions);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd);
  result = swift_arrayDestroy();
  static DOCRelatedNodeMatcher.relatedExtensions = v0;
  return result;
}

uint64_t closure #1 in static DOCRelatedNodeMatcher.findRelatedNodes(for:currentNodeCollection:configuration:completion:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F90];
  v106 = v7;
  *(v7 + 16) = MEMORY[0x277D84F90];
  v103 = (v7 + 16);
  v9 = MEMORY[0x277D85000];
  v10 = a2;
  v115 = a1;
  if (!a1)
  {
    goto LABEL_25;
  }

  v11 = *((*MEMORY[0x277D85000] & *a1) + 0x1B0);
  v12 = a1;
  if (!v11())
  {

    v8 = MEMORY[0x277D84F90];
LABEL_25:
    v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So7DOCNode_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    goto LABEL_33;
  }

  v13 = swift_unknownObjectRelease();
  v14 = (*((*v9 & *v12) + 0x258))(v13);
  v15 = v14;
  if (v14 >> 62)
  {
    goto LABEL_30;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v117 = v12;
  if (v16)
  {
LABEL_5:
    v10 = 0;
    v17 = MEMORY[0x277D84F98];
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x24C1FC540](v10, v15);
        v20 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v10 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v19 = *(v15 + 8 * v10 + 32);
        swift_unknownObjectRetain();
        v20 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v16 = __CocoaSet.count.getter();
          v117 = v12;
          if (!v16)
          {
            goto LABEL_31;
          }

          goto LABEL_5;
        }
      }

      v21 = [v19 filename];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v123 = v22;
      v124 = v24;
      lazy protocol witness table accessor for type String and conformance String();
      v25 = StringProtocol.localizedLowercase.getter();
      v12 = v17;
      v27 = v26;

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122[0] = v17;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v27);
      v31 = v17[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_28;
      }

      v35 = v30;
      if (*(v12 + 24) < v34)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v12 = v122;
      v40 = v29;
      specialized _NativeDictionary.copy()();
      v29 = v40;
      if (v35)
      {
LABEL_6:
        v12 = v29;

        v17 = v122[0];
        *(*(v122[0] + 56) + 8 * v12) = v19;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_7;
      }

LABEL_17:
      v17 = v122[0];
      *(v122[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v17[6] + 16 * v29);
      *v37 = v25;
      v37[1] = v27;
      *(v17[7] + 8 * v29) = v19;
      swift_unknownObjectRelease();
      v38 = v17[2];
      v33 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v33)
      {
        goto LABEL_29;
      }

      v17[2] = v39;
LABEL_7:
      ++v10;
      v18 = a2;
      if (v20 == v16)
      {
        goto LABEL_32;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
    v12 = v122[0];
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v27);
    if ((v35 & 1) != (v36 & 1))
    {
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_16:
    if (v35)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_31:
  v18 = v10;
  v17 = MEMORY[0x277D84F98];
LABEL_32:
  v10 = v18;

  v8 = MEMORY[0x277D84F90];
LABEL_33:
  v108 = v17;
  v125 = v8;
  v41 = v10;
  if (v10 >> 62)
  {
    goto LABEL_83;
  }

  v42 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v42)
  {
    do
    {
      v43 = 0;
      v44 = v41 & 0xC000000000000001;
      v120 = v41 & 0xFFFFFFFFFFFFFF8;
      v114 = MEMORY[0x277D84F90];
      v116 = v41 + 32;
      while (1)
      {
        if (v44)
        {
          v45 = v41;
          v46 = MEMORY[0x24C1FC540](v43);
          v33 = __OFADD__(v43++, 1);
          if (v33)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v43 >= *(v120 + 16))
          {
            goto LABEL_82;
          }

          v45 = v41;
          v46 = *(v116 + 8 * v43);
          swift_unknownObjectRetain();
          v33 = __OFADD__(v43++, 1);
          if (v33)
          {
            goto LABEL_81;
          }
        }

        v47 = specialized static DOCRelatedNodeMatcher.relatedFilename(for:)(v46);
        if (!v48)
        {
          swift_unknownObjectRelease();
          goto LABEL_37;
        }

        v49 = v47;
        v10 = v48;
        v118 = v43;
        v119 = v46;
        v50 = 0;
        v51 = v45;
LABEL_46:
        if (v42 != v50)
        {
          break;
        }

        v45 = v51;
        if (!v115)
        {
          goto LABEL_72;
        }

        v69 = *((*MEMORY[0x277D85000] & *v115) + 0x1B0);
        v70 = v115;
        if (!v69())
        {

LABEL_72:

          v99 = swift_unknownObjectRetain();
          MEMORY[0x24C1FB090](v99);
          if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_unknownObjectRelease();
          v114 = v125;
          v43 = v118;
          goto LABEL_37;
        }

        v71 = swift_unknownObjectRelease();
        v72 = (*((*MEMORY[0x277D85000] & *v70) + 0x258))(v71);
        swift_getObjectType();
        v73 = swift_unknownObjectRetain();
        v74 = specialized Array<A>.contains(node:)(v73, v72);

        swift_unknownObjectRelease();
        v75 = v70;
        if (!v74)
        {

LABEL_76:
          swift_unknownObjectRelease();
          v43 = v118;
          goto LABEL_37;
        }

        v123 = v49;
        v124 = v10;
        lazy protocol witness table accessor for type String and conformance String();
        v76 = StringProtocol.localizedLowercase.getter();
        v78 = v77;

        if (v108[2])
        {
          v79 = specialized __RawDictionaryStorage.find<A>(_:)(v76, v78);
          v10 = v80;

          if (v10)
          {
            v10 = *(v108[7] + 8 * v79);
            v81 = one-time initialization token for UI;
            swift_unknownObjectRetain();
            if (v81 != -1)
            {
              swift_once();
            }

            v82 = type metadata accessor for Logger();
            __swift_project_value_buffer(v82, static Logger.UI);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v83 = Logger.logObject.getter();
            v84 = static os_log_type_t.debug.getter();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v123 = v113;
              *v85 = 136315394;
              v111 = v84;
              v86 = [v119 filename];
              v87 = v75;
              v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v90 = v89;

              v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v123);

              *(v85 + 4) = v91;
              *(v85 + 12) = 2080;
              v92 = [v10 filename];
              v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v95 = v94;

              v96 = v93;
              v75 = v87;
              v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v95, &v123);
              v45 = a2;

              *(v85 + 14) = v97;
              _os_log_impl(&dword_2493AC000, v83, v111, "Found related file in current node collection (%s => %s", v85, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1FE850](v113, -1, -1);
              MEMORY[0x24C1FE850](v85, -1, -1);
            }

            v98 = swift_unknownObjectRetain();
            MEMORY[0x24C1FB090](v98);
            if (*((*v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_unknownObjectRelease();
          }
        }

        else
        {
        }

        swift_unknownObjectRelease();

        v43 = v118;
LABEL_37:
        v41 = v45;
        if (v43 == v42)
        {
          goto LABEL_85;
        }
      }

      if (v44)
      {
        v52 = MEMORY[0x24C1FC540](v50, v51);
        if (__OFADD__(v50, 1))
        {
          goto LABEL_79;
        }

LABEL_53:
        v53 = [v52 filename];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v123 = v54;
        v124 = v56;
        v122[0] = v49;
        v122[1] = v10;
        lazy protocol witness table accessor for type String and conformance String();
        v57 = StringProtocol.caseInsensitiveCompare<A>(_:)();
        swift_unknownObjectRelease();

        ++v50;
        v51 = a2;
        if (!v57)
        {
          v45 = a2;
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v58 = type metadata accessor for Logger();
          __swift_project_value_buffer(v58, static Logger.UI);
          swift_unknownObjectRetain();

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.debug.getter();

          swift_unknownObjectRelease();
          if (!os_log_type_enabled(v59, v60))
          {

            swift_unknownObjectRelease();

            v43 = v118;
            goto LABEL_37;
          }

          v61 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v123 = v112;
          *v61 = 136315394;
          v110 = v60;
          v62 = [v119 filename];
          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          log = v59;
          v65 = v64;

          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v123);

          *(v61 + 4) = v66;
          *(v61 + 12) = 2080;
          v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v10, &v123);

          *(v61 + 14) = v67;
          v10 = log;
          _os_log_impl(&dword_2493AC000, log, v110, "Found related file in source array (%s => %s", v61, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v112, -1, -1);
          v68 = v61;
          v45 = a2;
          MEMORY[0x24C1FE850](v68, -1, -1);

          goto LABEL_76;
        }

        goto LABEL_46;
      }

      if (v50 >= *(v120 + 16))
      {
        goto LABEL_80;
      }

      v52 = *(v51 + 8 * v50 + 32);
      swift_unknownObjectRetain();
      if (!__OFADD__(v50, 1))
      {
        goto LABEL_53;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      v100 = __CocoaSet.count.getter();
      v41 = v10;
      v42 = v100;
    }

    while (v100);
  }

  v114 = MEMORY[0x277D84F90];
LABEL_85:

  v101 = swift_allocObject();
  v101[2] = a3;
  v101[3] = v106;
  v101[4] = a4;
  v101[5] = a5;

  specialized static DOCRelatedNodeMatcher.parentObservers(for:completion:)(v114, partial apply for closure #3 in closure #1 in static DOCRelatedNodeMatcher.findRelatedNodes(for:currentNodeCollection:configuration:completion:), v101);
}

uint64_t closure #3 in closure #1 in static DOCRelatedNodeMatcher.findRelatedNodes(for:currentNodeCollection:configuration:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v35 = a4;
  v48 = a3;
  v46 = a2;
  v52 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v6);
  v50 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v37 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v8);
  v49 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = dispatch_group_create();
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v11 = 0;
    v44 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = a1 & 0xC000000000000001;
    v41 = &v57;
    v40 = (v38 + 8);
    v39 = (v37 + 8);
    v42 = i;
    v43 = a1;
    v12 = v49;
    while (v45)
    {
      v13 = MEMORY[0x24C1FC540](v11, a1);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v15 = v47;
      v53 = v14;
      dispatch_group_enter(v47);
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = v13;
      v17 = v48;
      v16[4] = v46;
      v16[5] = v17;
      v18 = *(v13 + 24);
      *(v13 + 24) = partial apply for closure #1 in closure #1 in closure #3 in closure #1 in static DOCRelatedNodeMatcher.findRelatedNodes(for:currentNodeCollection:configuration:completion:);
      *(v13 + 32) = v16;
      v19 = v15;

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v18);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v20 = static OS_dispatch_queue.main.getter();
      v59 = partial apply for closure #1 in DOCRelatedNodeObserver.fetchNodes(completion:);
      v60 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v56 = 1107296256;
      v57 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v58 = &block_descriptor_40_4;
      v21 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v22 = v50;
      v23 = v52;
      a1 = v43;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v12, v22, v21);
      v24 = v42;
      _Block_release(v21);

      (*v40)(v22, v23);
      (*v39)(v12, v51);
      ++v11;
      if (v53 == v24)
      {
        goto LABEL_14;
      }
    }

    if (v11 >= *(v44 + 16))
    {
      goto LABEL_12;
    }

    v13 = *(a1 + 8 * v11 + 32);

    v14 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  v27 = v36;
  v26[2] = v35;
  v26[3] = v27;
  v26[4] = v48;
  v59 = partial apply for closure #2 in Array<A>.fetchURLPairs(_:);
  v60 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v58 = &block_descriptor_46_5;
  v28 = _Block_copy(&aBlock);

  v29 = v49;
  static DispatchQoS.unspecified.getter();
  v54 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v30 = v50;
  v31 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v32 = v47;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v28);

  (*(v38 + 8))(v30, v31);
  (*(v37 + 8))(v29, v51);
}

void closure #1 in closure #1 in closure #3 in closure #1 in static DOCRelatedNodeMatcher.findRelatedNodes(for:currentNodeCollection:configuration:completion:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v8 = *(a3 + 40);
  if (v8 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v46 = v8 & 0xC000000000000001;
    v43 = v8 & 0xFFFFFFFFFFFFFF8;
    v41 = a5;
    v42 = v8 + 32;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v10 = a1;
    }

    v39 = v10;
    v40 = a2;

    v11 = 0;
    v44 = i;
    v45 = v8;
    while (v46)
    {
      v12 = MEMORY[0x24C1FC540](v11, v8);
      v13 = __OFADD__(v11++, 1);
      if (v13)
      {
        goto LABEL_41;
      }

LABEL_14:
      v14 = specialized static DOCRelatedNodeMatcher.relatedFilename(for:)(v12);
      if (v15)
      {
        a5 = v14;
        v16 = v15;
        v47 = v12;
        if (a1 >> 62)
        {
          v8 = __CocoaSet.count.getter();
          if (v8)
          {
LABEL_17:
            v17 = 0;
            while (1)
            {
              if ((a1 & 0xC000000000000001) != 0)
              {
                v18 = MEMORY[0x24C1FC540](v17, a1);
                v19 = v17 + 1;
                if (__OFADD__(v17, 1))
                {
                  goto LABEL_39;
                }
              }

              else
              {
                if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_40;
                }

                v18 = *(a1 + 8 * v17 + 32);
                swift_unknownObjectRetain();
                v19 = v17 + 1;
                if (__OFADD__(v17, 1))
                {
LABEL_39:
                  __break(1u);
LABEL_40:
                  __break(1u);
                  goto LABEL_41;
                }
              }

              v20 = [v18 filename];
              v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v23 = v22;

              v49[0] = v21;
              v49[1] = v23;
              v49[3] = a5;
              v49[4] = v16;
              lazy protocol witness table accessor for type String and conformance String();
              a2 = StringProtocol.caseInsensitiveCompare<A>(_:)();

              if (!a2)
              {
                break;
              }

              swift_unknownObjectRelease();
              ++v17;
              if (v19 == v8)
              {
                goto LABEL_6;
              }
            }

            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v24 = type metadata accessor for Logger();
            __swift_project_value_buffer(v24, static Logger.UI);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v25 = Logger.logObject.getter();
            a5 = static os_log_type_t.debug.getter();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v25, a5))
            {
              v26 = swift_slowAlloc();
              v27 = swift_slowAlloc();
              v49[0] = v27;
              *v26 = 136315394;
              v28 = [v47 filename];
              v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v31 = v30;

              v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v49);

              *(v26 + 4) = v32;
              *(v26 + 12) = 2080;
              v33 = [v18 filename];
              v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v36 = v35;

              v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v49);

              *(v26 + 14) = v37;
              _os_log_impl(&dword_2493AC000, v25, a5, "Found related file in parent node (%s => %s", v26, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1FE850](v27, -1, -1);
              MEMORY[0x24C1FE850](v26, -1, -1);
            }

            i = v44;
            v8 = v45;
            swift_beginAccess();
            v38 = swift_unknownObjectRetain();
            MEMORY[0x24C1FB090](v38);
            if (*((v41[2].isa & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[2].isa & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              a5 = *((v41[2].isa & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            a2 = v41 + 2;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_7;
          }
        }

        else
        {
          v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8)
          {
            goto LABEL_17;
          }
        }

LABEL_6:
        swift_unknownObjectRelease();

        i = v44;
        v8 = v45;
      }

      else
      {
        swift_unknownObjectRelease();
      }

LABEL_7:
      if (v11 == i)
      {

        a2 = v40;
        goto LABEL_38;
      }
    }

    if (v11 >= *(v43 + 16))
    {
      goto LABEL_42;
    }

    v12 = *(v42 + 8 * v11);
    swift_unknownObjectRetain();
    v13 = __OFADD__(v11++, 1);
    if (!v13)
    {
      goto LABEL_14;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

LABEL_38:
  dispatch_group_leave(a2);
}

void closure #1 in static DOCRelatedNodeMatcher.parentObservers(for:completion:)(uint64_t a1, uint64_t a2, dispatch_group_t group, void *a4, uint64_t a5)
{
  if (a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_249B9FA70;
    v8 = [a4 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    v12 = _convertErrorToNSError(_:)();
    *(v7 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v7 + 104) = lazy protocol witness table accessor for type NSError and conformance NSObject();
    *(v7 + 72) = v12;
    os_log(_:dso:log:type:_:)();

    dispatch_group_leave(group);
  }

  else
  {
    if (a1)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      DOCNode.identifierKey.getter();
      swift_beginAccess();
      v14 = *(a5 + 16);
      if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v21), (v16 & 1) != 0))
      {
        v17 = *(*(v14 + 56) + 8 * v15);
        swift_endAccess();

        outlined destroy of AnyHashable(v21);
      }

      else
      {
        swift_endAccess();
        outlined destroy of AnyHashable(v21);
        type metadata accessor for DOCRelatedNodeObserver();
        swift_allocObject();
        swift_unknownObjectRetain();
        v17 = specialized DOCRelatedNodeObserver.init(node:)();
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      v18 = swift_unknownObjectRetain();
      MEMORY[0x24C1FB090](v18);
      if (*((v17[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      DOCNode.identifierKey.getter();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(a5 + 16);
      *(a5 + 16) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v21, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(v21);
      *(a5 + 16) = v20;
      swift_endAccess();

      swift_unknownObjectRelease();
    }

    dispatch_group_leave(group);
  }
}

uint64_t closure #2 in static DOCRelatedNodeMatcher.parentObservers(for:completion:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = *(v5 + 16);
  if (!v6)
  {
    a1(MEMORY[0x277D84F90]);
  }

  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15UIBarButtonItemC_Tt1g5(v6, 0);
  v8 = specialized Sequence._copySequenceContents(initializing:)(&v10, (v7 + 32), v6, v5);

  result = outlined consume of Set<UITouch>.Iterator._Variant();
  if (v8 == v6)
  {
    a1(v7);
  }

  __break(1u);
  return result;
}

uint64_t DOCRelatedNodeObserver.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DOCNodeCollectionDelegate.nodeCollectionDidFinishGathering(_:) in conformance DOCRelatedNodeObserver(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x1C8))();
  v6 = *(v2 + 24);
  if (v6)
  {
    v7 = *((*v4 & *a1) + 0x258);

    v7(v8);
    v6();
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
  }

  return result;
}

id specialized static DOCRelatedNodeMatcher.relatedFilename(for:)(void *a1)
{
  result = [a1 filename];
  if (result)
  {
    v2 = result;
    v3 = [result pathExtension];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String.lowercased()();

    countAndFlagsBits = v4._countAndFlagsBits;
    if (String.count.getter() < 1)
    {

      return 0;
    }

    v26 = v2;
    if (one-time initialization token for relatedExtensions != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v5 = static DOCRelatedNodeMatcher.relatedExtensions + 64;
      v6 = 1 << *(static DOCRelatedNodeMatcher.relatedExtensions + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(static DOCRelatedNodeMatcher.relatedExtensions + 8);
      v9 = (v6 + 63) >> 6;
      v28 = static DOCRelatedNodeMatcher.relatedExtensions;

      v12 = 0;
      if (v8)
      {
        break;
      }

LABEL_8:
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v9)
        {

          return 0;
        }

        v8 = *&v5[8 * v13];
        ++v12;
        if (v8)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_22:
      swift_once();
    }

    while (1)
    {
      v13 = v12;
LABEL_11:
      v29 = &v25;
      v14 = __clz(__rbit64(v8)) | (v13 << 6);
      v15 = (v28[6] + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v28[7] + 8 * v14);
      v30[0] = countAndFlagsBits;
      v30[1] = v4._object;
      MEMORY[0x28223BE20](v10, v11);
      v24[2] = v30;

      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v24, v18))
      {
        break;
      }

      v8 &= v8 - 1;

      v12 = v13;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    v19 = v26;
    result = [v26 stringByDeletingPathExtension];
    if (result)
    {
      v20 = result;

      v21 = MEMORY[0x24C1FAD20](v17, v16);

      v22 = [v20 stringByAppendingPathExtension_];

      if (v22)
      {
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v23;
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized static DOCRelatedNodeMatcher.parentObservers(for:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v7);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = dispatch_group_create();
  result = swift_allocObject();
  v14 = result;
  *(result + 16) = MEMORY[0x277D84F98];
  if (!(a1 >> 62))
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_10:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v22 = v32;
    v21 = v33;
    v23 = v34;
    (*(v33 + 104))(v32, *MEMORY[0x277D851C8], v34);
    v24 = static OS_dispatch_queue.global(qos:)();
    (*(v21 + 8))(v22, v23);
    v25 = swift_allocObject();
    v26 = v36;
    v25[2] = v35;
    v25[3] = v26;
    v25[4] = v14;
    v48 = partial apply for closure #2 in static DOCRelatedNodeMatcher.parentObservers(for:completion:);
    v49 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v47 = &block_descriptor_34_5;
    v27 = _Block_copy(&aBlock);

    v28 = v37;
    static DispatchQoS.unspecified.getter();
    v43 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v29 = v39;
    v30 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v27);

    (*(v41 + 8))(v29, v30);
    (*(v38 + 8))(v28, v40);
  }

  result = __CocoaSet.count.getter();
  v15 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v15 >= 1)
  {
    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x24C1FC540](v16, a1);
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
        swift_unknownObjectRetain();
      }

      ++v16;
      dispatch_group_enter(v12);
      v18 = swift_allocObject();
      v18[2] = v12;
      v18[3] = v17;
      v18[4] = v14;
      v48 = partial apply for closure #1 in static DOCRelatedNodeMatcher.parentObservers(for:completion:);
      v49 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
      v47 = &block_descriptor_28_7;
      v19 = _Block_copy(&aBlock);
      v20 = v12;
      swift_unknownObjectRetain();

      [v17 fetchParent_];
      _Block_release(v19);
      swift_unknownObjectRelease();
    }

    while (v15 != v16);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *specialized DOCRelatedNodeObserver.init(node:)()
{
  v1 = v0;
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = MEMORY[0x277D84F90];
  v2 = type metadata accessor for DOCNodeCollection();
  swift_getObjectType();
  v3 = swift_unknownObjectRetain();
  v4 = specialized DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)(v3, 0, 0, 0x100000000uLL, v2);
  v0[2] = v4;
  v5 = *((*MEMORY[0x277D85000] & *v4) + 0x198);
  v6 = v4;

  v5(v7, &protocol witness table for DOCRelatedNodeObserver);

  return v1;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Bool)(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

{
  return (*(a1 + 32))() & 1;
}

void *DOCTagEditorTagCell.tagValue.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagValue;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCTagEditorTagCell.tagValue.setter(void *a1)
{
  specialized DOCTagEditorTagCell.tagValue.setter(a1);
}

void (*DOCTagEditorTagCell.tagValue.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagValue;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCTagEditorTagCell.tagValue.modify;
}

void DOCTagEditorTagCell.tagValue.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    v6 = MEMORY[0x277D85000];
    if (v5)
    {
      v7 = *((*MEMORY[0x277D85000] & *v4) + 0xA0);
      v8 = v5;
      v9 = v7();
      if (!v9)
      {
        __break(1u);
        return;
      }

      v10 = v9;
      [v9 setItemTag_];

      v4 = v3[3];
    }

    (*((*v6 & *v4) + 0xE0))();
  }

  free(v3);
}

void *DOCTagEditorTagCell.tagDotButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCTagEditorTagCell.tagDotButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCTagEditorTagCell.tagDotView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCTagEditorTagCell.tagDotView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCTagEditorTagCell.mixedSelection.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_mixedSelection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCTagEditorTagCell.mixedSelection.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_mixedSelection;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x277D85000] & *v1) + 0xD0))(v4);
}

uint64_t (*DOCTagEditorTagCell.mixedSelection.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCTagEditorTagCell.mixedSelection.modify;
}

uint64_t DOCTagEditorTagCell.mixedSelection.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0xD0))(result);
  }

  return result;
}

id DOCTagEditorTagCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCTagEditorTagCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagValue) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotButton) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotView) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_mixedSelection) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void DOCTagEditorTagCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v92 = &v79 - v11;
  v85 = type metadata accessor for UICellAccessory.Placement();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v12);
  v86 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v91 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v90 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v79 - v19;
  v21 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v95 = *(v21 - 8);
  v96 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v94 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for UICellAccessory.DisplayedState();
  v93 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v24);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for UICellAccessory();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v27);
  v87 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v79 - v31;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagValue] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotButton] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotView] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_mixedSelection] = 0;
  v33 = type metadata accessor for DOCTagEditorTagCell();
  v100.receiver = v4;
  v100.super_class = v33;
  v34 = objc_msgSendSuper2(&v100, sel_initWithFrame_, a1, a2, a3, a4);
  v35 = objc_allocWithZone(DOCTagDotView);
  v36 = v34;
  v37 = [v35 initWithDefaultTagDimension:0 adjustsSizeForContentSizeCategory:30.0];
  v38 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotView;
  swift_beginAccess();
  v39 = *&v36[v38];
  *&v36[v38] = v37;
  v40 = v37;

  if (!v40)
  {
    __break(1u);
    goto LABEL_16;
  }

  [v40 setUserInteractionEnabled_];

  v41 = [objc_opt_self() buttonWithType_];
  v42 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotButton;
  swift_beginAccess();
  v43 = *&v36[v42];
  *&v36[v42] = v41;
  v44 = v41;

  if (!v44)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v44 setFrame_];

  v45 = *&v36[v42];
  if (!v45)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v45 setShowsMenuAsPrimaryAction_];
  v46 = *&v36[v42];
  if (!v46)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  v47 = *&v36[v42];
  if (!v47)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v48 = objc_opt_self();
  v49 = v47;
  v50 = [v48 tagDotButtonIdentifier];
  if (!v50)
  {
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = MEMORY[0x24C1FAD20](v51);
  }

  [v49 setAccessibilityIdentifier_];

  v52 = *&v36[v42];
  if (!v52)
  {
    goto LABEL_20;
  }

  if (!*&v36[v38])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v52 addSubview_];
  if (!*&v36[v38])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v83 = v14;
  isa = DOCConstraintsToResizeWithSuperview();
  v54 = v97;
  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [objc_opt_self() activateConstraints_];

  v55 = v93;
  v56 = *(v93 + 104);
  v57 = v26;
  v80 = *MEMORY[0x277D74A98];
  v79 = v56;
  v56(v26);
  v58 = type metadata accessor for UICellAccessory.LayoutDimension();
  v59 = *(v58 - 8);
  v82 = *(v59 + 56);
  v81 = v59 + 56;
  v82(v20, 1, 1, v58);
  v60 = v94;
  UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
  v98 = v32;
  static UICellAccessory.multiselect(displayed:options:)();
  (*(v95 + 8))(v60, v96);
  (*(v55 + 8))(v57, v54);
  v61 = *&v36[v42];
  if (v61)
  {
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd);
    v63 = v86;
    v64 = &v86[*(v62 + 48)];
    v79(v86, v80, v54);
    *v64 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
    v64[1] = 0;
    (*(v84 + 104))(v63, *MEMORY[0x277D74AD8], v85);
    v82(v20, 1, 1, v58);
    v65 = v61;
    v66 = v90;
    UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
    v67 = v87;
    static UICellAccessory.customView(configuration:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
    v68 = v88;
    v69 = *(v88 + 72);
    v70 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_249B9FA70;
    v72 = v71 + v70;
    v73 = *(v68 + 16);
    v74 = v89;
    v73(v72, v98, v89);
    v73(v72 + v69, v67, v74);
    v75 = v36;
    UICollectionViewListCell.accessories.setter();
    v99[3] = type metadata accessor for UIListContentConfiguration();
    v99[4] = MEMORY[0x277D74C30];
    __swift_allocate_boxed_opaque_existential_1(v99);
    static UIListContentConfiguration.cell()();
    MEMORY[0x24C1FBB20](v99);
    v76 = v92;
    static UIBackgroundConfiguration.listCell()();
    v77 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
    MEMORY[0x24C1FBB40](v76);

    (*((*MEMORY[0x277D85000] & *v75) + 0xD8))();
    v78 = *(v68 + 8);
    v78(v67, v74);
    (*(v91 + 8))(v66, v83);
    v78(v98, v74);
    return;
  }

LABEL_23:
  __break(1u);
}

id static UIColor.tagCellBackground.getter()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [v0 colorWithAlphaComponent_];

  return v1;
}

Swift::Void __swiftcall DOCTagEditorTagCell.updateTagDotImageForCurrentSelectionState()()
{
  v1 = [v0 isSelected];
  v2 = MEMORY[0x277D85000];
  if (!v1)
  {
    if (((*((*MEMORY[0x277D85000] & *v0) + 0xB8))() & 1) == 0)
    {
      return;
    }

    v3 = (*((*v2 & *v0) + 0xA0))();
    if (v3)
    {
      v4 = 1;
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xA0))();
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = 0;
LABEL_7:
  v5 = v3;
  [v3 setRenderedTagVariant_];
}

Swift::Void __swiftcall DOCTagEditorTagCell.updateTagDotAccessoryViewForCurrentMode()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v2 = v1();
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  [v2 setUserInteractionEnabled_];

  v4 = v1();
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  [v4 setShowsMenuAsPrimaryAction_];

  v6 = v1();
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  [v6 setMenu_];

  v8 = v1();
  if (!v8)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 setHoverStyle_];

  v10 = [v0 hoverStyle];
  if (v10)
  {
    v11 = v10;
    [v10 setEnabled_];
  }
}

Swift::Void __swiftcall DOCTagEditorTagCell.updateContentConfiguration()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = &v18 - v8;
  v10 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v7);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 displayName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  MEMORY[0x24C1FBB10](&v18);
  if (*(&v19 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
    v13 = type metadata accessor for UIListContentConfiguration();
    v14 = swift_dynamicCast();
    (*(*(v13 - 8) + 56))(v9, v14 ^ 1u, 1, v13);
  }

  else
  {
    outlined destroy of CharacterSet?(&v18, &_s5UIKit22UIContentConfiguration_pSgMd);
    v13 = type metadata accessor for UIListContentConfiguration();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  type metadata accessor for UIListContentConfiguration();
  v15 = *(v13 - 8);
  v16 = *(v15 + 48);
  if (v16(v9, 1, v13))
  {
  }

  else
  {
    UIListContentConfiguration.text.setter();
  }

  outlined init with copy of UIListContentConfiguration?(v9, v4);
  if (v16(v4, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v4, &_s5UIKit26UIListContentConfigurationVSgMd);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

  else
  {
    *(&v19 + 1) = v13;
    v20 = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(v15 + 32))(boxed_opaque_existential_1, v4, v13);
  }

  MEMORY[0x24C1FBB20](&v18);
  outlined destroy of CharacterSet?(v9, &_s5UIKit26UIListContentConfigurationVSgMd);
}

uint64_t DOCTagEditorNewTagCell.textEditingDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_textEditingDelegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCTagEditorNewTagCell.updateTagDotAccessoryViewForCurrentMode()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit7UIShapeVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v42 - v4;
  v6 = type metadata accessor for UIHoverAutomaticEffect();
  MEMORY[0x28223BE20](v6, v7);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIShape();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v47 = &v42 - v17;
  v18 = MEMORY[0x277D85000];
  v19 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v20 = v19(v16);
  if (!v20)
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = v20;
  v45 = v6;
  [v20 setUserInteractionEnabled_];

  v22 = (v19)();
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v22;
  v43 = v5;
  v44 = v9;
  [v22 setShowsMenuAsPrimaryAction_];

  v42 = v19;
  v24 = (v19)();
  if (!v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v25 = v24;
  v26 = *((*v18 & *v1) + 0x130);
  v27 = v26();
  v28 = (*((*v18 & *v1) + 0x150))(v27, 0);
  [v25 setMenu_];

  v29 = (*((*v18 & *v1) + 0xA0))();
  if (!v29)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v30 = v29;
  v31 = objc_opt_self();
  v32 = [v31 untitledTagForRendering_];
  [v30 setItemTag_];

  static UIShape.circle.getter();
  v33 = v47;
  UIShape.inset(by:)();
  v34 = *(v10 + 8);
  v35 = v44;
  v34(v13, v44);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIHoverStyle);
  static UIHoverEffect<>.automatic.getter();
  v36 = v43;
  (*(v10 + 16))(v43, v33, v35);
  (*(v10 + 56))(v36, 0, 1, v35);
  v37 = UIHoverStyle.init<A>(effect:shape:)();
  v38 = v42();
  if (!v38)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v39 = v38;
  [v38 setHoverStyle_];

  v40 = [v1 hoverStyle];
  if (v40)
  {
    v41 = v40;
    [v40 setEnabled_];

    v37 = v41;
  }

  v34(v47, v35);
}

uint64_t DOCTagEditorNewTagCell.updateConfiguration(using:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v42 - v7;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v10 = type metadata accessor for DOCTagEditorNewTagCell();
  v50.receiver = v1;
  v50.super_class = v10;
  objc_msgSendSuper2(&v50, sel__bridgedUpdateConfigurationUsingState_, isa);

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.UI);
  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&aBlock = v16;
    *v15 = 136315138;
    v17 = [v12 debugDescription];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &aBlock);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2493AC000, v13, v14, "self: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1FE850](v16, -1, -1);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  MEMORY[0x24C1FBB10](&aBlock);
  if (*(&v47 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
    v22 = type metadata accessor for UIListContentConfiguration();
    v23 = swift_dynamicCast();
    (*(*(v22 - 8) + 56))(v8, v23 ^ 1u, 1, v22);
  }

  else
  {
    outlined destroy of CharacterSet?(&aBlock, &_s5UIKit22UIContentConfiguration_pSgMd);
    v22 = type metadata accessor for UIListContentConfiguration();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  }

  type metadata accessor for UIListContentConfiguration();
  v43 = *(v22 - 8);
  v24 = *(v43 + 48);
  if (!v24(v8, 1, v22))
  {
    v25 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.numberOfLines.setter();
    v25(&aBlock, 0);
  }

  v26 = swift_allocObject();
  v44 = v8;
  v27 = v26;
  swift_unknownObjectWeakInit();
  v28 = objc_allocWithZone(MEMORY[0x277D75E80]);
  v48 = partial apply for closure #1 in DOCTagEditorNewTagCell.updateConfiguration(using:);
  v49 = v27;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v47 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  *(&v47 + 1) = &block_descriptor_159;
  v29 = _Block_copy(&aBlock);

  v30 = [v28 initWithDidEndHandler_];
  _Block_release(v29);

  [v30 setUseTextInputAsLabel_];
  [v30 setSelectAllTextWhenEditingBegins_];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = partial apply for closure #2 in DOCTagEditorNewTagCell.updateConfiguration(using:);
  v49 = v31;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v47 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
  *(&v47 + 1) = &block_descriptor_4_1;
  v32 = _Block_copy(&aBlock);

  [v30 setShouldBeginHandler_];
  _Block_release(v32);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = partial apply for closure #3 in DOCTagEditorNewTagCell.updateConfiguration(using:);
  v49 = v33;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v47 = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
  *(&v47 + 1) = &block_descriptor_8_1;
  v34 = _Block_copy(&aBlock);

  [v30 setShouldChangeHandler_];
  _Block_release(v34);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = partial apply for closure #4 in DOCTagEditorNewTagCell.updateConfiguration(using:);
  v49 = v35;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v47 = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@unowned Bool);
  *(&v47 + 1) = &block_descriptor_12_4;
  v36 = _Block_copy(&aBlock);

  [v30 setShouldEndHandler_];
  _Block_release(v36);
  v37 = v44;
  if (!v24(v44, 1, v22))
  {
    v38 = v30;
    UIListContentConfiguration._setTextEditingConfiguration(_:)();
  }

  v39 = v45;
  outlined init with copy of UIListContentConfiguration?(v37, v45);
  if (v24(v39, 1, v22) == 1)
  {
    outlined destroy of CharacterSet?(v39, &_s5UIKit26UIListContentConfigurationVSgMd);
    aBlock = 0u;
    v47 = 0u;
    v48 = 0;
  }

  else
  {
    *(&v47 + 1) = v22;
    v48 = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    (*(v43 + 32))(boxed_opaque_existential_1, v39, v22);
  }

  MEMORY[0x24C1FBB20](&aBlock);

  return outlined destroy of CharacterSet?(v37, &_s5UIKit26UIListContentConfigurationVSgMd);
}

void closure #1 in DOCTagEditorNewTagCell.updateConfiguration(using:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *Strong) + 0x100))();
    if (v5)
    {
      v6 = v5;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.UI);
      v8 = a1;
      v9 = v3;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v34 = v6;
        v12 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v35 = v33;
        *v12 = 136315650;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BFC580, &v35);
        *(v12 + 12) = 2080;
        v13 = v8;
        v14 = [v13 description];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v35);

        *(v12 + 14) = v18;
        *(v12 + 22) = 2080;
        v19 = [v9 debugDescription];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = v20;
        v4 = MEMORY[0x277D85000];
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v35);

        *(v12 + 24) = v24;
        _os_log_impl(&dword_2493AC000, v10, v11, "%s editing finished with state:%s cell: %s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v33, -1, -1);
        v25 = v12;
        v6 = v34;
        MEMORY[0x24C1FE850](v25, -1, -1);
      }

      v26 = [v8 text];
      if (!v26)
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = MEMORY[0x24C1FAD20](v27);
      }

      [v6 tagEditorCell:v9 didEndEditingWithText:{v26, v33}];

      v28 = [v8 text];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = (*((*v4 & *v9) + 0x120))(v29, v31);
      (*((*v4 & *v9) + 0xE0))(v32);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id closure #2 in DOCTagEditorNewTagCell.updateConfiguration(using:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x100))();
  if (v2)
  {
    v3 = v2;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.UI);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BFC580, &v17);
      *(v8 + 12) = 2080;
      v10 = [v5 debugDescription];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v17);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_2493AC000, v6, v7, "%s editing should begin for cell: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v9, -1, -1);
      MEMORY[0x24C1FE850](v8, -1, -1);
    }

    v15 = [v3 tagEditorCellShouldBeginEditing_];
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t closure #4 in DOCTagEditorNewTagCell.updateConfiguration(using:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v3 = Strong;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *Strong) + 0x100))();
  if (v5)
  {
    v6 = v5;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    v8 = a1;
    v9 = v3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v12 = 136315650;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BFC580, &v31);
      *(v12 + 12) = 2080;
      v13 = [v8 text];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v31);

      *(v12 + 14) = v17;
      *(v12 + 22) = 2080;
      v18 = [v9 debugDescription];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v31);

      *(v12 + 24) = v22;
      _os_log_impl(&dword_2493AC000, v10, v11, "%s should end editing did update text: %s for cell: %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v30, -1, -1);
      v23 = v12;
      v4 = MEMORY[0x277D85000];
      MEMORY[0x24C1FE850](v23, -1, -1);
    }

    v24 = [v8 text];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    (*((*v4 & *v9) + 0x120))(v25, v27);
    v28 = [v6 tagEditorCellShouldEndEditing_];
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 1;
  }

  return v28;
}

uint64_t DOCTagEditorNewTagCell.currentNewTagInputText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_currentNewTagInputText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void DOCTagEditorNewTagCell.currentNewTagInputText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_currentNewTagInputText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  if (!v5[1])
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
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BFC060, &v11);
      _os_log_impl(&dword_2493AC000, v7, v8, "%s text: String(describing: currentNewTagInputText))", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1FE850](v10, -1, -1);
      MEMORY[0x24C1FE850](v9, -1, -1);
    }
  }
}

void DOCTagEditorNewTagCell.currentNewTagInputText.didset()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_currentNewTagInputText;
  swift_beginAccess();
  if (!*(v1 + 8))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.UI);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BFC060, &v7);
      _os_log_impl(&dword_2493AC000, v3, v4, "%s text: String(describing: currentNewTagInputText))", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x24C1FE850](v6, -1, -1);
      MEMORY[0x24C1FE850](v5, -1, -1);
    }
  }
}

void (*DOCTagEditorNewTagCell.currentNewTagInputText.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_currentNewTagInputText;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCTagEditorNewTagCell.currentNewTagInputText.modify;
}

void DOCTagEditorNewTagCell.currentNewTagInputText.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0 && !*(v3[3] + v3[4] + 8))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.UI);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BFC060, &v9);
      _os_log_impl(&dword_2493AC000, v5, v6, "%s text: String(describing: currentNewTagInputText))", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C1FE850](v8, -1, -1);
      MEMORY[0x24C1FE850](v7, -1, -1);
    }
  }

  free(v3);
}

uint64_t DOCTagEditorNewTagCell.newTagColor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_newTagColor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCTagEditorNewTagCell.newTagColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_newTagColor;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCTagEditorNewTagCell.updateTagColor(with:)()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x138))();
  v2 = *((*v1 & *v0) + 0xD8);

  return v2();
}

void DOCTagEditorNewTagCell.createMenuForTagDotView(selectedColor:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v19 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v17 = objc_opt_self();
  v16 = objc_opt_self();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  for (i = 0; i != 64; i += 8)
  {
    v6 = *(&outlined read-only object #0 of DOCTagEditorNewTagCell.createMenuForTagDotView(selectedColor:) + i + 32);
    v7 = [v17 untitledTagForRendering_];
    v8 = [v16 shared];
    v9 = [v8 tintedSystemImageForTag:v7 variant:v6 == 0];

    DOCTagColor.localizedDescription.getter(v6);
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = v6;
    v11 = v9;
    v12 = v3;
    [UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)() setState_];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
    preferredElementSize = v19;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v15, v14, 0, v20, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

objc_class *DOCTagColor.localizedDescription.getter(uint64_t a1)
{
  countAndFlagsBits = 0;
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          result = _DocumentManagerBundle();
          if (result)
          {
            v3 = result;
            v4 = 0xD000000000000011;
            v13 = 0x8000000249BFC0A0;
            v5 = 0x617A696C61636F4CLL;
            v6 = 0xEB00000000656C62;
            v7 = 0x8000000249BFC130;
            v8.super.isa = v3;
            v9 = 2036429383;
LABEL_23:
            v11 = 0xE400000000000000;
            goto LABEL_28;
          }

          goto LABEL_34;
        }

        return countAndFlagsBits;
      }

      result = _DocumentManagerBundle();
      if (result)
      {
        v3 = result;
        v4 = 0xD000000000000011;
        v13 = 0x8000000249BFC0A0;
        v5 = 0x617A696C61636F4CLL;
        v6 = 0xEB00000000656C62;
        v7 = 0x8000000249BFC080;
        v8.super.isa = v3;
        v9 = 1701736270;
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_31;
    }

    if (a1 == 2)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v3 = result;
        v4 = 0xD000000000000012;
        v13 = 0x8000000249BFC0A0;
        v5 = 0x617A696C61636F4CLL;
        v6 = 0xEB00000000656C62;
        v9 = 0x6E65657247;
        v7 = 0x8000000249BFC190;
        v8.super.isa = v3;
        v11 = 0xE500000000000000;
        goto LABEL_28;
      }

      goto LABEL_32;
    }

    result = _DocumentManagerBundle();
    if (!result)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v3 = result;
    v10 = "Orange [Menu Title]";
    v4 = 0xD000000000000013;
    v13 = 0x8000000249BFC0A0;
    v5 = 0x617A696C61636F4CLL;
    v6 = 0xEB00000000656C62;
    v9 = 0x656C70727550;
    goto LABEL_18;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v3 = result;
        v4 = 0xD000000000000011;
        v13 = 0x8000000249BFC0A0;
        v5 = 0x617A696C61636F4CLL;
        v6 = 0xEB00000000656C62;
        v7 = 0x8000000249BFC1B0;
        v8.super.isa = v3;
        v9 = 1702194242;
        goto LABEL_23;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    result = _DocumentManagerBundle();
    if (!result)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v3 = result;
    v10 = "Red [Menu Title]";
    v4 = 0xD000000000000013;
    v13 = 0x8000000249BFC0A0;
    v5 = 0x617A696C61636F4CLL;
    v6 = 0xEB00000000656C62;
    v9 = 0x776F6C6C6559;
LABEL_18:
    v7 = v10 | 0x8000000000000000;
    v8.super.isa = v3;
    v11 = 0xE600000000000000;
LABEL_28:
    v12 = 0xD000000000000046;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v5, v8, *&v9, *(&v13 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (a1 == 6)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v3 = result;
      v4 = 0xD000000000000010;
      v13 = 0x8000000249BFC0A0;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v7 = 0x8000000249BFC150;
      v8.super.isa = v3;
      v9 = 6579538;
      v11 = 0xE300000000000000;
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (a1 != 7)
  {
    return countAndFlagsBits;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v10 = "the color of a new tag";
    v4 = 0xD000000000000013;
    v13 = 0x8000000249BFC0A0;
    v5 = 0x617A696C61636F4CLL;
    v6 = 0xEB00000000656C62;
    v9 = 0x65676E61724FLL;
    goto LABEL_18;
  }

LABEL_37:
  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCTagEditorNewTagCell.updateContentConfiguration()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for CharacterSet();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v13);
  if (v17)
  {
    v18 = v17;
    v19 = [v17 displayName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v20 = (*((*v16 & *v0) + 0x118))();
    if (v21)
    {
      *&v33 = v20;
      *(&v33 + 1) = v21;
      static CharacterSet.whitespacesAndNewlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v22 = StringProtocol.trimmingCharacters(in:)();
      v24 = v23;
      (*(v11 + 8))(v15, v10);

      v25 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v25 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (!v25)
      {
      }
    }
  }

  MEMORY[0x24C1FBB10](&v33);
  if (*(&v34 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
    v26 = type metadata accessor for UIListContentConfiguration();
    v27 = swift_dynamicCast();
    (*(*(v26 - 8) + 56))(v9, v27 ^ 1u, 1, v26);
  }

  else
  {
    outlined destroy of CharacterSet?(&v33, &_s5UIKit22UIContentConfiguration_pSgMd);
    v26 = type metadata accessor for UIListContentConfiguration();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  }

  type metadata accessor for UIListContentConfiguration();
  v28 = *(v26 - 8);
  v29 = *(v28 + 48);
  if (v29(v9, 1, v26))
  {
  }

  else
  {
    UIListContentConfiguration.text.setter();
  }

  if (!v29(v9, 1, v26))
  {
    v30 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.numberOfLines.setter();
    v30(&v33, 0);
  }

  outlined init with copy of UIListContentConfiguration?(v9, v5);
  if (v29(v5, 1, v26) == 1)
  {
    outlined destroy of CharacterSet?(v5, &_s5UIKit26UIListContentConfigurationVSgMd);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
  }

  else
  {
    *(&v34 + 1) = v26;
    v35 = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
    (*(v28 + 32))(boxed_opaque_existential_1, v5, v26);
  }

  v32 = MEMORY[0x277D85000];
  MEMORY[0x24C1FBB20](&v33);
  (*((*v32 & *v1) + 0x158))(0, 0);
  outlined destroy of CharacterSet?(v9, &_s5UIKit26UIListContentConfigurationVSgMd);
}

Swift::Void __swiftcall DOCTagEditorNewTagCell.updateTextFieldLayout(text:)(Swift::String_optional text)
{
  object = text.value._object;
  countAndFlagsBits = text.value._countAndFlagsBits;
  v4 = [v1 contentView];
  v5 = [v4 subviews];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = object;
  if (v6 >> 62)
  {
LABEL_30:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_31:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_31;
  }

LABEL_3:
  v8 = 0;
  while ((v6 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x24C1FC540](v8, v6);
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v31 = v9;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITextField);
    if ([v31 isKindOfClass_])
    {
      goto LABEL_13;
    }

    ++v8;
    if (v10 == v7)
    {
      goto LABEL_31;
    }
  }

  if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_30;
  }

  v9 = *(v6 + 8 * v8 + 32);
  v10 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = v1;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BFC220, &v32);
      _os_log_impl(&dword_2493AC000, v15, v16, "%s text: String(describing: text))", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1FE850](v18, -1, -1);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }

    if (v30)
    {
      v19 = MEMORY[0x24C1FAD20](countAndFlagsBits);
    }

    else
    {
      v20 = (*((*MEMORY[0x277D85000] & *v13) + 0x118))();
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v19 = MEMORY[0x24C1FAD20](v20, v22);
    }

    [v12 setText_];

    v23 = _DocumentManagerBundle();
    if (v23)
    {
      v24 = v23;
      v34._object = 0x8000000249BFC1D0;
      v25._countAndFlagsBits = 0x656D614E20676154;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v34._countAndFlagsBits = 0xD000000000000041;
      v25._object = 0xE800000000000000;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v34);

      v29 = MEMORY[0x24C1FAD20](v28._countAndFlagsBits, v28._object);

      [v12 setPlaceholder_];

      [v12 setWritingToolsBehavior_];
      goto LABEL_26;
    }

    __break(1u);
  }

  else
  {
LABEL_26:
  }
}

id DOCTagEditorNewTagCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_textEditingDelegate] = 0;
  v9 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_currentNewTagInputText];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_newTagColor] = 6;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DOCTagEditorNewTagCell();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t DOCTagEditorNewTagCell.__ivar_destroyer()
{
  swift_unknownObjectRelease();
}

id DOCTagEditorAddTagCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v70 = &v64 - v11;
  v68 = type metadata accessor for UIListContentConfiguration();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v12);
  v66 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v65 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v69 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v64 - v22;
  inserted = type metadata accessor for UICellAccessory.InsertOptions();
  v24 = *(inserted - 8);
  MEMORY[0x28223BE20](inserted, v25);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for UICellAccessory.DisplayedState();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UICellAccessory();
  v72 = *(v33 - 8);
  v73 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DOCTagEditorAddTagCell();
  v77.receiver = v4;
  v77.super_class = v37;
  v38 = objc_msgSendSuper2(&v77, sel_initWithFrame_, a1, a2, a3, a4);
  (*(v29 + 104))(v32, *MEMORY[0x277D74A98], v28);
  v39 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v39 - 8) + 56))(v23, 1, 1, v39);
  v40 = v38;
  v41 = v72;
  UICellAccessory.InsertOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
  static UICellAccessory.insert(displayed:options:actionHandler:)();
  (*(v24 + 8))(v27, inserted);
  v42 = v32;
  v43 = v68;
  (*(v29 + 8))(v42, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
  v44 = v73;
  v45 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_249B9A480;
  (*(v41 + 16))(v46 + v45, v36, v44);
  UICollectionViewListCell.accessories.setter();
  v75 = v43;
  v76 = MEMORY[0x277D74C30];
  __swift_allocate_boxed_opaque_existential_1(v74);
  static UIListContentConfiguration.cell()();
  MEMORY[0x24C1FBB20](v74);
  v47 = v69;
  static UIBackgroundConfiguration.listCell()();
  v48 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  v49 = MEMORY[0x24C1FBB40](v47);
  MEMORY[0x24C1FBB10](v74, v49);

  if (!v75)
  {
    (*(v41 + 8))(v36, v44);
    outlined destroy of CharacterSet?(v74, &_s5UIKit22UIContentConfiguration_pSgMd);
    v50 = v70;
    (*(v71 + 56))(v70, 1, 1, v43);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
  v50 = v70;
  v51 = swift_dynamicCast();
  v52 = v71;
  (*(v71 + 56))(v50, v51 ^ 1u, 1, v43);
  if ((*(v52 + 48))(v50, 1, v43) == 1)
  {
    (*(v41 + 8))(v36, v44);
LABEL_5:
    outlined destroy of CharacterSet?(v50, &_s5UIKit26UIListContentConfigurationVSgMd);
    return v40;
  }

  v53 = v40;
  v69 = v36;
  v54 = v65;
  (*(v52 + 32))(v65, v50, v43);
  v55 = *(v52 + 16);
  v56 = v66;
  v55(v66, v54, v43);
  result = _DocumentManagerBundle();
  if (result)
  {
    v58 = result;
    v78._object = 0x8000000249BFC260;
    v59.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v59.value._object = 0xEB00000000656C62;
    v60._countAndFlagsBits = 0x2077654E20646441;
    v60._object = 0xAE00A680E2676154;
    v61._object = 0x8000000249BFC240;
    v78._countAndFlagsBits = 0xD000000000000040;
    v61._countAndFlagsBits = 0xD00000000000001ALL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v59, v58, v60, v78);

    UIListContentConfiguration.text.setter();
    v75 = v43;
    v76 = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
    v55(boxed_opaque_existential_1, v56, v43);
    v40 = v53;
    MEMORY[0x24C1FBB20](v74);
    v63 = *(v52 + 8);
    v63(v56, v43);
    v63(v54, v43);
    (*(v72 + 8))(v69, v73);
    return v40;
  }

  __break(1u);
  return result;
}

uint64_t DOCTagEditorTagCell.updateConfiguration(using:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v28[-1] - v8;
  v10 = type metadata accessor for UIBackgroundConfiguration();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v28[-1] - v17;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v20 = a2();
  v29.receiver = v4;
  v29.super_class = v20;
  objc_msgSendSuper2(&v29, sel__bridgedUpdateConfigurationUsingState_, isa);

  static UIBackgroundConfiguration.listCell()();
  v21 = type metadata accessor for UICellConfigurationState();
  v28[3] = v21;
  v28[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, a1, v21);
  UIBackgroundConfiguration.updated(for:)();
  v23 = *(v11 + 8);
  v23(v14, v10);
  __swift_destroy_boxed_opaque_existential_0(v28);
  v24 = [objc_opt_self() labelColor];
  v25 = [v24 colorWithAlphaComponent_];

  UIBackgroundConfiguration.backgroundColor.setter();
  (*(v11 + 16))(v9, v18, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  MEMORY[0x24C1FBB40](v9);
  return (v23)(v18, v10);
}

uint64_t @objc DOCTagEditorTagCell.updateConfiguration(using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  DOCTagEditorTagCell.updateConfiguration(using:)(v10, a4);

  return (*(v7 + 8))(v10, v6);
}

id DOCTagEditorTagCell.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *specialized DOCTagEditorTagCell.tagValue.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagValue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = MEMORY[0x277D85000];
  if (!a1)
  {
    return (*((*v6 & *v1) + 0xE0))();
  }

  result = (*((*MEMORY[0x277D85000] & *v1) + 0xA0))();
  if (result)
  {
    v8 = result;
    [result setItemTag_];

    return (*((*v6 & *v1) + 0xE0))();
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of UIListContentConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id partial apply for closure #3 in DOCTagEditorNewTagCell.updateConfiguration(using:)(void *a1)
{
  specialized closure #3 in DOCTagEditorNewTagCell.updateConfiguration(using:)(a1);

  return v1;
}

void specialized closure #3 in DOCTagEditorNewTagCell.updateConfiguration(using:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *Strong) + 0x100))();
    if (!v5)
    {
LABEL_14:

      return;
    }

    v6 = v5;
    v7 = [a1 proposedReplacementText];
    if (v7)
    {
      v8 = v7;
      v9 = [a1 proposedReplacementRange];
      if (v9 != NSNotFound.getter())
      {
        v14 = [a1 text];
        if (!v14)
        {

          __break(1u);
          return;
        }

        v15 = v14;
        v16 = [a1 proposedReplacementRange];
        v10 = [v15 stringByReplacingCharactersInRange:v16 withString:{v17, v8}];

        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v18;

        goto LABEL_9;
      }
    }

    v10 = [a1 text];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
LABEL_9:

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.UI);
    v20 = a1;

    v21 = v3;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v40 = v6;
      v24 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v24 = 136315906;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BFC580, &v41);
      *(v24 + 12) = 2080;
      v25 = [v20 text];
      v38 = v23;
      v26 = v11;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v41);

      *(v24 + 14) = v30;
      *(v24 + 22) = 2080;
      *(v24 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v13, &v41);
      *(v24 + 32) = 2080;
      v31 = [v21 debugDescription];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v41);
      v4 = MEMORY[0x277D85000];

      *(v24 + 34) = v35;
      v11 = v26;
      _os_log_impl(&dword_2493AC000, v22, v38, "%s editing did update text: %s to: %s for cell: %s", v24, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v39, -1, -1);
      v36 = v24;
      v6 = v40;
      MEMORY[0x24C1FE850](v36, -1, -1);
    }

    (*((*v4 & *v21) + 0x120))(v11, v13);
    v37 = MEMORY[0x24C1FAD20](v11, v13);

    [v6 tagEditorCell:v21 didUpdateText:v37];

    swift_unknownObjectRelease();
    goto LABEL_14;
  }
}

uint64_t specialized closure #1 in DOCNode.createDOCItemBookmark(bookmark:completion:)(uint64_t a1, void *a2, void (*a3)(id, char *, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v79 = a6;
  v80 = a7;
  v78 = a5;
  v84 = a3;
  v85 = a4;
  v81 = a1;
  v74 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v8);
  v76 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v75 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v82 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v83 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v68 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  MEMORY[0x28223BE20](v29, v30);
  if (a2)
  {
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.Picker);
    v34 = a2;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v39 = Error.localizedDescription.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, aBlock);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_2493AC000, v35, v36, "Error while fetching item : %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C1FE850](v38, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }

    v42 = v83;
    (*(v26 + 56))(v83, 1, 1, v25);
    v43 = v42;
    v44 = a2;
LABEL_13:
    v84(0, v43, v44);
    return outlined destroy of CharacterSet?(v42, &_s10Foundation3URLVSgMd);
  }

  v71 = v32;
  v45 = &v68 - v31;
  v72 = v13;
  v46 = v82;
  v73 = v10;
  outlined init with copy of DOCGridLayout.Spec?(v81, v24, &_s10Foundation3URLVSgMd);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.Picker);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2493AC000, v48, v49, "Error while fetching item URL is nil", v50, 2u);
      MEMORY[0x24C1FE850](v50, -1, -1);
    }

    v42 = v83;
    (*(v26 + 56))(v83, 1, 1, v25);
    v43 = v42;
    v44 = 0;
    goto LABEL_13;
  }

  v83 = *(v26 + 32);
  (v83)(v45, v24, v25);
  (*(v46 + 104))(v17, *MEMORY[0x277D851D0], v14);
  if ([objc_opt_self() isMainThread])
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v68 = static OS_dispatch_queue.global(qos:)();
    v52 = *(v26 + 16);
    v53 = v71;
    v70 = v45;
    v52(v71, v45, v25);
    v54 = *(v26 + 80);
    v81 = v17;
    v55 = (v54 + 32) & ~v54;
    v56 = (v27 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = v25;
    v57 = swift_allocObject();
    v58 = v79;
    *(v57 + 16) = v78;
    *(v57 + 24) = v58;
    (v83)(v57 + v55, v53, v25);
    v59 = (v57 + v56);
    v60 = v85;
    *v59 = v84;
    v59[1] = v60;
    v61 = v80;
    *(v57 + ((v56 + 23) & 0xFFFFFFFFFFFFFFF8)) = v80;
    aBlock[4] = _s10Foundation3URLV26DocumentManagerExecutablesE21createDOCItemBookmark8bookmark4node3qos10completionyAD0H4InfoO_So7DOCNode_pSg8Dispatch0O3QoSV0P6SClassOySo0gH0CSg_ACSgs5Error_pSgtctFyyYbcfU_TA_0;
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_77_4;
    v62 = _Block_copy(aBlock);

    v63 = v61;
    v64 = v72;
    static DispatchQoS.unspecified.getter();
    v86 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v65 = v76;
    v66 = v74;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v67 = v68;
    MEMORY[0x24C1FB9A0](0, v64, v65, v62);
    _Block_release(v62);

    (*(v77 + 8))(v65, v66);
    (*(v75 + 8))(v64, v73);
    (*(v82 + 8))(v81, v14);
    (*(v26 + 8))(v70, v69);
  }

  else
  {
    createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(v78, v79, v45, v84, v85, v80);
    (*(v46 + 8))(v17, v14);
    return (*(v26 + 8))(v45, v25);
  }
}

uint64_t DOCDocumentManager.DocumentCreationSession.Phase.description.getter(unsigned __int8 a1)
{
  v1 = 0x6576697463616E69;
  v2 = 0x6E6974726F706D69;
  v3 = 0x69746E6573657270;
  if (a1 != 3)
  {
    v3 = 0x65746E6573657270;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x676E697461657263;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCDocumentManager.DocumentCreationSession.Phase(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6576697463616E69;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 1)
  {
    if (*a1)
    {
      v7 = 0x676E697461657263;
    }

    else
    {
      v7 = 0x6576697463616E69;
    }

    v8 = 0xE800000000000000;
  }

  else
  {
    v5 = 0x69746E6573657270;
    v6 = 0xEA0000000000676ELL;
    if (v3 != 3)
    {
      v5 = 0x65746E6573657270;
      v6 = 0xE900000000000064;
    }

    if (v3 == 2)
    {
      v7 = 0x6E6974726F706D69;
    }

    else
    {
      v7 = v5;
    }

    if (v3 == 2)
    {
      v8 = 0xE900000000000067;
    }

    else
    {
      v8 = v6;
    }
  }

  v9 = 0x6E6974726F706D69;
  v10 = 0xE900000000000067;
  v11 = 0x69746E6573657270;
  v12 = 0xEA0000000000676ELL;
  if (v4 != 3)
  {
    v11 = 0x65746E6573657270;
    v12 = 0xE900000000000064;
  }

  if (v4 != 2)
  {
    v9 = v11;
    v10 = v12;
  }

  if (*a2)
  {
    v2 = 0x676E697461657263;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v9;
  }

  if (*a2 <= 1u)
  {
    v14 = 0xE800000000000000;
  }

  else
  {
    v14 = v10;
  }

  if (v7 == v13 && v8 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCDocumentManager.DocumentCreationSession.Phase()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCDocumentManager.DocumentCreationSession.Phase()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCDocumentManager.DocumentCreationSession.Phase()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCDocumentManager.DocumentCreationSession.Phase@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DOCDocumentManager.DocumentCreationSession.Phase.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCDocumentManager.DocumentCreationSession.Phase(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6576697463616E69;
  v5 = 0xE900000000000067;
  v6 = 0x6E6974726F706D69;
  v7 = 0xEA0000000000676ELL;
  v8 = 0x69746E6573657270;
  if (v2 != 3)
  {
    v8 = 0x65746E6573657270;
    v7 = 0xE900000000000064;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E697461657263;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCDocumentManager.DocumentCreationSession.Phase()
{
  v1 = *v0;
  v2 = 0x6576697463616E69;
  v3 = 0x6E6974726F706D69;
  v4 = 0x69746E6573657270;
  if (v1 != 3)
  {
    v4 = 0x65746E6573657270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E697461657263;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t DOCDocumentManager.DocumentCreationSession.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_identifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DOCDocumentManager.DocumentCreationSession.phase.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_phase;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCDocumentManager.DocumentCreationSession.phase.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_phase;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DOCDocumentManager.DocumentCreationSession.targetLocation.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_targetLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCDocumentManager.DocumentCreationSession.targetLocation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_targetLocation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCDocumentManager.DocumentCreationSession.switchToRecentsAfterPresentation.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_switchToRecentsAfterPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCDocumentManager.DocumentCreationSession.switchToRecentsAfterPresentation.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_switchToRecentsAfterPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCDocumentManager.DocumentCreationSession.isInUIPDocumentLanding.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_isInUIPDocumentLanding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCDocumentManager.DocumentCreationSession.isInUIPDocumentLanding.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_isInUIPDocumentLanding;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *DOCDocumentManager.DocumentCreationSession.serviceViewController.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_serviceViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCDocumentManager.DocumentCreationSession.serviceViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_serviceViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DOCDocumentManager.DocumentCreationSession.__allocating_init(targetLocation:configuration:serviceViewController:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized DOCDocumentManager.DocumentCreationSession.init(targetLocation:configuration:serviceViewController:)(a1, a2, a3);

  return v8;
}

id DOCDocumentManager.DocumentCreationSession.init(targetLocation:configuration:serviceViewController:)(void *a1, void *a2, void *a3)
{
  v6 = specialized DOCDocumentManager.DocumentCreationSession.init(targetLocation:configuration:serviceViewController:)(a1, a2, a3);

  return v6;
}

id DOCDocumentManager.DocumentCreationSession.__deallocating_deinit()
{
  DOCDocumentManager.DocumentCreationSession.endDisablingScreenUpdates()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCDocumentManager.DocumentCreationSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCDocumentManager.DocumentCreationSession.isDisablingScreenUpdates.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_isDisablingScreenUpdates;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCDocumentManager.DocumentCreationSession.isDisablingScreenUpdates.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_isDisablingScreenUpdates;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void DOCDocumentManager.DocumentCreationSession.beginDisablingScreenUpdatesIfNecessary()()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x110))() & 1) == 0 && ((*((*v1 & *v0) + 0xD8))())
  {
    v2 = (*((*v1 & *v0) + 0xF0))();
    if (v2)
    {
      v3 = v2;
      v12 = [v2 viewIfLoaded];

      if (v12)
      {
        (*((*v1 & *v0) + 0x118))(1);
        [v12 setUserInteractionEnabled_];
        v4 = [v12 snapshotViewAfterScreenUpdates_];
        if (v4)
        {
          v5 = *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_snapshotCoverView);
          *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_snapshotCoverView) = v4;
          v6 = v4;

          [v12 addSubview_];
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v7 = DOCConstraintsToResizeWithSuperview();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
          v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v8 >> 62)
          {
            _bridgeCocoaArray<A>(_:)();
          }

          else
          {
            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          }

          v9 = objc_opt_self();
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v9 activateConstraints_];

          v11 = isa;
        }

        else
        {
          v11 = v12;
        }
      }
    }
  }
}

void DOCDocumentManager.DocumentCreationSession.endDisablingScreenUpdates()()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x110))())
  {
    v2 = (*((*v1 & *v0) + 0xF0))();
    if (v2)
    {
      v3 = v2;
      v5 = [v2 viewIfLoaded];

      if (v5)
      {
        (*((*v1 & *v0) + 0x118))(0);
        [v5 setUserInteractionEnabled_];
        v4 = *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_snapshotCoverView);
        if (v4)
        {
          *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_snapshotCoverView) = 0;
          [v4 removeFromSuperview];
        }
      }
    }
  }
}

id DOCDocumentManager.DocumentCreationSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void DOCDocumentManager.updatePhaseOfCreationSession(_:to:)(void *a1, unsigned int a2)
{
  v3 = v2;
  v71 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v65 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v68, v9);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v67 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v63 - v17;
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v63 - v22;
  v70 = (*((*MEMORY[0x277D85000] & *a1) + 0x90))(v21);
  v24 = *(v6 + 16);
  v66 = a1;
  v24(v23, a1 + OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_identifier, v5);
  v69 = v6;
  v25 = *(v6 + 56);
  v26 = 1;
  v25(v23, 0, 1, v5);
  v64 = v3;
  v27 = [v3 activeDocumentCreationSession];
  if (v27)
  {
    v28 = v27;
    v24(v18, &v27[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_identifier], v5);

    v26 = 0;
  }

  v25(v18, v26, 1, v5);
  v29 = *(v68 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v23, v11, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v18, &v11[v29], &_s10Foundation4UUIDVSgMd);
  v30 = v69;
  v31 = *(v69 + 48);
  if (v31(v11, 1, v5) == 1)
  {
    outlined destroy of CharacterSet?(v18, &_s10Foundation4UUIDVSgMd);
    outlined destroy of CharacterSet?(v23, &_s10Foundation4UUIDVSgMd);
    v32 = v31(&v11[v29], 1, v5);
    v33 = v71;
    if (v32 == 1)
    {
      outlined destroy of CharacterSet?(v11, &_s10Foundation4UUIDVSgMd);
      v34 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v35 = v67;
  outlined init with copy of DOCGridLayout.Spec?(v11, v67, &_s10Foundation4UUIDVSgMd);
  if (v31(&v11[v29], 1, v5) == 1)
  {
    outlined destroy of CharacterSet?(v18, &_s10Foundation4UUIDVSgMd);
    outlined destroy of CharacterSet?(v23, &_s10Foundation4UUIDVSgMd);
    (*(v30 + 8))(v35, v5);
    v33 = v71;
LABEL_8:
    outlined destroy of CharacterSet?(v11, &_s10Foundation4UUIDVSg_ADtMd);
    v34 = 0;
    goto LABEL_10;
  }

  v36 = v65;
  (*(v30 + 32))(v65, &v11[v29], v5);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v37 = v30;
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v37 + 8);
  v38(v36, v5);
  outlined destroy of CharacterSet?(v18, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CharacterSet?(v23, &_s10Foundation4UUIDVSgMd);
  v38(v35, v5);
  outlined destroy of CharacterSet?(v11, &_s10Foundation4UUIDVSgMd);
  v33 = v71;
LABEL_10:
  v39 = v70;
  v40 = 0x6576697463616E69;
  if (v33 <= 1u)
  {
    v42 = 0xE800000000000000;
    if (v33)
    {
      v41 = 0x676E697461657263;
    }

    else
    {
      v41 = 0x6576697463616E69;
    }
  }

  else if (v33 == 2)
  {
    v41 = 0x6E6974726F706D69;
    v42 = 0xE900000000000067;
  }

  else if (v33 == 3)
  {
    v41 = 0x69746E6573657270;
    v42 = 0xEA0000000000676ELL;
  }

  else
  {
    v41 = 0x65746E6573657270;
    v42 = 0xE900000000000064;
  }

  if (v70 <= 1u)
  {
    v43 = 0xE800000000000000;
    if (v70)
    {
      if (v41 != 0x676E697461657263)
      {
        goto LABEL_34;
      }
    }

    else if (v41 != 0x6576697463616E69)
    {
      goto LABEL_34;
    }
  }

  else if (v70 == 2)
  {
    v43 = 0xE900000000000067;
    if (v41 != 0x6E6974726F706D69)
    {
      goto LABEL_34;
    }
  }

  else if (v70 == 3)
  {
    v43 = 0xEA0000000000676ELL;
    if (v41 != 0x69746E6573657270)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v43 = 0xE900000000000064;
    if (v41 != 0x65746E6573657270)
    {
      goto LABEL_34;
    }
  }

  if (v42 == v43)
  {

    return;
  }

LABEL_34:
  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v44)
  {
    return;
  }

  static os_log_type_t.info.getter();
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v72 = 0xD000000000000016;
  v73 = 0x8000000249BFCC80;
  if (v39 <= 1u)
  {
    v46 = 0xE800000000000000;
    v45 = v39 ? 0x676E697461657263 : 0x6576697463616E69;
  }

  else if (v39 == 2)
  {
    v45 = 0x6E6974726F706D69;
    v46 = 0xE900000000000067;
  }

  else if (v39 == 3)
  {
    v45 = 0x69746E6573657270;
    v46 = 0xEA0000000000676ELL;
  }

  else
  {
    v45 = 0x65746E6573657270;
    v46 = 0xE900000000000064;
  }

  v47 = MEMORY[0x277D85000];
  MEMORY[0x24C1FAEA0](v45, v46);

  MEMORY[0x24C1FAEA0](544175136, 0xE400000000000000);
  if (v33 <= 1u)
  {
    v48 = 0xE800000000000000;
    if (v33)
    {
      v40 = 0x676E697461657263;
    }
  }

  else if (v33 == 2)
  {
    v40 = 0x6E6974726F706D69;
    v48 = 0xE900000000000067;
  }

  else if (v33 == 3)
  {
    v40 = 0x69746E6573657270;
    v48 = 0xEA0000000000676ELL;
  }

  else
  {
    v40 = 0x65746E6573657270;
    v48 = 0xE900000000000064;
  }

  MEMORY[0x24C1FAEA0](v40, v48);

  v49 = v66;
  specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(v66, v72, v73);

  v50 = (*((*v47 & *v49) + 0x98))(v33);
  if ((v34 & 1) == 0)
  {
    return;
  }

  if (v33 <= 1u)
  {
    if (v33)
    {
      return;
    }

LABEL_60:
    v54 = MEMORY[0x277D85000];
    v55 = (*((*MEMORY[0x277D85000] & *v66) + 0xC0))();
    v56 = v64;
    if (v55)
    {
      v57 = (*((*v54 & *v64) + 0xB0))();
      if (v57)
      {
        v58 = v57;
        v59 = objc_opt_self();
        v60 = [v58 configuration];
        v61 = [v60 sceneIdentifier];

        v62 = [v59 globalTabbedBrowserControllerForIdentifier_];
        if (v62)
        {
          [v62 switchToTab_];
        }
      }
    }

    DOCDocumentManager.DocumentCreationSession.endDisablingScreenUpdates()();
    [v56 setActiveDocumentCreationSession_];
    return;
  }

  if (v33 == 2)
  {
    DOCDocumentManager.DocumentCreationSession.beginDisablingScreenUpdatesIfNecessary()();
    return;
  }

  if (v33 != 3)
  {
    goto LABEL_60;
  }

  v51 = (*((*MEMORY[0x277D85000] & *v66) + 0xF0))(v50);
  if (v51)
  {
    v52 = v51;
    v53 = [v51 doc_hasDisappeared];

    if (v53)
    {
      goto LABEL_60;
    }
  }
}

Swift::Void __swiftcall DOCDocumentManager.didPresentDocumentForActiveDocumentCreationSession()()
{
  v1 = [v0 activeDocumentCreationSession];
  if (v1)
  {
    v2 = v1;
    static os_log_type_t.info.getter();
    specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(v2, 0xD00000000000002ELL, 0x8000000249BFC5E0);
    DOCDocumentManager.updatePhaseOfCreationSession(_:to:)(v2, 4u);
    DOCDocumentManager.updatePhaseOfCreationSession(_:to:)(v2, 0);
  }
}

uint64_t DOCDocumentManager.uiBrowserDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCDocumentManager.uiBrowserDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_uiBrowserDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

void DOCDocumentManager.documentBrowser.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DOCDocumentManager.documentBrowser.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_documentBrowser;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameOverlayView.itemCell.modify;
}

id DOCDocumentManager.__allocating_init(configuration:sourceObserver:hierarchyController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_activeDocumentCreationSession] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_configuration] = a1;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_sourceObserver] = a2;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_hierarchyController] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id DOCDocumentManager.init(configuration:sourceObserver:hierarchyController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_activeDocumentCreationSession] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_configuration] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_sourceObserver] = a2;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_hierarchyController] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for DOCDocumentManager();
  return objc_msgSendSuper2(&v8, sel_init);
}

void closure #1 in DOCDocumentManager.notifyDelegateOfImport(of:destination:error:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D85000];
  v18 = (*((*MEMORY[0x277D85000] & *a1) + 0xB0))(v14);
  if (v18)
  {
    v42 = v18;
    v19 = (*((*v17 & *a1) + 0x98))();
    if (v19)
    {
      v20 = v19;
      outlined init with copy of DOCGridLayout.Spec?(a2, v10, &_s10Foundation3URLVSgMd);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        outlined destroy of CharacterSet?(v10, &_s10Foundation3URLVSgMd);
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.UI);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_2493AC000, v22, v23, "Import failed", v24, 2u);
          MEMORY[0x24C1FE850](v24, -1, -1);
        }

        if ([v20 respondsToSelector_])
        {
          swift_unknownObjectRetain();
          URL._bridgeToObjectiveC()(v25);
          v27 = v26;
          if (a4)
          {
            v28 = _convertErrorToNSError(_:)();
          }

          else
          {
            v28 = 0;
          }

          [v20 documentBrowser:v42 failedToImportDocumentAtURL:v27 error:v28];

          swift_unknownObjectRelease_n();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
        (*(v12 + 32))(v16, v10, v11);
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.UI);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_2493AC000, v31, v32, "Import successful", v33, 2u);
          MEMORY[0x24C1FE850](v33, -1, -1);
        }

        if ([v20 respondsToSelector_])
        {
          URL._bridgeToObjectiveC()(v34);
          v36 = v35;
          URL._bridgeToObjectiveC()(v37);
          v39 = v38;
          [v20 documentBrowser:v42 didImportDocumentAtURL:v36 toDestinationURL:v38];
          swift_unknownObjectRelease();

          v40 = v39;
        }

        else
        {
          swift_unknownObjectRelease();
          v40 = v42;
        }

        (*(v12 + 8))(v16, v11);
      }
    }

    else
    {
      v29 = v42;
    }
  }
}

uint64_t closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, char *a9)
{
  v150 = a7;
  v151 = a8;
  v144 = a6;
  v157 = a5;
  v158 = a3;
  v159 = a4;
  v156 = a1;
  v167.super.isa = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v142 = &v135 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v146 = &v135 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v143 = &v135 - v23;
  v145 = v24;
  MEMORY[0x28223BE20](v25, v26);
  v147 = (&v135 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v148 = *(v28 - 8);
  v29 = *(v148 + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v149 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v155 = &v135 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v135 - v36;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v135 - v40;
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v135 - v44;
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v135 - v48;
  v50 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v160 = v50;
  v161 = v49;
  v153 = v14;
  v154 = a2;
  v152 = v45;
  if (v156 == 1)
  {
    v51 = v50;
    v141 = URL.startAccessingSecurityScopedResource()();
    URL._bridgeToObjectiveC()((&v167._reserved + 4));
    v53 = v52;
    *&aBlock = 0;
    v54 = [v51 URLForDirectory:99 inDomain:1 appropriateForURL:v52 create:1 error:&aBlock];

    v55 = aBlock;
    if (v54)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57 = v11;
      v58 = *(v11 + 56);
      v58(v41, 0, 1, v10);
      v59 = v41;
      v60 = v161;
      outlined init with take of URL?(v59, v161);
      v61 = 0;
    }

    else
    {
      v95 = aBlock;
      v61 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v57 = v11;
      v58 = *(v11 + 56);
      v60 = v161;
      v58(v161, 1, 1, v10);
    }

    outlined init with copy of DOCGridLayout.Spec?(v60, v37, &_s10Foundation3URLVSgMd);
    if ((*(v57 + 48))(v37, 1, v10) == 1)
    {
      outlined destroy of CharacterSet?(v37, &_s10Foundation3URLVSgMd);
LABEL_18:
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v98 = swift_allocObject();
      v99 = v98;
      *(v98 + 16) = xmmword_249B9A480;
      if (v61)
      {
        v100 = _convertErrorToNSError(_:)();
        v164 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
        v165 = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
        *&aBlock = v100;
        outlined init with take of DOCGoToFolderCandidate(&aBlock, v99 + 32);
        v101 = v61;
      }

      else
      {
        *(v98 + 56) = MEMORY[0x277D837D0];
        v101 = 0;
        *(v98 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v99 + 32) = 0x726F727265206F6ELL;
        *(v99 + 40) = 0xE800000000000000;
      }

      os_log(_:dso:log:type:_:)();

      v102 = v155;
      v58(v155, 1, 1, v10);
      v158(v102, v61);

      outlined destroy of CharacterSet?(v102, &_s10Foundation3URLVSgMd);
      if (v141)
      {
        URL.stopAccessingSecurityScopedResource()();
      }

      return outlined destroy of CharacterSet?(v161, &_s10Foundation3URLVSgMd);
    }

    v96 = *(v57 + 32);
    v97 = v147;
    v96(v147, v37, v10);
    if (v61)
    {
      (*(v57 + 8))(v97, v10);
      goto LABEL_18;
    }

    v135 = v58;
    v140 = v57 + 32;
    v103 = v154;
    URL.lastPathComponent.getter();
    v139 = v96;
    URL.appendingPathComponent(_:)();

    v138 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
    URL._bridgeToObjectiveC()(&v167._urlString);
    v137 = v104;
    URL._bridgeToObjectiveC()(&v167);
    v136 = v105;
    v106 = *(v57 + 16);
    v107 = v146;
    v106(v146, v103, v10);
    v108 = v142;
    v106(v142, v97, v10);
    v109 = *(v57 + 80);
    v110 = (v109 + 24) & ~v109;
    v111 = (v145 + v109 + v110) & ~v109;
    v112 = (v145 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
    v113 = swift_allocObject();
    v114 = v10;
    v115 = v160;
    *(v113 + 16) = v160;
    v116 = v113 + v110;
    v117 = v139;
    v139(v116, v107, v114);
    v142 = v114;
    v117(v113 + v111, v108, v114);
    v118 = (v113 + v112);
    v119 = v159;
    *v118 = v158;
    v118[1] = v119;
    v120 = swift_allocObject();
    *(v120 + 16) = partial apply for closure #1 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:);
    *(v120 + 24) = v113;
    v165 = partial apply for thunk for @callee_guaranteed (@in_guaranteed URL, @in_guaranteed URL) -> ();
    v166 = v120;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v163 = thunk for @escaping @callee_guaranteed (@in_guaranteed URL, @in_guaranteed URL) -> ();
    v164 = &block_descriptor_120_0;
    v121 = _Block_copy(&aBlock);
    v122 = v115;

    *&aBlock = 0;
    v123 = v138;
    v124 = v137;
    v125 = v136;
    [v138 coordinateReadingItemAtURL:v137 options:1 writingItemAtURL:v136 options:8 error:&aBlock byAccessor:v121];
    _Block_release(v121);

    v126 = aBlock;
    LOBYTE(v123) = swift_isEscapingClosureAtFileLocation();

    if (v123)
    {
      __break(1u);
      goto LABEL_36;
    }

    v49 = v161;
    v156 = v113;
    if (v126)
    {
      v160 = v122;
      v122 = v142;
      if (one-time initialization token for UI == -1)
      {
LABEL_29:
        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_249B9FA70;
        URL._bridgeToObjectiveC()(&unk_249B9F000);
        v129 = v128;
        *(v127 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL);
        *(v127 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL);
        *(v127 + 32) = v129;
        *(v127 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
        *(v127 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
        *(v127 + 72) = v126;
        v130 = v126;
        os_log(_:dso:log:type:_:)();

        v131 = swift_allocObject();
        v131[2] = v158;
        v131[3] = v159;
        v131[4] = v130;

        v132 = v130;
        DOCRunInMainThread(_:)();

        v133 = *(v57 + 8);
        v133(v143, v122);
        v133(v147, v122);

        if (v141)
        {
          URL.stopAccessingSecurityScopedResource()();
        }

        outlined destroy of CharacterSet?(v161, &_s10Foundation3URLVSgMd);
      }

LABEL_36:
      swift_once();
      goto LABEL_29;
    }

    v10 = v142;
    (*(v57 + 8))(v147, v142);
    v134 = v152;
    v139(v152, v143, v10);
    v135(v134, 0, 1, v10);
    if (v141)
    {
      URL.stopAccessingSecurityScopedResource()();
    }

    v147 = partial apply for closure #1 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:);
    v63 = v57;
    v45 = v152;
  }

  else
  {
    v62 = *(v11 + 56);
    v62(v49, 1, 1, v10);
    v62(v45, 1, 1, v10);
    v147 = 0;
    v156 = 0;
    v63 = v11;
  }

  v143 = a9;
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = v155;
  outlined init with copy of DOCGridLayout.Spec?(v49, v155, &_s10Foundation3URLVSgMd);
  v66 = (*(v148 + 80) + 24) & ~*(v148 + 80);
  v67 = (v29 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  *(v68 + 16) = v64;
  outlined init with take of URL?(v65, v68 + v66);
  v69 = v159;
  v70 = v160;
  *(v68 + v67) = v160;
  v71 = (v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v71 = v158;
  v71[1] = v69;
  v72 = v149;
  outlined init with copy of DOCGridLayout.Spec?(v45, v149, &_s10Foundation3URLVSgMd);
  v73 = *(v63 + 48);
  v74 = v63;
  if (v73(v72, 1, v10) == 1)
  {
    v75 = v153;
    (*(v63 + 16))(v153, v154, v10);
    v76 = v73(v72, 1, v10);
    v77 = v70;

    if (v76 != 1)
    {
      outlined destroy of CharacterSet?(v72, &_s10Foundation3URLVSgMd);
    }
  }

  else
  {
    v75 = v153;
    (*(v63 + 32))(v153, v72, v10);
    v78 = v70;
  }

  v79 = swift_allocObject();
  *(v79 + 16) = partial apply for closure #3 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:);
  *(v79 + 24) = v68;
  swift_retain_n();
  v80 = [v143 fileProviderItem];
  if (v80)
  {
    v81 = v80;

    v82 = v81;
    specialized DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(v75, 1, v150, v151, v81, v157, partial apply for closure #3 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:), v68);

    (*(v74 + 8))(v75, v10);
  }

  else
  {
    v83 = type metadata accessor for DOCHierarchyController(0);
    v84 = v157;
    v158 = *&v157[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_configuration];
    v159 = v83;
    v155 = *&v157[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_sourceObserver];
    v85 = v146;
    (*(v74 + 16))(v146, v75, v10);
    v86 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v87 = (v86 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = (v86 + v145 + 23) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    *(v89 + 16) = partial apply for closure #1 in NSItemProvider.doc_nodeFromTeamData(completion:);
    *(v89 + 24) = v79;
    (*(v74 + 32))(v89 + v86, v85, v10);
    v90 = v89 + v87;
    *v90 = v84;
    *(v90 + 8) = v144 & 1;
    v91 = (v89 + v88);
    v92 = v151;
    *v91 = v150;
    v91[1] = v92;

    v93 = v84;
    static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v158, v155, 0, partial apply for closure #1 in DOCDocumentManager.importDocument(url:waitForReveal:desiredDisplayName:location:completion:), v89);

    (*(v74 + 8))(v153, v10);
  }

  outlined destroy of CharacterSet?(v152, &_s10Foundation3URLVSgMd);
  outlined destroy of CharacterSet?(v161, &_s10Foundation3URLVSgMd);
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v147);
}

void closure #1 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v31);
  v11 = v10;
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v30 = 0;
  LODWORD(a3) = [a3 copyItemAtURL:v11 toURL:v13 error:&v30];

  v15 = v30;
  if (a3)
  {

    v16 = v15;
  }

  else
  {
    v29 = a6;
    v17 = v30;
    v18 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_249BA08C0;
    URL._bridgeToObjectiveC()(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatOGMR);
    v21 = v20;
    v22 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL);
    *(v19 + 56) = v22;
    v23 = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL);
    *(v19 + 64) = v23;
    *(v19 + 32) = v21;
    URL._bridgeToObjectiveC()(v24);
    *(v19 + 96) = v22;
    *(v19 + 104) = v23;
    *(v19 + 72) = v25;
    v26 = _convertErrorToNSError(_:)();
    *(v19 + 136) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v19 + 144) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
    *(v19 + 112) = v26;
    os_log(_:dso:log:type:_:)();

    v27 = swift_allocObject();
    v27[2] = v29;
    v27[3] = a7;
    v27[4] = v18;

    v28 = v18;
    DOCRunInMainThread(_:)();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL, @in_guaranteed URL) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v14 - v9;
  v11 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11(v10, v6);
  v12 = *(v3 + 8);
  v12(v6, v2);
  return (v12)(v10, v2);
}

uint64_t closure #1 in closure #1 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v11 - v7;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  a1(v8, a3);
  return outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd);
}

void closure #3 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v52 = a6;
  aBlock[9] = *MEMORY[0x277D85DE8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v48 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    outlined init with copy of DOCGridLayout.Spec?(a4, v15, &_s10Foundation3URLVSgMd);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      outlined destroy of CharacterSet?(v15, &_s10Foundation3URLVSgMd);
      if (!a1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      (*(v17 + 32))(v20, v15, v16);
      URL._bridgeToObjectiveC()(v23);
      v25 = v24;
      aBlock[0] = 0;
      v26 = [a5 removeItemAtURL:v24 error:aBlock];

      if (v26)
      {
        v27 = *(v17 + 8);
        v28 = aBlock[0];
        v27(v20, v16);
        if (!a1)
        {
LABEL_11:
          v46 = swift_allocObject();
          v46[2] = v52;
          v46[3] = a7;
          v46[4] = a2;

          v47 = a2;
          DOCRunInMainThread(_:)();

          return;
        }
      }

      else
      {
        v50 = a7;
        v51 = a2;
        v39 = aBlock[0];
        v40 = _convertNSErrorToError(_:)();

        v41 = v40;
        swift_willThrow();
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v49 = static DOCLog.UI;
        v48[1] = static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_249B9FA70;
        URL._bridgeToObjectiveC()(&unk_249B9F000);
        v44 = v43;
        *(v42 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL);
        *(v42 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL);
        *(v42 + 32) = v44;
        v45 = _convertErrorToNSError(_:)();
        *(v42 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
        *(v42 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
        *(v42 + 72) = v45;
        os_log(_:dso:log:type:_:)();

        (*(v17 + 8))(v20, v16);
        a7 = v50;
        a2 = v51;
        if (!a1)
        {
          goto LABEL_11;
        }
      }
    }

    v29 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_configuration;
    v30 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_configuration];
    v31 = a1;
    v32 = [v30 interactionModeForPreparing];
    v33 = [*&v22[v29] neverCreateBookmarkForOpenInPlace];
    v34 = swift_allocObject();
    v34[2] = v52;
    v34[3] = a7;
    v34[4] = v31;
    v34[5] = a2;
    aBlock[4] = partial apply for closure #2 in closure #3 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:);
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_147_1;
    v35 = a2;
    v36 = _Block_copy(aBlock);

    v37 = v35;
    v38 = v31;

    [v38 prepareForMode:v32 usingBookmark:v33 ^ 1 completionBlock:v36];
    _Block_release(v36);
  }
}

uint64_t closure #2 in closure #3 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;

  v10 = a4;
  v11 = a5;
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #2 in closure #3 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(void (*a1)(char *, uint64_t), uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v15 - v10;
  v12 = [a3 fileURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  a1(v11, a4);
  return outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
}

uint64_t DOCDocumentManager.expectRevealableDocumentInCurrentBrowsedPaths(whenImportingInto:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xB0))();
  if (result)
  {
    v5 = result;
    v6 = [result effectiveBrowserViewController];

    if (v6)
    {
      v7 = (*((*v3 & *v6) + 0xE8))();

      if (v7)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        if (swift_dynamicCastClass() && (DOCItemCollectionViewController.getCurrentLocation()(v8), v9))
        {
          v10 = v9;
          v11 = [v9 sourceIdentifier];
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;
          if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
          {

            return 1;
          }

          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {

            return 1;
          }

          v18 = [v10 fileProviderItem];
          if (v18)
          {
            v19 = v18;
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
            v20 = a1;
            v21 = v19;
            LOBYTE(v19) = static NSObject.== infix(_:_:)();

            if (v19)
            {
              return 1;
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

    return 0;
  }

  return result;
}

void DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void, void), uint64_t a7)
{
  v77 = a4;
  v78 = type metadata accessor for URL();
  v14 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v15);
  if (a5)
  {
    v65 = a3;
    v66 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v70 = v16;
    v71 = v7;
    v73 = a2;
    v75 = a6;
    v76 = a7;
    v17 = objc_opt_self();
    v18 = a5;
    v74 = [v17 defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
    v19 = *(v14 + 80);
    v67 = ~v19;
    v68 = v19;
    v20 = (v19 + 32) & ~v19;
    v21 = swift_allocObject();
    v64 = xmmword_249B9A480;
    *(v21 + 16) = xmmword_249B9A480;
    v72 = v14;
    v22 = *(v14 + 16);
    v22(v21 + v20, a1, v78);
    v23 = objc_allocWithZone(type metadata accessor for DOCMoveOperation());
    v24 = v18;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v26 = [v23 initWithURLs:isa destinationFolder:v24];

    v69 = v24;
    v27 = v26;
    [v27 setLastUsageUpdatePolicy_];
    [v27 setShouldBounceOnCollision_];
    v28 = v27;
    v29 = v77;
    if (v77)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLV_SStGMd);
      v30 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd) - 8);
      v31 = v22;
      v32 = (*(*v30 + 80) + 32) & ~*(*v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v64;
      v34 = v33 + v32;
      v35 = (v34 + v30[14]);
      v31(v34, a1, v78);
      *v35 = v65;
      v35[1] = v29;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_SSTt0g5Tf4g_n(v33);
      swift_setDeallocating();
      v36 = v34;
      v22 = v31;
      outlined destroy of CharacterSet?(v36, &_s10Foundation3URLV_SStMd);
      swift_deallocClassInstance();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v28 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v27 setTargetFilenamesByURL_];
    }

    URL.startAccessingSecurityScopedResource()();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = v66;
    v39 = v78;
    v22(v66, a1, v78);
    v40 = (v68 + 16) & v67;
    v41 = (v70 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    (*(v72 + 32))(v44 + v40, v38, v39);
    *(v44 + v41) = v37;
    v45 = (v44 + v42);
    v46 = v76;
    *v45 = v75;
    v45[1] = v46;
    *(v44 + v43) = v27;
    v47 = v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
    v48 = v69;
    *v47 = v69;
    *(v47 + 8) = v73 & 1;
    aBlock[4] = partial apply for closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:);
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_62_2;
    v49 = _Block_copy(aBlock);
    v50 = v27;
    v51 = v48;
    v52 = v50;

    [v52 setActionCompletionBlock_];
    _Block_release(v49);

    v53 = v74;
    [v74 scheduleAction_];
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.UI);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock[0] = v58;
      *v57 = 136315394;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005DLL, 0x8000000249BFC9A0, aBlock);
      *(v57 + 12) = 2080;
      aBlock[6] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd);
      v59 = String.init<A>(describing:)();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, aBlock);

      *(v57 + 14) = v61;
      _os_log_impl(&dword_2493AC000, v55, v56, "%s importDocument: Unable to import the destination FPItem: %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v58, -1, -1);
      MEMORY[0x24C1FE850](v57, -1, -1);
    }

    v62 = URL.lastPathComponent.getter();
    v63 = MEMORY[0x24C1FAD20](v62);

    v52 = DOCErrorNoLocationAvailableError();

    a6(0, v52);
  }
}

void closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void *), uint64_t a5, void *a6, void *a7, char a8)
{
  v64 = a4;
  v65 = a5;
  v66 = a2;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (a1)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.UI);
      v20 = a1;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock[0] = v25;
        *v23 = 136315394;
        *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005DLL, 0x8000000249BFC9A0, aBlock);
        *(v23 + 12) = 2112;
        v26 = a1;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 14) = v27;
        *v24 = v27;
        _os_log_impl(&dword_2493AC000, v21, v22, "%s importDocument: Unable to import the file to the FileProvider. Error: %@", v23, 0x16u);
        outlined destroy of CharacterSet?(v24, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v24, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x24C1FE850](v25, -1, -1);
        MEMORY[0x24C1FE850](v23, -1, -1);
      }

      v64(0, a1);
      goto LABEL_20;
    }

    v28 = [a6 transferResults];
    if (v28)
    {
      v29 = v28;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = *(v13 + 16);
      v63(&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v66, v12);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      AnyHashable.init<A>(_:)();
      if (*(v30 + 16))
      {
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock);
        if (v32)
        {
          v62 = *(*(v30 + 56) + 8 * v31);
          outlined destroy of AnyHashable(aBlock);

          v33 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_configuration;
          if ([*&v18[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_configuration] interactionModeForPreparing] && (objc_msgSend(*&v18[v33], sel_neverCreateBookmarkForOpenInPlace) & 1) == 0)
          {
            v40 = [*&v18[v33] hostIdentifier];
            v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v42;
            v61 = v41;
          }

          else
          {
            v60 = 0;
            v61 = 0;
          }

          v63(&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v66, v12);
          v43 = (*(v13 + 80) + 24) & ~*(v13 + 80);
          v63 = ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8);
          v44 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
          v59 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
          v45 = swift_allocObject();
          *(v45 + 16) = a6;
          (*(v13 + 32))(v45 + v43, v16, v12);
          v46 = v64;
          *(v63 + v45) = v18;
          v47 = (v45 + v44);
          v48 = v65;
          *v47 = v46;
          v47[1] = v48;
          v49 = v45 + v59;
          *v49 = a7;
          *(v49 + 8) = a8 & 1;
          v50 = swift_allocObject();
          v50[2] = partial apply for closure #1 in closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:);
          v50[3] = v45;
          v51 = v60;
          v50[4] = v61;
          v50[5] = v51;
          v52 = v62;
          v50[6] = v62;
          aBlock[4] = partial apply for specialized closure #1 in DOCNode.createDOCItemBookmark(bookmark:completion:);
          aBlock[5] = v50;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
          aBlock[3] = &block_descriptor_71_2;
          v53 = _Block_copy(aBlock);
          v54 = v52;
          v55 = a6;
          v56 = v18;

          v57 = a7;

          [v54 fetchURL_];
          _Block_release(v53);

          v18 = v54;
LABEL_20:

          goto LABEL_21;
        }
      }

      outlined destroy of AnyHashable(aBlock);
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.UI);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005DLL, 0x8000000249BFC9A0, aBlock);
      _os_log_impl(&dword_2493AC000, v35, v36, "%s importDocument: Unable to import the file to the FileProvider: The import operation did not return any .transferResults", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C1FE850](v38, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }

    v39 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D06090] code:1 userInfo:0];
    v64(0, v39);

    v18 = v39;
    goto LABEL_20;
  }

LABEL_21:
  URL.stopAccessingSecurityScopedResource()();
}

uint64_t closure #1 in closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t (*a7)(void, void), uint64_t a8, void *a9, char a10)
{
  v62 = a1;
  v63 = a8;
  v61 = a7;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v60 - v22;
  v24 = [a4 transferResults];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v15 + 16))(v23, a5, v14);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    AnyHashable.init<A>(_:)();
    if (*(v26 + 16))
    {
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
      if (v28)
      {
        v29 = *(*(v26 + 56) + 8 * v27);
        outlined destroy of AnyHashable(v64);

        v30 = swift_allocObject();
        v31 = v61;
        v32 = v62;
        *(v30 + 16) = a6;
        *(v30 + 24) = v31;
        *(v30 + 32) = v63;
        *(v30 + 40) = v32;
        *(v30 + 48) = a3;
        *(v30 + 56) = a9;
        *(v30 + 64) = v29;
        *(v30 + 72) = a10 & 1;
        v33 = v29;
        v34 = a6;

        v35 = v32;
        v36 = a3;
        v37 = a9;
        DOCRunInMainThread(_:)();
      }
    }

    outlined destroy of AnyHashable(v64);
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.UI);
  (*(v15 + 16))(v18, a5, v14);
  v40 = a3;
  v41 = a4;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v64[0] = v60;
    *v44 = 136315906;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005DLL, 0x8000000249BFC9A0, v64);
    *(v44 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    (*(v15 + 8))(v18, v14);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v64);

    *(v44 + 14) = v48;
    *(v44 + 22) = 2080;
    v49 = [v41 transferResults];
    if (v49)
    {
      v50 = v49;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v51 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v51 = 0;
    }

    v65 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVSo6FPItemCGSgMd);
    v52 = String.init<A>(describing:)();
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v64);

    *(v44 + 24) = v54;
    *(v44 + 32) = 2080;
    v65 = a3;
    v55 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
    v56 = String.init<A>(describing:)();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v64);

    *(v44 + 34) = v58;
    _os_log_impl(&dword_2493AC000, v42, v43, "%s importOperation finished with no item matching sourceURL: %s transferResults: %s. Error: %s", v44, 0x2Au);
    v59 = v60;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v59, -1, -1);
    MEMORY[0x24C1FE850](v44, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  return v61(v62, a3);
}

void closure #1 in closure #1 in closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(void *a1, void (*a2)(void *, void *), uint64_t a3, void *a4, void *a5, void *a6, void *a7, char a8)
{
  v16 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *a1) + 0xB0))();
  if (v17 && (v18 = v17, v51 = [v17 effectiveBrowserViewController], v18, v51))
  {
    if (DOCDocumentManager.expectRevealableDocumentInCurrentBrowsedPaths(whenImportingInto:)(a6))
    {
      v50 = a2;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.UI);
      v20 = a7;
      v21 = v51;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v49 = a5;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        aBlock[0] = v26;
        *v24 = 136315650;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005DLL, 0x8000000249BFC9A0, aBlock);
        *(v24 + 12) = 2112;
        *(v24 + 14) = v20;
        *(v24 + 22) = 2112;
        *(v24 + 24) = v21;
        *v25 = v20;
        v25[1] = v51;
        v27 = v20;
        v28 = v21;
        _os_log_impl(&dword_2493AC000, v22, v23, "%s 1. importOperation finished with item: %@). Calling reveal on effectiveBrowserViewController: %@ expecting completion handler to be called", v24, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
        swift_arrayDestroy();
        v29 = v25;
        a5 = v49;
        MEMORY[0x24C1FE850](v29, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x24C1FE850](v26, -1, -1);
        MEMORY[0x24C1FE850](v24, -1, -1);
      }

      if ((a8 & 1) == 0)
      {
        v50(a4, a5);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_249BA0290;
      *(v30 + 32) = v20;
      v31 = swift_allocObject();
      *(v31 + 16) = v20;
      *(v31 + 24) = a8 & 1;
      *(v31 + 32) = v50;
      *(v31 + 40) = a3;
      *(v31 + 48) = a4;
      *(v31 + 56) = a5;
      v32 = v20;

      v33 = a4;
      v34 = a5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      isa = Array._bridgeToObjectiveC()().super.isa;

      aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:);
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      aBlock[3] = &block_descriptor_86_3;
      v36 = _Block_copy(aBlock);

      [v21 revealWithNodes:isa selectEvenIfVisible:0 completionBlock:v36];
      _Block_release(v36);
    }

    else
    {
      v42 = [a1 activeDocumentCreationSession];
      if (v42)
      {
        v43 = v42;
        (*((*v16 & *v42) + 0xC8))(1);
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.UI);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        aBlock[0] = v48;
        *v47 = 136315138;
        *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005DLL, 0x8000000249BFC9A0, aBlock);
        _os_log_impl(&dword_2493AC000, v45, v46, "%s importDocument: Skipping reveal item, since the destination isn't the current location, which can happen in UIP", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x24C1FE850](v48, -1, -1);
        MEMORY[0x24C1FE850](v47, -1, -1);
      }

      a2(a4, a5);
    }
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.UI);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005DLL, 0x8000000249BFC9A0, aBlock);
      _os_log_impl(&dword_2493AC000, v38, v39, "%s importDocument: Unable to reveal item, since effective browser view controller can't be obtained", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C1FE850](v41, -1, -1);
      MEMORY[0x24C1FE850](v40, -1, -1);
    }

    a2(a4, a5);
  }
}

void closure #1 in closure #1 in closure #1 in closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(char a1, void *a2, char a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.UI);
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v24 = a1;
    v17 = swift_slowAlloc();
    v18 = a4;
    v19 = a7;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v17 = 136315650;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005DLL, 0x8000000249BFC9A0, &v25);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v20 = v14;
    *(v17 + 22) = 1024;
    *(v17 + 24) = v24 & 1;
    v22 = v14;
    _os_log_impl(&dword_2493AC000, v15, v16, "%s 2. importOperation reveal item: %@ completed with success: %{BOOL}d)", v17, 0x1Cu);
    outlined destroy of CharacterSet?(v20, &_sSo8NSObjectCSgMd);
    v23 = v20;
    a7 = v19;
    a4 = v18;
    MEMORY[0x24C1FE850](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C1FE850](v21, -1, -1);
    MEMORY[0x24C1FE850](v17, -1, -1);
  }

  if (a3)
  {
    a4(a6, a7);
  }
}

void closure #1 in DOCDocumentManager.importDocument(url:waitForReveal:desiredDisplayName:location:completion:)(void *a1, void (*a2)(void, id), uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a1 && (v14 = [a1 fileProviderItem]) != 0)
  {
    v15 = v14;
    v22 = v14;
    DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(a4, a6 & 1, a7, a8, v15, a2, a3);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.UI);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2493AC000, v17, v18, "importDocument: Unable to get the current location or the default location", v19, 2u);
      MEMORY[0x24C1FE850](v19, -1, -1);
    }

    v20 = URL.lastPathComponent.getter();
    v21 = MEMORY[0x24C1FAD20](v20);

    v22 = DOCErrorNoLocationAvailableError();

    a2(0, v22);
  }
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v16 - v8;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v16 - v8, &_s10Foundation3URLVSgMd);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v13 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v15 = _convertErrorToNSError(_:)();
  }

  else
  {
    v15 = 0;
  }

  (*(a3 + 16))(a3, v13, v15);
}

void DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a2;
  v27 = a5;
  v28 = a4;
  v26 = a3;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = a6;
  *(v18 + 3) = a7;
  v19 = v24[1];
  *(v18 + 4) = v15;
  *(v18 + 5) = v19;
  (*(v11 + 32))(&v18[v16], v14, v10);
  v20 = &v18[v17];
  v21 = v26;
  *v20 = v25;
  *(v20 + 1) = v21;
  *&v18[(v17 + 23) & 0xFFFFFFFFFFFFFFF8] = v27;

  v22 = v15;
  v23 = v19;
  specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v28, partial apply for closure #1 in DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:), v18);
}

void closure #1 in DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a10;
  v37 = a8;
  v38 = a9;
  v39 = a6;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v20 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = a1;
    v35 = [v21 itemID];
    (*(v17 + 16))(&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v16);
    v22 = (*(v17 + 80) + 48) & ~*(v17 + 80);
    v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = a5;
    v24 = swift_allocObject();
    *(v24 + 2) = v21;
    *(v24 + 3) = a3;
    v25 = v39;
    *(v24 + 4) = a4;
    *(v24 + 5) = v25;
    (*(v17 + 32))(&v24[v22], v20, v16);
    v26 = &v24[v23];
    v27 = v38;
    *v26 = v37;
    *(v26 + 1) = v27;
    *&v24[(v23 + 23) & 0xFFFFFFFFFFFFFFF8] = v36;
    aBlock[4] = partial apply for closure #2 in closure #1 in DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_242;
    v28 = _Block_copy(aBlock);

    v29 = v21;
    v30 = v25;

    v31 = v35;
    [v34 fetchParentsForItemID:v35 recursively:0 completionHandler:v28];
    _Block_release(v28);
  }

  else
  {
    v32 = swift_allocObject();
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = a2;

    v33 = a2;
    DOCRunInMainThread(_:)();
  }
}

uint64_t closure #2 in closure #1 in DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:)(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v93 = a7;
  v94 = a3;
  v95 = a4;
  v96 = a5;
  v92 = a1;
  v87 = a10;
  v88 = a8;
  v89 = a9;
  v90 = a6;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v91 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v24 = type metadata accessor for DispatchQoS.QoSClass();
  v29.n128_f64[0] = MEMORY[0x28223BE20](v24, v25);
  v30 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v82 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v83 = v21;
    v84 = v11;
    v85 = v16;
    v86 = v15;
    v37 = v92;
    v38 = v93;
    if (v92)
    {
      v39 = v26;
      v40 = v92 & 0xFFFFFFFFFFFFFF8;
      if (v92 >> 62)
      {
        v71 = v26;
        v72 = v28;
        v73 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        v74 = v92;
        result = __CocoaSet.count.getter();
        v37 = v74;
        v30 = v73;
        v28 = v72;
        v39 = v71;
        if (result)
        {
LABEL_8:
          v81 = v19;
          v80 = v14;
          v79 = v39;
          if ((v37 & 0xC000000000000001) != 0)
          {
            v42 = v30;
            v43 = v28;
            v44 = MEMORY[0x24C1FC540](0, v29);
          }

          else
          {
            if (!*(v40 + 16))
            {
              __break(1u);
              return result;
            }

            v42 = v30;
            v43 = v28;
            v44 = *(v37 + 32);
          }

          v45 = v44;
          v94 = v44;
          v46 = [v44 providerDomainID];
          v92 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v46 node:v45];

          v47 = swift_allocObject();
          v48 = v96;
          *(v47 + 16) = v95;
          *(v47 + 24) = v48;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v49 = v79;
          (*(v43 + 104))(v42, *MEMORY[0x277D851C8], v79);

          v96 = static OS_dispatch_queue.global(qos:)();
          (*(v43 + 8))(v42, v49);
          v50 = v83;
          v51 = v82;
          (*(v83 + 16))(v82, v38, v20);
          v52 = (*(v50 + 80) + 24) & ~*(v50 + 80);
          v53 = v20;
          v54 = (v22 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
          v55 = (v54 + 39) & 0xFFFFFFFFFFFFFFF8;
          v56 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
          v57 = swift_allocObject();
          *(v57 + 16) = v87;
          (*(v50 + 32))(v57 + v52, v51, v53);
          v58 = (v57 + v54);
          *v58 = partial apply for closure #3 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:);
          v58[1] = v47;
          v59 = v57 + ((v54 + 23) & 0xFFFFFFFFFFFFFFF8);
          v61 = v89;
          v60 = v90;
          *v59 = v90;
          *(v59 + 8) = 1;
          v62 = (v57 + v55);
          *v62 = v88;
          v62[1] = v61;
          v63 = v92;
          *(v57 + v56) = v92;
          aBlock[4] = closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)partial apply;
          aBlock[5] = v57;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          aBlock[3] = &block_descriptor_255;
          v64 = _Block_copy(aBlock);

          v65 = v63;

          v66 = v60;
          v67 = v81;
          static DispatchQoS.unspecified.getter();
          v97 = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v68 = v80;
          v69 = v84;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v70 = v96;
          MEMORY[0x24C1FB9A0](0, v67, v68, v64);
          _Block_release(v64);

          (*(v91 + 8))(v68, v69);
          (*(v85 + 8))(v67, v86);
        }
      }

      else
      {
        result = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_8;
        }
      }
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_249B9A480;
    *(v75 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    *(v75 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
    v76 = v94;
    *(v75 + 32) = v94;
    v77 = v76;
    os_log(_:dso:log:type:_:)();

    v78 = swift_allocObject();
    *(v78 + 16) = v95;
    *(v78 + 24) = v96;

    goto LABEL_16;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_249B9FA70;
  *(v31 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  *(v31 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
  v32 = v94;
  *(v31 + 32) = v94;
  v33 = v32;
  v34 = _convertErrorToNSError(_:)();
  *(v31 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
  *(v31 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
  *(v31 + 72) = v34;
  os_log(_:dso:log:type:_:)();

  v35 = swift_allocObject();
  v35[2] = v95;
  v35[3] = v96;
  v35[4] = a2;

  v36 = a2;
LABEL_16:
  DOCRunInMainThread(_:)();
}