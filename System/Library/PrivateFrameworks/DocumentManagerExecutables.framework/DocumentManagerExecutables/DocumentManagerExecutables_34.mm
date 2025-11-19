void DOCItemCollectionViewController.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v43 = a1;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v37 - v18;
  type metadata accessor for DOCNodeContextMenuConfiguration();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v42 = a3;
    v22 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
    v44 = a2;
    if (![v22 browserViewContext])
    {
      v41 = v7;
      v24 = MEMORY[0x277D85000];
      v25 = (*((*MEMORY[0x277D85000] & *v21) + 0x60))();
      v26 = (*((*v24 & *v4) + 0xDB0))(v25);

      if (*(v26 + 16))
      {
        v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v38 = *(v8 + 16);
        v39 = v27;
        v28 = v41;
        v38(v15, v26 + v27, v41);

        v40 = v8;
        v29 = v15;
        v30 = *(v8 + 32);
        v30(v19, v29, v28);
        if ((*((*MEMORY[0x277D85000] & *v4) + 0x17A0))(v19))
        {
          [v42 setPreferredCommitStyle_];
          v38(v11, v19, v28);
          v31 = v39;
          v32 = swift_allocObject();
          v33 = v43;
          *(v32 + 16) = v4;
          *(v32 + 24) = v33;
          v30((v32 + v31), v11, v28);
          aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.collectionView(_:willPerformPreviewActionForMenuWith:animator:);
          aBlock[5] = v32;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          aBlock[3] = &block_descriptor_272;
          v34 = _Block_copy(aBlock);
          v35 = v4;
          v36 = v33;

          [v42 addAnimations_];
          _Block_release(v34);

          (*(v40 + 8))(v19, v28);
        }

        else
        {
          (*(v40 + 8))(v19, v28);
        }

        return;
      }
    }

    v23 = v44;
  }
}

void closure #1 in DOCItemCollectionViewController.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(void *a1, uint64_t a2)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x1288))(1);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 collectionView:a2 performPrimaryActionForItemAtIndexPath:isa];
}

void @objc DOCItemCollectionViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, v11, a5);

  swift_unknownObjectRelease();
}

uint64_t DOCItemCollectionViewController.contextMenuInteraction(_:willDisplayMenuFor:animator:)(void *a1)
{
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x8E0);
  v3 = a1;

  return v5(a1);
}

void __swiftcall DOCItemCollectionViewController.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuConfiguration_optional *__return_ptr retstr, UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  y = configurationForMenuAtLocation.y;
  x = configurationForMenuAtLocation.x;
  isa = _.super.isa;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10, v11);
  v14 = &v48 - v13;
  v15 = (*MEMORY[0x277D85000] & *v3) + 4112;
  v16 = *((*MEMORY[0x277D85000] & *v3) + 0x1010);
  v17 = v16(v12);
  v18 = [v17 hitTest:0 withEvent:{x, y}];

  v19 = DOCItemCollectionViewController.headerSupplementaryViews()();
  v20 = v19;
  v50 = v9;
  v51 = v14;
  v53 = v3;
  v48 = v16;
  v49 = v15;
  if (v19 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v22 = 0;
    v23 = v18;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x24C1FC540](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v18)
      {
        v27 = [v18 isDescendantOfView_];

        if (v27)
        {

          return;
        }
      }

      else
      {
      }

      ++v22;
      v18 = v23;
      if (v26 == i)
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

  v29 = v53;
  v30 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v53) + 0x1448))(v28) & 1) != 0 || [v29 isEditing] && -[objc_class menuAppearance](isa, sel_menuAppearance) != 2 || objc_msgSend(*(v29 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration), sel_browserViewContext, v48, v49))
  {

    return;
  }

  v31 = v48();
  v32 = [v31 indexPathForItemAtPoint_];

  if (v32)
  {
    v33 = v50;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = type metadata accessor for IndexPath();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  }

  else
  {
    v35 = type metadata accessor for IndexPath();
    v33 = v50;
    (*(*(v35 - 8) + 56))(v50, 1, 1, v35);
  }

  v36 = v51;
  v37 = outlined init with take of (key: URL, value: FPItem)(v33, v51, &_s10Foundation9IndexPathVSgMd);
  if ((*((*v30 & *v29) + 0x6D8))(v37) == 1)
  {
    goto LABEL_30;
  }

  v38 = type metadata accessor for IndexPath();
  if ((*(*(v38 - 8) + 48))(v36, 1, v38) != 1)
  {
    goto LABEL_30;
  }

  if ([(objc_class *)isa menuAppearance]== 2)
  {
    v39 = [v29 contextMenuForFolder];
    if (v39)
    {
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      v41 = objc_opt_self();
      v58 = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForFolder();
      v59 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v55 = 1107296256;
      v56 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
      v57 = &block_descriptor_285;
      v42 = _Block_copy(&aBlock);
      v43 = v39;

      [v41 configurationWithIdentifier:0 previewProvider:0 actionProvider:v42];

      _Block_release(v42);
    }

LABEL_30:

    outlined destroy of CharacterSet?(v36, &_s10Foundation9IndexPathVSgMd);
    return;
  }

  v44 = swift_allocObject();
  *(v44 + 16) = v29;
  v45 = objc_opt_self();
  v58 = closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu()partial apply;
  v59 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v57 = &block_descriptor_279;
  v46 = _Block_copy(&aBlock);
  v47 = v29;

  [v45 configurationWithIdentifier:0 previewProvider:0 actionProvider:v46];

  _Block_release(v46);

  outlined destroy of CharacterSet?(v36, &_s10Foundation9IndexPathVSgMd);
}

void __swiftcall DOCItemCollectionViewController.contextMenuForItems(at:)(UIMenu_optional *__return_ptr retstr, Swift::OpaquePointer at)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v76 - v7;
  v9 = type metadata accessor for IndexPath();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v81 = &v76 - v16;
  v17 = *(at._rawValue + 2);
  if (!v17)
  {
    return;
  }

  v18 = *(v15 + 72);
  v79 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = at._rawValue + v79;
  v20 = v18;
  v21 = (v15 + 48);
  v22 = (v15 + 32);
  v82 = v3;
  v83 = MEMORY[0x277D84F90];
  v80 = v12;
  v77 = (v15 + 48);
  v78 = v18;
  do
  {
    closure #1 in DOCItemCollectionViewController.contextMenuForItems(at:)(v19, v3, v8);
    if ((*v21)(v8, 1, v9) == 1)
    {
      outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd);
    }

    else
    {
      v23 = *v22;
      v24 = v81;
      (*v22)(v81, v8, v9);
      v23(v12, v24, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v83 + 2) + 1, 1, v83);
      }

      v26 = *(v83 + 2);
      v25 = *(v83 + 3);
      if (v26 >= v25 >> 1)
      {
        v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1, v83);
      }

      v27 = v83;
      *(v83 + 2) = v26 + 1;
      v20 = v78;
      v12 = v80;
      v23(&v27[v79 + v26 * v78], v80, v9);
      v3 = v82;
      v21 = v77;
    }

    v19 += v20;
    --v17;
  }

  while (v17);
  v28 = DOCItemCollectionViewController.nodes(at:in:)(v83, 0);
  v29 = v28;
  v84[0] = MEMORY[0x277D84F90];
  if (v28 >> 62)
  {
LABEL_26:
    v30 = __CocoaSet.count.getter();
    if (v30)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_13:
      v31 = 0;
      v3 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x24C1FC540](v31, v29);
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            v34 = v84[0];
            v3 = v82;
            goto LABEL_28;
          }
        }

        else
        {
          if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_26;
          }

          v32 = *(v29 + 8 * v31 + 32);
          swift_unknownObjectRetain();
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_23;
          }
        }

        if ([v32 isActionable])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v31;
        if (v33 == v30)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_28:

  LODWORD(v35) = v34 < 0 || (v34 & 0x4000000000000000) != 0;
  if (v35 == 1)
  {
    goto LABEL_78;
  }

  v36 = *(v34 + 16);
  if (!v36)
  {
LABEL_79:

    return;
  }

  while (1)
  {
    v37 = MEMORY[0x277D85000];
    v38 = *((*MEMORY[0x277D85000] & *v3) + 0xC70);

    v40 = v38(v39);
    if ((*((*v37 & *v3) + 0xBD8))() != 2)
    {

LABEL_76:
      specialized DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:)(v34, v40);

      swift_unknownObjectRelease();
      return;
    }

    if ((v34 & 0xC000000000000001) == 0)
    {
      break;
    }

    v42 = MEMORY[0x24C1FC540](0, v34);
    v41 = v42;
LABEL_37:
    v43 = *((*v37 & *v3) + 0x820);
    v80 = (*v37 & *v3) + 2080;
    v81 = v43;
    (v43)(v84, v42);
    if (!v85)
    {
      goto LABEL_86;
    }

    v44 = v85;
    v45 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v46 = (*(v45 + 112))(v41, v44, v45);
    if (!v46)
    {
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(v84);
      goto LABEL_76;
    }

    v47 = v46;
    __swift_destroy_boxed_opaque_existential_0(v84);
    if ((v36 & 0x8000000000000000) != 0)
    {
      v48 = 10;
      if ((v35 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v36 >= 0xA)
      {
        v48 = 10;
      }

      else
      {
        v48 = v36;
      }

      if (!v35)
      {
LABEL_49:
        v49 = *(v34 + 16);
        goto LABEL_50;
      }
    }

    if (__CocoaSet.count.getter() < 0)
    {
      goto LABEL_83;
    }

    v49 = __CocoaSet.count.getter();
LABEL_50:
    v78 = v41;
    if (v49 < v48)
    {
      goto LABEL_84;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v48; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        _ArrayBuffer._typeCheckSlowPath(_:)(i);
      }
    }

    v77 = v40;

    v83 = v47;
    if (v35)
    {
      v51 = _CocoaArrayWrapper.subscript.getter();
      v53 = v52;
      v55 = v54;
      v57 = v56;

      v58 = v51;
      v48 = v57 >> 1;
    }

    else
    {
      v55 = 0;
      v53 = v34 + 32;
      v58 = v34;
    }

    v76 = v58;
    swift_unknownObjectRetain();
    v59 = v48 - v55;
    if (v48 == v55)
    {
LABEL_58:
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v40 = v83;
      goto LABEL_76;
    }

    if (v48 <= v55)
    {
      v60 = v55;
    }

    else
    {
      v60 = v48;
    }

    v61 = v60 - v55;
    v62 = (v53 + 8 * v55);
    v35 = &selRef_initWithFrame_;
    v79 = v34;
    while (v61)
    {
      v64 = *v62;
      v65 = swift_unknownObjectRetain();
      (v81)(v84, v65);
      v66 = v85;
      if (!v85)
      {
        goto LABEL_85;
      }

      v67 = v86;
      __swift_project_boxed_opaque_existential_1(v84, v85);
      v68 = (*(v67 + 112))(v64, v66, v67);
      if (v68)
      {
        v69 = [v68 itemIdentifier];
        swift_unknownObjectRelease();
      }

      else
      {
        v69 = 0;
      }

      __swift_destroy_boxed_opaque_existential_0(v84);
      v70 = [v83 itemIdentifier];
      v71 = v70;
      if (!v69)
      {

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v40 = v77;
        goto LABEL_76;
      }

      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;
      if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v74 == v75)
      {

        swift_unknownObjectRelease();
      }

      else
      {
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        swift_unknownObjectRelease();

        if ((v63 & 1) == 0)
        {
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v40 = v77;
          v34 = v79;
          goto LABEL_76;
        }
      }

      --v61;
      ++v62;
      --v59;
      v3 = v82;
      v34 = v79;
      if (!v59)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_78:
    v36 = __CocoaSet.count.getter();
    if (!v36)
    {
      goto LABEL_79;
    }
  }

  if (*(v34 + 16))
  {
    v41 = *(v34 + 32);
    v42 = swift_unknownObjectRetain();
    goto LABEL_37;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
}

uint64_t closure #1 in DOCItemCollectionViewController.contextMenuForItems(at:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v24 - v9;
  v11 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *a2) + 0x1898))(a1, v8))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.UI);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2493AC000, v13, v14, "Skipping item, since it is the Create Item index path.", v15, 2u);
      MEMORY[0x24C1FE850](v15, -1, -1);
    }

    v16 = type metadata accessor for IndexPath();
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }

  else
  {
    (*((*v11 & *a2) + 0x18A0))(a1);
    v18 = type metadata accessor for IndexPath();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v10, 1, v18) == 1)
    {
      outlined destroy of CharacterSet?(v10, &_s10Foundation9IndexPathVSgMd);
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.UI);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2493AC000, v21, v22, "Skipping item, since it could not be resolved.", v23, 2u);
        MEMORY[0x24C1FE850](v23, -1, -1);
      }

      return (*(v19 + 56))(a3, 1, 1, v18);
    }

    else
    {
      (*(v19 + 32))(a3, v10, v18);
      return (*(v19 + 56))(a3, 0, 1, v18);
    }
  }
}

uint64_t implicit closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:)()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v1;
}

void __swiftcall DOCItemCollectionViewController.contextMenuForFolder()(UIMenu_optional *__return_ptr retstr)
{
  v1 = DOCItemCollectionViewController.contextMenuItemSectionsForFolder(includingResponderActions:)(1);
  v2 = specialized Sequence.flatMap<A>(_:)(v1);
  if (v2 >> 62)
  {
LABEL_31:
    v26 = __CocoaSet.count.getter();

    if (v26)
    {
      goto LABEL_3;
    }

LABEL_32:

    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v3)
  {
    goto LABEL_32;
  }

LABEL_3:
  v4 = *(v1 + 2);
  if (!v4)
  {

    v22 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v34 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = 0;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v31 = v1 + 32;
  v29 = v4;
  v30 = v1;
  do
  {
    if (v5 >= *(v1 + 2))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = *&v31[8 * v5];
    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
      if (!v7)
      {
LABEL_22:

        v18 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_22;
      }
    }

    v33 = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    if (v7 < 0)
    {
      goto LABEL_30;
    }

    v32 = v5;
    v8 = 0;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v9 = v7;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1FC540](v8, v6);
      }

      else
      {
        v14 = *(v6 + 8 * v8 + 32);
      }

      v15 = v14;
      v16 = [v14 action];
      (*((*MEMORY[0x277D85000] & *v15) + 0x58))();
      if (!v17)
      {
        v10 = [v15 title];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      ++v8;
      v11 = [v15 image];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v16;

      preferredElementSize = UIMenuElementSizeSmall;
      v28._rawValue = 0;
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v9 != v8);
    v18 = v33;
    v4 = v29;
    v1 = v30;
    v5 = v32;
    if (!(v33 >> 62))
    {
LABEL_18:

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
      v19 = v18;
      goto LABEL_19;
    }

LABEL_23:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

    v19 = _bridgeCocoaArray<A>(_:)();

LABEL_19:
    ++v5;

    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v35.value.super.isa = 0;
    v35.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v21, v20, 0, v35, 1, 0xFFFFFFFFFFFFFFFFLL, v19, v28);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v5 != v4);

  v22 = v34;
  if (!(v34 >> 62))
  {
LABEL_25:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
    v23 = v22;
    goto LABEL_26;
  }

LABEL_28:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

  v23 = _bridgeCocoaArray<A>(_:)();

LABEL_26:

  v24 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v36.value.super.isa = 0;
  v36.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, v25, 0, v36, 1, 0xFFFFFFFFFFFFFFFFLL, v23, v28);
}

id closure #1 in closure #1 in closure #2 in DOCItemCollectionViewController.contextMenuForFolder()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    [result performSelector:a3 withObject:a1];
    return v6;
  }

  return result;
}

uint64_t DOCItemCollectionViewController.previewParametersForItem(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v55 - v6;
  v8 = type metadata accessor for IndexPath();
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
  v13 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor_];

  v14 = MEMORY[0x277D85000];
  v15 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v17 = [v15 cellForItemAtIndexPath_];

  if (!v17)
  {
    return v12;
  }

  type metadata accessor for DOCItemCollectionCell();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

    return v12;
  }

  v19 = v18;
  v20 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
  [v20 _continuousCornerRadius];
  v55 = v19;
  if (v21 > 0.0)
  {
    [v20 bounds];
    [v19 convertRect:v20 fromCoordinateSpace:?];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [v20 _continuousCornerRadius];
    v31 = [objc_opt_self() bezierPathWithRoundedRect:v23 cornerRadius:{v25, v27, v29, v30}];
    [v12 setVisiblePath_];

LABEL_10:
    v42 = [v12 visiblePath];
    if (v42)
    {
      v43 = v42;
    }

    else
    {
      [v20 bounds];
      [v55 convertRect:v20 fromCoordinateSpace:?];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      [v20 _continuousCornerRadius];
      v53 = v52;

      v54 = [objc_opt_self() bezierPathWithRoundedRect:v45 cornerRadius:{v47, v49, v51, v53}];
      [v12 setVisiblePath_];
    }

    return v12;
  }

  (*((*v14 & *v2) + 0x18A0))(a1);
  v32 = v56;
  if ((*(v56 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of CharacterSet?(v7, &_s10Foundation9IndexPathVSgMd);
    goto LABEL_10;
  }

  (*(v32 + 32))(v11, v7, v8);
  result = (*((*v14 & *v2) + 0xD88))(v11, 0);
  if (result)
  {
    v34 = result;
    [v20 bounds];
    v37 = specialized static UIBezierPath.path(for:thumbnailSize:)(v34, v35, v36);
    [v20 bounds];
    [v55 convertPoint:v20 fromCoordinateSpace:?];
    v39 = v38;
    v41 = v40;
    [v34 isFolder];
    CGAffineTransformMakeTranslation(&v57, v39, v41);
    [v37 applyTransform_];
    [v12 setVisiblePath_];

    swift_unknownObjectRelease();
    (*(v32 + 8))(v11, v8);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id DOCItemCollectionViewController.targetPreview(for:)(char *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8, v9);
  v12 = &v27 - v11;
  v13 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xBD8))(v10))
  {
    return 0;
  }

  result = [a1 window];
  if (result)
  {

    v15 = (*((*v13 & *v1) + 0x1010))();
    v16 = [v15 indexPathForCell_];

    if (!v16)
    {
      return 0;
    }

    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v12, v7, v3);
    v17 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView];
    v18 = DOCItemCollectionViewController.previewParametersForItem(at:)(v12);
    v19 = v17;
    [v19 bounds];
    [a1 convertPoint:v19 fromCoordinateSpace:?];
    v21 = v20;
    v23 = v22;
    v24 = [v18 visiblePath];
    if (v24)
    {
      v25 = v24;
      CGAffineTransformMakeTranslation(&v27, -v21, -v23);
      [v25 applyTransform_];
    }

    v26 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView:v19 parameters:v18];

    (*(v4 + 8))(v12, v3);
    return v26;
  }

  return result;
}

uint64_t DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(void *a1, uint64_t (*a2)(void, void))
{
  v3 = v2;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v9 = 136315138;
    v10 = [a1 displayName];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = a2;
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v14, &v36);
    a2 = v12;

    *(v9 + 4) = v15;
    _os_log_impl(&dword_2493AC000, v7, v8, "Getting current collection for item %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  v16 = (*((*MEMORY[0x277D85000] & *v3) + 0xCB8))();
  swift_getObjectType();
  v17 = specialized Array<A>.contains(node:)(a1, v16);

  if (v17)
  {
    v18 = a1;
    v19 = v3;
  }

  else
  {
    swift_unknownObjectRetain();
    v20 = v3;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v23 = 138412546;
      *(v23 + 4) = v20;
      *v24 = v3;
      *(v23 + 12) = 2080;
      v26 = v20;
      v27 = [a1 displayName];
      v28 = a2;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = v29;
      a2 = v28;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v36);

      *(v23 + 14) = v33;
      _os_log_impl(&dword_2493AC000, v21, v22, "The current collection %@ doesn't contain item %s", v23, 0x16u);
      outlined destroy of CharacterSet?(v24, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x24C1FE850](v25, -1, -1);
      MEMORY[0x24C1FE850](v23, -1, -1);
    }

    v18 = 0;
    v19 = 0;
  }

  return a2(v18, v19);
}

void DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v4 = v3;
  v104 = a2;
  v105 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v98 = &v95 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v101 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v97 = &v95 - v15;
  v100 = v16;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v95 - v19;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = __swift_project_value_buffer(v21, static Logger.UI);
  v23 = v10 + 16;
  v107 = *(v10 + 16);
  v107(v20, a1, v9);
  v106 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v103 = v10;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v99 = v4;
    v28 = v10 + 16;
    v29 = v27;
    v30 = swift_slowAlloc();
    v108 = v30;
    *v29 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v9;
    v33 = a1;
    v35 = v34;
    v36 = *(v10 + 8);
    v37 = v32;
    v96 = v36;
    v36(v20, v32);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v35, &v108);
    a1 = v33;

    *(v29 + 4) = v38;
    _os_log_impl(&dword_2493AC000, v24, v25, "Getting current collection for url %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x24C1FE850](v30, -1, -1);
    v39 = v29;
    v23 = v28;
    v4 = v99;
    MEMORY[0x24C1FE850](v39, -1, -1);
  }

  else
  {

    v41 = *(v10 + 8);
    v37 = v9;
    v96 = v41;
    v40 = (v41)(v20, v9);
  }

  v42 = MEMORY[0x277D85000];
  v43 = *((*MEMORY[0x277D85000] & *v4) + 0xA80);
  v44 = (v43)(v40);
  if (*(v44 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v46 & 1) != 0))
  {
    v99 = v4;
    v47 = *(*(v44 + 56) + 8 * v45);
    swift_unknownObjectRetain();

    v48 = v97;
    v49 = v37;
    v107(v97, a1, v37);
    swift_unknownObjectRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v108 = v53;
      *v52 = 136315394;
      v54 = [v47 displayName];
      LODWORD(v101) = v51;
      v55 = v54;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = a1;
      v57 = v56;
      v59 = v58;

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v108);

      *(v52 + 4) = v60;
      *(v52 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v64 = v103;
      v96(v48, v49);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v108);
      a1 = v102;

      *(v52 + 14) = v65;
      _os_log_impl(&dword_2493AC000, v50, v101, "Getting item from the cache item %s url %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v53, -1, -1);
      v66 = v52;
      v42 = MEMORY[0x277D85000];
      MEMORY[0x24C1FE850](v66, -1, -1);
    }

    else
    {

      v64 = v103;
      v96(v48, v49);
    }

    v88 = v98;
    v107(v98, a1, v49);
    (*(v64 + 56))(v88, 0, 1, v49);
    v89 = v99;
    v90 = (*((*v42 & *v99) + 0xDA0))(v47, v88);
    outlined destroy of CharacterSet?(v88, &_s10Foundation3URLVSgMd);
    if (v90)
    {
      v91 = swift_unknownObjectRetain();
      v104(v91, v89);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
    }

    else
    {
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_2493AC000, v92, v93, "Item is not part of the current collection", v94, 2u);
        MEMORY[0x24C1FE850](v94, -1, -1);
      }

      v104(0, 0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v102 = a1;

    v67 = v4;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v106 = v23;
      v72 = v71;
      v108 = v71;
      *v70 = 136315138;
      v43();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v73 = v37;
      v74 = Dictionary.description.getter();
      v76 = v75;

      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v108);

      *(v70 + 4) = v77;
      _os_log_impl(&dword_2493AC000, v68, v69, "Failed to get the item from the cache: %s trying to get the item from the URL", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x24C1FE850](v72, -1, -1);
      MEMORY[0x24C1FE850](v70, -1, -1);
    }

    else
    {

      v73 = v37;
    }

    v78 = [objc_opt_self() defaultManager];
    v79 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v81 = v101;
    v80 = v102;
    v107(v101, v102, v73);
    v82 = v103;
    v83 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v84 = (v100 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v85 = swift_allocObject();
    (*(v82 + 32))(v85 + v83, v81, v73);
    v86 = (v85 + v84);
    v87 = v105;
    *v86 = v104;
    v86[1] = v87;
    *(v85 + ((v84 + 23) & 0xFFFFFFFFFFFFFFF8)) = v79;

    specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v80, partial apply for closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:), v85);
  }
}

void closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(void *a1, void *a2, void *a3, uint64_t a4, id a5, uint64_t a6)
{
  v74 = a6;
  v75 = a4;
  v76 = a3;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v69 - v16;
  if (a2)
  {
    v18 = a2;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.UI);
    v20 = a2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    LODWORD(v73) = v22;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock[0] = v71;
      *v23 = 136315138;
      swift_getErrorValue();
      v70 = v21;
      v24 = Error.localizedDescription.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);
      v72 = v17;
      v27 = a5;
      v28 = v26;

      v29 = v23;
      *(v23 + 4) = v28;
      a5 = v27;
      v17 = v72;
      v30 = v70;
      _os_log_impl(&dword_2493AC000, v70, v73, "Error while trying to fetch the url %s", v29, 0xCu);
      v31 = v71;
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x24C1FE850](v31, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    else
    {
    }
  }

  if (a1)
  {
    v32 = one-time initialization token for UI;
    v73 = a1;
    v33 = a1;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.UI);
    (*(v10 + 16))(v13, v76, v9);
    v35 = v33;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v76 = v35;
      v39 = v13;
      v40 = v38;
      v41 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      aBlock[0] = v72;
      *v40 = 136315394;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v71) = v37;
      v43 = a5;
      v45 = v44;
      v46 = v39;
      v35 = v76;
      (*(v10 + 8))(v46, v9);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, aBlock);
      a5 = v43;

      *(v40 + 4) = v47;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v35;
      *v41 = v73;
      v48 = v35;
      _os_log_impl(&dword_2493AC000, v36, v71, "Fetching item for url %s item %@ to be able to get the transition controller", v40, 0x16u);
      outlined destroy of CharacterSet?(v41, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v41, -1, -1);
      v49 = v72;
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v40, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    v63 = [objc_opt_self() defaultManager];
    v64 = swift_allocObject();
    v65 = v75;
    v64[2] = v74;
    v64[3] = v35;
    v64[4] = v65;
    v64[5] = a5;
    aBlock[4] = partial apply for closure #2 in closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:);
    aBlock[5] = v64;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_1009;
    v66 = _Block_copy(aBlock);
    v67 = v35;

    [v63 fetchURLForItem:v67 completionHandler:v66];
    _Block_release(v66);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.UI);
    (*(v10 + 16))(v17, v76, v9);
    v51 = v17;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = v10;
      v76 = a5;
      v57 = v55;
      aBlock[0] = v55;
      *v54 = 136315138;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v56 + 8))(v51, v9);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, aBlock);

      *(v54 + 4) = v61;
      _os_log_impl(&dword_2493AC000, v52, v53, "Failed to fetch item for url: %s to be able to get the transition controller", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      v62 = v57;
      a5 = v76;
      MEMORY[0x24C1FE850](v62, -1, -1);
      MEMORY[0x24C1FE850](v54, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v51, v9);
    }

    v68 = swift_allocObject();
    *(v68 + 16) = v75;
    *(v68 + 24) = a5;

    DOCRunInMainThread(_:)();
  }
}

uint64_t closure #2 in closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  v15 = &v23 - v14;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v23 - v14, &_s10Foundation3URLVSgMd);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  outlined init with take of (key: URL, value: FPItem)(v15, v19 + v16, &_s10Foundation3URLVSgMd);
  *(v19 + v17) = a3;
  *(v19 + v18) = a4;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v24;
  v20[1] = a6;

  v21 = a4;

  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t (*a5)(void, void))
{
  v30[0] = a4;
  v30[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v30 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v14, &_s10Foundation3URLVSgMd);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of CharacterSet?(v14, &_s10Foundation3URLVSgMd);
LABEL_9:
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
      *v29 = 0;
      _os_log_impl(&dword_2493AC000, v27, v28, "Item is not part of the current collection", v29, 2u);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    return v30[0](0, 0);
  }

  (*(v16 + 32))(v19, v14, v15);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v21 = Strong, (*(v16 + 16))(v10, v19, v15), (*(v16 + 56))(v10, 0, 1, v15), v22 = (*((*MEMORY[0x277D85000] & *v21) + 0xDA0))(a3, v10), v21, outlined destroy of CharacterSet?(v10, &_s10Foundation3URLVSgMd), !v22))
  {
    (*(v16 + 8))(v19, v15);
    goto LABEL_9;
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v22, v30[0]);
  }

  swift_unknownObjectRelease();
  return (*(v16 + 8))(v19, v15);
}

uint64_t DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.UI);

  v10 = v4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136446466;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v16 = MEMORY[0x24C1FB0D0](a1, v15);
    v28 = a2;
    v18 = a3;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v29);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v21 = (*((*MEMORY[0x277D85000] & *v10) + 0xA68))(v20);
    [v21 identifier];

    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v29);

    *(v13 + 14) = v24;
    a3 = v18;
    a2 = v28;
    _os_log_impl(&dword_2493AC000, v11, v12, "[REVEAL]: revealing items: %{public}s source: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v10;
  *(v25 + 24) = a2 & 1;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  v26 = v10;

  specialized Array<A>.fetchURLPairs(_:)(partial apply for closure #1 in DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:), v25, a1);
}

uint64_t closure #1 in DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(uint64_t a1, char *a2, int a3, void (*a4)(void), uint64_t a5)
{
  v157 = a4;
  v158 = a5;
  v156 = a3;
  v7 = type metadata accessor for UTType();
  v161 = *(v7 - 8);
  v162 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v160 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v159 = &v149 - v12;
  v171 = type metadata accessor for URL();
  v13 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v14);
  v155 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v168 = &v149 - v18;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation3URLV3urltMd);
  MEMORY[0x28223BE20](v170, v19);
  v151 = (&v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21, v22);
  v169 = &v149 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v28 = (&v149 - v27);
  v172 = a2;
  v173[0] = MEMORY[0x277D84F90];
  v29 = *(a1 + 16);
  v154 = v13;
  v153 = a1;
  v150 = v26;
  v152 = v29;
  if (v29)
  {
    v30 = *((*MEMORY[0x277D85000] & *a2) + 0xDA0);
    v166 = (*MEMORY[0x277D85000] & *a2) + 3488;
    v167 = v30;
    v31 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v164 = (v13 + 32);
    v163 = MEMORY[0x277D84F90];
    v32 = (v13 + 56);
    v165 = *(v26 + 72);
    v33 = v29;
    v34 = v168;
    do
    {
      outlined init with copy of DOCGridLayout.Spec?(v31, v28, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd);
      v35 = *v28;
      v36 = v169;
      outlined init with copy of DOCGridLayout.Spec?(v28, v169, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd);
      swift_unknownObjectRelease();
      v37 = &v36[*(v170 + 48)];
      v38 = v171;
      (*v164)(v34, v37, v171);
      (*v32)(v34, 0, 1, v38);
      v39 = (v167)(v35, v34);
      outlined destroy of CharacterSet?(v34, &_s10Foundation3URLVSgMd);
      v40 = outlined destroy of CharacterSet?(v28, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd);
      if (v39)
      {
        MEMORY[0x24C1FB090](v40);
        if (*((v173[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v163 = v173[0];
      }

      v31 += v165;
      --v33;
    }

    while (v33);
  }

  else
  {
    v163 = MEMORY[0x277D84F90];
  }

  v41 = v163;
  if (v163 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_11;
    }
  }

  else if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    v42 = swift_allocObject();
    v43 = v172;
    *(v42 + 16) = v172;
    *(v42 + 24) = v41;
    *(v42 + 32) = v156 & 1;
    v44 = v158;
    *(v42 + 40) = v157;
    *(v42 + 48) = v44;
    v45 = v43;

    DOCRunInMainThread(_:)();
  }

  if (v152)
  {

    v47 = (*(v150 + 80) + 32) & ~*(v150 + 80);
    v48 = v153;
    v49 = v151;
    outlined init with copy of DOCGridLayout.Spec?(v153 + v47, v151, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd);
    v50 = *v49;
    v51 = v170;
    v52 = v154;
    v54 = v154 + 8;
    v53 = *(v154 + 8);
    v55 = v49 + *(v170 + 48);
    v56 = v171;
    v53(v55, v171);
    v57 = v48 + v47;
    v58 = v169;
    outlined init with copy of DOCGridLayout.Spec?(v57, v169, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd);
    swift_unknownObjectRelease();
    v59 = (*(v52 + 32))(v155, &v58[*(v51 + 48)], v56);
    v60 = MEMORY[0x277D85000];
    v61 = (*MEMORY[0x277D85000] & *v172) + 2664;
    v62 = *((*MEMORY[0x277D85000] & *v172) + 0xA68);
    v63 = v62(v59);
    LOBYTE(v60) = (*((*v60 & *v63) + 0x198))();

    if (v60)
    {
      v163 = v62;
      v164 = v61;
      v166 = v54;
      v167 = v53;
      v170 = v50;
      v165 = *&v172[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
      v64 = [v165 recentDocumentsContentTypes];
      v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = 0;
      v67 = *(v65 + 16);
      v68 = v162;
      v169 = (v161 + 8);
      while (v67 != v66)
      {
        v69 = v170;
        if (v66 >= *(v65 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        v53 = v161;
        v70 = v159;
        (*(v161 + 2))(v159, v65 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v161 + 9) * v66++, v68);
        v71 = [v69 contentType];
        v72 = v160;
        static UTType._unconditionallyBridgeFromObjectiveC(_:)();

        v73 = UTType.conforms(to:)();
        v74 = *(v53 + 1);
        v74(v72, v68);
        v74(v70, v68);
        if (v73)
        {

          v53 = v167;
          v50 = v170;
          goto LABEL_20;
        }
      }

      v113 = v170;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v114 = type metadata accessor for Logger();
      __swift_project_value_buffer(v114, static Logger.UI);
      v115 = v172;
      swift_unknownObjectRetain();
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.default.getter();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v174[0] = v119;
        *v118 = 136316162;
        *(v118 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0A50, v174);
        *(v118 + 12) = 2080;
        v120 = [v113 respondsToSelector_];
        v172 = v119;
        if (v120)
        {
          v121 = [v113 debugDescription];
          v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v124 = v123;

          v113 = v170;
        }

        else
        {
          v122 = 0;
          v124 = 0;
        }

        v173[0] = v122;
        v173[1] = v124;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
        v125 = String.init<A>(describing:)();
        v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, v174);

        *(v118 + 14) = v127;
        *(v118 + 22) = 2080;
        v128 = [v113 contentType];
        v129 = v160;
        static UTType._unconditionallyBridgeFromObjectiveC(_:)();

        v130 = UTType.identifier.getter();
        v132 = v131;
        v133 = v129;
        v134 = v162;
        (*v169)(v133, v162);
        v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, v174);

        *(v118 + 24) = v135;
        *(v118 + 32) = 2080;
        v137 = (v163)(v136);
        v138 = [v137 identifier];

        v173[0] = v138;
        type metadata accessor for DOCDocumentSourceIdentifier(0);
        v139 = String.init<A>(describing:)();
        v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, v174);

        *(v118 + 34) = v141;
        *(v118 + 42) = 2080;
        v142 = [v165 recentDocumentsContentTypes];
        v143 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v144 = MEMORY[0x24C1FB0D0](v143, v134);
        v146 = v145;

        v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v146, v174);

        *(v118 + 44) = v147;
        _os_log_impl(&dword_2493AC000, v116, v117, "[REVEAL]: %s - Can not reveal item: %s because node is a type: %s not supported by spotlight-backed collection source: %s because recentDocumentsContentTypes does not contain it: %s", v118, 0x34u);
        v148 = v172;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v148, -1, -1);
        MEMORY[0x24C1FE850](v118, -1, -1);
      }

      v157(0);
      swift_unknownObjectRelease();
      return (v167)(v155, v171);
    }

    else
    {
LABEL_20:
      v66 = v50;
      if (one-time initialization token for UI != -1)
      {
LABEL_40:
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      __swift_project_value_buffer(v75, static Logger.UI);
      swift_unknownObjectRetain();
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      v78 = v53;
      if (os_log_type_enabled(v76, v77))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v173[0] = v80;
        *v79 = 136315394;
        *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0A50, v173);
        *(v79 + 12) = 2080;
        v81 = [v66 displayName];
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v66;
        v84 = v78;
        v86 = v85;

        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v86, v173);
        v78 = v84;

        *(v79 + 14) = v87;
        _os_log_impl(&dword_2493AC000, v76, v77, "[REVEAL]: %s - Waiting for pending node: %s", v79, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v80, -1, -1);
        MEMORY[0x24C1FE850](v79, -1, -1);
      }

      else
      {

        v83 = v66;
      }

      v102 = v157;
      v103 = v158;
      v104 = v156;
      v105 = v154;
      v106 = v168;
      v107 = v155;
      v108 = v171;
      (*(v154 + 16))(v168, v155, v171);
      (*(v105 + 56))(v106, 0, 1, v108);
      v109 = swift_allocObject();
      v110 = v172;
      *(v109 + 16) = v83;
      *(v109 + 24) = v110;
      *(v109 + 32) = v104 & 1;
      *(v109 + 40) = v102;
      *(v109 + 48) = v103;
      v111 = v110;

      v112 = swift_unknownObjectRetain();
      DOCItemCollectionViewController.waitForPending(node:url:resolutionHandler:)(v112, v106, partial apply for closure #4 in closure #1 in DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:), v109);
      swift_unknownObjectRelease();

      outlined destroy of CharacterSet?(v106, &_s10Foundation3URLVSgMd);
      return (v78)(v107, v108);
    }
  }

  else
  {
    v88 = v153;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, static Logger.UI);

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v173[0] = v93;
      *v92 = 136315650;
      *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0A50, v173);
      *(v92 + 12) = 2080;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v95 = MEMORY[0x24C1FB0D0](v41, v94);
      v97 = v96;

      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v173);

      *(v92 + 14) = v98;
      *(v92 + 22) = 2080;
      v99 = MEMORY[0x24C1FB0D0](v88, v170);
      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, v173);

      *(v92 + 24) = v101;
      _os_log_impl(&dword_2493AC000, v90, v91, "[REVEAL]: %s Could not fetchURLPairs or get an item to search for. Nodes provided: %s, URLPairs: %s", v92, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v93, -1, -1);
      MEMORY[0x24C1FE850](v92, -1, -1);
    }

    else
    {
    }

    return (v157)(0);
  }
}

uint64_t closure #2 in closure #1 in DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x16C8))(a2, 1);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.UI);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2493AC000, v6, v7, "[REVEAL]: found matching nodes, calling completion block", v8, 2u);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  return a4(1);
}

uint64_t closure #4 in closure #1 in DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = a3;

  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #4 in closure #1 in DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(uint64_t a1, void *a2, void *a3, char a4, uint64_t (*a5)(uint64_t))
{
  v8 = &unk_2810DF000;
  v9 = MEMORY[0x277D85000];
  if (a1)
  {
    v11 = one-time initialization token for UI;
    swift_unknownObjectRetain();
    if (v11 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.UI);
    swift_unknownObjectRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v52 = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0A50, &v52);
      *(v15 + 12) = 2080;
      v17 = [a2 displayName];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v52);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_2493AC000, v13, v14, "[REVEAL]: %s - Found matching node for %s", v15, 0x16u);
      swift_arrayDestroy();
      v22 = v16;
      v9 = MEMORY[0x277D85000];
      MEMORY[0x24C1FE850](v22, -1, -1);
      v23 = v15;
      v8 = &unk_2810DF000;
      MEMORY[0x24C1FE850](v23, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_249BA0290;
    *(v24 + 32) = a1;
    v25 = *((*v9 & *a3) + 0x16C8);
    swift_unknownObjectRetain();
    v25(v24, 1, a4 & 1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.UI);
    swift_unknownObjectRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v30;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0A50, &v52);
      *(v29 + 12) = 2080;
      v31 = [a2 displayName];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v9 = MEMORY[0x277D85000];
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v52);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_2493AC000, v27, v28, "[REVEAL]: %s - Couldn't Find matching node for %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    v8 = &unk_2810DF000;
  }

  if (v8[150] != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.UI);
  swift_unknownObjectRetain();
  v37 = a3;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v52 = v41;
    *v40 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
    v42 = Optional.debugDescription.getter();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v52);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    v46 = (*((*v9 & *v37) + 0xA68))(v45);
    [v46 identifier];

    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v47 = String.init<A>(describing:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v52);

    *(v40 + 14) = v49;
    _os_log_impl(&dword_2493AC000, v38, v39, "[REVEAL]: calling completion block after waiting for pending node. Found node: %s. source: %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v41, -1, -1);
    MEMORY[0x24C1FE850](v40, -1, -1);
  }

  return a5(1);
}

void DOCItemCollectionViewController.getTransitionController(forURL:completionBlock:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{

  v7 = v3;
  specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(a1, v7, a2, a3, v7);
}

void closure #2 in closure #1 in DOCItemCollectionViewController.getTransitionController(forItem:completionBlock:)(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{

  v8 = a1;
  specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(a2, v8, a3, a4, v8);
}

void closure #1 in DOCItemCollectionViewController.getTransitionController(forURL:completionBlock:)(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2 && a1)
  {
    v8 = one-time initialization token for UI;
    v9 = a2;
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.UI);
    v11 = v9;
    swift_unknownObjectRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = a3;
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v14 = 136315394;
      v16 = [a1 description];
      v17 = v11;
      v18 = a5;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = v19;
      a5 = v18;
      v11 = v17;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, v43);

      *(v14 + 4) = v23;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v17;
      *v15 = a2;
      v24 = v17;
      _os_log_impl(&dword_2493AC000, v12, v13, "Getting transition controller for item %s collection %@", v14, 0x16u);
      outlined destroy of CharacterSet?(v15, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      a3 = v40;
      MEMORY[0x24C1FE850](v39, -1, -1);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    v25 = [*(a5 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) sceneIdentifier];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v34 = type metadata accessor for DOCServiceTransitionController();
    v35 = objc_allocWithZone(v34);
    swift_unknownObjectWeakInit();
    v36 = &v35[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_sceneIdentifier];
    *v36 = 0;
    v36[1] = 0;
    swift_unknownObjectWeakAssign();
    *&v35[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node] = a1;
    swift_beginAccess();
    *v36 = v27;
    v36[1] = v29;
    swift_unknownObjectRetain_n();
    v37 = v11;

    v42.receiver = v35;
    v42.super_class = v34;
    v38 = objc_msgSendSuper2(&v42, sel_init);

    swift_unknownObjectRelease();
    a3(v38);

    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.UI);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2493AC000, v31, v32, "Not enough information to get the transition controller", v33, 2u);
      MEMORY[0x24C1FE850](v33, -1, -1);
    }

    a3(0);
  }
}

void DOCItemCollectionViewController.getTransitionController(forItem:completionBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() defaultManager];
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v17[4] = a5;
  v17[5] = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v17[3] = a6;
  v14 = _Block_copy(v17);
  v15 = v6;
  v16 = a1;

  [v12 fetchURLForItem:v16 completionHandler:v14];
  _Block_release(v14);
}

uint64_t closure #1 in DOCItemCollectionViewController.getTransitionController(forItem:completionBlock:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[0] = a7;
  v30[1] = a8;
  v31 = a5;
  v32 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v30 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v18, &_s10Foundation3URLVSgMd);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of CharacterSet?(v18, &_s10Foundation3URLVSgMd);
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    (*(v20 + 16))(v14, v23, v19);
    (*(v20 + 56))(v14, 0, 1, v19);
    v24 = (*((*MEMORY[0x277D85000] & *a3) + 0xDA0))(a4, v14);
    outlined destroy of CharacterSet?(v14, &_s10Foundation3URLVSgMd);
    if (v24)
    {
      v25 = swift_allocObject();
      v25[2] = a3;
      v25[3] = v24;
      v26 = v32;
      v25[4] = v31;
      v25[5] = v26;
      v27 = a3;
      swift_unknownObjectRetain();

      DOCRunInMainThread(_:)();
      swift_unknownObjectRelease();

      return (*(v20 + 8))(v23, v19);
    }

    (*(v20 + 8))(v23, v19);
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v31;
  *(v29 + 24) = v32;

  DOCRunInMainThread(_:)();
}

void DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:)(void *a1, int a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  v50 = a2;
  v52 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4, v5);
  v54 = &v49[-v6];
  v51 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v49[-v18];
  v20 = swift_allocBox();
  v22 = v21;
  v23 = type metadata accessor for URL();
  v24 = *(*(v23 - 8) + 56);
  v53 = v22;
  v24(v22, 1, 1, v23);
  v25 = dispatch_semaphore_create(0);
  v26 = swift_allocObject();
  *(v26 + 16) = v20;
  *(v26 + 24) = v25;
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_314;
  v27 = _Block_copy(aBlock);
  v56 = v20;

  v28 = v25;
  v29 = v52;

  [v29 fetchURL_];
  _Block_release(v27);
  static DispatchTime.now()();
  *v10 = 100;
  v30 = v51;
  (*(v7 + 104))(v10, *MEMORY[0x277D85178], v51);
  MEMORY[0x24C1FAA90](v15, v10);
  (*(v7 + 8))(v10, v30);
  v31 = *(v12 + 8);
  v31(v15, v11);
  MEMORY[0x24C1FBB60](v19);
  v31(v19, v11);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.UI);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDF020, aBlock);
      _os_log_impl(&dword_2493AC000, v33, v34, "[Presentation Error] %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x24C1FE850](v36, -1, -1);
      MEMORY[0x24C1FE850](v35, -1, -1);
    }
  }

  v37 = v53;
  swift_beginAccess();
  v38 = v54;
  outlined init with copy of DOCGridLayout.Spec?(v37, v54, &_s10Foundation3URLVSgMd);
  v39 = v55;
  v40 = (*((*MEMORY[0x277D85000] & *v55) + 0xDA0))(v29, v38);
  outlined destroy of CharacterSet?(v38, &_s10Foundation3URLVSgMd);
  if (v40)
  {
    v41 = v58;

    v42 = v39;
    v43 = swift_unknownObjectRetain();
    specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v43, v42, v57, v41, v42, v40, v50 & 1);

    swift_unknownObjectRelease_n();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.UI);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v59 = v48;
      *v47 = 136315138;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BDEFE0, &v59);
      _os_log_impl(&dword_2493AC000, v45, v46, "[Presentation Error] %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x24C1FE850](v48, -1, -1);
      MEMORY[0x24C1FE850](v47, -1, -1);
    }

    v57(0, 0);
  }
}

Swift::Int closure #1 in DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:)(uint64_t a1)
{
  v2 = swift_projectBox();
  swift_beginAccess();
  outlined assign with copy of IndexPath?(a1, v2, &_s10Foundation3URLVSgMd);
  return OS_dispatch_semaphore.signal()();
}

void DOCItemCollectionViewController.getCell(for:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v10[4] = partial apply for closure #1 in DOCItemCollectionViewController.getCell(for:_:);
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_320;
  v8 = _Block_copy(v10);
  v9 = v3;
  swift_unknownObjectRetain();

  [a1 fetchURL_];
  _Block_release(v8);
}

uint64_t closure #2 in closure #1 in DOCItemCollectionViewController.getCell(for:_:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{

  v8 = swift_unknownObjectRetain();
  specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v8, a1, a3, a4, a2);

  return swift_unknownObjectRelease();
}

void DOCItemCollectionViewController.previewController(_:viewFor:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = partial apply for closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:);
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
  v10[3] = &block_descriptor_326;
  v9 = _Block_copy(v10);

  [v4 getViewFor_waitForNewThumbnail:a2 :{0, v9}];
  _Block_release(v9);
}

void protocol witness for DOCPreviewControllerTransitioningProvider.previewController(_:viewFor:_:) in conformance DOCItemCollectionViewController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:)partial apply;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
  v10[3] = &block_descriptor_908;
  v9 = _Block_copy(v10);

  [v4 getViewFor_waitForNewThumbnail:a2 :{0, v9}];
  _Block_release(v9);
}

uint64_t DOCItemCollectionViewController.shouldAdjustScrollViewInsetWhenRenaming.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xAE8))();
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 effectiveFullBrowser];

  v4 = [v3 pickerFilenameView];
  if (!v4)
  {
    return 1;
  }

  return 0;
}

Swift::Void __swiftcall DOCItemCollectionViewController.renameWillBegin()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v35 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v39 = v4;
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Rename);
  v11 = v0;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = MEMORY[0x277D85000];
  if (v14)
  {
    v36 = v9;
    v37 = v6;
    v38 = v5;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BDF090, &v40);
    *(v16 + 12) = 2080;
    v18 = v15;
    v19 = (*((*v15 & *v11) + 0x1498))();
    if (v19)
    {
      (*(*v19 + 272))(v19);

      swift_getObjectType();
      v20 = DOCNode.nodeDescription.getter();
      v22 = v21;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 4271950;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v40);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_2493AC000, v12, v13, "%s node: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);

    v6 = v37;
    v5 = v38;
    v9 = v36;
  }

  else
  {
    v18 = MEMORY[0x277D85000];
  }

  v24 = v18;
  v25 = *((*v18 & *v11) + 0xBD8);
  if (!v25() || v25() == 1)
  {
    v26 = (*((*v18 & *v11) + 0x1498))();
    if (v26)
    {
      v27 = (*(*v26 + 272))(v26);

      v28 = *v18 & *v11;
      v29 = v39;
      (*(v28 + 3480))(v27);
      if ((*(v6 + 48))(v29, 1, v5) == 1)
      {
        swift_unknownObjectRelease();
        outlined destroy of CharacterSet?(v29, &_s10Foundation9IndexPathVSgMd);
      }

      else
      {
        (*(v6 + 32))(v9, v29, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
        v30 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_249B9A480;
        (*(v6 + 16))(v31 + v30, v9, v5);
        (*((*v24 & *v11) + 0x1300))(0, v31);

        swift_unknownObjectRelease();
        (*(v6 + 8))(v9, v5);
      }
    }
  }

  v32 = [v11 traitCollection];
  DOCItemCollectionViewController.updateNavBarHiddenForActiveRename(traitCollection:)(v32);

  v33 = (*((*v24 & *v11) + 0x1010))();
  v34 = [v33 panGestureRecognizer];

  [v34 setEnabled_];
}

void closure #1 in DOCItemCollectionViewController.renameFinished(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v40[-v4];
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6, v8);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *a1) + 0x1498))(v9);
  if (v13)
  {
    v14 = (*(*v13 + 272))(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = (*((*v12 & *a1) + 0x1010))(v13);
  v16 = [v15 panGestureRecognizer];

  [v16 setEnabled_];
  (*((*v12 & *a1) + 0x14A0))(0);
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_endingInlineRename) = 0;
  if (*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) == 1)
  {
    v17 = [a1 navigationController];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v20 = (*((*v12 & *a1) + 0xAE8))();
      if (v20)
      {
        v21 = v20;
        v22 = [v20 effectiveFullBrowser];
        v18 = [v22 internalNavigationController];

        v19 = 0;
        goto LABEL_10;
      }

      v18 = 0;
    }

    v19 = 1;
LABEL_10:
    DOCItemCollectionViewController.applyNavBarHidden(_:to:animated:)(0, v18, v19);
  }

  if ((*((*v12 & *a1) + 0xBD8))() == 3 && (*((*v12 & *a1) + 0x1268))())
  {
    (*((*v12 & *a1) + 0xD98))();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v38 = *(v7 + 32);
      v38(v11, v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
      v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_249B9A480;
      v38((v23 + v39), v11, v6);
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd);
  }

  v23 = MEMORY[0x277D84F90];
LABEL_16:
  (*((*v12 & *a1) + 0x1300))(0, v23);

  if (GSEventIsHardwareKeyboardAttached() && v14)
  {
    swift_getObjectType();
    DOCNode.nodeType.getter(&v41);
    if (v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_249BA0290;
      *(v24 + 32) = v14;
      v25 = *((*v12 & *a1) + 0x1378);
      swift_unknownObjectRetain_n();
      v25(v24, 0, 0);
    }

    else
    {
      v26 = swift_allocObject();
      *(v26 + 16) = a1;
      *(v26 + 24) = v14;
      v46 = partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.renameFinished(_:);
      v47 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v45 = &block_descriptor_937;
      v27 = _Block_copy(&aBlock);
      swift_unknownObjectRetain_n();
      v28 = a1;

      [v14 fetchURL_];
      _Block_release(v27);
    }

    swift_unknownObjectRelease();
  }

  v29 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if (([v29 forMovingDocuments] & 1) == 0 && (objc_msgSend(v29, sel_forSavingDocuments) & 1) == 0 && (objc_msgSend(v29, sel_forPickingFolders) & 1) == 0 && !objc_msgSend(v29, sel_forPickingDownloadsFolder) || *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_renamingNewlyCreatedFolder) != 1)
  {
    goto LABEL_30;
  }

  if (v14)
  {
    swift_getObjectType();
    v30 = DOCNode.fpfs_syncFetchFPItem()();
    if (v30)
    {
      v31 = v30;
      v32 = [objc_opt_self() defaultManager];
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v34 = [v31 itemID];
      v35 = swift_allocObject();
      v35[2] = v31;
      v35[3] = partial apply for closure #2 in closure #1 in DOCItemCollectionViewController.renameFinished(_:);
      v35[4] = v33;
      v46 = partial apply for closure #1 in FPItemManager.doc_refetchItem(_:completion:);
      v47 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      v45 = &block_descriptor_931;
      v36 = _Block_copy(&aBlock);
      v37 = v31;

      [v32 fetchItemForItemID:v34 completionHandler:v36];
      _Block_release(v36);
      swift_unknownObjectRelease();

      goto LABEL_31;
    }

LABEL_30:
    swift_unknownObjectRelease();
  }

LABEL_31:
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_renamingNewlyCreatedFolder) = 0;
}

uint64_t closure #1 in closure #1 in DOCItemCollectionViewController.renameFinished(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v12, &_s10Foundation3URLVSgMd);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return outlined destroy of CharacterSet?(v12, &_s10Foundation3URLVSgMd);
  }

  (*(v14 + 32))(v17, v12, v13);
  objc_opt_self();
  v19 = swift_dynamicCastObjCClassUnconditional();
  (*(v14 + 16))(v8, v17, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  v20 = (*((*MEMORY[0x277D85000] & *a3) + 0xDA0))(v19, v8);
  outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd);
  if (v20)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = v20;
    v22 = a3;
    swift_unknownObjectRetain();
    DOCRunInMainThread(_:)();
    swift_unknownObjectRelease();
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t closure #1 in closure #1 in closure #1 in DOCItemCollectionViewController.renameFinished(_:)(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  v5 = *MEMORY[0x277D85000] & *a1;
  *(v4 + 16) = xmmword_249BA0290;
  *(v4 + 32) = a2;
  v6 = *(v5 + 4984);
  swift_unknownObjectRetain();
  v6(v4, 0, 0);
}

uint64_t closure #2 in closure #1 in DOCItemCollectionViewController.renameFinished(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.renameFinished(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_946;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v8, v15);
  _Block_release(v15);

  (*(v19 + 8))(v8, v5);
  return (*(v9 + 8))(v12, v18);
}

void closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.renameFinished(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = *((*MEMORY[0x277D85000] & *Strong) + 0x18E0);
      v6 = a2;
      v5();
    }

    else
    {
      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.Rename);
      v6 = v4;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v8, v9))
      {

        return;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000249BCE890, &v17);
      *(v10 + 12) = 2080;
      v12 = (*((*MEMORY[0x277D85000] & *v6) + 0x1498))();
      if (v12)
      {
        (*(*v12 + 272))(v12);

        swift_getObjectType();
        v13 = DOCNode.nodeDescription.getter();
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 4271950;
      }

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v17);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_2493AC000, v8, v9, "%s Could not refetch item when trying to open the newly created folder: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }
  }
}

uint64_t protocol witness for DOCInlineRenameControllerDelegate.shouldAdjustScrollViewInsetWhenRenaming.getter in conformance DOCItemCollectionViewController()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xAE8))();
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 effectiveFullBrowser];

  v4 = [v3 pickerFilenameView];
  if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  type metadata accessor for MainActor();
  v8[16] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[17] = v10;
  v8[18] = v9;

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:), v10, v9);
}

uint64_t closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:);
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[12];

    return DOCItemCollectionViewController.createNewFolder(_:inFolder:)(v5, v3, v4);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

{
  v26 = v0;
  v1 = v0[21];

  if (v1)
  {
    v2 = v0[21];
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.Rename);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[21];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE0E80, &v25);
      *(v8 + 12) = 2112;
      *(v8 + 14) = v4;
      *v9 = v7;
      v11 = v4;
      _os_log_impl(&dword_2493AC000, v5, v6, "%s new folder action created item: %@. Attempting to reveal", v8, 0x16u);
      outlined destroy of CharacterSet?(v9, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1FE850](v10, -1, -1);
      MEMORY[0x24C1FE850](v8, -1, -1);
    }

    v12 = v0[19];
    v13 = v0[15];
    v14 = [v4 itemIdentifier];
    v15 = *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation];
    *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation] = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_249BA0290;
    *(v16 + 32) = v4;
    v17 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v12;
    v19[4] = v13;
    v0[6] = partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:);
    v0[7] = v19;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v0[5] = &block_descriptor_1218;
    v20 = _Block_copy(v0 + 2);
    v21 = v17;
    v22 = v12;

    [v22 revealWithNodes:isa selectEvenIfVisible:0 completionBlock:v20];
    _Block_release(v20);
  }

  else
  {
    v22 = v0[19];
  }

  v23 = v0[1];

  return v23();
}

uint64_t closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:), v4, v3);
}

uint64_t DOCItemCollectionViewController.createNewFolder(_:inFolder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](DOCItemCollectionViewController.createNewFolder(_:inFolder:), v6, v5);
}

uint64_t DOCItemCollectionViewController.createNewFolder(_:inFolder:)()
{
  swift_getObjectType();
  v1 = DOCNode.fpfs_syncFetchFPItem()();
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 48);
    v11 = *(v0 + 24);
    v4 = static MainActor.shared.getter();
    *(v0 + 96) = v4;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = v11;
    *(v5 + 40) = v3;
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd);
    *v6 = v0;
    v6[1] = DOCItemCollectionViewController.createNewFolder(_:inFolder:);
    v8 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v0 + 16, v4, v8, 0xD00000000000001CLL, 0x8000000249BDF0B0, partial apply for closure #1 in DOCItemCollectionViewController.createNewFolder(_:inFolder:), v5, v7);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9(0);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](DOCItemCollectionViewController.createNewFolder(_:inFolder:), v3, v2);
}

{
  v26 = v0;

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = one-time initialization token for Rename;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.Rename);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 88);
    if (v8)
    {
      v24 = *(v0 + 88);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136315650;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BDF0B0, &v25);
      *(v10 + 12) = 2080;
      v12 = [v5 displayName];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v25);

      *(v10 + 14) = v16;
      *(v10 + 22) = 2080;
      v17 = [v5 itemIdentifier];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v25);

      *(v10 + 24) = v21;
      _os_log_impl(&dword_2493AC000, v6, v7, "%s: new folder named %s was created with itemIdentifier: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  v22 = *(v0 + 8);

  return v22(v1);
}

void *closure #1 in closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(char a1, void *a2, void *a3)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Rename);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 136315650;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE0E80, &v24);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *(v10 + 22) = 2080;
    v13 = (a1 & 1) == 0;
    if (a1)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    *v11 = v7;
    if (v13)
    {
      v15 = 0xE500000000000000;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    v16 = v7;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v24);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_2493AC000, v8, v9, "%s reveal item: %@ success: %s", v10, 0x20u);
    outlined destroy of CharacterSet?(v11, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  v18 = MEMORY[0x277D85000];
  v19 = *((*MEMORY[0x277D85000] & *a3) + 0x1968);
  v20 = v7;
  v19(v7);
  v21 = *((*v18 & *a3) + 0x1980);

  v21(v22);
  return DOCItemCollectionViewController.resetReadyForRenameTimer()();
}

void *DOCItemCollectionViewController.resetReadyForRenameTimer()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1960);
  result = v2();
  if (result)
  {

    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.Rename);
    v5 = v0;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BE0EB0, v27);
      *(v8 + 12) = 2080;
      v10 = v2();
      if (v10)
      {
        v11 = v10;
        v12 = [v10 itemIdentifier];

        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 4271950;
      }

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v27);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_2493AC000, v6, v7, "%s: item: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v9, -1, -1);
      MEMORY[0x24C1FE850](v8, -1, -1);
    }

    v17 = (*((*v1 & *v5) + 0x1990))();
    [v17 invalidate];

    v18 = (*((*v1 & *v5) + 0xA68))();
    v19 = *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
    v20 = v19;

    if (v19 && (v21 = [v20 isUsingFPFS], v20, v21))
    {
      v22 = 0.01;
    }

    else
    {
      v22 = 0.1;
    }

    v23 = objc_opt_self();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27[4] = partial apply for closure #1 in DOCItemCollectionViewController.resetReadyForRenameTimer();
    v27[5] = v24;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 1107296256;
    v27[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v27[3] = &block_descriptor_1222;
    v25 = _Block_copy(v27);

    v26 = [v23 scheduledTimerWithTimeInterval:0 repeats:v25 block:v22];
    _Block_release(v25);
    return (*((*v1 & *v5) + 0x1998))(v26);
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.createNewFolder(_:inFolder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5NeverOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v34 - v11;

  (*(v9 + 16))(v12, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = 256;
  v16 = type metadata accessor for DOCBlockOperation();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block];
  *v18 = partial apply for closure #1 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:);
  v18[1] = v15;
  v36.receiver = v17;
  v36.super_class = v16;
  v19 = a2;

  v20 = objc_msgSendSuper2(&v36, sel_init);
  v21 = objc_allocWithZone(type metadata accessor for DOCCreateNewFolderPostflightUIOperation());
  v22 = &v21[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCCreateNewFolderPostflightUIOperation_folderName];
  *v22 = a3;
  *(v22 + 1) = a4;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v23 = type metadata accessor for DOCActionUIOperation();
  v35.receiver = v21;
  v35.super_class = v23;

  v24 = objc_msgSendSuper2(&v35, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_249BA1010;
  *(v25 + 32) = v20;
  *(v25 + 40) = v24;
  v26 = objc_allocWithZone(type metadata accessor for DOCChainOperation());
  v27 = v20;
  v28 = v24;
  v29 = DOCChainOperation.init(operations:)(v25);
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.createNewFolder(_:inFolder:);
  *(v30 + 24) = v14;
  v31 = MEMORY[0x277D85000];
  v32 = *((*MEMORY[0x277D85000] & *v29) + 0xB0);

  v32(partial apply for closure #2 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:), v30);
  HIBYTE(v34) = 1;
  (*((*v31 & *v29) + 0x150))(&v34 + 7);
  v33 = [objc_opt_self() mainQueue];
  [v33 addOperation_];
}

uint64_t closure #1 in closure #1 in DOCItemCollectionViewController.createNewFolder(_:inFolder:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t DOCItemCollectionViewController.findUpdatedItemForRenameControllerIfNeeded()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1448))() & 1) == 0)
  {
    return 0;
  }

  result = (*((*v2 & *v0) + 0x1498))();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = (*result + 272);
  v6 = *v5;
  (*v5)();
  result = (*((*v2 & *v0) + 0xBD8))();
  if (result != 2 || (result = (*((*v2 & *v0) + 0xF10))(), (result & 1) != 0))
  {
    v7 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v7)
    {
      v8 = (*((*v2 & *v7) + 0x258))();
      goto LABEL_9;
    }

    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v9 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v9)
  {
    goto LABEL_63;
  }

  v8 = (*((*v2 & *v9) + 0x290))();
LABEL_9:
  v10 = v8;
  v86 = v6;
  if (v8 >> 62)
  {
LABEL_27:
    v11 = __CocoaSet.count.getter();
    if (v11)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_28:

    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.Rename);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v18 = v86;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v88 = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v88);
      *(v28 + 12) = 2080;
      v86();
      swift_getObjectType();
      v30 = DOCNode.nodeDescription.getter();
      v32 = v31;
      swift_unknownObjectRelease();
      v33 = v30;
      v18 = v86;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v88);

      *(v28 + 14) = v34;
      _os_log_impl(&dword_2493AC000, v26, v27, "%s: Couldn't find item by matching DOCNode: %s in itemCollection", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    else
    {
    }

    v35 = [v18() filename];
    swift_unknownObjectRelease();
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v13 = findItem #1 (matching:) in DOCItemCollectionViewController.findUpdatedItemForRenameControllerIfNeeded()(v36, v38, v1);

    if (v13)
    {
      swift_unknownObjectRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v88 = v43;
        *v42 = 136315394;
        *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v88);
        *(v42 + 12) = 2080;
        swift_getObjectType();
        v44 = DOCNode.nodeDescription.getter();
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v88);

        *(v42 + 14) = v46;
        _os_log_impl(&dword_2493AC000, v40, v41, "%s: Found new item matching by file name: %s", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v43, -1, -1);
        MEMORY[0x24C1FE850](v42, -1, -1);
      }

LABEL_37:
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v47 = *(*v4 + 280);
      v48 = swift_unknownObjectRetain();
      v47(v48);
      goto LABEL_38;
    }

    v69 = (*(*v4 + 248))(v39);
    if (v70)
    {
      v13 = findItem #1 (matching:) in DOCItemCollectionViewController.findUpdatedItemForRenameControllerIfNeeded()(v69, v70, v1);

      if (v13)
      {
        swift_unknownObjectRetain();
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v88 = v74;
          *v73 = 136315394;
          *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v88);
          *(v73 + 12) = 2080;
          swift_getObjectType();
          v75 = DOCNode.nodeDescription.getter();
          v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v88);

          *(v73 + 14) = v77;
          _os_log_impl(&dword_2493AC000, v71, v72, "%s: Found new item matching by proposed file name: %s", v73, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v74, -1, -1);
          MEMORY[0x24C1FE850](v73, -1, -1);
        }

        swift_unknownObjectRetain();
        goto LABEL_37;
      }
    }

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v88 = v81;
      *v80 = 136315138;
      *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v88);
      _os_log_impl(&dword_2493AC000, v78, v79, "%s: Failed at all attempts to find item being renamed", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x24C1FE850](v81, -1, -1);
      MEMORY[0x24C1FE850](v80, -1, -1);
    }

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v88 = v85;
      *v84 = 136315138;
      *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v88);
      _os_log_impl(&dword_2493AC000, v82, v83, "%s: Failed. Unable to find item being renamed", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x24C1FE850](v85, -1, -1);
      MEMORY[0x24C1FE850](v84, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return 0;
  }

LABEL_11:
  v12 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x24C1FC540](v12, v10);
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_20;
    }

LABEL_15:
    swift_getObjectType();
    if (DOCNode.isEqualTo(node:)())
    {
      goto LABEL_21;
    }

    swift_unknownObjectRelease();
    ++v12;
    if (v14 == v11)
    {
      goto LABEL_28;
    }
  }

  if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_27;
  }

  v13 = *(v10 + 8 * v12 + 32);
  swift_unknownObjectRetain();
  v14 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
LABEL_21:

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.Rename);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = v86;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v88 = v20;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v88);
    *(v19 + 12) = 2080;
    v86();
    swift_getObjectType();
    v21 = DOCNode.nodeDescription.getter();
    v23 = v22;
    swift_unknownObjectRelease();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v88);
    v18 = v86;

    *(v19 + 14) = v24;
    _os_log_impl(&dword_2493AC000, v16, v17, "%s: Found item by matching by matching identifiers: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v20, -1, -1);
    MEMORY[0x24C1FE850](v19, -1, -1);
  }

LABEL_38:
  swift_unknownObjectRetain();
  swift_getObjectType();
  if (DOCNode.isEqualTo(node:)())
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.Rename);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v88 = v53;
      *v52 = 136315138;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v88);
      _os_log_impl(&dword_2493AC000, v50, v51, "%s: No update needed", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x24C1FE850](v53, -1, -1);
      MEMORY[0x24C1FE850](v52, -1, -1);

      swift_unknownObjectRelease();

      goto LABEL_48;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return 1;
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.Rename);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = v87;
      *v57 = 136315650;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE10B0, &v88);
      *(v57 + 12) = 2080;
      v58 = [v18() filename];
      swift_unknownObjectRelease();
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v18;
      v62 = v61;

      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v62, &v88);

      *(v57 + 14) = v63;
      *(v57 + 22) = 2080;
      (v60)(v64);
      swift_getObjectType();
      v65 = DOCNode.nodeDescription.getter();
      v67 = v66;
      swift_unknownObjectRelease();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v88);

      *(v57 + 24) = v68;
      _os_log_impl(&dword_2493AC000, v55, v56, "%s: Updating renameController with new item name: %s node: %s", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v87, -1, -1);
      MEMORY[0x24C1FE850](v57, -1, -1);
    }

    (*(*v4 + 280))(v13);

    swift_unknownObjectRelease();
LABEL_48:
    swift_unknownObjectRelease();
    return 1;
  }
}

uint64_t DOCItemCollectionViewController.repositionRenameToNewCellIfNeeded()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x19A8))();
  [v2 invalidate];

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = partial apply for closure #1 in DOCItemCollectionViewController.repositionRenameToNewCellIfNeeded();
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v8[3] = &block_descriptor_1341;
  v5 = _Block_copy(v8);

  v6 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:0.1];
  _Block_release(v5);
  return (*((*v1 & *v0) + 0x1998))(v6);
}

uint64_t DOCItemCollectionViewController.abortRename()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x1498);
  v2 = v1();
  if (v2)
  {
    (*(*v2 + 272))(v2);

    swift_getObjectType();
    v3 = DOCNode.nodeDescription.getter();
    v5 = v4;
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 7104878;
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Rename);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E655274726F6261, 0xED00002928656D61, &v13);
    *(v9 + 12) = 2080;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v5, &v13);

    *(v9 + 14) = v11;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: detected unrecoverable state: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {
  }

  result = v1();
  if (result)
  {
    (*(*result + 472))(result);
  }

  return result;
}

void DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1960))();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() defaultManager];
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v4 + 24) = v2;
    v8[4] = partial apply for closure #1 in DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem();
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v8[3] = &block_descriptor_1228;
    v5 = _Block_copy(v8);
    v6 = v0;
    v7 = v2;

    [v3 fetchURLForItem:v7 completionHandler:v5];
    _Block_release(v5);
  }
}

uint64_t closure #1 in DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem()(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v19 - v11;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v19 - v11, &_s10Foundation3URLVSgMd);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  outlined init with take of (key: URL, value: FPItem)(v12, v15 + v13, &_s10Foundation3URLVSgMd);
  *(v15 + v14) = a3;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v16 = a3;
  v17 = a4;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem()(uint64_t a1, void *a2, char *a3)
{
  v57 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v55 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v16, &_s10Foundation3URLVSgMd);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd);
    v22 = a2;
LABEL_7:
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.Rename);
    v27 = v22;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58 = v31;
      *v30 = 136315394;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x8000000249BE0ED0, &v58);
      *(v30 + 12) = 2080;
      v32 = (*((*MEMORY[0x277D85000] & *v27) + 0x1960))();
      if (v32)
      {
        v33 = v32;
        v34 = [v32 itemIdentifier];

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
      }

      else
      {
        v35 = 4271950;
        v37 = 0xE300000000000000;
      }

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v58);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_2493AC000, v28, v29, "%s: Enqueued folder not found in item collection: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v31, -1, -1);
      MEMORY[0x24C1FE850](v30, -1, -1);
    }

    return;
  }

  (*(v18 + 32))(v21, v16, v17);
  (*(v18 + 16))(v12, v21, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  v23 = MEMORY[0x277D85000];
  v24 = (*((*MEMORY[0x277D85000] & *a2) + 0xDA0))(v57, v12);
  outlined destroy of CharacterSet?(v12, &_s10Foundation3URLVSgMd);
  v22 = a2;
  if (!v24)
  {
    (*(v18 + 8))(v21, v17);
    goto LABEL_7;
  }

  (*((*v23 & *a2) + 0xD98))(v24);
  v25 = type metadata accessor for IndexPath();
  if ((*(*(v25 - 8) + 48))(v8, 1, v25) == 1)
  {
    (*(v18 + 8))(v21, v17);
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd);
    goto LABEL_7;
  }

  outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.Rename);
  v40 = a2;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v56 = v42;
    v57 = v21;
    v43 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58 = v55;
    *v43 = 136315394;
    *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x8000000249BE0ED0, &v58);
    *(v43 + 12) = 2080;
    v44 = (*((*v23 & *v40) + 0x1960))();
    if (v44)
    {
      v45 = v44;
      v46 = [v44 itemIdentifier];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v47 = 4271950;
      v49 = 0xE300000000000000;
    }

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v58);

    *(v43 + 14) = v50;
    _os_log_impl(&dword_2493AC000, v41, v56, "%s: Resuming enqueued inline rename of folder created: %s", v43, 0x16u);
    v51 = v55;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v51, -1, -1);
    MEMORY[0x24C1FE850](v43, -1, -1);

    v21 = v57;
    v23 = MEMORY[0x277D85000];
  }

  else
  {
  }

  v52 = *((*v23 & *v40) + 0x1978);
  v53 = swift_unknownObjectRetain();
  v54 = v52(v53);
  DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(v24, v54);
  swift_unknownObjectRelease();

  (*((*v23 & *v40) + 0x1968))(0);
  (*((*v23 & *v40) + 0x1980))(MEMORY[0x277D84F90]);
  swift_unknownObjectRelease();
  (*(v18 + 8))(v21, v17);
}

void DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void *a1, unint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    swift_unknownObjectRetain();
    [v2 setEditing_];
    v6 = a2 >> 62;
    if (a2 >> 62)
    {
      if (__CocoaSet.count.getter() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      if ((*((*MEMORY[0x277D85000] & *v2) + 0xBD8))() != 3)
      {
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, static Logger.Rename);

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v30 = v22;
          *v21 = 136315394;
          *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0EF0, &v30);
          *(v21 + 12) = 2048;
          if (v6)
          {
            v23 = __CocoaSet.count.getter();
          }

          else
          {
            v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v21 + 14) = v23;

          _os_log_impl(&dword_2493AC000, v19, v20, "%s not in column view with: %ld nodes to move. Moving nodes then starting rename", v21, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x24C1FE850](v22, -1, -1);
          MEMORY[0x24C1FE850](v21, -1, -1);
        }

        else
        {
        }

        v25 = swift_allocObject();
        v25[2] = 0xD000000000000026;
        v25[3] = 0x8000000249BE0EF0;
        v25[4] = a2;
        v25[5] = v3;
        v25[6] = a1;
        swift_unknownObjectRetain();

        specialized DOCItemCollectionViewController.move(nodes:to:completion:)(a2, a1, partial apply for closure #1 in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:), v25, v3);

        goto LABEL_37;
      }

      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.Rename);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v8, v9))
      {

LABEL_36:
        prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(0xD000000000000026, 0x8000000249BE0EF0, v3, a1, a2);
LABEL_37:

        swift_unknownObjectRelease();
        return;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v11;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0EF0, &v30);
      *(v10 + 12) = 2048;
      if (v6)
      {
        v12 = __CocoaSet.count.getter();
      }

      else
      {
        v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v10 + 14) = v12;

      _os_log_impl(&dword_2493AC000, v8, v9, "%s in column view with: %ld nodes to move", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1FE850](v11, -1, -1);
      v24 = v10;
      goto LABEL_34;
    }

    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.Rename);
    v8 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v8, v27))
    {
      goto LABEL_35;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v28 = 136315138;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0EF0, &v30);
    _os_log_impl(&dword_2493AC000, v8, v27, "%s no nodes to move, preparing to rename", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x24C1FE850](v29, -1, -1);
    v24 = v28;
LABEL_34:
    MEMORY[0x24C1FE850](v24, -1, -1);
LABEL_35:

    goto LABEL_36;
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.Rename);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0EF0, &v30);
    _os_log_impl(&dword_2493AC000, v14, v15, "%s: nil folder node. Bailing and cleaning up", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  cleanup #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(0xD000000000000026, 0x8000000249BE0EF0, v3);
}

void closure #1 in DOCItemCollectionViewController.resetReadyForRenameTimer()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1960))();
    if (v2)
    {

      DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem()();
    }
  }
}

void *findItem #1 (matching:) in DOCItemCollectionViewController.findUpdatedItemForRenameControllerIfNeeded()(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v3)
  {
    v5 = result;
    v6 = (*((*MEMORY[0x277D85000] & *v3) + 0x258))();
    v7 = v6;
    if (v6 >> 62)
    {
      goto LABEL_21;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v9 = 0;
        v18 = v7 & 0xFFFFFFFFFFFFFF8;
        while ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C1FC540](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:

            return v10;
          }

LABEL_8:
          v12 = [v10 filename];
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          if (v13 == v5 && v15 == a2)
          {
            goto LABEL_18;
          }

          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {

            return v10;
          }

          swift_unknownObjectRelease();
          ++v9;
          if (v11 == v8)
          {
            goto LABEL_22;
          }
        }

        if (v9 < *(v18 + 16))
        {
          break;
        }

        __break(1u);
LABEL_21:
        v8 = __CocoaSet.count.getter();
        if (!v8)
        {
          goto LABEL_22;
        }
      }

      v10 = *(v7 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

LABEL_22:

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.repositionRenameToNewCellIfNeeded()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *Strong) + 0x1448))())
    {
      if ((*((*v2 & *v1) + 0x1498))())
      {

        DOCItemCollectionViewController._repositionRenamingCell()();
      }
    }
  }
}

uint64_t updateActiveRenameCell #1 (_:) in DOCItemCollectionViewController._repositionRenamingCell()(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.Rename);

  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v25 = a1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315906;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v26);
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BE1070, &v26);
    *(v14 + 22) = 2048;
    *(v14 + 24) = a4;
    *(v14 + 32) = 2080;
    swift_getObjectType();
    v16 = DOCNode.nodeDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v26);

    *(v14 + 34) = v18;
    _os_log_impl(&dword_2493AC000, v12, v13, "%s->%s (%ld): Found existing cell on screen: %s", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v15, -1, -1);
    v19 = v14;
    a1 = v25;
    MEMORY[0x24C1FE850](v19, -1, -1);
  }

  result = (*((*MEMORY[0x277D85000] & *a6) + 0x1498))();
  if (result)
  {
    v21 = result;
    type metadata accessor for DOCItemCollectionCell();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      v24 = a1;
      v22 = v23;
    }

    (*(*v21 + 304))(v22);
  }

  return result;
}

void findRenameCell #1 () in DOCItemCollectionViewController._repositionRenamingCell()(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, id a6)
{
  v10 = a2;
  v12 = MEMORY[0x277D85000];
  v40 = (*((*MEMORY[0x277D85000] & *a1) + 0x18D0))(a2);
  if (v40)
  {
    if ((*((*v12 & *a1) + 0xF70))(v10))
    {
      v13 = (*((*v12 & *a1) + 0x1010))();
      [v40 frame];
      v14 = [v13 _isRectFullyVisible_];

      if (v14)
      {
        v15 = a3;
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logger.Rename);

        swift_unknownObjectRetain();
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v42 = v38;
          *v19 = 136315906;
          *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, a4, &v42);
          *(v19 + 12) = 2080;
          *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BE1050, &v42);
          *(v19 + 22) = 2048;
          *(v19 + 24) = a5;
          *(v19 + 32) = 2080;
          swift_getObjectType();
          v20 = DOCNode.nodeDescription.getter();
          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v42);

          *(v19 + 34) = v22;
          _os_log_impl(&dword_2493AC000, v17, v18, "%s->%s (%ld): Found existing cell on screen: %s", v19, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v38, -1, -1);
          MEMORY[0x24C1FE850](v19, -1, -1);
        }

        updateActiveRenameCell #1 (_:) in DOCItemCollectionViewController._repositionRenamingCell()(v40, v15, a4, a5, v10, a1);

        return;
      }
    }
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.Rename);

  swift_unknownObjectRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v24, v25))
  {
    v41 = a6;
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v26 = 136315906;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v42);
    *(v26 + 12) = 2080;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BE1050, &v42);
    *(v26 + 22) = 2048;
    *(v26 + 24) = a5;
    *(v26 + 32) = 2080;
    swift_getObjectType();
    v27 = DOCNode.nodeDescription.getter();
    v29 = v10;
    v30 = a4;
    v31 = a3;
    v32 = a5;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v42);

    *(v26 + 34) = v33;
    a5 = v32;
    a3 = v31;
    a4 = v30;
    v10 = v29;
    _os_log_impl(&dword_2493AC000, v24, v25, "%s->%s (%ld): No existing cell on screen, trying to scroll to it: %s", v26, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v39, -1, -1);
    v34 = v26;
    a6 = v41;
    MEMORY[0x24C1FE850](v34, -1, -1);
  }

  v35 = swift_allocObject();
  v35[2] = a1;
  v35[3] = v10;
  v35[4] = a3;
  v35[5] = a4;
  v35[6] = a5;
  v36 = *((*MEMORY[0x277D85000] & *a1) + 0x18D8);

  swift_unknownObjectRetain();
  v37 = a1;
  v36(a6, partial apply for closure #1 in findRenameCell #1 () in DOCItemCollectionViewController._repositionRenamingCell(), v35);
}

void closure #1 in findRenameCell #1 () in DOCItemCollectionViewController._repositionRenamingCell()(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = (*((*MEMORY[0x277D85000] & *a1) + 0x18D0))(a2);
  if (v10)
  {
    v11 = v10;
    updateActiveRenameCell #1 (_:) in DOCItemCollectionViewController._repositionRenamingCell()(v10, a3, a4, a5, a2, a1);
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.Rename);

    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315906;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v27);
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BE1050, &v27);
      *(v14 + 22) = 2048;
      *(v14 + 24) = a5;
      *(v14 + 32) = 2080;
      swift_getObjectType();
      v16 = DOCNode.nodeDescription.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v27);

      *(v14 + 34) = v18;
      _os_log_impl(&dword_2493AC000, oslog, v13, "%s->%s (%ld): Scrolling revealed cell for folder node: %s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v15, -1, -1);
      MEMORY[0x24C1FE850](v14, -1, -1);

LABEL_10:
      return;
    }
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.Rename);

    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315906;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v27);
      *(v21 + 12) = 2080;
      *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BE1050, &v27);
      *(v21 + 22) = 2048;
      *(v21 + 24) = a5;
      *(v21 + 32) = 2080;
      swift_getObjectType();
      v23 = DOCNode.nodeDescription.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v27);

      *(v21 + 34) = v25;
      _os_log_impl(&dword_2493AC000, oslog, v20, "%s->%s (%ld): Scrolling FAILED. Could not find cell for folder node: %s", v21, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v22, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);
      goto LABEL_10;
    }
  }
}

void closure #1 in DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)(void *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*((*MEMORY[0x277D85000] & *a1) + 0x18D0))(a2, v13);
  if (v16)
  {
    v17 = v16;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.Rename);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0F80, &v41);
      _os_log_impl(&dword_2493AC000, v19, v20, "%s: Scrolling completed and found cell", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C1FE850](v22, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    v40 = v17;
    a3(v17);

    v23 = v40;
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.Rename);
    (*(v11 + 16))(v15, a5, v10);
    swift_unknownObjectRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39[1] = a4;
      v29 = v28;
      v41 = v28;
      *v27 = 136315650;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0F80, &v41);
      *(v27 + 12) = 2080;
      v30 = [a2 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = a3;
      v33 = v32;

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v41);

      *(v27 + 14) = v34;
      *(v27 + 22) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v11 + 8))(v15, v10);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v41);

      *(v27 + 24) = v38;
      a3 = v40;
      _os_log_impl(&dword_2493AC000, v25, v26, "%s: Could not find item cell for node: %s indexPath: %s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    a3(0);
  }
}

void cleanup #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Rename);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v11);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2870756E61656C63, 0xE900000000000029, &v11);
    _os_log_impl(&dword_2493AC000, v7, v8, "%s > %s: clearing preparing state", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 0;
}

void prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void (*a1)(char *, uint64_t, uint64_t), unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v67 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v63 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.Rename);

  v65 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v66 = a2;
  v64 = v17;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = a2;
    v26 = v14;
    v27 = a4;
    v28 = v13;
    v29 = a5;
    v30 = v24;
    v68 = v24;
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v25, &v68);
    *(v23 + 12) = 2080;
    *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BE0F40, &v68);
    _os_log_impl(&dword_2493AC000, v20, v21, "%s > %s BEGIN", v23, 0x16u);
    swift_arrayDestroy();
    v31 = v30;
    a5 = v29;
    v13 = v28;
    a4 = v27;
    v14 = v26;
    MEMORY[0x24C1FE850](v31, -1, -1);
    MEMORY[0x24C1FE850](v23, -1, -1);
  }

  v32 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a3) + 0xD98))(a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd);
    swift_getObjectType();
    v33 = DOCNode.fpfs_syncFetchFPItem()();
    (*((*v32 & *a3) + 0x1968))(v33);
    v34 = *((*v32 & *a3) + 0x1980);

    v34(v35);
    v36 = v66;

    swift_unknownObjectRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v68 = v40;
      *v39 = 136315650;
      v41 = v67;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v36, &v68);
      *(v39 + 12) = 2080;
      *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BE0F40, &v68);
      *(v39 + 22) = 2080;
      v42 = [a4 description];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v68);

      *(v39 + 24) = v46;
      _os_log_impl(&dword_2493AC000, v37, v38, "%s > %s: item collection doesn't contain new folder: %s yet, enqueing", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v40, -1, -1);
      MEMORY[0x24C1FE850](v39, -1, -1);
    }

    else
    {

      v41 = v67;
    }

    cleanup #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(v41, v36, a3);
  }

  else
  {
    v47 = v64;
    v48 = (*(v14 + 32))(v64, v12, v13);
    v49 = (*((*v32 & *a3) + 0xBD8))(v48);
    v50 = v66;
    if (v49 == 3)
    {
      v51 = v47;
      v63 = v14;

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      v54 = os_log_type_enabled(v52, v53);
      v55 = v67;
      if (v54)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v65 = a4;
        v58 = v13;
        v59 = a5;
        v60 = v57;
        v68 = v57;
        *v56 = 136315394;
        *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v50, &v68);
        *(v56 + 12) = 2080;
        *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BE0F60, &v68);
        _os_log_impl(&dword_2493AC000, v52, v53, "%s > %s: BEGIN", v56, 0x16u);
        swift_arrayDestroy();
        v61 = v60;
        a5 = v59;
        v13 = v58;
        a4 = v65;
        MEMORY[0x24C1FE850](v61, -1, -1);
        MEMORY[0x24C1FE850](v56, -1, -1);
      }

      swift_unknownObjectRetain();
      v62 = a3;

      specialized DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)(a4, v51, v62, a4, v55, v50, v62, a5);
      swift_unknownObjectRelease();

      v14 = v63;
    }

    else
    {
      otherViewModesRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(v67, v66, a3, a4, v47);
      v51 = v47;
    }

    (*(v14 + 8))(v51, v13);
  }
}

uint64_t closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v41 = a6;
  v42 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchTime();
  v43 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v41 - v21;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.Rename);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = a5;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    *(v26 + 12) = 2080;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, aBlock);
    _os_log_impl(&dword_2493AC000, v24, v25, "%s > %s: validation and selection completed", v26, 0x16u);
    swift_arrayDestroy();
    v29 = v28;
    a5 = v27;
    MEMORY[0x24C1FE850](v29, -1, -1);
    MEMORY[0x24C1FE850](v26, -1, -1);
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v30 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v43 = *(v43 + 8);
  (v43)(v18, v50);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = a1;
  v32[3] = a2;
  v33 = v41;
  v32[4] = v42;
  v32[5] = a5;
  v32[6] = v31;
  v32[7] = a3;
  v32[8] = v33;
  aBlock[4] = partial apply for closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:);
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1253;
  v34 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v35 = a3;
  v36 = v33;

  v37 = v44;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v38 = v45;
  v39 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB940](v22, v37, v38, v34);
  _Block_release(v34);

  (*(v48 + 8))(v38, v39);
  (*(v46 + 8))(v37, v47);
  return (v43)(v22, v50);
}

void closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.Rename);

  swift_unknownObjectRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  v32 = a1;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315650;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, aBlock);
    *(v15 + 22) = 2080;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v17 = String.init<A>(describing:)();
    v19 = a4;
    v20 = a6;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, aBlock);

    *(v15 + 24) = v21;
    a6 = v20;
    a4 = v19;
    _os_log_impl(&dword_2493AC000, v13, v14, "%s > %s: collection view quiescent timer finished, re-fetching item: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v16, -1, -1);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  v22 = [objc_opt_self() defaultManager];
  swift_getObjectType();
  v23 = DOCNode.fpfs_syncFetchFPItem()();
  if (v23)
  {
    v24 = v23;
    v25 = swift_allocObject();
    v25[2] = v32;
    v25[3] = a2;
    v25[4] = a4;
    v25[5] = a5;
    v25[6] = a6;
    v25[7] = a7;

    v26 = a6;
    v27 = a7;
    v28 = [v24 itemID];
    v29 = swift_allocObject();
    v29[2] = v24;
    v29[3] = partial apply for closure #1 in closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:);
    v29[4] = v25;
    aBlock[4] = closure #1 in FPItemManager.doc_refetchItem(_:completion:)partial apply;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_1263;
    v30 = _Block_copy(aBlock);
    v31 = v24;

    [v22 fetchItemForItemID:v28 completionHandler:v30];
    _Block_release(v30);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void *a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, void *a7, NSObject *a8)
{
  if (a1)
  {
    v14 = one-time initialization token for Rename;
    v15 = a1;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.Rename);
    v17 = v15;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    v49 = a3;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = a5;
      v21 = a3;
      v22 = swift_slowAlloc();
      osloga = a8;
      v23 = swift_slowAlloc();
      v48 = a7;
      v24 = swift_slowAlloc();
      v52[0] = v24;
      *v22 = 136315650;
      v25 = v21;
      a5 = v20;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, a4, v52);
      *(v22 + 12) = 2080;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, v52);
      *(v22 + 22) = 2112;
      *(v22 + 24) = v17;
      *v23 = a1;
      v26 = v17;
      _os_log_impl(&dword_2493AC000, v18, v19, "%s > %s: re-fetched item: %@", v22, 0x20u);
      outlined destroy of CharacterSet?(v23, &_sSo8NSObjectCSgMd);
      v27 = v23;
      a8 = osloga;
      MEMORY[0x24C1FE850](v27, -1, -1);
      swift_arrayDestroy();
      v28 = v24;
      a7 = v48;
      MEMORY[0x24C1FE850](v28, -1, -1);
      MEMORY[0x24C1FE850](v22, -1, -1);
    }

    if (a5 >> 62)
    {
      v29 = __CocoaSet.count.getter();
    }

    else
    {
      v29 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v29 >= 1)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v31 = Strong;
        v32 = v17;

        v33 = a7;
        v34 = a8;
        specialized DOCItemCollectionViewController.move(nodes:to:completion:)(a5, v32, v31, v49, a4, v33, v32, v34);
      }

      else
      {
      }

      return;
    }

    v45 = swift_allocObject();
    v45[2] = v49;
    v45[3] = a4;
    v45[4] = a7;
    v45[5] = v17;
    v45[6] = a8;
    oslog = v17;

    v46 = a7;
    v47 = a8;
    DOCRunInMainThread(_:)();
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.Rename);
    v37 = a2;

    oslog = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52[0] = v40;
      *v39 = 136315650;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v52);
      *(v39 + 12) = 2080;
      *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, v52);
      *(v39 + 22) = 2080;
      v52[3] = a2;
      v41 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCSgMd);
      v42 = String.init<A>(describing:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v52);

      *(v39 + 24) = v44;
      _os_log_impl(&dword_2493AC000, oslog, v38, "%s > %s: could not re-fetch folder, error: %s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v40, -1, -1);
      MEMORY[0x24C1FE850](v39, -1, -1);

      return;
    }
  }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(char a1, uint64_t a2, unint64_t a3, void *a4, void *a5, void *a6)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.Rename);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315650;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v22);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, &v22);
    *(v15 + 22) = 1024;
    *(v15 + 24) = a1 & 1;
    _os_log_impl(&dword_2493AC000, v13, v14, "%s > %s: move success finished with success: %{BOOL}d. Starting rename", v15, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v16, -1, -1);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;

  v18 = a4;
  v19 = a5;
  v20 = a6;
  DOCRunInMainThread(_:)();
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(uint64_t a1, unint64_t a2, _BYTE *a3, void *a4, void *a5)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Rename);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v16);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, &v16);
    _os_log_impl(&dword_2493AC000, v11, v12, "%s > %s: No node to move. Starting rename", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  return specialized startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a4, a5, a1, a2, a3);
}

void closure #1 in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void *a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    v11 = one-time initialization token for Rename;
    v12 = a1;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.Rename);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v17;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v33);
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, &v33);
      _os_log_impl(&dword_2493AC000, v14, v15, "%s > %s: Beginning rename steps starting with validateNodeSelectionAndPerformDidPickIfNeeded", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v17, -1, -1);
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    v18 = swift_allocObject();
    v19 = *MEMORY[0x277D85000] & *a5;
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = a5;
    v18[5] = a2;
    v18[6] = a6;
    v18[7] = v12;
    v20 = *(v19 + 6368);
    v21 = v12;

    v22 = a5;
    swift_unknownObjectRetain();

    v20(a2, 0, closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)partial apply, v18);
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.Rename);
    swift_unknownObjectRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315394;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BE0F60, &v33);
      *(v26 + 12) = 2080;
      v28 = [a2 description];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v33);

      *(v26 + 14) = v32;
      _os_log_impl(&dword_2493AC000, v24, v25, "%s: Could not show inline rename for item: %s. Unable to find cell.", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v27, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    cleanup #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a3, a4, a5);
  }
}

uint64_t otherViewModesRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void (*a1)(char *, uint64_t, uint64_t), unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Rename);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE1010, &v18);
    _os_log_impl(&dword_2493AC000, v11, v12, "%s > %s: BEGIN", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  v15 = a3;
  v16 = swift_unknownObjectRetain();
  specialized DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)(v16, a5, v15, a1, a2, v15, a4);

  return swift_unknownObjectRelease();
}

void closure #1 in otherViewModesRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void *a1, uint64_t a2, unint64_t a3, _BYTE *a4, void *a5)
{
  if (a1)
  {
    swift_getObjectType();
    v20 = a1;
    specialized startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a5, v20, a2, a3, a4);
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.Rename);
    swift_unknownObjectRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE1010, &v21);
      *(v13 + 12) = 2080;
      v15 = [a5 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v21);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_2493AC000, v11, v12, "%s: Could not show inline rename for item: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v14, -1, -1);
      MEMORY[0x24C1FE850](v13, -1, -1);
    }

    cleanup #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a2, a3, a4);
  }
}

void closure #1 in startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.Rename);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v13);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0FF0, &v13);
    _os_log_impl(&dword_2493AC000, v9, v10, "%s > %s: now safe to change first responder, beginning rename", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  (*(*a3 + 432))();

  cleanup #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a1, a2, a4);
}

void closure #1 in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), unint64_t a3, unint64_t a4, void *a5, void *a6)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.Rename);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v17);
    *(v14 + 12) = 2048;
    if (a4 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 14) = v16;

    _os_log_impl(&dword_2493AC000, v12, v13, "%s not in column view with: %ld nodes to move. Node move success! preparing to rename", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1FE850](v15, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  else
  {
  }

  prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a2, a3, a5, a6, a4);
}

void closure #1 in DOCItemCollectionViewController.createNewFolderModal(_:parentNode:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      objc_allocWithZone(type metadata accessor for DOCCreateFolderViewController());
      v9 = a1;

      v10 = v8;
      v8 = specialized DOCCreateFolderViewController.init(creatingFolderInParentItem:suggestedName:transitionProxy:)(v9, a3, a4, v8);

      DOCFilenameViewController.present(from:animated:)(v10, 1);
    }
  }
}

void DOCItemCollectionViewController.toggleCellExpansion(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = aBlock - v7;
  v9 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0xF10))(v6) & 1) == 0)
  {
    v10 = (*((*v9 & *a1) + 0x208))();
    if (v10)
    {
      v11 = v10;
      v12 = (*((*v9 & *v10) + 0x3D0))();

      if (v12)
      {
        if ([v12 isBrowsable])
        {
          v13 = *((*v9 & *v2) + 0x820);
          v13(aBlock);
          v14 = v31;
          if (v31)
          {
            v15 = v32;
            __swift_project_boxed_opaque_existential_1(aBlock, v31);
            (*(v15 + 11))(v12, v14, v15);
            v16 = type metadata accessor for IndexPath();
            v17 = (*(*(v16 - 8) + 48))(v8, 1, v16);
            outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd);
            v18 = __swift_destroy_boxed_opaque_existential_0(aBlock);
            if (v17 == 1)
            {
LABEL_16:
              swift_unknownObjectRelease();
              return;
            }

            v19 = (*((*v9 & *v2) + 0xD60))(v18);
            if (!*(v19 + 16))
            {
              swift_unknownObjectRelease();

              return;
            }

            v20 = *(v19 + 48);
            v36 = *(v19 + 32);
            v37 = v20;
            v38 = *(v19 + 64);
            outlined init with copy of DOCCollectionSection(&v36, aBlock);

            (v13)(aBlock, v21);
            v22 = v31;
            if (v31)
            {
              v23 = v32;
              __swift_project_boxed_opaque_existential_1(aBlock, v31);
              v34[0] = v36;
              v34[1] = v37;
              v35 = v38;
              v24 = (*(v23 + 6))(v12, v34, v22, v23);
              __swift_destroy_boxed_opaque_existential_0(aBlock);
              if (v24)
              {
                _toggleAfterAuthenticating #1 (isExpanded:) in DOCItemCollectionViewController.toggleCellExpansion(_:)(1, v2, v12, &v36);
                outlined destroy of DOCCollectionSection(&v36);
              }

              else
              {
                v25 = [objc_opt_self() sharedManager];
                v26 = swift_allocObject();
                *(v26 + 16) = v2;
                *(v26 + 24) = v12;
                v27 = v37;
                *(v26 + 32) = v36;
                *(v26 + 48) = v27;
                *(v26 + 64) = v38;
                *(v26 + 72) = 0;
                v32 = partial apply for closure #1 in DOCItemCollectionViewController.toggleCellExpansion(_:);
                v33 = v26;
                aBlock[0] = MEMORY[0x277D85DD0];
                aBlock[1] = 1107296256;
                aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
                v31 = &block_descriptor_333;
                v28 = _Block_copy(aBlock);
                swift_unknownObjectRetain();
                outlined init with copy of DOCCollectionSection(&v36, v34);
                swift_unknownObjectRetain();
                v29 = v2;

                [v25 authenticateLocationWithNoUI:v12 completion:v28];
                outlined destroy of DOCCollectionSection(&v36);
                swift_unknownObjectRelease();
                _Block_release(v28);
              }

              goto LABEL_16;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return;
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void _toggleAfterAuthenticating #1 (isExpanded:) in DOCItemCollectionViewController.toggleCellExpansion(_:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *a2) + 0x760))() & 1) == 0)
  {
    if (a1)
    {
      (*((*v8 & *a2) + 0x820))(v16);
      v9 = v17;
      if (v17)
      {
        v10 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        v11 = *(a4 + 16);
        v14[0] = *a4;
        v14[1] = v11;
        v15 = *(a4 + 32);
        (*(v10 + 56))(a3, v14, v9, v10);
        __swift_destroy_boxed_opaque_existential_0(v16);
        v12 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
        if (v12)
        {
          (*((*v8 & *v12) + 0x130))(a3);
LABEL_11:
          DOCItemCollectionViewController.displayEmptyFolderAsExpandedIfNeeded(_:)(a3);
          return;
        }

LABEL_15:
        __break(1u);
        return;
      }

      __break(1u);
    }

    else
    {
      v13 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
      if (v13)
      {
        (*((*v8 & *v13) + 0x120))(a3);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  if (a1)
  {
    DOCItemCollectionViewController.recursivelyCollapseNodes(_:)(a3);
  }

  else
  {
    DOCItemCollectionViewController.recursivelyExpandNodes(_:)(a3);
  }
}

void closure #1 in DOCItemCollectionViewController.toggleCellExpansion(_:)(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1)
  {

    _toggleAfterAuthenticating #1 (isExpanded:) in DOCItemCollectionViewController.toggleCellExpansion(_:)(a6 & 1, a3, a4, a5);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    v8 = a2;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000249BE0A30, &v17);
      *(v10 + 12) = 2080;
      v12 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_2493AC000, oslog, v9, "%s app protection authentication did not succeed or hit error: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    else
    {
    }
  }
}

void DOCItemCollectionViewController.cell(_:perform:)(void *a1, void *a2)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *a1) + 0x208))();
  if (v4)
  {
    v5 = *((*v3 & *v4) + 0x3D0);
    v6 = v4;
    v7 = v5();

    if (v7)
    {
      swift_getObjectType();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = a2;

      v10 = a2;
      DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCItemCollectionViewController.cell(_:perform:), v9);
      swift_unknownObjectRelease();
    }
  }
}

void closure #1 in DOCItemCollectionViewController.cell(_:perform:)(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_249BA0290;
      *(v8 + 32) = a1;
      v9 = a1;
      v10 = v7;
      v11 = DOCItemCollectionViewController.actionContext(from:)();
      specialized DOCActionManager.perform(_:on:actionContext:)(a3, v8, v11);

      v6 = v11;
    }
  }
}

uint64_t DOCItemCollectionViewController.cell(_:shouldSpringLoadWith:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10, v11);
  v14 = &v20 - v13;
  v15 = MEMORY[0x277D85000];
  v16 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))(v12);
  v17 = [v16 indexPathForCell_];

  if (v17)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(v14, v9, v5);
    v18 = (*((*v15 & *v2) + 0x17B0))(v14, a2);
    (*(v6 + 8))(v14, v5);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t DOCTab.description.getter(uint64_t a1)
{
  v1 = 0x6573776F7242;
  v2 = 0x3F3F3F3F3FLL;
  if (a1 == 1)
  {
    v2 = 0x646572616853;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x73746E65636552;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCTab()
{
  v1 = *v0;
  v2 = 0x6573776F7242;
  v3 = 0x3F3F3F3F3FLL;
  if (*v0 == 1)
  {
    v3 = 0x646572616853;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x73746E65636552;
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.reloadCollectionForAppProtectionStateChange()()
{
  if ([objc_opt_self() protectedAppsEnabled])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.UI);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = MEMORY[0x277D85000];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315650;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x8000000249BDF0D0, &v10);
      *(v7 + 12) = 1024;
      *(v7 + 14) = (*((*v6 & *v2) + 0xAB0))() & 1;
      *(v7 + 18) = 1024;
      *(v7 + 20) = (*((*v6 & *v2) + 0xAE0))() & 1;

      _os_log_impl(&dword_2493AC000, v3, v4, "[PROTECTED APPS] %s: locationIsProtected: %{BOOL}d shouldShowAppProtectionShieldUI: %{BOOL}d reload contents of item collection", v7, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C1FE850](v8, -1, -1);
      MEMORY[0x24C1FE850](v7, -1, -1);
    }

    else
    {
    }

    v9 = (*((*v6 & *v2) + 0xD60))();
    v11 = 0;
    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v9, &v11, 0);
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()<A>(uint64_t a1)
{
  v3 = specialized Sequence._copyToContiguousArray()();
  v4 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v4;
  v8 = *(v1 + 64);
  v5 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v5;
  (*(*(a1 - 8) + 8))(v7, a1);
  return v3;
}

void specialized DOCFocusableCollectionView.setIndexPathsForSelectedItems(_:animated:scrollPosition:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v32 = a2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v30 - v14;
  v33 = v4;
  v16 = [v4 indexPathsForSelectedItems];
  if (!v16)
  {
LABEL_7:
    v22 = v32;
    if (a1)
    {
      v23 = *(a1 + 16);
      if (v23)
      {
        v26 = *(v7 + 16);
        v25 = v7 + 16;
        v24 = v26;
        v27 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
        v28 = *(v25 + 56);
        do
        {
          v24(v10, v27, v6);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v33 selectItemAtIndexPath:isa animated:v22 & 1 scrollPosition:v31];

          (*(v25 - 8))(v10, v6);
          v27 += v28;
          --v23;
        }

        while (v23);
      }
    }

    return;
  }

  v30 = a1;
  v17 = v16;
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_6:

    a1 = v30;
    goto LABEL_7;
  }

  v20 = 0;
  while (v20 < *(v18 + 16))
  {
    (*(v7 + 16))(v15, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20++, v6);
    v21 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v33 deselectItemAtIndexPath:v21 animated:v32 & 1];

    (*(v7 + 8))(v15, v6);
    if (v19 == v20)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

void specialized DOCFocusableCollectionView.scrollToItemIfNeeded(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = IndexPath.section.getter();
  if (v4 < [v2 numberOfSections] && (v5 = IndexPath.item.getter(), v5 < objc_msgSend(v2, sel_numberOfItemsInSection_, IndexPath.section.getter())) && (v6 = objc_msgSend(v2, sel_collectionViewLayout), isa = IndexPath._bridgeToObjectiveC()().super.isa, v8 = objc_msgSend(v6, sel_layoutAttributesForItemAtIndexPath_, isa), v6, isa, v8))
  {
    if ((*((*MEMORY[0x277D85000] & *v2) + 0xD8))())
    {
      v10 = v9;
      ObjectType = swift_getObjectType();
      v12 = (*(v10 + 48))(v2, &protocol witness table for DOCItemCollectionView, a1, ObjectType, v10);
      v14 = v13;
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = *MEMORY[0x277D768C8];
      v14 = *(MEMORY[0x277D768C8] + 8);
    }

    [v8 frame];
    v23 = UIEdgeInsetsInsetRect(v19, v20, v21, v22, v12, v14);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [v2 _effectiveContentInset];
    v31 = v30;
    v33 = v32;
    rect_16a = v34;
    v36 = v35;
    [v2 contentOffset];
    v38 = v33 + v37;
    [v2 contentOffset];
    rect_8 = v31 + v39;
    [v2 bounds];
    v40 = CGRectGetWidth(v49) - v33 - v36;
    v41 = v23;
    [v2 bounds];
    v42 = CGRectGetHeight(v50) - v31 - rect_16a;
    v51.origin.x = v23;
    v51.origin.y = v25;
    v51.size.width = v27;
    v51.size.height = v29;
    MinY = CGRectGetMinY(v51);
    v52.origin.x = v38;
    v52.origin.y = rect_8;
    v52.size.width = v40;
    v52.size.height = v42;
    if (MinY < CGRectGetMinY(v52) || (v53.origin.x = v41, v53.origin.y = v25, v53.size.width = v27, v53.size.height = v29, MaxY = CGRectGetMaxY(v53), v54.origin.x = v38, v54.origin.y = rect_8, v54.size.width = v40, v54.size.height = v42, CGRectGetMaxY(v54) < MaxY))
    {
      [v2 scrollRectToVisible:0 animated:{v41, v25, v27, v29}];
      [v2 _flashScrollIndicatorsPersistingPreviousFlashes];
    }

    rect_16 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v2 scrollToItemAtIndexPath_atScrollPosition_animated_];
  }

  else
  {
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_249B9A480;
    type metadata accessor for IndexPath();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
    rect_16 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t specialized closure #1 in DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(void *a1, uint64_t a2, char a3)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [a1 cellForItemAtIndexPath_];

  UIAccessibilityPostNotification(0x3FCu, v7);
  result = (*((*MEMORY[0x277D85000] & *a1) + 0xD8))();
  if (result)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    (*(v10 + 72))(a1, &protocol witness table for DOCItemCollectionView, a2, a3 & 1, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v42 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v42;
    v41 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = v9;
    v40 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v40(v8, *(a2 + 48) + v17 * v11, v4);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v38)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v41)
      {
        if (v23 >= v41 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v26 = *(v42 + 56);
          v27 = *(*(type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo() - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v11;
          v31 = v26 + v27 * v11 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v39;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v33 = v28 == v30;
            v9 = v39;
            v14 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v41 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v39;
      a2 = v42;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

{
  v39 = type metadata accessor for URL();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v5);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v40 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v39;
    v6 = v40;
    v14 = v11;
    v37 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v35 = a2 + 64;
    v36 = v16;
    v17 = *(v15 + 56);
    v34 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v38;
      v21 = v14;
      v22 = v15;
      v36(v38, *(v6 + 48) + v17 * v10, v13);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v34)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v37)
      {
        if (v24 >= v37 && a1 >= v24)
        {
LABEL_15:
          v6 = v40;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v40 + 48) + v18 * a1 >= (*(v40 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v40;
            v17 = v18;
            v14 = v21;
            v8 = v35;
          }

          else
          {
            v8 = v35;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v40;
              v17 = v18;
              v14 = v21;
            }
          }

          v27 = *(v6 + 56);
          v28 = (v27 + 8 * a1);
          v29 = (v27 + 8 * v10);
          if (a1 != v10 || v28 >= v29 + 1)
          {
            *v28 = *v29;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v37 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v35;
      v17 = v18;
      v6 = v40;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v6 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v32;
    ++*(v6 + 36);
  }
}

{
  v40 = type metadata accessor for URL();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v5);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v27 = *(v6 + 56);
          v28 = (v27 + 32 * a1);
          v29 = (v27 + 32 * v10);
          if (a1 != v10 || v28 >= v29 + 2)
          {
            v30 = v29[1];
            *v28 = *v29;
            v28[1] = v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      Hasher.init(_seed:)();
      if (v12)
      {
        MEMORY[0x24C1FCBD0](1);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v11;
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x24C1FCBD0](0);
        v14 = v11;
        NSObject.hash(into:)();
      }

      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v16 < v8)
      {
        goto LABEL_13;
      }

LABEL_14:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v3);
      v19 = (v17 + v9);
      if (16 * v3 != v9 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(type metadata accessor for RestorableSettings(0) - 8) + 72);
      v22 = v21 * v3;
      v23 = v20 + v21 * v3;
      v24 = v21 * v6;
      v25 = v20 + v21 * v6 + v21;
      if (v22 < v24 || v23 >= v25)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v22 == v24)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (v16 < v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (v3 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_23:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      if (v9)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFStringRef(0);
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
        v9 = v9;
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v11)
      {
LABEL_13:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      v10 = *(*v9 + 96);

      v10(v25);
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 8 * v3);
      v15 = (v13 + 8 * v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for URL() - 8) + 72);
      v18 = v17 * v3;
      result = v16 + v17 * v3;
      v19 = v17 * v6;
      v20 = v16 + v17 * v6 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = v11 + 40 * v3;
      v13 = (v11 + 40 * v6);
      if (v3 != v6 || v12 >= v13 + 40)
      {
        v14 = *v13;
        v15 = v13[1];
        *(v12 + 32) = *(v13 + 4);
        *v12 = v14;
        *(v12 + 16) = v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for ScrollPositionInfo.ItemOffset(0) - 8) + 72);
      v18 = v17 * v3;
      result = v16 + v17 * v3;
      v19 = v17 * v6;
      v20 = v16 + v17 * v6 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v29 = v4;
    do
    {
      v9 = v7;
      v10 = (*(a2 + 48) + 32 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      Hasher.init(_seed:)();
      if (v12 <= 3)
      {
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            MEMORY[0x24C1FCBD0](3);
            v15 = v11;
            v16 = 2;
          }

          else
          {
            MEMORY[0x24C1FCBD0](4);
            v15 = v11;
            v16 = 3;
          }

          goto LABEL_25;
        }

        if (!v12)
        {
          MEMORY[0x24C1FCBD0](0);
          v15 = v11;
          v16 = 0;
          goto LABEL_25;
        }

        if (v12 == 1)
        {
          MEMORY[0x24C1FCBD0](2);
          v15 = v11;
          v16 = 1;
          goto LABEL_25;
        }
      }

      else
      {
        if (v12 <= 5)
        {
          if (v12 == 4)
          {
            MEMORY[0x24C1FCBD0](5);
            v15 = v11;
            v16 = 4;
          }

          else
          {
            MEMORY[0x24C1FCBD0](6);
            v15 = v11;
            v16 = 5;
          }

          goto LABEL_25;
        }

        switch(v12)
        {
          case 6:
            MEMORY[0x24C1FCBD0](7);
            v15 = v11;
            v16 = 6;
            goto LABEL_25;
          case 7:
            MEMORY[0x24C1FCBD0](8);
            v15 = v11;
            v16 = 7;
            goto LABEL_25;
          case 8:
            MEMORY[0x24C1FCBD0](9);
            v15 = v11;
            v16 = 8;
LABEL_25:
            outlined copy of ColumnType(v15, v16);

            goto LABEL_26;
        }
      }

      MEMORY[0x24C1FCBD0](1);
      outlined copy of ColumnType(v11, v12);

      String.hash(into:)();
LABEL_26:
      specialized Set.hash(into:)(v30, v13);
      specialized Dictionary<>.hash(into:)(v30, v14);
      v17 = Hasher._finalize()();
      outlined consume of ColumnType(v11, v12);

      v7 = v9;
      v18 = v17 & v9;
      if (v3 >= v8)
      {
        v4 = v29;
        if (v18 < v8)
        {
          goto LABEL_5;
        }

LABEL_30:
        if (v3 < v18)
        {
          goto LABEL_5;
        }

        goto LABEL_31;
      }

      v4 = v29;
      if (v18 < v8)
      {
        goto LABEL_30;
      }

LABEL_31:
      v19 = *(a2 + 48);
      v20 = (v19 + 32 * v3);
      v21 = (v19 + 32 * v6);
      if (v3 != v6 || v20 >= v21 + 2)
      {
        v22 = v21[1];
        *v20 = *v21;
        v20[1] = v22;
      }

      v23 = *(a2 + 56);
      v24 = *(*(type metadata accessor for Column(0) - 8) + 72);
      v25 = v24 * v3;
      result = v23 + v24 * v3;
      if (v24 * v3 < (v24 * v6) || result >= v23 + v24 * v6 + v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v25 == v24 * v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v4);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v9, v4);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario() - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v112 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
  v122 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v116 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v125 = &v109 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v127 = &v109 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v126 = &v109 - v17;
  v123 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_100:
    a4 = *v112;
    if (!*v112)
    {
      goto LABEL_139;
    }

    v6 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v113;
    if (isUniquelyReferenced_nonNull_native)
    {
      v104 = v6;
LABEL_103:
      v129 = v104;
      v6 = *(v104 + 2);
      if (v6 >= 2)
      {
        while (*v123)
        {
          v105 = *&v104[16 * v6];
          v106 = v104;
          v107 = *&v104[16 * v6 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v123 + *(v122 + 72) * v105, *v123 + *(v122 + 72) * *&v104[16 * v6 + 16], *v123 + *(v122 + 72) * v107, a4);
          if (v35)
          {
            goto LABEL_111;
          }

          if (v107 < v105)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v106);
          }

          if (v6 - 2 >= *(v106 + 2))
          {
            goto LABEL_127;
          }

          v108 = &v106[16 * v6];
          *v108 = v105;
          *(v108 + 1) = v107;
          v129 = v106;
          specialized Array.remove(at:)(v6 - 1);
          v104 = v129;
          v6 = *(v129 + 2);
          if (v6 <= 1)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_137;
      }

LABEL_111:

      return;
    }

LABEL_133:
    v104 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    goto LABEL_103;
  }

  v110 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v21 = &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd;
  v128 = v6;
  while (1)
  {
    v22 = v19;
    v117 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
      v35 = v113;
    }

    else
    {
      v23 = v19;
      v24 = *v123;
      v120 = v24;
      v25 = *(v122 + 72);
      a4 = v24 + v25 * (v19 + 1);
      v26 = v126;
      outlined init with copy of DOCGridLayout.Spec?(a4, v126, v21);
      v27 = v24 + v25 * v23;
      v28 = v127;
      outlined init with copy of DOCGridLayout.Spec?(v27, v127, v21);
      LODWORD(v121) = static IndexPath.< infix(_:_:)();
      outlined destroy of CharacterSet?(v28, v21);
      outlined destroy of CharacterSet?(v26, v21);
      v111 = v23;
      v29 = v23 + 2;
      v124 = v25;
      v30 = v120 + v25 * (v23 + 2);
      while (v18 != v29)
      {
        v31 = v126;
        outlined init with copy of DOCGridLayout.Spec?(v30, v126, v21);
        v32 = v127;
        outlined init with copy of DOCGridLayout.Spec?(a4, v127, v21);
        v33 = static IndexPath.< infix(_:_:)() & 1;
        outlined destroy of CharacterSet?(v32, v21);
        outlined destroy of CharacterSet?(v31, v21);
        ++v29;
        v30 += v124;
        a4 += v124;
        if ((v121 & 1) != v33)
        {
          v34 = v29 - 1;
          goto LABEL_12;
        }
      }

      v34 = v18;
LABEL_12:
      v6 = v128;
      v22 = v111;
      v35 = v113;
      if (v121)
      {
        if (v34 < v111)
        {
          goto LABEL_130;
        }

        if (v111 < v34)
        {
          v36 = v124 * (v34 - 1);
          v37 = v34;
          v38 = v34 * v124;
          v39 = v34;
          v40 = v111;
          a4 = v111 * v124;
          do
          {
            if (v40 != --v37)
            {
              v41 = *v123;
              if (!*v123)
              {
                goto LABEL_136;
              }

              outlined init with take of (key: URL, value: FPItem)(v41 + a4, v116, v21);
              if (a4 < v36 || v41 + a4 >= v41 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of (key: URL, value: FPItem)(v116, v41 + v36, v21);
            }

            ++v40;
            v36 -= v124;
            v38 -= v124;
            a4 += v124;
          }

          while (v40 < v37);
          v35 = v113;
          v6 = v128;
          v22 = v111;
          v34 = v39;
        }
      }
    }

    v42 = v123[1];
    if (v34 >= v42)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v34, v22))
    {
      goto LABEL_129;
    }

    if (v34 - v22 >= v110)
    {
LABEL_35:
      v19 = v34;
      if (v34 < v22)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v22, v110))
    {
      goto LABEL_131;
    }

    if (v22 + v110 >= v42)
    {
      v43 = v123[1];
    }

    else
    {
      v43 = v22 + v110;
    }

    if (v43 < v22)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v34 == v43)
    {
      goto LABEL_35;
    }

    v113 = v35;
    v90 = *v123;
    v91 = *(v122 + 72);
    v92 = *v123 + v91 * (v34 - 1);
    v93 = -v91;
    v111 = v22;
    v94 = v22 - v34;
    v121 = v34;
    v114 = v91;
    v115 = v43;
    v124 = v90;
    a4 = v90 + v34 * v91;
LABEL_90:
    v118 = a4;
    v119 = v94;
    v120 = v92;
    v95 = v92;
LABEL_91:
    v96 = v126;
    outlined init with copy of DOCGridLayout.Spec?(a4, v126, v21);
    v97 = v127;
    outlined init with copy of DOCGridLayout.Spec?(v95, v127, v21);
    v98 = static IndexPath.< infix(_:_:)();
    outlined destroy of CharacterSet?(v97, v21);
    outlined destroy of CharacterSet?(v96, v21);
    if (v98)
    {
      break;
    }

    v6 = v128;
LABEL_89:
    v19 = v115;
    v92 = v120 + v114;
    v94 = v119 - 1;
    a4 = v118 + v114;
    if (++v121 != v115)
    {
      goto LABEL_90;
    }

    v35 = v113;
    v22 = v111;
    if (v115 < v111)
    {
      goto LABEL_128;
    }

LABEL_36:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v117;
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v117 + 2) + 1, 1, v117);
    }

    v45 = *(v20 + 2);
    v44 = *(v20 + 3);
    a4 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v20);
    }

    *(v20 + 2) = a4;
    v46 = &v20[16 * v45];
    *(v46 + 4) = v22;
    *(v46 + 5) = v19;
    if (!*v112)
    {
      goto LABEL_138;
    }

    if (v45)
    {
      v47 = *v112;
      v6 = v128;
      while (1)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v20 + 4);
          v50 = *(v20 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_56:
          if (v52)
          {
            goto LABEL_117;
          }

          v65 = &v20[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_120;
          }

          v71 = &v20[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_124;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v75 = &v20[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_70:
        if (v70)
        {
          goto LABEL_119;
        }

        v78 = &v20[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_122;
        }

        if (v81 < v69)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v48 - 1;
        if (v48 - 1 >= a4)
        {
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v123)
        {
          goto LABEL_135;
        }

        v86 = v20;
        a4 = *&v20[16 * v6 + 32];
        v87 = *&v20[16 * v48 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v123 + *(v122 + 72) * a4, *v123 + *(v122 + 72) * *&v20[16 * v48 + 32], *v123 + *(v122 + 72) * v87, v47);
        if (v35)
        {
          goto LABEL_111;
        }

        if (v87 < a4)
        {
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v88 = v86;
        }

        else
        {
          v88 = specialized _ArrayBuffer._consumeAndCreateNew()(v86);
        }

        if (v6 >= *(v88 + 2))
        {
          goto LABEL_114;
        }

        v89 = &v88[16 * v6];
        *(v89 + 4) = a4;
        *(v89 + 5) = v87;
        v129 = v88;
        specialized Array.remove(at:)(v48);
        v20 = v129;
        a4 = *(v129 + 2);
        v6 = v128;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v53 = &v20[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_115;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_116;
      }

      v60 = &v20[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_118;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_121;
      }

      if (v64 >= v56)
      {
        v82 = &v20[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v51 < v85)
        {
          v48 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v128;
LABEL_4:
    v113 = v35;
    v18 = v123[1];
    if (v19 >= v18)
    {
      goto LABEL_100;
    }
  }

  if (v124)
  {
    v99 = v21;
    v100 = v125;
    outlined init with take of (key: URL, value: FPItem)(a4, v125, v99);
    v6 = v128;
    swift_arrayInitWithTakeFrontToBack();
    v101 = v100;
    v21 = v99;
    outlined init with take of (key: URL, value: FPItem)(v101, v95, v99);
    v95 += v93;
    a4 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

{
  v112 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
  v122 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v116 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v125 = &v109 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v127 = &v109 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v126 = &v109 - v17;
  v123 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_100:
    a4 = *v112;
    if (!*v112)
    {
      goto LABEL_139;
    }

    v6 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v113;
    if (isUniquelyReferenced_nonNull_native)
    {
      v104 = v6;
LABEL_103:
      v129 = v104;
      v6 = *(v104 + 2);
      if (v6 >= 2)
      {
        while (*v123)
        {
          v105 = *&v104[16 * v6];
          v106 = v104;
          v107 = *&v104[16 * v6 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v123 + *(v122 + 72) * v105, *v123 + *(v122 + 72) * *&v104[16 * v6 + 16], *v123 + *(v122 + 72) * v107, a4);
          if (v35)
          {
            goto LABEL_111;
          }

          if (v107 < v105)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v106);
          }

          if (v6 - 2 >= *(v106 + 2))
          {
            goto LABEL_127;
          }

          v108 = &v106[16 * v6];
          *v108 = v105;
          *(v108 + 1) = v107;
          v129 = v106;
          specialized Array.remove(at:)(v6 - 1);
          v104 = v129;
          v6 = *(v129 + 2);
          if (v6 <= 1)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_137;
      }

LABEL_111:

      return;
    }

LABEL_133:
    v104 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    goto LABEL_103;
  }

  v110 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v21 = &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd;
  v128 = v6;
  while (1)
  {
    v22 = v19;
    v117 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
      v35 = v113;
    }

    else
    {
      v23 = v19;
      v24 = *v123;
      v120 = v24;
      v25 = *(v122 + 72);
      a4 = v24 + v25 * (v19 + 1);
      v26 = v126;
      outlined init with copy of DOCGridLayout.Spec?(a4, v126, v21);
      v27 = v24 + v25 * v23;
      v28 = v127;
      outlined init with copy of DOCGridLayout.Spec?(v27, v127, v21);
      LODWORD(v121) = static Date.> infix(_:_:)();
      outlined destroy of CharacterSet?(v28, v21);
      outlined destroy of CharacterSet?(v26, v21);
      v111 = v23;
      v29 = v23 + 2;
      v124 = v25;
      v30 = v120 + v25 * (v23 + 2);
      while (v18 != v29)
      {
        v31 = v126;
        outlined init with copy of DOCGridLayout.Spec?(v30, v126, v21);
        v32 = v127;
        outlined init with copy of DOCGridLayout.Spec?(a4, v127, v21);
        v33 = static Date.> infix(_:_:)() & 1;
        outlined destroy of CharacterSet?(v32, v21);
        outlined destroy of CharacterSet?(v31, v21);
        ++v29;
        v30 += v124;
        a4 += v124;
        if ((v121 & 1) != v33)
        {
          v34 = v29 - 1;
          goto LABEL_12;
        }
      }

      v34 = v18;
LABEL_12:
      v6 = v128;
      v22 = v111;
      v35 = v113;
      if (v121)
      {
        if (v34 < v111)
        {
          goto LABEL_130;
        }

        if (v111 < v34)
        {
          v36 = v124 * (v34 - 1);
          v37 = v34;
          v38 = v34 * v124;
          v39 = v34;
          v40 = v111;
          a4 = v111 * v124;
          do
          {
            if (v40 != --v37)
            {
              v41 = *v123;
              if (!*v123)
              {
                goto LABEL_136;
              }

              outlined init with take of (key: URL, value: FPItem)(v41 + a4, v116, v21);
              if (a4 < v36 || v41 + a4 >= v41 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of (key: URL, value: FPItem)(v116, v41 + v36, v21);
            }

            ++v40;
            v36 -= v124;
            v38 -= v124;
            a4 += v124;
          }

          while (v40 < v37);
          v35 = v113;
          v6 = v128;
          v22 = v111;
          v34 = v39;
        }
      }
    }

    v42 = v123[1];
    if (v34 >= v42)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v34, v22))
    {
      goto LABEL_129;
    }

    if (v34 - v22 >= v110)
    {
LABEL_35:
      v19 = v34;
      if (v34 < v22)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v22, v110))
    {
      goto LABEL_131;
    }

    if (v22 + v110 >= v42)
    {
      v43 = v123[1];
    }

    else
    {
      v43 = v22 + v110;
    }

    if (v43 < v22)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v34 == v43)
    {
      goto LABEL_35;
    }

    v113 = v35;
    v90 = *v123;
    v91 = *(v122 + 72);
    v92 = *v123 + v91 * (v34 - 1);
    v93 = -v91;
    v111 = v22;
    v94 = v22 - v34;
    v121 = v34;
    v114 = v91;
    v115 = v43;
    v124 = v90;
    a4 = v90 + v34 * v91;
LABEL_90:
    v118 = a4;
    v119 = v94;
    v120 = v92;
    v95 = v92;
LABEL_91:
    v96 = v126;
    outlined init with copy of DOCGridLayout.Spec?(a4, v126, v21);
    v97 = v127;
    outlined init with copy of DOCGridLayout.Spec?(v95, v127, v21);
    v98 = static Date.> infix(_:_:)();
    outlined destroy of CharacterSet?(v97, v21);
    outlined destroy of CharacterSet?(v96, v21);
    if (v98)
    {
      break;
    }

    v6 = v128;
LABEL_89:
    v19 = v115;
    v92 = v120 + v114;
    v94 = v119 - 1;
    a4 = v118 + v114;
    if (++v121 != v115)
    {
      goto LABEL_90;
    }

    v35 = v113;
    v22 = v111;
    if (v115 < v111)
    {
      goto LABEL_128;
    }

LABEL_36:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v117;
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v117 + 2) + 1, 1, v117);
    }

    v45 = *(v20 + 2);
    v44 = *(v20 + 3);
    a4 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v20);
    }

    *(v20 + 2) = a4;
    v46 = &v20[16 * v45];
    *(v46 + 4) = v22;
    *(v46 + 5) = v19;
    if (!*v112)
    {
      goto LABEL_138;
    }

    if (v45)
    {
      v47 = *v112;
      v6 = v128;
      while (1)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v20 + 4);
          v50 = *(v20 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_56:
          if (v52)
          {
            goto LABEL_117;
          }

          v65 = &v20[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_120;
          }

          v71 = &v20[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_124;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v75 = &v20[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_70:
        if (v70)
        {
          goto LABEL_119;
        }

        v78 = &v20[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_122;
        }

        if (v81 < v69)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v48 - 1;
        if (v48 - 1 >= a4)
        {
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v123)
        {
          goto LABEL_135;
        }

        v86 = v20;
        a4 = *&v20[16 * v6 + 32];
        v87 = *&v20[16 * v48 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v123 + *(v122 + 72) * a4, *v123 + *(v122 + 72) * *&v20[16 * v48 + 32], *v123 + *(v122 + 72) * v87, v47);
        if (v35)
        {
          goto LABEL_111;
        }

        if (v87 < a4)
        {
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v88 = v86;
        }

        else
        {
          v88 = specialized _ArrayBuffer._consumeAndCreateNew()(v86);
        }

        if (v6 >= *(v88 + 2))
        {
          goto LABEL_114;
        }

        v89 = &v88[16 * v6];
        *(v89 + 4) = a4;
        *(v89 + 5) = v87;
        v129 = v88;
        specialized Array.remove(at:)(v48);
        v20 = v129;
        a4 = *(v129 + 2);
        v6 = v128;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v53 = &v20[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_115;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_116;
      }

      v60 = &v20[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_118;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_121;
      }

      if (v64 >= v56)
      {
        v82 = &v20[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v51 < v85)
        {
          v48 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v128;
LABEL_4:
    v113 = v35;
    v18 = v123[1];
    if (v19 >= v18)
    {
      goto LABEL_100;
    }
  }

  if (v124)
  {
    v99 = v21;
    v100 = v125;
    outlined init with take of (key: URL, value: FPItem)(a4, v125, v99);
    v6 = v128;
    swift_arrayInitWithTakeFrontToBack();
    v101 = v100;
    v21 = v99;
    outlined init with take of (key: URL, value: FPItem)(v101, v95, v99);
    v95 += v93;
    a4 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v126 = a1;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v129 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v137 = &v122 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v143 = &v122 - v18;
  v21.n128_f64[0] = MEMORY[0x28223BE20](v19, v20);
  v142 = &v122 - v22;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_136;
    }

    a4 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v116 = a4;
    }

    else
    {
LABEL_130:
      v116 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v117 = v6;
    v145 = v116;
    a4 = *(v116 + 2);
    if (a4 >= 2)
    {
      v118 = v10;
      v10 = a3;
      a3 = v118;
      while (*v10)
      {
        v119 = *&v116[16 * a4];
        v120 = v116;
        v6 = *&v116[16 * a4 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v10 + a3[9] * v119, *v10 + a3[9] * *&v116[16 * a4 + 16], *v10 + a3[9] * v6, v5);
        if (v117)
        {
          goto LABEL_107;
        }

        if (v6 < v119)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v120 = specialized _ArrayBuffer._consumeAndCreateNew()(v120);
        }

        if (a4 - 2 >= *(v120 + 2))
        {
          goto LABEL_124;
        }

        v121 = &v120[16 * a4];
        *v121 = v119;
        *(v121 + 1) = v6;
        v145 = v120;
        specialized Array.remove(at:)(a4 - 1);
        v116 = v145;
        a4 = *(v145 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v24 = 0;
  v140 = (v10 + 1);
  v141 = v10 + 2;
  v139 = (v10 + 4);
  v25 = MEMORY[0x277D84F90];
  v127 = a3;
  v125 = a4;
  v144 = v9;
  while (1)
  {
    v26 = v24;
    v130 = v25;
    if (v24 + 1 >= v23)
    {
      v37 = v24 + 1;
    }

    else
    {
      v135 = v23;
      v124 = v6;
      v132 = *a3;
      v27 = v132;
      v28 = v10[9];
      v5 = v132 + v28 * (v24 + 1);
      v29 = v10[2];
      v30 = v142;
      v29(v142, v5, v9, v21);
      v31 = v27 + v28 * v26;
      v32 = v143;
      v134 = v29;
      (v29)(v143, v31, v9);
      LODWORD(v136) = static IndexPath.< infix(_:_:)();
      v33 = v9;
      v34 = v10[1];
      v34(v32, v33);
      v133 = v34;
      v34(v30, v33);
      v123 = v26;
      v35 = v26 + 2;
      v138 = v28;
      v36 = v132 + v28 * (v26 + 2);
      while (1)
      {
        v37 = v135;
        if (v135 == v35)
        {
          break;
        }

        v38 = v10;
        v39 = v142;
        v40 = v144;
        v41 = v134;
        (v134)(v142, v36, v144);
        v42 = v143;
        v41(v143, v5, v40);
        v43 = static IndexPath.< infix(_:_:)() & 1;
        v44 = v133;
        (v133)(v42, v40);
        v45 = v39;
        v10 = v38;
        v44(v45, v40);
        ++v35;
        v36 += v138;
        v5 += v138;
        if ((v136 & 1) != v43)
        {
          v37 = v35 - 1;
          break;
        }
      }

      a3 = v127;
      v25 = v130;
      v6 = v124;
      a4 = v125;
      v9 = v144;
      v26 = v123;
      if (v136)
      {
        if (v37 < v123)
        {
          goto LABEL_127;
        }

        if (v123 < v37)
        {
          v122 = v10;
          v46 = v138 * (v37 - 1);
          v47 = v37 * v138;
          v48 = v37;
          v49 = v123;
          v50 = v123 * v138;
          do
          {
            if (v49 != --v48)
            {
              v52 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v53 = v37;
              v5 = &v52[v50];
              v136 = *v139;
              (v136)(v129, &v52[v50], v144, v25);
              if (v50 < v46 || v5 >= &v52[v47])
              {
                v51 = v144;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v51 = v144;
                if (v50 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v136(&v52[v46], v129, v51);
              a3 = v127;
              v25 = v130;
              v37 = v53;
            }

            ++v49;
            v46 -= v138;
            v47 -= v138;
            v50 += v138;
          }

          while (v49 < v48);
          v6 = v124;
          a4 = v125;
          v10 = v122;
          v9 = v144;
          v26 = v123;
        }
      }
    }

    v54 = a3[1];
    if (v37 < v54)
    {
      if (__OFSUB__(v37, v26))
      {
        goto LABEL_126;
      }

      if (v37 - v26 < a4)
      {
        if (__OFADD__(v26, a4))
        {
          goto LABEL_128;
        }

        if ((v26 + a4) >= v54)
        {
          v55 = a3[1];
        }

        else
        {
          v55 = v26 + a4;
        }

        if (v55 < v26)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v37 != v55)
        {
          break;
        }
      }
    }

    v56 = v37;
    if (v37 < v26)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = v130;
    }

    else
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v130 + 2) + 1, 1, v130);
    }

    a4 = *(v25 + 2);
    v57 = *(v25 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), a4 + 1, 1, v25);
    }

    *(v25 + 2) = v5;
    v58 = &v25[16 * a4];
    *(v58 + 4) = v26;
    *(v58 + 5) = v56;
    v59 = *v126;
    if (!*v126)
    {
      goto LABEL_135;
    }

    v131 = v56;
    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v25 + 4);
          v62 = *(v25 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_52:
          if (v64)
          {
            goto LABEL_114;
          }

          v77 = &v25[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_117;
          }

          v83 = &v25[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_121;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v87 = &v25[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_66:
        if (v82)
        {
          goto LABEL_116;
        }

        v90 = &v25[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_119;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v98 = v25;
        v99 = *&v25[16 * a4 + 32];
        v5 = *&v25[16 * v60 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v10[9] * v99, *a3 + v10[9] * *&v25[16 * v60 + 32], *a3 + v10[9] * v5, v59);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v99)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew()(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_111;
        }

        v100 = &v98[16 * a4];
        *(v100 + 4) = v99;
        *(v100 + 5) = v5;
        v145 = v98;
        specialized Array.remove(at:)(v60);
        v25 = v145;
        v5 = *(v145 + 2);
        v9 = v144;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v25[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_112;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_113;
      }

      v72 = &v25[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_115;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_118;
      }

      if (v76 >= v68)
      {
        v94 = &v25[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_122;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v23 = a3[1];
    v24 = v131;
    a4 = v125;
    if (v131 >= v23)
    {
      goto LABEL_95;
    }
  }

  v124 = v6;
  v101 = *a3;
  v102 = v10[9];
  v122 = v10;
  v138 = v10[2];
  v103 = v101 + v102 * (v37 - 1);
  v104 = -v102;
  v123 = v26;
  v105 = (v26 - v37);
  v136 = v101;
  v128 = v102;
  v5 = v101 + v37 * v102;
  v131 = v55;
LABEL_85:
  v134 = v103;
  v135 = v37;
  v132 = v5;
  v133 = v105;
  v106 = v103;
  while (1)
  {
    v107 = v142;
    v108 = v138;
    (v138)(v142, v5, v9, v25);
    v109 = v143;
    v108(v143, v106, v144);
    v110 = static IndexPath.< infix(_:_:)();
    a4 = v140;
    v111 = *v140;
    v112 = v109;
    v9 = v144;
    (*v140)(v112, v144);
    v111(v107, v9);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v37 = v135 + 1;
      v103 = &v134[v128];
      v105 = v133 - 1;
      v5 = v132 + v128;
      v56 = v131;
      if (v135 + 1 != v131)
      {
        goto LABEL_85;
      }

      v6 = v124;
      a3 = v127;
      v10 = v122;
      v26 = v123;
      if (v131 < v123)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v136)
    {
      break;
    }

    a4 = v139;
    v113 = *v139;
    v114 = v137;
    (*v139)(v137, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v9);
    v106 += v104;
    v5 += v104;
    if (__CFADD__(v105++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
}

{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, MEMORY[0x277CC9578]);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x24C1FE870](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x24C1FE870](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}